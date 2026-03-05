{smcl}
{* *! version 1.1.8  19oct2017}{...}
{vieweralsosee "[P] trace" "mansection P trace"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] program" "help program_zh"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] profiler" "help profiler_zh"}{...}
{viewerjumpto "Syntax" "trace_zh##syntax"}{...}
{viewerjumpto "Description" "trace_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "trace_zh##linkspdf"}{...}
{viewerjumpto "Options" "trace_zh##options"}{...}
{viewerjumpto "Examples" "trace_zh##examples"}
{help trace:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[P] trace} {hline 2}}调试 Stata 程序{p_end}
{p2col:}({mansection P trace:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    是否追踪程序执行

{phang2}{cmd:set} {cmdab:tr:ace} {c -(} {cmd:on} | {cmd:off} {c )-}


    在嵌套程序中显示 {it:#} 级别的追踪

{phang2}{cmd:set} {cmdab:traced:epth} {it:#}


    是否在宏扩展之后显示行

{phang2}{cmd:set} {cmdab:tracee:xpand} {c -(} {cmd:on} | {cmd:off} {c )-}
	[{cmd:,} {cmdab:perm:anently} ]


    是否显示水平分隔线

{phang2}{cmd:set} {cmdab:traces:ep} {c -(} {cmd:on} |
	{cmd:off} {c )-} [{cmd:,} {cmdab:perm:anently} ]


    是否根据嵌套级别缩进行

{phang2}{cmd:set} {cmdab:tracei:ndent} {c -(} {cmd:on} | {cmd:off} {c )-}
	[{cmd:,} {cmdab:perm:anently} ]


    是否显示嵌套级别

{phang2}{cmd:set} {cmdab:tracen:umber} {c -(} {cmd:on} | {cmd:off} {c )-}
	[{cmd:,} {cmdab:perm:anently} ]


    在追踪输出中高亮显示模式

{phang2}{cmd:set} {cmdab:traceh:ilite} {cmd:"}{it:pattern}{cmd:"}
	[{cmd:,} {cmd:word} ]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:trace} {cmd:on} 追踪程序的执行以用于调试。
{cmd:set} {cmd:trace} {cmd:off} 在设置为开启后，关闭追踪。
                                                                                
{pstd}
{cmd:set} {cmd:tracedepth} 指定在追踪嵌套程序时下降的级别。默认值为 {cmd:32000}，相当于无限制。
                                                                                
{pstd}
{cmd:set} {cmd:traceexpand} 指示是否显示宏扩展前后的行。默认值为 {cmd:on}。
                                                                                
{pstd}
{cmd:set} {cmd:tracesep} 指示是否在进入或退出子程序时显示显示子程序名称的水平分隔线。默认值为 {cmd:on}。
                                                                                
{pstd}
{cmd:set} {cmd:traceindent} 指示显示的代码行是否应根据嵌套级别进行缩进。默认值为 {cmd:on}。
                                                                                
{pstd}
{cmd:set} {cmd:tracenumber} 指示是否在行首显示嵌套级别。主程序中的行以 01 为前缀；由主程序调用的子程序中的行以 02 为前缀等等。默认值为 {cmd:off}。

{pstd}
{cmd:set} {cmd:tracehilite} 使指定的 {it:pattern} 在追踪输出中高亮显示。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P traceRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除了立即更改外，还将 {cmd:traceexpand}、{cmd:tracesep}、{cmd:traceindent} 和 
{cmd:tracenumber} 设置为默认设置，以便在调用 Stata 时记住这些设置。

{phang}
{cmd:word} 仅高亮显示由非字母数字字符分隔的标记。这包括每行开头或结尾由非字母数字字符分隔的标记。


{marker examples}{...}
{title:示例}

        {cmd:. cii proportions 10 1}

{pstd}追踪程序的执行{p_end}
{phang2}{cmd:. set trace on}

        {cmd:. cii proportions 10 1}

{pstd} suppress printing of trace separator lines{p_end}
{phang2}{cmd:. set tracesep off}

        {cmd:. cii proportions 10 1}

{pstd}启用 {cmd:tracesep}{p_end}
{phang2}{cmd:. set tracesep on}

{pstd}抑制宏扩展后行的打印{p_end}
{phang2}{cmd:. set traceexpand off}

        {cmd:. cii proportions 10 1}

{pstd}启用 {cmd:traceexpand}{p_end}
{phang2}{cmd:. set traceexpand on}

{pstd}显示嵌套级别{p_end}
{phang2}{cmd:. set tracenumber on}

        {cmd:. cii means 1 27, poisson}

{pstd}不要根据嵌套级别缩进代码行{p_end}
{phang2}{cmd:. set traceindent off}

        {cmd:. cii means 1 27, poisson}

{pstd}关闭 {cmd:tracenumber}{p_end}
{phang2}{cmd:. set tracenumber off}

{pstd}启用 {cmd:traceindent}{p_end}
{phang2}{cmd:. set traceindent on}

{pstd}在代码中高亮显示 {cmd:poisson}{p_end}
{phang2}{cmd:. set tracehilite poisson}

        {cmd:. cii means 1 27, poisson}

{pstd}关闭 {cmd:trace}{p_end}
{phang2}{cmd:. set trace off}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <trace.sthlp>}