{smcl}
{* *! version 1.1.11  15may2018}{...}
{vieweralsosee "[M-4] Standard" "mansection M-4 Standard"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Intro" "help m4_intro_zh"}{...}
{viewerjumpto "Contents" "m4_standard_zh##contents"}{...}
{viewerjumpto "Description" "m4_standard_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m4_standard_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m4_standard_zh##remarks"}
{help m4_standard:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-4] Standard} {hline 2}}创建标准矩阵的函数
{p_end}
{p2col:}({mansection M-4 Standard:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker contents}{...}
{title:目录}

{col 5}   [M-5]
{col 5}手册条目{col 20}函数{col 39}目的
{col 5}{hline}

{col 5}   {c TLC}{hline 26}{c TRC}
{col 5}{hline 3}{c RT}{it: 单位矩阵与常数矩阵 }{c LT}{hline}
{col 5}   {c BLC}{hline 26}{c BRC}

{col 5}{bf:{help mf_i_zh:I()}}{...}
{col 20}{cmd:I()}{...}
{col 39}单位矩阵

{...}
{col 5}{bf:{help mf_e_zh:e()}}{...}
{col 20}{cmd:e()}{...}
{col 39}单位向量
{...}

{col 5}{bf:{help mf_j_zh:J()}}{...}
{col 20}{cmd:J()}{...}
{col 39}常数矩阵
{...}

{col 5}{bf:{help mf_designmatrix_zh:designmatrix()}}{...}
{col 20}{cmd:designmatrix()}{...}
{col 39}设计矩阵
{...}

{col 5}   {c TLC}{hline 25}{c TRC}
{col 5}{hline 3}{c RT}{it: 块对角矩阵 }{c LT}{hline}
{col 5}   {c BLC}{hline 25}{c BRC}

{col 5}{bf:{help mf_blockdiag_zh:blockdiag()}}{...}
{col 20}{cmd:blockdiag()}{...}
{col 39}块对角矩阵
{...}

{col 5}   {c TLC}{hline 8}{c TRC}
{col 5}{hline 3}{c RT}{it: 范围 }{c LT}{hline}
{col 5}   {c BLC}{hline 8}{c BRC}

{col 5}{bf:{help mf_range_zh:range()}}{...}
{col 20}{cmd:range()}{...}
{col 39}在指定范围内的向量
{col 20}{cmd:rangen()}{...}
{col 39}在指定范围内的 n 向量
{...}

{col 5}{bf:{help mf_unitcircle_zh:unitcircle()}}{...}
{col 20}{cmd:unitcircle()}{...}
{col 39}复平面上的单位圆
{...}

{col 5}   {c TLC}{hline 8}{c TRC}
{col 5}{hline 3}{c RT}{it: 随机 }{c LT}{hline}
{col 5}   {c BLC}{hline 8}{c BRC}

{col 5}{bf:{help mf_runiform_zh:runiform()}}{...}
{col 20}{cmd:runiform()}{...}
{col 39}均匀随机变量
{col 20}{cmd:rnormal()}{...}
{col 39}正态（高斯）随机变量
{col 20}{hline 10}
{col 20}{cmd:rbeta()}{...}
{col 39}贝塔随机变量
{col 20}{cmd:rbinomial()}{...}
{col 39}二项随机变量
{col 20}{cmd:rchi2()}{...}
{col 39}卡方随机变量
{col 20}{cmd:rdiscrete()}{...}
{col 39}离散随机变量
{col 20}{cmd:rexponential()}{...}
{col 39}指数随机变量
{col 20}{cmd:rgamma()}{...}
{col 39}伽马随机变量
{col 20}{cmd:rhypergeometric()}{...}
{col 39}超几何随机变量
{col 20}{cmd:rlogistic()}{...}
{col 39}逻辑随机变量
{col 20}{cmd:rnbinomial()}{...}
{col 39}负二项随机变量
{col 20}{cmd:rpoisson()}{...}
{col 39}泊松随机变量
{col 20}{cmd:rt()}{...}
{col 39}Student's t 随机变量
{col 20}{cmd:runiformint()}{...}
{col 39}均匀随机整数变量
{col 20}{cmd:rweibull()}{...}
{col 39}威布尔随机变量
{col 20}{cmd:rweibullph()}{...}
{col 39}威布尔（比例风险）随机变量
{col 41}随机变量

{col 5}   {c TLC}{hline 16}{c TRC}
{col 5}{hline 3}{c RT}{it: 命名矩阵 }{c LT}{hline}
{col 5}   {c BLC}{hline 16}{c BRC}

{col 5}{bf:{help mf_hilbert_zh:Hilbert()}}{...}
{col 20}{cmd:Hilbert()}{...}
{col 39}Hilbert 矩阵
{col 20}{cmd:invHilbert()}{...}
{col 39}逆 Hilbert 矩阵

{col 5}{bf:{help mf_toeplitz_zh:Toeplitz()}}{...}
{col 20}{cmd:Toeplitz()}{...}
{col 39}Toeplitz 矩阵

{col 5}{bf:{help mf_vandermonde_zh:Vandermonde()}}{...}
{col 20}{cmd:Vandermonde()}{...}
{col 39}Vandermonde 矩阵
{col 5}{hline}

{col 5}   {c TLC}{hline 27}{c TRC}
{col 5}{hline 3}{c RT}{it: vec() 和 vech() 变换 }{c LT}{hline}
{col 5}   {c BLC}{hline 27}{c BRC}

{col 5}{bf:{help mf_dmatrix_zh:Dmatrix()}}{...}
{col 20}{cmd:Dmatrix()}{...}
{col 39}重复矩阵

{col 5}{bf:{help mf_kmatrix_zh:Kmatrix()}}{...}
{col 20}{cmd:Kmatrix()}{...}
{col 39}置换矩阵

{col 5}{bf:{help mf_lmatrix_zh:Lmatrix()}}{...}
{col 20}{cmd:Lmatrix()}{...}
{col 39}消去矩阵
{col 5}{hline}


{marker description}{...}
{title:描述}

{p 4 4 2}
上述函数用于创建标准矩阵，例如单位矩阵等。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-4 StandardRemarksandexamples:备注和示例}

{pstd}
以上章节未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
有关其他数学函数，请参阅

	{bf:{help m4_matrix_zh:[M-4] 矩阵}}          矩阵数学函数

	{bf:{help m4_scalar_zh:[M-4] 标量}}          标量数学函数

	{bf:{help m4_mathematical_zh:[M-4] 数学}}    重要数学函数

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m4_standard.sthlp>}