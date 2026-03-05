{smcl}
{* *! version 1.1.17  19oct2017}{...}
{viewerdialog orthog "dialog orthog"}{...}
{viewerdialog orthpoly "dialog orthpoly"}{...}
{vieweralsosee "[R] orthog" "mansection R orthog"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "语法" "orthog_zh##syntax"}{...}
{viewerjumpto "菜单" "orthog_zh##menu"}{...}
{viewerjumpto "描述" "orthog_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "orthog_zh##linkspdf"}{...}
{viewerjumpto "orthog 的选项" "orthog_zh##options_orthog"}{...}
{viewerjumpto "orthpoly 的选项" "orthog_zh##options_orthpoly"}{...}
{viewerjumpto "备注" "orthog_zh##remarks"}{...}
{viewerjumpto "orthog 的示例" "orthog_zh##orthog_examples"}{...}
{viewerjumpto "orthpoly 的示例" "orthog_zh##orthpoly_examples"}{...}
{viewerjumpto "参考文献" "orthog_zh##reference"}
{help orthog:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] orthog} {hline 2}}正交化变量并计算正交多项式{p_end}
{p2col:}({mansection R orthog:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
正交化变量

{p 8 15 2}
{cmd:orthog}
[{varlist}]
{ifin}
[{it:{help orthog##weight:weight}}]
{cmd:,}
{opth g:enerate(newvarlist)}


{phang}
计算正交多项式

{p 8 17 2}
{cmd:orthpoly}
{varname}
{ifin}
[{it:{help orthog##weight:weight}}]
{cmd:,}{break}
{c -(}{opth g:enerate(newvarlist)}{c |}{opt p:oly(matname)}{c )-}
[{opt d:egree(#)}]


{p 4 6 2}
{opt orthpoly} 要求指定 {opt generate(newvarlist)} 或 {opt poly(matname)}，或者两者均需指定。{p_end}
{p 4 6 2}
{it:varlist} 可以包含时间序列运算符；请参见 {help tsvarlist_zh}。{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {opt iweight}s、{opt aweight}s、{opt fweight}s 和 {opt pweight}s；请参见 {help weight_zh}。
{p_end}


{marker menu}{...}
{title:菜单}

    {title:orthog}

{phang2}
{bf:数据 > 创建或更改数据 > 其他变量创建命令 >}
     {bf:正交化变量}

    {title:orthpoly}

{phang2}
{bf:数据 > 创建或更改数据 > 其他变量创建命令 >}
      {bf:正交多项式}


{marker description}{...}
{title:描述}

{pstd}
{opt orthog} 正交化一组变量，创建一组新的正交变量（均为 {opt double} 类型），使用改进的 Gram-Schmidt 程序（{help orthog##GL2013:Golub 和 Van Loan 2013}）。
变量的顺序决定了正交化；因此，“最重要”的变量应首先列出。

{pstd}执行时间与变量数量的平方成正比。对于许多变量（>10），{cmd:orthog} 会比较缓慢。

{pstd}
{opt orthpoly} 计算一个变量的正交多项式。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R orthogQuickstart:快速入门}

        {mansection R orthogRemarksandexamples:备注和示例}

        {mansection R orthogMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options_orthog}{...}
{title:orthog 的选项}

{dlgtab:主要}

{phang}
{opth generate(newvarlist)} 是必需的。{opt generate()} 创建 {opt double} 类型的新正交变量。
对于 {opt orthog}，{it:newvarlist} 将包含正交化的 {varlist}。
如果 {it:varlist} 包含 d 个变量，则 {it:newvarlist} 也将包含 d 个变量。
{it:newvarlist} 可以通过提供恰好 d 个新变量名称的列表来指定，或使用样式 {it:newvar}{cmd:1-}{it:newvard} 或 {it:newvar}{opt *} 进行缩写。对于这两种缩写风格，将生成新变量 {it:newvar}{cmd:1}、{it:newvar}{cmd:2}、...、{it:newvard}。请参见下面的 {help orthog##orthog_examples:示例}。

{phang}
{opt matrix(matname)} 创建一个 (d + 1) * (d + 1) 的矩阵 
包含定义为 X = QR 的矩阵 R，其中 X 是 {varlist} 的 N * (d + 1) 矩阵表示，加上一列的常数，Q 是 {it:{help newvarlist_zh}} 的 N * (d + 1) 矩阵表示，加上一列的常数（d = {it:varlist} 中的变量数量，N = 观察数量）。


{marker options_orthpoly}{...}
{title:orthpoly 的选项}

{dlgtab:主要}

{phang}
{opth generate(newvarlist)} 或 {opt poly()}，或者两者均需指定。
{opt generate()} 创建 {opt double} 类型的新正交变量。
{it:newvarlist} 将包含在 {it:varname} 上评估的度数为 1、2、...、d 的正交多项式，其中 d 按照 {opt degree(d)} 指定。
{it:newvarlist} 可以通过提供恰好 d 个新变量名称的列表来指定，或使用样式 {it:newvar}{cmd:1-}{it:newvard} 或 {it:newvar}{opt *} 进行缩写。对于这两种缩写风格，将生成新变量 {it:newvar}{cmd:1}、{it:newvar}{cmd:2}、...、{it:newvard}。请参见下面的 {help orthog##orthpoly_examples:示例}。

{phang}
{opt poly(matname)} 创建一个 (d + 1) * (d + 1) 的矩阵
称为 {it:matname}，包含正交多项式的系数。
度数为 i (i < d) 的正交多项式为

{pin2}
{it:matname}{cmd:[}i{cmd:,} d + 1{cmd:] +}
{it:matname}{cmd:[}i{cmd:, 1]*}{it:varname} {cmd:+}
{it:matname}{cmd:[}i{cmd:, 2]*}{it:varname}^2
{cmd:+}...{cmd:+}
{it:matname}{cmd:[}i{cmd:,} i{cmd:]*}{it:varname}^i

{pmore}
对应常数项的系数放在矩阵的最后一列。矩阵的最后一行全为零，唯一的例外是最后一列，对应于常数项。

{phang}
{opt degree(#)} 指定最高度多项式的包含。
计算度数为 1、2、...、d = {it:#} 的正交多项式。
默认值为 {bind:d = 1}。


{marker remarks}{...}
{title:备注}

{pstd}
正交变量有两个主要用途。第一是对高共线性变量的数值准确性。Stata 的 {cmd:regress} 和其他估计命令可以面对高度共线性，并且仍然能够产生准确的结果。但是，某些时候，这些命令会因为共线性而丢弃变量。如果您确信这些变量不是完全共线的，您可能希望在模型中保留它们的所有影响。如果您使用 {cmd:orthog} 或 {cmd:orthpoly} 生成一组正交变量，则在估计结果中将会保留所有变量。

{pstd}
用户更可能会因为第二个原因发现正交变量有用：结果解释的便利性。{cmd:orthog} 和 {cmd:orthpoly} 创建一组变量，使得所有前面变量的“影响”都被从每个变量中移除。例如，如果我们发出命令

{phang2}{cmd:. orthog x1 x2 x3, generate(q1 q2 q3)}

{pstd}
则常数的影响从 {cmd:x1} 中移除，以产生 {cmd:q1}；常数和 {cmd:x1} 从 {cmd:x2} 中移除，以产生 {cmd:q2}；最后，常数、{cmd:x1} 和 {cmd:x2} 从 {cmd:x3} 中移除，以产生 {cmd:q3}。因此，

{p 8 13 2}{cmd:q1} = r01 + r11*{cmd:x1}{p_end}
{p 8 13 2}{cmd:q2} = r02 + r12*{cmd:x1} + r22*{cmd:x2}{p_end}
{p 8 13 2}{cmd:q3} = r03 + r13*{cmd:x1} + r23*{cmd:x2} + r33*{cmd:x3}

{pstd}
这个效应可以被推广并用矩阵符号表示为

	X = QR

{pstd}
其中 X 是 {it:varlist} 的 N * (d + 1) 的矩阵表示，加上一列的常数，Q 是 {it:newvarlist} 的 N * (d + 1) 的矩阵表示，加上一列的常数（d = {it:varlist} 中的变量数量，N = 观察数量）。(d + 1) * (d + 1) 的矩阵 R 是一个重排列的上三角矩阵；也就是说，如果常数排在最前，R 就会是上三角的，但常数是在最后，因此第一行/列与最后一行/列交换了顺序。由于 Stata 的估计命令将常数项放在最后，这使得通过 {cmd:matrix()} 选项获得的 R 可以用于转换估计结果。


{marker examples}{...}
{marker orthog_examples}{...}
{title:orthog 的示例}

{pstd}创建正交变量{p_end}

{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. orthog price weight mpg, gen(u*)}{p_end}

{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. orthog price weight mpg, gen(upr uwei umpg)}{p_end}

{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. orthog price weight mpg, gen(upr uwei umpg) matrix(R)}

{pstd}通过 {cmd:matrix()} 选项创建的矩阵 R 可用于
将回归的系数转换{p_end}

{phang2}{cmd:. regress length upr uwei umpg}{p_end}
{p 8 40 2}{cmd:. matrix b1 = e(b)*inv(R)'}{space 3}(使用 {cmd:inv(R)} 的转置){p_end}
{phang2}{cmd:. matrix list b1}{p_end}
{phang2}{cmd:. regress length price weight mpg}

{pstd} 矩阵 R 还可用于从 Q（正交化的 {it:newvarlist}）逐个变量恢复 X（原始 {it:varlist}） 

{phang2}{cmd:. matrix c = R[1...,"price"]}{p_end}
{p 8 40 2}{cmd:. matrix c = c'}{space 14}({cmd:matrix score} 需要一个行向量)
{p_end}
{phang2}{cmd:. matrix score double samepr = c}{p_end}
{phang2}{cmd:. compare price samepr}{p_end}

{pstd}
也就是说，变量 {opt samepr} 与原始 {opt price} 相同。
该过程可作为正交化数值健全性的检查。


{marker orthpoly_examples}{...}
{title:orthpoly 的示例}

{pstd}计算 {cmd:weight} 的正交多项式并执行正交多项式回归{p_end}

{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. orthpoly weight, deg(4) generate(pw*)}{p_end}
{phang2}{cmd:. regress mpg pw1-pw4}

{pstd}通过 {cmd:poly()} 选项创建的矩阵 P 可用于将正交多项式的系数转换为自然多项式的系数{p_end}

{phang2}{cmd:. orthpoly weight, deg(4) poly(P)}{p_end}
{phang2}{cmd:. matrix b3 = e(b)*P}{p_end}
{phang2}{cmd:. matrix list b3}{p_end}

{phang2}{cmd:. gen double w1=weight}{p_end}
{phang2}{cmd:. gen double w2=weight^2}{p_end}
{phang2}{cmd:. gen double w3=weight^3}{p_end}
{phang2}{cmd:. gen double w4=weight^4}{p_end}
{phang2}{cmd:. regress mpg w1-w4}{p_end}


{marker reference}{...}
{title:参考文献}

{marker GL2013}{...}
{phang}
Golub, G. H., 和 C. F. Van Loan. 2013.
{it:矩阵计算}. 第4版.
巴尔的摩: 约翰·霍普金斯大学出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <orthog.sthlp>}