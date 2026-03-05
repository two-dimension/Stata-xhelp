{smcl}
{* *! version 1.0.10  15may2018}{...}
{vieweralsosee "[M-5] gschurd()" "mansection M-5 gschurd()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] LAPACK" "help m1_lapack_zh"}{...}
{vieweralsosee "[M-5] geigensystem()" "help mf_geigensystem_zh"}{...}
{vieweralsosee "[M-5] ghessenbergd()" "help mf_ghessenbergd_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{viewerjumpto "Syntax" "mf_gschurd_zh##syntax"}{...}
{viewerjumpto "Description" "mf_gschurd_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_gschurd_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_gschurd_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_gschurd_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_gschurd_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_gschurd_zh##source"}
{help mf_gschurd:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] gschurd()} {hline 2}}广义 Schur 分解
{p_end}
{p2col:}({mansection M-5 gschurd():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:void}{bind:        }
{cmd:gschurd(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:T}{cmd:,} 
{it:R}{cmd:,} 
{it:U}{cmd:,} 
{it:V}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)}

{p 8 8 2}
{it:void}{bind:       }
{cmd:_gschurd(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:U}{cmd:,} 
{it:V}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)}

{p 8 8 2}
{it:void}{bind: }
{cmd:gschurdgroupby(}{it:A}{cmd:,} 
{it:B}{cmd:,}
{it:f}{cmd:,}
{it:T}{cmd:,} 
{it:R}{cmd:,} 
{it:U}{cmd:,} 
{it:V}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:,}
{it:m}{cmd:)}

