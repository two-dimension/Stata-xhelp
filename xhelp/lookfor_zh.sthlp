{smcl}
{* *! version 1.2.6  19oct2017}{...}
{vieweralsosee "[D] lookfor" "mansection D lookfor"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] describe" "help describe_zh"}{...}
{vieweralsosee "[D] ds" "help ds_zh"}{...}
{viewerjumpto "Syntax" "lookfor_zh##syntax"}{...}
{viewerjumpto "Description" "lookfor_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "lookfor_zh##linkspdf"}{...}
{viewerjumpto "Examples" "lookfor_zh##examples"}{...}
{viewerjumpto "Stored results" "lookfor_zh##results"}
{help lookfor:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[D] lookfor} {hline 2}}在变量名和标签中搜索字符串{p_end}
{p2col:}({mansection D lookfor:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}{cmd:lookfor} {it:{help strings_zh:string}}
    [{it:{help strings_zh:string}} [...]]


{marker description}{...}
{title:描述}

{pstd}
{cmd:lookfor} 通过在所有变量名和标签中搜索
{it:{help strings_zh:string}} 来帮助您找到变量。如果指定了多个 {it:string}，
{cmd:lookfor} 将分别搜索它们。您可以通过将 {it:string} 包裹在双引号中来搜索短语。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D lookforQuickstart:快速入门}

        {mansection D lookforRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nlswork}

{pstd}查找变量名和标签中所有出现的 {cmd:code}{p_end}
{phang2}{cmd:. lookfor code}

{pstd}查找变量名和标签中所有出现的 {cmd:married}{p_end}
{phang2}{cmd:. lookfor married}

{pstd}查找变量名和标签中所有出现的 {cmd:gnp}{p_end}
{phang2}{cmd:. lookfor gnp}

{pstd}查找变量名和标签中所有出现的 {cmd:code} 或 {cmd:married}{p_end}
{phang2}{cmd:. lookfor code married}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse sp500}

{pstd}查找变量名和标签中所有出现的 {cmd:price}{p_end}
{phang2}{cmd:. lookfor price}

{pstd}查找变量名和标签中所有出现的短语 {cmd:price change}{p_end}
{phang2}{cmd:. lookfor "price change"}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:lookfor} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(varlist)}}已找到变量的 varlist{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lookfor.sthlp>}