{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog fillin "dialog fillin"}{...}
{vieweralsosee "[D] fillin" "mansection D fillin"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] cross" "help cross_zh"}{...}
{vieweralsosee "[D] expand" "help expand_zh"}{...}
{vieweralsosee "[D] joinby" "help joinby_zh"}{...}
{vieweralsosee "[D] save" "help save_zh"}{...}
{viewerjumpto "Syntax" "fillin_zh##syntax"}{...}
{viewerjumpto "Menu" "fillin_zh##menu"}{...}
{viewerjumpto "Description" "fillin_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fillin_zh##linkspdf"}{...}
{viewerjumpto "Examples" "fillin_zh##examples"}
{help fillin:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] fillin} {hline 2}}矩形化数据集{p_end}
{p2col:}({mansection D fillin:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:fillin} {varlist}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或变更数据 > 其他变量转换命令}
     {bf:> 矩形化数据集}


{marker description}{...}
{title:描述}

{pstd}
{opt fillin} 添加缺失数据的观测值，使得所有 {varlist} 的组合存在，从而实现 {it:varlist} 的完整矩形化。 {opt fillin} 还会向数据集中添加变量 {opt _fillin}。 {opt _fillin} 对于通过 {opt fillin} 创建的观测值为 1，对于之前存在的观测值为 0。

{pstd}
{it:varlist} 不能包含 {helpb data types:strL}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D fillinQuickstart:快速入门}

        {mansection D fillinRemarksandexamples:备注与示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse fillin1}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}为数据集中存在的 {cmd:sex}、{cmd:race} 和 {cmd:age_group} 的所有组合创建缺失值观测{p_end}
{phang2}{cmd:. fillin sex race age_group}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fillin.sthlp>}