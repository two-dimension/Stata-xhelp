{smcl}
{* *! version 1.1.7  19oct2017}{...}
{viewerdialog inspect "dialog inspect"}{...}
{vieweralsosee "[D] inspect" "mansection D inspect"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] codebook" "help codebook_zh"}{...}
{vieweralsosee "[D] compare" "help compare_zh"}{...}
{vieweralsosee "[D] describe" "help describe_zh"}{...}
{vieweralsosee "[D] ds" "help ds_zh"}{...}
{vieweralsosee "[D] isid" "help isid_zh"}{...}
{vieweralsosee "[R] lv" "help lv_zh"}{...}
{vieweralsosee "[R] summarize" "help summarize_zh"}{...}
{vieweralsosee "[R] table" "help table_zh"}{...}
{vieweralsosee "[R] tabulate oneway" "help tabulate_oneway_zh"}{...}
{vieweralsosee "[R] tabulate twoway" "help tabulate_twoway_zh"}{...}
{vieweralsosee "[R] tabulate, summarize()" "help tabulate_summarize_zh"}{...}
{viewerjumpto "Syntax" "inspect_zh##syntax"}{...}
{viewerjumpto "Menu" "inspect_zh##menu"}{...}
{viewerjumpto "Description" "inspect_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "inspect_zh##linkspdf"}{...}
{viewerjumpto "Examples" "inspect_zh##examples"}{...}
{viewerjumpto "Stored results" "inspect_zh##results"}
{help inspect:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[D] inspect} {hline 2}}显示数据属性的简单摘要{p_end}
{p2col:}({mansection D inspect:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{opt ins:pect}
[{varlist}]
{ifin}

{p 4 6 2}
{opt by} 是允许的；请参见 {manhelp by D}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 描述数据 > 检查变量}


{marker description}{...}
{title:描述}

{pstd}
{opt inspect} 命令提供数字变量的快速摘要，这与 {cmd:summarize} 或 {cmd:tabulate} 提供的摘要不同。它报告负值、零值和正值的数量；整数和非整数的数量；唯一值的数量；缺失值的数量；并生成一个小直方图。其目的不是进行分析，而是帮助您快速熟悉未知数据。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D inspectQuickstart:快速入门}

        {mansection D inspectRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}

{pstd}显示 {cmd:mpg} 的简单摘要{p_end}
{phang2}{cmd:. inspect mpg}

    {hline}
    设置
{phang2}{cmd:. sysuse census}

{pstd}显示 {cmd:region} 的简单摘要，这是一个带有值标签的变量{p_end}
{phang2}{cmd:. inspect region}

    {hline}
    设置
{phang2}{cmd:. sysuse citytemp}

{pstd}显示 {cmd:tempjan} 的简单摘要，这是一个具有缺失值的变量{p_end}
{phang2}{cmd:. inspect tempjan}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:inspect} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数{p_end}
{synopt:{cmd:r(N_neg)}}负观察数{p_end}
{synopt:{cmd:r(N_0)}}等于0的观察数{p_end}
{synopt:{cmd:r(N_pos)}}正观察数{p_end}
{synopt:{cmd:r(N_negint)}}负整数观察数{p_end}
{synopt:{cmd:r(N_posint)}}正整数观察数{p_end}
{synopt:{cmd:r(N_unique)}}唯一值的数量，如果超过99则为 .{p_end}
{synopt:{cmd:r(N_undoc)}}未记录值的数量，如果没有标签则为 .{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <inspect.sthlp>}