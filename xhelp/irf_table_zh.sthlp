{smcl}
{* *! version 1.2.2  19oct2017}{...}
{viewerdialog "irf table" "dialog irf_table"}{...}
{vieweralsosee "[TS] irf table" "mansection TS irftable"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] irf" "help irf_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "语法" "irf_table_zh##syntax"}{...}
{viewerjumpto "菜单" "irf_table_zh##menu"}{...}
{viewerjumpto "描述" "irf_table_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "irf_table_zh##linkspdf"}{...}
{viewerjumpto "选项" "irf_table_zh##options"}{...}
{viewerjumpto "示例" "irf_table_zh##examples"}{...}
{viewerjumpto "存储结果" "irf_table_zh##results"}
{help irf_table:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[TS] irf table} {hline 2}}IRFs、动态乘数函数和 FEVDs 的表{p_end}
{p2col:}({mansection TS irftable:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:irf} {opt t:able}
[{it:{help irf table##stat:stat}}]
[{cmd:,} {it:{help irf_table##options_table:选项}}]

{marker stat}{...}
INCLUDE help _irf_stats
{p 4 6 2}如果未指定 {it:stat}，则包含所有统计数据，
除非同时指定了选项 {cmd:nostructural}，在这种情况下将排除 {cmd:sirf}
和 {cmd:sfevd}。您可以指定多个 {it:stat}.{p_end}

{marker options_table}{...}
{synoptset 29 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opth s:et(filename)}}使 {it:filename} 变为活动状态{p_end}
{synopt:{opt ir:f(irfnames)}}使用 {it:irfnames} IRF 结果集{p_end}
{synopt:{opt i:mpulse(impulsevar)}}使用 {it:impulsevar} 作为脉冲变量{p_end}
{synopt:{opt r:esponse(endogvars)}}使用内生变量作为响应变量{p_end}
{synopt:{opt in:dividual}}为每个结果集制作单独的表{p_end}
{synopt:{cmdab:ti:tle("}{it:text}{cmd:")}}使用 {it:text} 作为总体表标题 {p_end}

{syntab:选项}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{opt noci}}不显示置信区间{p_end}
{synopt:{opt std:error}}在表中包含标准误差{p_end}
{synopt:{opt nostr:uctural}}从默认的统计数据列表中排除 {opt sirf} 和 {opt sfevd}{p_end}
{synopt:{opt st:ep(#)}}对所有表使用共同的最大步长 {it:#}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > IRF 和 FEVD 分析 >}
   {bf:按脉冲或响应的表}


{marker description}{...}
{title:描述}

{pstd}
{opt irf table} 在每个脉冲后时间处生成所请求统计量的值表。每一列代表命名 IRF 结果中的脉冲变量和响应变量的组合，对于每个统计量。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS irftableQuickstart:快速开始}

        {mansection TS irftableRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth set(filename)} 指定要激活的文件；见 
   {manhelp irf_set TS:irf set}。如果未指定 {opt set()}，则使用活动文件。

{pmore}
    所有结果均来自一个 IRF 文件。
    如果您有不同文件中的结果希望在一个表中展示，请使用 {cmd:irf add} 将结果复制到一个文件中；见 
    {helpb irf add:[TS] irf add}。

{phang}
{cmd:irf(}{it:irfnames}{cmd:)} 指定要使用的 IRF 结果集。
    如果未指定 {opt irf()}，则使用活动 IRF 文件中的所有结果。 （文件通常只包含一个 IRF 结果集，保存在一个 {it:irfname} 下；在这种情况下，将使用该结果。如果有多个 IRF 结果，您还可以希望指定 {opt individual} 选项。）

{phang}
{opt impulse(impulsevar)} 指定要报告统计量的脉冲变量。如果未指定 {opt impulse()}，则依次使用每个模型变量。 {it:impulsevar} 应该作为内生变量指定，除非是 {cmd:dm} 或 {cmd:cdm}；对于这两者，应作为外生变量指定。

{phang}
{opt response(endogvars)} 指定要报告统计量的响应变量。
    如果未指定 {opt response()}，则依次使用每个内生变量。

{phang}
{opt individual} 指定每组 IRF 结果放置在各自的表中，并有各自的标题和页脚。默认情况下，{opt irf table} 将所有 IRF 结果放在一个表中，只有一个标题和一个页脚。 {opt individual} 不能与 {opt title()} 结合使用。

{phang}
{cmd:title("}{it:text}{cmd:")} 指定总体表的标题。

{dlgtab:选项}

{phang}
{opt level(#)} 指定默认的置信水平，作为一个百分比，当报告置信区间时。如果报告的置信区间未指定，则默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置的值。

{phang}
{opt noci} 抑制每个统计量的置信区间报告。
    当模型通过 {cmd:vec} 拟合时假定使用 {opt noci}，因为没有估计置信区间。

{phang}
{opt stderror} 指定还需在表中包含各统计量的标准误差。

{phang}
{opt nostructural} 指定未指定时 {it:stat} 排除 {opt sirf} 和 {opt sfevd}。

{phang}
{opt step(#)} 指定所有表的最大步长。如果未指定 {opt step()}，则每个表都使用所有可用的步骤构建。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump}{p_end}
{phang2}{cmd:. irf set results4}{p_end}
{phang2}{cmd:. irf create ordera, step(8)}{p_end}
{phang2}{cmd:. irf create orderb, order(dln_inc dln_inv dln_consump) step(8)}{p_end}

{pstd}创建 {cmd:ordera} 和 {cmd:orderb} 模型的正交脉冲响应函数和 Cholesky FEVDs 表，使用 {cmd:dln_inc} 作为脉冲变量，{cmd:dln_consump} 作为响应变量{p_end}
{phang2}{cmd:. irf table oirf fevd, impulse(dln_inc) response(dln_consump)}{p_end}

{pstd}与上述相同，但不显示置信区间并显示标准误差{p_end}
{phang2}{cmd:. irf table oirf fevd, impulse(dln_inc) response(dln_consump)}
              {cmd:noci stderror}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
如果未指定 {cmd:individual} 选项，则 {cmd:irf table} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(ncols)}}表中的列数{p_end}
{synopt:{cmd:r(k_umax)}}不同键的数量{p_end}
{synopt:{cmd:r(k)}}用于创建表的特定命令数量{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(key}{it:#}{cmd:)}}{it:#}个键{p_end}
{synopt:{cmd:r(tnotes)}}应用于每一列的键列表{p_end}

{pstd}
如果指定了 {cmd:individual} 选项，则对于每一个 {it:irfname}，
{cmd:irf table} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_ncols)}}{it:irfname}表中的列数{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_k_umax)}}{it:irfname}表中不同键的数量{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_k)}}用于创建 {it:irfname} 表的特定命令数量{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_key}{it:#}{cmd:)}}{it:#}个键 {it:irfname} 表{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_tnotes)}}应用于 {it:irfname} 表中每一列的键列表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irf_table.sthlp>}