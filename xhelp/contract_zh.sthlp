{smcl}
{* *! version 1.1.9  19oct2017}{...}
{viewerdialog contract "dialog contract"}{...}
{vieweralsosee "[D] contract" "mansection D contract"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] collapse" "help collapse_zh"}{...}
{vieweralsosee "[D] duplicates" "help duplicates_zh"}{...}
{vieweralsosee "[D] expand" "help expand_zh"}{...}
{viewerjumpto "Syntax" "contract_zh##syntax"}{...}
{viewerjumpto "Menu" "contract_zh##menu"}{...}
{viewerjumpto "Description" "contract_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "contract_zh##linkspdf"}{...}
{viewerjumpto "Options" "contract_zh##options"}{...}
{viewerjumpto "Examples" "contract_zh##examples"}
{help contract:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[D] contract} {hline 2}}生成频率和百分比的数据集{p_end}
{p2col:}({mansection D contract:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:contract}
{varlist}
{ifin}
[{it:{help contract##weight:weight}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :选项}
{synopt :{opth f:req(newvar)}}频率变量的名称；默认为 {opt _freq}
{p_end}
{synopt :{opth cf:req(newvar)}}创建累积频率变量{p_end}
{synopt :{opth p:ercent(newvar)}}创建百分比变量{p_end}
{synopt :{opth cp:ercent(newvar)}}创建累积百分比变量{p_end}
{synopt :{opt float}}生成浮点型的百分比变量{p_end}
{synopt :{opth form:at(format)}}新生成的百分比变量的显示格式；
默认为 {cmd:format(%8.2f)}{p_end}
{synopt :{opt z:ero}}包含频率为零的组合{p_end}
{synopt :{opt nomiss}}删除缺失值的观测{p_end}
{synoptline}
{p2colreset}{...}
{marker weight}{...}
{p 4 6 2}
{opt fweight}被允许；见 {help weight_zh}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或改变数据 > 其他变量转换命令}
     {bf:> 生成频率的数据集}


{marker description}{...}
{title:描述}

{pstd}
{opt contract} 用新的数据集替换内存中的数据集，该数据集由数据中存在的所有 {varlist} 的组合和一个包含每个组合频率的新变量组成。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D contractQuickstart:快速入门}

        {mansection D contractRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:选项}

{phang}
{opth freq(newvar)} 指定频率变量的名称。如果未指定，将使用 {opt _freq}。

{phang}
{opth cfreq(newvar)} 指定累积频率变量的名称。如果未指定，将不创建累积频率变量。

{phang}
{opth percent(newvar)} 指定百分比变量的名称。如果未指定，将不创建百分比变量。

{phang}
{opth cpercent(newvar)} 指定累积百分比变量的名称。如果未指定，将不创建累积百分比变量。

{phang}
{opt float} 指定 {opt percent()} 和 {opt cpercent()} 指定的百分比变量将作为 {helpb data types:float} 类型的变量生成。如果未指定 {opt float}，这些变量将作为 {helpb double} 类型的变量生成。所有生成的变量都被压缩为尽可能小的存储类型，而不损失精度；见 {manhelp compress D}。

{phang}
{opth format(format)} 指定由 {opt percent()} 和 {opt cpercent()}所生成的百分比变量的显示格式。如果未指定 {opt format()}，这些变量将具有显示格式 {cmd:%8.2f}。

{phang}
{opt zero} 指定包含频率为零的组合。

{phang}
{opt nomiss} 指定删除在任何 {varlist} 变量上具有缺失值的观测。如果未指定 {opt nomiss}，将使用所有可能的观测。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}用包含 {cmd:foreign} 和 {cmd:rep78} 的所有组合以及每个组合频率的数据集替换数据集{p_end}
{phang2}{cmd:. contract foreign rep78}{p_end}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}

{pstd}与上面相同，但包括频率为 0 的组合{p_end}
{phang2}{cmd:. contract foreign rep78, zero}{p_end}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}

{pstd}与上面相同，但将频率变量命名为 {cmd:count}{p_end}
{phang2}{cmd:. contract foreign rep78, zero freq(count)}{p_end}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}

{pstd}与上面相同，但删除缺失值的观测{p_end}
{phang2}{cmd:. contract foreign rep78, zero freq(count) nomiss}{p_end}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}

{pstd}在数据集中包含累积频率变量{p_end}
{phang2}{cmd:. contract foreign rep78, cfreq(cumfreq)}{p_end}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}

{pstd}与上面相同，但在数据集中还包括百分比变量和累积百分比变量{p_end}
{phang2}{cmd:. contract foreign rep78, cfreq(cumfreq) percent(percentage) cpercent(cumpercent)}{p_end}

{pstd}列出结果{p_end}
{phang2}{cmd:. list, abbrev(10)}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <contract.sthlp>}