{smcl}
{* *! version 1.1.3  12dec2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] moptimize()" "help mf_moptimize_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] mlopts" "help mlopts_zh"}{...}
{viewerjumpto "Syntax" "mf_moptimize_init_mlopts_zh##syntax"}{...}
{viewerjumpto "Description" "mf_moptimize_init_mlopts_zh##description"}{...}
{viewerjumpto "Remarks" "mf_moptimize_init_mlopts_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_moptimize_init_mlopts_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_moptimize_init_mlopts_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_moptimize_init_mlopts_zh##source"}
{help mf_moptimize_init_mlopts:English Version}
{hline}{...}
{title:标题}

{p2colset 5 38 40 2}{...}
{p2col:{hi:[M-5] moptimize_init_mlopts()} {hline 2}}moptimize() 的 ml 选项解析器{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{it:(void)}
{cmd:moptimize_init_mlopts(}{it:M}{cmd:,} {it:string scalar mopts}{cmd:)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:moptimize_init_mlopts()} 将 {it:mopts} 中的选项应用于 {it:M}，其中 {it:mopts} 假定包含已由 {help mlopts_zh} 命令解析的 {help maximize_zh} 选项。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
您有一个 Stata 程序，其语法为

{p 8 8 2}
{cmd:syntax }{it:varlist} [{cmd:, }{it:program_options} {cmd:*}]

{p 4 4 2}
并且正在使用以下方式解析标准的 maximize 选项

{p 8 8 2}
{cmd:mlopts }{it:mlopts options}{cmd:, }{it:`options'}

{p 4 4 2}
在您的 Mata 代码内部，您创建一个 {cmd:moptimize()} 对象

{p 8 8 2}
{it:M}{cmd: = moptimize_init()}

{p 4 4 2}
并且在之后某处，您通过输入以下命令将宏 {it:mlopts} 中指定的选项应用于 {cmd:moptimize()} 对象 {it:M}：

{p 8 8 2}
{cmd:moptimize_init_mlopts(}{it:M}{cmd:, st_local("}{it:mlopts}{cmd:"))}


{marker conformability}{...}
{title:兼容性}

    {cmd:moptimize_init_mlopts(}{it:M}{cmd:, }{it:mopts}{cmd:)}
		{it:M}    :  1 {it:x} 1 
		{it:mopts}:  1 {it:x} 1 


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
第一个参数 {it:M} 必须是 {cmd:moptimize_init()} 的返回值。

{p 4 4 2}
字符串标量 {it:mopts} 应包含在 {manhelp mlopts P} 中找到的以空格分隔的选项。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view moptimize_init_mlopts.mata, adopath asis:moptimize_init_mlopts.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_moptimize_init_mlopts.sthlp>}