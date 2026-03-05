{smcl}
{* *! version 1.0.9  10aug2012}{...}
{* 这不是现代的使命令适应复杂调查的方式}{...}
{vieweralsosee "[SVY] svy" "help svy_zh"}{...}
{viewerjumpto "语法" "svyopts_zh##syntax"}{...}
{viewerjumpto "描述" "svyopts_zh##description"}{...}
{viewerjumpto "一些使用 svyopts 的官方 Stata 命令" "svyopts_zh##official"}{...}
{viewerjumpto "示例" "svyopts_zh##examples"}{...}
{viewerjumpto "存储结果" "svyopts_zh##results"}
{help svyopts:English Version}
{hline}{...}
{title:标题}

    调查命令的解析工具


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:svyopts}
	{it:modopts}
	{it:diopts}
	[ {it:rest} ]
	[{cmd:,} {it:options}]


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:svyopts} 是一个解析工具，旨在帮助检查和解析使用 {cmd:ml} 的调查估计命令的语法。指定在 {it:options} 中的选项将被分组并返回给调用者指定的局部宏。局部宏的名称由 {it:modopts}、{it:diopts} 和 {it:rest} 确定。

{p 4 8 2}
{it:modopts} 是必需的，并将包含 {cmd:ml} 命令识别为 {cmd:svy} 选项的那些选项。
返回到 {it:modopts} 的选项有

{p 8 8 2}
	{cmdab:nosvy:adjust}
	{cmdab:sc:ore:(}{it:newvarlist}|{it:stub}*{cmd:)}
	{cmdab:sub:pop:(}{it:subpop_spec}{cmd:)}
	{cmdab:srs:subpop}

{p 8 8 2}
有关上述选项的描述，请参见 {manhelp ml R}。

{p 4 8 2}
{it:diopts} 是必需的，它将包含影响输出显示的选项。
返回到 {it:diopts} 的选项有

{p 8 8 2}
	{cmdab:l:evel:(}{it:#}{cmd:)}
	{cmd:deff}
	{cmd:deft}
	{cmd:meff}
	{cmd:meft}
	{cmdab:ef:orm}
	{cmdab:p:rob}
	{cmd:ci}
	{cmdab:noh:eader}

{p 8 8 2}
有关上述选项的描述，请参见 {manhelp ml R}。

{p 4 8 2}
{it:rest} 是可选的，如果指定，将包含所有未返回在 {it:modopts} 或 {it:diopts} 中的其他选项。如果不指定 {it:rest}，则任何额外选项将导致错误。


{marker official}{...}
{title:一些使用 {cmd:svyopts} 的官方 Stata 命令}

{p 4 4 2}
以下命令使用 {cmd:svyopts}。有关帮助请参见

{p 8 8 2}
	{help svygnbreg},
	{help svyheckman},
	{help svyheckprob},
	{help svyintreg},
	{help svynbreg},
	{help svypoisson}


{marker examples}{...}
{title:示例}

{p 4 4 2}
{cmd}. svyopts mlopts diopts , eform subpop(sub){text}

{p 4 4 2}
{cmd}. svyopts mlopts diopts , junk eform subpop(sub){text}{break}
{err}不允许选项 junk{break}
{txt}{search r(198):r(198);}

{p 4 4 2}
{cmd}. svyopts mlopts diopts rest , junk eform subpop(sub){text}{break}


{marker results}{...}
{title:存储结果}

{p 4 4 2}
{cmd:svyopts} 在 {cmd:s()} 中存储以下内容：

{p 4 4 2}
宏：

        {cmd:s(meff)}     {cmd:meff}、{cmd:meft} 或如果提供则两者均包含
        {cmd:s(subpop)}   {it:varname} 来自 {cmd:subpop()} 选项

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svyopts.sthlp>}