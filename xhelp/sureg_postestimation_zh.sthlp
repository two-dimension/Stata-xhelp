{smcl}
{* *! version 1.2.5  19oct2017}{...}
{viewerdialog predict "dialog reg3_p"}{...}
{vieweralsosee "[R] sureg postestimation" "mansection R suregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] sureg" "help sureg_zh"}{...}
{viewerjumpto "后估计命令" "sureg postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "sureg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "sureg postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "sureg postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "sureg postestimation##examples"}
{help sureg_postestimation:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[R] sureg postestimation} {hline 2}}sureg 的后估计工具{p_end}
{p2col:}({mansection R suregpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {opt sureg} 之后，可以使用以下后估计命令：

{synoptset 17}{...}
{synopt:Command}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_hausman
INCLUDE help post_lincom
{synopt:{helpb sureg_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt:{helpb sureg postestimation##predict:predict}}预测、残差、影响统计和其他诊断指标{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R suregpostestimationRemarksandexamples:备注和示例}

{pstd}
上述章节不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype} {newvar} {ifin}
[{cmd:,}
{cmdab:eq:uation:(}{it:eqno}[{cmd:,}{it:eqno}]{cmd:)}
{it:statistic}]

{synoptset 17 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主}
{synopt:{opt xb}}线性预测；默认值{p_end}
{synopt:{opt stdp}}线性预测的标准误{p_end}
{synopt:{opt r:esiduals}}残差{p_end}
{synopt:{opt d:ifference}}两个方程的线性预测之间的差异{p_end}
{synopt:{opt stdd:p}}线性预测差异的标准误{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，例如
线性预测、标准误、残差和线性预测之间的差异。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{cmd:equation(}{it:eqno}[{cmd:,}{it:eqno}]{cmd:)}
  指定您所指的方程。

{pmore}
{opt equation()} 填入一个 {it:eqno} 用于 {opt xb}、{opt stdp} 和 {opt residuals} 选项。 {cmd:equation(#1)} 表示计算第一个方程， {cmd:equation(#2)} 表示第二个，以此类推。您也可以通过方程的名称来引用方程。 {cmd:equation(income)} 将引用名称为 income 的方程， {cmd:equation(hours)} 将引用名称为 hours 的方程。

{pmore}
如果您不指定 {opt equation()}，结果与您指定 {cmd:equation(#1)} 的情况相同。

{pmore}
{opt difference} 和 {opt stddp} 涉及方程间的概念。
要使用这些选项，您必须指定两个方程，例如，{cmd:equation(#1,#2)} 或 {cmd:equation(income,hours)}。当必须指定两个方程时， {opt equation()} 是必需的。

{phang}
{opt xb}，默认计算线性预测（拟合值）—— 对于指定方程的 xb 的预测。

{phang}
{opt stdp} 计算指定方程预测的标准误。可以将其视为观察的协变量模式的预测期望值或均值的标准误。预测的标准误也称为拟合值的标准误。

{phang}
{opt residuals} 计算残差。

{phang}
{opt difference} 计算系统中两个方程的线性预测之间的差异。
使用 {cmd:equation(#1,#2)}， {opt difference} 计算 {cmd:equation(#1)} 的预测减去 {cmd:equation(#2)} 的预测。

{phang}
{opt stddp} 
仅在您之前已经拟合了多方程模型之后才允许使用。
计算方程 1 和方程 2 之间线性预测差异的标准误。

{pstd}
有关在多方程估计后使用 {opt predict} 的更多信息，请参见 {manhelp predict R}。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :default}每个方程的线性预测{p_end}
{synopt :{cmd:xb}}指定方程的线性预测{p_end}
{synopt :{opt d:ifference}}两个方程的线性预测之间的差异{p_end}
{synopt :{cmd:stdp}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt r:esiduals}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt stdd:p}}与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt xb} 默认为第一个方程。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测的响应边际和线性预测之间的差异。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. sureg (price foreign weight length) (mpg foreign weight) (displ foreign weight)}

{pstd}检验 {cmd:foreign} 在所有方程中是否为 0 的系数{p_end}
{p 8 12 2}{cmd:. test foreign}

{pstd}检验 {cmd:foreign} 在{cmd:mpg} 和 
{cmd:displ} 方程中是否为 0 的系数{p_end}
{p 8 12 2}{cmd:. test [mpg]foreign [displacement]foreign}

{pstd}检验一个跨方程的等式{p_end}
{p 8 12 2}{cmd:. test [price]foreign = [mpg]foreign}{p_end}
{p 8 12 2}{cmd:. test [displacement]foreign = [mpg]foreign, accum}

{pstd}检验一个总体线性组合{p_end}
{p 8 12 2}{cmd:. test [price]foreign-[mpg]weight = [displacement]foreign - [displacement]weight}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. sureg (mpg price weight length) (gear price weight length)}{p_end}

{pstd}计算第一个方程的拟合值{p_end}
{phang2}{cmd:. predict mpghat, xb equation(#1)}{p_end}

{pstd}计算第二个方程预测的标准误{p_end}
{phang2}{cmd:. predict gearstdp, stdp equation(#2)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse margex, clear}

{pstd}拟合似乎不相关的回归模型{p_end}
{phang2}{cmd:. sureg (y = i.sex age) (distance = i.sex i.group)}

{pstd}估计男性和女性的 {cmd:y} 的边际均值{p_end}
{phang2}{cmd:. margins sex, predict(equation(y))}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sureg_postestimation.sthlp>}