{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] J()" "mansection M-5 J()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] missingof()" "help mf_missingof_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Standard" "help m4_standard_zh"}{...}
{viewerjumpto "语法" "mf_j_zh##syntax"}{...}
{viewerjumpto "描述" "mf_j_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_j_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_j_zh##remarks"}{...}
{viewerjumpto "适应性" "mf_j_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_j_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_j_zh##source"}
{help mf_j:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[M-5] J()} {hline 2}}常量矩阵
{p_end}
{p2col:}({mansection M-5 J():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:变换矩阵}
{cmd:J(}{it:实数标量 r}{cmd:,}
{it:实数标量 c}{cmd:,}
{it:标量 val}{cmd:)}

{p 8 12 2}
{it:变换矩阵}
{cmd:J(}{it:实数标量 r}{cmd:,}
{it:实数标量 c}{cmd:,}
{it:矩阵 mat}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:val}{cmd:)} 返回一个 {it:r x c} 矩阵，每个元素等于 {it:val}。

{p 4 4 2}
{cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:mat}{cmd:)} 返回一个
({it:r}{cmd:*行数(}{it:mat}{cmd:)})
{it:x}
({it:c}{cmd:*列数(}{it:mat}{cmd:)}) 矩阵
其元素等于 {it:mat}。

{p 4 4 2}
第一个，
{cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:val}{cmd:)}, 
是 {cmd:J()} 的常见用法。第一个只是第二个的特例，
{cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:mat}{cmd:)}, 当 
{it:mat} 是 1 {it:x} 1。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 J()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{title:第一个语法:  J(r, c, val)，val 为标量}

{p 4 4 2}
{cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:val}{cmd:)} 创建常量矩阵。例如，
{cmd:J(2, 3, 0)} 创建 

                       {txt}1   2   3
                    {c TLC}{hline 13}{c TRC}
                  1 {c |}  {res}0   0   0{txt}  {c |}
                  2 {c |}  {res}0   0   0{txt}  {c |}
                    {c BLC}{hline 13}{c BRC}{txt}

{p 4 4 2}
{cmd:J()} 必须以大写输入。

{p 4 4 2}
{cmd:J()} 可以创建任何类型的矩阵：

        函数           返回值
	{hline 66}
	{cmd:J(2, 3, 4)}       2 x 3 实数矩阵, 每个元素 = 4
        {cmd:J(2, 3, 4+5i)}    2 x 3 复数矩阵, 每个元素 = 4+5i
        {cmd:J(2, 3, "hi")}    2 x 3 字符串矩阵, 每个元素 = "hi"
	{cmd:J(2, 3, &x)}      2 x 3 指针矩阵, 每个元素 = {cmd:x} 的地址
	{hline 66}

{marker void_matrices}{...}
{p 4 4 2}
此外，{cmd:J()} 可以创建空矩阵：

	{cmd:J(0, 0, .)}       0 {it:x} 0 实数 
	{cmd:J(0, 1, .)}       0 {it:x} 1 实数 
	{cmd:J(1, 0, .)}       1 {it:x} 0 实数 

	{cmd:J(0, 0, 1i)}      0 {it:x} 0 复数 
	{cmd:J(0, 1, 1i)}      0 {it:x} 1 复数 
	{cmd:J(1, 0, 1i)}      1 {it:x} 0 复数 

	{cmd:J(0, 0, "")}      0 {it:x} 0 字符串 
	{cmd:J(0, 1, "")}      0 {it:x} 1 字符串 
	{cmd:J(1, 0, "")}      1 {it:x} 0 字符串 

	{cmd:J(0, 0, NULL)}    0 {it:x} 0 指针 
	{cmd:J(0, 1, NULL)}    0 {it:x} 1 指针 
	{cmd:J(1, 0, NULL)}    1 {it:x} 0 指针 

{p 4 4 2}
当 
{cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:val}{cmd:)} 
用于创建空矩阵时，第三个参数的特定值并不重要。然而，其元素类型决定了所生成矩阵的类型。因此，
{cmd:J(0, 0, .)}, {cmd:J(0, 0, 1)}, 和 {cmd:J(0, 0, 1/3)} 都创建相同的结果：一个 0 {it:x} 0 实数矩阵。类似地，{cmd:J(0, 0, "")}, 
{cmd:J(0, 0, "name")}, 和 {cmd:J(0, 0, "?")} 都创建相同的结果：
一个 0 {it:x} 0 字符串矩阵。请参见 {bf:{help m2_void_zh:[M-2] void}} 以了解 
空矩阵的用法。


{title:第二个语法:  J(r, c, mat)，mat 为矩阵}

{p 4 4 2}
{cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:mat}{cmd:)} 是
{cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:val}{cmd:)} 的一种推广。当第三个参数
是一个矩阵时，该矩阵在结果中被复制。例如，如果
{cmd:X} 是 {cmd:(1,2\3,4)}，那么 {cmd:J(2, 3, X)} 创建

                {res}       {txt}1   2   3   4   5   6
                    {c TLC}{hline 25}{c TRC}
                  1 {c |}  {res}1   2   1   2   1   2{txt}  {c |}
                  2 {c |}  {res}3   4   3   4   3   4{txt}  {c |}
                  3 {c |}  {res}1   2   1   2   1   2{txt}  {c |}
                  4 {c |}  {res}3   4   3   4   3   4{txt}  {c |}
                    {c BLC}{hline 25}{c BRC}{txt}

{p 4 4 2}
{cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:val}{cmd:)} 是 
{cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:mat}{cmd:)} 的一个特殊情况；因为恰好
{it:mat} 是 1 {it:x} 1。

{p 4 4 2}
所创建的矩阵具有 
{it:r}{cmd:*行数(}{it:mat}{cmd:)} 行和 
{it:c}{cmd:*列数(}{it:mat}{cmd:)} 列。

{p 4 4 2}
请注意，如果任何 {it:r}、{it:c}、 
{cmd:行数(}{it:mat}{cmd:) 或
{cmd:列数(}{it:mat}{cmd:)} 为零，则 
{cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:mat}{cmd:)} 创建一个空矩阵。


{marker conformability}{...}
{title:适应性}

    {cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:val}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
	      {it:val}:  1 {it:x} 1
	   {it:result}:  {it:r x c}

    {cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:mat}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
	      {it:mat}:  {it:m x n}
	   {it:result}:  {it:r*m x c*n}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:val}{cmd:)} 
和 
{cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:mat}{cmd:)} 
如果 {it:r}<0 或 {it:c}<0，或者 
如果 {it:r}>={cmd:.} 或 {it:c}>={cmd:.} 则会中止并报错。
参数 {it:r} 和 {it:c} 被解释为 
{cmd:trunc(}{it:r}{cmd:)} 和 
{cmd:trunc(}{it:c}{cmd:)}。


{marker source}{...}
{title:源代码}

{pstd}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_j.sthlp>}