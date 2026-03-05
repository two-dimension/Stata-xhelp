{smcl}
{* *! version 1.3.12  17may2019}{...}
{vieweralsosee "[D] clear" "mansection D clear"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] discard" "help discard_zh"}{...}
{vieweralsosee "[D] drop" "help drop_zh"}{...}
{viewerjumpto "Syntax" "clear_zh##syntax"}{...}
{viewerjumpto "Description" "clear_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "clear_zh##linkspdf"}{...}
{viewerjumpto "Examples" "clear_zh##examples"}
{help clear:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] clear} {hline 2}}清除内存{p_end}
{p2col:}({mansection D clear:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 4}{cmd:clear}

{p 8 16 4}{cmd:clear} [ {cmd:mata} | {cmd:results} | {cmd:matrix} | {cmd:programs} | {cmd:ado} | {cmd:rngstream} | {cmd:frames} ]

{p 8 16 4}{cmd:clear} [ {cmd:all} | {cmd:*} ]


{marker description}{...}
{title:描述}

{pstd}
{cmd:clear} 本身会从内存中删除数据和数值标签，等同于输入

{p2colset 9 34 36 2}{...}
{p2col :{cmd:. version {ccl stata_version}}}{p_end}
{p2col :{cmd:. drop _all}}(见 {manhelp drop D}){p_end}
{p2col :{cmd:. label drop _all}}(见 {manhelp label D}){p_end}
{p2colreset}{...}

{pstd}
{cmd:clear mata} 会从内存中删除 Mata 函数和对象，等同于输入

{p2colset 9 34 36 2}{...}
{p2col :{cmd:. version {ccl stata_version}}}{p_end}
{p2col :{cmd:. mata: mata clear}}(见 {manhelp mata_clear M-3:mata clear}){p_end}
{p2colreset}{...}

{pstd}
{cmd:clear results} 会从内存中消除存储结果，等同于输入

{p2colset 9 34 36 2}{...}
{p2col :{cmd:. version {ccl stata_version}}}{p_end}
{p2col :{cmd:. return clear}}(见 {manhelp return P}){p_end}
{p2col :{cmd:. ereturn clear}}(见 {manhelp return P}){p_end}
{p2col :{cmd:. sreturn clear}}(见 {manhelp return P}){p_end}
{p2col :{cmd:. _return drop _all}}(见 {manhelp _return P}){p_end}
{p2colreset}{...}

{pstd}
{cmd:clear matrix} 会从内存中消除所有由 Stata 的 {cmd:matrix} 命令创建的矩阵；它不会删除内存中的 Mata 矩阵。{cmd:clear matrix} 等同于输入

{p2colset 9 34 36 2}{...}
{p2col :{cmd:. version {ccl stata_version}}}{p_end}
{p2col :{cmd:. return clear}}(见 {manhelp return P}){p_end}
{p2col :{cmd:. ereturn clear}}(见 {manhelp return P}){p_end}
{p2col :{cmd:. sreturn clear}}(见 {manhelp return P}){p_end}
{p2col :{cmd:. _return drop _all}}(见 {manhelp _return P}){p_end}
{p2col :{cmd:. matrix drop _all}}(见 {manhelp matrix_utility P:matrix utility}){p_end}
{p2col :{cmd:. estimates drop _all}}(见 {manhelp estimates R}){p_end}
{p2colreset}{...}

{pstd}
{cmd:clear programs} 会从内存中消除所有程序，等同于输入

{p2colset 9 34 36 2}{...}
{p2col :{cmd:. version {ccl stata_version}}}{p_end}
{p2col :{cmd:. program drop _all}}(见 {manhelp program P}){p_end}
{p2colreset}{...}

{pstd}
{cmd:clear ado} 会从内存中消除所有自动加载的 ado 文件程序（但不包括交互式或通过 do 文件定义的程序）。等同于输入

{p2colset 9 34 36 2}{...}
{p2col :{cmd:. version {ccl stata_version}}}{p_end}
{p2col :{cmd:. program drop _allado}}(见 {manhelp program P}){p_end}
{p2colreset}{...}

{pstd}
{cmd:clear} {cmd:rngstream} 会从内存中消除所有 {helpb mt64s} 流的存储随机数状态（包括当前流）。它会将 {cmd:mt64s} 生成器重置为每个流的开始，基于当前的 {cmd:mt64s} 种子。{cmd:clear rngstream} 不会改变当前的 {cmd:mt64s} 种子和流。{cmd:mt64s} 种子和流可以通过 {help set_seed_zh:set seed} 和 {help set_rngstream_zh:set rngstream} 分别设置。

{pstd}
{cmd:clear} {cmd:frames} 会从内存中消除所有 {help frames_zh:frames}，并将 Stata 恢复到最初的状态，拥有一个名为 {cmd:default} 的空框架。

{pstd}
{cmd:clear all} 和 {cmd:clear *} 是同义词。它们从内存中删除所有数据、值标签、矩阵、标量、约束、聚类、存储结果、框架、sersets 和 Mata 函数和对象。它们还会关闭所有打开的文件和后文件，清除类系统，关闭任何打开的图形窗口和对话框，从内存中删除所有程序，并将所有计时器重置为零。然而，它们不会调用 {cmd:clear rngstream}。它们等同于输入

{p2colset 9 34 36 2}{...}
{p2col :{cmd:. version {ccl stata_version}}}{p_end}
{p2col :{cmd:. drop _all}}(见 {manhelp drop D}){p_end}
{p2col :{cmd:. frames reset}}(见 {manhelp frames_reset D:frames reset}){p_end}
{p2col :{cmd:. label drop _all}}(见 {manhelp label D}){p_end}
{p2col :{cmd:. matrix drop _all}}(见 {manhelp matrix_drop P:matrix utility}){p_end}
{p2col :{cmd:. scalar drop _all}}(见 {manhelp scalar P}){p_end}
{p2col :{cmd:. constraint drop _all}}(见 {manhelp constraint R}){p_end}
{p2col :{cmd:. cluster drop _all}}(见 {manhelp cluster_drop MV:cluster utility}){p_end}
{p2col :{cmd:. file close _all}}(见 {manhelp file P}){p_end}
{p2col :{cmd:. postutil clear}}(见 {manhelp postutil P:postfile}){p_end}
{p2col :{cmd:. _return drop _all}}(见 {manhelp _return P}){p_end}
{p2col :{cmd:. discard}}(见 {manhelp discard P}){p_end}
{p2col :{cmd:. program drop _all}}(见 {manhelp program P}){p_end}
{p2col :{cmd:. timer clear}}(见 {manhelp timer P}){p_end}
{p2col :{cmd:. putdocx clear}}(见 {manhelp putdocx_begin RPT:putdocx begin}){p_end}
{p2col :{cmd:. putpdf clear}}(见 {manhelp putpdf_begin RPT:putpdf begin}){p_end}
{p2col :{cmd:. mata: mata clear}}(见 {manhelp mata_clear M-3:mata clear}){p_end}
{p2col :{cmd:. python clear}}(见 {manhelp python P}){p_end}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D clearQuickstart:快速入门}

        {mansection D clearRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. describe}{p_end}
{phang2}{cmd:. label list}

{pstd}从内存中删除所有数据和数值标签{p_end}
{phang2}{cmd:. clear}

{pstd}显示数据和数值标签已经从内存中消除{p_end}
{phang2}{cmd:. describe}{p_end}
{phang2}{cmd:. label list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress price mpg rep78 foreign}{p_end}
{phang2}{cmd:. summarize price}{p_end}
{phang2}{cmd:. ereturn list}{p_end}
{phang2}{cmd:. return list}{p_end}

{pstd}从内存中消除存储结果{p_end}
{phang2}{cmd:. clear results}

{pstd}显示存储结果已被消除{p_end}
{phang2}{cmd:. ereturn list}{p_end}
{phang2}{cmd:. return list}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <clear.sthlp>}