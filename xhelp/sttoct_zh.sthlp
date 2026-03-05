{smcl}
{* *! version 1.1.5  19sep2018}{...}
{vieweralsosee "[ST] sttoct" "mansection ST sttoct"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] ct" "help ct_zh"}{...}
{vieweralsosee "[ST] st_is" "help st_is_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{vieweralsosee "[ST] sttocc" "help sttocc_zh"}{...}
{viewerjumpto "语法" "sttoct_zh##syntax"}{...}
{viewerjumpto "描述" "sttoct_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "sttoct_zh##linkspdf"}{...}
{viewerjumpto "选项" "sttoct_zh##options"}{...}
{viewerjumpto "示例" "sttoct_zh##example"}
{help sttoct:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[ST] sttoct} {hline 2}}将存活时间数据转换为计数时间数据{p_end}
{p2col:}({mansection ST sttoct:查看完整 PDF 手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:sttoct} {it:newfailvar} {it:newcensvar} [{it:newentvar}]
	[{cmd:,} {it:options}]


{synoptset 15}{...}
{synopthdr}
{synoptline}
{synopt :{opth by(varlist)}}按组反映计数，这些组由具有相等值的观测定义的 {it:varlist}{p_end}
{synopt :{opt replace}}即使当前数据未保存，也继续进行转换{p_end}
{synopt :{opt nosh:ow}}不显示 st 设置信息{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
您必须在使用 {cmd:sttoct} 之前先 {cmd:stset} 您的数据；请参见
{manhelp stset ST}。{p_end}
{p 4 6 2}
可以使用 {cmd:stset} 指定 {opt fweight}、{opt iweight} 和 {opt pweight}；请参见 {manhelp stset ST}。{p_end}
{p 4 6 2}
{cmd:sttoct} 没有对话框界面。


{marker description}{...}
{title:描述}

{pstd}
{cmd:sttoct} 将存活时间 (st) 数据转换为计数时间 (ct) 数据；请参见
{manhelp ct ST}。

{pstd}
目前，没有绝对的理由需要这样做。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST sttoctQuickstart:快速入门}

        {mansection ST sttoctRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth by(varlist)} 指定计数按组反映，这些组由具有相等值的观测定义的 {it:varlist}。

{phang}
{opt replace} 指定即使当前数据集未保存，也可以继续进行转换。

{phang}
{opt noshow} 防止 {cmd:sttoct} 显示关键的 st 变量。此选项很少使用，因为大多数人输入 {cmd:stset, show} 或
{cmd:stset, noshow} 来设置他们是否希望在每个 st 命令的顶部看到这些变量；请参见 {manhelp stset ST}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sttoct}

{pstd}显示 st 设置{p_end}
{phang2}{cmd:. st}

{pstd}将存活时间数据转换为计数时间数据{p_end}
{phang2}{cmd:. sttoct ndead2 ncens2}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sttoct.sthlp>}