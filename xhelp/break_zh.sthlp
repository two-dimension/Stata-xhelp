{smcl}
{* *! version 1.1.5  19oct2017}{...}
{vieweralsosee "[P] break" "mansection P break"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] capture" "help capture_zh"}{...}
{vieweralsosee "[P] continue" "help continue_zh"}{...}
{vieweralsosee "[P] quietly" "help noisily"}{...}
{vieweralsosee "[P] varabbrev" "help novarabbrev_zh"}{...}
{viewerjumpto "Syntax" "break_zh##syntax"}{...}
{viewerjumpto "Description" "break_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "break_zh##linkspdf"}{...}
{viewerjumpto "Example" "break_zh##example"}
{help break:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[P] break} {hline 2}}抑制断键{p_end}
{p2col:}({mansection P break:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 25 2}{cmd:nobreak} {it:stata_command}

{p 8 25 2}{cmd:break}{bind:   }{it:stata_command}


    典型用法是

	{cmd:nobreak {c -(}}
		{it:...}
		{help capture_zh} {helpb noisily} {cmd:break} {it:...}
		{it:...}
	{cmd:{c )-}}


{marker description}{...}
{title:描述}

{pstd}
{cmd:nobreak} 暂时关闭对 {hi:Break} 键的识别。它很少使用。 {cmd:break} 暂时在 {cmd:nobreak} 块内重新开启对 {hi:Break} 键的识别。它更是很少使用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P breakRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker example}{...}
{title:示例}

    {cmd:program} {it:...}
            {it:...}
	    {cmd:nobreak {c -(}}
		    {cmd:rename `myv' Result}
		    {cmd:list Result in 1/5}
		    {cmd:rename Result `myv'}
	    {cmd:{c )-}}
            {it:...}
    {cmd:end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <break.sthlp>}