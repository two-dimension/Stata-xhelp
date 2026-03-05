{smcl}
{* *! version 1.2.3  15oct2018}{...}
{viewerdialog use "dialog use_dlg"}{...}
{viewerdialog "use with options" "dialog use_option"}{...}
{vieweralsosee "[D] use" "mansection D use"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] compress" "help compress_zh"}{...}
{vieweralsosee "[D] datasignature" "help datasignature_zh"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{vieweralsosee "[D] save" "help save_zh"}{...}
{vieweralsosee "[D] sysuse" "help sysuse_zh"}{...}
{vieweralsosee "[D] webuse" "help webuse_zh"}{...}
{viewerjumpto "Syntax" "use_zh##syntax"}{...}
{viewerjumpto "Menu" "use_zh##menu"}{...}
{viewerjumpto "Description" "use_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "use_zh##linkspdf"}{...}
{viewerjumpto "Options" "use_zh##options"}{...}
{viewerjumpto "Examples" "use_zh##examples"}
{help use:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[D] use} {hline 2}}加载 Stata 数据集{p_end}
{p2col:}({mansection D use:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
加载 Stata 格式的数据集

{p 8 12 2}
{opt u:se}
{it:{help filename_zh}}
[{cmd:,}
{opt clear}
{opt nol:abel}]


{phang}
加载 Stata 格式数据集的子集

{p 8 12 2}
{opt u:se}
[{varlist}]
{ifin}
{cmd:using}
{it:{help filename_zh}}
[{cmd:,}
{opt clear}
{opt nol:abel}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 打开...}


{marker description}{...}
{title:描述}

{pstd}
{opt use} 将先前通过 {opt save} 保存的 Stata 格式数据集加载到内存中。如果指定 {it:{help filename_zh}} 时没有扩展名，则假定为 {cmd:.dta}。如果您的 {it:filename} 包含空格，请记得用双引号括起来。

{pstd}
在 {opt use} 的第二种语法中，可以读取数据的子集。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D useQuickstart:快速入门}

        {mansection D useRemarksandexamples:备注和示例}

{pstd}
上述章节未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt clear} 指定可以替换内存中的数据，即使当前数据尚未保存到磁盘。

{phang}
{opt nolabel} 防止加载已保存数据中的值标签。您几乎不可能需要指定此选项。


{marker examples}{...}
{title:示例}

{phang}{cmd:. use https://www.stata-press.com/data/r16/auto}{p_end}
{phang}{cmd:. replace rep78 = 3 in 12}{p_end}

{phang}{cmd:. use https://www.stata-press.com/data/r16/auto, clear}{p_end}
{phang}{cmd:. keep make price mpg rep78 weight foreign}{p_end}
{phang}{cmd:. save myauto}{p_end}

{phang}{cmd:. use make rep78 foreign using myauto}{p_end}
{phang}{cmd:. describe}{p_end}

{phang}{cmd:. use if foreign == 0 using myauto}{p_end}
{phang}{cmd:. tab foreign, nolabel}{p_end}
{phang}{cmd:. use using myauto if foreign==1}{p_end}
{phang}{cmd:. tab foreign, nolabel}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <use.sthlp>}