{smcl}
{* *! version 1.2.10  12dec2018}{...}
{vieweralsosee "[R] vce_option" "mansection R vce_option"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bootstrap" "help bootstrap_zh"}{...}
{vieweralsosee "[R] jackknife" "help jackknife_zh"}{...}
{vieweralsosee "[XT] vce_options" "help xt_vce_options_zh"}{...}
{viewerjumpto "Syntax" "vce_option_zh##syntax"}{...}
{viewerjumpto "Description" "vce_option_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "vce_option_zh##linkspdf"}{...}
{viewerjumpto "Options" "vce_option_zh##options"}{...}
{viewerjumpto "Remarks" "vce_option_zh##remarks"}
{help vce_option:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[R]} {it:vce_option} {hline 2}}方差估计器
{p_end}
{p2col:}({mansection R vce_option:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 20 2}
{it:estimation_cmd}
... [{cmd:,} {opt vce(vcetype)} ...]

{synoptset 32}{...}
{synopt :{it:vcetype}}描述{p_end}
{synoptline}
{synopt :基于似然的}{p_end}
{synopt :{cmd:oim}}观察信息矩阵（OIM）{p_end}
{synopt :{cmd:opg}}梯度的外积（OPG）向量{p_end}

{synopt :三明治估计器}{p_end}
{synopt :{cmdab:r:obust}}Huber/White/三明治估计器{p_end}
{synopt :{cmdab:cl:uster} {it:clustvar}}聚类三明治估计器{p_end}

{synopt :基于复制的}{p_end}
{synopt :{cmdab:boot:strap} [{cmd:,} {it:{help bootstrap_zh:bootstrap_options}}]}自助法估计{p_end}
{synopt :{cmdab:jack:knife} [{cmd:,} {it:{help jackknife_zh:jackknife_options}}]}留一法估计{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
此条目描述了 {opt vce()} 选项，该选项在大多数
估计命令中是通用的。 {cmd:vce()} 指定如何估计与参数估计
相对应的方差-协方差矩阵（VCE）。
在参数估计表中报告的标准误是 VCE 的方差（对角元素）的
平方根。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R vce_optionRemarksandexamples:备注和示例}

        {mansection R vce_optionMethodsandformulas:方法和公式}

{pstd}
上述章节不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:标准错误/稳健}

{phang}
{cmd:vce(oim)} 通常是使用最大似然拟合模型的默认选项。 {cmd:vce(oim)} 使用观察信息矩阵（OIM）；见 {manhelp ml R}。

{phang}
{cmd:vce(opg)} 使用梯度的外积（OPG）向量之和；见 {manhelp ml R}。 当指定 {cmd:technique(bhhh)} 选项时，这是默认的 VCE；见 {help maximize_zh:[R] Maximize}。

{phang}
{cmd:vce(robust)} 使用稳健或三明治方差估计器。
该估计器对某些类型的错误规格是稳健的，只要观察值相互独立；见 {findalias frrobust}。

{pmore}
如果命令允许 {cmd:pweight} 且你指定了它们，则隐含了 {cmd:vce(robust)}；见 {findalias frwestp}。

{phang}
{cmd:vce(cluster} {it:clustvar}{cmd:)} 指定标准误允许组内相关性，放宽了通常要求观察值相互独立的要求。 也就是说，观察值在组（聚类）之间是独立的，但不一定是在组内独立。 {it:clustvar} 指定每个观察值属于哪个组，例如在对个体进行重复观察的数据中使用 {cmd:vce(cluster personid)}。 {cmd:vce(cluster} {it:clustvar}{cmd:)} 会影响估计器的标准误和方差-协方差矩阵，但不会影响估计的系数；见 {findalias frrobust}。

{phang}
{cmd:vce(bootstrap} [{cmd:,} {it:bootstrap_options}]{cmd:)} 使用自助法；见 {manhelp bootstrap R}。 在使用 {cmd:vce(bootstrap)} 进行估计后，参见 {manhelp bootstrap_postestimation R:bootstrap postestimation} 以获取基于百分位数或偏差修正的置信区间。

{phang}
{cmd:vce(jackknife} [{cmd:,} {it:jackknife_options}]{cmd:)} 使用留一法；见 {manhelp jackknife R}。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

{pmore}
{help vce_option##Prefix_commands:前缀命令}{break}
{help vce_option##Passing_options:在 vce() 中传递选项}


{marker Prefix_commands}{...}
{title:前缀命令}

{pstd}
指定 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)} 通常等同于使用相应的前缀命令。
以下是一个使用 {opt jackknife} 结合 {cmd:regress} 的示例。

	{cmd:. sysuse auto}
        {cmd:. regress mpg turn trunk, vce(jackknife)}
        {cmd:. jackknife: regress mpg turn trunk}

{pstd}
在这里，无论我们指定选项 {cmd:vce(jackknife)} 还是使用 {cmd:jackknife} 前缀都没有关系。

{pstd}
然而，{cmd:vce(jackknife)} 应该替代 {cmd:jackknife} 前缀使用，因为它们并不总是等价。 例如，为了正确地使用 {cmd:jackknife} 前缀与 {cmd:clogit}，你必须告诉 {cmd:jackknife} 忽略整个组而不是单个观察。 指定 {cmd:vce(jackknife)} 可以自动完成这一点。

	{cmd:. webuse clogitid}
        {cmd:. jackknife, cluster(id): clogit y x1 x2, group(id)}

{pstd}
当指定 {opt vce()} 选项时，这些额外的信息会被 {cmd:clogit} 自动传递给 {cmd:jackknife}。

        {cmd:. clogit y x1 x2, group(id) vce(jackknife)}


{marker Passing_options}{...}
{title:在 vce() 中传递选项}

{pstd}
如果你希望为自助法或留一法估计指定更多选项，可以将它们包含在 {opt vce()} 选项中。 下面我们请求 300 次自助法重复并将重复结果保存在 {cmd:bsreg.dta} 中。

        {cmd:. sysuse auto}
        {cmd:. regress mpg turn trunk, vce(bootstrap, rep(300) saving(bsreg))}
	{cmd:. bstat using bsreg}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <vce_option.sthlp>}