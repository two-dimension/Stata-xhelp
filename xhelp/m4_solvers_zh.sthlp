{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-4] Solvers" "mansection M-4 Solvers"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Intro" "help m4_intro_zh"}{...}
{viewerjumpto "目录" "m4_solvers_zh##contents"}{...}
{viewerjumpto "描述" "m4_solvers_zh##description"}{...}
{viewerjumpto "PDF文档链接" "m4_solvers_zh##linkspdf"}{...}
{viewerjumpto "备注" "m4_solvers_zh##remarks"}
{help m4_solvers:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-4] Solvers} {hline 2}}求解 AX=B 的函数和获取 A 的逆
{p_end}
{p2col:}({mansection M-4 Solvers:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker contents}{...}
{title:目录}

{col 8} [M-5]
{col 5}手册条目{col 22}函数{col 35}用途
{col 5}{hline}

{col 5}   {c TLC}{hline 9}{c TRC}
{col 5}{hline 3}{c RT}{it: Solvers }{c LT}{hline}
{col 5}   {c BLC}{hline 9}{c BRC}

{col 8}{bf:{help mf_cholsolve_zh:cholsolve()}}{...}
{col 22}{cmd:cholsolve()}{...}
{col 35}{it:A} 正定; 对称或厄米

{col 8}{bf:{help mf_lusolve_zh:lusolve()}}{...}
{col 22}{cmd:lusolve()}{...}
{col 35}{it:A} 满秩，方阵，实数或复数

{col 8}{bf:{help mf_qrsolve_zh:qrsolve()}}{...}
{col 22}{cmd:qrsolve()}{...}
{col 35}{it:A} 一般; {it:m x n}, {it:m} >= {it:n}, 实数或复数;
{col 35}最小二乘广义解

{col 8}{bf:{help mf_svsolve_zh:svsolve()}}{...}
{col 22}{cmd:svsolve()}{...}
{col 35}广义; {it:m x n}, 实数或复数;
{col 35}最小范数，最小二乘解

{col 5}   {c TLC}{hline 11}{c TRC}
{col 5}{hline 3}{c RT}{it: Inverters }{c LT}{hline}
{col 5}   {c BLC}{hline 11}{c BRC}

{col 8}{bf:{help mf_invsym_zh:invsym()}}{...}
{col 22}{cmd:invsym()}{...}
{col 35}广义; 实对称

{col 8}{bf:{help mf_cholinv_zh:cholinv()}}{...}
{col 22}{cmd:cholinv()}{...}
{col 35}正定; 对称或厄米

{col 8}{bf:{help mf_luinv_zh:luinv()}}{...}
{col 22}{cmd:luinv()}{...}
{col 35}满秩; 方阵; 实数或复数

{col 8}{bf:{help mf_qrinv_zh:qrinv()}}{...}
{col 22}{cmd:qrinv()}{...}
{col 35}广义; {it:m x n}, {it:m} >= {it:n}; 实数或复数

{col 8}{bf:{help mf_pinv_zh:pinv()}}{...}
{col 22}{cmd:pinv()}{...}
{col 35}广义; {it:m x n}, 实数或复数
{col 35}摩尔-彭若斯伪逆

{col 5}{hline}


{marker description}{...}
{title:描述}

{p 4 4 2}
上述函数求解 {it:AX}={it:B} 的 {it:X} 
并求解 {it:A}^(-1)。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-4 SolversRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
矩阵求解器可用于实现矩阵逆，因此
这两者通常成对出现。

{p 4 4 2}
求解器求解 
{it:AX}={it:B}
以找到 {it:X}。
获得 {it:A}^(-1) 的一种方法是求解
{it:AX}={it:I}。如果 
{bind:{it:f}({it:A}, {it:B})} 解 {it:AX}={it:B}， 
那么 
{bind:{it:f}({it:A}, {cmd:I(rows(}{it:A}{cmd:))}}
将求解逆。
一些矩阵 
逆实际上就是这样实现的，尽管通常 
会编写自定义代码，因为已知保存内存时更可能 
{it:B}={it:I} 的情况。

{p 4 4 2}
逆和求解器的配对为

		逆              求解器
		{hline 37}
		{help mf_invsym_zh:invsym()}          (无)
		{help mf_cholinv_zh:cholinv()}        {bf:{help mf_cholsolve_zh:cholsolve()}}
		{help mf_luinv_zh:luinv()}            {bf:{help mf_lusolve_zh:lusolve()}}
		{help mf_qrinv_zh:qrinv()}            {bf:{help mf_qrsolve_zh:qrsolve()}}
		{help mf_pinv_zh:pinv()}              {bf:{help mf_svsolve_zh:svsolve()}}
		{hline 37}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m4_solvers.sthlp>}