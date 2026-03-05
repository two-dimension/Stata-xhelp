{smcl}
{* *! version 1.0.8  15may2018}{...}
{vieweralsosee "[M-5] ghessenbergd()" "mansection M-5 ghessenbergd()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] LAPACK" "help m1_lapack_zh"}{...}
{vieweralsosee "[M-5] gschurd()" "help mf_gschurd_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{viewerjumpto "Syntax" "mf_ghessenbergd_zh##syntax"}{...}
{viewerjumpto "Description" "mf_ghessenbergd_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_ghessenbergd_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_ghessenbergd_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_ghessenbergd_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_ghessenbergd_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_ghessenbergd_zh##source"}
{help mf_ghessenbergd:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[M-5] ghessenbergd()} {hline 2}}广义 Hessenberg 分解
{p_end}
{p2col:}({mansection M-5 ghessenbergd():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 40 2}
{it:void}{bind:  }
{cmd:ghessenbergd(}{it:数值矩阵 A}{cmd:,} 
{it:B}{cmd:,} 
{it:H}{cmd:,} 
{it:R}{cmd:,} 
{it:U}{cmd:,} 
{it:V}{cmd:)}

{p 8 40 2}
{it:void}{bind: }
{cmd:_ghessenbergd(}{it:数值矩阵 A}{cmd:,} 
{it:B}{cmd:,} {bind:     }
{it:U}{cmd:,} 
{it:V}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:ghessenbergd(}{it:A}{cmd:,} {it:B}{cmd:,} {it:H}{cmd:,} {it:R}{cmd:,}
{it:U}{cmd:,} {it:V}{cmd:)} 计算两个通用的实数或复数平方矩阵 {it:A} 和 {it:B} 的广义 Hessenberg 分解，返回 
{help m6_glossary##hessform:上 Hessenberg 形式} 矩阵 {it:H}，上三角矩阵 {it:R}，以及正交（单位）矩阵 {it:U} 和 {it:V}。

{p 4 4 2}
{cmd:_ghessenbergd(}{it:A}{cmd:,} {it:B}{cmd:,} {it:U}{cmd:,} {it:V}{cmd:)} 镜像 {cmd:ghessenbergd()}，区别在于它将 {it:H} 返回到 {it:A} 中，将 {it:R} 返回到 {it:B} 中。

{p 4 4 2}	
{cmd:_ghessenbergd_la()} 是用于实现上述功能的 LAPACK 例程的接口；见 {bf:{help m1_lapack_zh:[M-1] LAPACK}}。不推荐直接使用它。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 ghessenbergd()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
两个平方数值矩阵 ({it:A} 和 {it:B}) 的广义 Hessenberg 分解可以表示为

		{cmd:U}' * {cmd:A} * {cmd:V} = {cmd:H}
		{cmd:U}' * {cmd:B} * {cmd:V} = {cmd:R}
		
{p 4 4 2}
其中 {cmd:H} 为上 Hessenberg 形式， 
{cmd:R} 为上三角形式，且 {cmd:U} 和 {cmd:V} 是正交矩阵，如果 {cmd:A} 和 {cmd:B} 是实数，则为正交矩阵，否则为单位矩阵。

{p 4 4 2}
在下面的示例中，我们定义 {cmd:A} 和 {cmd:B}，获得广义 Hessenberg 分解，并列出 {cmd:H} 和 {cmd:Q}。 

	{cmd:: A = (6, 2, 8, -1\-3, -4, -6, 4\0, 8, 4, 1\-8, -7, -3, 5)}

	{cmd:: B = (8, 0, -8, -1\-6, -2, -6, -1\-7, -6, 2, -6\1, -7, 9, 2)}

	{cmd:: ghessenbergd(A, B, H=., R=., U=., V=.)}

	{cmd:: H}
	       {txt}          1              2              3              4
	    {c TLC}{hline 61}{c TRC}
	  1 {c |}  -4.735680169    1.363736029    5.097381347    3.889763589  {c |}
	  2 {c |}   9.304479208   -8.594240253   -7.993282943    4.803411217  {c |}
	  3 {c |}             0    4.553169015    3.236266637   -2.147709419  {c |}
	  4 {c |}             0              0    6.997043028   -3.524816722  {c |}
	    {c BLC}{hline 61}{c BRC}

	{cmd:: R}
	       {txt}          1              2              3              4
	    {c TLC}{hline 61}{c TRC}
	  1 {c |}  -12.24744871   -1.089095534   -1.848528639   -5.398470103  {c |}
	  2 {c |}             0   -5.872766311    8.891361089     3.86967647  {c |}
	  3 {c |}             0              0    9.056748937    1.366322731  {c |}
	  4 {c |}             0              0              0    8.357135399  {c |}
	    {c BLC}{hline 61}{c BRC}


{marker conformability}{...}
{title:兼容性}

{p 4 8 2}
{cmd:ghessenbergd(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:H}{cmd:,} 
{it:R}{cmd:,} 
{it:U}{cmd:,} 
{it:V}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x n}
	{it:输出:}
		{it:H}:  {it:n x n}
		{it:R}:  {it:n x n}
		{it:U}:  {it:n x n}
		{it:V}:  {it:n x n}

{p 4 8 2}
{cmd:_ghessenbergd(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:U}{cmd:,} 
{it:V}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x n}
	{it:输出:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x n}
		{it:U}:  {it:n x n}
		{it:V}:  {it:n x n}


{marker diagnostics}{...}
{title:诊断}

{p 4 8 2}
{cmd:_ghessenbergd()} 在 {it:A} 或 {it:B} 为视图时会中止并报错。

{p 4 8 2}
{cmd:ghessenbergd()} 和 {cmd:_ghessenbergd()} 如果 {it:A} 或 {it:B} 包含缺失值，则返回缺失结果。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view ghessenbergd.mata, adopath asis:ghessenbergd.mata},
{view _ghessenbergd.mata, adopath asis:_ghessenbergd.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ghessenbergd.sthlp>}