{smcl}
{* *! version 1.2.4  19oct2017}{...}
{viewerdialog tsfill "dialog tsfill"}{...}
{vieweralsosee "[TS] tsfill" "mansection TS tsfill"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsappend" "help tsappend_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "tsfill_zh##syntax"}{...}
{viewerjumpto "Menu" "tsfill_zh##menu"}{...}
{viewerjumpto "Description" "tsfill_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "tsfill_zh##linkspdf"}{...}
{viewerjumpto "Option" "tsfill_zh##option"}{...}
{viewerjumpto "Examples" "tsfill_zh##examples"}{...}
{viewerjumpto "Video example" "tsfill_zh##video"}
{help tsfill:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[TS] tsfill} {hline 2}}填充时间变量中的缺口{p_end}
{p2col:}({mansection TS tsfill:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:tsfill} [{cmd:,} {opt f:ull}]

{phang}
在使用 {cmd:tsfill} 之前，您必须先 {cmd:tsset} 或 {cmd:xtset} 数据；请参见 {help tsset_zh:[TS] tsset} 和 {help xtset_zh:[XT] xtset}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 设置和工具 >}
   {bf:填充时间变量中的缺口}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tsfill} 用于填充时间序列数据和面板数据中的缺口，生成包含缺失值的新观测值。 {cmd:tsfill} 在存在序列缺口时并不是获取正确滞后、前导和差异所必需的，因为 Stata 的时间序列运算符会自动处理缺口。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS tsfillQuickstart:快速开始}

        {mansection TS tsfillRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:full} 仅适用于面板数据。在面板数据中，{cmd:tsfill} 默认根据面板的 {it:timevar} 的最小和最大值填充每个面板的观测值。因此，如果第一个面板的时间范围为 5-20，第二个面板的时间范围为 1-15，那么 {cmd:tsfill} 后它们仍然会覆盖相同的时间段；将创建观测值以填充第一个面板中 5-20 的任何缺失时间和第二个面板中 1-15 的缺失时间。

{pmore}
如果指定了 {cmd:full}，则创建观测值，使得两个面板覆盖时间 1-20，这是跨面板的 {it:timevar} 的整体最小值和最大值。


{marker examples}{...}
{title:示例}

{pstd}使用 {cmd:tsfill} 处理时间序列数据{p_end}
{phang2}{cmd:. webuse tsfillxmpl}{p_end}
{phang2}{cmd:. list mdate income}{p_end}
{phang2}{cmd:. tsfill}{p_end}
{phang2}{cmd:. list mdate income}

{pstd}使用 {cmd:tsfill} 处理面板数据{p_end}
{phang2}{cmd:. webuse tsfillxmpl2, clear}{p_end}
{phang2}{cmd:. list edlevel year income}{p_end}
{phang2}{cmd:. tsfill}{p_end}
{phang2}{cmd:. list edlevel year income}{p_end}
{phang2}{cmd:. tsfill, full}{p_end}
{phang2}{cmd:. list edlevel year income}{p_end}


{marker video}{...}
{title:视频示例}

{phang2}{browse "http://www.youtube.com/watch?v=SOQvXICIRNY":格式化和管理日期}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tsfill.sthlp>}