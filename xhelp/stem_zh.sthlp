{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog stem "dialog stem"}{...}
{vieweralsosee "[R] stem" "mansection R stem"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] histogram" "help histogram_zh"}{...}
{vieweralsosee "[R] lv" "help lv_zh"}{...}
{viewerjumpto "Syntax" "stem_zh##syntax"}{...}
{viewerjumpto "Menu" "stem_zh##menu"}{...}
{viewerjumpto "Description" "stem_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "stem_zh##linkspdf"}{...}
{viewerjumpto "Options" "stem_zh##options"}{...}
{viewerjumpto "Examples" "stem_zh##examples"}{...}
{viewerjumpto "Stored results" "stem_zh##results"}
{help stem:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[R] stem} {hline 2}}茎叶图{p_end}
{p2col:}({mansection R stem:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:stem}
{varname}
{ifin}
[{cmd:,} {it:options}]

{synoptset 14 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主}
{synopt:{opt p:rune}}不打印没有叶子的茎{p_end}
{synopt:{opt r:ound(#)}}将数据四舍五入到该值；默认是 {cmd:round(1)}{p_end}
{synopt:{opt t:runcate(#)}}将数据截断到该值{p_end}
{synopt:{opt d:igits(#)}}每个叶子的位数；默认是 {cmd:digits(1)}{p_end}
{synopt:{opt l:ines(#)}}每个 10^{cmd:digits} 区间的茎的数量{p_end}
{synopt:{opt w:idth(#)}}茎的宽度；等于 (10^{cmd:digits})/{opt width}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt by} 是允许的；请参见 {manhelp by D}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 汇总、表格和测试 >}
      {bf:分布图和测试 > 茎叶图}


{marker description}{...}
{title:描述}

{pstd}
{opt stem} 显示茎叶图。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R stemQuickstart:快速入门}

        {mansection R stemRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{opt prune} 防止打印任何没有叶子的茎。

{phang}
{opt round(#)} 将数据四舍五入到该值并以这些单位显示图形。如果未指定 {opt round()}，非整数数据将被自动四舍五入。

{phang}
{opt truncate(#)} 将数据截断到该值并以这些单位显示图形。

{phang}
{opt digits(#)} 设置每个叶子的位数。默认是 1。

{phang}
{opt lines(#)} 设置每个 10^{cmd:digits} 数据区间的茎的数量。 {opt lines()} 的值必须能够整除 10^{cmd:digits}；即，如果指定了 {cmd:digits(1)}，那么 {opt lines()} 必须能整除 10。如果指定了 {cmd:digits(2)}，那么 {opt lines()} 必须能整除 100，等等。只能指定 {opt lines()} 或 {opt width()} 之一。如果都未指定，将自动设定一个合适的值。

{phang}
{opt width(#)} 设置茎的宽度。 {opt lines()} 等于 (10^{cmd:digits})/{opt width}，该选项只是另一种设置 {opt lines()} 的方式。 {opt width()} 的值必须能够整除 10^{cmd:digits}。只能指定 {opt width()} 或 {opt lines()} 之一。如果都未指定，将自动设定一个合适的值。

{pstd}
注意：如果未指定 {opt lines()} 或 {opt width()}，在某些情况下 {opt digits()} 可能会被减小，以使图形更美观。如果设置了 {opt lines()} 或 {opt width()}，用户指定的 {opt digits()} 的值将不会被更改。


{marker examples}{...}
{title:示例}

	{cmd:. webuse stemxmpl}
	{cmd:. stem x}

	{txt}x 的茎叶图

	  {res}2* | 11111
	  2t | 22222333
	  2f | 444455555
	  2s | 666
	  2. | 8889
	  3* | 001{txt}

{pstd}
注意：上述图是五行图（{hi:lines} = 5 和 {hi:width} = 2）。

	{cmd:. stem x, lines(2)}

	{txt}x 的茎叶图

	  {res}2* | 11111222223334444
	  2. | 555556668889
	  3* | 001{txt}

{pstd}
注意： {hi:stem x, width(5)} 将产生与上述相同的图。

	{cmd:. sysuse auto}
	{cmd:. stem weight, lines(1) digits(2)}
	{cmd:. stem weight, lines(1) digits(2) prune}
	{cmd:. stem weight, round(100)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:stem} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(width)}}茎的宽度{p_end}
{synopt:{cmd:r(digits)}}每个叶子的位数；默认是 1{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(round)}}在 {cmd:round()} 中指定的数字{p_end}
{synopt:{cmd:r(truncate)}}在 {cmd:truncate()} 中指定的数字{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stem.sthlp>}