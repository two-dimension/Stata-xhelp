{smcl}
{* *! version 1.1.0  15nov2012}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] cscript" "help cscript_zh"}{...}
{viewerjumpto "Syntax" "storedresults_zh##syntax"}{...}
{viewerjumpto "Description" "storedresults_zh##description"}{...}
{viewerjumpto "Options" "storedresults_zh##options"}{...}
{viewerjumpto "Remarks" "storedresults_zh##remarks"}
{help storedresults:English Version}
{hline}{...}
{title:标题}

{p 4 26 2}
{hi:[P] storedresults} {hline 2} 操作和验证存储的结果 r() 和 e()


{marker syntax}{...}
{title:语法}

{p 8 30 2}{cmd:storedresults} {cmdab:sav:e} {space 3} {it:name} {{cmd:r()}|{cmd:e()}}

{p 8 30 2}{cmd:storedresults} {cmdab:comp:are} {it:name} {{cmd:r()}|{cmd:e()}}
[{cmd:,} {cmdab:tol:erance:(}{it:#}{cmd:)} {cmdab:rev:erse} {cmdab:v:erbose}
{cmdab:ex:clude:(}{it:list}{cmd:)} {cmdab:in:clude:(}{it:list}{cmd:)} ]

{p 8 30 2}{cmd:storedresults} {cmd:drop} {space 3} {it:name}


{p 4 4 2}其中列表是

{p 8 15 2}{it:class}{cmd::} {it:name} [{it:name} [{it:...}]] [{it:list}]

{pstd}
并且 {it:class} 是 {cmd:macro}, {cmd:macros}, {cmd:matrix}, {cmd:matrices},
{cmd:scalar}, 或 {cmd:scalars}。


{pstd}
此命令旨在为认证脚本的作者提供方便 —— 用于测试命令是否正常工作的 do 文件；请参见 {manhelp cscript P}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:storedresults} 允许轻松保存由命令生成的 {hi:r()} 或 {hi:e()} 
存储结果，之后可以与其他存储结果进行比较。

{pstd}
{cmd:storedresults save} 将 {hi:r()} 或 {hi:e()} 保存为指定名称。

{pstd}
{cmd:storedresults compare} 比较当前的 {hi:r()} 或 {hi:e()} 结果与之前保存的结果。如果它们不同，将返回代码 9。

{pstd}
{cmd:storedresults drop} 从内存中删除之前存储的结果。 


{marker options}{...}
{title:选项}

{phang}
{cmd:tolerance(}{it:#}{cmd:)} 指定数值比较的容差。默认值为 0，这意味着数值结果必须完全相等。

{pmore}
标量之间的比较使用 {cmd:reldif()} 函数并将结果与 {cmd:tolerance()} 进行比较。

{pmore}
矩阵之间的比较使用 {cmd:mreldif()} 函数并将结果与 {cmd:tolerance()} 进行比较。

{pmore}
宏之间的比较，如果两者都包含数字，则使用 {cmd:reldif()} 函数并将结果与 {cmd:tolerance()} 进行比较。如果特定宏的先前结果、当前结果或两者都不包含数字，则会进行字符串比较，此时 {cmd:tolerance()} 与该比较无关。

{phang}
{cmd:reverse} 可能会影响检查哪些 {hi:r()} 或 {hi:e()} 结果。默认情况下，将所有先前存储的结果与当前结果进行比较，这意味着如果当前存储了额外的结果，将不会被检测到。另一方面，如果先前存储的结果现在没有被存储，将会被检测到，而当结果同时在先前和当前都存储时，它们将被比较。

{pmore}
{cmd:reverse} 将这一过程倒转。{cmd:reverse} 指定当前存储的结果与先前存储的结果进行比较。这意味着如果现在存储了之前未存储的结果，它将被检测到，但当然，之前存储的结果如果现在没有存储，将不被检测到。

{pmore}
要确认先前和现在存储的结果相同的唯一方法是运行两次命令，一次带有 {cmd:reverse} 选项，另一次不带。大多数认证脚本的作者通常不会这样做，也不会特别指定 {cmd:reverse}。

{phang}
{cmd:verbose} 指定将显示所检查内容的列表。默认情况下，只有在出现问题时才会产生输出。

{phang}
{cmd:exclude(}{it:list}{cmd:)} 指定在所有存储结果的列表中（指的是所有以前存储的结果，或现在的所有存储结果；参见上面的 {cmd:reverse} 选项），要排除指定结果列表中的结果。{cmd:exclude()} 列表中的项可能根本没有存储（在这种情况下没有理由指定它们），以前存储但现在没有存储，现在存储但以前没有存储，或者两次存储但您不在乎它们是否具有不同值。

{pmore}
指定 {cmd:exclude()} 允许您检查返回结果的子集。

{pmore}
例如，如果您希望排除存储的宏 {hi:e(if)}、{hi:e(in)}，存储的标量 {hi:e(N)} 和存储的矩阵 {hi:e(V)}，您可以指定

{phang3}{cmd:. storedresults comp} {it:...}{cmd:, exclude(macros: if in  scalar: N  matrix: V)}

{phang}
{cmd:include(}{it:list}{cmd:)} 指定仅比较所指定的存储结果。{it:list} 的语法与在 {cmd:exclude()} 中使用时相同，含义正好相反。


{marker remarks}{...}
{title:备注}

{pstd}
在认证脚本中，有时希望验证在以两种不同方式运行命令时是否获得相同的结果。例如，如果我们在测试 {help summarize_zh}，可能想要验证 {cmd:if} {it:exp} 修饰符是否有效：

{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. keep if foreign}{p_end}
{phang2}{cmd:. summarize mpg}{p_end}
{phang2}{cmd:. storedresults save mustbetrue r()}

{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. summarize mpg if foreign}{p_end}
{phang2}{cmd:. storedresults compare mustbetrue r()}

{phang2}{cmd:. storedresults drop mustbetrue}

{pstd}
为了您的理解，修改此脚本的中间部分，改为

{phang2}{cmd:. use auto, clear}{p_end}
{phang2}{cmd:. summarize mpg} {space 2} /* 省略 if foreign */{p_end}
{phang2}{cmd:. storedresults compare mustbetrue r()} {space 2} /* 因此这个不成立 */

{pstd}
运行脚本的第一个版本时，{cmd:storedresults} 不会生成输出。运行第二个版本时，{cmd:storedresults} 将生成详细输出，强调存储结果的差异，并且更重要的是，最终将返回代码 9，意味着认证脚本会停止。

{pstd}
作为第二个例子，考虑编写一个脚本以验证 {help regress_zh} 在频率加权下工作：

{phang2}{cmd:. use auto, clear}{p_end}
{phang2}{cmd:. expand mpg}{p_end}
{phang2}{cmd:. regress price weight foreign}{p_end}
{phang2}{cmd:. storedresults save unweighted e()}

{phang2}{cmd:. use auto, clear}{p_end}
{phang2}{cmd:. regress price weight foreign [fw=mpg]}{p_end}
{phang2}{cmd:. storedresults compare unweighted e(), tol(1e-14)}

{phang2}{cmd:. storedresults drop unweighted}

{pstd}
在这里，{cmd:tolerance()} 选项是必需的，因为在没有它的情况下测试该脚本时发现结果的最大相对差异约为 4e-15，这被认为是可接受的。（在测试脚本的最终形式中，最终容差从观察到的 4e-15 降低到 1e-14，实际上没有合理的理由）。 
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <storedresults.sthlp>}