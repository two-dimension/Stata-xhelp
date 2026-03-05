{smcl}
{* *! version 1.1.16  15may2018}{...}
{vieweralsosee "[P] matrix accum" "mansection P matrixaccum"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "[R] ml" "help ml_zh"}{...}
{vieweralsosee "[M-4] Statistical" "help m4_statistical_zh"}{...}
{viewerjumpto "Syntax" "matrix_accum_zh##syntax"}{...}
{viewerjumpto "Description" "matrix_accum_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "matrix_accum_zh##linkspdf"}{...}
{viewerjumpto "Options" "matrix_accum_zh##options"}{...}
{viewerjumpto "Examples" "matrix_accum_zh##examples"}{...}
{viewerjumpto "Stored results" "matrix_accum_zh##results"}
{help matrix_accum:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[P] matrix accum} {hline 2}}形成交叉乘积矩阵{p_end}
{p2col:}({mansection P matrixaccum:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    通过累加交叉乘积矩阵形成 X'X

{p 8 25 2}{cmdab:mat:rix} {cmdab:ac:cum} {it:A} {cmd:=} {varlist}
	{ifin}
        [{it:{help matrix accum##weight:weighted}}]
	[{cmd:,} {cmdab:nocons:tant} {cmdab:d:eviations}
	{cmdab:m:eans:(}{it:M}{cmd:)} {opth abs:orb(varname)}]


    通过累加交叉乘积矩阵形成 X'BX

{p 8 25 2}{cmdab:mat:rix} {cmdab:glsa:ccum} {it:A} {cmd:=} {varlist}
	{ifin}
        [{it:{help matrix accum##weight:weighted}}]{cmd:,}
	{cmdab:gr:oup:(}{it:{help varlist_zh:groupvar}}{cmd:)}
	{cmdab:gl:smat:(}{it:W}|{it:stringvar}{cmd:)}
	{cmdab:r:ow:(}{it:rowvar}{cmd:)} [{cmdab:nocons:tant}]


    通过累加交叉乘积矩阵形成 sum[(X_i)'e_i(e_i)'X_i]

{p 8 25 2}{cmdab:mat:rix} {cmd:opaccum} {it:A} {cmd:=} {varlist}
	{ifin} {cmd:,} {cmdab:gr:oup:(}{it:{help varlist_zh:groupvar}}{cmd:)}
	{cmdab:op:var:(}{it:opvar}{cmd:)} [{cmdab:nocons:tant}]


    首个变量与其余变量的累加

{p 8 25 2}{cmdab:mat:rix} {cmdab:veca:ccum} {it:a} {cmd:=} {varlist}
	{ifin}
        [{it:{help matrix accum##weight:weighted}}]
        [{cmd:,} {cmdab:nocons:tant}]


{phang}
{it:varlist} 在 {cmd:matrix accum} 和 {cmd:matrix vecaccum} 中可以包含因子变量（除了 {cmd:matrix vecaccum} 中的第一个变量 {it:varlist}）；详见 {help fvvarlist_zh}。{p_end}
{phang}
{it:varlist} 可以包含时间序列运算符；详见 {help tsvarlist_zh}。{p_end}
{marker weight}{...}
{phang}
允许使用 {cmd:aweight}s, {cmd:fweight}s, {cmd:iweight}s, 和 {cmd:pweight}s；详见 {help weight_zh}。{p_end}


{marker description}{...}
{title:描述}

{pstd}
{cmd:matrix accum} 从数据中累加交叉乘积矩阵形成 {it:A} = X'X。

{pstd}
{cmd:matrix glsaccum} 从数据中累加交叉乘积矩阵，使用指定的内部权重矩阵形成 {it:A} = X'{it:B}X，其中 {it:B} 是块对角矩阵。

{pstd}
{cmd:matrix opaccum} 从数据中累加交叉乘积矩阵，使用由数据中一个变量的外积形成的内部权重矩阵，形成

{center:A = X1'e1e1'X1 + X2'e2e2'X2 + ... + X{it:k}'e{it:k}e{it:k}'X{it:k}}

{pstd}
其中 X{it:i} 是来自 {varlist} 变量的第 {it:i} 组观察的矩阵，而 e{it:i} 是由第 {it:i} 组的 {it:opvar} 变量的观察值形成的向量。

{pstd}
{cmd:matrix vecaccum} 在 {it:varlist} 中将第一个变量与其余变量累加，形成累积内积的行向量，形成 {it:a} = x1'X，其中 X = (x2, x3,...)。

{pstd}
另见 {bf:{help mf_cross_zh:[M-5] cross()}}，获取其他形成交叉乘积矩阵的程序。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P matrixaccumRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:noconstant} 抑制向 X 矩阵添加“常数”。如果未指定 {cmd:noconstant}，则在开始累加之前，X 中会添加一列全为 1 的值。

{phang}
{cmd:deviations}，仅在 {cmd:matrix accum} 中允许，导致累加根据偏离平均值进行。如果未指定 {cmd:noconstant}，则 X 的累加是基于偏差进行的，但添加的行和列的和并不以偏差格式显示（在这种情况下，它们将为零）。如果指定了 {cmd:noconstant}，则通过 N-1 除的结果矩阵（其中 N 是观察值的数量）是一个协方差矩阵。

{phang}
{cmd:means(}{it:M}{cmd:)}，仅在 {cmd:matrix accum} 中允许，创建矩阵 {it:M}:  1 x (p+1) 或 1 x p（具体取决于是否也指定了 {cmd:noconstant}），其中包含 X 的均值。

{phang}
{opth absorb:(varname)}，仅在 {cmd:matrix accum} 中允许，指定 {cmd:matrix accum} 在由 {it:varname} 确定的吸收组内计算累积时，使用偏离平均值。

{phang}
{cmd:group(}{it:{help varlist_zh:groupvar}}{cmd:)} 是 {cmd:matrix glsaccum} 和 {cmd:matrix opaccum} 的必需选项，其他情况不允许。在这两种情况下，它指定了一个变量的名称，该变量标识观察组。数据必须按 {it:groupvar} 排序。

{pmore}
在 {cmd:matrix glsaccum} 中，{it:groupvar} 确定由 {cmd:glsmat()} 单独加权的观察值。

{pmore}
在 {cmd:matrix opaccum} 中，{it:groupvar} 确定由 {cmd:opvar()} 的外积加权的观察值。

{phang}
{cmd:glsmat(}{it:W}|{it:stringvar}{cmd:)}，是 {cmd:matrix glsaccum} 的必需选项，其他情况下不允许，指定在数据集中包含要用于加权的观察组的矩阵名称或者字符串变量的名称。{it:stringvar} 必须为 {cmd:str8} 或更小。

{phang}
{cmd:row(}{it:rowvar}{cmd:)}，是 {cmd:matrix glsaccum} 的必需选项，其他情况下不允许，指定包含行号的数值变量的名称，以确定在内积计算中要使用的 {cmd:glsmat()} 矩阵的行和列。

{phang}
{cmd:opvar(}{it:opvar}{cmd:)}，是 {cmd:matrix opaccum} 的必需选项，指定用于形成向量的变量，其外积形成权重矩阵。


{marker examples}{...}
{title:示例}

    {cmd:. sysuse auto}
    {cmd:. matrix accum A = price weight mpg}
    {cmd:. matrix list A}
    {cmd:. matrix accum Cov = price weight mpg, deviations noconstant}
    {cmd:. matrix Cov = Cov/(r(N)-1)}
    {cmd:. matrix list Cov}

    {cmd:. webuse maccumxmpl}
    {cmd:. xtdescribe, patterns(11)}
    {cmd:. sort id t}
    {cmd:. matrix opaccum B = x1 x2, group(id) opvar(e)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:matrix accum}、{cmd:matrix glsaccum}、{cmd:matrix opaccum} 和 {cmd:matrix vecaccum} 在 {cmd:r(N)} 中存储观察值的数量。
{cmd:matrix accum} 在 {cmd:r(k_absorb)} 中存储吸收组的数量。
{cmd:matrix glsaccum}（使用 {cmd:aweight}s）和 {cmd:matrix vecaccum} 也在 {cmd:r(sum_w)} 中存储权重的总和，但 {cmd:matrix accum} 不会。 
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matrix_accum.sthlp>}