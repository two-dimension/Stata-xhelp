{smcl}
{* *! version 1.2.2  19oct2017}{...}
{viewerdialog "irf ctable" "dialog irf_ctable"}{...}
{vieweralsosee "[TS] irf ctable" "mansection TS irfctable"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] irf" "help irf_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "Syntax" "irf_ctable_zh##syntax"}{...}
{viewerjumpto "Menu" "irf_ctable_zh##menu"}{...}
{viewerjumpto "Description" "irf_ctable_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "irf_ctable_zh##linkspdf"}{...}
{viewerjumpto "Options" "irf_ctable_zh##options"}{...}
{viewerjumpto "Examples" "irf_ctable_zh##examples"}{...}
{viewerjumpto "Stored results" "irf_ctable_zh##results"}
{help irf_ctable:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[TS] irf ctable} {hline 2}}合并的IRF、动态乘数函数和FEVD表
{p_end}
{p2col:}({mansection TS irfctable:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:irf}
{opt ct:able}
{opt (spec_1)}
[{opt (spec_2)}
...
[{cmd:(}{it:spec_N}{cmd:)}]]
[{cmd:,}
{it:{help irf_cgraph##options_table:选项}}]

{pstd}
其中 {opt (spec_k)} 是

{p 8 12 2}
{cmd:(}{it:irfname} {it:impulsevar}
{it:responsevar}
{it:{help irf_ctable##stat:统计}}
[{cmd:,}
{it:{help irf_ctable##spec_options:规格选项}}]{cmd:)}

{pstd}
{it:irfname} 是当前IRF文件中一组IRF结果的名称。
{it:impulsevar} 应该被指定为所有统计的内生变量，除了 {cmd:dm} 和 {cmd:cdm}; 对于这两者，请指定为外生变量。
{it:responsevar} 是一个内生变量名称。
{it:stat} 是以下列表中的一种或多种统计量：

{marker stat}{...}
包含 help _irf_stats

{marker options_table}{...}
{synoptset 19}{...}
{synopthdr:选项}
{synoptline}
{synopt:{opth set(filename)}}使 {it:filename} 为活动文件{p_end}
{synopt:{opt noci}}不报告置信区间{p_end}
{synopt:{opt std:error}}为每个统计量包含标准误差{p_end}
{synopt:{opt in:dividual}}为每个组合生成单独的表{p_end}
{synopt:{cmdab:ti:tle("}{it:text}{cmd:")}}使用 {it:text} 作为整体表标题{p_end}
{synopt:{opt st:ep(#)}}设置共同的最大步数{p_end}
{synopt:{opt l:evel(#)}}设置置信水平；默认值是 {cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}

{marker spec_options}{...}
{synoptset 19}{...}
{synopthdr:规格选项}
{synoptline}
{synopt:{opt noci}}不报告置信区间{p_end}
{synopt:{opt std:error}}为每个统计量包含标准误差{p_end}
{synopt:{opt l:evel(#)}}设置置信水平；默认值是 {cmd:level(95)}{p_end}
{synopt:{cmdab:iti:tle("}{it:text}{cmd:")}}使用 {it:text} 作为特定表的单独副标题{p_end}
{synoptline}
{p 4 6 2}
{it:spec_options} 可以在表规格中、全局或两者中指定。当在表规格中指定时，{it:spec_options} 仅影响使用它们的规格。当全局提供时，{it:spec_options} 影响所有表规格。当在两个地方提供时，表规格的选项优先。{p_end}
{p 4 6 2}
{cmd:ititle()} 不会出现在对话框中。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > IRF 和 FEVD 分析 >}
    {bf:合并表}


{marker description}{...}
{title:描述}

{pstd}
{cmd:irf ctable} 创建一个或合并的IRF结果表。为指定的命名IRF结果、冲击变量、响应变量和统计量组合创建一个表。 {cmd:irf ctable} 将这些表合并为一个表，除非请求单独的表。

{pstd}
{cmd:irf ctable} 在活动IRF文件上运行；请参见
{manhelp irf_set TS:irf set}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS irfctableQuickstart:快速开始}

        {mansection TS irfctableRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth set(filename)} 指定要激活的文件；请参见 
    {manhelp irf_set TS:irf set}。如果未指定 {opt set()}，则使用活动文件。

{phang}
{opt noci} 抑制对每个统计量的置信区间的报告。当模型通过 
    {help vec_zh} 拟合时，假设 {opt noci} ，因为未估计置信区间。

{phang}
{opt stderror} 指定在表中也包括每个统计量的标准误差。

{phang}
{opt individual} 将每个块或 ({it:spec_k}) 放在单独的表中。默认情况下，{opt irf ctable} 将所有块合并为一个表。

{phang}
{cmd:title("}{it:text}{cmd:")} 指定表或表集的标题。

{phang}
{opt step(#)} 指定用于所有表的最大步数。默认情况下，每个表使用所有可用的步数构建。

{phang}
{opt level(#)} 指定默认的置信水平，以百分比表示，当报告时，置信区间的默认是 {cmd:level(95)} 或通过 {helpb set level} 设置的值。

{pstd}
在 {opt irf ctable} 中有以下选项，但不在对话框中显示：

{phang}
{cmd:ititle("}{it:text}{cmd:")} 为特定表指定单独的副标题。{opt ititle()} 只能在指定了 {opt individual} 选项时使用。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump}{p_end}
{phang2}{cmd:. irf set results4}{p_end}
{phang2}{cmd:. irf create ordera, step(8)}{p_end}
{phang2}{cmd:. irf create orderb, order(dln_inv dln_inc dln_consump) step(8)}
{p_end}

{pstd}为模型 {cmd:ordera} 和 {cmd:orderb} 创建正交化的脉冲响应函数和Cholesky FEVD的表{p_end}
{phang2}{cmd:. irf ctable (ordera dln_inc dln_consump oirf fevd)}
          {cmd:(orderb dln_inc dln_consump oirf fevd)}{p_end}

{pstd}与上述相同，但包括标准误差而不是置信区间{p_end}
{phang2}{cmd:. irf ctable (ordera dln_inc dln_consump oirf fevd)}
          {cmd:(orderb dln_inc dln_consump oirf fevd), noci stderror}{p_end}

{pstd}为模型 {cmd:ordera} 和 {cmd:orderb} 创建Cholesky FEVD的单独表{p_end}
{phang2}{cmd:. irf ctable (ordera dln_inc dln_consump fevd)}
          {cmd:(orderb dln_inc dln_consump fevd), individual}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:irf ctable} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(ncols)}}所有表中的列数{p_end}
{synopt:{cmd:r(k_umax)}}不同键的数量{p_end}
{synopt:{cmd:r(k)}}特定表命令的数量{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(key}{it:#}{cmd:)}}{it:#}个键{p_end}
{synopt:{cmd:r(tnotes)}}应用于每列的键列表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irf_ctable.sthlp>}