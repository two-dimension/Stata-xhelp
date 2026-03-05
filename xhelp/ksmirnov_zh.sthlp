{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog ksmirnov "dialog ksmirnov"}{...}
{vieweralsosee "[R] ksmirnov" "mansection R ksmirnov"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] runtest" "help runtest_zh"}{...}
{vieweralsosee "[R] sktest" "help sktest_zh"}{...}
{vieweralsosee "[R] swilk" "help swilk_zh"}{...}
{viewerjumpto "Syntax" "ksmirnov_zh##syntax"}{...}
{viewerjumpto "Menu" "ksmirnov_zh##menu"}{...}
{viewerjumpto "Description" "ksmirnov_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ksmirnov_zh##linkspdf"}{...}
{viewerjumpto "Options" "ksmirnov_zh##options"}{...}
{viewerjumpto "Examples" "ksmirnov_zh##examples"}{...}
{viewerjumpto "Stored results" "ksmirnov_zh##results"}
{help ksmirnov:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] ksmirnov} {hline 2}}Kolmogorov-Smirnov 分布相等性检验{p_end}
{p2col:}({mansection R ksmirnov:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
单样本 Kolmogorov-Smirnov 检验

{p 8 17 2}
{cmd:ksmirnov} {varname} {cmd:=} {it:{help exp_zh}} {ifin}


{phang}
双样本 Kolmogorov-Smirnov 检验

{p 8 17 2}
{cmd:ksmirnov} {varname} {ifin} {cmd:,} {opth "by(varlist:groupvar)"}
 [{opt e:xact}]


{pstd}
在第一个语法中，{varname} 是正在测试的变量，其分布被检验，而 {it:{help exp_zh}} 必须计算为相应的（理论）累积分布函数。在第二个语法中，{it:{help varlist_zh:groupvar}} 必须有两个不同的值。{it:groupvar} 的第一个值对应的 {it:varname} 的分布与第二个值的分布进行比较。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 非参数分析 > 假设检验 >}
      {bf:Kolmogorov-Smirnov 检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ksmirnov} 进行单样本和双样本 Kolmogorov-Smirnov 检验以验证分布的相等性。单样本检验比较被检验变量与指定分布的分布。双样本检验检验两个样本的分布是否相等。

{pstd}
在检验正态性时，请参见 {manhelp sktest R} 和 {manhelp swilk R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R ksmirnovQuickstart:快速开始}

        {mansection R ksmirnovRemarksandexamples:备注和示例}

        {mansection R ksmirnovMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth "by(varlist:groupvar)"} 是必需的。它指定一个二元变量以识别两个组。

{phang}
{opt exact} 指定计算确切的 p 值。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse ksxmpl}{p_end}
{phang2}{cmd:. summarize x}{p_end}

{pstd}单样本检验{p_end}
{phang2}{cmd:. ksmirnov x = normal((x-r(mean))/r(sd))}{p_end}

{pstd}双样本检验{p_end}
{phang2}{cmd:. ksmirnov x, by(group)}

{pstd}双样本检验，确切值{p_end}
{phang2}{cmd:. ksmirnov x, by(group) exact}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:ksmirnov} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(D_1)}}第1行的 D{p_end}
{synopt:{cmd:r(p_1)}}第1行的 p 值{p_end}
{synopt:{cmd:r(D_2)}}第2行的 D{p_end}
{synopt:{cmd:r(p_2)}}第2行的 p 值{p_end}
{synopt:{cmd:r(D)}}组合 D{p_end}
{synopt:{cmd:r(p)}}组合 p 值{p_end}
{synopt:{cmd:r(p_exact)}}确切组合 p 值{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(group1)}}第1行的组名{p_end}
{synopt:{cmd:r(group2)}}第2行的组名{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ksmirnov.sthlp>}