{smcl}
{* *! version 1.4.11  30nov2018}{...}
{viewerdialog predict "dialog regres_p"}{...}
{viewerdialog dfbeta "dialog dfbeta"}{...}
{viewerdialog estat "dialog regress_estat"}{...}
{vieweralsosee "[R] regress postestimation" "mansection R regresspostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[R] regress postestimation diagnostic plots" "help regress postestimation plots"}{...}
{vieweralsosee "[R] regress postestimation ts" "help regress postestimation ts"}{...}
{viewerjumpto "Postestimation commands" "regress postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "regress_postestimation_zh##linkspdf"}{...}
{viewerjumpto "Predictions" "regress postestimation##syntax_predict"}{...}
{viewerjumpto "Margins" "regress postestimation##syntax_margins"}{...}
{viewerjumpto "DFBETA influence statistics" "regress postestimation##syntax_dfbeta"}{...}
{viewerjumpto "Tests for violation of assumptions" "regress postestimation##syntax_estat"}{...}
{viewerjumpto "Variance inflation factors" "regress postestimation##syntax_estat_vif"}{...}
{viewerjumpto "Measures of effect size" "regress postestimation##syntax_estat_esize"}{...}
{viewerjumpto "Examples" "regress postestimation##examples"}{...}
{viewerjumpto "Stored results" "regress postestimation##results"}{...}
{viewerjumpto "References" "regress postestimation##references"}
{help regress_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[R] regress postestimation} {hline 2}}回归的后置估计工具{p_end}
{p2col:}({mansection R regresspostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后置估计命令}

{pstd}
以下后置估计命令在 {cmd:regress} 之后特别有用：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb regress postestimation##syntax_dfbeta:dfbeta}}DFBETA影响统计{p_end}
{synopt :{helpb regress postestimation##estathett:estat hettest}}异方差性检验{p_end}
{synopt :{helpb regress postestimation##estatimtest:estat imtest}}信息矩阵检验{p_end}
{synopt :{helpb regress postestimation##estatovt:estat ovtest}}Ramsey回归模型规范检验（遗漏变量）{p_end}
{synopt :{helpb regress postestimation##estatszroeter:estat szroeter}}Szroeter异方差性排名检验{p_end}
{synopt :{helpb regress postestimation##estatvif:estat vif}}自变量的方差膨胀因子{p_end}
{synopt :{helpb regress postestimation##syntax_estat_esize:estat esize}}eta平方、epsilon平方和omega平方的效应大小{p_end}
{synopt :{helpb estat moran}}Moran的残差相关性检验{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
这些命令不适合在 {cmd:svy} 前缀之后使用。
{p_end}


{pstd}
以下标准后置估计命令也可用：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_forecast_star
INCLUDE help post_hausman_star
INCLUDE help post_lincom
INCLUDE help post_linktest
INCLUDE help post_lrtest_star
{synopt:{helpb regress_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb regress postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman}和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。 {cmd:forecast} 也不适用于 {cmd:mi} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R regresspostestimationMethodsandformulas:方法与公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker predict}{...}
{marker syntax_predict}{...}
{title:预测}

{title:预测的语法}

{p 8 19 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic}]

{marker statistic}{...}
{synoptset 19 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主要}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
{synopt :{opt sc:ore}}得分；等同于 {opt residuals}{p_end}
{synopt :{opt rsta:ndard}}标准化残差{p_end}
{synopt :{opt rstu:dent}}学生化（jackknifed）残差{p_end}
{synopt :{opt c:ooksd}}Cook的距离{p_end}
{synopt :{opt l:everage} | {opt h:at}}杠杆（帽矩阵的对角元素）{p_end}
{synopt :{opt pr}{cmd:(}{it:a}{cmd:,}{it:b}{cmd:)}}Pr(y | {it:a} < y < {it:b}){p_end}
{synopt :{opt e(a,b)}}{it:E}(y | {it:a} < y < {it:b}){p_end}
{synopt :{opt ys:tar(a,b)}}{it:E}(y*), y* = max{cmd:(}{it:a},min(y,{it:b}){cmd:)}{p_end}
{p2coldent:* {opth dfb:eta(varname)}}DFBETA关于 {it:varname}{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synopt :{opt stdf}}预测的标准误{p_end}
{synopt :{opt stdr}}残差的标准误{p_end}
{p2coldent:* {opt cov:ratio}}COVRATIO{p_end}
{p2coldent:* {opt dfi:ts}}DFITS{p_end}
{p2coldent:* {opt w:elsch}}Welsch距离{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}未带星号的统计量在样本内和样本外均可用；如果仅需估计样本中的数据，可以使用 {cmd:type predict ... if e(sample) ...}。带星号的统计量仅在估计样本内计算，即使未指定 {cmd:if} {cmd:e(sample)}。{p_end}
{p 4 6 2}
{opt rstandard}、{opt rstudent}、{opt cooksd}、{opt leverage}、{opt dfbeta()}、{opt stdf}、{opt stdr}、{opt covratio}、{opt dfits}和 {opt welsch} 若与 {cmd:regress} 配合使用时，不能使用任何 {opt vce()} 选项（除非是 {cmd:vce(ols)}）。{p_end}
{p 4 6 2}
{opt xb}、{opt residuals}、{opt score}和 {opt stdp} 是与 {cmd:svy} 估计结果一起允许的唯一选项。
{p_end}

INCLUDE help whereab


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测说明}

{pstd}
{cmd:predict} 创建一个新变量，包含预测结果，如线性预测、残差、标准化残差、学生化残差、Cook距离、杠杆、概率、期望值、DFBETAs 对于 {it:varname}、标准误、COVRATIO、DFITS 和 Welsch 距离。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{opt xb}，默认情况下，计算线性预测。

{phang}
{opt residuals} 计算残差。

{phang}
{opt score} 在线性回归中等同于 {opt residuals}。

{phang}
{opt rstandard} 计算标准化残差。

{phang}
{opt rstudent} 计算学生化（jackknifed）残差。

{phang}
{opt cooksd} 计算Cook的D影响统计量
({help regress postestimation##C1977:Cook 1977}).

{phang}
{opt leverage} 或 {opt hat} 计算投影（“帽子”）矩阵的对角元素。

INCLUDE help pr_opt

{phang}
{cmd:e(}{it:a}{cmd:,}{it:b}{cmd:)} 计算{bind:{it:E}(xb+u | {it:a} < xb+u < {it:b})}，即条件期望值，{it:a} 和 {it:b} 以 {cmd:pr()} 的格式指定。

{phang}
{cmd:ystar(}{it:a}{cmd:,}{it:b}{cmd:)} 计算{it:E}(y*)，其中{bind:y* = {it:a}} 如果 {bind:xb+u {ul:<} {it:a}}，{bind:y* = {it:b}} 如果 {bind:xb+u {ul:>} {it:b}，否则{bind:y* = xb+u}，这意味着 y* 是被截断的。
{it:a} 和 {it:b} 以 {cmd:pr()} 的格式指定。

{phang}
{opth dfbeta(varname)} 计算 {it:varname} 的 DFBETA，即包含和不包含第 j 个观察值时回归系数之间的差异，该差异按估计的标准误差进行缩放。 {it:varname} 必须在先前拟合的模型中的回归变量中。该计算自动限制为估计子样本。

{phang}
{opt stdp} 计算预测的标准误，可以被认为是观察值协变量模式的预测期望值或均值的标准误。预测的标准误也称为拟合值的标准误。

{phang}
{opt stdf} 计算预测的标准误，这是1个观察值的点预测的标准误。通常被称为未来或预测值的标准误。由于构造原因，{opt stdf} 生成的标准误总是大于 {opt stdp} 生成的标准误；参见
{mansection R regresspostestimationMethodsandformulas:{it:方法与公式}}在 {bf:[R] regress postestimation} 中。

{phang}
{opt stdr} 计算残差的标准误。

{phang}
{opt covratio} 计算 COVRATIO
({help regress postestimation##BKW1980:Belsley, Kuh, 和 Welsch 1980})，这是一种基于考虑对估计方差-协方差矩阵影响的第 j 个观察值的影响度量。该计算自动限制为估计子样本。

{phang}
{opt dfits} 计算 DFITS
({help regress postestimation##WK1977:Welsch 和 Kuh 1977}) 并尝试将杠杆与残差平方图中的信息总结为一个统计量。该计算自动限制为估计子样本。

{phang}
{opt welsch} 计算 Welsch 距离
({help regress postestimation##W1982:Welsch 1982），这是 {opt dfits} 的一种变体。该计算自动限制为估计子样本。


{marker margins}{...}
{marker syntax_margins}{...}
{title:边际}

INCLUDE help syntax_margins1

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt pr}{cmd:(}{it:a}{cmd:,}{it:b}{cmd:)}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt e(a,b)}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt ys:tar(a,b)}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt r:esiduals}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt sc:ore}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt rsta:ndard}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt rstu:dent}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt c:ooksd}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt l:everage} | {opt h:at}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt dfb:eta(varname)}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt stdf}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt stdr}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt cov:ratio}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt dfi:ts}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt w:elsch}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际说明}

{pstd}
{cmd:margins} 估计线性预测的反应边际。


{marker syntax_dfbeta}{...}
{title:DFBETA影响统计}

{title:dfbeta的语法}

{p 8 18 2}
{cmd:dfbeta} [{it:{help indepvars:indepvar}} [{it:{help indepvars:indepvar}} [...]]]
		[{cmd:,} {opt stub(name)}]


{title:dfbeta菜单}

{phang}
{bf:统计 > 线性模型和相关 > 回归诊断 >}
            {bf:DFBETAs}


{title:dfbeta说明}

{pstd}
{opt dfbeta} 将在 {cmd:regress} 之后计算一个或多个或所有 DFBETA。虽然 {opt predict} 也会计算 DFBETA，但 {cmd:predict} 只能针对一个变量进行此操作。 {opt dfbeta} 是希望为多个变量计算 DFBETA 的用户的便利工具。新变量的名称自动选择，并以 {cmd:_dfbeta_} 开头。


{marker option_dfbeta}{...}
{title:dfbeta的选项}

{phang}
{opt stub(name)} 指定 {cmd:dfbeta} 用于命名要生成的新变量的前导字符。默认值是 {cmd:stub(_dfbeta_)}。


{marker estathett}{marker estatimtest}{marker estatovt}{...}
{marker estatszroeter}{marker syntax_estat}{...}
{title:违反假设的测试}

{title:estat hettest的语法}

{p 8 17 2}
{cmd:estat} {opt hett:est} [{varlist}] 
   [{cmd:,} {opt r:hs} [{opt no:rmal} | {opt ii:d} | 
   {opt fs:tat}] {opt m:test}[{cmd:(}{it:spec}{cmd:)}]]


INCLUDE help menu_estat


{title:estat hettest说明}

{pstd}
{opt estat hettest} 进行 Breusch-Pagan (1979) 和 Cook-Weisberg (1983)的  三种版本的异方差性检验。这三种测试都检验关于 t=0 在 Var(e)=sigma^2 exp(zt) 的原假设的证据。
在默认执行的 {cmd:normal} 版本中，原假设还包括回归扰动是服从独立正态分布，且方差为 sigma^2 的假设。在 {cmd:iid} 和 {cmd:fstat} 版本中，原假设中忽略了正态性假设，分别产生 {helpb }  文章中讨论的分数和 F 检验。如果未指定 {varlist}，则使用拟合值进行 z。如果指定了 {it:varlist} 或 {opt rhs} 选项，则使用指定的变量作为 z。


{marker options_estat_hettest}{...}
{title:estat hettest的选项}

{phang}
{opt rhs} 指定对拟合回归模型的右侧（解释性）变量进行异方差性检验。
{opt rhs} 选项可以与 {varlist} 结合使用，在这种情况下，将包括 {it:varlist} 中的变量和解释性变量一起用于方差的模型。

{phang}
{opt normal}，默认情况下，使 {opt estat hettest} 计算原始的 Breusch-Pagan/Cook-Weisberg 检验，该检验假设回归扰动是正态分布。

{phang}
{opt iid} 导致 {opt estat hettest} 计算不带正态性假设的 N*R2 版本的分数检验。

{phang}
{opt fstat} 使 {opt estat hettest} 计算不带正态性假设的 F 统计量版本。

{phang}
{opt mtest}[{cmd:(}{it:spec}{cmd:)}] 指定进行多重检验。参数指定如何调整 p 值。支持以下规范，{it:spec}：

        {opt b:onferroni}    Bonferroni 的多重检验调整
        {opt h:olm}          Holm 的多重检验调整
        {opt s:idak}         Sidak 的多重检验调整
        {opt noadj:ust}      不进行多重检验的调整

{pmore}
{opt mtest} 可不带参数指定。这等同于指定 {cmd:mtest(noadjust)}；即，不调整 p 值进行单个变量的检验。默认情况下，{opt estat hettest} 不进行多重检验。
{opt mtest} 不能与 {opt iid} 或 {opt fstat} 一起指定。


{title:estat imtest的语法}

{p 8 17 2}
{cmd:estat} {opt imt:est} [{cmd:,} {opt p:reserve} {opt wh:ite}]


INCLUDE help menu_estat


{title:estat imtest说明}

{pstd}
{opt estat imtest} 进行回归模型的信息矩阵检验，并对因的异方差性、偏度和峰度的正交分解进行检验，依据 
{help regress postestimation##CT1990:Cameron 和 Trivedi (1990)}；可作为选项执行White的同方差性检验。White 的检验通常与Cameron-Trivedi分解的第一项相似。


{marker options_estat_imtest}{...}
{title:estat imtest的选项}

{phang}
{opt preserve} 指定在计算过程中保留内存中的数据，删除所有不需要的变量和案例，在结束时恢复原始数据。此选项对大型数据集成本较高。然而，由于 {opt estat imtest} 必须对 k(k+1)/2 个临时变量执行辅助回归，其中 k 是回归变量的数量，它可能无法执行检验。

{phang}
{opt white} 指定同时执行White的原始异方差性检验。


{title:estat ovtest的语法}

{p 8 17 2}
{cmd:estat} {opt ovt:est} [{cmd:,} {opt r:hs}]


INCLUDE help menu_estat


{title:estat ovtest说明}

{pstd}
{opt estat ovtest} 进行 Ramsey (1969) 关于遗漏变量的回归规范误差检验 (RESET) 的两个版本。本检验相当于拟合 {bind:y=xb+zt+u}，然后检验 {bind:t=0}。如果未指定 {opt rhs} 选项，则使用拟合值的幂作为 z。如果指定 {opt rhs}，则使用 x 的个别元素的幂。


{marker option_estat_ovtest}{...}
{title:estat ovtest的选项}

{phang}
{opt rhs} 指定使用右侧（解释性）变量的幂进行检验，而不是拟合值的幂。


{title:estat szroeter的语法}

{p 8 17 2}
{cmd:estat} {opt szr:oeter} [{varlist}] 
   [{cmd:,} {opt r:hs} {opt m:test}{cmd:(}{it:spec}{cmd:)}]

{phang2}
必须指定 {it:varlist} 或 {cmd:rhs}。 

INCLUDE help menu_estat


{title:estat szroeter说明}

{pstd}
{opt estat szroeter} 为 {it:varlist} 中的每个变量或如果指定了 {opt rhs} 的话，为回归的解释性变量执行 Szroeter 异方差性排名检验。


{marker options_estat_szroeter}{...}
{title:estat szroeter的选项}

{phang}
{opt rhs} 指定对拟合回归模型的右侧（解释性）变量进行异方差性检验。
{opt rhs} 选项可以与 {varlist} 结合使用。

{phang}
{opt mtest}{cmd:(}{it:spec}{cmd:)} 指定进行多重检验。参数指定如何调整 p 值。支持以下规范，{it:spec}：

        {opt b:onferroni}    Bonferroni 的多重检验调整
        {opt h:olm}          Holm 的多重检验调整
        {opt s:idak}         Sidak 的多重检验调整
        {opt noadj:ust}      不进行多重检验的调整

{pmore}
{opt estat szroeter} 始终进行多重检验。默认情况下，它不调整p值。


{marker syntax_estat_vif}{...}
{title:方差膨胀因子}

{title:estat vif的语法}

{marker estatvif}{...}
{p 8 17 2}
{cmd:estat vif} [{cmd:,} {opt unc:entered}]


INCLUDE help menu_estat


{title:estat vif说明}

{pstd}
{opt estat vif} 计算线性回归模型中指定自变量的有中心或无中心方差膨胀因子 (VIF)。


{marker option_estat_vif}{...}
{title:estat vif的选项}

{phang}
{opt uncentered} 请求计算无中心方差膨胀因子。该选项通常用于检测回归变量与常数项的共线性。 {cmd:estat vif, uncentered} 可在未包含常数项的回归模型中使用。


{marker syntax_estat_esize}{...}
{title:效应大小的度量}

{title:estat esize的语法}

{p 8 14 2}
{cmd:estat esize}
[{cmd:,}
{opt eps:ilon} {opt om:ega} {opt l:evel(#)}]


INCLUDE help menu_estat


{marker description}{...}
{title:estat esize说明}

{pstd}
{cmd:estat} {cmd:esize} 计算回归后线性模型的效应大小 {help regress_zh} 或 {help anova_zh}。默认情况下，{cmd:estat} {cmd:esize} 报告 eta-squared 估计值 (Kerlinger {help regress postestimation##K1964:1964})，其等同于 R-squared 估计值。如果指定了 {opt epsilon} 选项，{cmd:estat} {cmd:esize} 报告 epsilon-squared 估计值(Grisson 和 Kim {help regress postestimation##GK2012:2012})。
如果指定了 {opt omega} 选项，{cmd:estat} {cmd:esize} 报告 omega-squared 估计值(Grisson 和 Kim {help regress postestimation##GK2012:2012})。
 epsilon-squared 和 omega-squared 都是调整过的 R-squared 估计值。
使用非中心 F 分布估计 eta-squared 估计值的置信区间
(Smithson {help regress postestimation##S2001:2001})。有关更多信息，请参见
Kline ({help regress postestimation##K2013:2013}) 或
Thompson ({help regress postestimation##T2006:2006})。


{marker option_estat_esize}{...}
{title:estat esize的选项}

{phang}
{opt epsilon} 指定报告效应大小的 epsilon-squared 估计值。默认值为 eta-squared 估计值。

{phang}
{opt omega} 指定报告效应大小的 omega-squared 估计值。默认值为 eta-squared 估计值。

{phang}
{opt level(#)}
指定置信水平，以百分比表示，适用于置信区间。默认值为 {cmd:level(95)}，或由 {helpb set level} 设置的值。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress mpg weight foreign}{p_end}

{pstd}获取预测值{p_end}
{phang2}{cmd:. predict pmpg}{p_end}
{phang2}{cmd:. summarize pmpg mpg}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse newautos, clear}{p_end}

{pstd}获取样本外预测{p_end}
{phang2}{cmd:. predict mpg}{p_end}

{pstd}获取预测的标准误{p_end}
{phang2}{cmd:. predict se_mpg, stdf}{p_end}

    {hline}
    设置
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. regress mpg weight c.weight#c.weight foreign}{p_end}

{pstd}投影矩阵的对角元素{p_end}
{phang2}{cmd:. predict xdist, hat}{p_end}

    {hline}
    设置
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. regress price weight foreign##c.mpg}{p_end}

{pstd}杠杆与残差平方图{p_end}
{phang2}{cmd:. lvr2plot}{p_end}

{pstd}标准化残差{p_end}
{phang2}{cmd:. predict esta if e(sample), rstandard}{p_end}

{pstd}学生化残差{p_end}
{phang2}{cmd:. predict estu if e(sample), rstudent}{p_end}

    {hline}
    设置
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. regress price weight foreign##c.mpg}{p_end}

{pstd}DFITS影响度量{p_end}
{phang2}{cmd:. predict dfits, dfits}{p_end}

{pstd}Cook的距离{p_end}
{phang2}{cmd:. predict cooksd if e(sample), cooksd}{p_end}

{pstd}Welsch距离{p_end}
{phang2}{cmd:. predict wd, welsch}{p_end}

{pstd}COVRATIO影响度量{p_end}
{phang2}{cmd:. predict covr, covratio}{p_end}

{pstd}DFBETAs影响度量{p_end}
{phang2}{cmd:. sort foreign make}{p_end}
{phang2}{cmd:. predict dfor, dfbeta(1.foreign)}{p_end}

{pstd}回归中所有变量的 DFBETAs{p_end}
{phang2}{cmd:. dfbeta}{p_end}

{pstd}Ramsey的遗漏变量检验{p_end}
{phang2}{cmd:. estat ovtest}{p_end}

{pstd}异方差性检验{p_end}
{phang2}{cmd:. estat hettest}{p_end}
{phang2}{cmd:. estat hettest weight foreign##c.mpg, mtest(b)}{p_end}

{pstd}Szroeter异方差性排名检验{p_end}
{phang2}{cmd:. estat szroeter, rhs mtest(holm)}{p_end}

{pstd}异方差性、偏度和峰度的检验{p_end}
{phang2}{cmd:. estat imtest}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse bodyfat, clear}{p_end}
{phang2}{cmd:. regress bodyfat tricep thigh midarm}{p_end}

{pstd}方差膨胀因子{p_end}
{phang2}{cmd:. estat vif}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nhanes2}

{pstd}以年龄组、性别及其交互作用回归收缩压{p_end}
{phang2}{cmd:. regress bpsystol agegrp##sex}

{pstd}收缩压的年龄组预测边际{p_end}
{phang2}{cmd:. margins agegrp}

{pstd}边际的轮廓图{p_end}
{phang2}{cmd:. marginsplot}

{pstd}年龄组与性别之间的交互作用的边际{p_end}
{phang2}{cmd:. margins agegrp#sex}

{pstd}交互图{p_end}
{phang2}{cmd:. marginsplot}

{pstd}估计每个年龄组的对比，比较男性与女性{p_end}
{phang2}{cmd:. margins r.sex@agegrp}

{pstd}绘制对比和置信区间与年龄组的关系{p_end}
{phang2}{cmd:. marginsplot}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse lbw}{p_end}

{pstd}回归后线性模型的效应大小{p_end}
{phang2}{cmd:. regress bwt smoke i.race}{p_end}
{phang2}{cmd:. estat esize}{p_end}
{phang2}{cmd:. estat esize, level(90)}{p_end}
{phang2}{cmd:. estat esize, omega}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat hettest} 将以下结果存储在 {cmd:r()} 中（多元）分数检验：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(chi2)}}卡方检验统计量{p_end}
{synopt:{cmd:r(df)}}H_0 下的渐近卡方分布的自由度{p_end}
{synopt:{cmd:r(p)}}p 值{p_end}

{pstd}
{cmd:estat hettest, fstat} 将结果存储在 {cmd:r()} 中（多元）分数检验：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(F)}}检验统计量{p_end}
{synopt:{cmd:r(df_m)}}H_0 下 F 分布的检验自由度{p_end}
{synopt:{cmd:r(df_r)}}H_0 下残差的自由度{p_end}
{synopt:{cmd:r(p)}}p 值{p_end}

{pstd}
{cmd:estat hettest}（如果指定了 {cmd:mtest}）和 {cmd:estat szroeter} 将以下结果存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(mtest)}}一个检验结果矩阵，行对应于单变量检验{p_end}

       {cmd:mtest[.,1]}    卡方检验统计量
       {cmd:mtest[.,2]}    自由度
       {cmd:mtest[.,3]}    未调整的 p 值
       {cmd:mtest[.,4]}    已调整的 p 值（如果指定了 {cmd:mtest()} 调整方法）

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(mtmethod)}}p 值的调整方法{p_end}

{pstd}
{cmd:estat imtest} 将以下结果存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(chi2_t)}}IM 检验统计量（= {cmd:r(chi2_h)} + {cmd:r(chi2_s)} + {cmd:r(chi2_k)}){p_end}
{synopt:{cmd:r(df_t)}}H_0 下的限制卡方分布的自由度（= {cmd:r(df_h)} + {cmd:r(df_s)} + {cmd:r(df_k)}){p_end}
{synopt:{cmd:r(chi2_h)}}异方差性检验统计量{p_end}
{synopt:{cmd:r(df_h)}}H_0 下的限制卡方分布的自由度{p_end}
{synopt:{cmd:r(chi2_s)}}偏度检验统计量{p_end}
{synopt:{cmd:r(df_s)}}H_0 下的限制卡方分布的自由度{p_end}
{synopt:{cmd:r(chi2_k)}}峰度检验统计量{p_end}
{synopt:{cmd:r(df_k)}}H_0 下的限制卡方分布的自由度{p_end}
{synopt:{cmd:r(chi2_w)}}White 的异方差性检验（如果指定了 {cmd:white}）{p_end}
{synopt:{cmd:r(df_w)}}H_0 下的限制卡方分布的自由度{p_end}

{pstd}
{cmd:estat ovtest} 将以下结果存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}
{synopt:{cmd:r(F)}}F 统计量{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}
{synopt:{cmd:r(df_r)}}残差自由度{p_end}
{p2colreset}{...}

{pstd}
{cmd:estat esize} 将以下结果存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(level)}}置信水平{p_end}
{p2colreset}{...}
{synoptset 15 tabbed}{...}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(esize)}}一个效应大小、置信区间、自由度和 F 统计量的矩阵，行对应于模型中的每个项{p_end}
{p2colreset}{...}

       {cmd:esize[.,1]}    eta平方
       {cmd:esize[.,2]}    eta平方的下置信界限
       {cmd:esize[.,3]}    eta平方的上置信界限
       {cmd:esize[.,4]}    epsilon平方
       {cmd:esize[.,5]}    omega平方
       {cmd:esize[.,6]}    毫米度自由度
       {cmd:esize[.,7]}    分母自由度
       {cmd:esize[.,8]}    F 统计量


{marker references}{...}
{title:参考文献}

{marker BKW1980}{...}
{phang}
Belsley, D. A., E. Kuh, 和 R. E. Welsch. 1980. {it:回归诊断：}
{it:识别有影响的数据和共线性来源}。
纽约：Wiley。

{marker BP1979}{...}
{phang}
Breusch, T. S., 和 A. R. Pagan. 1979. A simple test for heteroscedasticity and
random coefficient variation. {it:Econometrica} 47: 1287-1294。

{marker CT1990}{...}
{phang}
Cameron, A. C., 和 P. K. Trivedi. 1990. The information matrix test and its
applied alternative hypotheses. 工作论文 372，加州大学戴维斯分校，政府事务研究所。

{marker C1977}{...}
{phang}
Cook, R. D. 1977. Detection of influential observations in linear regression.
{it:Technometrics} 19: 15-18。

{marker CW1983}{...}
{phang}
Cook, R. D., 和 S. Weisberg. 1983.  Diagnostics for heteroscedasticity in
regression. {it:Biometrika} 70: 1-10。

{marker GK2012}{...}
{phang}
Grissom, R. J., 和 J. J. Kim. 2012.
{it:研究的效应大小：单变量和多变量应用。}
第2版。 纽约：Routledge。

{marker K1964}{...}
{phang}
Kerlinger, F. N. 1964.
{it:行为研究的基础}。
纽约：Holt, Rinehart & Winston。

{marker K2013}{...}
{phang}
Kline, R. B. 2013.
{it:超越显著性检验：行为科学中的统计改革}。
第2版。 华盛顿特区：美国心理学会。

{marker M1986}{...}
{phang}
Mallows, C. L. 1986. Augmented partial residuals. {it:Technometrics} 28:
313-319。

{marker R1969}{...}
{phang}
Ramsey, J. B. 1969.  Tests for specification errors in classical linear
least-squares regression analysis.  {it:Journal of the Royal Statistical}
{it:Society, Series B} 31: 350-371。

{marker S2001}{...}
{phang}
Smithson, M. 2001.
Correct confidence intervals for various regression effect sizes and
parameters: The importance of noncentral distributions in computing intervals.
{it:Educational and Psychological Measurement} 61: 605-632。

{marker T2006}{...}
{phang}
Thompson, B. 2006.
{it:行为统计学的基础：基于洞察的方法}。
纽约：Guilford Press。

{marker W1982}{...}
{phang}
Welsch, R. E. 1982. Influence functions and regression diagnostics. In 
{it:现代数据分析}，R. L. Launer 和 A. F. Siegel 主编，149-169.
纽约：Academic Press。

{marker WK1977}{...}
{phang}
Welsch, R. E., 和 E. Kuh. 1977.  Linear Regression Diagnostics.
技术报告 923-77，麻省理工学院，
剑桥，马萨诸塞州。

{marker W1980}{...}
{phang}
White, H. 1980. A heteroskedasticity-consistent covariance matrix estimator and
a direct test for heteroskedasticity. {it:Econometrica} 48: 817-838。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <regress_postestimation.sthlp>}