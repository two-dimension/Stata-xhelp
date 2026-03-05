{smcl}
{* *! version 1.1.6  19oct2017}{...}
{viewerdialog xtsum "dialog xtsum"}{...}
{vieweralsosee "[XT] xtsum" "mansection XT xtsum"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtdescribe" "help xtdescribe_zh"}{...}
{vieweralsosee "[XT] xttab" "help xttab_zh"}{...}
{viewerjumpto "语法" "xtsum_zh##syntax"}{...}
{viewerjumpto "菜单" "xtsum_zh##menu"}{...}
{viewerjumpto "描述" "xtsum_zh##description"}{...}
{viewerjumpto "PDF文档链接" "xtsum_zh##linkspdf"}{...}
{viewerjumpto "示例" "xtsum_zh##examples"}{...}
{viewerjumpto "存储结果" "xtsum_zh##results"}
{help xtsum:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[XT] xtsum} {hline 2}}总结xt数据{p_end}
{p2col:}({mansection XT xtsum:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}{cmd:xtsum} [{varlist}] [{it:{help if_zh}}]

{phang}
必须指定一个面板变量；使用 {help xtset_zh}.{p_end}
{phang}
{it:varlist} 可以包含时间序列运算符；参见 {help tsvarlist_zh}.{p_end}
{phang}
允许使用 {cmd:by}；参见 {manhelp by D}.


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 设置和实用工具 >}
        {bf:总结xt数据}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtsum} 是 {help summarize_zh} 的推广，报告面板数据的均值和标准差；与 {cmd:summarize} 的不同之处在于，它将标准差分解为组间和组内组成部分。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xtsumQuickstart:快速开始}

        {mansection XT xtsumRemarksandexamples:备注和示例}

{pstd}
上述章节未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{phang}{cmd:. webuse nlswork}{p_end}
{phang}{cmd:. xtsum hours}{p_end}
{phang}{cmd:. xtsum birth_yr}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtsum} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测数量{p_end}
{synopt:{cmd:r(n)}}面板数量{p_end}
{synopt:{cmd:r(Tbar)}}平均观察年份数{p_end}
{synopt:{cmd:r(mean)}}均值{p_end}
{synopt:{cmd:r(sd)}}总体标准差{p_end}
{synopt:{cmd:r(min)}}总体最小值{p_end}
{synopt:{cmd:r(max)}}总体最大值{p_end}
{synopt:{cmd:r(sd_b)}}组间标准差{p_end}
{synopt:{cmd:r(min_b)}}组间最小值{p_end}
{synopt:{cmd:r(max_b)}}组间最大值{p_end}
{synopt:{cmd:r(sd_w)}}组内标准差{p_end}
{synopt:{cmd:r(min_w)}}组内最小值{p_end}
{synopt:{cmd:r(max_w)}}组内最大值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtsum.sthlp>}