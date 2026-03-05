{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] lud()" "mansection M-5 lud()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] det()" "help mf_det_zh"}{...}
{vieweralsosee "[M-5] lusolve()" "help mf_lusolve_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{viewerjumpto "Syntax" "mf_lud_zh##syntax"}{...}
{viewerjumpto "Description" "mf_lud_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_lud_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_lud_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_lud_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_lud_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_lud_zh##source"}
{help mf_lud:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-5] lud()} {hline 2}}LU 分解
{p_end}
{p2col:}({mansection M-5 lud():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:void}{bind: }
{cmd:lud(}{it:数值矩阵 A}{cmd:,} {it:L}{cmd:,} {it:U}{cmd:,}
{it:p}{cmd:)}

{p 8 8 2}
{it:void}
{cmd:_lud(}{it:数值矩阵 L}{cmd:,} {it:U}{cmd:,}
{it:p}{cmd:)}

{p 8 8 2}
{it:void}
{cmd:_lud_la(}{it:数值矩阵 A}, {it:q}{cmd:)}


{p 4 4 2}
其中

{p 8 12 2}
1.  {it:A} 可以是实数或复数，并且不需要是方阵。

{p 8 12 2}
2.  {it:L}、{it:U}、{it:p} 和 {it:q} 的类型无关紧要； 
    结果会返回到这些位置。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:lud(}{it:A}{cmd:,} {it:L}{cmd:,} {it:U}{cmd:,} {it:p}{cmd:)}
返回 {it:A} 的 LU 分解（带部分主元）到 {it:L} 和 
{it:U}，以及一个排列向量 {it:p}。返回的结果满足
{it:A} = {it:L}{cmd:[}{it:p}{cmd:,.]}*{it:U}，忽略舍入误差。

{p 4 4 2}
{cmd:_lud(}{it:L}{cmd:,} {it:U}{cmd:,} {it:p}{cmd:)} 类似于
{cmd:lud()}，但它节省内存。待分解的矩阵传入 {it:L}，
而该存储地点将被计算出的 {it:L} 矩阵覆盖。

