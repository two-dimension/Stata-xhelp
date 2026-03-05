{smcl}
{* *! version 1.2.3  19oct2017}{...}
{viewerdialog test "dialog test"}{...}
{viewerdialog testparm "dialog testparm"}{...}
{vieweralsosee "[R] test" "mansection R test"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] anova" "help anova_zh"}{...}
{vieweralsosee "[R] anova postestimation" "help anova_postestimation_zh"}{...}
{vieweralsosee "[R] contrast" "help contrast_zh"}{...}
{vieweralsosee "[R] lincom" "help lincom_zh"}{...}
{vieweralsosee "[R] lrtest" "help lrtest_zh"}{...}
{vieweralsosee "[R] nestreg" "help nestreg_zh"}{...}
{vieweralsosee "[R] nlcom" "help nlcom_zh"}{...}
{vieweralsosee "[R] testnl" "help testnl_zh"}{...}
{viewerjumpto "Syntax" "test_zh##syntax"}{...}
{viewerjumpto "Menu" "test_zh##menu"}{...}
{viewerjumpto "Description" "test_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "test_zh##linkspdf"}{...}
{viewerjumpto "Options for testparm" "test_zh##options_testparm"}{...}
{viewerjumpto "Options for test" "test_zh##options_test"}{...}
{viewerjumpto "Examples" "test_zh##examples"}{...}
{viewerjumpto "Stored results" "test_zh##results"}
{help test:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[R] test} {hline 2}}在估计后测试线性假设{p_end}
{p2col:}({mansection R test:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{marker syntax1}{...}
{p 8 48 2}
{cmdab:te:st}
{it:{help test##coeflist:系数列}}
{space 31}({help test##Syntax1:语法 1})

{marker syntax2}{...}
{p 8 48 2}
{cmdab:te:st}
{it:{help test##exp:表达式}} {cmd:=} {it:{help test##exp:表达式}} [{cmd:=} ...]
{space 22}({help test##Syntax2:语法 2})

{marker syntax3}{...}
{p 8 48 2}
{cmdab:te:st}
{cmd:[}{it:{help test##eqno:方程号}}{cmd:]}
[{cmd::} {it:{help test##coeflist:系数列}}]
{space 20}({help test##Syntax3:语法 3})

{marker syntax4}{...}
{p 8 48 2}
{cmdab:te:st}
{cmd:[}{it:{help test##eqno:方程号}} {cmd:=}
            {it:{help test##eqno:方程号}} [{cmd:=} ...]{cmd:]}
[{cmd::} {it:{help test##coeflist:系数列}}]
{space 5}({help test##Syntax4:语法 4})

{p 8 17 2}
{cmd:testparm}
{varlist}
[{cmd:,} {help test##testparm_options:{it:testparm_options}}]


{pstd}
完整语法

{p 8 14 2}
{cmdab:te:st}
{cmd:(}{it:{help test##spec:规格}}{cmd:)}
[{cmd:(}{it:{help test##spec:规格}}{cmd:)} ...]
[{cmd:,} {help test##test_options:{it:test_options}}]


{marker testparm_options}{...}
{synoptset 19}{...}
{synopthdr:testparm_options}
{synoptline}
{synopt:{opt e:qual}}假定系数彼此相等{p_end}
{synopt:{opth eq:uation(test##eqno:方程号)}}指定要测试的假设的方程名称或编号{p_end}
{synopt:{opt nosvy:adjust}}为调查结果计算未经调整的 Wald 测试{p_end}

{synopt:{opt df(#)}}使用具有 {it:#} 个分母自由度的 F 分布作为检验统计量的参考分布；对于调查数据，{it:#} 指定设计自由度，除非指定了 {cmd:nosvyadjust}
{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt df(#)} 不会出现在对话框中。{p_end}


{marker test_options}{...}
{synoptset 19 tabbed}{...}
{synopthdr:test_options}
{synoptline}
{syntab:选项}
{synopt:{opt m:test}[{cmd:(}{it:{help test##opt:选项}}{cmd:)}]}分别测试每个条件{p_end}
{synopt:{opt coef}}报告估计的受限系数{p_end}
{synopt:{opt a:ccumulate}}与之前测试的假设一起联合测试假设{p_end}
{synopt:{opt not:est}}抑制输出{p_end}
{synopt:{opt common}}仅测试所有方程中共享的变量{p_end}
{synopt:{opt cons:tant}}将常数包括在需要测试的系数中{p_end}
{synopt:{opt nosvy:adjust}}为调查结果计算未经调整的 Wald 测试{p_end}
{synopt:{opt min:imum}}进行带常数的测试，逐步删除项，直到测试变为非奇异，然后对剩余项进行不带常数的测试；此选项非常技术性{p_end}

{synopt :{opt matvlc(matname)}}保存方差-协方差矩阵；程序员选项{p_end}
{synopt:{opt df(#)}}使用具有 {it:#} 个分母自由度的 F 分布作为检验统计量的参考分布；对于调查数据，{it:#} 指定设计自由度，除非指定了 {cmd:nosvyadjust} {p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:系数列} 和 {it:变量列} 可以包含因子变量和时间序列运算符；见 {help fvvarlist_zh} 和 {help tsvarlist_zh}。
{p_end}
{p 4 6 2}
{opt matvlc(matname)} 和 {opt df(#)} 不会出现在对话框中。{p_end}


{pin2}{marker Syntax1}
{help test##syntax1:语法 1} 测试系数是否为 0。

{pin2}{marker Syntax2}
{help test##syntax2:语法 2} 测试线性表达式是否相等。

{pin2}{marker Syntax3}
{help test##syntax3:语法 3} 测试 {it:eqno} 中的系数是否为 0。

{pin2}{marker Syntax4}
{help test##syntax4:语法 4} 测试方程之间系数的相等性。


{marker spec}{...}
{p 8 8 2}{it:规格} 是以下内容之一{p_end}
{p 12 16 2}{it:系数列}{p_end}
{p 12 16 2}{it:表达式}{cmd:=}{it:表达式}[={it:表达式}]{p_end}
{p 12 16 2}{cmd:[}{it:eqno}{cmd:]}[{cmd::} {it:系数列}]{p_end}
{p 12 16 2}{cmd:[}{it:eqno1}{cmd:=}{it:eqno2}[{cmd:=}...]{cmd:]}[{cmd:: } {it:系数列}]{p_end}

{marker coeflist}{...}
	{it:系数列} 是
	    {it:系数} [{it:系数} ...]
	    {cmd:[}{it:eqno}{cmd:]}{it:系数} [{cmd:[}{it:eqno}{cmd:]}{it:系数}...]
            {cmd:[}{it:eqno}{cmd:]_b[}{it:系数}{cmd:]} [{cmd:[}{it:eqno}{cmd:]_b[}{it:系数}{cmd:]}...]

{marker exp}{...}
	{it:表达式} 是一个线性表达式，包含
	    {it:系数}
	    {cmd:_b[}{it:系数}{cmd:]}
	    {cmd:_b[}{it:eqno}{cmd::}{it:系数}{cmd:]}
	    {cmd:[}{it:eqno}{cmd:]}{it:系数}
            {cmd:[}{it:eqno}{cmd:]_b[}{it:系数}{cmd:]}

{marker eqno}{...}
	{it:eqno} 是
	    {cmd:#}{it:#}
	    {it:名称}

{marker coef}{...}
{pstd}
{it:系数} 在模型中标识一个系数。
{it:系数} 通常是一个变量名称，一个水平指示符，一个交互指示符，或涉及连续变量的交互。
水平指示符识别因子变量的一个水平，交互指示符则识别交互的一个组合级别；见 {help fvvarlist_zh}。
{it:系数} 可能包含时间序列运算符；见 {help tsvarlist_zh}。

{pstd}
区分 {cmd:[]}, 这会被键入，以及 []，这表示可选参数。

{pstd}
虽然在语法图中未显示，但在多个规格中需要在 {it:规格} 周围加括号。 同时，图中也未显示 {opt test} 可在没有参数的情况下调用以重新显示上一次 {opt test} 的结果。

{pstd}
{help anova_zh} 和 {help manova_zh} 允许上述 {cmd:test} 语法以及更多（见 {helpb anova_postestimation##test:[R] anova postestimation} 在 {cmd:anova} 之后对于 {cmd:test} 的用法；见 {helpb manova_postestimation##test:[MV] manova postestimation} 在 {cmd:manova} 之后对于 {cmd:test} 的用法）。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计}


{marker description}{...}
{title:描述}

{pstd}
{opt test} 执行对最近拟合模型参数的简单和复合线性假设的 Wald 测试。

{pstd}
{opt test} 支持 {cmd:svy} 估计器（见 
{manhelp svy_estimation SVY:svy estimation），在这种情况下默认执行调整后的 Wald 测试。 
{cmd:test} 可与 {cmd:svy} 估计结果一起使用，见 {manhelp svy_postestimation SVY:svy postestimation}。

{pstd}
{opt testparm} 提供了 {opt test} 的一个有用的替代方案，允许使用 {varlist} 而不是系数列表（通常仅仅是变量列表），允许使用标准的 Stata 表示法，包括 '{opt -}' 和 '{opt *}'，这些在 {opt test} 中被解释为表达式。

{pstd}
{opt test} 和 {opt testparm} 执行 Wald 测试。有关似然比测试，请见 {manhelp lrtest R}。
要进行非线性假设的 Wald 型测试，请见 {manhelp testnl R}。
要显示系数的一维线性或非线性表达式的估计，请见 {manhelp lincom R} 和 {manhelp nlcom R}。

{pstd}
有关在 {opt anova} 之后允许的额外 {opt test} 语法，请见 {helpb anova_postestimation##test:[R] anova postestimation}。

{pstd}
有关在 {opt manova} 之后允许的额外 {opt test} 语法，请见 {helpb manova_postestimation##test:[MV] manova postestimation}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R testQuickstart:快速入门}

        {mansection R testRemarksandexamples:备注和示例}

        {mansection R testMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options_testparm}{...}
{title:testparm 的选项}

{phang}
{opt equal} 测试出现在 {varlist} 中并且也出现在先前拟合模型中的变量是否彼此相等，而不是联合等于零。

{phang}
{opth "equation(test##eqno:方程号)"}
   仅适用于多方程模型，如 {cmd:mvreg}、{cmd:mlogit} 和 {cmd:heckman}。它指定要测试的全零或全等假设的方程。 {cmd:equation(#1)} 指定对第一个方程 {cmd:#1} 进行测试。 {cmd:equation(price)} 指定测试与名为 {cmd:price} 的方程有关。

{phang}
{opt nosvyadjust}
   适用于 {opt svy} 估计命令；见 {manhelp svy_estimation SVY:svy estimation}。它指定 Wald 测试在没有默认设计自由度调整的情况下进行。即，测试是以 {bind:W/k ~ F(k,d)} 而不是 {bind:(d-k+1)W/(kd) ~ F(k,d-k+1)} 进行的，其中 {bind:k = 测试的维度}，{bind:d = 样本 PSU 的总数减去 strata 的总数}。当使用 {cmd:df()} 选项时，将覆盖默认设计自由度。

{pstd}
以下选项可与 {opt testparm} 一起使用，但在对话框中未显示：

{phang}
{opt df(#)} 指定使用具有 {it:#} 个分母自由度的 F 分布作为检验统计量的参考分布。默认情况下使用 {cmd:e(df_r)} 自由度或如果 {cmd:e(df_r)} 缺失则使用卡方分布。对于调查数据，{it:#} 是设计自由度，除非指定了 {cmd:nosvyadjust}。


{marker options_test}{...}
{title:test 的选项}

{dlgtab:选项}

{phang}
{opt mtest}[{opt (opt)}]
指定为每个条件单独执行测试。 {it:opt} 指定用于调整多重检验的 p 值的方法。 {it:opt} 的有效值包括

{marker opt}
{pin3}{opt b:onferroni}{space 4}Bonferroni 方法{p_end}
{pin3}{opt h:olm}{space      10}Holm 方法{p_end}
{pin3}{opt s:idak}{space      9}Sidak 方法{p_end}
{pin3}{opt noadj:ust}{space   6}不进行调整{p_end}

{pmore}
   指定 {opt mtest} 而不带参数等同于 {cmd:mtest(noadjust)}。

{phang}
{opt coef} 指定显示受限系数。

{phang}
{opt accumulate} 允许联合测试与之前测试的假设。

{phang}
{opt notest} 抑制输出。当您仅对若干假设的联合检验感兴趣时，此选项很有用，这些假设在后续调用的 {cmd:test, accumulate} 中指定。

{phang}
{opt common} 指定当您使用 {cmd:[}{it:{help test##eqno:eqno1}}{cmd:=}{it:eqno2}[{cmd:=}...]{cmd:]} 形式的 {it:{help test##spec:规格}} 时，测试方程 {it:eqno1}、{it:eqno2} 等中的共享变量。默认行为是如果方程有不共享变量则抱怨。

{phang}
{opt constant} 指定当使用 {cmd:[}{it:{help test##eqno:eqno1}}{cmd:=}{it:eqno2}[{cmd:=}...]{cmd:]} 或 {cmd:[}{it:eqno}{cmd:]} 形式的 {it:{help test##spec:规格}} 时，要包括 {opt _cons} 在待测试系数列表中。默认情况下不包括 {opt _cons}。

{phang}
{opt nosvyadjust}
   适用于 {opt svy} 估计命令；见 {manhelp svy_estimation SVY:svy estimation}。它指定 Wald 测试在没有默认设计自由度调整的情况下进行。即，测试是以 {bind:W/k ~ F(k,d)} 而不是 {bind:(d-k+1)W/(kd) ~ F(k,d-k+1)} 进行的，其中 {bind:k = 测试的维度}，{bind:d = 样本 PSU 的总数减去 strata 的总数}。当使用 {cmd:df()} 选项时，将覆盖默认设计自由度。

{phang}
{opt minimum} 是一个非常技术性的选项。它首先执行带有常数的测试。如果此测试是奇异的，则逐步删除系数，直到测试变为非奇异。然后对剩余项进行不带常数的测试。

{pstd}
以下选项可与 {opt test} 一起使用，但在对话框中未显示：

{phang}
{opt matvlc(matname)}，程序员选项，保存与一系列测试相关的线性组合的方差-协方差矩阵。对于线性约束的测试 L*b = c，{it:matname} 包含 L*V*L'，其中 V 是 b 的估计方差-协方差矩阵。

{phang}
{opt df(#)} 指定使用具有 {it:#} 个分母自由度的 F 分布作为检验统计量的参考分布。默认情况下使用 {cmd:e(df_r)} 自由度或如果 {cmd:e(df_r)} 缺失则使用卡方分布。对于调查数据，{it:#} 是设计自由度，除非指定了 {cmd:nosvyadjust}。


{marker examples}{...}
{title:单方程估计后的示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse census3}{p_end}
{phang2}{cmd:. regress brate medage medagesq i.region}

{pstd}测试 {cmd:3.region} 的系数是否为 0{p_end}
{phang2}{cmd:. test 3.region=0}{p_end}

{pstd}之前 {cmd:test} 命令的简写{p_end}
{phang2}{cmd:. test 3.region}{p_end}

{pstd}测试 {cmd:2.region}=系数 {cmd:4.region}{p_end}
{phang2}{cmd:. test 2.region=4.region}{p_end}

{pstd}Stata 将执行代数运算，然后进行测试{p_end}
{phang2}{cmd:. test 2*(2.region-3*(3.region-4.region))=3.region+2.region+6*(4.region-3.region)}

{pstd}测试 {cmd:2.region} 和 {cmd:3.region} 的系数是否联合等于 0{p_end}
{phang2}{cmd:. test (2.region=0) (3.region=0)}

{pstd}以下两个命令等同于之前的 {cmd:test} 命令{p_end}
{phang2}{cmd:. test 2.region = 0}{p_end}
{phang2}{cmd:. test 3.region = 0, accumulate}{p_end}

{pstd}测试 {cmd:2.region}、{cmd:3.region} 和 {cmd:4.region} 的系数是否全部为 0； {cmd:testparm} 理解变量列表{p_end}

{phang2}{cmd:. testparm i(2/4).region}

{pstd}
在上述示例中，您可以将任何单方程估计命令（例如 {help clogit_zh}、{help logistic_zh}、{help logit_zh} 和 {help ologit_zh}）替代 {help regress_zh}。

 
{title:多方程估计命令后的示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. sureg (price foreign mpg displ) (weight foreign length)}

{pstd}测试在 {cmd:price} 方程中 {cmd:foreign} 的显著性{p_end}
{phang2}{cmd:. test [price]foreign}

{pstd}测试 {cmd:foreign} 在两个方程中是否联合等于 0{p_end}
{phang2}{cmd:. test [price]foreign [weight]foreign}

{pstd}先前 {cmd:test} 命令的简写{p_end}
{phang2}{cmd:. test foreign}{p_end}

{pstd}测试跨方程约束{p_end}
{phang2}{cmd:. test [price]foreign = [weight]foreign}

{pstd}先前测试的替代语法{p_end}
{phang2}{cmd:. test [price=weight]: foreign}

{pstd}测试方程中除了截距的所有系数{p_end}
{phang2}{cmd:. test [price]}

{pstd}测试 {cmd:foreign} 和 {cmd:displ} 在 {cmd:price} 方程中是否联合为 0{p_end}
{phang2}{cmd:. test [price]: foreign displ}

{pstd}测试两个方程中共同的变量的系数是否联合为 0{p_end}
{phang2}{cmd:. test [price=weight], common}

{pstd}对多个约束进行同时测试{p_end}
{phang2}{cmd:. test ([price]: foreign) ([weight]: foreign)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:test} 和 {cmd:testparm} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}
{synopt:{cmd:r(F)}}F 统计量{p_end}
{synopt:{cmd:r(df)}}测试约束的自由度{p_end}
{synopt:{cmd:r(df_r)}}残差自由度{p_end}
{synopt:{cmd:r(dropped_i)}}被丢弃的第 {it:i} 个约束的索引{p_end}
{synopt:{cmd:r(chi2)}}卡方{p_end}
{synopt:{cmd:r(ss)}}平方和（测试）{p_end}
{synopt:{cmd:r(rss)}}残差平方和{p_end}
{synopt:{cmd:r(drop)}}{cmd:1} 如果约束被丢弃，{cmd:0} 否则{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(mtmethod)}}多重检验调整的方法{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(mtest)}}多重测试结果{p_end}

{pstd}
{cmd:r(ss)} 和 {cmd:r(rss)} 仅在使用 {cmd:test} 测试在 {cmd:anova} 之后的效应时定义。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <test.sthlp>}