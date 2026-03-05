{smcl}
{* *! version 1.2.4  30may2019}{...}
{viewerdialog predict "dialog cnsreg_p"}{...}
{vieweralsosee "[R] eivreg postestimation" "mansection R eivregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] eivreg" "help eivreg_zh"}{...}
{viewerjumpto "Postestimation commands" "eivreg postestimation##description"}{...}
{viewerjumpto "predict" "eivreg postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "eivreg postestimation##syntax_margins"}{...}
{viewerjumpto "Example" "eivreg postestimation##example"}
{help eivreg_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[R] eivreg postestimation} {hline 2}}eivreg 的后估计工具{p_end}
{p2col:}({mansection R eivregpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {opt eivreg} 后可用的后估计命令如下：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_lincom
{synopt:{helpb eivreg_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb eivreg postestimation##predict:predict}}线性预测{p_end}
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}

{phang}
可在样本内外使用；如果只希望用于估计样本，请输入
{cmd:predict} {it:...} {cmd:if e(sample)} {it:...} .{p_end}


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含线性预测的新变量，假设用于预测的协变量值在测量时没有误差。


{marker syntax_margins}{...}
{marker margins}{...}
{title:边际的语法}

{p 8 16 2}
{cmd:margins} [{it:{help margins##syntax:marginlist}}] 
[{cmd:,} {it:{help margins##syntax:options}}] 


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测的响应边际。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}拟合回归，其中 {cmd:weight} 和 {cmd:mpg} 的可靠性分别为 .85 和 .95{p_end}
{phang2}{cmd:. eivreg price weight foreign mpg, reliab(weight .85 mpg .95)}

{pstd}仅计算估计样本的拟合值{p_end}
{phang2}{cmd:. predict prhat if e(sample)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <eivreg_postestimation.sthlp>}