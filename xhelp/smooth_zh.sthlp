{smcl}
{* *! version 1.1.11  19oct2017}{...}
{viewerdialog smooth "dialog smooth"}{...}
{vieweralsosee "[R] smooth" "mansection R smooth"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] lowess" "help lowess_zh"}{...}
{vieweralsosee "[R] lpoly" "help lpoly_zh"}{...}
{vieweralsosee "[TS] tssmooth" "help tssmooth_zh"}{...}
{viewerjumpto "Syntax" "smooth_zh##syntax"}{...}
{viewerjumpto "Menu" "smooth_zh##menu"}{...}
{viewerjumpto "Description" "smooth_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "smooth_zh##linkspdf"}{...}
{viewerjumpto "Option" "smooth_zh##option"}{...}
{viewerjumpto "Technical note" "smooth_zh##technote"}{...}
{viewerjumpto "Examples" "smooth_zh##examples"}
{help smooth:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] smooth} {hline 2}}稳健非线性平滑器{p_end}
{p2col:}({mansection R smooth:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:smooth}
{it:smoother}
[{cmd:,} {opt t:wice}]
{varname}
{ifin}
{cmd:,}
{opth g:enerate(newvar)}

{pstd}其中 {it:smoother} 指定为
	{it:Sm}[{it:Sm}[{it:...}]]
并且 {it:Sm} 是以下之一

	{c -(}{cmd:1}|{cmd:2}|{cmd:3}|{cmd:4}|{cmd:5}|{cmd:6}|{cmd:7}|{cmd:8}|{cmd:9}{c )-}[{cmd:R}]
	{cmd:3}[{cmd:R}]{cmd:S}[{cmd:S}|{cmd:R}][{cmd:S}|{cmd:R}]{it:...}
	{cmd:E}
	{cmd:H}

{pstd}
在 {it:smoother} 中指定的数字表示运行中位数平滑器的跨度。例如，数字 3 表示每个值将被替换为点和两个相邻数据值的中位数。字母 H 表示应用 Hanning 线性平滑器，作为具有二项权重的跨度-3 平滑器。

{pstd}
字母 E、S 和 R 是可以与运行中位数和平滑器 Hanning 结合的三种调整。首先，平滑的端点可以给予特殊处理。这是由 E 运算符指定的。其次，以 3 为平滑，跨度-3 的运行中位数往往产生平顶的山丘和谷。分割运算符 S “分割”这些重复值，对它们应用端点运算符，然后“重新连接”序列。第三，有时重复奇数字跨度中位数平滑器或分割运算符直到平滑不再变化是有用的。在数字或 S 后面跟着 R 指定这种类型的重复。

{pstd}
最后，{cmd:twice} 运算符指定平滑后，将平滑器重新应用于结果粗糙度，并将任何恢复的信号添加回原始平滑中。

{pstd}
如果需要，可以将字母指定为小写。{bind:{it:smoother} [{cmd:,twice}]} 的示例包括

{pmore}
{cmd:3RSSH} {space 2} {cmd:3RSSH,twice} {space 2} {cmd:4253H} {space 2} {cmd:4253H,twice} {space 2} {cmd:43RSR2H,twice}{p_end}

{pmore}
{cmd:3rssh} {space 2} {cmd:3rssh,twice} {space 2} {cmd:4253h} {space 2} {cmd:4253h,twice} {space 2} {cmd:43rsr2h,twice}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 非参数分析 > 稳健非线性平滑器}


{marker description}{...}
{title:描述}

{pstd}
{opt smooth} 将指定的抗干扰非线性平滑器应用于 {varname} 并将平滑后的序列存储在 {newvar} 中。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R smoothQuickstart:快速入门}

        {mansection R smoothRemarksandexamples:备注和示例}

        {mansection R smoothMethodsandformulas:方法与公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opth generate(newvar)} 是必需的；它指定将包含平滑值的新变量的名称。


{marker technote}{...}
{title:技术说明}

{pstd}
{cmd:smooth} 允许在系列的开头和结尾存在缺失值，但中间不允许存在缺失值。忽略开头和结尾的缺失值。如果您希望忽略系列中间的缺失值，必须在使用 {cmd:smooth} 之前 {cmd:drop} 缺失观察值。当然，这样做将违反 {cmd:smooth} 假设的观察值是均匀间隔的 - 每个观察值代表一年、一个季度或一个月（或一个 1 年的出生率类别）。实际上，只要相邻观察值之间的间距变化不太大，{cmd:smooth} 会产生良好的结果。

{pstd}
平滑通常应用于时间序列，但任何具有自然顺序的变量都可以平滑。例如，平滑器可以应用于记录母亲年龄的出生率（17 岁的出生率、18 岁的出生率等）。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse air2}{p_end}

{pstd}跨度 5 的中位数平滑器{p_end}
{phang2}{cmd:. smooth 5 air, gen(smair)}{p_end}

{pstd}先进行跨度 4 的中位数平滑器，随后进行跨度 6 的中位数平滑器{p_end}
{phang2}{cmd:. smooth 46 air, gen(smair2)}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse turksales, clear}{p_end}

{pstd}一系列包含奇数跨度的三个中位数平滑器，例如，7,5,3，后面再加上四个包含偶数跨度的中位数平滑器，例如，8,6,4,2，应用端点运算符，随后为结果粗糙度应用一个跨度-3 的 Hanning 线性平滑器{p_end}
{phang2}{cmd:. smooth  7538642eh,twice sales , gen(smsales)}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse fishdata, clear}{p_end}

{pstd}四个跨度为 4、2、5 和 3 的中位数平滑器，之后应用端点运算符和一个跨度-3 的 Hanning 线性平滑器，对结果粗糙度应用相同的平滑器{p_end}
{phang2}{cmd:. smooth 4253eh,twice freq, gen(sfreq)}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <smooth.sthlp>}