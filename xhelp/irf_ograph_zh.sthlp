{smcl}
{* *! version 1.1.13  19oct2017}{...}
{viewerdialog "irf ograph" "dialog irf_ograph"}{...}
{vieweralsosee "[TS] irf ograph" "mansection TS irfograph"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] irf" "help irf_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "Syntax" "irf_ograph_zh##syntax"}{...}
{viewerjumpto "Menu" "irf_ograph_zh##menu"}{...}
{viewerjumpto "Description" "irf_ograph_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "irf_ograph_zh##linkspdf"}{...}
{viewerjumpto "Options" "irf_ograph_zh##options"}{...}
{viewerjumpto "Examples" "irf_ograph_zh##examples"}{...}
{viewerjumpto "Stored results" "irf_ograph_zh##results"}
{help irf_ograph:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[TS] irf ograph} {hline 2}}重叠的 IRF 图、动态乘数函数和 FEVD{p_end}
{p2col:}({mansection TS irfograph:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 22 2}
{cmd:irf} {opt og:raph}
{opt (spec_1)}
[{opt (spec_2)}
... [{opt (spec_15)}]]
[{cmd:,}
{it:{help irf_ograph##options_tbl:选项}}]

{pstd}
其中 {opt (spec_k)} 是

{p 8 12 2}
{cmd:(}{it:irfname} {it:impulsevar} {it:responsevar}
	{it:{help irf_ograph##stat:统计}}
	[{cmd:,}
	{it:{help irf_ograph##spec_options:规格选项}}]{cmd:)}

{pstd}
{it:irfname} 是活动 IRF 文件中一组 IRF 结果的名称，或 "{cmd:.}"，表示活动 IRF 文件中的第一个命名结果。
{it:impulsevar} 应指定为所有统计量的内生变量，除了 {cmd:dm} 和 {cmd:cdm}; 对于这两者，指定为外生变量。
{it:responsevar} 是一个内生变量的名称。
{it:stat} 是下面列表中的一个或多个统计量：

{marker stat}{...}
包括帮助 _irf_stats

{marker options_tbl}{...}
{synoptset 24 tabbed}
{synopthdr:选项}
{synoptline}
{syntab:图形}
{synopt:{it:{help irf_ograph##plot_options:图形选项}}}定义 IRF 图{p_end}
{synopt:{opth set(filename)}}使 {it:filename} 变为活动文件{p_end}

{syntab:选项}
{synopt:{it:{help irf_ograph##common_options:公共选项}}}水平和
          步数{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体}
{synopt:{it:twoway_options}}任何除 {opt by()} 外的选项，文档见
      {manhelpi twoway_options G-3}{p_end}
{synoptline}

{marker plot_options}{...}
{synopthdr:图形选项}
{synoptline}
{syntab:主要}
{synopt:{opth set(filename)}}使 {it:filename} 变为活动文件{p_end}
{synopt:{cmdab:ir:f(}{it:irfnames}{cmd:)}}使用 {it:irfnames} IRF 结果集{p_end}
{synopt:{opt i:mpulse(impulsevar)}}使用 {it:impulsevar} 作为冲击变量{p_end}
{synopt:{cmdab:r:esponse:(}{it:endogvars}{cmd:)}}使用内生变量作为
         响应变量{p_end}
{synopt:{opt ci}}向图形添加置信区间{p_end}
{synoptline}

{marker spec_options}{...}
{synopthdr:规格选项}
{synoptline}
{syntab:选项}
{synopt:{it:{help irf_ograph##common_options:公共选项}}}水平和
          步数{p_end}

{syntab:图形}
{synopt:{it:{help cline_options_zh}}}影响绘制线条的呈现{p_end}

{syntab:置信区间图}
{synopt:{opth ciop:ts(area_options)}}影响置信区间的呈现{p_end}
{synoptline}

{marker common_options}{...}
{synopthdr:公共选项}
{synoptline}
{syntab:选项}
{synopt:{opt l:evel(#)}}设定置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{opt lst:ep(#)}}使用 {it:#} 作为第一个步数{p_end}
{synopt:{opt ust:ep(#)}}使用 {it:#} 作为最大步数{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:common_options} 可以在图形规格内、全局或两者都指定。当在图形规格中指定时，{it:common_options} 仅影响使用它们的规格。当在全局提供时，{it:common_options} 影响所有图形规格。当两处都有提供时，图形规格中的选项优先级更高。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > IRF 和 FEVD 分析 >}
    {bf:重叠图}


{marker description}{...}
{title:描述}

{pstd}
{opt irf ograph} 在一个图形上显示 {opt irf} 结果的图{pstd}
要熟悉这个命令，请输入 {bf:{stata db irf ograph}}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS irfographQuickstart:快速入门}

        {mansection TS irfographRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:图形}

{phang}
{it:plot_options} 定义 IRF 图，位于
   {bf:主要}, {bf:图形}, 和 {bf:置信区间图} 标签下。

{phang}
{opth set(filename)} 指定要激活的文件；见
   {manhelp irf_set TS:irf set}。如果未指定 {opt set()}，则使用活动文件。

{dlgtab:主要}

{phang}
{opth set(filename)} 指定要激活的文件；见
   {manhelp irf_set TS:irf set}。如果未指定 {opt set()}，则使用活动文件。

{phang}
{cmd:irf(}{it:irfnames}{cmd:)} 指定要使用的 IRF 结果集。如果未指定 {opt irf()}，则使用活动 IRF 文件中的每个结果。(文件通常只包含一个保存为一个 {it:irfname} 的 IRF 结果集；在这种情况下，使用这些结果。)

{phang}
{cmd:impulse(}{varlist}{cmd:)} 和 
    {cmd:response(}{it:endogvars}{cmd:)} 指定冲击和响应变量。通常每种各指定一个，以绘制一幅图。如果指定多个变量，则为每个冲击-响应组合绘制单独的子图。如果未指定 {opt impulse()} 和 {opt response()}，则为所有冲击和响应变量的组合绘制子图。

{phang}
    {opt ci} 向图形添加置信区间。如果在全局中提供了 {opt ci} 选项，{opt noci} 选项可用于在图形规格中抑制其置信区间。

{dlgtab:图形}

{phang}
{it:cline_options} 影响绘制线条的呈现；见 {manhelpi cline_options G-3}。

{dlgtab:置信区间图}

{phang}
{opt ciopts(area_options)} 影响绘制统计量的置信区间的呈现；见 {manhelpi area_options G-3}。{cmd:ciopts()} 意味着 {cmd:ci}。

{dlgtab:选项}

{phang}
    {opt level(#)} 指定置信带的置信水平，百分比形式；见 {manhelp level R}。

{phang}
    {opt lstep(#)} 指定要包含在图形中的第一个步数或时期。{cmd:lstep(0)} 是默认值。

{phang}
    {opt ustep(#)}, {it:#} {ul:>} 1，指定要包含的最大步数或时期。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是 {manhelpi twoway_options G-3} 中文档的任何选项，不包括 {opt by()}。这些选项包括图形标题选项（见 {manhelpi title_options G-3}）以及将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump if qtr<=tq(1978q4),}
               {cmd:lags(1/2) dfk}{p_end}
{phang2}{cmd:. irf create order1, step(10) set(myirf1, replace)}{p_end}
{phang2}{cmd:. irf create order2, step(10) order(dln_inc dln_inv dln_consump)}

{pstd}绘制两个不同 Cholesky 排列下的正交脉冲响应函数{p_end}
{phang2}{cmd:. irf ograph (order1 dln_inc dln_consump oirf)}
             {cmd:(order2 dln_inc dln_consump oirf)}{p_end}

{pstd}与上述相同，但添加标题{p_end}
{phang2}{cmd:. irf ograph (order1 dln_inc dln_consump oirf)}
       {cmd:(order2 dln_inc dln_consump oirf),}
       {cmd:title("正交脉冲响应函数比较")}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:irf ograph} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(plots)}}图形规格的数量{p_end}
{synopt:{cmd:r(ciplots)}}绘制的置信区间数量{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(irfname}{it:#}{cmd:)}}{it:irfname} 来自
      {cmd:(}{it:spec#}{cmd:)}{p_end}
{synopt:{cmd:r(impulse}{it:#}{cmd:)}}来自
      {cmd:(}{it:spec#}{cmd:)}的冲击{p_end}
{synopt:{cmd:r(response}{it:#}{cmd:)}}来自
      {cmd:(}{it:spec#}{cmd:)}的响应{p_end}
{synopt:{cmd:r(stat}{it:#}{cmd:)}}来自
      {cmd:(}{it:spec#}{cmd:)}的统计数据{p_end}
{synopt:{cmd:r(ci}{it:#}{cmd:)}}来自
      {cmd:(}{it:spec#}{cmd:)}或 {cmd:noci}{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irf_ograph.sthlp>}