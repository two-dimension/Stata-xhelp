{smcl}
{* *! version 1.2.3  19oct2017}{...}
{vieweralsosee "[D] by" "mansection D by"}{...}
{findalias asfrsyntax}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] byable" "help byprog_zh"}{...}
{vieweralsosee "[P] foreach" "help foreach_zh"}{...}
{vieweralsosee "[P] forvalues" "help forvalues_zh"}{...}
{vieweralsosee "[D] sort" "help sort_zh"}{...}
{vieweralsosee "[D] statsby" "help statsby_zh"}{...}
{vieweralsosee "[P] while" "help while_zh"}{...}
{viewerjumpto "Syntax" "by_zh##syntax"}{...}
{viewerjumpto "Description" "by_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "by_zh##linkspdf"}{...}
{viewerjumpto "Options" "by_zh##options"}{...}
{viewerjumpto "Examples" "by_zh##examples"}{...}
{viewerjumpto "Technical note" "by_zh##technote"}
{help by:English Version}
{hline}{...}
{p2colset 1 11 13 2}{...}
{p2col:{bf:[D] by} {hline 2}}在数据子集上重复 Stata 命令{p_end}
{p2col:}({mansection D by:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:by} {varlist}{cmd::} {it:stata_cmd}

{p 8 16 2}
{opt bys:ort} {varlist}{cmd::} {it:stata_cmd}

{pstd}
上述图示展示了 {cmd:by} 和 {cmd:bysort} 的典型用法。命令的完整语法是

{p 8 12 2}
{cmd:by} {it:{help varlist_zh}1} [{cmd:(}{it:{help varlist_zh}2}{cmd:)}]
[{cmd:,} {opt s:ort} {cmd:rc0}]{cmd::}  {it:stata_cmd}

{p 8 16 2}
{opt bys:ort} {it:{help varlist_zh}1} [{cmd:(}{it:{help varlist_zh}2}{cmd:)}]
[{cmd:,} {cmd:rc0}]{cmd::}  {it:stata_cmd}


{marker description}{...}
{title:描述}

{pstd}
大多数 Stata 命令允许使用 {cmd:by} 前缀，该前缀会对 {varlist} 中变量值相同的每组观测重复执行命令。没有 {cmd:sort} 选项的 {cmd:by} 要求数据按照 {it:varlist} 排序；见 {manhelp sort D}。

{pstd}
与 {cmd:by} 前缀一起使用的 Stata 命令在其语法图之后会立即标明，例如 "允许 {cmd:by}; 见 {manhelp by D}" 或 "{cmd:bootstrap}, {cmd:by} 等被允许；见 {help prefix_zh}"。

{pstd}
{cmd:by} 和 {cmd:bysort} 实际上是相同的命令；{cmd:bysort} 只是带有 {cmd:sort} 选项的 {cmd:by}。

{pstd}
{it:varlist1} {cmd:(}{it:varlist2}{cmd:)} 语法对于程序员特别有用。它验证数据是否按照 {bind:{it:varlist1 varlist2}} 排序，然后执行 {cmd:by}，就好像只指定了 {it:varlist1}。例如，

{phang2}
{cmd:by pid (time): generate growth = (bp - bp[_n-1])/bp}

{pstd}
根据 {hi:pid} 的值执行 {cmd:generate}，但首先验证数据是否在 {hi:pid} 和 {hi:time} 的排序中。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D byQuickstart:快速入门}

        {mansection D byRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt sort} 指定如果数据尚未按 {varlist} 排序，{cmd:by} 应对其进行排序。

{phang}
{opt rc0} 指定即使 {it:stata_cmd} 在某个 by 组中产生错误，{cmd:by} 仍然应在剩余的 by 组上运行 {it:stata_cmd}。默认操作是在发生错误时停止。{opt rc0} 在 {it:stata_cmd} 是估计命令且某些 by 组具有不足的观察值时特别有用。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}对每个 {cmd:foreign} 类别显示 {cmd:rep78} 的汇总统计{p_end}
{phang2}{cmd:. by foreign: summarize rep78}

{pstd}与上述命令相同，但检查数据是否在 {cmd:foreign} 和 {cmd:make} 中排序{p_end}
{phang2}{cmd:. by foreign (make): summarize rep78}{p_end}
{phang2}{err:未排序}{p_end}
{phang2}{search r(5)};{p_end}
{phang2}{cmd:. sort foreign make}{p_end}
{phang2}{cmd:. by foreign (make): summarize rep78}{p_end}

{pstd}对每个 {cmd:rep78} 类别显示 {cmd:foreign} 的频次计数{p_end}
{phang2}{cmd:. by rep78: tabulate foreign}{p_end}
{phang2}{err:未排序}{p_end}
{phang2}{search r(5)};{p_end}
{phang2}{cmd:. sort rep78}{p_end}
{phang2}{cmd:. by rep78: tabulate foreign}{p_end}

{pstd}等同于上述两个命令{p_end}
{phang2}{cmd:. by rep78, sort: tabulate foreign}

{pstd}等同于上述命令{p_end}
{phang2}{cmd:. bysort rep78: tabulate foreign}

{pstd}对每个 {cmd:rep78} 类别在 {cmd:foreign} 类别内显示 {cmd:price} 的汇总统计{p_end}
{phang2}{cmd:. by foreign rep78, sort: summarize price}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse autornd}{p_end}
{phang2}{cmd:. keep in 1/20}{p_end}

{pstd}将每个 {cmd:mpg} 类别的 {cmd:weight} 平均值存储在新变量 {cmd:mean_w} 中{p_end}
{phang2}{cmd:. by mpg, sort: egen mean_w = mean(weight)}{p_end}
    {hline}


{marker technote}{...}
{title:技术说明}

{pstd}
{cmd:by} 针对 {it:varlist} 定义的每个组重复 {it:stata_cmd}。如果 {it:stata_cmd} {help stored_results_zh:存储结果}，仅会存储在 {it:stata_cmd} 执行的最后一组中的结果。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <by.sthlp>}