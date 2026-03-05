{smcl}
{* *! version 1.1.9  19oct2017}{...}
{viewerdialog snapspan "dialog snapspan"}{...}
{vieweralsosee "[ST] snapspan" "mansection ST snapspan"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{viewerjumpto "Syntax" "snapspan_zh##syntax"}{...}
{viewerjumpto "Menu" "snapspan_zh##menu"}{...}
{viewerjumpto "Description" "snapspan_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "snapspan_zh##linkspdf"}{...}
{viewerjumpto "Options" "snapspan_zh##options"}{...}
{viewerjumpto "Examples" "snapspan_zh##examples"}
{help snapspan:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[ST] snapspan} {hline 2}}将快照数据转换为时间跨度数据{p_end}
{p2col:}({mansection ST snapspan:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:snapspan} {it:idvar} {it:timevar} {varlist} [{cmd:,}
	{opt g:enerate(newt0var)} {opt replace}]


{phang}
{it:idvar} 记录受试者ID，可以是字符串或数字。

{phang}
{it:timevar} 记录快照时间；必须是数字，可以以任意刻度记录：日期、小时、分钟、秒等。

{phang}
{varlist} 是“事件”变量，意味着它们在 {it:timevar} 的瞬间发生。 {it:varlist} 还可以包括适用于截止到当前快照时间的追溯性变量。其他变量则假定在快照时被测量，因此适用于快照之后的时间段。请参见 {mansection ST snapspanRemarksandexamplesSpecifyingvarlist:{it:指定 varlist}} 在 {bf:[ST] snapspan} 中。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 设置和工具 >}
        {bf:将快照数据转换为时间跨度数据}


{marker description}{...}
{title:描述}

{pstd}
{cmd:snapspan} 将给定受试者的快照数据转换为生存分析命令所需的时间跨度数据，如 {cmd:stcox}、{cmd:streg} 和 {cmd:stset}。 {cmd:snapspan} 替换指定变量中的数据。转换的变量可以是发生在快照瞬间的“事件”，或是适用于截止到当前快照时间的追溯性变量。  


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ST snapspanQuickstart:快速入门}

        {mansection ST snapspanRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt generate(newt0var)} 在包含每个转换后的时间跨度记录的入场时间的数据集中添加 {it:newt0var}。

{phang}
{opt replace} 指定允许更改内存中的数据，即使数据集在当前形式下尚未保存到磁盘。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse snapspan}{p_end}

{pstd}列出数据{p_end}
{phang2}{cmd:. list, sepby(id)}

{pstd}将快照数据转换为时间跨度数据{p_end}
{phang2}{cmd:. snapspan id time event}

{pstd}列出结果数据{p_end}
{phang2}{cmd:. list, sepby(id)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse snapspan, clear}

{pstd}将快照数据转换为时间跨度数据，创建包含每个转换后的时间跨度记录的入场时间的 {cmd:time0}{p_end}
{phang2}{cmd:. snapspan id time event, generate(time0)}

{pstd}列出结果数据{p_end}
{phang2}{cmd:. list id time0 time x1 x2 event, sepby(id)}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <snapspan.sthlp>}