{p 8 8 2}
{it:void}
{cmd:_gschurdgroupby(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:f}{cmd:,}
{it:U}{cmd:,} 
{it:V}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:,}
{it:m}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:gschurd(}{it:A}{cmd:,} {it:B}{cmd:,} {it:T}{cmd:,} 
{it:R}{cmd:,} {it:U}{cmd:,} {it:V}{cmd:,} {it:w}{cmd:,} {it:b}{cmd:)} 
计算两个平方的数值矩阵，{it:A} 和 {it:B}，的广义 Schur 分解， 
及其{help m6_glossary##geigenvalues:广义特征值}。
分解结果返回在 
{help m6_glossary##schurform:Schur 形} 矩阵 {it:T}；上三角矩阵 {it:R}；和正交（单位）矩阵 {it:U}
和 {it:V}。广义特征值以复数向量 {it:w} 和 {it:b} 返回。

{p 4 4 2}
{cmd: gschurdgroupby(}{it:A}{cmd:,} {it:B}{cmd:,} {it:f}{cmd:,} 
{it:T}{cmd:,} {it:R}{cmd:,} {it:U}{cmd:,} {it:V}{cmd:,} 
{it:w}{cmd:,} {it:b}{cmd:,} {it:m}{cmd:)} 
计算两个平方的数值矩阵，{it:A} 和 {it:B}，的广义 Schur 分解，
并根据每个广义特征值是否满足条件来分组结果。  
{it:f} 是一个指向函数的指针，该函数实现每个
广义特征值上的条件，如{help mf_gschurd##grouping:下面所述}。
满足条件的广义特征值数量以 {it:m} 返回。

{p 4 4 2}
{cmd:_gschurd()} 模仿 {cmd:gschurd()}，区别在于它
在 {it:A} 中返回 {it:T}，并在 {it:B} 中返回 {it:R}。

{p 4 4 2}
{cmd:_gschurdgroupby()} 模仿 {cmd:gschurdgroupby()}，区别在于 
它在 {it:A} 中返回 {it:T}，并在 {it:B} 中返回 {it:R}。

{p 4 4 2}
{cmd:_gschurd_la()} 和 {cmd: _gschurdgroupby_la()}
是用于实现上述函数的 LAPACK 例程的接口；参见 {bf:{help m1_lapack_zh:[M-1] LAPACK}}。直接使用不推荐。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 gschurd()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注在以下标题下出现：

	{help mf_gschurd##schurd:广义 Schur 分解}
	{help mf_gschurd##grouping:结果分组}


{marker schurd}{...}
{title:广义 Schur 分解}

{p 4 4 2}
一对平方数值矩阵的广义 Schur 分解，  
{bf:A} 和 {bf:B}，可以写成

		{bf:U}' * {bf:A} * {bf:V} = {bf:T} 
		{bf:U}' * {bf:B} * {bf:V} = {bf:R}
		
{p 4 4 2}
其中 {bf:T} 是 Schur 形， {bf:R} 是
上三角的，如果 {bf:A} 和 {bf:B}
是实数，则 {bf:U} 和 {bf:V} 是正交的，如果 {bf:A} 或 {bf:B} 是复数，则是单位的。 复数向量 
{bf:w} 和 {bf:b} 包含广义特征值。

{p 4 4 2}
如果 {bf:A} 和 {bf:B} 是实数，{bf:T} 是实数 Schur 形，{bf:R} 是
实上三角矩阵。如果 {bf:A} 或 {bf:B} 是复数，则 {bf:T} 是
复数 Schur 形，而 {bf:R} 是一个复数上三角矩阵。

{p 4 4 2}
在下面的示例中，我们定义 {cmd:A} 和 {cmd:B}，获得 
广义 Schur 分解，并列出 {cmd:T} 和 {cmd:R}。 

	{cmd:: A = (6, 2, 8, -1\-3, -4, -6, 4\0, 8, 4, 1\-8, -7, -3, 5)}

	{cmd:: B = (8, 0, -8, -1\-6, -2, -6, -1\-7, -6, 2, -6\1, -7, 9, 2)}

	{cmd:: gschurd(A, B, T=., R=., U=., V=., w=., b=.)}
	
	{cmd:: T}
	       {txt}         1              2              3              4
	    {c TLC}{hline 60}{c TRC}
	  1 {c |}  12.99313938    1.746927947    3.931212285   -10.91622337  {c |}
	  2 {c |}            0     .014016016    6.153566902    1.908835695  {c |}
	  3 {c |}            0   -4.362999645    1.849905717   -2.998194791  {c |}
	  4 {c |}            0              0              0   -5.527285433  {c |}
	    {c BLC}{hline 60}{c BRC}

	{cmd:: R}
	       {txt}         1              2              3              4
	    {c TLC}{hline 60}{c TRC}
	  1 {c |}  4.406836593    6.869534063   -1.840892081    1.740906311  {c |}
	  2 {c |}            0    13.88730687              0   -.6995556735  {c |}
	  3 {c |}            0              0    9.409495218   -4.659386723  {c |}
	  4 {c |}            0              0              0    9.453808732  {c |}
	    {c BLC}{hline 60}{c BRC}

	{cmd:: w}
               {txt}                       1                          2
            {c TLC}{hline 55}
          1 {c |}                12.9931394   .409611804 + 1.83488354i
            {c BLC}{hline 55}
                                      3                          4
             {hline 55}{c TRC}
          1    .024799819 - .111092453i                -5.52728543  {c |}
             {hline 55}{c BRC}

	{cmd:: b}
	       {txt}         1             2             3             4
	    {c TLC}{hline 57}{c TRC}
	  1 {c |}  4.406836593   4.145676341   .2509986829   9.453808732  {c |}
	    {c BLC}{hline 57}{c BRC}

{p 4 4 2}
可以通过输入以下命令获得广义特征值：

        {com}: w:/b
               {txt}                       1                          2
            {c TLC}{hline 55}
          1 {c |}                2.94840508   .098804579 + .442601735i
            {c BLC}{hline 55}
                                      3                          4
             {hline 55}{c TRC}
          1    .098804579 - .442601735i                -.584662287  {c |}
             {hline 55}{c BRC}


{marker grouping}{...}
{title:结果分组}

{p 4 4 2}
{cmd:gschurdgroupby()} 重新排序广义 Schur 分解 
使选定的广义特征值出现在 
{cmd:w} 和 {cmd:b} 的前导块。它还相应地重新排序 
广义 Schur 形 {cmd:T}，{cmd:R} 和正交（单位） 
矩阵 {cmd:U} 和 {cmd:V}。

{p 4 4 2}
我们必须将 {cmd:gschurdgroupby()} 传递一个{help m2_ftof_zh:指针} 
指向实现我们标准的函数。该函数必须接受两个
参数，一个复数标量和一个实数标量，以便接收一个
广义特征值，并且它必须返回实值 0 以表示拒绝，非零实值以表示选择。

{p 4 4 2}
在以下示例中，我们使用 {cmd:gschurdgroupby()} 将有限的，
实数的广义特征值排在前面。传递给 
{cmd:gschurdgroupby()} 的一个参数是指向函数 {cmd:onlyreal()} 的指针，该函数
接受两个参数，一个复数标量和一个定义广义特征值的实数标量。 
{cmd:onlyreal()} 返回 1 如果广义特征值是有限的和实数；否则返回零。

	{cmd:: real scalar onlyreal(complex scalar w, real scalar b)}
	{cmd:> {c -(}}
	{cmd:>         if(b==0) return(0)}
	{cmd:>         if(Im(w/b)==0) return(1)}
	{cmd:>         return(0)}
	{cmd:> {c )-}}

	{cmd:: gschurdgroupby(A, B, &onlyreal(), T=., R=., U=., V=., w=., b=., m=.)}
	
{p 4 4 2}
我们获得结果

	{cmd:: T}
	       {txt}          1              2              3              4
	    {c TLC}{hline 61}{c TRC}
	  1 {c |}   12.99313938     8.19798168    6.285710813    5.563547054  {c |}
	  2 {c |}             0   -5.952366071   -1.473533834    2.750066482  {c |}
	  3 {c |}             0              0   -.2015830885    3.882051743  {c |}
	  4 {c |}             0              0    6.337230739    1.752690714  {c |}
	    {c BLC}{hline 61}{c BRC}

	{cmd:: R}
	       {txt}          1              2              3              4
	    {c TLC}{hline 61}{c TRC}
	  1 {c |}   4.406836593    2.267479575   -6.745927817    1.720793701  {c |}
	  2 {c |}             0    10.18086202   -2.253089622     5.74882307  {c |}
	  3 {c |}             0              0    -12.5704981              0  {c |}
	  4 {c |}             0              0              0    9.652818299  {c |}
	    {c BLC}{hline 61}{c BRC}

        {cmd:: w}
                                      1                          2
            {c TLC}{hline 55}
          1 {c |}                12.9931394   .409611804 + 1.83488354i
            {c BLC}{hline 55}
                                      3                          4
             {hline 55}{c TRC}
          1    .024799819 - .111092453i                -5.52728543  {c |}
             {hline 55}{c BRC}

	{cmd:: b}
	       {txt}         1             2             3             4
	    {c TLC}{hline 57}{c TRC}
	  1 {c |}  4.406836593   10.18086202   3.694083258   3.694083258  {c |}
	    {c BLC}{hline 57}{c BRC}

	{cmd:: w:/b}
                                     1                          2
            {c TLC}{hline 55}
          1 {c |}               2.94840508   .098804579 + .442601735i
            {c BLC}{hline 55}
                                     3                          4
            {hline 55}{c TRC}
          1   .098804579 - .442601735i                -.584662287  {c |}
            {hline 55}{c BRC}


{p 4 4 2}
{cmd:m} 包含真实的广义特征值数量

	{cmd:: m}
 	  2


{marker conformability}{...}
{title:兼容性}

{p 4 8 2}
{cmd:gschurd(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:T}{cmd:,} 
{it:R}{cmd:,} 
{it:U}{cmd:,} 
{it:V}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x n}
	{it:输出:}
		{it:T}:  {it:n x n}
		{it:R}:  {it:n x n}
		{it:U}:  {it:n x n}
		{it:V}:  {it:n x n}
		{it:w}:  1 {it:x n}
                {it:b}:  1 {it:x n}

{p 4 8 2}
{cmd:_gschurd(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:U}{cmd:,} 
{it:V}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x n}
	{it:输出:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x n}
		{it:U}:  {it:n x n}
		{it:V}:  {it:n x n}
		{it:w}:  1 {it:x n}
                {it:b}:  1 {it:x n}

{p 4 8 2}
{cmd:gschurdgroupby(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:f}{cmd:,} 
{it:T}{cmd:,} 
{it:R}{cmd:,} 
{it:U}{cmd:,} 
{it:V}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:,} 
{it:m}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x n}
                {it:f}:  1 {it:x} 1 
	{it:输出:}
		{it:T}:  {it:n x n}
		{it:R}:  {it:n x n}
		{it:U}:  {it:n x n}
		{it:V}:  {it:n x n}
		{it:w}:  1 {it:x n}
                {it:b}:  1 {it:x n}
		{it:m}:  1 {it:x} 1

{p 4 8 2}
{cmd:_gschurdgroupby(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:f}{cmd:,} 
{it:U}{cmd:,} 
{it:V}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:,} 
{it:m}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x n}
	        {it:f}:  1 {it:x} 1 
	{it:输出:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x n}
		{it:U}:  {it:n x n}
		{it:V}:  {it:n x n}
		{it:w}:  1 {it:x n}
                {it:b}:  1 {it:x n}
		{it:m}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 8 2}
{cmd:_gschurd()} 和 {cmd:_gschurdgroupby()} 如果 
{it:A} 或 {it:B} 是视图，便会报错终止。

{p 4 8 2}
{cmd:gschurd()}, {cmd:_gschurd()}, {cmd:gschurdgroupby()}, 
和 {cmd:_gschurdgroupby()} 如果 {it:A} 或 {it:B} 包含缺失值
则返回缺失结果。

	
{marker source}{...}
{title:源代码}

{p 4 4 2}
{view gschurd.mata, adopath asis:gschurd.mata},
{view _gschurd.mata, adopath asis:_gschurd.mata},
{view gschurdgroupby.mata, adopath asis:gschurdgroupby.mata},
{view _gschurdgroupby.mata, adopath asis:_gschurdgroupby.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_gschurd.sthlp>}