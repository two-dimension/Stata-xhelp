{smcl}
{* *! version 1.2.15  12feb2019}{...}
{viewerdialog update "dialog update"}{...}
{vieweralsosee "[R] update" "mansection R update"}{...}
{vieweralsosee "" "--"}{...}
{findalias asgsmusinginternet}{...}
{findalias asgsuusinginternet}{...}
{findalias asgswusinginternet}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ado update" "help ado update"}{...}
{vieweralsosee "[R] net" "help net_zh"}{...}
{vieweralsosee "[R] ssc" "help ssc_zh"}{...}
{vieweralsosee "[P] sysdir" "help sysdir_zh"}{...}
{viewerjumpto "Syntax" "help update##syntax"}{...}
{viewerjumpto "Menu" "help update##menu"}{...}
{viewerjumpto "Description" "help update##description"}{...}
{viewerjumpto "Links to PDF documentation" "update_zh##linkspdf"}{...}
{viewerjumpto "Options" "help update##options"}{...}
{viewerjumpto "Examples" "help update##examples"}{...}
{viewerjumpto "Stored results" "help update##results"}
{help update:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] update} {hline 2}}检查官方更新{p_end}
{p2col:}({mansection R update:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
报告当前已安装 Stata 的更新级别

{p 8 26 2}{cmd:update}


{pstd}
设置更新源

{p 8 26 2}{cmd:update from} {it:location}


{pstd}
比较当前已安装 Stata 的更新级别与源的更新级别

{p 8 26 2}{cmd:update} {opt q:uery} [{cmd:,} {opt from(location)}]


{pstd}
如有必要执行更新

{p 8 26 2}{cmd:update all} [{cmd:,} {opt from(location)} {opt detail}
{opt force} {opt exit}]


{pstd}
设置自动更新（仅限 Mac 和 Windows）

{p 8 26 2}{opt se:t} {cmd:update_query}{space 3}{c -(}{cmd:on}|{cmd:off}{c )-}{p_end}
{p 8 26 2}{opt se:t} {cmd:update_interval} {it:#} {p_end}
{p 8 26 2}{opt se:t} {cmd:update_prompt}{space 2}{c -(}{cmd:on}|{cmd:off}{c )-}


{marker menu}{...}
{title:菜单}

{phang}
{bf:帮助 > 检查更新}


{marker description}{...}
{title:描述}

{pstd}
{opt update} 命令报告当前更新级别并安装 Stata 的官方更新。官方更新是指 StataCorp 原始发货时的更新，而不是例如在 {it:{browse "http://www.stata-journal.com":Stata Journal}} (SJ) 中发布的对 Stata 的补充。这些补充使用 {opt net} 命令安装，并使用 {cmd:ado update} 命令更新；请参见 {manhelp net R} 和 {helpb ado update:[R] ado update}。

{phang}
不带参数的 {opt update} 报告当前已安装 Stata 的更新级别。

{phang}
{opt update from} 设置更新源，可以是目录名称或 URL。如果您连接到互联网，请输入 {cmd:update from http://www.stata.com}。

{phang}
{opt update query} 比较当前已安装 Stata 的更新级别与更新源中的可用更新级别并显示报告。

{phang}
{opt update all} 更新所有必要文件。这是您检查和安装更新时应输入的命令。

{phang}
{opt set update_query} 决定 Stata 启动时是否自动执行 {opt update query}。只有 Mac 和 Windows 平台可以设置为自动更新。

{phang}
{opt set update_interval} {it:#} 设置在执行下一个自动 {opt update query} 前要经过的天数。默认值为 {it:#} 7。该间隔从最后一次执行 {opt update query}（自动或手动）开始计算。只有 Mac 和 Windows 平台可以设置为自动更新。

{phang}
{opt set update_prompt} 决定在执行自动 {opt update query} 之前是否显示对话框。该对话框允许您现在执行 {opt update query}、在下次启动 Stata 时执行或在经过下一个间隔后执行，或者禁用自动 {opt update query}。只有 Mac 和 Windows 平台可以设置为自动更新。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection R updateRemarksandexamples:备注和示例}

{pstd}
以上章节不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt from(location)} 指定更新源的位置。您可以在单个 {opt update} 命令上指定 {opt from()} 选项，或者使用 {opt update from} 命令。两者没有区别。通常情况下，您不需要使用此选项。

{phang}
{opt detail} 指定在更新过程中显示详细输出。

{phang}
{opt force} 指定强制下载所有文件，即使根据日期比较，Stata 认为不必要。通常情况下没有理由指定此选项。

{phang}
{opt exit} 指示 Stata 在更新成功完成后退出。通常情况下没有理由指定此选项。


{marker examples}{...}
{title:示例}

    {cmd:. update query}   （比较您拥有的与更新源）

    {cmd:. update all}     （更新所有必要文件）


{marker results}{...}
{title:存储结果}

{pstd}
不带子命令的 {cmd:update}、{cmd:update from} 和 {cmd:update query} 会将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(inst_exe)}}已安装的可执行文件日期 (*){p_end}
{synopt:{cmd:r(avbl_exe)}}网络可用的可执行文件日期 (*) (**){p_end}
{synopt:{cmd:r(inst_ado)}}已安装的 ado 文件日期 (*){p_end}
{synopt:{cmd:r(avbl_ado)}}网络可用的 ado 文件日期 (*) (**){p_end}
{synopt:{cmd:r(inst_utilities)}}已安装的工具日期 (*){p_end}
{synopt:{cmd:r(avbl_utilities)}}网络可用的工具日期 (*) (**)
{p_end}
{synopt:{cmd:r(inst_docs)}}已安装的文档日期 (*){p_end}
{synopt:{cmd:r(avbl_docs)}}网络可用的文档日期 (*) (**)
{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(name_exe)}}Stata 可执行文件的名称{p_end}
{synopt:{cmd:r(dir_exe)}}可执行文件存储的目录{p_end}
{synopt:{cmd:r(dir_ado)}}ado 文件存储的目录{p_end}
{synopt:{cmd:r(dir_utilities)}}工具存储的目录{p_end}
{synopt:{cmd:r(dir_docs)}}PDF 文档存储的目录{p_end}

{pstd}
注意：

{p 5 7 2}
  * 日期存储为整数，表示自 1960 年 1 月 1 日以来的天数；请参见 {manhelp Datetime D}。

{p 4 7 2}
 ** 这些日期在不带子命令的 {cmd:update} 时不会被存储，因为 {cmd:update} 本身仅报告本地计算机的信息，而不检查网上可用的信息。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <update.sthlp>}