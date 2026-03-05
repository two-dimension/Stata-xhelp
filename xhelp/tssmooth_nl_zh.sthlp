{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog "tssmooth nl" "dialog tssmooth_nl"}{...}
{vieweralsosee "[TS] tssmooth nl" "mansection TS tssmoothnl"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] tssmooth" "help tssmooth_zh"}{...}
{viewerjumpto "Syntax" "tssmooth nl##syntax"}{...}
{viewerjumpto "Menu" "tssmooth nl##menu"}{...}
{viewerjumpto "Description" "tssmooth nl##description"}{...}
{viewerjumpto "Links to PDF documentation" "tssmooth_nl_zh##linkspdf"}{...}
{viewerjumpto "Options" "tssmooth nl##options"}{...}
{viewerjumpto "Examples" "tssmooth nl##examples"}{...}
{viewerjumpto "Stored results" "tssmooth nl##results"}
{help tssmooth_nl:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[TS] tssmooth nl} {hline 2}}非线性滤波器{p_end}
{p2col:}({mansection TS tssmoothnl:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 21 2}
{cmd:tssmooth} {cmd:nl} {dtype} {newvar} {cmd:=} {it:{help exp_zh}} {ifin}{cmd:,} 
{opt sm:oother}{cmd:(}{it:smoother}[{cmd:,} {opt t:wice} ]{cmd:)}
[{cmd:replace}]

{pstd}
其中 {it:smoother} 被指定为 {it:Sm}[{it:Sm}[{it:...}]]，且 {it:Sm} 是
以下之一{p_end}

	{c -(}{cmd:1}|{cmd:2}|{cmd:3}|{cmd:4}|{cmd:5}|{cmd:6}|{cmd:7}|{cmd:8}|{cmd:9}{c )-}[{cmd:R}]
	{cmd:3}[{cmd:R}]{cmd:S}[{cmd:S}|{cmd:R}][{cmd:S}|{cmd:R}]{it:...}
	{cmd:E}
	{cmd:H}

{pstd}
在 {it:smoother} 中指定的数字代表运行中位数平滑器的跨度。例如，数字 3 表示每个值被替换为该点及其相邻的两个数据值的中位数。字母 {cmd:H} 表示应用汉宁线性平滑器，这是一种具有二项权重的跨度为 3 的平滑器。

{pstd}
字母 {cmd:E}、{cmd:S} 和 {cmd:R} 是三个可以与运行中位数和平滑汉宁结合的改进措施。首先，平滑的端点可以给予特殊处理。这由 {cmd:E} 操作符指定。其次，平滑 3，即跨度为 3 的运行中位数，往往会产生平顶山和谷。分割操作符 {cmd:S} "分割" 这些重复值，对它们应用端点操作符，然后 "重新连接" 系列。第三，有时重复应用奇数跨度中位数平滑器或分割操作符直到平滑不再改变是有用的。在数字或 {cmd:S} 后跟一个 {cmd:R} 指定这种类型的重复。

{pstd}
最后，{cmd:twice} 操作符指定在平滑之后，平滑器将重新应用于结果粗糙值，并将任何恢复的信号加回到原始平滑中。

{pstd}
如果需要，可以以小写字母指定字母。{bind:{it:smoother}[{cmd:, twice}]} 的示例包括

{p 8 8 2}{cmd:3RSSH} {space 2} {cmd:3RSSH,twice} {space 2} {cmd:4253H} {space 2} {cmd:4253H,twice} {space 2} {cmd:43RSR2H,twice}{p_end}
{p 8 8 2}{cmd:3rssh} {space 2} {cmd:3rssh,twice} {space 2} {cmd:4253h} {space 2} {cmd:4253h,twice} {space 2} {cmd:43rsr2h,twice}

{p 4 6 2}在使用 {cmd:tssmooth nl} 之前，您必须先 {cmd:tsset} 您的数据；请参见 {help tsset_zh:[TS] tsset}.{p_end}
{p 4 6 2}{it:exp} 可能包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 平滑器/单变量预测器 >}
    {bf:非线性滤波器}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tssmooth nl} 使用非线性平滑器来识别序列中的基本趋势。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS tssmoothnlQuickstart:快速开始}

        {mansection TS tssmoothnlRemarksandexamples:备注和示例}

        {mansection TS tssmoothnlMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:smooth(}{it:smoother}[{cmd:, twice}]{cmd:)} 是必需的；它指定要使用的非线性平滑器。

{phang}
{opt replace} 如果 {newvar} 已经存在，则会替换 {newvar}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sales2}

{pstd}使用跨度为 5 的中位数平滑器对 {cmd:sales} 进行非线性平滑{p_end}
{phang2}{cmd:. tssmooth nl nl1=sales, smoother(5)}

{pstd}对 {cmd:sales} 进行非线性平滑，先应用跨度为 3 的中位数平滑器两次，再对重复值应用分割操作符两次，最后应用汉宁平滑器{p_end}
{phang2}{cmd:. tssmooth nl nl2=sales, smoother(3RSSH)}

{pstd}与上述相同，除了在平滑后，将平滑器重新应用于结果粗糙值，并将任何恢复的信号加回到原始平滑中{p_end}
{phang2}{cmd:. tssmooth nl nl3=sales, smoother(3RSSH, twice)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:tssmooth nl} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数量{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(method)}}{cmd:nl}{p_end}
{synopt:{cmd:r(smoother)}}指定的平滑器{p_end}
{synopt:{cmd:r(timevar)}}在 {cmd:tsset} 中指定的时间变量{p_end}
{synopt:{cmd:r(panelvar)}}在 {cmd:tsset} 中指定的面板变量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tssmooth_nl.sthlp>}