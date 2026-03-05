{smcl}
{* *! version 1.2.5  19oct2017}{...}
{viewerdialog predict "dialog glim_p"}{...}
{vieweralsosee "[R] glm postestimation" "mansection R glmpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] glm" "help glm_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress postestimation" "help regress_postestimation_zh"}{...}
{viewerjumpto "后验估计命令" "glm postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "glm_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "glm postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "glm postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "glm postestimation##examples"}{...}
{viewerjumpto "参考文献" "glm postestimation##references"}
{help glm_postestimation:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[R] glm postestimation} {hline 2}}glm的后验估计工具{p_end}
{p2col:}({mansection R glmpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验估计命令}

{pstd}
在使用 {opt glm} 后，可用以下后验估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
{p2coldent:* {bf:{help estat ic}}}赤池信息量准则和施瓦茨贝叶斯信息量准则 (AIC 和 BIC){p_end}
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_forecast_star2
INCLUDE help post_hausman_star2
INCLUDE help post_lincom
INCLUDE help post_linktest
{p2col 4 24 26 2:*+ {bf:{help lrtest_zh}}}似然比检验{p_end}
{synopt:{helpb glm_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	effects{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb glm postestimation##predict:predict}}预测、残差、影响统计量和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:estat ic} 和 {cmd:lrtest} 在使用 {cmd:glm, irls} 后不适用。{p_end}
{p 4 6 2}
+ {cmd:forecast}、 {cmd:hausman} 和 {cmd:lrtest} 在 {cmd:svy} 估计结果中不适用。{cmd:forecast} 在 {cmd:mi} 估计结果中也不适用。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R glmpostestimationRemarksandexamples:备注和示例}

        {mansection R glmpostestimationMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


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
{synopthdr :statistic}
{synoptline}
{syntab :主}
{synopt :{opt m:u}}y的期望值；默认值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt e:ta}}{opt xb} 的同义词{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synopt :{opt a:nscombe}}{help glm postestimation##A1953:Anscombe (1953)} 残差{p_end}
{synopt :{opt c:ooksd}}库克距离{p_end}
{synopt :{opt d:eviance}}偏差残差{p_end}
{synopt :{opt h:at}}"帽"矩阵的对角线{p_end}
{synopt :{opt l:ikelihood}}标准化偏差和标准化皮尔逊残差的加权平均值{p_end}
{synopt :{opt p:earson}}皮尔逊残差{p_end}
{synopt :{opt r:esponse}}观察值与拟合结果之间的差异{p_end}
{synopt :{opt s:core}}关于xb的对数似然的第一导数{p_end}
{synopt :{opt w:orking}}工作残差{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 17 tabbed}{...}
{marker options}{...}
{synopthdr}
{synoptline}
{syntab :选项}
{synopt :{opt nooff:set}}修改计算以忽略偏移变量{p_end}
{synopt :{opt adj:usted}}调整偏差残差以加速收敛{p_end}
{synopt :{opt sta:ndardized}}将残差乘以因子 (1-h)^[-1/2]{p_end}
{synopt :{opt stu:dentized}}将残差乘以估计规模参数的平方根的倒数{p_end}
{synopt :{opt mod:ified}}将残差的分母修改为 {depvar} 的合理方差估计{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample
{p 4 6 2}
{opt mu}、{opt xb}、{opt stdp}和 {opt score} 是唯一允许与 {cmd:svy} 估计结果一起使用的统计量。{p_end}


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测的变量，例如
期望值、线性预测、标准误差、
残差、库克距离、"帽"矩阵的对角线、
加权平均值、观察值与拟合结果之间的差异和
方程级分数。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt mu}，默认值，指定 {opt predict} 计算y的期望值，等于试验次数乘以线性预测的逆链接。

{phang}
{opt xb} 计算线性预测。

{phang}
{opt eta} 是 {opt xb} 的同义词。

{phang}
{opt stdp} 计算线性预测的标准误差。

{phang}
{opt anscombe} 计算 {help glm postestimation##A1953:Anscombe (1953)} 残差，以产生更接近正态分布的残差。

{phang}
{opt cooksd} 计算库克距离，该距离衡量每个观察值在离开估计时对估计系数的总体改变。

{phang}
{opt deviance} 计算偏差残差。偏差残差由 {help glm postestimation##MN1989:McCullagh and Nelder (1989)} 和其他人推荐，具有最佳特性来检查GLM的拟合优度。如果模型正确，偏差残差大约呈正态分布。它们可以与拟合值或协变量进行绘图，以检查模型的拟合程度。另请参见下面的 {opt pearson} 选项。

{phang}
{opt hat} 计算"帽"矩阵的对角线，类似于线性回归。

{phang}
{opt likelihood} 计算标准化偏差和标准化皮尔逊残差的加权平均值。

{phang}
{opt pearson} 计算皮尔逊残差。皮尔逊残差在非正态家庭分布中通常具有明显偏斜的分布。另请参见上面的 {opt deviance} 选项。

{phang}
{opt response} 计算观察值与拟合结果之间的差异。

{phang}
{opt score} 计算方程级分数，即对线性预测的对数似然的导数。

{phang}
{opt working} 计算工作残差，响应残差按照链接函数的导数加权。

{dlgtab:选项}

{phang}
{opt nooffset} 仅在您为 {opt glm} 指定了 {opth offset(varname)} 时相关。它修改 {opt predict} 的计算，使其忽略偏移变量；线性预测被视为xb而不是xb + 偏移。

{phang}
{opt adjusted} 调整偏差残差以加快收敛到极限正态分布。
调整涉及向偏差残差添加一个关于方差函数族的高阶项。此选项仅在指定 {opt deviance} 时允许。

{phang}
{opt standardized} 请求将残差乘以因子 {bind:(1-h)^[-1/2]}，其中 h 是帽矩阵的对角线。
该操作旨在考虑 {depvar} 及其预测值之间的相关性。

{phang}
{opt studentized} 请求将残差乘以估计规模参数平方根的倒数。

{phang}
{opt modified} 请求将残差的分母修改为 {depvar} 的合理方差估计。
基础残差乘以因子 (k/w)^[-1/2]，其中 k 是 1 或用户指定的散布参数，w 是指定的权重（如果未指定，则为1）。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt m:u}}y的期望值；默认值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt e:ta}}{opt xb} 的同义词{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt a:nscombe}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt c:ooksd}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt d:eviance}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt h:at}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt l:ikelihood}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt p:earson}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt r:esponse}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt s:core}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt w:orking}}不允许与 {cmd:margins} 一起使用{p_end}
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
{phang2}{cmd:. webuse ldose}{p_end}

{pstd}将模型拟合到分组的二项数据{p_end}
{phang2}{cmd:. glm r ldose, family(binomial n) link(logit)}{p_end}

{pstd}计算预期的失败次数{p_end}
{phang2}{cmd:. predict mu_logit}{p_end}

{pstd}计算偏差残差{p_end}
{phang2}{cmd:. predict dr_logit, deviance}{p_end}

{pstd}执行链接检验{p_end}
{phang2}{cmd:. linktest, family(binomial n) link(logit)}{p_end}


{marker references}{...}
{title:参考文献}

{marker A1953}{...}
{phang}
Anscombe, F. J. 1953. H. Hotelling 的讨论论文的贡献“新视角于相关系数及其变换”。
{it:皇家统计学会杂志，B系列} 15: 229-230。

{marker MN1989}{...}
{phang}
McCullagh, P., 和 J. A. Nelder. 1989.
{browse "http://www.stata.com/bookstore/glm.html":{it:广义线性模型}. 第2版。}
伦敦：Chapman & Hall/CRC。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <glm_postestimation.sthlp>}