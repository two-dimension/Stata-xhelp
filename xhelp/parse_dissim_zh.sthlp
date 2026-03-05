{smcl}
{* *! version 1.0.6  10aug2012}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] cluster programming utilities" "help cluster_programming_zh"}{...}
{vieweralsosee "[P] matrix dissimilarity" "help matrix_dissimilarity_zh"}{...}
{vieweralsosee "[MV] measure_option" "help measure_option_zh"}{...}
{viewerjumpto "Syntax" "parse_dissim_zh##syntax"}{...}
{viewerjumpto "Description" "parse_dissim_zh##description"}{...}
{viewerjumpto "Option" "parse_dissim_zh##option"}{...}
{viewerjumpto "Example" "parse_dissim_zh##example"}{...}
{viewerjumpto "Stored results" "parse_dissim_zh##results"}
{help parse_dissim:English Version}
{hline}{...}
{title:标题}

{p 4 22 2}
{hi:[MV] parse_dissim} {hline 2} 解析相似性和不相似性度量


{marker syntax}{...}
{title:语法}

{p 8 21 2}
{cmd:parse_dissim} [{it:{help measure_option_zh:measure}}]
[{cmd:,} {cmd:default(}{it:default_{help measure_option_zh:measure}}{cmd:)} ]


{marker description}{...}
{title:描述}

{pstd}
{cmd:parse_dissim} 获取在 {it:measure} 中找到的相似性或不相似性名称，并与 Stata 提供的列表进行检查，考虑到允许的最小缩写和别名。别名被解析（例如，{cmd:Euclidean} 被转换为等效的 {cmd:L2}）。解析后的名称及其他关于 {it:measure} 的信息返回在 {cmd:s()} 中（见下文）。如果 {it:measure} 不是允许的相似性和不相似性度量之一，则会生成错误信息，并返回代码 198。有关允许的相似性和不相似性 {it:measure} 的列表及其定义，请参见 {manhelpi measure_option MV}。


{marker option}{...}
{title:选项}

{phang}
{opt default(default_measure)}
    指定当 {it:measure} 未指定时的默认相似性或不相似性度量。{cmd:default()} 的默认值为 {cmd:L2}（别名为欧几里得距离）。有关允许的度量的列表，请参见 {manhelpi measure_option MV}。


{marker example}{...}
{title:示例}

    在程序中

	...
	{cmd:parse_dissim `sim'}
	{cmd:local sim "`s(dist)'"}
	{cmd:if "`s(dtype)'" != "similarity" | "`s(binary)'" != "binary" {c -(}}
		{cmd:di as error "仅允许二元相似度量"}
		{cmd:exit 198}
	{cmd:{c )-}}
	...


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:parse_dissim} 在 {cmd:s()} 中存储以下内容：

    宏变量
{p2colset 9 22 26 2}{...}
{p2col:{cmd:s(dist)}}
	（不）相似度量名称，未缩写并解析了别名
	{p_end}
{p2col:{cmd:s(unab)}}
	（不）相似度量名称，未缩写但未解析别名
	{p_end}
{p2col:{cmd:s(darg)}}
	（不）相似度量的参数（括号内），例如 {cmd:L(}{it:#}{cmd:)}
	{p_end}
{p2col:{cmd:s(dtype)}}
	单词 {cmd:similarity} 或 {cmd:dissimilarity}
	{p_end}
{p2col:{cmd:s(drange)}}
	度量范围（从最相似到最不相似）；点表示无限
	{p_end}
{p2col:{cmd:s(binary)}}
	如果该度量适用于二元观察，则为单词 {cmd:binary}
	{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <parse_dissim.sthlp>}