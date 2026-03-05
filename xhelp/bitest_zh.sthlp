{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog bitest "dialog bitest"}{...}
{viewerdialog bitesti "dialog bitesti"}{...}
{vieweralsosee "[R] bitest" "mansection R bitest"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ci" "help ci_zh"}{...}
{vieweralsosee "[R] prtest" "help prtest_zh"}{...}
{viewerjumpto "Syntax" "bitest_zh##syntax"}{...}
{viewerjumpto "Menu" "bitest_zh##menu"}{...}
{viewerjumpto "Description" "bitest_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bitest_zh##linkspdf"}{...}
{viewerjumpto "Option" "bitest_zh##option"}{...}
{viewerjumpto "Examples" "bitest_zh##examples"}{...}
{viewerjumpto "Stored results" "bitest_zh##results"}
{help bitest:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] bitest} {hline 2}}二项式概率检验{p_end}
{p2col:}({mansection R bitest:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    二项式概率检验

{p 8 15 2}
{cmd:bitest}
	{varname} {cmd:==} {it:#p} {ifin}
        [{it:{help bitest##weight:weight}}]
	[{cmd:,} {opt d:etail}]


    二项式概率检验的即时形式

{p 8 16 2}
{cmd:bitesti}
	{it:#N} {it:#succ} {it:#p} [{cmd:,} {opt d:etail}]


{phang}
{opt by} 可以与 {cmd:bitest} 一起使用；详见 {manhelp by D}。

{marker weight}{...}
{phang}
{opt fweight} 可以与 {cmd:bitest} 一起使用；详见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

    {title:bitest}

{phang2}
{bf:统计 > 摘要、表格和检验 > 经典假设检验 >}
        {bf:二项式概率检验}

    {title:bitesti}

{phang2}
{bf:统计 > 摘要、表格和检验 > 经典假设检验 >}
        {bf:二项式概率检验计算器}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bitest} 对二项随机变量执行精确的假设检验。
原假设是试验成功的概率为 {it:#p}。总试验数是 {varname} 的非缺失值数量（在 {cmd:bitest} 中）或 {it:#N}（在 {cmd:bitesti} 中）。观察到的成功次数是 {it:varname} 中的 1 的数量（在 {cmd:bitest} 中）或 {it:#succ}（在 {cmd:bitesti} 中）。{it:varname} 必须仅包含 0、1 和缺失值。

{pstd}
{cmd:bitesti} 是 {cmd:bitest} 的即时形式；有关即时命令的一般介绍，请参见 {help immed_zh}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R bitestQuickstart:快速开始}

        {mansection R bitestRemarksandexamples:备注和示例}

        {mansection R bitestMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker option}{...}
{title:选项}

{dlgtab:高级}

{phang}
{opt detail} 显示观察到的成功次数 k_obs 的概率；
用于计算双侧 p 值的分布对侧的成功次数 k_opp 的概率；以及 k_opp 附近点的概率。此信息可以安全忽略。有关详细信息，请参见 
{mansection R bitestRemarksandexamplestechnote:技术说明} 在 {bf:[R] bitest} 中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse quick}{p_end}

{pstd}检验成功概率是否等于 0.3{p_end}
{phang2}{cmd:. bitest quick == 0.3}{p_end}
{phang2}{cmd:. bitest quick == 0.3, detail}{p_end}

{pstd}测试成功概率 = 0.5，给定 10 次试验中的 3 次成功{p_end}
{phang2}{cmd:. bitesti 10 3 .5}{p_end}

{pstd}测试成功概率 = 0.000001，给定 250 万次试验中的 36 次成功{p_end}
{phang2}{cmd:. bitesti 2500000 36 .000001}{p_end}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:bitest} 和 {cmd:bitesti} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}试验总数 N{p_end}
{synopt:{cmd:r(P_p)}}假设的成功概率 p{p_end}
{synopt:{cmd:r(k)}}观察到的成功次数 k{p_end}
{synopt:{cmd:r(p_l)}}下侧单侧 p 值{p_end}
{synopt:{cmd:r(p_u)}}上侧单侧 p 值{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}
{synopt:{cmd:r(k_opp)}}对侧极端 k{p_end}
{synopt:{cmd:r(P_k)}}观察到 k 的概率（仅 {cmd:detail}）{p_end}
{synopt:{cmd:r(P_oppk)}}对侧极端 k 的概率（仅 {cmd:detail}）{p_end}
{synopt:{cmd:r(k_nopp)}}对侧极端附近的 k（仅 {cmd:detail}）{p_end}
{synopt:{cmd:r(P_noppk)}}对侧极端附近的 k 的概率（仅 {cmd:detail}）{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bitest.sthlp>}