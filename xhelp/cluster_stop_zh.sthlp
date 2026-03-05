{smcl}
{* *! version 1.1.15  19oct2017}{...}
{viewerdialog "cluster stop" "dialog cluster_stop"}{...}
{viewerdialog "clustermat stop" "dialog clustermat_stop"}{...}
{vieweralsosee "[MV] cluster stop" "mansection MV clusterstop"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] cluster" "help cluster_zh"}{...}
{vieweralsosee "[MV] clustermat" "help clustermat_zh"}{...}
{viewerjumpto "Syntax" "cluster stop##syntax"}{...}
{viewerjumpto "Menu" "cluster stop##menu"}{...}
{viewerjumpto "Description" "cluster stop##description"}{...}
{viewerjumpto "Links to PDF documentation" "cluster_stop_zh##linkspdf"}{...}
{viewerjumpto "Options" "cluster stop##options"}{...}
{viewerjumpto "Examples" "cluster stop##examples"}{...}
{viewerjumpto "Stored results" "cluster stop##results"}{...}
{viewerjumpto "Reference" "cluster stop##reference"}
{help cluster_stop:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[MV] cluster stop} {hline 2}}聚类分析停止规则{p_end}
{p2col:}({mansection MV clusterstop:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

包含 help cluster_stop_syntax


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量分析 > 聚类分析 > 后聚类 >}
        {bf:聚类分析停止规则}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cluster} {cmd:stop} 和 {cmd:clustermat} {cmd:stop} 计算每个聚类解的停止规则值。这些命令目前提供两种停止规则，即 Calinski 和 Harabasz 假-F 指数以及 Duda-Hart Je(2)/Je(1) 指数。对于这两种规则，较大的值表示聚类更明显。与 Duda-Hart Je(2)/Je(1) 值一起呈现的是伪-T平方值。较小的伪-T平方值指示聚类更明显。

{pstd}
用户可以添加更多 {cmd:stop} 规则；请参见 {manhelp cluster_subroutines MV:聚类编程子例程}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV clusterstopQuickstart:快速入门}

        {mansection MV clusterstopRemarksandexamples:备注和示例}

        {mansection MV clusterstopMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{marker rule()}{...}
{phang}
{cmd:rule(calinski} | {cmd:duda} | {it:rule_name}{cmd:)} 指定停止规则。{cmd:rule(calinski)} 为默认值，指定 Calinski-Harabasz 假-F 指数。{cmd:rule(duda)} 指定 Duda-Hart Je(2)/Je(1) 指数。

{pmore}
{cmd:rule(calinski)} 允许用于层次和非层次聚类分析。{cmd:rule(duda)} 仅允许用于层次聚类分析。

{pmore}
您可以通过使用 {opt rule(rule_name)} 选项向 {cmd:cluster} {cmd:stop} 命令添加停止规则（请参见 {manhelp cluster_subroutines MV:聚类编程子例程}）。{manhelp cluster_subroutines MV:聚类编程子例程} 通过显示一个程序来说明如何添加停止规则，该程序添加了 {cmd:rule(stepsize)} 选项，实施了在 {help cluster stop##MC1985:Milligan 和 Cooper (1985)} 中提到的简单步长停止规则。

{phang}
{opth groups(numlist)} 指定要计算停止规则的聚类分组。{cmd:groups(3/20)} 指定计算三组解决方案、四组解决方案……和 20 组解决方案的度量。

{pmore}
使用 {cmd:rule(duda)}，默认是 {cmd:groups(1/15)}。对于层次聚类分析，使用 {cmd:rule(calinski)} 的默认是 {cmd:groups(2/15)}。由于该度量在退化的一组聚类解决方案中未定义，因此不允许使用 {cmd:groups(1)} 与 {cmd:rule(calinski)}。非层次聚类分析不需要（且不允许）使用 {cmd:groups()} 选项。

{pmore}
如果在层次聚类分析结构中存在平局，则可能无法计算一些（或所有）请求的停止规则解决方案。{bind:{cmd:cluster stop}} 会对因层次结构中的平局导致停止规则未定义的 {cmd:groups()} 进行跳过处理，不会进行评论。

{phang}
{opt matrix(matname)} 将结果保存在名为 {it:matname} 的矩阵中。

{pmore}
对于 {cmd:rule(calinski)}，矩阵有两列，第一列给出聚类数量，第二列给出相应的 Calinski-Harabasz 假-F 停止规则指数。

{pmore}
对于 {cmd:rule(duda)}，矩阵有三列：第一列给出聚类数量，第二列给出相应的 Duda-Hart Je(2)/Je(1) 停止规则指数，第三列提供相应的伪-T平方值。

{phang}
{opth variables(varlist)} 指定用于计算停止规则的变量。默认情况下，使用用于聚类分析的变量。{cmd:variables()} 对于 {cmd:clustermat} 生成的聚类解决方案是必需的。


{marker examples}{...}
{title:示例}

{phang}{cmd:. cluster stop}{p_end}
{phang}{cmd:. cluster stop myclus, rule(duda)}{p_end}
{phang}{cmd:. cluster stop, rule(calinski) groups(2/20) matrix(z)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:cluster stop} 和 {cmd:clustermat stop} 使用 {cmd:rule(calinski)} 时，会将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(calinski_}{it:#}{cmd:)}}#组的 Calinski-Harabasz 假-F{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(rule)}}{cmd:calinski}{p_end}
{synopt:{cmd:r(label)}}{cmd:C-H 假-F}{p_end}
{synopt:{cmd:r(longlabel)}}{cmd:Calinski & Harabasz 假-F}{p_end}

{pstd}
{cmd:cluster stop} 和 {cmd:clustermat stop} 使用 {cmd:rule(duda)} 时，会将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(duda_}{it:#}{cmd:)}}#组的 Duda-Hart Je(2)/Je(1) 值{p_end}
{synopt:{cmd:r(dudat2_}{it:#}{cmd:)}}#组的 Duda-Hart 假-T平方值{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(rule)}}{cmd:duda}{p_end}
{synopt:{cmd:r(label)}}{cmd:D-H Je(2)/Je(1)}{p_end}
{synopt:{cmd:r(longlabel)}}{cmd:Duda & Hart Je(2)/Je(1)}{p_end}
{synopt:{cmd:r(label2)}}{cmd:D-H 假-T平方}{p_end}
{synopt:{cmd:r(longlabel2)}}{cmd:Duda & Hart 假-T平方}{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker MC1985}{...}
{phang}
Milligan, G. W., 和 M. C. Cooper. 1985.
关于确定数据集中聚类数量程序的检查。{it:Psychometrika} 50: 159-179。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cluster_stop.sthlp>}