{smcl}
{* *! version 1.0.6  19oct2017}{...}
{viewerdialog "graph replay" "dialog graph_replay"}{...}
{vieweralsosee "[G-2] graph replay" "mansection G-2 graphreplay"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph close" "help graph_close_zh"}{...}
{vieweralsosee "[G-2] graph display" "help graph_display_zh"}{...}
{vieweralsosee "[G-2] graph manipulation" "help graph_manipulation_zh"}{...}
{vieweralsosee "[G-2] graph use" "help graph_use_zh"}{...}
{viewerjumpto "Syntax" "graph_replay_zh##syntax"}{...}
{viewerjumpto "Menu" "graph_replay_zh##menu"}{...}
{viewerjumpto "Description" "graph_replay_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_replay_zh##linkspdf"}{...}
{viewerjumpto "Options" "graph_replay_zh##options"}{...}
{viewerjumpto "Remarks" "graph_replay_zh##remarks"}{...}
{viewerjumpto "Stored results" "graph_replay_zh##results"}
{help graph_replay:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[G-2] graph replay} {hline 2}}重放多个图形{p_end}
{p2col:}({mansection G-2 graphreplay:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
重放内存中的命名图形

{p 8 23 2}
{cmdab:gr:aph}
{cmd:replay}
{it:name}
[{it:name} ...]
[{cmd:,}
{it:options}]


{pstd}
重放内存中的所有图形

{p 8 23 2}
{cmdab:gr:aph}
{cmd:replay}
[{cmd:_all}]
[{cmd:,}
{it:options}]


{phang}
{it:name} 是存储在内存中或磁盘上的图形名称，或者是存储在内存中或磁盘上的图形的部分名称，使用 {cmd:?} 和 {cmd:*} 通配符。

{synoptset 12}{...}
{synopthdr}
{synoptline}
{p2col:{opt noclose}}当下一个图形显示时，重放图形的图形窗口不关闭{p_end}
{synopt :{opt wait}}暂停直到 {hline 2}{cmd:more}{hline 2} 条件解除{p_end}
{p2col:{opt sleep(#)}}在显示下一个图形之前延迟 {it:#} 秒；默认为 {cmd:sleep(3)}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 管理图形 > 重放多个图形}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:replay} 显示存储在内存中和当前目录下存储的图形。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphreplayQuickstart:快速入门}

        {mansection G-2 graphreplayRemarksandexamples:备注与示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:noclose} 指定在下一个图形显示时不关闭重放图形的图形窗口。

{phang}
{opt wait} 使 {cmd:graph replay} 显示 {hline 2}{cmd:more}{hline 2} 并暂停，直到按下任意键，然后再生成下一个图形。 {opt wait} 临时忽略使用 {cmd:set more off} 指定的全局设置。

{phang}
{cmd:sleep()} 指定 {cmd:graph replay} 在显示下一个图形之前等待的秒数。默认为 {cmd:sleep(3)}。


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {manhelp graph_manipulation G-2:图形操作} 以获取图形操作命令的介绍。

{pstd}
不带 {it:name} 的 {cmd:graph} {cmd:replay} 显示内存中名为 {cmd:Graph__1}、{cmd:Graph__2} 等图形（如果存在）。 {cmd:graph} {cmd:replay} {cmd:_all} 是等效的。

{pstd}
您可以指定要显示的图形名称列表（包括内存中和磁盘上的）：

	{cmd:. graph replay Graph1 Graph5 mygraph.gph}

{pstd}
您可以指定图形名称的模式（包括内存中和磁盘上的）：

	{cmd:. graph replay Graph* fig*.gph}

{pstd}
您可以结合上述两种规格：

	{cmd:. graph replay Graph1 Graph5 mygraph.gph Graph* fig*.gph}

{pstd}
默认情况下，{cmd:graph replay} 在显示下一个图形之前暂停三秒。您可以使用 {cmd:sleep()} 选项来更改延迟间隔。 {cmd:sleep(0)} 意味着没有延迟。

{pstd}
您可以使用 {cmd:wait} 选项使 {cmd:graph replay} 显示 {hline 2}{cmd:more}{hline 2} 并在显示下一个图形之前等待任意键的按下。

{pstd}
默认情况下，重放图形的图形窗口在显示下一个重放图形时会关闭。您可以指定 {cmd:noclose} 以防止图形窗口关闭。然后，您可以在需要时手动关闭窗口。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:graph} {cmd:replay} 在 {cmd:r()} 中存储以下内容：

{synoptset 14 tabbed}{...}
{p2col 5 14 18 2: 宏}{p_end}
{synopt:{cmd:r(list)}}重放的图形名称{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_replay.sthlp>}