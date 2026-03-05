{smcl}
{* *! version 1.0.3  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] codebook" "help codebook_zh"}{...}
{vieweralsosee "[D] describe" "help describe_zh"}{...}
{vieweralsosee "[D] encode" "help encode_zh"}{...}
{vieweralsosee "[D] label" "help label_zh"}{...}
{vieweralsosee "[D] labelbook" "help labelbook_zh"}{...}
{viewerjumpto "Syntax" "matalabel_zh##syntax"}{...}
{viewerjumpto "Description" "matalabel_zh##description"}{...}
{viewerjumpto "Options" "matalabel_zh##options"}
{help matalabel:English Version}
{hline}{...}
{title:标题}

{p2colset 5 24 26 2}{...}
{p2col :{hi:[M-3] matalabel} {hline 2}}在Mata中创建包含值标签的列向量{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}{cmd:matalabel} [{it:lblname-list}] 
[{cmd:using} {it:filename}] {cmd:,} {opt gen:erate(namevec valuevec labelvec)}
	[{opt v:ar}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:matalabel} 是一个程序命令，用于读取当前加载的数据集中或从可选指定的文件名中获取值标签信息。

{pstd}
{cmd:matalabel} 在 {help mata_zh:Mata} 中创建三个列向量，分别包含标签名称、数字值和标记值。向量的名称在 {opt generate()} 选项中指定，这是必需的。每个向量按照映射的数量有一行。{it:labelvec} 向量中的标记值将是完整的标签长度，即使它们超过 Stata 的最大字符串长度也是如此。

{pstd}
{cmd:matalabel} 补充了 {cmd:label, save}，该命令生成一个变量标签的 ASCII 文件，格式便于编辑值标签文本。

{pstd}
未指定列表或使用 {opt _all} 等同于指定所有值标签。值标签名称不能缩写或使用通配符。

{marker options}{...}
{title:选项}

{phang}
{opt generate(namevec valuevec labelvec)} 指定要在 Mata 中创建的三个向量的名称，这些向量包含标签名称、数字值和标记值。 {opt generate()} 是必需的。

{phang}
{opt var} 指定使用值标签 {it:vl} 的变量列表将返回在 {opt r(vl)} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matalabel.sthlp>}