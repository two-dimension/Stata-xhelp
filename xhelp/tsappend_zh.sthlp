{smcl}
{* *! version 1.2.3  19oct2017}{...}
{viewerdialog tsappend "dialog tsappend"}{...}
{vieweralsosee "[TS] tsappend" "mansection TS tsappend"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "tsappend_zh##syntax"}{...}
{viewerjumpto "Menu" "tsappend_zh##menu"}{...}
{viewerjumpto "Description" "tsappend_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "tsappend_zh##linkspdf"}{...}
{viewerjumpto "Options" "tsappend_zh##options"}{...}
{viewerjumpto "Examples" "tsappend_zh##examples"}{...}
{viewerjumpto "Stored results" "tsappend_zh##results"}
{help tsappend:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[TS] tsappend} {hline 2}}向时间序列数据集添加观测值{p_end}
{p2col:}({mansection TS tsappend:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:tsappend}{cmd:,} {c -(} {opt add(#)} | {opt last(date|clock)}
  {opth tsfmt:(strings:string)} {c )-} [{it:选项}]

{synoptset tabbed}{...}
{synopthdr:选项}
{synoptline}
{p2coldent:* {opt add(#)}}添加 {it:#} 个观测值{p_end}
{p2coldent:* {opt last(date|clock)}}在 {it:date} 或 
               {it:clock} 添加观测值{p_end}
{p2coldent:* {opth tsfmt:(strings:string)}}使用时间序列函数 {it:string} 
       与 {opt last(date|clock)} 一起{p_end}
{synopt :{opt panel(panel_id)}}只向 ID 为 {it:panel_id} 的面板添加观测值{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* 要么需要 {opt add(#)}，要么需要 {opt last(date|clock)} 和 
{opt tsfmt(string)}。{p_end}
{p 4 6 2}您必须在使用 {cmd:tsappend} 之前进行 {cmd:tsset} 或 
{cmd:xtset} 数据；请参见 {help tsset_zh:[TS] tsset} 和 {help xtset_zh:[XT] xtset}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 设置和工具 >}
    {bf:向时间序列数据集添加观测值}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tsappend} 将观测值附加到时间序列数据集或面板数据集中。 
{cmd:tsappend} 使用并更新 {cmd:tsset} 或 {cmd:xtset} 设置的信息。 
数据集中的任何间隙都会被删除。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS tsappendQuickstart:快速入门}

        {mansection TS tsappendRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt add(#)} 指定要添加的观测值数量。

{phang}
{opt last(date|clock)} 和 {opth tsfmt:(strings:string)} 必须一起指定， 
并且是 {opt add()} 的替代选项。

{pmore}
{opt last(date|clock)} 指定要添加的最后一个观测值的日期或日期时间。

{pmore}
{opt tsfmt(string)} 指定 Stata 时间序列函数的名称，用于将 {opt last()} 
中指定的日期转换为整数。 函数名称包括 {cmd:tc}（时钟）、{cmd:tC}（时钟）、 
{cmd:td}（每日）、{cmd:tw}（每周）、{cmd:tm}（每月）、{cmd:tq}（每季度）和
{cmd:th}（每半年）。

{pmore}
对于时钟时间，如果 {cmd:last()} 不是从数据中的最后时间开始的单位增量的整数倍， 
则最后添加的时间（如果有）将早于在 {opt last(date|clock)} 中请求的时间。

{pmore}
例如，您可以指定 {bind:{cmd:last(17may2007)}} {cmd:tsfmt(td)}，
{bind:{cmd:last(2001m1)} {cmd:tsfmt(tm)}}, 或
{bind:{cmd:last(17may2007 15:30:00) tsfmt(tc)}}。

{phang}
{opt panel(panel_id)} 指定仅向 ID 为 {opt panel()} 的面板添加观测值。


{marker examples}{...}
{title:时间序列数据示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse tsappend1}

{pstd}显示数据当前是如何 {cmd:tsset} 的{p_end}
{phang2}{cmd:. tsset}

{pstd}显示数据集的一般信息{p_end}
{phang2}{cmd:. describe, short}

{pstd}向数据集末尾添加 12 个观测值{p_end}
{phang2}{cmd:. tsappend, add(12)}

{pstd}显示数据集的一般信息{p_end}
{phang2}{cmd:. describe, short}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse tsappend1, clear}

{pstd}显示数据当前是如何 {cmd:tsset} 的{p_end}
{phang2}{cmd:. tsset}

{pstd}添加 2001 年第一个月的观测值{p_end}
{phang2}{cmd:. tsappend, last(2001m1) tsfmt(tm)}

{pstd}显示数据当前是如何 {cmd:tsset} 的{p_end}
{phang2}{cmd:. tsset}{p_end}
    {hline}


{title:面板数据示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse tsappend3, clear}

{pstd}描述 xt 数据的模式{p_end}
{phang2}{cmd:. xtdescribe}

{pstd}显示 {cmd:t2} 按 {cmd:id} 的汇总信息{p_end}
{phang2}{cmd:. by id: summarize t2}

{pstd}向每个面板添加 6 个观测值（面板结束日期不统一）{p_end}
{phang2}{cmd:. tsappend, add(6)}

{pstd}描述 xt 数据的模式{p_end}
{phang2}{cmd:. xtdescribe}

{pstd}显示 {cmd:t2} 按 {cmd:id} 的汇总信息{p_end}
{phang2}{cmd:. by id: summarize t2}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse tsappend2, clear}

{pstd}添加到 2000 年第七个月的观测值（面板结束日期统一）{p_end}
{phang2}{cmd:. tsappend, last(2000m7) tsfmt(tm)}

{pstd}显示 {cmd:t2} 按 {cmd:id} 的汇总信息{p_end}
{phang2}{cmd:. by id: sum t2}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:tsappend} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(add)}}添加的观测值数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tsappend.sthlp>}