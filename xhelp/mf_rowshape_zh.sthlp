{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] rowshape()" "mansection M-5 rowshape()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{viewerjumpto "语法" "mf_rowshape_zh##syntax"}{...}
{viewerjumpto "描述" "mf_rowshape_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_rowshape_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_rowshape_zh##remarks"}{...}
{viewerjumpto "适应性" "mf_rowshape_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_rowshape_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_rowshape_zh##source"}
{help mf_rowshape:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] rowshape()} {hline 2}}重塑矩阵
{p_end}
{p2col:}({mansection M-5 rowshape():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:变形矩阵}
{cmd:rowshape(}{it:变形矩阵 T}{cmd:,}
{it:实标量 r}{cmd:)}

{p 8 12 2}
{it:变形矩阵}
{cmd:colshape(}{it:变形矩阵 T}{cmd:,}
{it:实标量 c}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:rowshape(}{it:T}{cmd:,} {it:r}{cmd:)} 返回 {it:T} 转换为一个
拥有 {cmd:trunc(}{it:r}{cmd:)} 行的矩阵。

{p 4 4 2}
{cmd:colshape(}{it:T}{cmd:,} {it:c}{cmd:)} 
返回 {it:T} 具有
{cmd:trunc(}{it:c}{cmd:)} 列。

{p 4 4 2}
在这两种情况下，元素按顺序分配，列索引变化更快。
有关快速变化行索引的函数，请参见 {bf:{help mf_vec_zh:[M-5] vec()}}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 rowshape()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几部分：

	{help mf_rowshape##remarks1:rowshape() 示例}
	{help mf_rowshape##remarks2:colshape() 示例}
	
	
{marker remarks1}{...}
{title:rowshape() 示例}

	{cmd}: A
	{res}       1    2    3    4
	    {c TLC}{hline 19}{c TRC}
	  1 {c |} {res}11   12   13   14{txt} {c |}
	  2 {c |} {res}21   22   23   24{txt} {c |}
	  3 {c |} {res}31   32   33   34{txt} {c |}
	  4 {c |} {res}41   42   43   44{txt} {c |}
	    {c BLC}{hline 19}{c BRC}

	{cmd}: rowshape(A, 2)
	{res}
        {res}       1    2    3    4    5    6    7    8
	    {c TLC}{hline 39}{c TRC}
	  1 {c |} {res}11   12   13   14   21   22   23   24{txt} {c |}
	  2 {c |} {res}31   32   33   34   41   42   43   44{txt} {c |}
	    {c BLC}{hline 39}{c BRC}


{marker remarks2}{...}
{title:colshape() 示例}

	{cmd}: colshape(A, 2)
        {res}
	{res}       1    2
	    {c TLC}{hline 9}{c TRC}
	  1 {c |} {res}11   12{txt} {c |}
	  2 {c |} {res}13   14{txt} {c |}
	  3 {c |} {res}21   22{txt} {c |}
	  4 {c |} {res}23   24{txt} {c |}
	  5 {c |} {res}31   32{txt} {c |}
	  6 {c |} {res}33   34{txt} {c |}
	  7 {c |} {res}41   42{txt} {c |}
	  8 {c |} {res}43   44{txt} {c |}
	    {c BLC}{hline 9}{c BRC}


{marker conformability}{...}
{title:适应性}

{p 4 4 2}
{cmd:rowshape(}{it:T}{cmd:,} {it:r}{cmd:)}
{p_end}
		{it:T}:   {it:r_0 x c_0}
		{it:r}:   1 {it:x} 1
	   {it:result}:   {it:r x} ({it:r_0}*{it:c_0})/{it:r}

{p 4 4 2}
{cmd:colshape(}{it:T}{cmd:,} {it:c}{cmd:)}
{p_end}
		{it:T}:   {it:r_0 x c_0}
		{it:c}:   1 {it:x} 1
	   {it:result}:   ({it:r_0}*{it:c_0})/{it:c x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
令 {it:r_0} 和 {it:c_0} 为 {it:T} 的行数和列数。

{p 4 4 2}
{cmd:rowshape()} 如果 {it:r_0}*{it:c_0} 不能被 trunc({it:r}) 整除，则会报错。

{p 4 4 2}
{cmd:colshape()} 如果 {it:r_0}*{it:c_0} 不能被 trunc({it:c}) 整除，则会报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_rowshape.sthlp>}