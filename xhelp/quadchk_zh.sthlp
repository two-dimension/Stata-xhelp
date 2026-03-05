{smcl}
{* *! version 1.2.3  19oct2017}{...}
{viewerdialog quadchk "dialog quadchk"}{...}
{vieweralsosee "[XT] quadchk" "mansection XT quadchk"}{...}
{viewerjumpto "Syntax" "quadchk_zh##syntax"}{...}
{viewerjumpto "Menu" "quadchk_zh##menu"}{...}
{viewerjumpto "Description" "quadchk_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "quadchk_zh##linkspdf"}{...}
{viewerjumpto "Options" "quadchk_zh##options"}{...}
{viewerjumpto "Remarks" "quadchk_zh##remarks"}{...}
{viewerjumpto "Examples" "quadchk_zh##examples"}
{help quadchk:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[XT] quadchk} {hline 2}}检查四分点近似的敏感性{p_end}
{p2col:}({mansection XT quadchk:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}{cmd:quadchk} [{it:#1 #2}] [{cmd:,} {opt noout:put} {opt nofrom} ]

{pstd}
{it:#1} 和 {it:#2} 指定在前一个模型的比较运行中使用的四分点数量。默认情况下使用大约
2{it:n_q}/3 和 4{it:n_q}/3 个点，其中 {it:n_q} 是原始估计中使用的四分点数量。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 设置和工具 >}
     {bf:检查四分点近似的敏感性}


{marker description}{...}
{title:描述}

{pstd}
{cmd:quadchk} 检查以下命令中随机效应估计器使用的四分点近似：

	{help xtcloglog_zh}
	{help xtintreg_zh}
	{help xtlogit_zh}
	{help xtologit_zh}
	{help xtoprobit_zh}
{phang2}{help xtpoisson_zh}{cmd:, re} 使用 {opt normal} 选项{p_end}
	{help xtprobit_zh}
	{help xtstreg_zh}
	{help xttobit_zh}

{pstd}
{cmd:quadchk} 为不同数量的四分点重新拟合模型，然后比较不同的解。{cmd:quadchk} 尊重对原始模型提供的所有选项，但不包括 {cmd:or}, {cmd:vce()} 和
{it:maximize_options}。



{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT quadchkQuickstart:快速入门}

        {mansection XT quadchkRemarksandexamples:备注和示例}

{pstd}
上述部分未包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt nooutput} 抑制迭代日志和重新拟合模型的输出。

{phang}
{opt nofrom} 强制重新拟合模型从头开始，而不是从之前的估计结果开始。指定 {cmd:nofrom} 选项可以在测试估计结果时拉平竞争差距。


{marker remarks}{...}
{title:备注}

{pstd}
作为经验法则，如果系数变化不超过相对差异的 10^-4 (0.01%)，那么选择四分点不会显著影响结果，结果可以放心解释。然而，如果结果变化显著——超过相对差异的 10^-2 (1%)——则应质疑所选择的四分法和积分点数量是否能够可靠地拟合模型。

{pstd}
随机效应模型的两个方面可能导致四分点近似不准确：大组大小和组内的大相关性。这些因素也可以协同作用，降低或提高四分点的可靠性。增加积分点的数量可以提高四分点近似的准确性。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse quad1}{p_end}
{phang2}{cmd:. xtset id}

{pstd}拟合随机效应 (RE) probit 模型{p_end}
{phang2}{cmd:. xtprobit z x1-x6}{p_end}

{pstd}检查四分点计算的稳定性{p_end}
{phang2}{cmd:. quadchk}{p_end}

{pstd}使用非自适应高斯-赫尔米特四分点法拟合 RE probit 模型{p_end}
{phang2}{cmd:. xtprobit z x1-x6, intmethod(ghermite)}{p_end}

{pstd}检查四分点近似的稳定性，抑制模型输出{p_end}
{phang2}{cmd:. quadchk, nooutput}{p_end}

{pstd}与上述 {cmd:xtprobit} 相同，但将迭代点的数量增加到 120{p_end}
{phang2}{cmd:. xtprobit z x1-x6, intmethod(ghermite) intpoints(120)}{p_end}

{pstd}检查四分点近似的稳定性，抑制模型输出{p_end}
{phang2}{cmd:. quadchk, nooutput}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <quadchk.sthlp>}