{smcl}
{* *! version 2.0.3  19oct2017}{...}
{vieweralsosee "[R] estat" "mansection R estat"}{...}
{viewerjumpto "Syntax" "estat_zh##syntax"}{...}
{viewerjumpto "Description" "estat_zh##description"}
{help estat:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] estat} {hline 2}}后验检验统计{p_end}
{p2col:}({mansection R estat:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 52 tabbed}
{synopt :命令}参考{p_end}
{synoptline}
{syntab:{it:显示信息标准}}

{p2col 7 57 59 2:{cmd:estat ic} [{cmd:,} {opt n(#)}]}{help estat_ic_zh:[R] estat ic}

{syntab:{it:总结估计样本}}

{p2col 7 57 59 2:{cmd:estat} {cmdab:su:mmarize} [{it:eqlist}] [{cmd:,} {it:estat_summ_options}]}{help estat_summarize_zh:[R] estat summarize}{p_end}


{syntab:{it:显示协方差矩阵估计}}

{p2col 7 57 59 2:{cmd:estat} {cmd:vce} [{cmd:,} {it:estat_vce_options}]}{help estat_vce_zh:[R] estat vce}


{syntab:{it:命令特定}}

{p2col 7 57 59 2:{cmd:estat} {it:subcommand1} [{cmd:,} {it:options1}]}

{synoptline}


{marker description}{...}
{title:描述}

{pstd}
{opt estat} 在估计后显示标量和矩阵值统计，补充了 {cmd:predict}，后者是在估计后计算变量。{opt estat} 能计算的具体统计量取决于之前的估计命令。

{pstd}
有三组统计量是如此常用，以至于它们在所有存储模型对数似然的估计命令之后都可用。{opt estat ic} 显示 Akaike 信息准则和 Schwarz 贝叶斯信息准则。 {opt estat summarize} 总结命令中使用的变量，并自动将样本限制为 {cmd:e(sample)}；如果指定，它还对权重变量和聚类结构进行汇总。 {opt estat vce} 显示前一个模型参数估计的协方差或相关矩阵。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat.sthlp>}