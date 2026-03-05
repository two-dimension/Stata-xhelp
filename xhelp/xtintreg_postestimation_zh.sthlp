{smcl}
{* *! version 1.2.8  19oct2017}{...}
{viewerdialog predict "dialog xtintreg_p"}{...}
{vieweralsosee "[XT] xtintreg postestimation" "mansection XT xtintregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtintreg" "help xtintreg_zh"}{...}
{viewerjumpto "后估计命令" "xtintreg postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "xtintreg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "xtintreg postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "xtintreg postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "xtintreg postestimation##examples"}
{help xtintreg_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[XT] xtintreg postestimation} {hline 2}}xtintreg 的后估计工具{p_end}
{p2col:}({mansection XT xtintregpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:xtintreg} 之后，可以使用以下后估计命令：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_contrast
包含 help post_estatic
包含 help post_estatsum
包含 help post_estatvce
包含 help post_estimates
包含 help post_hausman
包含 help post_lincom
包含 help post_lrtest
{synopt:{helpb xtintreg_postestimation##margins:margins}}边际
	均值，预测边际，边际效应，和平均边际
	效应{p_end}
包含 help post_marginsplot
包含 help post_nlcom
{synopt :{helpb xtintreg postestimation##predict:predict}}预测，残差，影响统计，以及其他诊断措施{p_end}
包含 help post_predictnl
包含 help post_pwcompare
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xtintregpostestimationRemarksandexamples:备注和示例}

        {mansection XT xtintregpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic} {opt nooff:set}]

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:主}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synopt :{opt stdf}}线性预测的标准误{p_end}
{synopt :{opt pr(a,b)}}Pr({it:a} < y < {it:b})，相对于随机效应的边际{p_end}
{synopt :{opt e(a,b)}}{it:E}(y | {it:a} < y < {it:b})，相对于随机效应的边际{p_end}
{synopt :{opt ystar(a,b)}}{it:E}(y*)，y*=max{a,min(y,b)}，相对于随机效应的边际{p_end}
{synoptline}
{p2colreset}{...}
包含 help esample

包含 help whereab

包含 help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，其中包含诸如
线性预测，标准误，概率，和期望值等预测。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主}

{phang}
{cmd:xb}，默认情况下，使用模型中估计的固定效应（系数）计算线性预测 xb。这相当于将模型中的所有随机效应固定为理论（先验）均值零。

{phang}
{opt stdp} 计算线性预测的标准误。可以将其视为观察值的协变量模式的预测期望值或均值的标准误。预测的标准误也称为拟合值的标准误。

{phang}
{opt stdf} 计算线性预测的标准误。这是1个观察值的点预测的标准误。通常被称为未来或预测值的标准误。通过构造，{opt stdf}产生的标准误始终大于{opt stdp}产生的标准误；请参见
{mansection R regressMethodsandformulas:{it:方法和公式}}在 {bf:[R] regress} 中。

{phang}
{opt pr(a,b)} 计算估计值
{bind:Pr({it:a} < y < {it:b})}，这是给定当前预测变量值，y 在区间 (a,b) 中被观察到的概率。预测是相对于随机效应边际计算的。也就是说，随机效应被集成到预测函数中。

{pmore}
{it:a} 和 {it:b} 可以指定为数字或变量名；{break}
{it:lb} 和 {it:ub} 是变量名；
{cmd:pr(20,30)} 计算 {bind:Pr(20 < y < 30)}；{break}
{cmd:pr(lb,ub)} 计算 {bind:Pr(lb < y < ub)}；以及{break}
{cmd:pr(20,ub)} 计算 {bind:Pr(20 < y < ub)}。

{pmore}
{it:a} 缺失 {bind:({it:a} {ul:>} .)} 代表负无穷；{break}
{cmd:pr(.,30)} 计算 {bind:Pr(y < 30)} 和
{cmd:pr(lb,30)} 计算 {bind:Pr(y < 30)} 在 {bind:lb {ul:>} .} 的观察中（并在其他地方计算 {bind:Pr(lb < y < 30)}）。

{pmore}
{it:b} 缺失 {bind:({it:b} {ul:>} .)} 代表正无穷；{break}
{cmd:pr(20,.)} 计算 {bind:Pr(y > 20)} 和
{cmd:pr(20,ub)} 计算 {bind:Pr(y > 20)} 在 {bind:ub {ul:>} .} 的观察中（并在其他地方计算 {bind:Pr(20 < y < ub)}）。

{phang}
{opt e(a,b)} 计算 {bind:{it:E}(y | {it:a} < y < {it:b})} 的估计值，这是 y 在区间 (a,b) 中的条件期望值，意味着 y 被截断。{it:a} 和 {it:b} 的指定方式与 {cmd:pr()}相同。预测是相对于随机效应边际计算的。也就是说，随机效应被集成到预测函数中。

{phang}
{opt ystar(a,b)} 计算 {it:E}(Y*) 的估计值，
其中 {bind:Y* = {it:a}} 如果 {bind:y {ul:<} {it:a}}，{bind:Y* = {it:b}} 如果 {bind:y {ul:>} {it:b}，否则 {bind:Y* = y}，意味着 Y* 是 y 的截尾版本。{it:a} 和 {it:b} 的指定方式与 {cmd:pr()}相同。预测是相对于随机效应边际计算的。也就是说，随机效应被集成到预测函数中。

{phang}
{opt nooffset} 仅在您为 {cmd:xtintreg} 指定了 {opth offset(varname)} 时相关。它修改 {cmd:predict} 的计算，使其忽略偏置变量；线性预测被视为 xb 而不是 xb + offset。

包含 help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt pr(a,b)}}Pr({it:a} < y < {it:b})，相对于随机效应的边际{p_end}
{synopt :{opt e(a,b)}}{it:E}(y | {it:a} < y < {it:b})，相对于随机效应的边际{p_end}
{synopt :{opt ys:tar(a,b)}}{it:E}(y*)，y*=max{a,min(y,b)}，相对于随机效应的边际{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt stdf}}与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}

包含 help notes_margins

包含 help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测、概率和期望值的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse nlswork5}{p_end}
{phang2}{cmd:. xtset idcode}{p_end}
{phang2}{cmd:. xtintreg ln_wage1 ln_wage2 i.union age grade south##c.year}
             {cmd:occ_code}{p_end}

{pstd}总结模型中的变量{p_end}
{phang2}{cmd:. estat summarize}{p_end}

{pstd}获得工会状态对工资的对数小于 1.3 的概率的影响{p_end}
{phang2}{cmd:. margins, dydx(union) predict(pr(.,1.3))}{p_end}

{pstd}计算线性预测{p_end}
{phang2}{cmd:. predict yhat, xb}{p_end}

{pstd}计算线性预测的标准误{p_end}
{phang2}{cmd:. predict ystdp, stdp}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtintreg_postestimation.sthlp>}