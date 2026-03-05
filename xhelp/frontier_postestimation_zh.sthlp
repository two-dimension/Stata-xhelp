{smcl}
{* *! version 1.2.8  12feb2019}{...}
{viewerdialog predict "dialog fron_p"}{...}
{vieweralsosee "[R] frontier postestimation" "mansection R frontierpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] frontier" "help frontier_zh"}{...}
{viewerjumpto "后估计命令" "frontier postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "frontier_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "frontier postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "frontier postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "frontier postestimation##examples"}
{help frontier_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[R] frontier postestimation} {hline 2}}后估计工具{p_end}
{p2col:}({mansection R frontierpostestimation:查看完整PDF手册条目}){p_end}
{p2colreset}{...}

{marker description}{...}
{title:后估计命令}

{pstd}
在 {opt frontier} 之后可以使用以下后估计命令：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_linktest
INCLUDE help post_lrtest
{synopt:{helpb frontier_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb frontier postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R frontierpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。

{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic}]

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh:newvar_xb}}
                           {it:{help newvar_zh:newvar_v}}
                           {it:{help newvar_zh:newvar_u}}{c )-}
{ifin}
{cmd:,} {opt sc:ores}

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synopt :{opt u}}通过 {it:E}(u|e) 产生技术效率的负自然对数估计{p_end}
{synopt :{opt m}}通过 M(u|e) 产生技术效率的负自然对数估计{p_end}
{synopt :{opt te}}通过 {bind:E{exp(-su)|e}} 产生技术效率的估计
{break}
s ={space 2}1，适用于生产函数{break}
s ={space 1}-1，适用于成本函数
{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
这些统计量在样本内和样本外均可用；如果只想获取估计样本，则输入 
{cmd:predict...if e(sample)...}。

INCLUDE help menu_predict

{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，如线性预测、标准误和技术效率的估计。

{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt xb}，默认，计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误。

{phang}
{opt u} 通过 {it:E}(u|e) 生成技术效率的负自然对数估计。

{phang}
{opt m} 通过 M(u|e) 生成技术效率的负自然对数估计。

{phang}
{opt te} 通过 {bind:E{exp(-su)|e}} 生成技术效率的估计。

{phang}
{opt scores} 计算方程级得分变量。

{pmore}
第一个新变量将包含对回归方程的对数似然的导数。

{pmore}
第二个新变量将包含对第二方程的对数似然的导数 ({hi:lnsig2v})。

{pmore}
第三个新变量将包含对第三方程的对数似然的导数 ({hi:lnsig2u})。

{pmore}
在使用选项 {cmd:distribution(tnormal)} 进行估计后，{cmd:scores} 不得指定。

INCLUDE help syntax_margins1

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt u}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt m}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt te}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins

INCLUDE help menu_margins

{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际线性预测值。

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse greene9}

{pstd}拟合随机前沿模型，并使用 {cmd:capital} 来建模个体误差方差{p_end}
{phang2}{cmd:. frontier lnv lnk lnl, vhet(capital)}

{pstd}估计技术效率{p_end}
{phang2}{cmd:. predict efficiency, te}

{pstd}利用条件误差分布的均值来估计负对数效率{p_end}
{phang2}{cmd:. predict mlogeffmean, u}

{pstd}利用条件误差分布的众数来估计负对数效率{p_end}
{phang2}{cmd:. predict mlogeffmode, m}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <frontier_postestimation.sthlp>}