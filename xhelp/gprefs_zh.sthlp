{smcl}
{* *! version 1.0.5  11feb2011}{...}
{viewerjumpto "设置图形偏好" "gprefs_zh##prefs"}{...}
{viewerjumpto "描述" "gprefs_zh##description"}{...}
{viewerjumpto "示例" "gprefs_zh##examples"}
{help gprefs:English Version}
{hline}{...}
{title:过时的命令}

{pstd}
此帮助文件与 Stata 的 {cmd:graph} 命令的 {hi:old} 版本相关。有关现代版本，请参见 {manhelp graph G-2}。

{pstd}
当在版本控制下调用 {cmd:graph} 时（请参见 {manhelp version P}），或者当使用 {cmd:graph7} 或 {cmd:gr7} 命令时，Stata 将运行 {cmd:graph} 的旧版本。


{marker prefs}{...}
{title:设置图形偏好}

{p 8 15 2}{cmd:gprefs} {cmdab:q:uery} {cmd:window}

{p 8 15 2}{cmd:gprefs} {cmd:set} {cmd:window} {cmd:scheme}
{c -(} {cmdab:black:bg} | {cmdab:white:bg} | {cmdab:mono:chrome} |
{cmd:custom1} | {cmd:custom2} | {cmd:custom3} {c )-}

{p 8 15 2}{cmd:gprefs} {cmd:set} {cmd:window} {cmd:usegphsize}
{c -(} {cmd:on} | {cmd:off} {c )-}

