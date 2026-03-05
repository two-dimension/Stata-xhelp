{smcl}
{* *! version 1.1.8  15may2018}{...}
{vieweralsosee "[M-4] Utility" "mansection M-4 Utility"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Intro" "help m4_intro_zh"}{...}
{viewerjumpto "Contents" "m4_utility_zh##contents"}{...}
{viewerjumpto "Description" "m4_utility_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m4_utility_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m4_utility_zh##remarks"}
{help m4_utility:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-4] Utility} {hline 2}}矩阵实用函数
{p_end}
{p2col:}({mansection M-4 Utility:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker contents}{...}
{title:内容}

{col 5}   [M-5]
{col 5}手册条目{col 21}函数{col 39}用途
{col 5}{hline}

{col 5}   {c TLC}{hline 9}{c TRC}
{col 5}{hline 3}{c RT}{it: 复数 }{c LT}{hline}
{col 5}   {c BLC}{hline 9}{c BRC}

{col 5}{bf:{help mf_re_zh:Re()}}{...}
{col 21}{cmd:Re()}{...}
{col 39}实部
{col 21}{cmd:Im()}{...}
{col 39}虚部

{col 5}{bf:{help mf_c_zh:C()}}{...}
{col 21}{cmd:C()}{...}
{col 39}生成复数

{col 5}   {c TLC}{hline 14}{c TRC}
{col 5}{hline 3}{c RT}{it: 形状和类型 }{c LT}{hline}
{col 5}   {c BLC}{hline 14}{c BRC}

{col 5}{bf:{help mf_rows_zh:rows()}}{...}
{col 21}{cmd:rows()}{...}
{col 39}行数
{col 21}{cmd:cols()}{...}
{col 39}列数
{col 21}{cmd:length()}{...}
{col 39}向量的元素数量

{col 5}{bf:{help mf_eltype_zh:eltype()}}{...}
{col 21}{cmd:eltype()}{...}
{col 39}对象的元素类型
{col 21}{cmd:orgtype()}{...}
{col 39}对象的组织类型
{col 21}{cmd:classname()}{...}
{col 39}Mata类标量的类名
{col 21}{cmd:structname()}{...}
{col 39}Mata结构标量的结构名

{col 5}{bf:{help mf_isreal_zh:isreal()}}{...}
{col 21}{cmd:isreal()}{...}
{col 39}对象是实矩阵
{col 21}{cmd:iscomplex()}{...}
{col 39}对象是复矩阵
{col 21}{cmd:isstring()}{...}
{col 39}对象是字符串矩阵
{col 21}{cmd:ispointer()}{...}
{col 39}对象是指针矩阵

{col 5}{bf:{help mf_isrealvalues_zh:isrealvalues()}}{...}
{col 21}{cmd:isrealvalues()}{...}
{col 39}矩阵是否仅包含实值

{col 5}{bf:{help mf_isview_zh:isview()}}{...}
{col 21}{cmd:isview()}{...}
{col 39}矩阵是否是视图

{col 5}   {c TLC}{hline 12}{c TRC}
{col 5}{hline 3}{c RT}{it: 属性 }{c LT}{hline}
{col 5}   {c BLC}{hline 12}{c BRC}

{col 5}{bf:{help mf_issymmetric_zh:issymmetric()}}{...}
{col 21}{cmd:issymmetric()}{...}
{col 39}矩阵是否是对称的（厄米）
{col 21}{cmd:issymmetriconly()}{...}
{col 39}矩阵是否是机械对称的

{col 5}{bf:{help mf_isdiagonal_zh:isdiagonal()}}{...}
{col 21}{cmd:isdiagonal()}{...}
{col 39}矩阵是否是对角矩阵

{col 5}{bf:{help mf_diag0cnt_zh:diag0cnt()}}{...}
{col 21}{cmd:diag0cnt()}{...}
对角线上的0的计数

{col 5}   {c TLC}{hline 11}{c TRC}
{col 5}{hline 3}{c RT}{it: 选择 }{c LT}{hline}
{col 5}   {c BLC}{hline 11}{c BRC}

{col 5}{bf:{help mf_select_zh:select()}}{...}
{col 21}{cmd:select()}{...}
选择行或列
{col 21}{cmd:st_select()}{...}
{col 39}选择视图的行或列
{col 21}{cmd:selectindex()}{...}
{col 39}选择索引

{col 5}   {c TLC}{hline 16}{c TRC}
{col 5}{hline 3}{c RT}{it: 缺失值 }{c LT}{hline}
{col 5}   {c BLC}{hline 16}{c BRC}

{col 5}{bf:{help mf_missing_zh:missing()}}{...}
{col 21}{cmd:missing()}{...}
缺失值计数
{col 21}{cmd:rowmissing()}{...}
按行计算缺失值
{col 21}{cmd:colmissing()}{...}
按列计算缺失值
{col 21}{cmd:nonmissing()}{...}
非缺失值计数
{col 21}{cmd:rownonmissing()}{...}
按行计算非缺失值
{col 21}{cmd:colnonmissing()}{...}
按列计算非缺失值
{col 21}{cmd:hasmissing()}{...}
矩阵是否存在缺失值

{col 5}{bf:{help mf_missingof_zh:missingof()}}{...}
{col 21}{cmd:missingof()}{...}
适当的缺失值

{col 5}   {c TLC}{hline 31}{c TRC}
{col 5}{hline 3}{c RT}{it: 范围、和及交叉乘积 }{c LT}{hline}
{col 5}   {c BLC}{hline 31}{c BRC}


{col 5}{bf:{help mf_minmax_zh:minmax()}}{...}
{col 21}{cmd:rowmin()}{...}
按行的最小值
{col 21}{cmd:colmin()}{...}
按列的最小值
{col 21}{cmd:min()}{...}
总体最小值
{col 21}{cmd:rowmax()}{...}
按行的最大值
{col 21}{cmd:colmax()}{...}
按列的最大值
{col 21}{cmd:max()}{...}
总体最大值
{col 21}{cmd:rowminmax()}{...}
按行的最小值和最大值
{col 21}{cmd:colminmax()}{...}
按列的最小值和最大值
{col 21}{cmd:minmax()}{...}
总体的最小值和最大值
{col 21}{cmd:rowmaxabs()}{...}
{col 39}{cmd:rowmax(abs())}
{col 21}{cmd:colmaxabs()}{...}
{col 39}{cmd:colmax(abs())}

{col 5}{bf:{help mf_minindex_zh:minindex()}}{...}
{col 21}{cmd:minindex()}{...}
最小值的索引
{col 21}{cmd:maxindex()}{...}
最大值的索引

{col 5}{bf:{help mf_sum_zh:sum()}}{...}
{col 21}{cmd:rowsum()}{...}
每行的和
{col 21}{cmd:colsum()}{...}
每列的和
{col 21}{cmd:sum()}{...}
总体和
{col 21}{cmd:quadrowsum()}{...}
每行的四维精度和
{col 21}{cmd:quadcolsum()}{...}
每列的四维精度和
{col 21}{cmd:quadsum()}{...}
总体的四维精度和

{col 5}{bf:{help mf_runningsum_zh:runningsum()}}{...}
{col 21}{cmd:runningsum()}{...}
向量的累加和
{col 21}{cmd:quadrunningsum()}{...}
四维精度的 {cmd:runningsum()}

{col 5}{bf:{help mf_cross_zh:cross()}}{...}
{col 21}{cmd:cross()}{...}
{it:X}'{it:X}, {it:X}'{it:Z}等

{col 5}{bf:{help mf_crossdev_zh:crossdev()}}{...}
{col 21}{cmd:crossdev()}{...}
({it:X}:-{it:x})'({it:X}:-{it:x}), ({it:X}:-{it:x})'({it:Z}:-{it:z})等

{col 5}{bf:{help mf_quadcross_zh:quadcross()}}{...}
{col 21}{cmd:quadcross()}{...}
四维精度的 {cmd:cross()}
{col 21}{cmd:quadcrossdev()}{...}
{col 39}四维精度的 {cmd:crossdev()}

{col 5}   {c TLC}{hline 13}{c TRC}
{col 5}{hline 3}{c RT}{it: 编程 }{c LT}{hline}
{col 5}   {c BLC}{hline 13}{c BRC}

{col 5}{bf:{help mf_reldif_zh:reldif()}}{...}
{col 21}{cmd:reldif()}{...}
相对差异
{col 21}{cmd:mreldif()}{...}
矩阵间的最大相对差异
{col 21}{cmd:mreldifsym()}{...}
最大相对差异来自对称性
{col 21}{cmd:mreldifre()}{...}
最大相对差异来自实数

{col 5}{bf:{help mf_all_zh:all()}}{...}
{col 21}{cmd:all()}{...}
{cmd:sum(!}{it:L}{cmd:)==0}
{col 21}{cmd:any()}{...}
{cmd:sum(}{it:L}{cmd:)!=0}
{col 21}{cmd:allof()}{...}
{cmd:all(}{it:P}{cmd::==}{it:s}{cmd:)}
{col 21}{cmd:anyof()}{...}
{cmd:any(}{it:P}{cmd::==}{it:s}{cmd:)}

{col 5}{bf:{help mf_panelsetup_zh:panelsetup()}}{...}
{col 21}{cmd:panelsetup()}{...}
初始化面板数据处理
{col 21}{cmd:panelstats()}{...}
面板的汇总统计
{col 21}{cmd:panelsubmatrix()}{...}
获取面板 {it:i} 的矩阵
{col 21}{cmd:panelsubview()}{...}
获取面板 {it:i} 的视图矩阵

{col 5}{bf:{help mf__negate_zh:_negate()}}{...}
{col 21}{cmd:_negate()}{...}
快速取负矩阵

{col 5}   {c TLC}{hline 24}{c TRC}
{col 5}{hline 3}{c RT}{it: 常数和容差 }{c LT}{hline}
{col 5}   {c BLC}{hline 24}{c BRC}

{col 5}{bf:{help mf_mindouble_zh:mindouble()}}{...}
{col 21}{cmd:mindouble()}{...}
非缺失值的最小值
{col 21}{cmd:maxdouble()}{...}
非缺失值的最大值
{col 21}{cmd:smallestdouble()}{...}
最小的 {it:e}>0

{col 5}{bf:{help mf_epsilon_zh:epsilon()}}{...}
{col 21}{cmd:epsilon()}{...}
单位舍入误差

{col 5}{bf:{help mf_floatround_zh:floatround()}}{...}
{col 21}{cmd:floatround()}{...}
舍入到浮点精度

{col 5}{bf:{help mf_solve_tol_zh:solve_tol()}}{...}
{col 21}{cmd:solve_tol()}{...}
解算器和反演器使用的容差

{col 5}{hline}


{marker description}{...}
{title:描述}

{p 4 4 2}
矩阵实用函数告诉你有关矩阵的一些信息，例如行数或它是否是对角矩阵。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-4 UtilityRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
实用与操作之间有一条细微的界限；另请参见

	{bf:{help m4_manipulation_zh:[M-4] 操作}}             矩阵操作函数

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m4_utility.sthlp>}