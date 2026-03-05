{smcl}
{* *! version 1.2.3  19oct2017}{...}
{viewerdialog "irf cgraph" "dialog irf_cgraph"}{...}
{vieweralsosee "[TS] irf cgraph" "mansection TS irfcgraph"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] irf" "help irf_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "Syntax" "irf_cgraph_zh##syntax"}{...}
{viewerjumpto "Menu" "irf_cgraph_zh##menu"}{...}
{viewerjumpto "Description" "irf_cgraph_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "irf_cgraph_zh##linkspdf"}{...}
{viewerjumpto "Options" "irf_cgraph_zh##options"}{...}
{viewerjumpto "Examples" "irf_cgraph_zh##examples"}{...}
{viewerjumpto "Stored results" "irf_cgraph_zh##results"}
{help irf_cgraph:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[TS] irf cgraph} {hline 2}}组合IRFs、动态乘数函数和FEVD的图{p_end}
{p2col:}({mansection TS irfcgraph:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:irf}
{opt cg:raph}
{opt (spec_1)}
[{opt (spec_2)}
...
[{cmd:(}{it:spec_N}{cmd:)}]]
[{cmd:,}
{it:{help irf_cgraph##options_table:选项}}]


{pstd}
其中 {cmd:(}{it:spec_k}{cmd:)} 是

{p 8 12 2}
{cmd:(}{it:irfname}
{it:impulsevar}
{it:responsevar}
{it:{help irf_cgraph##stat:统计量}}
[{cmd:,}
{it:{help irf_cgraph##spec_options:规格选项}}]{cmd:)}

{pstd}
{it:irfname} 是活动IRF文件中一组IRF结果的名称。
{it:impulsevar} 应该为所有统计量指定为内生变量，除非是 {cmd:dm} 和 {cmd:cdm}；对于那些，应指定为外生变量。
{it:responsevar} 是一个内生变量名称。
{it:stat} 是下面列表中的一个或多个统计量：

{marker stat}{...}
包含帮助 _irf_stats
包含帮助 _irf_stats_notes

{marker options_table}{...}
{synoptset 27 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt:{opth set(filename)}}使 {it:filename} 变为活动{p_end}

{syntab:选项}
{synopt:{it:{help irf_cgraph##combine_options:combine_options}}}影响组合图的外观{p_end}

{syntab:Y轴, X轴, 标题, 图例, 整体}
{synopt:{it:twoway_options}}除 {opt by()} 之外的任何选项在 {manhelpi twoway_options G-3} 中有文档说明{p_end}

{p2coldent:* {it:{help irf_cgraph##spec_options:规格选项}}}图形及其置信区间的级别、步骤和呈现方式{p_end}

{synopt :{opt in:dividual}}单独绘制每个组合的图形{p_end}
{synoptline}
{p 4 6 2}* {it:spec_options} 在对话框中的多个选项卡中出现。{p_end}
{p 4 6 2}{opt individual} 不在对话框中出现。{p_end}

{marker spec_options}{...}
{synopthdr:规格选项}
{synoptline}
{syntab:主要}
{synopt:{opt noci}}抑制置信带{p_end}

{syntab:选项}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{opt lst:ep(#)}}使用 {it:#} 作为第一步{p_end}
{synopt:{opt ust:ep(#)}}使用 {it:#} 作为最大步数{p_end}

{syntab:图形}
{synopt:{cmdab:plot:}{it:{ul:#}}{cmd:opts(}{it:{help cline_options_zh}}{cmd:)}}影响线条绘制中统计量 {it:#} 的呈现方式{p_end}

{syntab:置信区间图}
{synopt:{cmdab:ci:}{it:{ul:#}}{cmd:opts(}{it:{help area_options_zh}}{cmd:)}}影响
        对 {it:#} {it:stat} 的置信区间的呈现方式{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:spec_options} 可以在图形规格中、全局或两者中指定。当在图形规格中指定时，{it:spec_options} 仅影响所使用的规格。当全局提供时，{it:spec_options} 影响所有图形规格。当在两个地方提供时，图形规格中的选项优先。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > IRF和FEVD分析 > 组合图}


{marker description}{...}
{title:描述}

{pstd}
{cmd:irf cgraph} 生成IRF结果的图或组合图。为指定的命名IRF结果、冲击变量、响应变量和统计量绘制图形。{cmd:irf cgraph} 将这些图形组合成一幅图像，除非请求分别绘制图形。

{pstd}
{cmd:irf cgraph} 在活动IRF文件上操作；请参见 {manhelp irf_set TS:irf set}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS irfcgraphQuickstart:快速开始}

        {mansection TS irfcgraphRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt noci} 抑制每个统计量的置信区间图。
    {opt noci} 暗示当模型由 {opt vec} 拟合时，因为未估计任何置信区间。

{phang}
{opth set(filename)} 指定要使之活动的文件；
   请参见 {manhelp irf_set TS: irf set}。如果未指定 {opt set()}，将使用活动文件。

{dlgtab:选项}

{phang}
{opt level(#)} 指定置信区间的默认置信水平，作为百分比，当报告时。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置。
    整体 {opt level()} 的值可以被 {opt (spec_k)} 中的 {opt level()} 覆盖。

{phang}
{opt lstep(#)} 指定图表中包含的第一步或期间。{cmd:lstep(0)} 是默认值。

{phang}
{opt ustep(#)}， {it:#} {ul:>} 1，指定图表中包含的最大步数或期间。

{phang}
{marker combine_options}{...}
{it:combine_options} 影响组合图的外观；
   见 {helpb graph combine:[G-2] graph combine}。

{dlgtab:图形}

{phang}
{opt plot1opts(cline_options)}、..., {opt plot4opts(cline_options)}
   影响绘制统计量的呈现方式。{cmd:plot1opts()} 影响第一统计量的呈现；{cmd:plot2opts()} 影响第二统计量；以此类推。见 {manhelpi cline_options G-3}。

{dlgtab:置信区间图}

{phang}
{opt ci1opts(area_options)} 和 {opt ci2opts(area_options)} 影响
   第一 ({cmd:ci1opts()}) 和第二 ({cmd:ci2opts()}) 统计量的置信区间的呈现方式。见 {manhelp irf_graph TS:irf graph}
   有关此选项的描述以及 {manhelpi area_options G-3} 有关更改CI外观的子选项。

{dlgtab:Y轴, X轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是 {manhelpi twoway_options G-3} 中记录的任何选项，排除 {opt by()}。这些包括为图形命名的选项（见 {manhelpi title_options G-3}）以及将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。

{pstd}
以下选项可用于 {opt irf cgraph}，但在对话框中未显示：

{phang}
{opt individual} 指定每个图单独显示。默认情况下，{opt irf cgraph} 将子图组合成一幅图像。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}{p_end}
{phang2}{cmd:. matrix a = (., 0, 0\0,.,0\.,.,.)}{p_end}
{phang2}{cmd:. matrix b = I(3)}{p_end}
{phang2}{cmd:. svar dln_inv dln_inc dln_consump, aeq(a) beq(b)}{p_end}
{phang2}{cmd:. irf create modela, set(results3) step(8)}{p_end}
{phang2}{cmd:. svar dln_inv dln_inc dln_consump, aeq(a) beq(b)}{p_end}
{phang2}{cmd:. irf create modelb, step(8)}{p_end}

{pstd}绘制 {cmd:modela} 和 {cmd:modelb} 的正交和结构冲击响应函数{p_end}
{phang2}{cmd:. irf cgraph (modela dln_inv dln_consump oirf sirf)}
         {cmd:(modelb dln_inc dln_consump oirf sirf)}{p_end}

{pstd}与上述相同，但显示 {cmd:modela} 和 {cmd:modelb} 为单独的图{p_end}
{phang2}{cmd:. irf cgraph (modela dln_inv dln_consump oirf sirf)}
         {cmd:(modelb dln_inc dln_consump oirf sirf), individual}{p_end}

{pstd}绘制 {cmd:modela} 和 {cmd:modelb} 的Cholesky和结构FEVD，使用1作为第一步{p_end}
{phang2}{cmd:. irf cgraph (modela dln_inv dln_consump fevd sfevd, lstep(1))}
         {cmd:(modelb dln_inc dln_consump fevd sfevd, lstep(1))}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:irf cgraph} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(k)}}特定图命令的数量{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(individual)}}{cmd:individual}，如果指定{p_end}
{synopt:{cmd:r(save)}}{it:filename}{cmd:, replace}来自 {cmd:saving()} 选项的组合图{p_end}
{synopt:{cmd:r(name)}}{it:name}{cmd:, replace}来自 {cmd:name()} 选项的组合图{p_end}
{synopt:{cmd:r(title)}}组合图的标题{p_end}
{synopt:{cmd:r(save}{it:#}{cmd:)}}{it:filename}{cmd:, replace}来自
{cmd:saving()} 选项的单独图{p_end}
{synopt:{cmd:r(name}{it:#}{cmd:)}}{it:name}{cmd:, replace}来自 {cmd:name()}
选项的单独图{p_end}
{synopt:{cmd:r(title}{it:#}{cmd:)}}第 {it:#} 个图的标题{p_end}
{synopt:{cmd:r(ci}{it:#}{cmd:)}}应用于第 {it:#} 条置信区间的水平或 {cmd:noci}{p_end}
{synopt:{cmd:r(response}{it:#}{cmd:)}}在第 {it:#} 个命令中指定的响应{p_end}
{synopt:{cmd:r(impulse}{it:#}{cmd:)}}在第 {it:#} 个命令中指定的冲击{p_end}
{synopt:{cmd:r(irfname}{it:#}{cmd:)}}在第 {it:#} 个命令中指定的IRF名称{p_end}
{synopt:{cmd:r(stats}{it:#}{cmd:)}}在第 {it:#} 个命令中指定的统计量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irf_cgraph.sthlp>}