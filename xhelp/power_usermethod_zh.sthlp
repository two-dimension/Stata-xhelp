{smcl}
{* *! version 1.0.13  14may2019}{...}
{vieweralsosee "[PSS-2] power usermethod" "mansection PSS-2 powerusermethod"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] Intro (power)" "mansection PSS-2 Intro(power)"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{viewerjumpto "Syntax" "power_usermethod_zh##syntax"}{...}
{viewerjumpto "Description" "power_usermethod_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_usermethod_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "power_usermethod_zh##remarks"}
{help power_usermethod:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[PSS-2]} {it:power usermethod} {hline 2}}将您自己的方法添加到 power 命令{p_end}
{p2col:}({mansection PSS-2 powerusermethod:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
计算样本大小

{p 8 16 2}
{cmd:power} {help power_usermethod##usermethod:{it:usermethod}}
...
[{cmd:,} {opth p:ower(numlist)}
{help power##power_options:{it:poweropts}}
{help power_usermethod##useropts:{it:useropts}}]


{pstd}
计算功效

{p 8 16 2}
{cmd:power} {help power_usermethod##usermethod:{it:usermethod}}
...{cmd:,} {help power_usermethod##nspec:{it:nspec}}
[{help power##power_options:{it:poweropts}}
{help power_usermethod##useropts:{it:useropts}}]


{pstd}
计算效应大小

{p 8 16 2}
{cmd:power} {help power_usermethod##usermethod:{it:usermethod}}
...{cmd:,} {help power_usermethod##nspec:{it:nspec}} {opth p:ower(numlist)}
[{help power##power_options:{it:poweropts}}
{help power_usermethod##useropts:{it:useropts}}]


{marker usermethod}{...}
{phang}
{it:usermethod} 是您希望添加到 {cmd:power} 命令的方法名称。在命名您的 {cmd:power} 方法时，您应该遵循与为 Stata 添加程序命名时相同的约定——不要选择“好听”的名称，以免将来被 Stata 的官方方法使用。

{marker useropts}{...}
{phang}
{it:useropts} 是您的方法 {it:usermethod} 支持的选项 。

{marker nspec}{...}
{phang}
{it:nspec} 包含 {opth n(numlist)} 用于单样本检验或 {help power##power_options:{it:poweropts}} 的任何样本大小选项，例如 {opt n1(numlist)} 和 {opt n2(numlist)} 用于双样本检验。


{marker description}{...}
{title:描述}

{pstd}
{help power_zh} 命令允许您向 {cmd:power} 添加自己的方法，并自动生成结果的表格和图形。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection PSS-2 powerusermethodRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
向 {cmd:power} 添加自己的方法很简单。假设您想将一个名为 {cmd:mymethod} 的方法添加到 {cmd:power}。只需

{phang}
1.  编写一个名为 {cmd:power_cmd_mymethod} 的 {help program_zh:r-class program}，该程序计算功效、样本大小或效应大小，并遵循 {cmd:power} 的约定进行常见选项的命名和结果存储；以及

{phang}
2.  将程序放置在 Stata 可以找到的地方。

{pstd}
您完成了。您现在可以像使用任何其他官方 {cmd:power} 方法一样在 {cmd:power} 中使用 {cmd:mymethod}。


{marker introex}{...}
    {title:快速示例}

{pstd}
在讨论后续部分的技术细节之前，让我们试一个示例。我们编写一个程序来计算给定样本大小、标准化差异和显著性水平的一样本 {it:z} 检验的功效。为简单起见，我们假设这是一个双边检验。我们将把我们的新方法称为 {cmd:myztest}。

{pstd}
我们创建一个名为 {cmd:power_cmd_myztest.ado} 的 ado 文件，该文件包含以下 Stata 程序：

{p 12 18 2}// evaluator{p_end}
{p 12 18 2}{cmd:program power_cmd_myztest, rclass}{p_end}
{p 20 26 2}{cmd:version {ccl stata_version}}{p_end}
{p 40 46 2}/* 解析选项 */{p_end}
                    {cmd:syntax, n(integer)}        /// 样本大小
                             {cmd:STDDiff(real)}    /// 标准化差异
                             {cmd:Alpha(string)}    /// 显著性水平

{p 40 46 2}/* 计算功效 */{p_end}
{p 20 26 2}{cmd:tempname power}{p_end}
{p 20 26 2}{cmd:scalar `power' = normal(`stddiff'*sqrt(`n') - invnormal(1-`alpha'/2))}{p_end}

{p 40 46 2}/* 返回结果 */{p_end}
{p 20 26 2}{cmd:return scalar power   = `power'}{p_end}
{p 20 26 2}{cmd:return scalar N       = `n'}{p_end}
{p 20 26 2}{cmd:return scalar alpha   = `alpha'}{p_end}
{p 20 26 2}{cmd:return scalar stddiff = `stddiff'}{p_end}
{p 12 18 2}{cmd:end}{p_end}

{pstd}
我们的 ado 程序由三个部分组成：解析选项的 {help syntax_zh} 命令、功效计算和存储或返回结果。这三个部分的工作原理如下：

{p 8 8 2}
{cmd:power_cmd_myztest} 程序具有两个 {cmd:power} 的常见选项，{cmd:n()} 用于样本大小，{cmd:alpha()} 用于显著性水平，并且它具有自己选项 {cmd:stddiff()} 来指定标准化差异。

{p 8 8 2}
在解析选项后，功效被计算并存储在一个 {help tempname:临时标量} {cmd:`power'} 中。

{p 8 8 2}
最后，得到的功效和其他结果被存储在返回标量中。按照 {cmd:power} 的 {mansection pss-2 powerusermethodRemarksandexamplesconvention:命名约定} 来命名常见返回结果，计算得到的功效存储在 {cmd:r(power)} 中，样本大小存储在 {cmd:r(N)} 中，显著性水平存储在 {cmd:r(alpha)} 中。该程序还将标准化差异存储在 {cmd:r(stddiff)} 中。

{pstd}
现在我们可以像使用任何其他现有的 {cmd:power} 方法一样在 {cmd:power} 中使用 {cmd:myztest}：

{phang2}{cmd:. power myztest, alpha(0.05) n(10) stddiff(0.25)}{p_end}

{pstd}
我们可以通过在 {cmd:n()} 选项中指定多个值来计算多个样本大小的结果。请注意，我们的 {cmd:power_cmd_myztest} 程序一次只接受 {cmd:n()} 中的一个值。当在 {cmd:power} 命令的 {cmd:n()} 选项中指定一个 {help numlist_zh} 时，{cmd:power} 会自动处理该 {it:numlist}。

{phang2}{cmd:. power myztest, alpha(0.05) n(10 20) stddiff(0.25)}{p_end}

{pstd}
我们还可以在不增加额外工作量的情况下计算多个样本大小和显著性水平的结果：

{phang2}{cmd:. power myztest, alpha(0.01 0.05) n(10 20) stddiff(0.25)}{p_end}

{pstd}
我们甚至可以通过仅指定 {cmd:graph} 选项来生成图形：

{phang2}{cmd:. power myztest, alpha(0.01 0.05) n(10(10)100) stddiff(0.25) graph}
{p_end}

{pstd}
以上只是一个简单的示例。您的程序可以像您想的那样复杂：您甚至可以使用模拟来计算您的结果。您还可以通过稍微多一些的工作来定制您的表格和图形。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_usermethod.sthlp>}