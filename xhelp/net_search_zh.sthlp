{smcl}
{* *! version 1.0.1  12feb2019}{...}
{viewerdialog "net search" "net_d"}{...}
{vieweralsosee "[R] net search" "mansection R netsearch"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ado update" "help ado update"}{...}
{vieweralsosee "[R] net" "help net_zh"}{...}
{vieweralsosee "[R] search" "help search_zh"}{...}
{vieweralsosee "[R] sj" "help sj_zh"}{...}
{vieweralsosee "[R] ssc" "help ssc_zh"}{...}
{vieweralsosee "stb" "help stb_zh"}{...}
{vieweralsosee "[R] update" "help update_zh"}{...}
{viewerjumpto "Syntax" "help net_search##syntax"}{...}
{viewerjumpto "Description" "help net_search##description"}{...}
{viewerjumpto "Links to PDF documentation" "help net_search##linkspdf"}{...}
{viewerjumpto "Options" "help net_search##options_net_search"}{...}
{viewerjumpto "Examples" "help net_search##examples"}
{help net_search:English Version}
{hline}{...}
{p2colset 1 19 14 2}{...}
{p2col:{bf:[R] net search} {hline 2}}搜索互联网以查找可安装包{p_end}
{p2col:}({mansection R netsearch:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 19 2}{cmd:net} {cmd:search} {it:word} [{it:word} {it:...}]
		[{cmd:,} {it:{help net_search##search_options:选项}}]

{synoptset 16}{...}
{marker search_options}{...}
{synopthdr :选项}
{synoptline}
{synopt :{opt or}}列出包含任一关键词的包；默认列出所有{p_end}
{synopt :{opt nosj}}搜索非 SJ 和非 STB 来源{p_end}
{synopt :{opt tocpkg}}同时搜索目录和包；默认选项{p_end}
{synopt :{opt toc}}仅搜索目录{p_end}
{synopt :{opt pkg}}仅搜索包{p_end}
{synopt :{opt e:verywhere}}在包中搜索匹配{p_end}
{synopt :{opt f:ilenames}}搜索与包关联的文件名以查找匹配{p_end}
{synopt :{opt errnone}}在未找到匹配时返回代码为 111 而不是 0{p_end}
{synoptline}
{p2colreset}{...}

{marker description}{...}
{title:描述}

{pstd}
{cmd:net search} 在互联网上搜索社区贡献的 Stata 附加功能，包括但不限于在
{browse "http://www.stata-journal.com":{it:Stata Journal}} (SJ) 和在
{browse "http://www.stata.com/products/stb/":{it:Stata Technical Bulletin}}
(STB) 发布的社区贡献的附加功能。{cmd:net search} 列出包含指定关键词的可用附加功能。

{pstd}
找到的社区贡献材料可以通过使用 {cmd:net} 命令或点击链接立即下载。

{pstd}
除了输入 {cmd:net search}，您还可以选择
{bf:Help > Search...} 并选择 {bf:Search net resources}。
这是搜索社区贡献的 Stata 附加功能的推荐方式。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R netsearchRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options_net_search}{...}
{title:选项}

{phang}
{opt or} 仅在指定多个关键词时相关。默认情况下，
{cmd:net search} 仅列出包含所有关键词的包。{opt or} 更改命令为列出包含任一关键词的包。

{phang}
{opt nosj} 指定 {cmd:net search} 不列出在 Stata Journal 或 Stata Technical Bulletin 中发布的匹配项。

{phang}
{opt tocpkg}、{opt toc} 和 {opt pkg} 决定搜索内容。
{opt tocpkg} 是默认选项，这意味着同时搜索目录（tocs）和包（pkgs）。{opt toc} 限制搜索到目录。{opt pkg} 限制搜索到包。

{phang}
{opt everywhere} 和 {opt filenames} 决定 {cmd:net search} 在包中查找 {it:keywords} 的位置。默认是 {opt everywhere}。
{opt filename} 限制 {cmd:net search} 仅搜索与包关联的文件名中的匹配项。指定 {opt everywhere} 意味着包含了 {opt pkg}。

{phang}
{opt errnone} 是一个程序员选项，当未找到匹配时使返回代码为 111 而不是 0。


{marker examples}{...}
{title:示例}

{pstd}
要搜索网络上有关“随机效应”的可用内容，请输入{p_end}
{phang2}{cmd:. net search random effect}{p_end}

{pstd}
要仅在 {it:Stata Journal} 中搜索有关“随机效应”的可用内容，请输入{p_end}
{phang2}{cmd:. net search random effect, sj}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <net_search.sthlp>}