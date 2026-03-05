{smcl}
{* *! version 2.1.3  19oct2017}{...}
{vieweralsosee "[R] estimates notes" "mansection R estimatesnotes"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estimates" "help estimates_zh"}{...}
{viewerjumpto "Syntax" "estimates_notes_zh##syntax"}{...}
{viewerjumpto "Description" "estimates_notes_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "estimates_notes_zh##linkspdf"}{...}
{viewerjumpto "Examples" "estimates_notes_zh##examples"}
{help estimates_notes:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[R] estimates notes} {hline 2}}添加注释到估计结果{p_end}
{p2col:}({mansection R estimatesnotes:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{opt est:imates} {opt note:s}{cmd::}
{it:文本}


{p 8 12 2}
{opt est:imates} {opt note:s}

{p 8 12 2}
{opt est:imates} {opt note:s} {opt l:ist}
[{cmd:in} {it:noterange}]


{p 8 12 2}
{opt est:imates} {opt note:s} {cmd:drop}
{cmd:in} {it:noterange}


{phang}
其中 {it:noterange} 是 {it:#} 或 {it:#}{cmd:/}{it:#}，并且 {it:#} 可以是一个数字、字母 {cmd:f}（表示第一个）或字母 {cmd:l}（表示最后一个）。


{marker description}{...}
{title:描述}

{pstd}
{cmd:estimates} {cmd:notes:} {it:文本} 向当前（活动的）估计结果添加注释。

{pstd}
{cmd:estimates} {cmd:notes} 和 {cmd:estimates} {cmd:notes} {cmd:list} 列出当前注释。

{pstd}
{cmd:estimates} {cmd:notes} {cmd:drop} {cmd:in} {it:noterange} 消除指定的注释。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R estimatesnotesQuickstart:快速开始}

        {mansection R estimatesnotesRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress mpg weight displ if foreign}{p_end}

{pstd}将文件名作为注释添加{p_end}
{phang2}{cmd:. estimates notes: file `c(filename)'}

{pstd}将数据签名添加到结果中{p_end}
{phang2}{cmd:. datasignature}{p_end}
{phang2}{cmd:. estimates notes: datasignature report `r(datasignature)'}

{pstd}将结果保存到磁盘{p_end}
{phang2}{cmd:. estimates save foreign}

{pstd}列出注释{p_end}
{phang2}{cmd:. estimates notes list in 1/2}

{pstd}删除第二个注释{p_end}
{phang2}{cmd:. estimates notes drop in 2}

{pstd}显示当前注释{p_end}
{phang2}{cmd:. estimates notes}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estimates_notes.sthlp>}