{smcl}
{* *! version 1.2.14  14may2018}{...}
{viewerdialog predict "dialog gsem_p"}{...}
{vieweralsosee "[SEM] predict after gsem" "mansection SEM predictaftergsem"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] Intro 7" "mansection SEM Intro7"}{...}
{vieweralsosee "[SEM] Methods and formulas for gsem" "mansection SEM Methodsandformulasforgsem"}{...}
{findalias asgsemoirt}{...}
{findalias asgsemtirt}{...}
{findalias asgsemlca}{...}
{findalias asgsemlpa}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SEM] gsem postestimation" "help gsem_postestimation_zh"}{...}
{viewerjumpto "Syntax" "gsem_predict_zh##syntax"}{...}
{viewerjumpto "Menu" "gsem_predict_zh##menu"}{...}
{viewerjumpto "Description" "gsem_predict_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "gsem_predict_zh##linkspdf"}{...}
{viewerjumpto "Options" "gsem_predict_zh##options"}{...}
{viewerjumpto "Remarks" "gsem_predict_zh##remarks"}{...}
{viewerjumpto "Examples" "gsem_predict_zh##examples"}
{help gsem_predict:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[SEM] predict after gsem} {hline 2}}广义线性预测等{p_end}
{p2col:}({mansection SEM predictaftergsem:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:预测的语法}

{pstd}
用于预测观察到的内生结果和其他统计量的语法

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-}
{ifin} [{cmd:,}
{it:{help gsem_predict##statistic:统计量}}
{it:{help gsem_predict##opts_table:选项}}]


{pstd}
用于获取估计的连续潜变量及其标准误的语法

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-}
{ifin}{cmd:,}
{it:{help gsem_predict##lstatistic:潜在统计量}}
[{it:{help gsem_predict##lopts_table:l选项}}]


{pstd}
用于获取最大似然分数的语法

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-}
{ifin}{cmd:,} {opt sc:ores}


{phang}
默认情况下，预测观察到的内生变量时使用连续潜变量的经验贝叶斯均值预测。如果模型包含一个分类潜变量，则默认情况下预测观察到的内生变量的类别特定值。

{marker statistic}{...}
{synoptset 25 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab:主}
{synopt :{opt mu}}{depvar} 的期望值；默认值{p_end}
{synopt :{opt pr}}概率（当 mu 是概率时，{cmd:mu} 的同义词）{p_end}
{synopt :{opt eta}}{depvar} 的线性预测的期望值{p_end}
{synopt :{opt den:sity}}在 {depvar} 处的密度函数{p_end}
{synopt :{opt dist:ribution}}在 {depvar} 处的分布函数{p_end}
{synopt :{opt surv:ival}}在 {depvar} 处的生存函数{p_end}
{synopt :{opt exp:ression}{cmd:(}{it:{help gsem_predict##exp:exp}{cmd:)}}}使用 {it:exp} 计算预测{p_end}
{synopt :{opt classpr}}潜在类别概率{p_end}
{synopt :{opt classpost:eriorpr}}后验潜在类别概率{p_end}
{synoptline}

{marker opts_table}{...}
{synoptset 25 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主}
{synopt :{opt cond:itional}{cmd:(}{it:{help meglm_postestimation##ctype:ctype}}{cmd:)}}计算 {it:statistic} 条件于估计的连续潜变量；默认是 {cmd:conditional(ebmeans)}{p_end}
{synopt :{opt marginal}}计算 {it:statistic} 相对于潜变量的边际值{p_end}
{synopt :{opt pmarginal}}计算 {cmd:mu} 相对于后验潜在类别概率的边际值{p_end}
{synopt :{opt nooffset}}计算时忽略偏移量或暴露{p_end}
{p2coldent:+ {cmd:outcome(}{depvar} [{it:#}]{cmd:)}}指定观察到的响应变量（默认值为全部）{p_end}
{p2coldent:* {opt class(lclspec)}}指定潜在类别（默认值为全部）{p_end}

{syntab :积分}
{synopt :{it:{help gsem_predict##int_options:int_options}}}积分选项{p_end}
{synoptline}
{p 4 6 2}
+ {opt outcome(depvar #)} 仅在 {it:depvar} 的家族为 {cmd:multinomial}、{cmd:ordinal} 或 {cmd:bernoulli} 时允许。 
预测其他广义响应时，只需指定 {opt outcome(depvar)}。{break}
{opt outcome(depvar #)} 也可以指定为 {cmd:outcome(}{it:#}.{it:depvar}{cmd:)} 或 {cmd:outcome(}{it:depvar} {cmd:#}{it:#}{cmd:)}。{break}
{cmd:outcome(}{it:depvar} {cmd:#3)} 表示第三个结果值。 
如果结果为 1、3 和 4，则 {cmd:outcome(}{it:depvar} {cmd:#3)} 与 {cmd:outcome(}{it:depvar} {cmd:4)} 意义相同。{p_end}
{p 4 6 2}
* {opt class(lclspec)} 仅适用于具有分类潜变量的模型。 
对于具有一个分类潜变量的模型，{it:lclspec} 可以是类值，例如 {cmd:class(2)} 或其等效的因子变量表示法 {cmd:class(2.C)}，假设分类潜变量是 {cmd:C}。 
对于具有两个或更多分类潜变量的模型，{it:lclspec} 只能采用因子变量表示法，例如 {cmd:class(2.C#1.D)}，用于分类潜变量 {cmd:C} 和 {cmd:D}。

{marker ctype}{...}
{synoptset 25}{...}
{synopthdr :ctype}
{synoptline}
{synopt :{opt ebmean:s}}潜变量的经验贝叶斯均值；默认值{p_end}
{synopt :{opt ebmode:s}}潜变量的经验贝叶斯模式{p_end}
{synopt :{opt fixed:only}}仅对模型的固定部分进行预测{p_end}
{synoptline}

{marker lstatistic}{...}
{synoptset 25 tabbed}{...}
{synopthdr:lstatistic}
{synoptline}
{syntab:主}
{synopt :{opt latent}}所有潜变量的经验贝叶斯预测{p_end}
{synopt :{opth latent(varlist)}}指定潜变量的经验贝叶斯预测{p_end}
{synoptline}

{marker lopts_table}{...}
{synoptset 25 tabbed}{...}
{synopthdr:l选项}
{synoptline}
{syntab:主}
{synopt :{opt ebmean:s}}潜变量的经验贝叶斯均值；默认值{p_end}
{synopt :{opt ebmode:s}}潜变量的经验贝叶斯模式{p_end}
{synopt :{cmd:se(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {help varlist_zh:{it:newvarlist}}{cmd:)} }计算经验贝叶斯估计的标准误并将结果存储在 {it:newvarlist} 中。此选项需要 {opt latent} 或 {opt latent()} 选项。

{syntab :积分}
{synopt :{it:{help gsem_predict##int_options:int_options}}}积分选项{p_end}
{synoptline}

{marker int_options}{...}
{synoptset 25}{...}
{synopthdr:int_options}
{synoptline}
{synopt :{opt intp:oints(#)}}使用 {it:#} 个求积点来计算边际预测和经验贝叶斯均值{p_end}
{synopt :{opt iter:ate(#)}}设置涉及经验贝叶斯估计的统计计算的最大迭代次数{p_end}
{synopt :{opt tol:erance(#)}}设置计算涉及经验贝叶斯估计的统计的收敛容忍度{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程模型） > 预测}


{marker description}{...}
{title:描述}

{pstd}
{cmd:predict} 是 Stata 的标准后估计命令。
此条目涉及在 {cmd:gsem} 之后使用 {cmd:predict}。
如果您使用 {cmd:sem} 拟合模型，请参见 {help sem_predict_zh:[SEM] predict after sem}。

{pstd}
在 {cmd:gsem} 之后使用 {cmd:predict} 会创建新变量，其中包含估计的观察响应变量、观察响应变量的线性预测、潜在类别概率，或内生或外生的连续潜变量的逐一值。


{marker linkspdf}{...}
{title:指向PDF文档的链接}

        {mansection SEM predictaftergsemRemarksandexamples:备注与示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{cmd:mu}，默认情况下，计算结果的期望值。

{phang}
{cmd:pr} 计算预测概率，并且是 {cmd:mu} 的同义词。
此选项仅适用于多项式、有序和伯努利结果。

{phang} 
{cmd:eta} 计算拟合的线性预测。

{phang} 
{cmd:density} 计算密度函数。
该预测是使用观察变量的当前值进行计算的，包括因变量。

{phang} 
{cmd:distribution} 计算分布函数。
该预测是使用观察变量的当前值进行计算的，包括因变量。
此选项不允许用于多项式结果。

{phang} 
{cmd:survival} 计算生存函数。
该预测是使用观察变量的当前值进行计算的，包括因变量。
此选项仅适用于指数、伽马、对数逻辑、对数正态和威布尔结果。

{marker exp}{...}
{phang} 
{opt expression(exp)}
    指定预测为一个表达式。 {it:exp} 是任何有效的 Stata 表达式，但表达式必须包含对此选项独有的两个特殊函数之一的调用：

{p 8 11 6}
1. {opt mu(outcome)}： {opt mu()} 函数指定 {it:outcome} 的均值预测计算。
如果 {opt mu()} 在没有 {it:outcome} 的情况下被指定，则隐含为第一个结果的均值预测。

{p 11 11 6}
{opt pr(outcome)}：当 {it:outcome} 标识一个多项式、有序或伯努利结果时，{opt pr()} 函数是 {opt mu(outcome)} 的同义词。

{p 8 11 6}
2. {opt eta(outcome)}： {cmd:eta()} 函数指定 {it:outcome} 的线性预测的计算。
如果 {cmd:eta()} 在没有 {it:outcome} 的情况下被指定，则隐含为第一个结果的线性预测。

{p 11 11 6}
当您指定 {it:exp} 时，可以重复使用这两个函数，并结合其他 Stata 函数和表达式。

{phang}
{opt classpr} 计算每个潜在类别的预测概率。

{phang}
{opt classposteriorpr} 计算每个潜在类别的预测后验概率。后验概率是潜在类别预测变量和拟合结果密度的函数。

{phang}
{opt conditional(ctype)}、{cmd:marginal} 和 {cmd:pmarginal} 指定在计算 {it:statistic} 时如何处理潜变量。

{phang2}
{cmd:conditional()} 指定 {it:statistic} 将根据指定或估计的连续潜变量进行计算。

{phang3}
{cmd:conditional(ebmeans)}，默认情况下，指定使用经验贝叶斯均值作为潜变量的估计值。
这些估计值也被称为潜变量的后验均值估计。

{phang3}
{cmd:conditional(ebmodes)} 指定使用经验贝叶斯模式作为潜变量的估计值。
这些估计值也被称为潜变量的后验模式估计。

{phang3}
{cmd:conditional(fixedonly)} 指定将所有潜变量设为零，相当于仅使用模型的固定部分。

{phang2}
{cmd:marginal} 指定所预测的 {it:statistic} 根据潜变量的边际值进行计算。

{pmore2}
尽管这不是默认值，但边际预测在应用分析中通常非常有用。它们产生通常称为人口平均估计的结果。根据连续潜变量的模型，{it:statistic} 是通过对所有潜变量的整个支持域进行积分计算预测函数的。

{pmore2}
对于具有分类潜变量的模型，{cmd:mu} 是唯一支持的 {it:statistic}。每个结果的整体期望值是通过结合类别特定的期望值来预测的，方法是使用潜在类别概率。

{phang2}
{opt pmarginal} 指定通过使用后验潜在类别概率结合类别特定的期望值来预测每个结果的整体期望值。
此选项仅在默认 {it:statistic}，即 {cmd:mu} 的情况下允许。

{phang}
{cmd:nooffset}
仅在估计时指定了 {cmd:offset()} 或 {cmd:exposure()} 选项时相关。
{cmd:nooffset} 指定应忽略 {cmd:offset()} 或 {cmd:exposure()} ，这将产生所有对象具有相同暴露的预测。

{phang}
{cmd:outcome(}{depvar} [{it:#}]{cmd:)} 指定计算 {it:depvar} 的预测值。
默认情况下，计算所有观察响应变量的预测值。
如果 {it:depvar} 是多项式或有序结果，则 {it:#} 可选地指定要预测的结果级别。

{phang}
{opt class(lclspec)} 指定为潜在类别 {it:lclspec} 计算预测值。
默认情况下，计算所有潜在类别的预测值。
对于具有一个分类潜变量的模型，例如 {cmd:C}，{it:lclspec} 可以是类值，例如 {cmd:class(2)} 或其等效的因子变量表示法 {cmd:class(2.C)}。
对于具有两个或更多分类潜变量的模型，例如 {cmd:C} 和 {cmd:D}，{it:lclspec} 只能采用因子变量表示法，例如 {cmd:class(2.C)} 或 {cmd:class(2.C#1.D)}。

{phang}
{cmd:latent} 和 {opth latent(varlist)} 指定使用经验贝叶斯预测来估计连续潜变量。
默认情况下，或者如果指定了 {opt ebmeans} 选项，则计算经验贝叶斯均值。
指定 {opt ebmodes} 选项时，计算经验贝叶斯模式。

{pmore}
{cmd:latent} 请求为所有潜变量提供经验贝叶斯估计。

{pmore}
{opt latent(varlist)} 请求为指定的潜变量提供经验贝叶斯估计。

{phang}
{cmd:ebmeans} 指定使用经验贝叶斯均值来预测潜变量。

{phang}
{cmd:ebmodes} 指定使用经验贝叶斯模式来预测潜变量。

{phang}
{cmd:se(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help varlist_zh:newvarlist}}{cmd:)} 计算经验贝叶斯估计的标准误，并将结果存储在 {it:newvarlist} 中。此选项需要 {opt latent} 或 {opt latent()} 选项。

{phang}
{opt scores} 计算 {cmd:e(b)} 中每个系数的分数。此选项需要与 {cmd:e(b)} 的列数相等的新变量列表。否则，请使用 {it:stub}{cmd:*} 让 {cmd:predict} 生成带有前缀 {it:stub} 的编号变量。

{dlgtab:积分}

{phang}
{opt intpoints(#)} 指定用于计算边际预测和经验贝叶斯均值的求积点的数量；默认值为估计时的值。

{phang}
{opt iterate(#)} 指定计算与经验贝叶斯估计相关的统计数时的最大迭代次数；默认值为估计时的值。

{phang}
{opt tolerance(#)} 指定计算与经验贝叶斯估计相关的统计数时的收敛容忍度；默认值为估计时的值。


{marker remarks}{...}
{title:备注}

{pstd}
所有 {cmd:predict} 选项均允许进行超出样本的预测，除了 {cmd:scores}。

{pstd}
{cmd:predict} 有两种指定要创建的变量名称的方法：

{phang3}
{cmd:. predict} {it:stub}{cmd:*,} ...

{pstd}
或

{phang3}
{cmd:. predict} {it:firstname secondname} ...{cmd:,} ...

{pstd}
第一种创建名为 {it:stub}{cmd:1}、{it:stub}{cmd:2} 等的变量。
第二种创建您指定名称的变量。我们强烈建议在创建多个变量时使用 {it:stub}{cmd:*} 语法，因为您无法知道指定单个变量名称的顺序与 {cmd:predict} 的计算顺序相对应。如果使用 {it:stub}{cmd:*}，变量将被标记，您可以重命名它们。

{pstd}
第二种语法在您创建一个变量并指定 {cmd:outcome()}、{cmd:expression()}、{cmd:class()} 或 {cmd:latent()} 时非常有用。

{pstd}
请参见 {manlink SEM Intro 7}，{findalias gsemoirt}，{findalias gsemtirt}，{findalias gsemlca} 和 {findalias gsemlpa}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_cfa}{p_end}
{phang2}{cmd:. gsem (MathAb -> (q1-q8)@b), logit var(MathAb@1)}{p_end}

{pstd}所有观察响应变量的成功预测概率{p_end}
{phang2}{cmd:. predict pr*, pr}{p_end}

{pstd}潜变量的经验贝叶斯均值预测{p_end}
{phang2}{cmd:. predict ability, latent(MathAb)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gsem_predict.sthlp>}