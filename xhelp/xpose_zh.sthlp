{smcl}
{* *! version 1.1.17  19jun2019}{...}
{viewerdialog xpose "dialog xpose"}{...}
{vieweralsosee "[D] xpose" "mansection D xpose"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] reshape" "help reshape_zh"}{...}
{vieweralsosee "[D] stack" "help stack_zh"}{...}
{viewerjumpto "Syntax" "xpose_zh##syntax"}{...}
{viewerjumpto "Menu" "xpose_zh##menu"}{...}
{viewerjumpto "Description" "xpose_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xpose_zh##linkspdf"}{...}
{viewerjumpto "Options" "xpose_zh##options"}{...}
{viewerjumpto "Examples" "xpose_zh##examples"}
{help xpose:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] xpose} {hline 2}}互换观测值和变量{p_end}
{p2col:}({mansection D xpose:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}{cmd:xpose, clear} [{it:选项}]

{synoptset 15 tabbed}{...}
{synopthdr}
{synoptline}
{p2coldent :* {opt clear}}提醒您，如果未保存，则未转置的数据将丢失{p_end}
{synopt :{opt f:ormat}}使用未转置数据中最大的数字显示格式{p_end}
{synopt :{opth f:ormat(%fmt)}}将指定格式应用于转置数据中的所有变量{p_end}
{synopt :{opt v:arname}}添加包含原始变量名称的新变量 {opt _varname}{p_end}
{synopt :{opt prom:ote}}使用能保留数字精度的最紧凑数据类型{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:clear} 是必需的。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 其他变量转换命令}
     {bf:> 互换观测值和变量}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xpose} 转置数据，将变量变为观测值，观测值变为变量。所有新变量 -- 即那些通过转置创建的变量 -- 都将被设置为默认存储类型。因此，任何原始变量如果是字符串，将导致观测值包含缺失值。（如果您转置数据两次，您将丢失字符串变量的内容。）


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D xposeQuickstart:快速启动}

        {mansection D xposeRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt clear} 是必需的，旨在提醒您未转置的数据将丢失（除非您之前已保存数据）。

{phang}
{opt format} 指定将您未转置数据中的最大数字显示格式应用于转置数据。

{phang}
{opth format(%fmt)} 指定将特定数字显示格式应用于转置数据中的所有变量。

{phang}
{opt varname} 向转置数据中添加名为 {hi:_varname} 的新变量，包含原始变量名称。此外，无论是否使用 {cmd:varname} 选项，如果在转置之前数据集中已存在变量 {hi:_varname}，则这些名称将在转置后用于命名变量。因此，转置数据两次（几乎）将产生原始数据集。

{phang}
{opt promote} 指定转置数据使用能保留原始数据精度的最紧凑的数字 {help data types:data type}。

{pmore}
如果您的数据中包含任何 {opt double} 类型的变量，则转置数据中的所有变量将为 {opt double} 类型。

{pmore}
如果存在 {opt float} 类型的变量，但没有 {opt double} 或 {opt long} 类型的变量，则转置变量将为 {opt float} 类型。如果存在 {opt long} 类型的变量，但没有 {opt double} 或 {opt float} 类型的变量，则转置变量将为 {opt long} 类型。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse xposexmpl}

    列出原始数据
{phang2}{cmd:. list}

{pstd}互换观测值和变量，并将原始变量名称存储在 {cmd:_varname}{p_end}
{phang2}{cmd:. xpose, clear varname}

    列出结果
{phang2}{cmd:. list}

{pstd}还原原始数据{p_end}
{phang2}{cmd:. xpose, clear}

{pstd}列表显示数据已还原{p_end}
{phang2}{cmd:. list}

{pstd}互换观测值和变量，将原始变量名称存储在 {cmd:_varname}，并在数字变量上使用 {cmd:%6.2f} 格式{p_end}
{phang2}{cmd:. xpose, clear varname format(%6.2f)}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse xposexmpl, clear}

{pstd}描述原始数据{p_end}
{phang2}{cmd:. describe}

{pstd}互换观测值和变量，将原始变量名称存储在 {cmd:_varname}，并将未转置数据中的最大数字显示格式应用于转置数据中的变量{p_end}
{phang2}{cmd:. xpose, clear varname format}

{pstd}描述结果数据{p_end}
{phang2}{cmd:. describe}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xpose.sthlp>}