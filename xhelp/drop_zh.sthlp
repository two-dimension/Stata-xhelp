{smcl}
{* *! version 1.2.11  27apr2019}{...}
{viewerdialog "Variables Manager" "stata varmanage"}{...}
{viewerdialog "drop/keep observations" "dialog drop_obs"}{...}
{vieweralsosee "[D] drop" "mansection D drop"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] clear" "help clear_zh"}{...}
{vieweralsosee "[D] frame put" "help frame_put_zh"}{...}
{vieweralsosee "[D] varmanage" "help varmanage_zh"}{...}
{viewerjumpto "语法" "drop_zh##syntax"}{...}
{viewerjumpto "菜单" "drop_zh##menu"}{...}
{viewerjumpto "描述" "drop_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "drop_zh##linkspdf"}{...}
{viewerjumpto "示例" "drop_zh##examples"}{...}
{viewerjumpto "存储结果" "drop_zh##results"}
{help drop:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[D] drop} {hline 2}}删除变量或观测值{p_end}
{p2col:}({mansection D drop:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    删除变量

{p 8 13 2}{cmd:drop} {varlist}


    删除观测值

{p 8 13 2}{cmd:drop} {help if_zh:{bf:if} {it:exp}}


    删除一系列观测值

{p 8 13 2}{cmd:drop} {help in_zh:{bf:in} {it:range}} [{help if_zh:{bf:if} {it:exp}}]


    保留变量

{p  8 13 2}{cmd:keep} {varlist}


    保留满足指定条件的观测值

{p 8 13 2}{cmd:keep} {help if_zh:{bf:if} {it:exp}}


    保留一系列观测值

{p 8 13 2}{cmd:keep} {help in_zh:{bf:in} {it:range}} [{help if_zh:{bf:if} {it:exp}}]


{phang}
{cmd:by} 可以与 {cmd:drop} 的第二种语法和 {cmd:keep} 的第二种语法一起使用；参见 {manhelp by D}。


{marker menu}{...}
{title:菜单}

    {title:删除或保留变量}

{phang2}
{bf:数据 > 变量管理器}

    {title:删除或保留观测值}

{phang2}
{bf:数据 > 创建或更改数据 > 删除或保留观测值}


{marker description}{...}
{title:描述}

{pstd}
{cmd:drop} 从内存中的数据中消除变量或观测值。

{pstd}
{cmd:keep} 的工作方式与 {cmd:drop} 相同，除了您指定要保留的变量或观测值，而不是要删除的变量或观测值。

{pstd}
警告：{cmd:drop} 和 {cmd:keep} 是不可逆的。一旦您消除了观测值，您将无法再将其读入。您需要回到原始数据集并重新读取。考虑使用 {cmd:if} 或 {cmd:in} 暂时选择子集，而不是应用 {cmd:drop} 或 {cmd:keep} 进行子集分析。这通常是最佳策略。或者，应用 {cmd:preserve} 然后适时使用 {cmd:restore} 可能是一个好方法。您还可以使用 {cmd:frame} {cmd:put} 将当前数据集中的变量或观测值子集放入另一个框架；参见 {manhelp frame_put D:frame put}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D dropQuickstart:快速入门}

        {mansection D dropRemarksandexamples:评论和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse census}{p_end}

{pstd}描述数据{p_end}
{phang2}{cmd:. describe}

{pstd}删除所有以 {cmd:pop} 开头的变量{p_end}
{phang2}{cmd:. drop pop*}{p_end}

{pstd}描述结果数据{p_end}
{phang2}{cmd:. describe}

{pstd}删除 {cmd:marriage} 和 {cmd:divorce}{p_end}
{phang2}{cmd:. drop marriage divorce}

{pstd}描述结果数据{p_end}
{phang2}{cmd:. describe}

{pstd}删除任何 {cmd:medage} 大于 32 的观测值{p_end}
{phang2}{cmd:. drop if medage > 32}

{pstd}删除每个区域的第一条观测值{p_end}
{phang2}{cmd:. by region, sort: drop if _n == 1}

{pstd}删除每个区域中的所有但最后一条观测值{p_end}
{phang2}{cmd:. by region: drop if _n != _N}

{pstd}保留数据集中的前 2 条观测值{p_end}
{phang2}{cmd:. keep in 1/2}

{pstd}描述结果数据{p_end}
{phang2}{cmd:. describe}

{pstd}删除所有观测值和变量{p_end}
{phang2}{cmd:. drop _all}

{pstd}描述结果数据{p_end}
{phang2}{cmd:. describe}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:drop} 和 {cmd:keep} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N_drop)}}删除的观测值数量{p_end}
{synopt:{cmd:r(k_drop)}}删除的变量数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <drop.sthlp>}