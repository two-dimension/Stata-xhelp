{smcl}
{* *! version 1.1.7  15may2018}{...}
{vieweralsosee "[M-4] 操作" "mansection M-4 Manipulation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 介绍" "help m4_intro_zh"}{...}
{viewerjumpto "目录" "m4_manipulation_zh##contents"}{...}
{viewerjumpto "描述" "m4_manipulation_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "m4_manipulation_zh##linkspdf"}{...}
{viewerjumpto "备注" "m4_manipulation_zh##remarks"}
{help m4_manipulation:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-4] 操作} {hline 2}}矩阵操作
{p_end}
{p2col:}({mansection M-4 Manipulation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker contents}{...}
{title:目录}

{col 5}   [M-5]
{col 5}手册条目{col 21}函数{col 37}目的
{col 5}{hline}

{col 5}   {c TLC}{hline 15}{c TRC}
{col 5}{hline 3}{c RT}{it: 转置}{c LT}{hline}
{col 5}   {c BLC}{hline 15}{c BRC}

{col 5}{bf:{help mf_transposeonly_zh:transposeonly()}}{...}
{col 21}{cmd:transposeonly()}{...}
{col 37}不进行共轭的转置

{col 5}{bf:{help mf__transpose_zh:_transpose()}}{...}
{col 21}{cmd:_transpose()}{...}
{col 37}原地转置

{col 5}   {c TLC}{hline 11}{c TRC}
{col 5}{hline 3}{c RT}{it: 对角线}{c LT}{hline}
{col 5}   {c BLC}{hline 11}{c BRC}

{col 5}{bf:{help mf_diag_zh:diag()}}{...}
{col 21}{cmd:diag()}{...}
{col 37}从向量创建对角矩阵

{col 5}{bf:{help mf__diag_zh:_diag()}}{...}
{col 21}{cmd:_diag()}{...}
{col 37}替换矩阵的对角线

{col 5}{bf:{help mf_diagonal_zh:diagonal()}}{...}
{col 21}{cmd:diagonal()}{...}
{col 37}将矩阵的对角线提取为向量

{col 5}   {c TLC}{hline 24}{c TRC}
{col 5}{hline 3}{c RT}{it: 三角形与对称矩阵}{c LT}{hline}
{col 5}   {c BLC}{hline 24}{c BRC}

{col 5}{bf:{help mf_lowertriangle_zh:lowertriangle()}}{...}
{col 21}{cmd:lowertriangle()}{...}
{col 37}提取下三角
{col 21}{cmd:uppertriangle()}{...}
{col 37}提取上三角

{col 5}{bf:{help mf_sublowertriangle_zh:sublowertriangle()}}{...}
{col 37}广义的 {cmd:lowertriangle()}

{col 5}{bf:{help mf_makesymmetric_zh:makesymmetric()}}{...}
{col 21}{cmd:makesymmetric()}{...}
{col 37}使矩阵对称（厄米）

{col 5}   {c TLC}{hline 9}{c TRC}
{col 5}{hline 3}{c RT}{it: 排序}{c LT}{hline}
{col 5}   {c BLC}{hline 9}{c BRC}

{col 5}{bf:{help mf_sort_zh:sort()}}{...}
{col 21}{cmd:sort()}{...}
{col 37}对矩阵的行进行排序
{col 21}{cmd:jumble()}{...}
{col 37}随机化矩阵的行顺序
{col 21}{cmd:order()}{...}
{col 37}有序行的排列向量
{col 21}{cmd:unorder()}{...}
{col 37}随机化行的排列向量
{col 21}{cmd:_collate()}{...}
{col 37}根据排列向量对矩阵进行排序

{col 5}{bf:{help mf_uniqrows_zh:uniqrows()}}{...}
{col 21}{cmd:uniqrows()}{...}
排序后独特的行

{col 5}   {c TLC}{hline 9}{c TRC}
{col 5}{hline 3}{c RT}{it: 编辑}{c LT}{hline}
{col 5}   {c BLC}{hline 9}{c BRC}

{col 5}{bf:{help mf__fillmissing_zh:_fillmissing()}}{...}
{col 21}{cmd:_fillmissing()}{...}
将矩阵更改为包含缺失值

{col 5}{bf:{help mf_editmissing_zh:editmissing()}}{...}
{col 21}{cmd:editmissing()}{...}
替换矩阵中的缺失值

{col 5}{bf:{help mf_editvalue_zh:editvalue()}}{...}
{col 21}{cmd:editvalue()}{...}
替换矩阵中的值

{col 5}{bf:{help mf_edittozero_zh:edittozero()}}{...}
{col 21}{cmd:edittozero()}{...}
编辑矩阵以纠正舍入误差（零值）
{col 21}{cmd:edittozerotol()}{...}
{col 37}同上，绝对容差

{col 5}{bf:{help mf_edittoint_zh:edittoint()}}{...}
{col 21}{cmd:edittoint()}{...}
编辑矩阵以纠正舍入误差（整数）
{col 21}{cmd:edittointtol()}{...}
{col 37}同上，绝对容差

{col 5}   {c TLC}{hline 21}{c TRC}
{col 5}{hline 3}{c RT}{it: 排列向量}{c LT}{hline}
{col 5}   {c BLC}{hline 21}{c BRC}

{col 5}{bf:{help mf_invorder_zh:invorder()}}{...}
{col 21}{cmd:invorder()}{...}
排列向量的逆
{col 21}{cmd:revorder()}{...}
排列向量的反转

{col 5}   {c TLC}{hline 36}{c TRC}
{col 5}{hline 3}{c RT}{it: 矩阵与向量之间的转换}{c LT}{hline}
{col 5}   {c BLC}{hline 36}{c BRC}

{col 5}{bf:{help mf_vec_zh:vec()}}{...}
{col 21}{cmd:vec()}{...}
将矩阵转换为列向量
{col 21}{cmd:vech()}{...}
将对称矩阵转换为列向量
{col 21}{cmd:invvech()}{...}
将列向量转换为对称矩阵

{col 5}{bf:{help mf_rowshape_zh:rowshape()}}{...}
{col 21}{cmd:rowshape()}{...}
重新塑造矩阵以具有 {it:r} 行
{col 21}{cmd:colshape()}{...}
重新塑造矩阵以具有 {it:c} 列

{col 5}   {c TLC}{hline 20}{c TRC}
{col 5}{hline 3}{c RT}{it: 关联数组}{c LT}{hline}
{col 5}   {c BLC}{hline 20}{c BRC}

{col 5}{bf:{help mf_asarray_zh:asarray()}}{...}
{col 21}{cmd:asarray()}{...}
在数组中存储或检索元素
{col 21}{cmd:asarray_*()}{...}
实用程序例程 

{col 5}{hline}


{marker description}{...}
{title:描述}

{p 4 4 2}
上述函数操作矩阵，例如提取对角线和排序。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-4 ManipulationRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
操作和实用之间有细微的界限；请参阅

   	{bf:{help m4_utility_zh:[M-4] 实用}}    矩阵实用函数

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m4_manipulation.sthlp>}