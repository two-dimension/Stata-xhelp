{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway connected" "mansection G-2 graphtwowayconnected"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway scatter" "help scatter_zh"}{...}
{viewerjumpto "语法" "twoway_connected_zh##syntax"}{...}
{viewerjumpto "菜单" "twoway_connected_zh##menu"}{...}
{viewerjumpto "描述" "twoway_connected_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "twoway_connected_zh##linkspdf"}{...}
{viewerjumpto "选项" "twoway_connected_zh##options"}{...}
{viewerjumpto "备注" "twoway_connected_zh##remarks"}
{help twoway_connected:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[G-2] graph twoway connected} {hline 2}}双向连线图{p_end}
{p2col:}({mansection G-2 graphtwowayconnected:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 55 2}
{cmdab:tw:oway}
{cmdab:con:nected}
{it:变量列表}
{ifin}
[{it:{help twoway connected##weight:权重}}]
[{cmd:,}
{it:{help scatter_zh:散点图选项}}]

{pstd}
其中 {it:变量列表} 为 

		{it:y_1} [{it:y_2} [...]] {it:x}


{marker weight}{...}
{pstd}
允许使用 {cmd:aweight}s,
{cmd:fweight}s 和
{cmd:pweight}s；请参见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双向图（散点图、线图等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} {cmd:connected} 绘制连线图。在连线图中，显示标记并连接点。

{pstd}
{cmd:connected} 是 {it:绘图类型}，如在 {manhelp twoway G-2:graph twoway} 中定义。因此 {cmd:connected} 的语法为

	{cmd:. graph twoway connected} ...

	{cmd:. twoway connected} ...

{pstd}
作为一种绘图类型，{cmd:connected} 可以与 {helpb twoway} 家族中的其他绘图类型组合，如：

	{cmd:. twoway (connected} ...{cmd:) (scatter} ...{cmd:) (lfit} ...{cmd:)} ...


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphtwowayconnectedQuickstart:快速入门}

        {mansection G-2 graphtwowayconnectedRemarksandexamples:备注和示例}

{pstd}
上述章节不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:散点图选项}
    是任何由 {cmd:graph} {cmd:twoway}
    {cmd:scatter} 命令允许的选项；请参阅 {manhelp scatter G-2:graph twoway scatter}。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:connected} 实际上是 {cmd:scatter}，不同之处在于默认情况下点是连接的：

	默认 {cmd:connect()} 选项：  {cmd:connect(l ...)}

{pstd}
因此输入

	{cmd:. twoway connected yvar xvar}

{pstd}
与输入

	{cmd:. scatter yvar xvar, connect(l)}

{pstd}
的结果是相同的。

{pstd}
您同样可以轻松地将 {cmd:connected} 转换为 {cmd:scatter}：输入

	{cmd:. scatter yvar xvar}

{pstd}
与输入

	{cmd:. twoway connected yvar xvar, connect(none)} 

{pstd}
是一样的。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_connected.sthlp>}