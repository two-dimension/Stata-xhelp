{smcl}
{* *! version 1.1.17  12feb2019}{...}
{viewerdialog "irf graph" "dialog irf_graph"}{...}
{vieweralsosee "[TS] irf graph" "mansection TS irfgraph"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] irf" "help irf_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "Syntax" "irf_graph_zh##syntax"}{...}
{viewerjumpto "Menu" "irf_graph_zh##menu"}{...}
{viewerjumpto "Description" "irf_graph_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "irf_graph_zh##linkspdf"}{...}
{viewerjumpto "Options" "irf_graph_zh##options"}{...}
{viewerjumpto "Examples" "irf_graph_zh##examples"}{...}
{viewerjumpto "Stored results" "irf_graph_zh##results"}
{help irf_graph:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[TS] irf graph} {hline 2}}冲击响应函数、动态乘数函数和预测误差方差分解的图形{p_end}
{p2col:}({mansection TS irfgraph:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:irf} {opt g:raph} {it:{help irf_graph##stat:stat}}
[{cmd:,}
{it:{help irf_graph##options_table:选项}}]

{marker stat}{...}
包含帮助 _irf_stats
包含帮助 _irf_stats_notes

{marker options_table}{...}
{synoptset 34 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opth set(filename)}}使 {it:filename} 变为活动{p_end}
{synopt:{cmdab:ir:f(}{it:irfnames}{cmd:)}}使用 {it:irfnames} 的 IRF 结果集{p_end}
{synopt:{opt i:mpulse(impulsevar)}}使用 {it:impulsevar} 作为冲击变量{p_end}
{synopt:{cmdab:r:esponse:(}{it:endogvars}{cmd:)}}使用内生变量作为响应变量{p_end}
{synopt:{opt noci}}抑制置信区间{p_end}
{synopt:{opt l:evel(#)}}设定置信水平；默认是 {cmd:level(95)}{p_end}
{synopt:{opt lst:ep(#)}}使用 {it:#} 作为第一步{p_end}
{synopt:{opt ust:ep(#)}}使用 {it:#} 作为最大步{p_end}

{syntab:高级}
{synopt:{opt in:dividual}}单独绘制每个组合{p_end}
{synopt:{cmd:iname(}{it:namestub} [{cmd:,} {opt replace}]{cmd:)}}用于命名单个图的存根{p_end}
{synopt:{cmdab:isa:ving(}{it:{help filename_zh:filename}stub} [{cmd:,} {opt replace}]{cmd:)}}用于将单个图保存到文件的存根{p_end}

{syntab:图形}
{synopt:{cmdab:plot:}{ul:{it:#}}{cmd:opts(}{it:{help cline_options_zh}}{cmd:)}}影响绘制 {it:#} {it:stat} 的线条的呈现{p_end}

{syntab:置信区间图}
{synopt:{cmdab:ci:}{ul:{it:#}}{cmd:opts(}{it:{help area_options_zh}}{cmd:)}}影响 {it:#} {it:stat} 的置信区间的呈现{p_end}

{syntab:Y 轴，X 轴，标题，图例，总体}
{synopt:{it:twoway_options}}任何除 {opt by()} 以外的选项，详见 {manhelpi twoway_options G-3}{p_end}
{synopt:{opth byop:ts(by_option)}}组合、标记等子图的方式{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量时间序列 > IRF 和 FEVD 分析 >}
    {bf:按冲击或响应绘制图形}


{marker description}{...}
{title:描述}

{pstd}
{opt irf graph} 绘制冲击响应函数 (IRFs)、动态乘数函数和预测误差方差分解 (FEVDs) 随时间的变化图。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS irfgraphQuickstart:快速起步}

        {mansection TS irfgraphRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth set(filename)} 指定要激活的文件；见 {manhelp irf_set TS:irf set}。如果未指定 {opt set()}，则使用活动文件。

{phang}
{cmd:irf(}{it:irfnames}{cmd:)} 指定要使用的 IRF 结果集。如果未指定 {opt irf()}，则使用活动 IRF 文件中的每个结果。 （文件通常只包含一个 IRF 结果集，存储在一个 {it:irfname} 下；在这种情况下，使用该结果。）

{phang}
{opt impulse(impulsevars)} 和 
    {cmd:response(}{it:endogvars}{cmd:)} 指定冲击和响应变量。通常会指定各一个，并绘制一幅图。如果指定多个变量，则为每个冲击-响应组合绘制一个单独的子图。如果未指定 {opt impulse()} 和 {opt response()}，则为所有冲击和响应变量的组合绘制子图。

{pmore}
    {it:impulsevar} 应作为内生变量指定，除了 {cmd:dm} 或 {cmd:cdm}；对于这两者，应指定为外生变量。

{phang}
{opt noci} 抑制为每个统计量绘制置信区间。当模型由 {cmd:vec} 拟合时，假定 {opt noci}，因为未估计置信区间。

{phang}
{opt level(#)} 指定报告置信区间时的默认置信水平，以百分比表示。默认值为 {cmd:level(95)} 或按 {helpb set level} 设置。另请参见 {manhelp irf_cgraph TS:irf cgraph}，该图命令允许置信水平在图形间变化。

{phang}
{opt lstep(#)} 指定图中包含的第一步或时间段。默认值为 {cmd:lstep(0)}。

{phang}
{opt ustep(#)}，{it:#} {ul:>} 1，指定图中包含的最大步或时间段。

{dlgtab:高级}

{phang}
{opt individual} 指定单独显示每个图。默认情况下，{opt irf graph} 将子图组合成一个图像。当指定 {opt individual} 时，{opt byopts()} 可能不被指定，但可以指定 {opt isaving()} 和 {opt iname()} 选项。

{phang}
{cmd:iname(}{it:namestub} [{opt , replace}]{cmd:)} 指定第 i 个单独图在内存中存储为名称 {it:namestub}{it:i}，该名称必须是有效的 Stata 名称，长度为 24 个字符或更少。{opt iname()} 只能与 {opt individual} 选项一起指定。

{phang}
{cmd:isaving(}{it:{help filename_zh:filename}stub} [{cmd:, replace}]{cmd:)} 指定第 i 个单独图应保存在当前工作目录下，文件名为 {it:filenamestub}{it:i}{cmd:.gph}。{opt isaving()} 只能在指定了 {opt individual} 选项时使用。

{dlgtab:图形}

{phang}
{opt plot1opts(cline_options)}，...，{opt plot4opts(cline_options)} 影响绘制统计量（{it:stat}）的呈现。{opt plot1opts()} 影响第一个统计量的呈现；{opt plot2opts()}，第二个；依此类推。{it:cline_options} 在 {manhelpi cline_options G-3} 中说明。

{dlgtab:置信区间图}

{phang}
{opt ci1opts(area_options)} 和 {opt ci2opts(area_options)} 影响 {it:stat} 中第一个 ( {opt ci1opts()} ) 和第二个 ( {opt ci2opts()} ) 统计量的置信区间的呈现。{it:area_options} 在 {manhelpi area_options G-3} 中说明。

{dlgtab:Y 轴，X 轴，标题，图例，总体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的任何选项，不包括 {opt by()}。这些选项包括图形标题（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。{opt saving()} 和 {opt name()} 选项不能与 {opt individual} 选项组合使用。

{phang}
{opt byopts(by_option)} 如在 {manhelpi by_option G-3} 中记录的，不可在指定 {opt individual} 时指定。{opt byopts()} 影响子图的组合、标签等方式。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}{p_end}

{pstd}拟合向量误差修正模型{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump if qtr<=tq(1978q4),}
              {cmd:lags(1/2) dfk}{p_end}

{pstd}估计 IRFs 和 FEVDs，并在 {cmd:myirf1} 中保存到 {cmd:order1}{p_end}
{phang2}{cmd:. irf create order1, step(10) set(myirf1, replace)}{p_end}

{pstd}绘制正交冲击响应函数，使用 {cmd:dln_inc} 作为冲击变量，{cmd:dln_consump} 作为响应变量{p_end}
{phang2}{cmd:. irf graph oirf, impulse(dln_inc) response(dln_consump)}

{pstd}与上述相同，但使用 1 作为第一步{p_end}
{phang2}{cmd:. irf graph oirf, impulse(dln_inc) response(dln_consump)}
             {cmd:lstep(1)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:irf graph} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(k)}}图形数量{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(stats)}}{it:statlist}{p_end}
{synopt:{cmd:r(irfname)}}{it:resultslist}{p_end}
{synopt:{cmd:r(impulse)}}{it:impulselist}{p_end}
{synopt:{cmd:r(response)}}{it:responselist}{p_end}
{synopt:{cmd:r(plot}{it:#}{cmd:)}}{cmd:plot}{it:#}{cmd:opts() 的内容}{p_end}
{synopt:{cmd:r(ci)}}应用于置信区间的水平或 {cmd:noci}{p_end}
{synopt:{cmd:r(ciopts}{it:#}{cmd:)}}{cmd:ci}{it:#}{cmd:opts() 的内容}{p_end}
{synopt:{cmd:r(byopts)}}{cmd:byopts() 的内容}{p_end}
{synopt:{cmd:r(saving)}}提供的 {cmd:saving()} 选项{p_end}
{synopt:{cmd:r(name)}}提供的 {cmd:name()} 选项{p_end}
{synopt:{cmd:r(individual)}}{cmd:individual} 或空白{p_end}
{synopt:{cmd:r(isaving)}}{cmd:isaving() 的内容}{p_end}
{synopt:{cmd:r(iname)}}{cmd:name() 的内容}{p_end}
{synopt:{cmd:r(subtitle}{it:#}{cmd:)}}单独图 {it:#} 的副标题{p_end}
{p2colreset}{...}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irf_graph.sthlp>}