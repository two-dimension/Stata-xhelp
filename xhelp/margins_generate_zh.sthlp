{smcl}
{* *! version 1.0.1  20aug2014}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] margins" "help margins_zh"}{...}
{viewerjumpto "语法" "margins_generate_zh##syntax"}{...}
{viewerjumpto "描述" "margins_generate_zh##description"}{...}
{viewerjumpto "选项" "margins_generate_zh##option"}{...}
{viewerjumpto "备注" "margins_generate_zh##remarks"}{...}
{viewerjumpto "存储结果" "margins_generate_zh##results"}
{help margins_generate:English Version}
{hline}{...}
{title:标题}

{p2colset 4 28 33 2}{...}
{p2col:{hi:[R] margins, generate()}}{hline 2} 在当前数据集中创建边际响应变量
{p_end}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:margins} [{it:{help fvvarlist_zh:marginlist}}] 
{ifin} {weight}
[{cmd:,} 
{opt gen:erate(stub)}
{it:{help margins##response_options:response_options}}
{it:{help margins##options_table:options}}] 


{marker description}{...}
{title:描述}

{pstd}
{cmd:margins,} {opt generate()} 创建一个新变量，该变量包含用于生成每个边际或边际效应的响应值，如 {cmd:margins} 所报告。


{marker option}{...}
{title:选项}

{phang}
{opt generate(stub)} 创建一个新变量，该变量包含用于生成每个边际或边际效应的响应值，如 {cmd:margins} 所报告。
变量名称按顺序命名，从 {it:stub}{cmd:1} 开始。
{cmd:margins} 将跳过已存在的变量名称。
{it:stub} 的长度不得超过 16 个字符。

{pmore}
{opt generate()} 不允许与对比一起使用；请参见 {help margins_contrast_zh:margins, contrast}。

{pmore}
{opt generate()} 不允许与成对比较一起使用；请参见 {help margins_pwcompare_zh:margins, pwcompare}。


{marker remarks}{...}
{title:备注}

{pstd}
假设我们感兴趣的是回归变量对 logistic 回归中预测概率的影响。 这是设置。

{phang2}{cmd:. webuse margex}{p_end}
{phang2}{cmd:. logistic outcome i.sex i.group sex#group age}{p_end}

{pstd}
我们可以计算 {cmd:age} 对于 {cmd:outcome} 的预测概率的平均边际效应。

{phang2}{cmd:. margins, dydx(age) generate(dage)}{p_end}

{pstd}
新变量 {cmd:dage1} 包含了摘要用来生成 {cmd:margins} 所报告的平均边际效应的值。
我们可以将该变量与 {cmd:age} 绘制。

{phang2}{cmd:. scatter dage1 age}{p_end}

{pstd}
此散点图并不太有帮助；标记没有根据 {cmd:sex} 或 {cmd:group} 的水平区分开来。
让我们使用 {cmd:by()} 选项来帮助根据 {cmd:sex} 和 {cmd:group} 分隔图形。

{phang2}{cmd:. scatter dage1 age, by(sex group)}{p_end}

{pstd}
为了叠加线图，我们将首先 {help sort_zh} 对 {cmd:age} 进行排序，然后使用 {cmd:if} 条件来识别对应于 {cmd:sex} 和 {cmd:group} 的图形。 我们还需要为图例指定自己的标签。

{p  8}{cmd:. sort age}{p_end}
{p  8}{cmd:. line dage1 age if 0.sex&1.group ||}{p_end}
{p 10}{cmd:  line dage1 age if 0.sex&2.group ||}{p_end}
{p 10}{cmd:  line dage1 age if 0.sex&3.group ||}{p_end}
{p 10}{cmd:  line dage1 age if 1.sex&1.group ||}{p_end}
{p 10}{cmd:  line dage1 age if 1.sex&2.group ||}{p_end}
{p 10}{cmd:  line dage1 age if 1.sex&3.group ||}{p_end}
{p 12}{cmd:  , legend(label(1 female, group 1)}{p_end}
{p 21}{cmd:           label(2 female, group 2)}{p_end}
{p 21}{cmd:           label(3 female, group 3)}{p_end}
{p 21}{cmd:           label(4 male, group 1)}{p_end}
{p 21}{cmd:           label(5 male, group 2)}{p_end}
{p 21}{cmd:           label(6 male, group 3))}{p_end}

{pstd}
假设我们对设置所有其他预测变量为其均值时 {cmd:age} 的影响感兴趣。
其他预测变量是因子变量，因此让我们看看当我们使用这些因子的样本均值（观察到的相对频率）与将它们视为平衡时，{cmd:age} 的影响有何不同。

{pstd}
首先，让我们计算 {cmd:age} 在均值下的影响。

{phang2}{cmd:. margins, dydx(age) at((means) sex group) generate(dage)}{p_end}

{pstd}
默认标签在这种情况下并不太具有信息量，因此我们将使用我们自己的标签。

{phang2}
{cmd:. label variable dage2 "dydx(age) at means of factors sex and age"}
{p_end}

{pstd}
其次，我们在将因子视为平衡时计算 {cmd:age} 的影响，并为生成的变量赋予我们的标签。

{phang2}{cmd:. margins, dydx(age) asbalanced generate(dage)}{p_end}
{phang2}
{cmd:. label variable dage2 "dydx(age) treating sex and age as balanced"}
{p_end}

{pstd}
现在我们可以绘制这两个响应变量。

{phang2}{cmd:. line dage2 dage3 age, legend(cols(1))}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:margins,} {cmd:generate()} 在 {cmd:r()} 中存储以下附加结果：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(generate)}}因 {cmd:generate()} 选项而创建的新变量列表{p_end}
{p2colreset}{...}

{pstd}
{cmd:margins,} {cmd:generate()} 使用 {opt post} 选项时还在 {cmd:e()} 中存储以下附加结果：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(generate)}}因 {cmd:generate()} 选项而创建的新变量列表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <margins_generate.sthlp>}