{p 8 15 2}{cmd:gprefs} {cmd:set} {cmd:window}
{c -(} {cmd:ysize} | {cmd:xsize} {c )-}
{it:#}{cmd:.}{it:#}

{p 8 15 2}{cmd:gprefs} {cmd:set} {cmd:window} {cmd:displaythick}
{c -(} {cmd:off} | {cmd:on} {c )-}

{p 8 15 2}{cmd:gprefs} {cmd:set} {cmd:window} {cmd:update}


{p 8 15 2}{cmd:gprefs} {cmdab:q:uery} {it:scheme}

{p 8 15 2}{cmd:gprefs} {cmd:set} {it:scheme} {cmd:background_color}
{it:#r #g #b}

{p 8 15 2}{cmd:gprefs} {cmd:set} {it:scheme} {cmd:pen}{it:#}{cmd:_color}
{it:#r #g #b}

{p 8 15 2}{cmd:gprefs} {cmd:set} {it:scheme} {cmd:pen}{it:#}{cmd:_thick}
{it:#t}

{p 8 15 2}{cmd:gprefs} {cmd:set} {it:scheme}
{c -(} {cmd:symmag_}{it:sym} | {cmd:symmag_all} {c )-} {it:#m}


{p 4 12 2}{it:#}{cmd:.}{it:#} 的单位为英寸。{p_end}
{p 4 12 2}{it:scheme} 代表 {cmd:custom1}、 {cmd:custom2} 或
	{cmd:custom3}。{p_end}
{p 4 12 2}{it:#r #g #b} 代表红、绿和蓝的强度值，
	0 <= {it:#} <= 255。{p_end}
{p 4 12 2}{it:#t} 代表厚度，1 <= {it:#} <= 9，1 为
	通常和默认值。{p_end}
{p 4 12 2}{it:#m} 代表放大值，1 <= {it:#} <= 500，100 为
	通常和默认值。{p_end}


{marker description}{...}
{title:描述}

{p 4 4 2}
参见 {help graph7_zh} 以获取 Stata 的旧图形系统及旧 {cmd:graph} 命令的概述。有关现代版本，请参见 {manhelp graph G-2}。

{p 4 4 2}
{cmd:gprefs} 设置旧图形系统的图形偏好。设置的偏好将在 Stata 会话间保留。

{p 4 4 2}
显示在您监视器上的图形以某种方式呈现。该呈现决定了背景颜色、相对于图形其余部分的绘图符号大小等内容。{cmd:gprefs set window scheme} 命令指定在渲染图形时使用的呈现方案。

{p 4 4 2}
您可以选择六种方案：三种是预先录制和固定的（{cmd:blackbg}、{cmd:whitebg} 和 {cmd:monochrome}），另外三种可以根据您的喜好进行定制（{cmd:custom1}、{cmd:custom2} 和 {cmd:custom3}）。

{p 4 4 2}
如果选择 {cmd:custom1}、 {cmd:custom2} 或 {cmd:custom3}，还有许多设置可以通过 {cmd:gprefs set} {it:scheme} 命令指定，其中 {it:scheme} 代表 {cmd:custom1}、 {cmd:custom2} 或 {cmd:custom3}。可设置的设置数量非常令人印象深刻，甚至有些令人不知所措。{cmd:gprefs query} {it:scheme} 命令将显示所有可设定的参数。每个参数都是可以自定义的。

{p 4 4 2}
这些可自定义参数分为四类。

{p 4 4 2}
首先是图形的背景颜色，由 {cmd:gprefs set} {it:scheme} {cmd:background_color} {it:#r #g #b} 设置。三个数字代表红、绿和蓝值（RGB值），并在 0 到 255 的范围内编码，从完全关闭到完全打开。

{p 4 4 2}
其次是九个图形笔的颜色，由 {cmd:gprefs set} {it:scheme} {cmd:pen}{it:#}{cmd:_color} {it:#r #g #b} 设置。三个数字同样是 RGB 值。请记住，Stata 使用笔 1 绘制文本，笔 2 绘制第一个变量，笔 3 绘制第二个变量，依此类推。

{p 4 4 2}
第三是九个图形笔的厚度，由 {cmd:gprefs set} {it:scheme} {cmd:pen}{it:#}{cmd:_thick} {it:#t} 设置。数字 {it:#t} 是从 1 到 9 的厚度值，最细到最厚。

{p 4 4 2}
最后是绘图符号相对于图形其余部分的大小，由 {cmd:gprefs set} {it:scheme} {cmd:symmag_}{it:sym} {it:#m} 设置。数字 {it:#m} 是以百分比为单位的放大因子；100 表示“正常”大小，200 表示两倍，50 表示一半。您可以单独设置符号的大小，也可以使用 {cmd:gprefs set} {it:scheme} {cmd:symmag_all} {it:#m} 设置整体符号大小。这两者都会应用。例如，如果整体符号大小设置为 200，个别符号缩放为 50，则结果将是以大小 100 显示符号。

{p 4 4 2}
此外，您可以在方案外进行四个设置，这些设置称为 {cmd:usegphsize}、 {cmd:xsize}、 {cmd:ysize} 和 {cmd:displaythick}，它们分为两个类别：({cmd:usegphsize}、 {cmd:xsize}、 {cmd:ysize}) 和 ({cmd:displaythick})。

{p 4 4 2}
{cmd:usegphsize} 由 {cmd:gprefs set window usegphsize} 设置，决定图形的“大小”是由图形自身确定，还是您将用自己的大小覆盖它。设置 {cmd:xsize} 和 {cmd:ysize} 可以让您控制这一点。

{p 4 4 2}
最后是 {cmd:displaythick}，默认设置为 {cmd:off}。该方案记录与每个笔相关的厚度，这是打印时非常有用的功能。然而，由于屏幕的相对低分辨率，我们发现图形在监视器上看起来更好，如果忽略那些厚度并将所有笔设为一个屏幕像素宽。如果您设置 {cmd:displaythick on}，Stata 将尊重您所做的厚度设置。


{marker examples}{...}
{title:示例}

{p 4 4 2}
将您的图形呈现方案设置为 {cmd:blackbg}（我们的最爱）。

{p 8 12 2}{cmd:. gprefs set window scheme blackbg}{p_end}
{p 8 12 2}{cmd:. gprefs set window update}

{p 4 4 2}
查看一个自定义方案而不设置它。

{p 8 12 2}{cmd:. gprefs query custom1}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gprefs.sthlp>}