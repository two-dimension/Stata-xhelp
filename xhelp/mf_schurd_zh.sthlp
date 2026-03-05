{smcl}
{* *! version 1.0.8  15may2018}{...}
{vieweralsosee "[M-5] schurd()" "mansection M-5 schurd()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] LAPACK" "help m1_lapack_zh"}{...}
{vieweralsosee "[M-5] hessenbergd()" "help mf_hessenbergd_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{viewerjumpto "Syntax" "mf_schurd_zh##syntax"}{...}
{viewerjumpto "Description" "mf_schurd_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_schurd_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_schurd_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_schurd_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_schurd_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_schurd_zh##source"}
{help mf_schurd:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] schurd()} {hline 2}}Schur 分解
{p_end}
{p2col:}({mansection M-5 schurd():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:void}{bind:         }
{cmd:schurd(}{it:X}{cmd:,} 
{it:T}{cmd:,} 
{it:Q}{cmd:)}

{p 8 8 2}
{it:void}{bind:        }
{cmd:_schurd(}{it:X}{cmd:,} {bind:  }
{it:Q}{cmd:)} 

{p 8 8 2}
{it:void}{bind:  }
{cmd: schurdgroupby(}{it:X}{cmd:,} 
{it:f}{cmd:,} 
{it:T}{cmd:,} 
{it:Q}{cmd:,} 
{it:w}{cmd:,} 
{it:m}{cmd:)} 

{p 8 8 2}
{it:void}{bind: }
{cmd:_schurdgroupby(}{it:X}{cmd:,} 
{it:f}{cmd:,} {bind:  }
{it:Q}{cmd:,} 
{it:w}{cmd:,} 
{it:m}{cmd:)} 

{p 4 4 2}
其中输入为

            {it:X}:  {it:数值矩阵}
	    {it:f}:  {it:指针标量}（指向用于分组特征值的函数）

{p 4 4 2}
输出为

{p2colset 9 33 35 2}{...}
{p2col 13 33 35 2: {it:T}:  {it:数值矩阵}}(Schur 形式矩阵){p_end}
{p2col 13 33 35 2: {it:Q}:  {it:数值矩阵}}(正交或单位){p_end}
{p2col 13 33 35 2: {it:w}:  {it:数值向量} 的特征值{p_end}
{p2col 13 33 35 2: {it:m}:  {it:实标量}}(满足分组条件的特征值数量){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}
	
{p 4 4 2}
{cmd:schurd(}{it:X}{cmd:,} {it:T}{cmd:,} {it:Q}{cmd:)} 
计算方形数值矩阵 {it:X} 的 Schur 分解，返回 {help mf_schurd##schurd:Schur 形式} 矩阵 {it:T} 和 Schur 向量矩阵 {it:Q}。如果 {it:X} 为实数，则 {it:Q} 是正交的；如果 {it:X} 为复数，则 {it:Q} 是单位的。

{p 4 4 2}
{cmd:_schurd(}{it:X}{cmd:,} {it:Q}{cmd:)} 的功能与 {cmd:schurd()} 相同，只是将 {it:T} 返回到 {it:X} 中。

{p 4 4 2}
{cmd: schurdgroupby(}{it:X}{cmd:,} {it:f}{cmd:,} {it:T}{cmd:,} {it:Q}{cmd:,} 
{it:w}{cmd:,} {it:m}{cmd:)}
计算方形数值矩阵 {it:X} 的 Schur 分解及其特征值，并根据每个特征值是否满足条件对结果进行分组。 {cmd: schurdgroupby()} 将 Schur 形式矩阵返回在 {it:T} 中，Schur 向量矩阵返回在 {it:Q} 中，特征值返回在 {it:w} 中，满足条件的特征值数量在 {it:m} 中。 {it:f} 是实现每个特征值条件的函数指针，如下文所述 {help mf_schurd##group:}。

{p 4 4 2}
{cmd: _schurdgroupby(}{it:X}{cmd:,} {it:f}{cmd:,} {it:Q}{cmd:,}
{it:w}{cmd:,} {it:m}{cmd:)} 的功能与 {cmd:schurdgroupby()} 相同，只是将 {it:T} 返回到 {it:X} 中。

{p 4 4 2} 
{cmd:_schurd_la()} 和 {cmd:_schurdgroupby_la()} 是用于实现上述函数的 LAPACK 例程的接口；
见 {bf:{help m1_lapack_zh:[M-1] LAPACK}}。不推荐直接使用它们。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-5 schurd()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注根据以下标题进行呈现：

	{help mf_schurd##schurd:Schur 分解}
	{help mf_schurd##group:分组结果}


{marker schurd}{...}
{title:Schur 分解}

{p 4 4 2}
许多算法从获取方形矩阵的 Schur 分解开始。

{p 4 8 2}
矩阵 {cmd:X} 的 Schur 分解可以写作 

		{cmd:Q}' * {cmd:X} * {cmd:Q} = {cmd:T}
	
{p 4 4 2}
其中 {cmd:T} 为 Schur 形式，当 {cmd:X} 为实数时，{cmd:Q} 为正交；当 {cmd:X} 为复数时，{cmd:Q} 为单位。

{p 4 4 2}
一个实数方阵如果是上块三角形矩阵，并且对角线块是 1 {it:x} 1 和 2 {it:x} 2的，那么它就是 Schur 形式。每个 2 {it:x} 2 的对角块都有相等的对角元素和相反符号的非对角元素。一个复杂的方矩阵如果是上三角形矩阵，那么它就是 Schur 形式。 {cmd:X} 的特征值可以通过快速计算从 Schur 形式中获得。

{p 4 4 2}
在下面的示例中，我们定义 {cmd:X}，获得 Schur 分解，并列出 {cmd:T}。 

	{cmd:: X=(.31,.69,.13,.56\.31,.5,.72,.42 \.68,.37,.71,.8 \.09,.16,.83,.9)}
	
	{cmd:: schurd(X, T=., Q=.)}
	
	{cmd:: T}
	       {txt}          1              2              3              4
	    {c TLC}{hline 61}{c TRC}
	  1 {c |}    2.10742167    .1266712792    .0549744934    .3329112999  {c |}
	  2 {c |}             0   -.0766307549    .3470959084    .1042286546  {c |}
	  3 {c |}             0   -.4453774705   -.0766307549    .3000409803  {c |}
	  4 {c |}             0              0              0    .4658398402  {c |}
	    {c BLC}{hline 61}{c BRC}


{marker group}{...}
{title:分组结果}

{p 4 4 2}
在许多应用中，如果特征值的模小于 1 则有稳定解；如果模大于或等于 1 则有爆炸解。一个常见的处理方法是将 Schur 分解的结果分组为对应于稳定解的块和对应于爆炸解的块。

{p 4 4 2}
在下面的示例中，我们使用 {cmd:schurdgroupby()} 将稳定解放在前面。 {cmd:schurdgroupby()} 的一个参数是接受复标量参数（特征值）并返回 1 以选择特征值的函数指针。这里 {cmd:isstable()} 如果特征值小于 1 则返回 1：

        {cmd:: real scalar isstable(scalar p)} 
	{cmd:> {c -(}}
	{cmd:>         return((abs(p)<1))}
	{cmd:> {c )-}}
	
{p 4 4 2}
使用此函数对结果进行分组后，我们看到 Schur 形式矩阵已被重新排序。

	{cmd:: schurdgroupby(X, &isstable(), T=., Q=., w=., m=.)}

	{cmd:: T}
	       {txt}          1              2              3              4
	    {c TLC}{hline 61}{c TRC}
	  1 {c |}  -.0766307549     .445046622    .3029641608   -.0341867415  {c |}
	  2 {c |}  -.3473539401   -.0766307549   -.1036266286    .0799058566  {c |}
	  3 {c |}             0              0    .4658398402   -.3475944606  {c |}
	  4 {c |}             0              0              0     2.10742167  {c |}
    	    {c BLC}{hline 61}{c BRC}
    
{p 4 4 2}
列出特征值的模揭示它们已被分组为稳定组和爆炸组。

	{cmd:: abs(w)}
	       {txt}         1             2             3             4
	    {c TLC}{hline 57}{c TRC}
	  1 {c |}  .4005757984   .4005757984   .4658398402    2.10742167  {c |}
    	    {c BLC}{hline 57}{c BRC}

{p 4 4 2}
{cmd:m} 包含稳定解的数量

	{cmd:: m}
 	  3


{marker conformability}{...}
{title:相容性}

{p 4 8 2}
{cmd:schurd(}{it:X}{cmd:,} {it:T}{cmd:,} {it:Q} {cmd:)}:
{p_end}
	{it:输入:}
		{it:X}:  {it:n x n}
	{it:输出:}
		{it:T}:  {it:n x n}
		{it:Q}:  {it:n x n}
	
{p 4 8 2}
{cmd:_schurd(}{it:X}{cmd:,} {it:Q}{cmd:)}:
{p_end}
	{it:输入:}
		{it:X}:  {it:n x n}
	{it:输出:}
		{it:X}:  {it:n x n}
		{it:Q}:  {it:n x n}
			
{p 4 8 2}
{cmd: schurdgroupby(}{it:X}{cmd:,} 
{it:f}{cmd:,} 
{it:T}{cmd:,} 
{it:Q}{cmd:,} 
{it:w}{cmd:,} 
{it:m}{cmd:)}:
{p_end}
	{it:输入:}
		{it:X}:  {it:n x n}
		{it:f}:  1 {it:x} 1
	{it:输出:}
		{it:T}:  {it:n x n}
		{it:Q}:  {it:n x n}
		{it:w}:  1 {it:x n}
		{it:m}:  1 {it:x} 1

{p 4 8 2}
{cmd: _schurdgroupby(}{it:X}{cmd:,} 
{it:f}{cmd:,} 
{it:Q}{cmd:,} 
{it:w}{cmd:,} 
{it:m}{cmd:)}:
{p_end}
	{it:输入:}
		{it:X}:  {it:n x n}
	        {it:f}:  1 {it:x} 1
	{it:输出:}
		{it:X}:  {it:n x n}
		{it:Q}:  {it:n x n}
		{it:w}:  1 {it:x n}
		{it:m}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 8 2}
{cmd:_schurd()} 和 
{cmd:_schurdgroupby()} 如果 {it:X} 是视图，则会中止并出现错误。

{p 4 8 2}
{cmd:schurd()}、{cmd:_schurd()}、{cmd:schurdgroupby()} 和 
{cmd: _schurdgroupby()} 如果 {it:X} 包含缺失值，将返回缺失结果。

{p 4 8 2}
{cmd: schurdgroupby()} 通过矩阵变换对结果进行分组。如果问题极不适定，应用该矩阵变换可能会导致特征值的变化。在极端情况下，分组后的特征值可能不再满足进行分组所用的条件。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view schurd.mata, adopath asis:schurd.mata},
{view _schurd.mata, adopath asis:_schurd.mata},
{view schurdgroupby.mata, adopath asis:schurdgroupby.mata},
{view _schurdgroupby.mata, adopath asis:_schurdgroupby.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_schurd.sthlp>}