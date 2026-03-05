{smcl}
{* *! version 1.1.7  19oct2017}{...}
{viewerdialog range "dialog range"}{...}
{vieweralsosee "[D] range" "mansection D range"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] egen" "help egen_zh"}{...}
{vieweralsosee "[D] obs" "help obs_zh"}{...}
{viewerjumpto "Syntax" "range_zh##syntax"}{...}
{viewerjumpto "Menu" "range_zh##menu"}{...}
{viewerjumpto "Description" "range_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "range_zh##linkspdf"}{...}
{viewerjumpto "Example" "range_zh##example"}
{help range:English Version}
{hline}{...}
{p2colset 1 14 17 2}{...}
{p2col:{bf:[D] range} {hline 2}}生成数值范围{p_end}
{p2col:}({mansection D range:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:range} {varname} {it:#first} {it:#last} [{it:#obs}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 其他变量创建命令 >}
    {bf:生成数值范围}


{marker description}{...}
{title:描述}

{pstd}
{cmd:range} 生成一个数值范围，这对评估和绘制函数非常有用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D rangeQuickstart:快速开始}

        {mansection D rangeRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker example}{...}
{title:示例}

{pstd}清除数据{p_end}
{phang2}{cmd:. drop _all}

{pstd}在 {cmd:x} 上创建 100 个从 0 到 4*pi 的观测{p_end}
{phang2}{cmd:. range x 0 4*_pi 100}

{pstd}创建 {cmd:y} = f(x){p_end}
{phang2}{cmd:. generate y = exp(-x/6)*sin(x)}

{pstd}绘制函数{p_end}
{phang2}{cmd:. line y x}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <range.sthlp>}