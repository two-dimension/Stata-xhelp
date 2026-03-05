{smcl}
{* *! version 1.2.3  19oct2017}{...}
{viewerdialog "irf set" "dialog irf_set"}{...}
{vieweralsosee "[TS] irf set" "mansection TS irfset"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] irf" "help irf_zh"}{...}
{vieweralsosee "[TS] irf describe" "help irf describe"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "Syntax" "irf_set_zh##syntax"}{...}
{viewerjumpto "Menu" "irf_set_zh##menu"}{...}
{viewerjumpto "Description" "irf_set_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "irf_set_zh##linkspdf"}{...}
{viewerjumpto "Options" "irf_set_zh##options"}{...}
{viewerjumpto "Examples" "irf_set_zh##examples"}{...}
{viewerjumpto "Stored results" "irf_set_zh##results"}
{help irf_set:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[TS] irf set} {hline 2}}设置活动的IRF文件{p_end}
{p2col:}({mansection TS irfset:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}报告活动文件的身份

{p 8 24 2}
{cmd:irf} {opt set}


{pstd}设置，并如有必要创建，活动文件

{p 8 24 2}
{cmd:irf} {opt set} {it:irf_filename} [{cmd:, replace}]


{pstd}清除任何活动的IRF文件

{p 8 24 2}
{cmd:irf} {opt set}{cmd:,} {opt clear}


{phang}
如果指定了 {it:irf_filename} 而没有扩展名，假设为 {cmd:.irf}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > 管理 IRF 结果和文件 >}
    {bf:设置活动 IRF 文件}


{marker description}{...}
{title:描述}

{pstd}
{cmd:irf} {cmd:set} 不带参数时报告活动IRF文件的身份（如果存在）。
{cmd:irf} {cmd:set}带文件名的指定
表示创建该文件并将其设置为活动文件。
{cmd:irf} {cmd:set,} {cmd:clear} 指定
如果设置了任何IRF文件，则取消设置，并且没有活动的
IRF文件。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS irfsetQuickstart:快速开始}

        {mansection TS irfsetRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt replace} 指定如果 {it:irf_filename} 已存在，则应删除该文件，并在其位置创建一个新的空IRF文件。如果它不存在，则会创建一个新的空文件。

{phang}
{opt clear} 取消设置活动的IRF文件。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}{p_end}

{pstd}拟合向量自回归模型{p_end}
{phang2}{cmd:. var dln_inc dln_consump, exog(l.dln_inv)}

{pstd}创建 {cmd:results2.irf} 并将其设置为活动IRF文件{p_end}
{phang2}{cmd:. irf set results2}{p_end}

{pstd}识别活动文件的名称{p_end}
{phang2}{cmd:. irf set}{p_end}

{pstd}将估计的IRF和FEVD保存到 {cmd:results2.irf} 中的 {cmd:order1}{p_end}
{phang2}{cmd:. irf create order1}{p_end}

{pstd}擦除现有的 {cmd:results2.irf} 文件并创建一个新的空的
{cmd:results2.irf} 文件{p_end}
{phang2}{cmd:. irf set results2, replace}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:irf set} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(irffile)}}活动IRF文件的名称（如果存在活动
IRF）{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irf_set.sthlp>}