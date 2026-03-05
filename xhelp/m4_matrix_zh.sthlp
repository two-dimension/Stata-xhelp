{smcl}
{* *! version 1.1.11  15may2018}{...}
{vieweralsosee "[M-4] 矩阵" "mansection M-4 Matrix"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 介绍" "help m4_intro_zh"}{...}
{viewerjumpto "目录" "m4_matrix_zh##contents"}{...}
{viewerjumpto "描述" "m4_matrix_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "m4_matrix_zh##linkspdf"}{...}
{viewerjumpto "备注" "m4_matrix_zh##remarks"}
{help m4_matrix:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-4] 矩阵} {hline 2}}矩阵函数
{p_end}
{p2col:}({mansection M-4 Matrix:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker contents}{...}
{title:目录}

{col 5}   [M-5]
{col 5}手册条目{col 22}函数{col 40}目的
{col 5}{hline}

{col 5}   {c TLC}{hline 17}{c TRC}
{col 5}{hline 3}{c RT}{it: 特征 }{c LT}{hline}
{col 5}   {c BLC}{hline 17}{c BRC}

{col 5}{bf:{help mf_trace_zh:trace()}}{...}
{col 22}{cmd:trace()}{...}
{col 40}矩阵的迹
{...}

{col 5}{bf:{help mf_det_zh:det()}}{...}
{col 22}{cmd:det()}{...}
{col 40}行列式
{col 22}{cmd:dettriangular()}{...}
{col 40}三角矩阵的行列式

{col 5}{bf:{help mf_norm_zh:norm()}}{...}
{col 22}{cmd:norm()}{...}
{col 40}矩阵和向量的范数
{...}

{col 5}{bf:{help mf_cond_zh:cond()}}{...}
{col 22}{cmd:cond()}{...}
{col 40}矩阵条件数
{...}

{col 5}{bf:{help mf_rank_zh:rank()}}{...}
{col 22}{cmd:rank()}{...}
{col 40}矩阵的秩
{...}

{col 5}{bf:{help mf_trace_avbv_zh:trace_AVBV()}}{...}
{col 22}{cmd:trace_AVBV()}{...}
{col 40}特殊目的矩阵的迹

{col 5}{bf:{help mf_trace_abbav_zh:trace_ABBAV()}}{...}
{col 22}{cmd:trace_ABBAV()}{...}
{col 40}特殊目的矩阵的迹

{col 5}   {c TLC}{hline 46}{c TRC}
{col 5}{hline 3}{c RT}{it: Cholesky 分解，求解器和反演 }{c LT}{hline}
{col 5}   {c BLC}{hline 46}{c BRC}

{col 5}{bf:{help mf_cholesky_zh:cholesky()}}{...}
{col 22}{cmd:cholesky()}{...}
{col 40}Cholesky 平方根分解 {it:A}={it:GG}{bf:'}

{col 5}{bf:{help mf_cholsolve_zh:cholsolve()}}{...}
{col 22}{cmd:cholsolve()}{...}
{col 40}求解 {it:AX} = {it:B} 的 {it:X}

{col 5}{bf:{help mf_cholinv_zh:cholinv()}}{...}
{col 22}{cmd:cholinv()}{...}
{col 40}正定对称矩阵的逆

{col 5}{bf:{help mf_invsym_zh:invsym()}}{...}
{col 22}{cmd:invsym()}{...}
{col 40}实对称矩阵的逆

{col 5}   {c TLC}{hline 40}{c TRC}
{col 5}{hline 3}{c RT}{it: LU 分解，求解器和反演 }{c LT}{hline}
{col 5}   {c BLC}{hline 40}{c BRC}

{col 5}{bf:{help mf_lud_zh:lud()}}{...}
{col 22}{cmd:lud()}{...}
{col 40}LU 分解 {it:A} = {it:PLU}

{col 5}{bf:{help mf_lusolve_zh:lusolve()}}{...}
{col 22}{cmd:lusolve()}{...}
{col 40}求解 {it:AX} = {it:B} 的 {it:X}

{col 5}{bf:{help mf_luinv_zh:luinv()}}{...}
{col 22}{cmd:luinv()}{...}
{col 40}矩阵的逆

{col 5}   {c TLC}{hline 40}{c TRC}
{col 5}{hline 3}{c RT}{it: QR 分解，求解器和反演 }{c LT}{hline}
{col 5}   {c BLC}{hline 40}{c BRC}

{col 5}{bf:{help mf_qrd_zh:qrd()}}{...}
{col 22}{cmd:qrd()}{...}
{col 40}QR 分解 {it:A} = {it:QR}
{col 22}{cmd:qrdp()}{...}
{col 40}QR 分解 {it:A} = {it:QRP}{bf:'}
{col 22}{cmd:hqrd()}{...}
{col 40}QR 分解 {it:A} = {it:f}({it:H}){it:R1}
{col 22}{cmd:hqrdp()}{...}
{col 40}QR 分解 {it:A} = {it:f}({it:H},{it:tau}){it:R1}{it:P}{bf:'}
{col 22}{cmd:hqrdmultq()}{...}
{col 40}返回 {it:QX} 或 {it:Q}{bf:'}{it:X}, {it:Q} = {it:f}({it:H},{it:tau})
{col 22}{cmd:hqrdmultq1t()}{...}
{col 40}返回 {it:Q1}{bf:'}{it:X},     {it:Q1} = {it:f}({it:H},{it:tau})
{col 22}{cmd:hqrdq()}{...}
{col 40}返回 {it:Q}  = {it:f}({it:H},{it:tau})
{col 22}{cmd:hqrdq1()}{...}
{col 40}返回 {it:Q1} = {it:f}({it:H},{it:tau})
{col 22}{cmd:hqrdr()}{...}
{col 40}返回 {it:R}
{col 22}{cmd:hqrdr1()}{...}
{col 40}返回 {it:R1}

{col 5}{bf:{help mf_qrsolve_zh:qrsolve()}}{...}
{col 22}{cmd:qrsolve()}{...}
{col 40}求解 {it:AX} = {it:B} 的 {it:X}

{col 5}{bf:{help mf_qrinv_zh:qrinv()}}{...}
{col 22}{cmd:qrinv()}{...}
{col 40}矩阵的广义逆

{col 5}   {c TLC}{hline 65}{c TRC}
{col 5}{hline 3}{c RT}{it: Hessenberg 分解和广义 Hessenberg 分解 }{c LT}{hline}
{col 5}   {c BLC}{hline 65}{c BRC}

{col 5}{bf:{help mf_hessenbergd_zh:hessenbergd()}}{...}
{col 22}{cmd:hessenbergd()}{...}
{col 40}Hessenberg 分解 T = Q'XQ

{col 5}{bf:{help mf_ghessenbergd_zh:ghessenbergd()}}{...}
{col 22}{cmd:ghessenbergd()}{...}
{col 40}广义 Hessenberg 分解 T = Q'XQ

{col 5}   {c TLC}{hline 55}{c TRC}
{col 5}{hline 3}{c RT}{it: Schur 分解和广义 Schur 分解 }{c LT}{hline}
{col 5}   {c BLC}{hline 55}{c BRC}

{col 5}{bf:{help mf_schurd_zh:schurd()}}{...}
{col 22}{cmd:schurd()}{...}
{col 40}Schur 分解 T = U'AV; R=U'BA
{col 22}{cmd:schurdgroupby()}{...}
{col 40}Schur 分解与分组
{col 40}  结果的分组

{col 5}{bf:{help mf_gschurd_zh:gschurd()}}{...}
{col 22}{cmd:gschurd()}{...}
{col 40}广义 Schur 分解 T = U'AV; R=U'BA
{col 22}{cmd:gschurdgroupby()}{...}
{col 40}广义 Schur 分解与分组
{col 40}  结果的分组

{col 5}   {c TLC}{hline 52}{c TRC}
{col 5}{hline 3}{c RT}{it: 奇异值分解，求解器和反演 }{c LT}{hline}
{col 5}   {c BLC}{hline 52}{c BRC}

{col 5}{bf:{help mf_svd_zh:svd()}}{...}
{col 22}{cmd:svd()}{...}
{col 40}奇异值分解 {it:A} = {it:UDV}{bf:'}
{col 22}{cmd:svdsv()}{...}
{col 40}奇异值 {it:s}

{col 5}{bf:{help mf_fullsvd_zh:fullsvd()}}{...}
{col 22}{cmd:fullsvd()}{...}
{col 40}奇异值分解 {it:A} = {it:USV}{bf:'}
{col 22}{cmd:fullsdiag()}{...}
{col 40}将 {it:s} 转换为 {it:S} 

{col 5}{bf:{help mf_svsolve_zh:svsolve()}}{...}
{col 22}{cmd:svsolve()}{...}
{col 40}求解 {it:AX} = {it:B} 的 {it:X}

{col 5}{bf:{help mf_pinv_zh:pinv()}}{...}
{col 22}{cmd:pinv()}{...}
{col 40}Moore-Penrose 伪逆

{col 5}   {c TLC}{hline 20}{c TRC}
{col 5}{hline 3}{c RT}{it: 三角求解器 }{c LT}{hline}
{col 5}   {c BLC}{hline 20}{c BRC}

{col 5}{bf:{help mf_solvelower_zh:solvelower()}}{...}
{col 22}{cmd:solvelower()}{...}
{col 40}求解 {it:AX} = {it:B} 的 {it:X}, {it:A} 为下三角
{col 22}{cmd:solveupper()}{...}
{col 40}求解 {it:AX} = {it:B} 的 {it:X}, {it:A} 为上三角

{col 5}   {c TLC}{hline 40}{c TRC}
{col 5}{hline 3}{c RT}{it: 特征系统、幂和超越 }{c LT}{hline}
{col 5}   {c BLC}{hline 40}{c BRC}

{col 5}{bf:{help mf_eigensystem_zh:eigensystem()}}{...}
{col 22}{cmd:eigensystem()}{...}
{col 40}右特征向量/特征值 
{col 22}{cmd:eigenvalues()}{...}
{col 40}特征值
{col 22}{cmd:lefteigensystem()}{...}
{col 40}左特征向量/特征值 
{col 22}{cmd:symeigensystem()}{...}
{col 40}对称矩阵的特征向量/特征值
{col 22}{cmd:symeigenvalues()}{...}
{col 40}对称矩阵的特征值

{col 5}{bf:{help mf_eigensystemselect_zh:eigensystemselect()}}{...}
{col 22}{cmd:eigen~selectr()}{...}
{col 40}选择的特征向量/特征值
{col 22}等。

{col 5}{bf:{help mf_geigensystem_zh:geigensystem()}}{...}
{col 22}{cmd:geigensystem()}{...}
{col 40}广义特征向量/特征值 
{col 22}等。

{col 5}{bf:{help mf_matpowersym_zh:matpowersym()}}{...}
{col 22}{cmd:matpowersym()}{...}
{col 40}对称矩阵的幂

{col 5}{bf:{help mf_matexpsym_zh:matexpsym()}}{...}
{col 22}{cmd:matexpsym()}{...}
{col 40}对称矩阵的指数
{col 22}{cmd:matlogsym()}{...}
{col 40}对称矩阵的对数

{col 5}   {c TLC}{hline 15}{c TRC}
{col 5}{hline 3}{c RT}{it: 平衡 }{c LT}{hline}
{col 5}   {c BLC}{hline 15}{c BRC}

{col 5}{bf:{help mf__equilrc_zh:_equilrc()}}{...}
{col 22}{cmd:_equilrc()}{...}
行/列平衡
{col 22}{cmd:_equilr()}{...}
行平衡
{col 22}{cmd:_equilc()}{...}
列平衡
{col 22}{cmd:_perhapsequilrc()}{...}
必要时行/列平衡
{col 22}{cmd:_perhapsequilr()}{...}
必要时行平衡
{col 22}{cmd:_perhapsequilc()}{...}
必要时列平衡
{col 22}{cmd:rowscalefactors()}{...}
平衡的行缩放因子
{col 22}{cmd:colscalefactors()}{...}
平衡的列缩放因子

{col 5}   {c TLC}{hline 17}{c TRC}
{col 5}{hline 3}{c RT}{it: 带状矩阵 }{c LT}{hline}
{col 5}   {c BLC}{hline 17}{c BRC}

{col 5}{bf:{help mf_spmatbanded_zh:SPMATbanded*()}}{...}
{col 22}{cmd:SPMATbanded*()}{...}
带状矩阵操作符

{col 5}   {c TLC}{hline 8}{c TRC}
{col 5}{hline 3}{c RT}{it: LAPACK }{c LT}{hline}
{col 5}   {c BLC}{hline 8}{c BRC}

{col 5}{bf:{help mf_lapack_zh:lapack()}}{...}
{col 22}{cmd:LA_*()}{...}
LAPACK 线性代数函数
{col 22}{cmd:_flopin()}{...}
{col 40}将矩阵顺序从行主转换为列主
{col 42}到列主
{col 22}{cmd:_flopout()}{...}
{col 40}将矩阵顺序从列主转换为行主
{col 42}到行主

{col 5}{hline}


{marker description}{...}
{title:描述}

{p 4 4 2}
上述函数是大多数人所称的数学矩阵函数。  


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-4 MatrixRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
有关其他数学函数，请参见

	{bf:{help m4_scalar_zh:[M-4] 标量}}          标量数学函数

	{bf:{help m4_mathematical_zh:[M-4] 数学}}    重要数学函数

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m4_matrix.sthlp>}