{smcl}
{* *! version 1.1.9  19oct2017}{...}
{viewerdialog stbase "dialog stbase"}{...}
{vieweralsosee "[ST] stbase" "mansection ST stbase"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stfill" "help stfill_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{viewerjumpto "Syntax" "stbase_zh##syntax"}{...}
{viewerjumpto "Menu" "stbase_zh##menu"}{...}
{viewerjumpto "Description" "stbase_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "stbase_zh##linkspdf"}{...}
{viewerjumpto "Options" "stbase_zh##options"}{...}
{viewerjumpto "Examples" "stbase_zh##examples"}
{help stbase:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[ST] stbase} {hline 2}}形成基线数据集{p_end}
{p2col:}({mansection ST stbase:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:stbase} {ifin} [{cmd:,} {it:选项}]

{synoptset 14 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opt at(#)}}将单个/多个记录的生存数据转换为第 {it:#} 个时间的横断面数据集{p_end}
{synopt :{opth g:ap(newvar)}}包含缺口时间的变量名称；默认是 {opt gap} 或 {opt gaptime}{p_end}
{synopt :{opt replace}}覆盖内存中的当前数据{p_end}
{synopt :{opt nosh:ow}}不显示生存设置信息{p_end}

{synopt :{opt nopre:serve}}程序员的选项；见下文 {it:{help stbase##nopreserve:选项}}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}在使用 {cmd:stbase} 之前，您必须使用 {cmd:stset} 设置数据；详见 
{manhelp stset ST}.{p_end}
{p 4 6 2}{opt fweight}s, {opt iweight}s, 和 {opt pweight}s 可以 
使用 {cmd:stset} 指定；详见 {manhelp stset ST}.{p_end}
{p 4 6 2}{opt nopreserve} 不会出现在对话框中.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 设置和工具 > 形成基线数据集}


{marker description}{...}
{title:描述}

{pstd}
不带 {opt at()} 选项的 {cmd:stbase} 将多个记录的生存数据转换为生存数据，所有变量的值设置为基线时的值，基线定义为每个受试者被观察到的最早时间。不带 {opt at()} 的 {cmd:stbase} 不对单个记录的生存数据做任何处理。

{pstd}
带有 {cmd:stbase, at()} 的选项将单个或多个记录的生存数据转换为横断面数据集（不是生存数据），记录指定时间的失败次数。所有变量都被赋予基线时的值，即每个受试者被观察到的最早时间。在这种形式中，可以通过逻辑回归分析单次失败数据，通过泊松回归分析多次失败数据。

{pstd}
{cmd:stbase} 可以与单个或多个记录或单个或多个失败的生存数据一起使用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST stbaseQuickstart:快速开始}

        {mansection ST stbaseRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在该帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt at(#)} 改变 {cmd:stbase} 的功能。没有 {opt at()} 选项时，{cmd:stbase} 生成另一个相关的生存数据集。带有 {opt at()} 选项时，{cmd:stbase} 生成相关的横断面数据集。

{phang}
{opth gap(newvar)} 仅在 {opt at()} 时允许使用；它指定要添加到数据中的新变量名称，包含受试者在进入和在 {it:#} 前不处于风险的时间。如果未指定 {opt gap()}，则新变量将命名为 {opt gap} 或 {opt gaptime}，具体取决于哪个名称在数据中不存在。

{phang}
{opt replace} 指明可以更改内存中的数据，即使数据集在当前状态下尚未保存到磁盘。

{phang}
{opt noshow} 防止 {cmd:stbase} 显示关键的生存变量。此选项很少使用，因为大多数人输入 {cmd:stset, show} 或 
{cmd:stset, noshow} 以一次性设定是否希望在每个生存命令输出的顶部显示这些变量；详见 
{manhelp stset ST}. 

{pstd}
以下选项可与 {cmd:stbase} 一起使用，但未在对话框中显示：

{phang}
{marker nopreserve}
{opt nopreserve} 供程序员使用，将 {cmd:stbase} 作为子程序。它指定 {cmd:stbase} 不保持原始数据集，以便在检测到错误或用户按下 {hi:Break} 时可以恢复。程序员会在其程序中，如果已经保持了原始数据，指定此选项。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse mfail}

{pstd}显示生存设置{p_end}
{phang2}{cmd:. stset}

{pstd}拟合Cox比例风险模型{p_end}
{phang2}{cmd:. stcox x1 x2}

{pstd}形成基线数据集{p_end}
{phang2}{cmd:. stbase, replace}

{pstd}再次拟合Cox模型，使用 {cmd:x1} 和 {cmd:x2} 在基线时的值{p_end}
{phang2}{cmd:. stcox x1 x2}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse stbasexmpl, clear}

{pstd}列出数据{p_end}
{phang2}{cmd:. list, sepby(id)}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset time, id(id) fail(death) time0(time0) exit(time .)}

{pstd}列出数据{p_end}
{phang2}{cmd:. list, sepby(id)}

{pstd}形成基线数据集{p_end}
{phang2}{cmd:. stbase, replace}

{pstd}列出数据{p_end}
{phang2}{cmd:. list, sepby(id)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse stbasexmpl2, clear}

{pstd}列出数据{p_end}
{phang2}{cmd:. list, sepby(id)}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset time, id(id) fail(death) time0(time0)}

{pstd}列出数据{p_end}
{phang2}{cmd:. list, sepby(id)}

{pstd}形成横断面数据集，记录每个受试者在时间5的状态{p_end}
{phang2}{cmd:. stbase, at(5) replace}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stbase.sthlp>}