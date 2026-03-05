{smcl}
{* *! version 1.0.5  19oct2017}{...}
{vieweralsosee "[P] varabbrev" "mansection P varabbrev"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "set varabbrev" "help set_varabbrev_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] break" "help break_zh"}{...}
{vieweralsosee "[P] unab" "help unab_zh"}{...}
{viewerjumpto "Syntax" "novarabbrev_zh##syntax"}{...}
{viewerjumpto "Description" "novarabbrev_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "novarabbrev_zh##linkspdf"}{...}
{viewerjumpto "Example" "novarabbrev_zh##example"}
{help novarabbrev:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[P] varabbrev} {hline 2}}控制变量缩写{p_end}
{p2col:}({mansection P varabbrev:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 25 2}{cmd:novarabbrev} {it:stata_command}

{p 8 25 2}{cmd:varabbrev}{bind:   }{it:stata_command}


    典型用法是

	{cmd:novarabbrev {c -(}}
		{it:...}
	{cmd:{c )-}}


{marker description}{...}
{title:描述}

{pstd}
{cmd:novarabbrev} 在变量缩写开启时暂时关闭变量缩写。
{cmd:varabbrev} 在变量缩写关闭时暂时开启变量缩写。
另见 {helpb set varabbrev}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P varabbrevRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker example}{...}
{title:示例}

    {cmd:program} {it:...}
            ... /* 解析输入 */ ...
	    {cmd:novarabbrev {c -(}}
                    ... /* 执行任务 */ ... 
	    {cmd:{c )-}}
            ...
    {cmd:end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <novarabbrev.sthlp>}