{smcl}
{* *! version 1.2.5  19oct2017}{...}
{viewerdialog predict "dialog glim_p"}{...}
{vieweralsosee "[R] binreg postestimation" "mansection R binregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] binreg" "help binreg_zh"}{...}
{viewerjumpto "后估计命令" "binreg postestimation##description"}{...}
{viewerjumpto "预测" "binreg postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "binreg postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "binreg postestimation##examples"}{...}
{viewerjumpto "参考文献" "binreg postestimation##references"}
{help binreg_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[R] binreg postestimation} {hline 2}}binreg的后估计工具{p_end}
{p2col:}({mansection R binregpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {opt binreg} 之后可以使用以下后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
{p2coldent:* {bf:{help estat ic}}}赤池信息量准则和施瓦茨贝叶斯信息量准则 (AIC 和 BIC){p_end}
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast_star2
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_linktest
INCLUDE help post_lrtest_star
{synopt:{helpb binreg_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{p2col :{helpb binreg postestimation##predict:predict}}预测、残差、影响统计量和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:estat ic} 和 {cmd:lrtest} 在 {cmd:binreg, irls} 后是不合适的。{p_end}
{p 4 6 2}
+ {cmd:forecast} 与 {cmd:mi} 估计结果不合适。{p_end}


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic} {it:options}]

{synoptset 17 tabbed}{...}
{marker statistic}{...}
{synopthdr :统计量}
{synoptline}
{syntab :主}
{synopt :{opt m:u}}y的期望值；默认值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt e:ta}}{opt xb}的同义词{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synopt :{opt a:nscombe}}{help binreg postestimation##A1953:Anscombe (1953)} 残差{p_end}
{synopt :{opt c:ooksd}}库克距离{p_end}
{synopt :{opt d:eviance}}偏差残差{p_end}
{synopt :{opt h:at}}“帽子”矩阵的对角线{p_end}
{synopt :{opt l:ikelihood}}加权标准化偏差和
标准化皮尔逊残差的平均值{p_end}
{synopt :{opt p:earson}}皮尔逊残差{p_end}
{synopt :{opt r:esponse}}观察值与拟合值之间的差异{p_end}
{synopt :{opt sc:ore}}关于xb的对数似然的导数{p_end}
{synopt :{opt w:orking}}工作残差{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 17 tabbed}{...}
{marker options}{...}
{synopthdr :选项}
{synoptline}
{syntab :选项}
{synopt :{opt nooff:set}}修改计算以忽略偏移
变量{p_end}
{synopt :{opt adj:usted}}调整偏差残差以加快收敛
{p_end}
{synopt :{opt sta:ndardized}}乘以残差因子 (1 - h)^[1/2] {p_end}
{synopt :{opt stu:dentized}}将残差乘以估计尺度参数的平方根的倒数{p_end}
{synopt :{opt mod:ified}}修改残差的分母，以合理估计{depvar}的方差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新的变量，包含如
期望值、线性预测、标准误、
残差、库克距离、对角线、加权平均值、
差异和一阶导数的预测。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt mu}，默认值，指定 {opt predict} 计算
y的期望值，等于试验次数乘以线性预测的逆链接。

{phang}
{opt xb} 计算线性预测。

{phang}
{opt eta} 为 {opt xb} 的同义词。

{phang}
{opt stdp} 计算线性预测的标准误。

{phang}
{opt anscombe} 计算 
{help binreg postestimation##A1953:Anscombe (1953)} 残差
生成密切遵循正态分布的残差。

{phang}
{opt cooksd} 计算库克距离，该距离测量每个观察值不包含在估计中时估计系数的整体变化。

{phang}
{opt deviance} 计算偏差残差，推荐由
{help binreg postestimation##MN1989:McCullagh and Nelder (1989)}
等人提供，在检验GLM的拟合优度时具有最佳特性。如果模型正确，它们大致呈正态分布，并可以与拟合值或协变量绘制以检查模型的拟合。另见下面的 {opt pearson} 选项。

{phang}
{opt hat} 计算“帽子”矩阵的对角线，类似于
线性回归。

{phang}
{opt likelihood} 计算标准化偏差和标准化皮尔逊（见下文）残差的加权平均。

{phang}
{opt pearson} 计算皮尔逊残差，通常对于非正态家庭分布具有明显偏斜的分布。另见上面的 {opt deviance} 选项。

{phang}
{opt response} 计算观察值和拟合结果之间的差异。

{phang}
{opt score} 计算方程级分数，即对线性预测的对数似然的导数。

{phang}
{opt working} 计算工作残差，即根据链接函数的导数加权的响应残差。

{dlgtab:选项}

{phang}
{opt nooffset} 仅在您为 {opt binreg} 指定了 {opth offset(varname)} 时相关。它修改 {opt predict} 的计算，使其忽略偏移变量；线性预测被视为 xb 而不是 xb + offset。

{phang}
{opt adjusted} 调整偏差残差，使其更快收敛到限制的正态分布。调整涉及向偏差残差添加一个与方差函数族有关的高阶项。只有在指定了 {opt deviance} 时才允许此选项。

{phang}
{opt standardized} 请求残差乘以因子 (1 - h)^[-1/2]，其中 h 是：“帽子”矩阵的对角线。这个步骤是考虑到 {depvar} 和其预测值之间的关联。

{phang}
{opt studentized} 请求将残差乘以估计尺度参数的倒数平方根。

{phang}
{opt modified} 请求将残差的分母修改为 {depvar} 方差的合理估计。基础残差乘以因子 (k/w)^[-1/2]，其中 k 为1或用户指定的离散参数，w 为指定的权重（如果未指定则为1）。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt m:u}}y的期望值；默认{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt e:ta}}{opt xb}的同义词{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt a:nscombe}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt c:ooksd}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt d:eviance}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt h:at}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt l:ikelihood}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt p:earson}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt r:esponse}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt s:core}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt w:orking}}与 {cmd:margins} 不允许{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际
期望值和线性预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lbw}{p_end}
{phang2}{cmd:. binreg low age lwt race##smoke ptl ht ui, or}{p_end}

{pstd}预测线性预测的逆链接{p_end}
{phang2}{cmd:. predict rate, mu}{p_end}

{pstd}预测偏差残差{p_end}
{phang2}{cmd:. predict devres, deviance}{p_end}

{pstd}计算每一类 {cmd:race} 和 {cmd:smoke} 及其交互的调整预测概率{p_end}
{phang2}{cmd:. margins race##smoke}{p_end}


{marker references}{...}
{title:参考文献}

{marker A1953}{...}
{phang}
Anscombe, F. J.  1953. H. Hotelling 讨论的论文《新视角下的相关系数及其变换》.
{it:《皇家统计学会杂志，B系列》} 15: 229-230.

{marker MN1989}{...}
{phang}
McCullagh, P., 和 J. A. Nelder. 1989.
{browse "http://www.stata.com/bookstore/glm.html":{it:广义线性模型}. 第2版.}
伦敦：查普曼与霍尔/CRC。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <binreg_postestimation.sthlp>}