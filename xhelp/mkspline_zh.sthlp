{smcl}
{* *! version 1.1.12  19oct2017}{...}
{viewerdialog mkspline "dialog mkspline"}{...}
{vieweralsosee "[R] mkspline" "mansection R mkspline"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] fp" "help fp_zh"}{...}
{viewerjumpto "Syntax" "mkspline_zh##syntax"}{...}
{viewerjumpto "Menu" "mkspline_zh##menu"}{...}
{viewerjumpto "Description" "mkspline_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mkspline_zh##linkspdf"}{...}
{viewerjumpto "Options" "mkspline_zh##options"}{...}
{viewerjumpto "Examples" "mkspline_zh##examples"}{...}
{viewerjumpto "Stored results" "mkspline_zh##results"}{...}
{viewerjumpto "Reference" "mkspline_zh##reference"}
{help mkspline:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] mkspline} {hline 2}}线性和限制立方样条构建{p_end}
{p2col:}({mansection R mkspline:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
指定点处的线性样条

{p 8 17 2}
{cmd:mkspline}
{it:{help newvar_zh:newvar_1}}
{it:#1}
[{it:{help newvar_zh:newvar_2}}
{it:#2}
[{it:...}]]
{it:{help newvar_zh:newvar_k}}
{cmd:=}
{it:oldvar}
{ifin}
[{cmd:,}
{opt m:arginal}
{opt di:splayknots}]


{phang}
等间距或按数据百分位数放置的线性样条

{p 8 17 2}
{cmd:mkspline}
{it:stubname}
{it:#}
{cmd:=}
{it:oldvar}
{ifin}
[{it:{help mkspline##weight:weight}}]
[{cmd:,} {opt m:arginal} {opt p:ctile} {opt di:splayknots}]


{phang}
限制立方样条

{p 8 17 2}
{cmd:mkspline}
{it:stubname}
{cmd:=}
{it:oldvar}
{ifin}
[{it:{help mkspline##weight:weight}}]
{cmd:, cubic} [{opt nk:nots(#)} {opth k:nots(numlist)} {opt di:splayknots}]

{marker weight}{...}
{phang}
{opt fweight}被允许与第二和第三种语法一起使用；请参见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 其他变量创建命令 >}
      {bf:线性和立方样条构建}


{marker description}{...}
{title:描述}

{pstd}
{opt mkspline} 创建包含现有变量的线性样条或限制立方样条的变量。
对于线性样条，节点可以由用户指定，可以在变量范围内等间距分配，也可以放置在百分位数位置。对于限制立方样条，也称为自然样条，节点位置基于 Harrell 的
({help mkspline##harrell2001:2001}) 推荐的百分位数或用户指定的点。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R mksplineQuickstart:快速开始}

        {mansection R mksplineRemarksandexamples:备注和示例}

        {mansection R mksplineMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:选项}

{phang}
{opt marginal} 允许与第一或第二种语法一起使用。它指定新变量的构建方式，以便在估计中，其系数表示前一区间的斜率变化。
默认情况下，变量的构建方式是使得在估计中系数度量该区间的斜率。

{phang}
{opt displayknots} 显示在创建线性或限制立方样条时使用的节点值。

{phang}
{opt pctile} 仅在第二种语法中允许。它指定节点放置在数据的百分位数位置，而不是在范围内等间距分配。

{phang}
{opt nknots(#)} 仅在第三种语法中允许。它指定用于限制立方样条的节点数量。此数量必须在 3 到 7 之间，除非使用 {opt knots()} 指定节点位置。默认的节点数量为 5。

{phang}
{opth knots(numlist)} 仅在第三种语法中允许。它指定用于限制立方样条的节点的确切位置。节点值必须按升序给出。当省略此选项时，默认节点值基于 Harrell 推荐的百分位数，并附带限制，即最小节点不小于 {it:oldvar} 的第五小值，最大节点不大于 {it:oldvar} 的第五大值。如果同时给出 {opt nknots()} 和 {opt knots()}，它们必须指定相同数量的节点。


{marker examples}{...}
{title:示例}

{pstd}根据教育程度和年龄拟合收入的对数回归，使用分段线性函数表示年龄{p_end}
{phang2}{cmd:. webuse mksp1}{p_end}
{phang2}{cmd:. mkspline age1 20 age2 30 age3 40 age4 50 age5 60 age6 = age}{p_end}
{phang2}{cmd:. regress lninc educ age1-age6}{p_end}

{pstd}调整模型，以便样条变量的系数表示来自前一组的斜率变化{p_end}
{phang2}{cmd:. webuse mksp1, clear}{p_end}
{phang2}{cmd:. mkspline age1 20 age2 30 age3 40 age4 50 age5 60 age6 = age, marginal}{p_end}
{phang2}{cmd:. regress lninc educ age1-age6}{p_end}

{pstd}创建包含药剂线性样条的变量，节点选择使数据分为五组等大小{p_end}
{phang2}{cmd:. webuse mksp2, clear}{p_end}
{phang2}{cmd:. mkspline dose 5 = dosage, pctile}{p_end}
{phang2}{cmd:. logistic outcome dose1-dose5}{p_end}

{pstd}对结果进行逻辑回归，使用根据 Harrell 推荐的百分位数选择的四个节点的药剂限制立方样条函数{p_end}
{phang2}{cmd:. webuse mksp2, clear}{p_end}
{phang2}{cmd:. mkspline dose = dosage, cubic nknots(4)}{p_end}
{phang2}{cmd:. logistic outcome dose*}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mkspline} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N_knots)}}节点数量{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(knots)}}节点位置{p_end}


{marker reference}{...}
{title:参考}

{marker harrell2001}{...}
{phang}
Harrell, F. E., Jr.  2001.
{it:回归建模策略：线性模型、逻辑回归和生存分析的应用}.
纽约：Springer.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mkspline.sthlp>}