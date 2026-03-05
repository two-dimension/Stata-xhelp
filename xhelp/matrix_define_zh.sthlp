{smcl}
{* *! version 1.1.9  19oct2017}{...}
{viewerdialog "matrix define" "dialog matrix_define"}{...}
{viewerdialog "matrix input" "dialog matrix_input"}{...}
{vieweralsosee "[P] matrix define" "mansection P matrixdefine"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] macro" "help macro_zh"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "[P] matrix get" "help matrix get"}{...}
{vieweralsosee "[P] matrix utility" "help matrix utility"}{...}
{vieweralsosee "[P] scalar" "help scalar_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FN] Matrix functions" "help matrix_functions_zh"}{...}
{vieweralsosee "[U] 13 Functions and expressions (expressions)" "help exp_zh"}{...}
{vieweralsosee "matrix operators" "help matrix operators"}{...}
{viewerjumpto "Syntax" "matrix_define_zh##syntax"}{...}
{viewerjumpto "Menu" "matrix_define_zh##menu"}{...}
{viewerjumpto "Description" "matrix_define_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "matrix_define_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "matrix_define_zh##remarks"}{...}
{viewerjumpto "Examples" "matrix_define_zh##examples"}
{help matrix_define:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[P] matrix define} {hline 2}}矩阵定义{p_end}
{p2col:}({mansection P matrixdefine:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    执行矩阵运算

	{cmdab:mat:rix} [{cmdab:def:ine}] {it:A} = {it:matrix_expression}


    输入矩阵

{p 8 24 2}{cmdab:mat:rix} [{cmdab:in:put}]{space 2}{it:A}
		{cmd:= (}{it:#}[{cmd:,}{it:#...}]
		[{cmd:\} {it:#}[{cmd:,}{it:#...}] [{cmd:\} [{it:...}]]]{cmd:)}


{marker menu}{...}
{title:菜单}

    {title:matrix define}

{phang2}
{bf:数据 > 矩阵，ado语言 > 从表达式定义矩阵}

    {title:matrix input}

{phang2}
{bf:数据 > 矩阵，ado语言 > 手动输入矩阵}


{marker description}{...}
{title:描述}

{pstd}
{cmd:matrix define} 执行矩阵运算。可以省略单词 {cmd:define}。

{pstd}
{cmd:matrix input} 提供了一种输入矩阵的方法。可以省略单词 {cmd:input}（见以下讨论）。

{pstd}
有关背景信息和更多矩阵帮助链接，请参见 {manhelp matrix P}。

{pstd}有关 Mata 中的矩阵表达式，请参阅 {manhelp exp M-2}。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection P matrixdefineRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中.


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:matrix define} 从其他矩阵计算矩阵结果。例如，

{phang2}{cmd:. matrix define D = A + B + C}

{pstd}
创建 {cmd:D}，其包含 {cmd:A}、{cmd:B} 和 {cmd:C} 的和。可以省略单词 {cmd:define}， 

{phang2}{cmd:. matrix D = A + B + C}

{pstd}
该命令还可以进一步简写为：

{phang2}{cmd:. mat D = A + B + C}

{pstd}
在所有上下文中，同一个矩阵可以出现在等号的左侧和右侧，Stata 不会混淆。允许复杂的矩阵表达式；请参见 {help matrix operators} 和 {help matrix functions}。

{pstd}
使用 {cmd:matrix input}，您可以按行定义矩阵元素；逗号用于分隔一行内的元素，反斜杠用于分隔行。空格不重要。

{phang2}{cmd:. matrix input A = (1,2\3,4)}{p_end}

{pstd}
如果省略 {cmd:input} 子命令，上述方法也适用：

{phang2}{cmd:. matrix A = (1,2\3,4)}{p_end}

{pstd}有一个细微的区别：第一种方法使用 {cmd:matrix}
{cmd:input} 命令，第二种使用矩阵表达式解析器。省略 {cmd:input} 允许在命令中使用表达式。例如，

{phang2}{cmd:. matrix X = (1+1, 2*3/4 \ 5/2, 3)}{p_end}

{pstd}
被理解，但

{phang2}{cmd:. matrix input X = (1+1, 2*3/4 \ 5/2, 3)}{p_end}

{pstd}
将产生错误。

{pstd}
然而，{cmd:matrix input} 还有两个其他优点。首先，允许输入大矩阵。（表达式解析器受限，因为它必须“编译”表达式，如果表达式太长，将产生错误。）其次，{cmd:matrix input} 允许省略逗号。


{marker examples}{...}
{title:示例}

{pstd}创建 2 x 2 矩阵 {cmd:mymat}{p_end}
{phang2}{cmd:. matrix input mymat = (1,2\ 3, 4)}

{pstd}列出 {cmd:mymat} 的内容{p_end}
{phang2}{cmd:. mat list mymat}

{pstd}删除矩阵 {cmd:mymat}{p_end}
{phang2}{cmd:. mat drop mymat}

{pstd}创建 2 x 2 矩阵 {cmd:mymat}{p_end}
{phang2}{cmd:. matrix mymat = (1,2\ 3, 4)}

{pstd}创建 1 x 4 行向量 {cmd:myrvec}{p_end}
{phang2}{cmd:. matrix input myrvec = (1.7, 2.93, -5, 3)}

{pstd}列出 {cmd:myrvec} 的内容{p_end}
{phang2}{cmd:. mat list myrvec}

{pstd}创建 4 x 1 列向量 {cmd:mycvec}{p_end}
{phang2}{cmd:. matrix mycvec = (1.7 \ 2.93 \ -5 \ 3)}

{pstd}列出 {cmd:mycvec} 的内容{p_end}
{phang2}{cmd:. mat list mycvec}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matrix_define.sthlp>}