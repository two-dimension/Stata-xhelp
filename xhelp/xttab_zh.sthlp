{smcl}
{* *! version 1.1.7  19oct2017}{...}
{viewerdialog xttab "dialog xttab"}{...}
{viewerdialog xttrans "dialog xttrans"}{...}
{vieweralsosee "[XT] xttab" "mansection XT xttab"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtdescribe" "help xtdescribe_zh"}{...}
{vieweralsosee "[XT] xtsum" "help xtsum_zh"}{...}
{viewerjumpto "语法" "xttab_zh##syntax"}{...}
{viewerjumpto "菜单" "xttab_zh##menu"}{...}
{viewerjumpto "描述" "xttab_zh##description"}{...}
{viewerjumpto "PDF文档链接" "xttab_zh##linkspdf"}{...}
{viewerjumpto "选项" "xttab_zh##option"}{...}
{viewerjumpto "示例" "xttab_zh##examples"}{...}
{viewerjumpto "存储结果" "xttab_zh##results"}
{help xttab:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[XT] xttab} {hline 2}}列出xt数据{p_end}
{p2col:}({mansection XT xttab:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:xttab} {varname} [{it:{help if_zh}}]

{p 8 16 2}
{cmd:xttrans} {varname} [{it:{help if_zh}}]  [{cmd:,} {opt f:req}]

{phang}
必须指定一个面板变量；使用 {help xtset_zh}.{p_end}
{phang}
{cmd:by} 可以与 {cmd:xttab} 和 {cmd:xttrans} 一起使用；见 {manhelp by D}。


{marker menu}{...}
{title:菜单}

    {title:xttab}

{phang2}
{bf:统计 > 横向/面板数据 > 设置和工具 >}
      {bf:列出xt数据}

     {title:xttrans}

{phang2}
{bf:统计 > 横向/面板数据 > 设置和工具 >}
       {bf:报告转移概率}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xttab} 是 {helpb tabulate oneway} 的推广，执行单向列出并将计数分解为面板数据中的介于和内部组成部分。

{pstd}
{cmd:xttrans} 另一个 {helpb tabulate oneway} 的推广，报告转移概率（一个分类变量随时间变化的情况）。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xttabQuickstart:快速入门}

        {mansection XT xttabRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{dlgtab:主选项}

{phang}
{opt freq}，仅用于 {cmd:xttrans} ，指定显示频率和转移概率。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse nlswork}{p_end}
{phang2}{cmd:. xtset id year}{p_end}

{pstd}xttab{p_end}
{phang2}{cmd:. xttab msp}{p_end}
{phang2}{cmd:. xttab race}{p_end}

{pstd}xttrans{p_end}
{phang2}{cmd:. xttrans msp}{p_end}
{phang2}{cmd:. xttrans msp, freq}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xttab} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(n)}}面板数量{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(results)}}结果矩阵{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xttab.sthlp>}