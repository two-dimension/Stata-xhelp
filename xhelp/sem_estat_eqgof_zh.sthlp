{smcl}
{* *! version 1.0.9  25sep2018}{...}
{viewerdialog estat "dialog sem_estat, message(-eqgof-) name(sem_estat_eqgof)"}{...}
{vieweralsosee "[SEM] estat eqgof" "mansection SEM estateqgof"}{...}
{findalias assemtfmm}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] sem postestimation" "help sem_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] estat ggof" "help sem_estat_ggof_zh"}{...}
{vieweralsosee "[SEM] estat gof" "help sem_estat_gof_zh"}{...}
{viewerjumpto "Syntax" "sem_estat_eqgof_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_estat_eqgof_zh##menu"}{...}
{viewerjumpto "Description" "sem_estat_eqgof_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_estat_eqgof_zh##linkspdf"}{...}
{viewerjumpto "Option" "sem_estat_eqgof_zh##option"}{...}
{viewerjumpto "Remarks" "sem_estat_eqgof_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_estat_eqgof_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_estat_eqgof_zh##results"}{...}
{viewerjumpto "Reference" "sem_estat_eqgof_zh##reference"}
{help sem_estat_eqgof:English Version}
{hline}{...}
{p2colset 1 22 20 2}{...}
{p2col:{bf:[SEM] estat eqgof} {hline 2}}方程级拟合优度统计量{p_end}
{p2col:}({mansection SEM estateqgof:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmdab:eqg:of} [{cmd:,} {opth for:mat(%fmt)}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM (结构方程模型) > 拟合优度 > 方程级拟合优度}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat eqgof} 用于 {cmd:sem} 之后，但不能用于 {cmd:gsem}。

{pstd}
{cmd: estat eqgof} 显示逐方程的拟合优度统计量。展示的包括 R 平方和 Bentler-Raykov 平方多重相关系数 ({help sem_estat_eqgof##Bentler2000: Bentler 和 Raykov 2000})。

{pstd}
对于递归 SEM 和单变量线性回归，这两个拟合概念是等价的。对于非递归 SEM，这些量度是不同的。

{pstd}
同时报告方程级方差分解，以及总体模型的决定系数。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM estateqgofRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}{opth format(%fmt)} 指定显示格式。默认为 {cmd:format(%9.0g)}。


{marker remarks}{...}
{title:备注}

{pstd}
见 {findalias semtfmm}。

{pstd}
在少数情况下，这些非递归结构方程中的方程级拟合优度测量具有意想不到的值。可能会出现负的 R 平方和多重相关值。

{pstd}
建议在涉及有互惠因果关系的内生变量的非递归系统中使用 Bentler-Raykov 平方多重相关系数作为解释的方差的度量。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_2fmm}{p_end}
{phang2}{cmd:. sem (Affective -> a1 a2 a3 a4 a5) (Cognitive -> c1 c2 c3 c4 c5)}{p_end}

{pstd}显示方程级拟合优度统计量{p_end}
{phang2}{cmd:. estat eqgof}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat eqgof} 将以下内容存储在 {cmd:r()} 中：

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 标量}{p_end}
{synopt:{cmd:r(N_groups)}}组数{p_end}
{synopt:{cmd:r(CD}[{cmd:_}{it:#}]{cmd:)}}总体决定系数（针对组 {it:#}）{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 矩阵}{p_end}
{synopt:{cmd:r(nobs)}}每组的样本大小{p_end}
{synopt:{cmd:r(eqfit}[{cmd:_}{it:#}]{cmd:)}}拟合统计量（针对组 {it:#}）{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker Bentler2000}{...}
{phang}
Bentler, P. M., 和 T. Raykov. 2000. 关于非递归结构方程模型中解释方差的度量。 {it:应用心理学杂志} 85: 125-131。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estat_eqgof.sthlp>}