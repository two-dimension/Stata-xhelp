{smcl}
{* *! version 1.2.11  07dec2018}{...}
{vieweralsosee "[M-4] 数学" "mansection M-4 数学"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 介绍" "help m4_intro_zh"}{...}
{viewerjumpto "目录" "m4_mathematical_zh##contents"}{...}
{viewerjumpto "描述" "m4_mathematical_zh##description"}{...}
{viewerjumpto "PDF文档链接" "m4_mathematical_zh##linkspdf"}{...}
{viewerjumpto "备注" "m4_mathematical_zh##remarks"}
{help m4_mathematical:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-4] 数学} {hline 2}}重要的数学函数
{p_end}
{p2col:}({mansection M-4 数学:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker contents}{...}
{title:目录}

{col 2}   [M-5]
{col 2}手册条目{col 18}函数{col 42}用途
{col 2}{hline}

{col 2}   {c TLC}{hline 32}{c TRC}
{col 2}{hline 3}{c RT}{it: 基础} ({it:另见} {bf:{help m4_scalar_zh:[M-4] 标量}}) {c LT}{hline}
{col 2}   {c BLC}{hline 32}{c BRC}

{col 2}{bf:{help mf_sum_zh:sum()}}{...}
{col 18}{cmd:rowsum()}{...}
{col 42}每行的和
{col 18}{cmd:colsum()}{...}
{col 42}每列的和
{col 18}{cmd:sum()}{...}
{col 42}总和
{col 18}{cmd:quadrowsum()}{...}
{col 42}每行的四倍精度和
{col 18}{cmd:quadcolsum()}{...}
{col 42}每列的四倍精度和
{col 18}{cmd:quadsum()}{...}
{col 42}四倍精度总和

{col 2}{bf:{help mf_runningsum_zh:runningsum()}}{...}
{col 18}{cmd:runningsum()}{...}
{col 42}向量的累加和
{col 18}{cmd:quadrunningsum()}{...}
{col 42}四倍精度 {cmd:runningsum()}

{col 2}{bf:{help mf_minmax_zh:minmax()}}{...}
{col 18}{cmd:rowmin()}{...}
{col 42}按行的最小值
{col 18}{cmd:colmin()}{...}
{col 42}按列的最小值
{col 18}{cmd:min()}{...}
{col 42}总最小值
{col 18}{cmd:rowmax()}{...}
{col 42}按行的最大值
{col 18}{cmd:colmax()}{...}
{col 42}按列的最大值
{col 18}{cmd:max()}{...}
{col 42}总最大值
{col 18}{cmd:rowminmax()}{...}
{col 42}按行的最小值和最大值
{col 18}{cmd:colminmax()}{...}
{col 42}按列的最小值和最大值
{col 18}{cmd:minmax()}{...}
{col 42}总体的最小值和最大值
{col 18}{cmd:rowmaxabs()}{...}
{col 42}{cmd:rowmax(abs())}
{col 18}{cmd:colmaxabs()}{...}
{col 42}{cmd:colmax(abs())}

{col 2}{bf:{help mf_deriv_zh:deriv()}}{...}
{col 18}{cmd:deriv()}{...}
{col 42}数值导数
{col 18}{cmd:deriv_init()}{...}
{col 42}开始导数
{col 18}{cmd:deriv_init_}{it:*}{cmd:()}{...}
{col 42}设置详情
{col 18}{cmd:deriv()}{...}
{col 42}计算导数
{col 18}{cmd:deriv_result_}{it:*}{cmd:()}{...}
{col 42}访问结果
{col 18}{cmd:deriv_query()}{...}
{col 42}报告设置 

{col 2}{bf:{help mf_optimize_zh:optimize()}}{...}
{col 18}{cmd:optimize()}{...}
{col 42}函数最大化和最小化
{col 18}{cmd:optimize_init()}{...}
{col 42}开始优化
{col 18}{cmd:optimize_init_}{it:*}{cmd:()}{...}
{col 42}设置详情
{col 18}{cmd:optimize()}{...}
{col 42}执行优化
{col 18}{cmd:optimize_result_}{it:*}{cmd:()}{...}
{col 42}访问结果
{col 18}{cmd:optimize_query()}{...}
{col 42}报告设置 

{col 2}{bf:{help mf_moptimize_zh:moptimize()}}{...}
{col 18}{cmd:moptimize()}{...}
{col 42}函数优化
{col 18}{cmd:moptimize_ado_cleanup()}{...}
{col 42}执行ado后的清理 
{col 18}{cmd:moptimize_evaluate()}{...}
{col 42}在初始值下评估函数
{col 18}{cmd:moptimize_init()}{...}
{col 42}开始设置优化问题
{col 18}{cmd:moptimize_init_}{it:*}{cmd:()}{...}
{col 42}设置详情 
{col 18}{cmd:moptimize_result_}{it:*}{cmd:()}{...}
{col 42}访问 {cmd:moptimize()} 结果
{col 18}{cmd:moptimize_query()}{...}
{col 42}报告设置
{col 18}{cmd:moptimize_util_}{it:*}{cmd:()}{...}
{col 42}用于编写的实用程序函数
{col 42} 评估器和处理结果

{col 2}{bf:{help mf_solvenl_zh:solvenl()}}{...}
{col 18}{cmd:solvenl_init()}{...}
{col 42}开始求解器
{col 18}{cmd:solvenl_init_}{it:*}{cmd:()}{...}
{col 42}设置详情
{col 18}{cmd:solvenl_solve()}{...}
{col 42}求解方程
{col 18}{cmd:solvenl_result_}{it:*}{cmd:()}{...}
{col 42}访问结果
{col 18}{cmd:solvenl_dump()}{...}
{col 42}报告详细设置

{col 2}{bf:{help mf_linearprogram_zh:LinearProgram()}}{...}
{col 18}{cmd:LinearProgram()}{...}
{col 42}线性规划

{col 2}{bf:{help mf_quadrature_zh:Quadrature()}}{...}
{col 18}{cmd:Quadrature()}{...}
{col 42}数值积分

{col 2}   {c TLC}{hline 19}{c TRC}
{col 2}{hline 3}{c RT}{it: 傅里叶变换 }{c LT}{hline}
{col 2}   {c BLC}{hline 19}{c BRC}

{col 2}{bf:{help mf_fft_zh:fft()}}{...}
{col 18}{cmd:fft()}{...}
{col 42}快速傅里叶变换
{col 18}{cmd:invfft()}{...}
{col 42}逆快速傅里叶变换
{col 18}{cmd:convolve()}{...}
{col 42}卷积
{col 18}{cmd:deconvolve()}{...}
{col 42} {cmd:convolve()} 的逆
{col 18}{cmd:Corr()}{...}
{col 42}相关性
{col 18}{cmd:ftperiodogram()}{...}
{col 42}功率谱
{col 18}{cmd:ftpad()}{...}
{col 42}填充到2的幂长度
{col 18}{cmd:ftwrap()}{...}
{col 42}转换为频率环绕顺序
{col 18}{cmd:ftunwrap()}{...}
{col 42}从频率环绕转换
{col 42}  顺序
{col 18}{cmd:ftretime()}{...}
{col 42}改变信号的时间比例
{col 18}{cmd:ftfreqs()}{...}
{col 42}变换的频率

{col 2}   {c TLC}{hline 15}{c TRC}
{col 2}{hline 3}{c RT}{it: 三次样条 }{c LT}{hline}
{col 2}   {c BLC}{hline 15}{c BRC}

{col 2}{bf:{help mf_spline3_zh:spline3()}}{...}
{col 18}{cmd:spline3()}{...}
{col 42}拟合三次样条
{col 18}{cmd:spline3eval()}{...}
{col 42}评估三次样条

{col 2}   {c TLC}{hline 13}{c TRC}
{col 2}{hline 3}{c RT}{it: 多项式 }{c LT}{hline}
{col 2}   {c BLC}{hline 13}{c BRC}

{col 2}{bf:{help mf_polyeval_zh:polyeval()}}{...}
{col 18}{cmd:polyeval()}{...}
{col 42}评估多项式
{col 18}{cmd:polysolve()}{...}
{col 42}求解多项式
{col 18}{cmd:polytrim()}{...}
{col 42}修剪多项式
{col 18}{cmd:polyderiv()}{...}
{col 42}多项式的导数
{col 18}{cmd:polyinteg()}{...}
{col 42}多项式的积分
{col 18}{cmd:polyadd()}{...}
{col 42}多项式相加
{col 18}{cmd:polymult()}{...}
{col 42}多项式相乘
{col 18}{cmd:polydiv()}{...}
{col 42}多项式相除
{col 18}{cmd:polyroots()}{...}
{col 42}求解多项式的根

{col 2}   {c TLC}{hline 29}{c TRC}
{col 2}{hline 3}{c RT}{it: 数论点集 }{c LT}{hline}
{col 2}   {c BLC}{hline 29}{c BRC}

{col 2}{bf:{help mf_halton_zh:halton()}}{...}
{col 18}{cmd:halton()}{...}
{col 42}生成Halton或Hammersley集
{col 18}{cmd:ghalton()}{...}
{col 42}生成广义Halton序列

{col 2}   {c TLC}{hline 17}{c TRC}
{col 2}{hline 3}{c RT}{it: 基数转换 }{c LT}{hline}
{col 2}   {c BLC}{hline 17}{c BRC}

{col 2}{bf:{help mf_inbase_zh:inbase()}}{...}
{col 18}{cmd:inbase()}{...}
{col 42}转换为指定基数
{col 18}{cmd:frombase()}{...}
{col 42}从指定基数转换

{col 2}{hline}


{marker description}{...}
{title:描述}

{p 4 4 2}
上述函数是重要的数学函数，大多数人不会称其为矩阵函数或标量函数，但它们使用矩阵和标量。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-4 数学备注和示例:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
有关其他数学函数，请参见 

{col 8}{...}
{bf:{help m4_matrix_zh:[M-4] 矩阵}}{...}
{col 30}矩阵数学函数

{col 8}{...}
{bf:{help m4_scalar_zh:[M-4] 标量}}{...}
{col 30}标量数学函数

{col 8}{...}
{bf:{help m4_statistical_zh:[M-4] 统计}}{...}
{col 30}统计函数

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m4_mathematical.sthlp>}