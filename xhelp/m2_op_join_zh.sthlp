{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-2] op_join" "mansection M-2 op_join"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] exp" "help m2_exp_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "语法" "m2_op_join_zh##syntax"}{...}
{viewerjumpto "描述" "m2_op_join_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "m2_op_join_zh##linkspdf"}{...}
{viewerjumpto "备注" "m2_op_join_zh##remarks"}{...}
{viewerjumpto "适应性" "m2_op_join_zh##conformability"}{...}
{viewerjumpto "诊断" "m2_op_join_zh##diagnostics"}
{help m2_op_join:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-2] op_join} {hline 2}}行与列连接运算符
{p_end}
{p2col:}({mansection M-2 op_join:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:a} {cmd:,} {it:b}

	{it:a} {cmd:\} {it:b}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:,} 和 {cmd:\} 是 Mata 的行连接和列连接运算符。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 op_joinRemarksandexamples:备注和例子}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几个标题：

	{help m2_op_join##remarks1:逗号和反斜杠是运算符}
	{help m2_op_join##remarks2:逗号作为分隔符}
	{help m2_op_join##remarks3:关于逗号和反斜杠运算符的不当使用警告}


{marker remarks1}{...}
{title:逗号和反斜杠是运算符}

{p 4 4 2}
{cmd:,} 和 {cmd:\} 是运算符这一点重要性不言而喻。
当输入以下内容时：

	: {cmd:(1,2 \ 3,4)}
        {res}       {txt}1   2
            {c TLC}{hline 9}{c TRC}
          1 {c |}  {res}1   2{txt}  {c |}
          2 {c |}  {res}3   4{txt}  {c |}
            {c BLC}{hline 9}{c BRC}{txt}

{p 4 4 2}
人们会产生这样的想法：“啊，逗号和反斜杠是输入矩阵时分隔元素的方式。” 如果你这样想，就无法理解 {cmd:,} 和 {cmd:\} 的强大。

{p 4 4 2}
{cmd:,} 和 {cmd:\} 是运算符，与 {cmd:*} 和 {cmd:+} 作为运算符是一样的。

{p 4 4 2}
{cmd:,} 是将一个 {it:r x c1} 矩阵和一个 {it:r x c2} 矩阵合并成一个 {it:r x} ({it:c1}+{it:c2}) 矩阵的运算符。

{p 4 4 2}
{cmd:\} 是将一个 {it:r1 x c} 矩阵和一个 {it:r2 x c} 矩阵合并成一个 ({it:r1}+{it:r2}) {it:x c} 矩阵的运算符。

{p 4 4 2}
{cmd:,} 和 {cmd:\} 可与标量、向量或矩阵一起使用：

	: {cmd:a = (1\2)}
	: {cmd:b = (3\4)}
	: {cmd:a,b}
        {res}       {txt}1   2
            {c TLC}{hline 9}{c TRC}
          1 {c |}  {res}1   3{txt}  {c |}
          2 {c |}  {res}2   4{txt}  {c |}
            {c BLC}{hline 9}{c BRC}{txt}

	: {cmd:c = (1,2)}
	: {cmd:d = (3,4)}
	: {cmd:c\d}
        {res}       {txt}1   2
            {c TLC}{hline 9}{c TRC}
          1 {c |}  {res}1   2{txt}  {c |}
          2 {c |}  {res}3   4{txt}  {c |}
            {c BLC}{hline 9}{c BRC}{txt}

{p 4 4 2}
{cmd:,} 的优先级高于 {cmd:\}，这意味着 
{it:e}{cmd:,}{it:f}{cmd:\}{it:g}{cmd:,}{it:h} 被解释为 
{cmd:(}{it:e}{cmd:,}{it:f}{cmd:)\(}{it:g}{cmd:,}{it:h}{cmd:)}。
在这方面，{cmd:,} 和 {cmd:\}  与 {cmd:*} 和 {cmd:+} 运算符并没有什么不同：  {cmd:*} 的优先级高于 {cmd:+} 而且 {it:e}{cmd:*}{it:f}{cmd:+}{it:g}{cmd:*}{it:h} 被解释为
{cmd:(}{it:e}{cmd:*}{it:f}{cmd:)+(}{it:g}{cmd:*}{it:h}{cmd:)}。

{p 4 4 2}
就像有时候输入 
{it:e}{cmd:*(}{it:f}{cmd:+}{it:g}{cmd:)*}{it:h} 是有道理的，
输入 
{it:e}{cmd:,(}{it:f}{cmd:\}{it:g}{cmd:),}{it:h} 也是有道理的： 

	: {cmd:e = 1\2}
	: {cmd:f = 5\6}
	: {cmd:g = 3}
	: {cmd:h = 4}
	: {cmd:e,(g\h),f}
        {res}       {txt}1   2   3
            {c TLC}{hline 13}{c TRC}
          1 {c |}  {res}1   3   5{txt}  {c |}
          2 {c |}  {res}2   4   6{txt}  {c |}
            {c BLC}{hline 13}{c BRC}{txt}


{marker remarks2}{...}
{title:逗号作为分隔符}

{p 4 4 2}
{cmd:,} 在 Mata 中有第二个含义：它是函数的参数分隔符。当你输入

	: {cmd:myfunc(a, b)}

{p 4 4 2}
括号内的逗号并不是逗号行连接运算符；它是逗号参数分隔符。如果你想用行向量 (1,2) 作为第二个参数来调用 
{cmd:myfunc()}，你必须输入 

	: {cmd:myfunc(a, (1,2))}

{p 4 4 2}
而不是 

	: {cmd:myfunc(a, 1,2)}

{p 4 4 2}
因为否则 Mata 会认为你试图向 {cmd:myfunc()} 传递三个参数。当你在函数的参数列表中打开另一组括号时，逗号会恢复其通常的行连接含义。


{marker remarks3}{...}
{title:关于逗号和反斜杠运算符的不当使用警告}

{p 4 4 2}
不当使用或过度使用 {cmd:,} 和 {cmd:\} 会显著降低代码执行的速度。考虑当你编码，例如，

		{it:a} {cmd:\} {it:b}

{p 4 4 2}
首先，Mata 必须分配一个包含 rows({it:a})+rows({it:b}) 行的矩阵或向量，然后它必须将 {it:a} 复制到新矩阵或向量中，然后它必须复制 {it:b}。 到目前为止没有任何低效的事情发生，但现在考虑

		{cmd:(}{it:a} {cmd:\} {it:b}{cmd:)} {cmd:\} {it:c}

{p 4 4 2}
接着，Mata 必须分配一个包含 
rows({it:a})+rows({it:b})+rows({it:c}) 行的矩阵或向量，然后它必须将 {cmd:(}{it:a}{cmd:\}{it:b}{cmd:)} 复制到新矩阵或向量中，然后它必须复制 {it:c}。 这里面发生了一些低效的事情：{it:a} 被复制了两次！

{p 4 4 2}
编码 

		{it:res} {cmd:= (}{it:a} {cmd:\} {it:b}{cmd:)} {cmd:\} {it:c}

{p 4 4 2}
是方便的，但如果我们编码

		{it:res} {cmd:= J(rows(}{it:a}{cmd:)+rows(}{it:b}{cmd:)+rows(}{it:c}{cmd:), cols(}{it:a}{cmd:), .)}
		{it:res}{cmd:[1,.] =} {it:a}
		{it:res}{cmd:[2,.] =} {it:b}
		{it:res}{cmd:[3,.] =} {it:c}

{p 4 4 2}
代码会更快。

{p 4 4 2}
我们并不想让你对没有必要的事情感到担忧。一般来说，你是无法衡量更高效的代码和编码 {it:res} {cmd:= (}{it:a} {cmd:\} {it:b}{cmd:)} {cmd:\} {it:c} 之间的差异的。但当行或列运算符的数量叠加时，综合结果变得越来越低效。即使如此，这也并不是什么问题。然而，如果低效的构造埋藏在循环中，并且该循环被执行成千上万次，低效可能就变得重要。

{p 4 4 2}
经过一点思考，你总是可以用 {cmd:J()} (见 {bf:{help mf_j_zh:[M-5] J()}}) 和通过下标赋值来替代预声明。  


{marker conformability}{...}
{title:适应性}

    {it:a}{cmd:,}{it:b}:
		{it:a}:  {it:r x c1}
		{it:b}:  {it:r x c2}
	   {it:result}:  {it:r x} ({it:c1}+{it:c2})

    {it:a}{cmd:\}{it:b}:
		{it:a}:  {it:r1 x c}
		{it:b}:  {it:r2 x c}
	   {it:result}:  ({it:r1}+{it:r2}) {it:x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果 {it:a} 和 {it:b} 不是同一种广义类型，{cmd:,} 和 {cmd:\} 会报错并中止。 
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_op_join.sthlp>}