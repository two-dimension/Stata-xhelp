{smcl}
{* *! version 1.0.9  15may2018}{...}
{vieweralsosee "[M-5] hessenbergd()" "mansection M-5 hessenbergd()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] LAPACK" "help m1_lapack_zh"}{...}
{vieweralsosee "[M-5] schurd()" "help mf_schurd_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{viewerjumpto "语法" "mf_hessenbergd_zh##syntax"}{...}
{viewerjumpto "描述" "mf_hessenbergd_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_hessenbergd_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_hessenbergd_zh##remarks"}{...}
{viewerjumpto "兼容性" "mf_hessenbergd_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_hessenbergd_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_hessenbergd_zh##source"}
{help mf_hessenbergd:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[M-5] hessenbergd()} {hline 2}}Hessenberg分解
{p_end}
{p2col:}({mansection M-5 hessenbergd(): 查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 40 2}
{it:void}{bind:    }
{cmd:hessenbergd(}{it:数值矩阵 A}{cmd:,} 
{it:H}{cmd:,} 
{it:Q}{cmd:)}

{p 8 40 2}
{it:void}{bind:   }
{cmd:_hessenbergd(}{it:数值矩阵 A}{cmd:,} {bind:  }
{it:Q}{cmd:)}


{marker description}{...}
{title:描述}
	
{p 4 4 2}
{cmd:hessenbergd(}{it:A}{cmd:,} {it:H}{cmd:,} 
{it:Q}{cmd:)} 计算一个方形数值矩阵 {it:A} 的Hessenberg分解，将
{help m6_glossary##hessform:上Hessenberg型}
矩阵返回到 {it:H}，并将正交（单位）矩阵返回到 {it:Q}。
如果 {it:A} 为实数，则 {it:Q} 是正交的；如果 {it:A} 为复数，则 {it:Q} 是单位的。

{p 4 4 2}
{cmd:_hessenbergd(}{it:A}{cmd:,} {it:Q}{cmd:)} 
的功能与 {cmd:hessenbergd()} 相同，但返回 {it:H} 
在 {it:A} 中。

{p 4 4 2}
{cmd:_hessenbergd_la()}
是调用用于实现上述功能的LAPACK例程的接口；
请参见 {bf:{help m1_lapack_zh:[M-1] LAPACK}}。直接使用不推荐。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 hessenbergd()备注和示例:备注和示例}

{pstd}
上述章节不包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
矩阵 {cmd:A} 的Hessenberg分解可以写作

	{cmd:Q}' * {cmd:A} * {cmd:Q} = {cmd:H}
	
{p 4 4 2}
其中 {cmd:H} 为上Hessenberg型；如果 {cmd:A} 为
实数，则 {cmd:Q} 为正交；如果 {cmd:A} 为复数，则 {cmd:Q} 为单位矩阵。

{p 4 4 2}
矩阵 {cmd:H} 如果其首下对角线以下的所有条目为零，则为上Hessenberg型。 例如，一个5 x 5的上Hessenberg矩阵如下：

	      {txt} 1   2   3   4   5
	    {c TLC}{hline 21}{c TRC}
	  1 {c |}  x   x   x   x   x  {c |}
	  2 {c |}  x   x   x   x   x  {c |}
	  3 {c |}  0   x   x   x   x  {c |}
	  4 {c |}  0   0   x   x   x  {c |}
	  5 {c |}  0   0   0   x   x  {c |}
	    {c BLC}{hline 21}{c BRC}

{p 4 4 2}
例如， 

	{cmd:: A}
	       {txt} 1    2    3    4    5
	    {c TLC}{hline 26}{c TRC}
	  1 {c |}   3    2    1   -2   -5  {c |}
	  2 {c |}   4    2    1    0    3  {c |}
	  3 {c |}   4    4    0    1   -1  {c |}
	  4 {c |}   5    6    7   -2    4  {c |}
	  5 {c |}   6    7    1    2   -1  {c |}
	    {c BLC}{hline 26}{c BRC}

	{cmd:: hessenbergd(A, H=., Q=.)}
	
	{cmd:: H}
	       {txt}           1              2              3              4
	    {c TLC}{hline 60}
	  1 {c |}             3    2.903464745    -.552977683    -4.78764119 
	  2 {c |}  -9.643650761    7.806451613    2.878001755      5.1085876 
	  3 {c |}             0   -3.454023879   -6.119229633   -.2347200215
	  4 {c |}             0              0    1.404136249   -1.715823624
	  5 {c |}             0              0              0   -2.668128952
	    {c BLC}{hline 60}

	                  5
	     {hline 16}{c TRC}
	  1    -1.530555451  {c |}
	  2     5.580422694  {c |}
	  3     1.467932097  {c |}
	  4    -.9870601994  {c |}
	  5     -.971398356  {c |}
	     {hline 16}{c BRC}

	{cmd:: Q}
	       {txt}           1              2              3              4
	    {c TLC}{hline 60}
	  1 {c |}             1              0              0              0 
	  2 {c |}             0   -.4147806779   -.0368006164   -.4047768558
	  3 {c |}             0   -.4147806779   -.4871239484   -.5692309155
	  4 {c |}             0   -.5184758474    .8096135604   -.0748449196
	  5 {c |}             0   -.6221710168   -.3253949238    .7117092805
	    {c BLC}{hline 60}

	                  5
	     {hline 16}{c TRC}
	  1               0  {c |}
	  2    -.8140997488  {c |}
	  3     .5163752637  {c |} 
	  4     .2647771074  {c |}
	  5    -.0221645995  {c |}
	     {hline 16}{c BRC}

{p 4 4 2}
许多算法使用Hessenberg分解来寻找具有更高结构的其他分解。


{marker conformability}{...}
{title:兼容性}

{p 4 8 2}
{cmd:hessenbergd(}{it:A}{cmd:,} 
{it:H}{cmd:,} 
{it:Q}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
	{it:输出:}
		{it:H}:  {it:n x n}
		{it:Q}:  {it:n x n}
		

{p 4 8 2}
{cmd:_hessenbergd(}{it:A}{cmd:,} 
{it:Q}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
	{it:输出:}
		{it:A}:  {it:n x n}
		{it:Q}:  {it:n x n}

				
{marker diagnostics}{...}
{title:诊断}

{p 4 8 2}
如果 {it:A} 是视图，{cmd:_hessenbergd()} 会中止并报错。

{p 4 8 2}
如果 {it:A} 包含缺失值，{cmd:hessenbergd()} 和 {cmd:_hessenbergd()} 会返回缺失结果。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view hessenbergd.mata, adopath asis:hessenbergd.mata},
{view _hessenbergd.mata, adopath asis:_hessenbergd.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_hessenbergd.sthlp>}