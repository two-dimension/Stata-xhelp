{smcl}
{* *! version 1.1.7  19oct2017}{...}
{viewerdialog cttost "dialog cttost"}{...}
{vieweralsosee "[ST] cttost" "mansection ST cttost"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] ct" "help ct_zh"}{...}
{vieweralsosee "[ST] ctset" "help ctset_zh"}{...}
{viewerjumpto "语法" "cttost_zh##syntax"}{...}
{viewerjumpto "菜单" "cttost_zh##menu"}{...}
{viewerjumpto "描述" "cttost_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "cttost_zh##linkspdf"}{...}
{viewerjumpto "选项" "cttost_zh##options"}{...}
{viewerjumpto "示例" "cttost_zh##example"}
{help cttost:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[ST] cttost} {hline 2}}将计数时间数据转换为生存时间数据{p_end}
{p2col:}({mansection ST cttost:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}{cmd:cttost} [{cmd:,} {it:options}]

{synoptset 14}{...}
{synopthdr}
{synoptline}
{synopt :{opt t0(t0var)}}条目时间变量的名称{p_end}
{synopt :{opt w:var(wvar)}}频率加权变量的名称{p_end}
{synopt :{opt clear}}覆盖当前内存中的数据{p_end}

{synopt :{opt nop:reserve}}不保存原始数据；程序员命令{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}在使用 {cmd:cttost} 之前，您必须先 {cmd:ctset} 您的数据；请参阅 
{manhelp ctset ST}.{p_end}
{p 4 6 2}{opt nopreserve}不会出现在对话框中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 设置和工具 >}
      {bf:将计数时间数据转换为生存时间数据}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cttost} 将计数时间数据转换为生存时间格式，以便可以使用 Stata 进行分析。请不要将计数时间数据与计数过程数据混淆，后者也可以使用 st 命令进行分析；有关计数数据的定义和示例，请参阅 {manhelp ctset ST}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST cttostQuickstart:快速开始}

        {mansection ST cttostRemarksandexamples:备注和示例}

{pstd}
上述章节未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt t0(t0var)} 指定要创建的新变量的名称，以记录条目时间。 （对于大多数计数时间数据，实际上不需要条目时间变量，因为每个人都在时间 0 进入。）

{pmore}即使条目时间变量是必要的，您也不需要指定此选项。 {cmd:cttost} 将默认选择 {opt t0}、{opt time0} 或 {opt etime}，具体取决于哪个名称在数据中不存在。

{phang}
{opt wvar(wvar)} 指定要创建的新变量的名称，以记录新伪观测的频率权重。计数时间数据实际上转换为频率加权的生存时间数据，并且需要一个变量来记录权重。这听起来比实际情况复杂。需要理解的是 {cmd:cttost} 需要一个新变量名称，该名称将成为生存时间数据的永久组成部分。

{pmore}
如果您未指定 {opt wvar()}，{cmd:cttost} 将默认选择 {opt w}、{opt pop}、{opt weight} 或 {opt wgt}，具体取决于哪个名称在数据中不存在。

{phang}
{opt clear} 指定即使当前数据集未在磁盘上保存，也可以继续进行转换。

{pstd}
下面的选项适用于 {cmd:cttost}，但未显示在对话框中：

{phang}
{opt nopreserve} 通过不保存原始数据来加速转换，原始数据可以在出现问题或按下 {hi:Break} 时恢复。 {opt nopreserve} 是供程序员使用的，用作子例程。程序员可以指定此选项，如果他们已经保存了原始数据。 {opt nopreserve} 不会影响转换。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse cttost}

{pstd}显示关键计数时间变量的身份{p_end}
{phang2}{cmd:. ctset}

{pstd}将计数时间数据转换为生存时间数据{p_end}
{phang2}{cmd:. cttost}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cttost.sthlp>}