{smcl}
{* *! version 1.1.11  15jun2019}{...}
{viewerdialog bsample "dialog bsample"}{...}
{vieweralsosee "[R] bsample" "mansection R bsample"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bootstrap" "help bootstrap_zh"}{...}
{vieweralsosee "[R] bstat" "help bstat_zh"}{...}
{vieweralsosee "[D] sample" "help sample_zh"}{...}
{vieweralsosee "[R] simulate" "help simulate_zh"}{...}
{vieweralsosee "[D] splitsample" "help splitsample_zh"}{...}
{viewerjumpto "Syntax" "bsample_zh##syntax"}{...}
{viewerjumpto "Menu" "bsample_zh##menu"}{...}
{viewerjumpto "Description" "bsample_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bsample_zh##linkspdf"}{...}
{viewerjumpto "Options" "bsample_zh##options"}{...}
{viewerjumpto "Examples" "bsample_zh##examples"}
{help bsample:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] bsample} {hline 2}}有放回的抽样{p_end}
{p2col:}({mansection R bsample:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:bsample}
	[{it:exp}]
	{ifin}
	[{cmd:,} {it:options}]

{phang}
其中 {it:exp} 是指定样本大小的标准 Stata 表达式；请参阅 {help exp_zh}。

{pmore}
当未指定 {cmd:cluster()} 或 {cmd:strata()} 选项时，{it:exp} 必须小于或等于 {helpb _N} （观察值的数量）。如果未指定 {it:exp}，则默认为 {cmd:_N}。

{pmore}
不满足可选的 {help if_zh} 和 {help in_zh} 条件的观察值将从结果数据集中删除。

{synoptset 21}{...}
{synopthdr}
{synoptline}
{synopt :{opth str:ata(varlist)}}标识层的变量{p_end}
{synopt :{opth cl:uster(varlist)}}标识重抽样集群的变量{p_end}
{synopt :{opth id:cluster(newvar)}}创建新的集群 ID 变量{p_end}
{synopt :{opth w:eight(varname)}}用频率权重替换 {it:varname}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 重抽样 > 抽取 bootstrap 样本}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bsample} 用当前数据集中的重抽样（有放回的随机样本）替换内存中的数据。可以在每次复制中选择集群作为代替观察值。还可以在层内选择 bootstrap 样本。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection R bsampleQuickstart:快速入门}

        {mansection R bsampleRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth strata(varlist)} 指定标识层的变量。如果指定了 {opt strata()}，则在每个层内选择 bootstrap 样本，并且 {it:exp} 必须小于或等于定义层内的 {cmd:_N}。

{phang}
{opth cluster(varlist)} 指定标识重抽样集群的变量。如果指定了 {opt cluster()}，则每次复制中提取的样本为集群的 bootstrap 样本，并且 {it:exp} 必须小于或等于由 {cmd:cluster()} 选项识别的 N_c（集群数量）。如果同时指定了 {cmd:strata()}，则 {it:exp} 必须小于或等于层内集群的数量。

{phang}
{opth idcluster(newvar)} 创建一个包含每个重抽样集群的唯一标识符的新变量。

{phang}
{opth weight(varname)} 指定一个变量，其中将放置抽样频率。 {it:varname} 必须是一个现有变量，将被替换。在 {cmd:bsample} 之后， {it:varname} 可作为任何接受 {opt fweight} 的 Stata 命令中的 {opt fweight} 使用，这可以加速像 {cmd:regress} 和 {cmd:summarize} 的重抽样。此选项不可与 {opt idcluster()} 结合使用。

{pmore}
默认情况下， {cmd:bsample} 用抽取的观察值替换内存中的数据；然而，指定 {opt weight()} 选项只会更改指定的 {it:varname}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse bsample1}{p_end}

{pstd}进行大小为 200 的 bootstrap 抽样{p_end}
{phang2}{cmd:. bsample 200}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse bsample1, clear}{p_end}

{pstd}对女性和男性进行大小为 200 的 bootstrap 抽样{p_end}
{phang2}{cmd:. bsample 200, strata(female)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse bsample1, clear}{p_end}

{pstd}对女性和男性进行 10% 的 bootstrap 抽样{p_end}
{phang2}{cmd:. bsample round(0.1*_N), strata(female)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse bsample1, clear}{p_end}

{pstd}从女性中抽取大小为 200 的 bootstrap 样本{p_end}
{phang2}{cmd:. bsample 200 if female}{p_end}

    {hline}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bsample.sthlp>}