{p 4 4 2}
{cmd:_lud_la(}{it:A}, {it:q}{cmd:)} 是 
{bf:{help m1_lapack_zh:[M-1] LAPACK}} 例程， 
上述函数用于计算 
LU 分解。  
请参阅下面的 {it:{help mf_lud##remarks2:LAPACK 例程}}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 lud()备注与示例:备注与示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几个部分：

	{help mf_lud##remarks1:LU 分解}
	{help mf_lud##remarks2:LAPACK 例程}


{marker remarks1}{...}
{title:LU 分解}

{p 4 4 2}
矩阵 {it:A} 的 LU 分解可表示为

		{it:P}'{it:A} = {it:L}{it:U}

{p 4 4 2}
其中 {it:P}' 是一个
{help m6_glossary##permutation_matrix:排列矩阵}，用以排列 
{it:A} 的行。{it:L} 是下三角矩阵，{it:U} 是上三角矩阵。
分解也可以写成

		{it:A} = {it:P}{it:L}{it:U}

{p 4 4 2}
因为，鉴于 {it:P} 是排列矩阵，{it:P}^(-1) = {it:P}'。

{p 4 4 2}
返回的是与 {it:P} 对应的 {it:p}，而不是直接返回 {it:P}。
小写 {it:p} 是一个列向量，包含了所需顺序的行的下标。也就是说，

		{it:P}{it:L} = {it:L}{cmd:[}{it:p}{cmd:,.]}

{p 4 4 2}
这样做的好处在于 {it:p} 比 {it:P} 占用更少的内存，
而且如果需要重新组织可以更快地进行； 
请参阅 {bf:{help m1_permutation_zh:[M-1] 排列}}。
无论如何，定义 LU 分解的公式可以写为

		{it:A} = {it:L}{cmd:[}{it:p}{cmd:,.]}*{it:U}

{p 4 4 2}
还可以写成 

		{it:B} = {it:L}{it:U}，其中 {it:B}{cmd:[}{it:p}{cmd:,.]} = {it:A}


{marker remarks2}{...}
{title:LAPACK 例程}

{p 4 4 2}
{cmd:_lud_la(}{it:A}, {it:q}{cmd:)} 是接口到 
{bf:{help m1_lapack_zh:[M-1] LAPACK}} 例程，
上述函数用于计算 LU 分解。如果你愿意，可以直接使用它。

{p 4 4 2}
矩阵 {it:A} 被分解，
分解结果被存回 {it:A}。  
{it:U} 存储在 {it:A} 的上三角部分（包括对角线）。
{it:L} 存储在 {it:A} 的下三角部分，并且可以理解为
{it:L} 的对角线应为单位元。{it:q} 是一个列向量记录了因主元化而进行的行交换。这与 {it:p} 存储的信息相同，但格式不同。

{p 4 4 2}
{it:q} 记录要进行的行交换。例如，{it:q} = (1\2\2) 意味着（从最后开始）第三行要与
第二行交换，然后第二行保持不动，最后第一行保持不动。可以用以下逻辑将 {it:q} 转换为 {it:p}：

	{it:p}{cmd: = 1::rows(}{it:q}{cmd:)}
	{cmd:for (i=rows(}{it:q}{cmd:); i>=1; i--) {c -(}}
		{cmd:hold = }{it:p}{cmd:[i]}
		{it:p}{cmd:[i] = }{it:p}{cmd:[}{it:q}{cmd:[i]]}
		{it:p}{cmd:[}{it:q}{cmd:[i]] = hold}
	{cmd:{c )-}}


{marker conformability}{...}
{title:相容性}

{p 4 8 2}
{cmd:lud(}{it:A}{cmd:,} {it:L}{cmd:,} {it:U}{cmd:,}
{it:p}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:r x c}
	{it:输出:}
		{it:L}:  {it:r x m}, {it:m} = min({it:r}, {it:c})
		{it:U}:  {it:m x c}
		{it:p}:  {it:r x} 1


{p 4 8 2}
{cmd:_lud(}{it:L}{cmd:,} {it:U}{cmd:,}
{it:p}{cmd:)}:
{p_end}
	{it:输入:}
		{it:L}:  {it:r x c}
	{it:输出:}
		{it:L}:  {it:r x m}, {it:m} = min({it:r}, {it:c})
		{it:U}:  {it:m x c}
		{it:p}:  {it:r x} 1

{p 4 8 2}
{cmd:_lud_la(}{it:A}, {it:q}{cmd:)}
{p_end}
	{it:输入:}
		{it:A}:  {it:r x c}
	{it:输出:}
		{it:A}:  {it:r x c}
		{it:q}:  {it:r x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
    {cmd:lud(}{it:A}{cmd:,} {it:L}{cmd:,} {it:U}{cmd:,} {it:p}{cmd:)} 
    如果 {it:A} 包含缺失值，则返回缺失值结果；
    {it:L} 在对角线下会有缺失值，对角线上的值为1；
    对角线以上的值为0； 
    {it:U} 在对角线及以上存在缺失值，且在对角线下为0。
    因此，如果存在缺失值，{it:U}[1,1] 将包含缺失值。

{p 4 4 2}
    {cmd:_lud(}{it:L}{cmd:,} {it:U}{cmd:,} {it:p}{cmd:)} 如果 {it:A} 包含缺失值，将如上所述设置 {it:L} 和 
    {it:U}。
    
{p 4 4 2}
    {cmd:_lud_la(}{it:A}, {it:q}{cmd:)}
    如果 {it:A} 是视图，则中止并报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view lud.mata, adopath asis:lud.mata},
{view _lud.mata, adopath asis:_lud.mata};
{cmd:_lud_la()} 是内建函数。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_lud.sthlp>}