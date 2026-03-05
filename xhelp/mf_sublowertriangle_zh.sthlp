{smcl}
{* *! version 1.0.13  15may2018}{...}
{vieweralsosee "[M-5] sublowertriangle()" "mansection M-5 sublowertriangle()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{viewerjumpto "语法" "mf_sublowertriangle_zh##syntax"}{...}
{viewerjumpto "描述" "mf_sublowertriangle_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_sublowertriangle_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_sublowertriangle_zh##remarks"}{...}
{viewerjumpto "符合性" "mf_sublowertriangle_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_sublowertriangle_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_sublowertriangle_zh##source"}
{help mf_sublowertriangle:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[M-5] sublowertriangle()} {hline 2}}返回一个对角线以上为零的矩阵{p_end}
{p2col:}({mansection M-5 sublowertriangle():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 25 2}
{it:数值矩阵}
{cmd:sublowertriangle(}{it:数值矩阵 A}{break}
           [{cmd:,} {it:数值标量 p}]{cmd:)}

{p 8 25 2}
{it:void}{bind:         }
{cmd:_sublowertriangle(}{it:数值矩阵 A}{break}
          [{cmd:,} {it:数值标量 p}]{cmd:)}

{p 4 4 2}
其中参数 {it:p} 是可选的。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:sublowertriangle(}{it:A}{cmd:,} {it:p}{cmd:)} 返回 {it:A}，其中对角线以上的元素被设为零。在返回的矩阵中，{it:A[i,j]=0} 当且仅当 {it:i}-{it:j}<{it:p}。如果未指定，{it:p} 将被设置为零。

{p 4 4 2}
{cmd:_sublowertriangle()} 反映了 {cmd:sublowertriangle()} 但修改 {it:A}。{cmd:_sublowertriangle(}{it:A}{cmd:,} {it:p}{cmd:)} 将 {it:A[i,j]=0} 设置为所有 {it:i}-{it:j}<{it:p}。如果未指定，{it:p} 将被设置为零。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 sublowertriangle()备注和示例:备注和示例}

{pstd}
上面的部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几个标题：

	{help mf_sublowertriangle##remarks1:获取矩阵的下三角部分}
	{help mf_sublowertriangle##remarks2:非方阵}


{marker remarks1}{...}
{title:获取矩阵的下三角部分}

{p 4 4 2}
如果 {it:A} 是一个方阵，则 
	{cmd:sublowertriangle(}{it:A}{cmd:,} 0{cmd:)}=
	{cmd:lowertriangle(}{it:A}{cmd:)}。 {cmd:sublowertriangle()} 是 
{bf:{help mf_lowertriangle_zh:lowertriangle()}} 的推广。

{p 4 4 2}
我们首先定义 {cmd:A}

	{cmd:: A = (1, 2, 3 \ 4, 5, 6 \ 7, 8, 9)}

{p 4 4 2}
{cmd:sublowertriangle(A, 0)} 返回 {cmd:A}，其主对角线以上为零，与 {bf:{help mf_lowertriangle_zh:lowertriangle()}} 相同：

	{cmd:: sublowertriangle(A, 0)}
	
	       {txt}1   2   3
	    {c TLC}{hline 13}{c TRC}
	  1 {c |}  1   0   0  {c |}
	  2 {c |}  4   5   0  {c |}
	  3 {c |}  7   8   9  {c |}
	    {c BLC}{hline 13}{c BRC}

{p 4 4 2}
{cmd:sublowertriangle(A, 1)} 返回 {cmd:A}，其主对角线及其以上部分均为零。

	{cmd:: sublowertriangle(A, 1)}
	
		{txt}1   2   3
	    {c TLC}{hline 13}{c TRC}
	  1 {c |}  0   0   0  {c |}
	  2 {c |}  4   0   0  {c |}
	  3 {c |}  7   8   0  {c |}
	    {c BLC}{hline 13}{c BRC}

{p 4 4 2}
{cmd:sublowertriangle(A, p)} 可以接受负值 {it:p}。例如，设置 {cmd:p}=-1 得到

	{cmd:: sublowertriangle(A, -1)}

	       {txt}1   2   3
	    {c TLC}{hline 13}{c TRC}
	  1 {c |}  1   2   0  {c |}
	  2 {c |}  4   5   6  {c |}
	  3 {c |}  7   8   9  {c |}
	    {c BLC}{hline 13}{c BRC}


{marker remarks2}{...}
{title:非方阵}

{p 4 4 2}
{cmd:sublowertriangle()} 和 {cmd:_sublowertriangle()} 可用于 
非方阵。  

{p 4 4 2}
例如，我们定义一个非方阵 {cmd:A}

	{cmd:: A = (1, 2, 3, 4 \ 5, 6, 7,  8 \ 9, 10, 11, 12)}

{p 4 4 2}
我们使用 {cmd:sublowertriangle()} 获取 {cmd:A} 的下三角部分：

	{cmd:: sublowertriangle(A, 0)}
	
	       {txt} 1    2    3    4
	    {c TLC}{hline 21}{c TRC}
	  1 {c |}  1    0    0    0   {c |}
	  2 {c |}  5    6    0    0   {c |}
	  3 {c |}  9   10   11    0   {c |}
	    {c BLC}{hline 21}{c BRC}


{marker conformability}{...}
{title:符合性}

    {cmd:sublowertriangle(}{it:A}{cmd:,} {it:p}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:r x c}
		{it:p}:  1 {it:x} 1 (可选)
	{it:输出:}
	   {it:结果}:  {it:r x c}

    {cmd:_sublowertriangle(}{it:A}{cmd:,} {it:p}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:r x c}
	      	{it:p}:  1 {it:x} 1 (可选)
	{it:输出:}
	        {it:A}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
没有。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view sublowertriangle.mata, adopath asis:sublowertriangle.mata},
{view _sublowertriangle.mata, adopath asis:_sublowertriangle.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_sublowertriangle.sthlp>}