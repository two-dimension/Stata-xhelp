{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-2] op_transpose" "mansection M-2 op_transpose"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] exp" "help m2_exp_zh"}{...}
{vieweralsosee "[M-5] conj()" "help mf_conj_zh"}{...}
{vieweralsosee "[M-5] _transpose()" "help mf__transpose_zh"}{...}
{vieweralsosee "[M-5] transposeonly()" "help mf_transposeonly_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_op_transpose_zh##syntax"}{...}
{viewerjumpto "Description" "m2_op_transpose_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_op_transpose_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_op_transpose_zh##remarks"}{...}
{viewerjumpto "Conformability" "m2_op_transpose_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "m2_op_transpose_zh##diagnostics"}
{help m2_op_transpose:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-2] op_transpose} {hline 2}}共轭转置运算符
{p_end}
{p2col:}({mansection M-2 op_transpose:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:A}{cmd:'}


{marker description}{...}
{title:描述}

{p 4 4 2}
{it:A}{cmd:'} 返回 {help m6_glossary##transpose:转置} 的 {it:A}，或者，如果 {it:A} 是复数，则返回共轭转置。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 op_transposeRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:'} 后缀运算符可以用于任何类型的矩阵或向量：实数、复数、字符串或指针：

	: {cmd:a}
	{res}       {txt}1   2   3
	    {c TLC}{hline 13}{c TRC}
	  1 {c |}  {res}1   2   3{txt}  {c |}
	  2 {c |}  {res}4   5   6{txt}  {c |}
	    {c BLC}{hline 13}{c BRC}

	: {cmd:a'}
	{res}       {txt}1   2
	    {c TLC}{hline 9}{c TRC}
	  1 {c |}  {res}1   4{txt}  {c |}
	  2 {c |}  {res}2   5{txt}  {c |}
	  3 {c |}  {res}3   6{txt}  {c |}
	    {c BLC}{hline 9}{c BRC}

	: {cmd:s}
	{res}       {txt}    1       2
	    {c TLC}{hline 17}{c TRC}
	  1 {c |}  {res}alpha    beta{txt}  {c |}
	    {c BLC}{hline 17}{c BRC}

	: {cmd:s'}
	{res}       {txt}    1
	    {c TLC}{hline 9}{c TRC}
	  1 {c |}  {res}alpha{txt}  {c |}
	  2 {c |}  {res} beta{txt}  {c |}
	    {c BLC}{hline 9}{c BRC}


	: {cmd:p}
	{res}       {txt}        1
	    {c TLC}{hline 13}{c TRC}
	  1 {c |}  {res}0xaa80288{txt}  {c |}
	  2 {c |}  {res}0xbcd5258{txt}  {c |}
	    {c BLC}{hline 13}{c BRC}

	: {cmd:p'}
	{res}       {txt}        1           2
	    {c TLC}{hline 25}{c TRC}
	  1 {c |}  {res}0xbcd5258   0xbcd5258{txt}  {c |}
	    {c BLC}{hline 25}{c BRC}

	: {cmd:z}
	{res}       {txt}     1        2
	    {c TLC}{hline 19}{c TRC}
	  1 {c |}  {res}1 + 2i   3 + 4i{txt}  {c |}
	  2 {c |}  {res}5 + 6i   7 + 8i{txt}  {c |}
	    {c BLC}{hline 19}{c BRC}

	: {cmd:z'}
	{res}       {txt}     1        2
	    {c TLC}{hline 19}{c TRC}
	  1 {c |}  {res}1 - 2i   5 - 6i{txt}  {c |}
	  2 {c |}  {res}3 - 4i   7 - 8i{txt}  {c |}
	    {c BLC}{hline 19}{c BRC}

{p 4 4 2}
当 {cmd:'} 应用于复数时，返回的是共轭转置。如果你不想要这个，可以编写 
{cmd:conj(}{it:z}{cmd:')} 或 
{cmd:conj(}{it:z}{cmd:)'} -- 这没有区别；请参见 
{bf:{help mf_conj_zh:[M-5] conj()}},

	: {cmd:conj(z')}
	{res}       {txt}     1        2
	    {c TLC}{hline 19}{c TRC}
	  1 {c |}  {res}1 + 2i   5 + 6i{txt}  {c |}
	  2 {c |}  {res}3 + 4i   7 + 8i{txt}  {c |}
	    {c BLC}{hline 19}{c BRC}

{p 4 4 2}
或者使用 {cmd:transposeonly()} 函数；请参见
{bf:{help mf_transposeonly_zh:[M-5] transposeonly()}} 函数：

	: {cmd:transposeonly(z)}
	{res}       {txt}     1        2
	    {c TLC}{hline 19}{c TRC}
	  1 {c |}  {res}1 + 2i   5 + 6i{txt}  {c |}
	  2 {c |}  {res}3 + 4i   7 + 8i{txt}  {c |}
	    {c BLC}{hline 19}{c BRC}

{p 4 4 2}
{cmd:transposeonly()} 的执行速度比 {cmd:conj(}{it:z}{cmd:')} 稍快。

{p 4 4 2}
对于实数和复数 {it:A}，另请参见
{bf:{help mf__transpose_zh:[M-5] _transpose()}}, 提供了一种在原地转置矩阵的方法，从而节省内存。


{marker conformability}{...}
{title:兼容性}

	{it:A}{cmd:'}:
		{it:A}:  {it:r x c}
	   {it:result}:  {it:c x r}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
转置运算符不会失败，但在处理复数时容易错误使用。

{p 4 4 2}
有用户希望形成 {it:A}{cmd:*}{it:x}，但尝试时遇到了兼容性错误。他认为 {it:x} 是列向量，但结果却是行向量，或者反之。不管怎样，他接着编写了 {it:A}{cmd:*}{it:x}{cmd:'}，程序正常运行，更重要的是，产生了正确的答案。在他的测试中，{it:x} 是实数。

{p 4 4 2}
后来，用户用复数 {it:x} 运行程序，程序生成了错误的结果，尽管他花了一段时间才注意到。经过反复研究他的代码，他才想到无害的 {it:A}{cmd:*}{it:x}{cmd:'}。转置运算符不仅将 {it:x} 从行向量变成列向量，还对 {it:x} 的每个元素进行了共轭处理！他将代码更改为 {it:A}{cmd:*}{cmd:transposeonly(}{it:x}{cmd:)}。

{p 4 4 2}
用户无疑想知道为什么 {cmd:'} 转置运算符没有一开始就被定义为等同于 {cmd:transposeonly()}。如果这样定义，那么与其讲述那个只想要转置的男人被共轭转置咬伤的故事，我们不如讲述那个需要共轭转置的女人被转置咬伤的故事。事实上，后者的故事比前者的更多。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_op_transpose.sthlp>}