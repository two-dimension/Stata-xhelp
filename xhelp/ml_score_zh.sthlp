{smcl}
{* *! version 1.1.3  11feb2011}{...}
{vieweralsosee "[R] ml" "mansection R ml"}{...}
{viewerjumpto "Syntax" "ml_score_zh##syntax"}{...}
{viewerjumpto "Description" "ml_score_zh##description"}{...}
{viewerjumpto "Options" "ml_score_zh##options"}{...}
{viewerjumpto "Remarks" "ml_score_zh##remarks"}{...}
{viewerjumpto "Examples" "ml_score_zh##examples"}
{help ml_score:English Version}
{hline}{...}
{title:标题}

{pstd}
{hi:ml score} {hline 2}
最大似然估计后生成得分


{marker syntax}{...}
{title:语法}

{pstd}
从指定方程生成得分的语法：

{pmore}
{cmd:ml} {cmd:score} {newvar} {ifin}
	[{cmd:,}
		{opt eq:uation(eqname)}
		{opt miss:ing}
	]


{pstd}
从所有方程生成得分的语法：

{pmore}
{cmd:ml} {cmd:score} {it:newvarlist} {ifin}
	[{cmd:,} {opt miss:ing}]

{pmore}
{cmd:ml} {cmd:score} [{it:type}] {it:stub}{cmd:*} {ifin}
	[{cmd:,} {opt miss:ing}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:ml} {cmd:score} 创建包含方程级别得分的新变量。由 {cmd:ml} {cmd:score}
生成的变量等同于通过将 {opt score()} 指定给 {cmd:ml}
{cmd:maximize}（以及 {cmd:ml} {cmd:model} ... {cmd:,} ... {cmd:maximize}）生成的变量。


{marker options}{...}
{title:选项}

{phang}
{opt equation(eqname)} 确定观察得分来自哪个方程。此选项仅可在生成一个变量时使用。

{phang}
{opt missing} 指定包含缺失值变量的观察不从估计样本中消除。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:ml} {cmd:score} 在使用方法 lf 似然评估器的估计命令后始终是允许的。

{pstd}
在不使用方法 lf、d1 或 d2 似然评估器的估计命令之后调用 {cmd:ml} {cmd:score} 是错误的。


{marker examples}{...}
{title:示例}

{pstd}
单方程模型：{p_end}

{phang}{cmd:. poisson accidents}{p_end}
{phang}{cmd:. ml score score}{p_end}

{pstd}
双方程模型（生成变量 {cmd:sc_1} 和 {cmd:sc_2}）：{p_end}

{phang}{cmd:. nbreg deaths coh2 coh3, exposure(obstime)}{p_end}
{phang}{cmd:. ml score sc_*}{p_end}

{pmore}
或者

{phang}{cmd:. nbreg deaths coh2 coh3, exposure(obstime)}{p_end}
{phang}{cmd:. ml score sc_1, equation(#1)}{p_end}
{phang}{cmd:. ml score sc_2, equation(#2)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ml_score.sthlp>}