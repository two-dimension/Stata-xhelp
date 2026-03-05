{smcl}
{* *! version 1.1.12  19oct2017}{...}
{viewerdialog sort "dialog sort"}{...}
{vieweralsosee "[D] sort" "mansection D sort"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] describe" "help describe_zh"}{...}
{vieweralsosee "[D] gsort" "help gsort_zh"}{...}
{viewerjumpto "语法" "sort_zh##syntax"}{...}
{viewerjumpto "菜单" "sort_zh##menu"}{...}
{viewerjumpto "描述" "sort_zh##description"}{...}
{viewerjumpto "PDF文档链接" "sort_zh##linkspdf"}{...}
{viewerjumpto "选项" "sort_zh##option"}{...}
{viewerjumpto "示例" "sort_zh##examples"}
{help sort:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[D] sort} {hline 2}}排序数据{p_end}
{p2col:}({mansection D sort:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{opt so:rt}
{varlist}
[{it:{help in_zh}}]
[{cmd:,} {opt stable}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 排序}


{marker description}{...}
{title:描述}

{pstd}
{opt sort} 根据 {varlist} 中变量的值将当前数据的观察值按升序排列。{it:varlist} 中的变量数没有限制。缺失的数值（见 {help missing_zh}）被解释为比任何其他数字都大，因此它们被最后放置，排序为 {cmd:. < .a < .b < ... < .z}。但是，当在字符串变量上排序时，空字符串优先放在前面，而大写字母排在小写字母之前。

{pstd}
数据集将在 {it:varlist} 的基础上标记为已排序，除非指定了 {help in_zh:{bf:in} {it:range}}。如果指定 {opt in} {it:range}，则仅重新排列那些观察值。未指定的观察值将保持在原处。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D sortQuickstart:快速入门}

        {mansection D sortRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt stable} 指定具有相同变量值的观察在排序后的数据中保持与先前相同的相对顺序。例如，考虑以下数据：

{center:x  b}
{center:3  1}
{center:1  2}
{center:1  1}
{center:1  3}
{center:2  4}

{pmore}
输入 {cmd:sort x} 并不带 {opt stable} 选项将产生以下六种排序中的一种。

{center:x  b  {c |}  x  b  {c |}  x  b  {c |}  x  b  {c |}  x  b  {c |}  x  b}
{center:1  2  {c |}  1  2  {c |}  1  1  {c |}  1  1  {c |}  1  3  {c |}  1  3}
{center:1  1  {c |}  1  3  {c |}  1  3  {c |}  1  2  {c |}  1  1  {c |}  1  2}
{center:1  3  {c |}  1  1  {c |}  1  2  {c |}  1  3  {c |}  1  2  {c |}  1  1}
{center:2  4  {c |}  2  4  {c |}  2  4  {c |}  2  4  {c |}  2  4  {c |}  2  4}
{center:3  1  {c |}  3  1  {c |}  3  1  {c |}  3  1  {c |}  3  1  {c |}  3  1}

{pmore}
如果没有选项 {opt stable}，则相同 {it:varlist} 值的观察顺序会被随机化。使用 {cmd:sort x, stable} 您将始终获得第一个排序，而不会得到其他五个。

{pmore}
如果您的意图是在 {opt x} 的基础上排序观察，然后在相同 {opt x} 值内根据 {opt b} 排序（上述第四种排序），则应该输入 {opt sort x b} 而不是 {opt sort x, stable}。

{pmore}
{opt stable} 很少使用，并且在指定时，会导致 {opt sort} 执行得更慢。


{marker examples}{...}
{title:示例}

{pstd}准备{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. keep make mpg weight}

{pstd}根据 {cmd:mpg} 的值将观察值按升序排列{p_end}
{phang2}{cmd:. sort mpg}

{pstd}与上述相同，但对于相同 {cmd:mpg} 值的观察，保持它们在排序数据中的相对顺序{p_end}
{phang2}{cmd:. sort mpg, stable}

{pstd}列出最低 {cmd:mpg} 的 5 辆车{p_end}
{phang2}{cmd:. list make mpg in 1/5}

{pstd}列出最高 {cmd:mpg} 的 5 辆车{p_end}
{phang2}{cmd:. list make mpg in -5/L}

{pstd}根据 {cmd:mpg} 的值将观察值按升序排列，并在每个 {cmd:mpg} 类别中根据 {cmd:weight} 的值按升序排列{p_end}
{phang2}{cmd:. sort mpg weight}

{pstd}列出最低 {cmd:mpg} 的 8 辆车，并在每个 {cmd:mpg} 类别中列出最低 {cmd:weight} 的车{p_end}
{phang2}{cmd:. list in 1/8}{p_end}

{pstd}根据 {cmd:make} 的值将观察值按字母顺序排列{p_end}
{phang2}{cmd:. sort make}

{pstd}
对于大多数目的，这种排序方法是足够的。可以重写 Stata 的排序逻辑。请参见 {findalias frunicodesort} 了解按语言敏感方式排序字符串的信息。我们不建议您这样做。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sort.sthlp>}