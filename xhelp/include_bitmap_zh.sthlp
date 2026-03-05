{smcl}
{* *! version 1.0.3  18jan2017}{...}
{vieweralsosee "[R] set" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "include_bitmap_zh##syntax"}{...}
{viewerjumpto "Description" "include_bitmap_zh##description"}{...}
{viewerjumpto "Option" "include_bitmap_zh##option"}
{help include_bitmap:English Version}
{hline}{...}
{title:标题}

{phang}设置在将图像复制到剪贴板时的输出行为（仅限 Mac）


{marker syntax}{...}
{title:语法}

{p 8 22 2}
	{cmd:set include_bitmap} {c -(} {cmd:on} | {cmd:off} {c )-} [{cmd:,}
	{opt perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set include_bitmap} 设置将图像复制到剪贴板时的输出行为。在 macOS 中，PDF 格式是复制到剪贴板的图像的首选格式。然而，许多旧版应用程序，如 Microsoft Office 2004，不支持来自剪贴板的 PDF 图像。当 {cmd:include_bitmap} 为 {cmd:on} 时，Stata 会将图像以 PDF 格式和 TIFF 位图格式复制到剪贴板。这允许 Stata 为现代应用程序提供首选 PDF 图像，同时保持与旧版应用程序的位图图像的兼容性。位图图像依赖于分辨率，缩放或打印效果不佳。在可能的情况下，应使用与 PDF 格式兼容的应用程序以获得最佳输出。

{pstd}
某些现代应用程序，如 Microsoft Office 2008 的 PowerPoint，即使剪贴板中同时存在这两种图像格式，也会错误地粘贴位图图像而不是 PDF 图像。将 {cmd:include_bitmap} 设置为 {cmd:off}，使 Stata 仅将 PDF 图像复制到剪贴板，以避免在 PowerPoint 中出现这种行为。Microsoft Office 2008 的 Word 不会出现这种情况，并且如果剪贴板中同时提供 PDF 和位图图像，则会正确粘贴 PDF 图像。

{pstd}
{cmd:include_bitmap} 的默认值为 {cmd:on}。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定在立即进行更改的同时，记住该设置并使其成为你每次调用 Stata 时的默认设置。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <include_bitmap.sthlp>}