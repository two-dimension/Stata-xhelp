{smcl}
{* *! version 1.0.4  05sep2018}{...}
{viewerdialog "predict" "dialog fmm_p"}{...}
{vieweralsosee "[FMM] fmm postestimation" "mansection FMM fmmpostestimation"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm estimation" "help fmm estimation"}{...}
{viewerjumpto "后续估计命令" "fmm postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "fmm_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "fmm postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "fmm postestimation##syntax_margins"}{...}
{viewerjumpto "备注与示例" "fmm postestimation##remarks"}
{help fmm_postestimation:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[FMM] fmm postestimation} {hline 2}}fmm的后续估计工具{p_end}
{p2col:}({mansection FMM fmmpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后续估计命令}

{pstd}
在使用 {cmd:fmm} 进行估计后，以下后续估计命令特别重要：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb fmm estat eform:estat eform}}显示指数化参数{p_end}
{synopt :{helpb fmm estat lcmean:estat lcmean}}潜在类别边际均值{p_end}
{synopt :{helpb fmm estat lcprob:estat lcprob}}潜在类别边际概率{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后续估计命令也可用：

{synoptset 20 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{help contrast_zh}}对比和线性假设检验{p_end}
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_hausman_star
{synopt :{help lincom_zh}}参数的线性组合{p_end}
INCLUDE help post_lrtest_star
{synopt:{helpb fmm_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb fmm_postestimation##predict:predict}}预测、残差、影响统计量和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p2colreset}{...}
{p 4 6 2}
* {opt hausman} 和 {opt lrtest} 不适用于 {opt svy} 估计结果。{p_end}

{pstd}
后续估计命令如 {opt lincom} 和 {opt nlcom} 需要引用估计的参数值，这些值可以通过 {cmd:_b[}{it:name}{cmd:]}. 获取。要找到名称，请输入 {cmd:fmm,} {cmd:coeflegend}.


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection FMM fmmpostestimationRemarksandexamples:备注与示例}

        {mansection FMM fmmpostestimationMethodsandformulas:方法与公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,} {it:statistic} {it:options}]

{marker statistic}{...}
{synoptset 20 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主}
{synopt :{opt mu}}{depvar} 的期望值；默认值{p_end}
{synopt :{opt eta}}{depvar} 的线性预测{p_end}
{synopt :{opt den:sity}}在 {depvar} 处的密度函数{p_end}
{synopt :{opt dist:ribution}}在 {depvar} 处的分布函数{p_end}
{synopt :{opt surv:ival}}在 {depvar} 处的生存函数{p_end}
{synopt :{opt classpr}}潜在类别概率{p_end}
{synopt :{opt classpost:eriorpr}}后验潜在类别概率{p_end}
{synopt :{opt sc:ore}}相对于参数的对数似然的第一导数{p_end}
{synoptline}

{marker options}{...}
{synopthdr}
{synoptline}
{syntab:主}
{synopt :{opt marg:inal}}相对于潜在类别计算 {it:statistic}{p_end}
{synopt :{opt pmarg:inal}}相对于后验潜在类别概率计算 {cmd:mu}{p_end}
{synopt :{opt nooff:set}}进行计算时忽略偏移或暴露{p_end}
{p2coldent :* {cmdab:o:utcome(}{depvar} [{it:#}]{cmd:)}}指定观察响应变量（默认所有）{p_end}
{synopt :{opt class(#)}}指定潜在类别（默认所有）{p_end}
{synoptline}
{p 4 6 2}
*{opt outcome(depvar #)} 仅在 {it:depvar} 来自 {cmd:mlogit}, {cmd:ologit} 或 {cmd:oprobit} 时允许。{break}
{opt outcome(depvar #)} 也可以指定为 {cmd:outcome(}{it:#}{cmd:.}{it:depvar}{cmd:)} 或 {cmd:outcome(}{it:depvar} {cmd:#}{it:#}{cmd:)}.{break}
{cmd:outcome(}{it:depvar} {cmd:#3)} 表示第三个结果值。
{cmd:outcome(}{it:depvar} {cmd:#3)} 如果结果为 1, 3, 和 4 则意味着与 {cmd:outcome(}{it:depvar}{cmd:4)} 相同。


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 在 {cmd:fmm} 之后创建新变量，包含均值、概率、线性预测、密度或潜在类别概率等预测结果。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt mu}，默认，计算结果的期望值。

{phang} 
{opt eta} 计算拟合的线性预测。

{phang}
{opt density} 计算密度函数。
该预测是使用观察变量的当前值计算的，包括因变量。

{phang}
{opt distribution} 计算分布函数。
该预测是使用观察变量的当前值计算的，包括因变量。
该选项不允许用于 {opt mlogit} 结果。

{phang}
{opt survival} 计算生存函数。
该预测是使用观察变量的当前值计算的，包括因变量。
该选项仅适用于 {opt streg} 结果。

{phang}
{opt classpr} 计算每个潜在类别的预测概率。

{phang}
{opt classposteriorpr} 计算每个潜在类别的后验预测概率。
后验概率是潜在类别预测因子与拟合的结果密度的函数。

{phang}
{opt scores} 计算 {cmd:e(b)} 中每个系数的得分。该选项要求新变量列表的长度与 {cmd:e(b)} 中列数相等。否则，使用 {it:stub}{cmd:*} 让 {cmd:predict} 生成以 {it:stub} 为前缀的枚举变量。

{phang}
{opt marginal} 指定按潜在类别计算预测。
边际预测是通过结合类特定的预测，使用潜在类别概率计算的。

{pmore}
该选项仅在与 {opt mu} 和 {opt density} 一起使用时允许。

{phang}
{opt pmarginal} 指定通过结合类特定的期望值来计算预测，使用后验潜在类别概率。

{pmore}
该选项仅在与 {opt mu} 一起使用时允许。

{phang}
{opt nooffset} 仅在估计时指定了 {opt offset()} 或 {opt exposure()} 时相关。
{opt nooffset} 指定忽略 {opt offset()} 或 {opt exposure()}，这样产生的预测就像所有受试者都具有相等的暴露。

{phang}
{cmd:outcome(}{depvar} [{it:#}]{cmd:)} 指定应计算预测的 {it:depvar}。
默认情况下计算所有观察响应变量的预测。
大多数模型只有一个 {it:depvar}。
如果 {it:depvar} 是 {opt mlogit}、{opt ologit} 或 {opt oprobit} 的结果，则 {it:#} 可选地指定要预测的结果水平。默认是第一个水平。

{phang}
{opt class(#)} 指定计算潜在类别 {it:#} 的预测。
默认情况下计算所有潜在类别的预测。


INCLUDE help syntax_margins

{synoptset 20}{...}
{synopthdr:statistic}
{synoptline}
{synopt :default}计算每个 {depvar} 的期望值{p_end}
{synopt :{opt mu}}计算 {depvar} 的期望值{p_end}
{synopt :{opt eta}}计算 {depvar} 线性预测的期望值{p_end}
{synopt :{opt classpr}}计算潜在类别先验概率{p_end}
{synopt :{opt den:sity}}不允许与 {opt margins} 一起使用{p_end}
{synopt :{opt dist:ribution}}不允许与 {opt margins} 一起使用{p_end}
{synopt :{opt surv:ival}}不允许与 {opt margins} 一起使用{p_end}
{synopt :{opt classpost:eriorpr}}不允许与 {opt margins} 一起使用{p_end}
{synopt :{opt sc:ore}}不允许与 {opt margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt mu} 默认计算第一个 {depvar}
如果未指定选项 {opt outcome()}。
如果 {it:depvar} 是 {opt mlogit}、{opt ologit} 或 {opt oprobit}，则默认是结果的第一个水平。
如果未指定 {opt class()}，则默认计算第一个潜在类别。{p_end}
{p 4 6 2}
{opt eta} 默认计算第一个 {depvar}
如果未指定选项 {opt outcome()}。
如果 {it:depvar} 是 {opt mlogit}，则默认是结果的第一个水平。{p_end}
{p 4 6 2}
{opt classpr} 默认计算第一个潜在类别
如果未指定选项 {opt class()}。{p_end}
{p 4 6 2}
{opt predict} 的选项 {opt marginal} 被假定，如果 {opt predict} 的选项 {opt class()} 未指定。

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{opt margins} 估计结果均值、结果概率以及潜在类别概率的边际。


{marker remarks}{...}
{title:备注与示例}

{pstd}
有关使用 {cmd:estimates stats} 基于赤池信息量准则和贝叶斯信息量准则比较模型的示例，请参见 {findalias fmmexrega}、{findalias fmmexregb} 和 {findalias fmmexregd}。

{pstd}
有关使用 {cmd:estat lcprob} 获得边际潜在类别概率以及使用 {cmd:estat lcmean} 获得边际预测均值的示例，请参见 {findalias fmmexpoisson} 和 {findalias fmmexzip}。

{pstd}
有关使用 {cmd:test} 和 {cmd:contrast} 检验类间系数相等的示例，请参见 {findalias fmmexregc}。

{pstd}
有关使用 {cmd:predict} 的示例，请参见 {findalias fmmexpoisson}、{findalias fmmexzip} 和 {findalias fmmexsurv}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_postestimation.sthlp>}