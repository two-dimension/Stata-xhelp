{smcl}
{* *! version 1.2.8  19oct2017}{...}
{viewerdialog order "dialog order"}{...}
{vieweralsosee "[D] order" "mansection D order"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] describe" "help describe_zh"}{...}
{vieweralsosee "[D] ds" "help ds_zh"}{...}
{vieweralsosee "[D] edit" "help edit_zh"}{...}
{vieweralsosee "[D] rename" "help rename_zh"}{...}
{viewerjumpto "Syntax" "order_zh##syntax"}{...}
{viewerjumpto "Menu" "order_zh##menu"}{...}
{viewerjumpto "Description" "order_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "order_zh##linkspdf"}{...}
{viewerjumpto "Options" "order_zh##options"}{...}
{viewerjumpto "Examples" "order_zh##examples"}
{help order:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] order} {hline 2}}重新排列数据集中的变量{p_end}
{p2col:}({mansection D order:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 22 2}{opt order}
{varlist} [{cmd:,} {it:options}]

{synoptset 16}{...}
{synopthdr}
{synoptline}
{synopt :{opt first}}将 {varlist} 移至数据集开头；这是默认选项{p_end}
{synopt :{opt last}}将 {varlist} 移至数据集末尾{p_end}
{synopt :{opth b:efore(varname)}}将 {varlist} 移至 {it:varname} 之前{p_end}
{synopt :{opth a:fter(varname)}}将 {varlist} 移至 {it:varname} 之后{p_end}
{synopt :{opt alpha:betic}}按字母顺序排列 {varlist} 并将其移动到数据集开头{p_end}
{synopt :{opt seq:uential}}按字母顺序排列 {varlist} ，保持数字顺序，并将其移动到数据集开头{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 数据工具 > 变更变量顺序}


{marker description}{...}
{title:描述}

{pstd}
{opt order} 根据您指定的选项重新定位 {varlist} 的位置。如果未指定选项，{cmd:order} 将 {it:varlist} 移至数据集的开头，顺序与指定的变量顺序一致。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D orderQuickstart:快速开始}

        {mansection D orderRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt first} 将 {varlist} 移至数据集的开头。 这是默认选项。

{phang}
{opt last} 将 {varlist} 移至数据集的末尾。

{phang}
{opth before(varname)} 将 {varlist} 移至 {it:varname} 之前。

{phang}
{opth after(varname)} 将 {varlist} 移至 {it:varname} 之后。

{phang}
{opt alphabetic} 按字母顺序排列 {varlist} 并将其移至数据集的开头。 例如，这里是按 {cmd:alphabetic} 排列的变量列表：{cmd:a x7 x70 x8 x80 z}。 如果与其他选项结合使用，{opt alphabetic} 仅按字母顺序排列 {it:varlist}，而 {it:varlist} 的移动由其他选项控制。

{phang}
{opt sequential} 按字母顺序排列 {varlist}，保持具有相同顺序字母但附加数字不同的变量按顺序排列。 {it:varlist} 被移动到数据集的开头。 例如，这里是按 {cmd:sequential} 排列的变量列表： {cmd:a x7 x8 x70 x80 z}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse auto4}

{pstd}描述数据集{p_end}
{phang2}{cmd:. describe}

{pstd}将 {cmd:make} 和 {cmd:mpg} 移至数据集开头{p_end}
{phang2}{cmd:. order make mpg}

{pstd}描述数据集{p_end}
{phang2}{cmd:. describe}

{pstd}将 {cmd:length} 设为数据集中的最后一个变量{p_end}
{phang2}{cmd:. order length, last}

{pstd}描述数据集{p_end}
{phang2}{cmd:. describe}

{pstd}将 {cmd:weight} 设为数据集中的第三个变量{p_end}
{phang2}{cmd:. order weight, before(price)}

{pstd}描述数据集{p_end}
{phang2}{cmd:. describe}

{pstd}按字母顺序排列变量{p_end}
{phang2}{cmd:. order _all, alphabetic}

{pstd}描述数据集{p_end}
{phang2}{cmd:. describe}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <order.sthlp>}