{smcl}
{* *! version 1.0.0  15may2019}{...}
{viewerdialog cmset "dialog cmset"}{...}
{vieweralsosee "[CM] cmset" "mansection CM cmset"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmchoiceset" "help cmchoiceset_zh"}{...}
{vieweralsosee "[CM] cmsample" "help cmsample_zh"}{...}
{vieweralsosee "[CM] cmsummarize" "help cmsummarize_zh"}{...}
{vieweralsosee "[CM] cmtab" "help cmtab_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "cmset_zh##syntax"}{...}
{viewerjumpto "Menu" "cmset_zh##menu"}{...}
{viewerjumpto "Description" "cmset_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cmset_zh##linkspdf"}{...}
{viewerjumpto "Options" "cmset_zh##options"}{...}
{viewerjumpto "Examples" "cmset_zh##examples"}{...}
{viewerjumpto "Stored results" "cmset_zh##results"}
{help cmset:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[CM] cmset} {hline 2}}声明数据为选择模型数据{p_end}
{p2col:}({mansection CM cmset:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
声明数据为横截面选择模型数据

{p 8 16 2}
{cmd:cmset} {it:caseidvar} {it:altvar}
[{cmd:, force}]

{p 8 16 2}
{cmd:cmset} {it:caseidvar}{cmd:,} {opt noalt:ernatives}


{pstd}
声明数据为面板选择模型数据

{p 8 16 2}
{cmd:cmset} {it:panelvar} {it:timevar} {it:altvar}
[{cmd:,} {it:tsoptions} {cmd:force}]

{p 8 16 2}
{cmd:cmset} {it:panelvar} {it:timevar}{cmd:,} {opt noalt:ernatives}


{pstd}
显示数据当前的 cm 设置

{p 8 16 2}
{cmd:cmset}


{pstd}
清除 cm 设置

{p 8 16 2}
{cmd:cmset, clear}


{phang}
{it:caseidvar} 在横截面数据语法中识别个案。
{p_end}
{phang}
{it:altvar} 识别选择集（选择替代品）。{p_end}
{phang}
{it:panelvar} 识别面板，{it:timevar} 识别面板内的时间。{p_end}

{synoptset 18}{...}
{synopthdr:tsoptions}
{synoptline}
{synopt :{help cmset##unitoptions:{it:unitoptions}}}指定 {it:timevar} 的单位{p_end}
{synopt :{help cmset##deltaoption:{it:deltaoption}}}指定 {it:timevar} 单位之间的观察期{p_end}
{synoptline}

{marker unitoptions}{...}
{synopthdr:unitoptions}
{synoptline}
{synopt :({it:default})}{it:timevar} 的单位从 {it:timevar} 的显示格式中获取{p_end}
{synopt :{opt c:locktime}}{it:timevar} 是 {cmd:%tc}：
0=1960年1月1日 00:00:00.000，1=1960年1月1日 00:00:00.001，...{p_end}
{synopt :{opt d:aily}}{it:timevar} 是 {cmd:%td}：
0=1960年1月1日，1=1960年1月2日，...{p_end}
{synopt :{opt w:eekly}}{it:timevar} 是 {cmd:%tw}：
0=1960年第1周，1=1960年第2周，...{p_end}
{synopt :{opt m:onthly}}{it:timevar} 是 {cmd:%tm}：
0=1960年1月，1=1960年2月，...{p_end}
{synopt :{opt q:uarterly}}{it:timevar} 是 {cmd:%tq}：
0=1960年第1季度，1=1960年第2季度，...{p_end}
{synopt :{opt h:alfyearly}}{it:timevar} 是 {cmd:%th}：
0=1960年第1半年度，1=1960年第2半年度，...{p_end}
{synopt :{opt y:early}}{it:timevar} 是 {cmd:%ty}：
1960 = 1960，1961 = 1961，...{p_end}
{synopt :{opt g:eneric}}{it:timevar} 是 {cmd:%tg}：
0 = ?，1 = ?，...{p_end}

{synopt :{opth f:ormat(%fmt)}}指定 {it:timevar} 的格式，然后应用默认规则{p_end}
{synoptline}
{p 4 6 2}
在所有情况下，允许负的 {it:timevar} 值。{p_end}

{marker deltaoption}{...}
{synopthdr:deltaoption}
{synoptline}
{synopt :{opt del:ta(#)}}{cmd:delta(1)} 或 {cmd:delta(2)}{p_end}
{synopt :{cmdab:del:ta((}{help exp_zh:{it:exp}}{cmd:))}}{cmd:delta((7*24))}{p_end}
{synopt :{opt del:ta(# units)}}{cmd:delta(7 days)} 或 {cmd:delta(15 minutes)}
或 {cmd:delta(7 days 15 minutes)}{p_end}
{synopt :{cmdab:del:ta((}{help exp_zh:{it:exp}}{cmd:)} {it:units}{cmd:)}}{cmd:delta((2+3) weeks)}{p_end}
{synoptline}

{p 4 6 2}
允许的单位对于 {cmd:%tc} 和 {cmd:%tC} {it:timevars}:

        seconds    second    secs    sec
        minutes    minute    mins    min
        hours      hour
        days       day
        weeks      week

{p 4 6 2}
以及所有其他 {cmd:%t} {it:timevars}:

        days       day
        weeks      week


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 选择模型 > 设置和工具 > 声明数据为选择模型数据}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cmset} 管理数据集的选择模型设置。您可以使用
{cmd:cmset} 声明内存中的数据为选择模型数据。对于横截面数据，您指定识别个案和选择替代品的变量。对于面板数据，您指定识别面板、时间段和选择替代品的变量。您必须在使用其他 {cmd:cm} 命令之前 {cmd:cmset} 您的数据。

{pstd}
不带参数的 {cmd:cmset} 显示数据当前的设置。
{cmd:cmset} 还根据识别个案、选择替代品和面板的变量对数据进行排序。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection CM cmsetQuickstart:快速开始}

        {mansection CM cmsetRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt noalternatives} 指定未明确识别选择替代品。也就是说，没有选择替代品变量。
默认是您必须指定一个选择替代品变量。

{phang}
{opt force} 抑制由于选择替代品变量 {it:altvar} 造成的错误消息。此选项很少使用。选择替代品变量必须在运行 {opt cm} 命令之前无错误，因此此选项仅更改错误消息发布的时机。使用 {opt force} 选项的一个用途是与 {opt cmset} 一起使用，然后运行 {help cmsample_zh} 来识别选择替代品变量中值不良的观察值。
{opt force} 不会抑制所有错误消息。个案 ID 变量的错误消息和面板数据的时间变量的错误消息不会被抑制。

{phang}
{it:unitoptions} {opt clocktime}、{opt daily}、{opt weekly}、{opt monthly}、
{opt quarterly}、{opt halfyearly}、{opt yearly}、{opt generic}，以及
{opth format(%fmt)} 指定在指定 {it:timevar} 时 {it:timevar} 的记录单位。

{pmore} 
{it:timevar} 通常只是一个计数变量，比如 1、2，...，或年份，比如 2001、2002，...。在其他情况下，{it:timevar} 将是一个格式化的 {cmd:%t} 变量；请参见 {manhelp Datetime D}。在任何情况下，您不需要指定 {it:unitoption}。

{pmore}
只有当 {it:timevar} 是未格式化的时间变量时才会使用这些选项。当您 {opt cmset} 面板选择模型数据时，它也会变成 {opt xtset}。这些选项会简单传递给 {opt xtset}。有关选项详细信息，请参见 {manhelp xtset XT}。

{phang}
{opt delta()} 指定 {it:timevar} 的周期，常用于 {it:timevar} 为 {cmd:%tc} 或 {cmd:%tC} 的情况。{opt delta()} 在其他 {cmd:%t} 格式或未格式化的时间变量中很少使用。如果未指定 {opt delta()}，则假定为 {cmd:delta(1)}。有关选项详细信息，请参见 {manhelp xtset XT}。

{phang}
{opt clear} -- 在 {cmd:cmset,} {cmd:clear} 中使用 -- 使 Stata 忘记数据曾被 {cmd:cmset}。此选项很少使用。请注意，如果您用一个选择替代品变量将数据设置为面板选择模型数据，它们也会变成 {cmd:xtset}。键入 {cmd:cmset,} {cmd:clear} 不会清除 {cmd:xt} 设置。要做到这一点，您必须同时键入 {cmd:xtset,} {cmd:clear}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse carchoice}{p_end}

{pstd}声明数据为选择模型数据{p_end}
{phang2}{cmd:. cmset consumerid car}{p_end}

{pstd}设置{p_end}
{phang2}{cmd:. webuse transport, clear}{p_end}

{pstd}声明数据为面板选择数据{p_end}
{phang2}{cmd:. cmset id t alt}{p_end}

{pstd}列出数据，包括由 {cmd:cmset} 创建的两个变量{p_end}
{phang2}{cmd:. sort id t alt}{p_end}
{phang2}{cmd:. list id t alt _caseid _panelaltid if inlist(id, 1, 2), sepby(t) abbr(11)}{p_end}

{pstd}显示当前设置{p_end}
{phang2}{cmd:. cmset}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:cmset} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:r(n_cases)}}个案数量{p_end}
{synopt :{cmd:r(n_alt_min)}}每个案例的最小选择替代品数量{p_end}
{synopt :{cmd:r(n_alt_avg)}}每个案例的平均选择替代品数量{p_end}
{synopt :{cmd:r(n_alt_max)}}每个案例的最大选择替代品数量{p_end}
{synopt :{cmd:r(altvar_min)}}选择替代品变量的最小值（如果设置为数字）{p_end}
{synopt :{cmd:r(altvar_max)}}选择替代品变量的最大值（如果设置为数字）{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:r(caseid)}}个案 ID 变量的名称{p_end}
{synopt :{cmd:r(altvar)}}选择替代品变量的名称（如果设置）{p_end}

{pstd}
对于面板数据，{cmd:cmset} 还在 {cmd:r()} 中存储以下内容：

{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:r(imin)}}最小面板 ID{p_end}
{synopt :{cmd:r(imax)}}最大面板 ID{p_end}
{synopt :{cmd:r(tmin)}}最小时间{p_end}
{synopt :{cmd:r(tmax)}}最大时间{p_end}
{synopt :{cmd:r(tdelta)}}增量{p_end}
{synopt :{cmd:r(gaps)}}{cmd:1} 如果存在间隔，{cmd:0} 否则{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:r(origpanelvar)}}传递给 {cmd:cmset} 的原始面板变量的名称{p_end}
{synopt :{cmd:r(panelvar)}}面板变量的名称{p_end}
{synopt :{cmd:r(timevar)}}时间变量的名称{p_end}
{synopt :{cmd:r(tdeltas)}}格式化的增量{p_end}
{synopt :{cmd:r(tmins)}}格式化的最小时间{p_end}
{synopt :{cmd:r(tmaxs)}}格式化的最大时间{p_end}
{synopt :{cmd:r(tsfmt)}}{cmd:%}{it:fmt} 的时间变量{p_end}
{synopt :{cmd:r(unit)}}时间变量的单位：{cmd:Clock}、{cmd:clock}、{cmd:daily}、{cmd:weekly}、{cmd:monthly}、{cmd:quarterly}、{cmd:halfyearly}、{cmd:yearly} 或 {cmd:generic}{p_end}
{synopt :{cmd:r(unit1)}}时间变量的单位：{cmd:C}、{cmd:c}、{cmd:d}、{cmd:w}、{cmd:m}、{cmd:q}、{cmd:h}、{cmd:y} 或 {cmd:""}{p_end}
{synopt :{cmd:r(balanced)}}{cmd:unbalanced}、{cmd:weakly balanced} 或 {cmd:strongly balanced}；如果一组面板有相同的时间值，则它们是强平衡的，否则如果时间值数量相同则为弱平衡，否则为不平衡{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cmset.sthlp>}