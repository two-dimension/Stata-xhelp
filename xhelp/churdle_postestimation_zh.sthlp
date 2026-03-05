{smcl}
{* *! version 1.0.6  21may2018}{...}
{viewerdialog predict "dialog churdle_p"}{...}
{vieweralsosee "[R] churdle postestimation" "mansection R churdlepostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] churdle" "help churdle_zh"}{...}
{viewerjumpto "Postestimation commands" "churdle postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "churdle_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "churdle postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "churdle postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "churdle postestimation##examples"}
{help churdle_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[R] churdle postestimation} {hline 2}}churdle的后估计工具{p_end}
{p2col:}({mansection R churdlepostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在使用 {cmd:churdle} 后，可以使用以下标准的后估计命令：

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
INCLUDE help post_lrtest_star
{synopt:{helpb churdle_postestimation##margins:margins}}边际
        均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb churdle postestimation##predict:predict}}预测、
残差、影响统计量和其他诊断测量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy}
估计结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R churdlepostestimationRemarksandexamples:备注和示例}

        {mansection R churdlepostestimationMethodsandformulas:方法和公式}

{pstd}
以上章节未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 19 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic} {opt e:quation(eqno)}]

{p 8 19 2}
{cmd:predict}
{dtype}
{{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvarlist_zh:newvarlist}}}
{ifin}{cmd:,} {cmdab:sc:ores}

{marker statistic}{...}
{synoptset 19 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主要}
{synopt :{cmdab:ys:tar}}条件期望 {it:depvar}；默认值{p_end}
{synopt :{cmdab:r:esiduals}}残差 {p_end}
{synopt :{cmdab:ys:tar(}{it:a}{cmd:,}{it:b}{cmd:)}}E(y*), y*=max{{it:a},
min(y,{it:b})}{p_end}
{synopt :{cmd:xb}}线性预测{p_end}
{synopt :{cmd:stdp}}线性预测的标准误{p_end}
{synopt :{cmd:pr(}{it:a}{cmd:,}{it:b}{cmd:)}}Pr({it:a} < y < {it:b}){p_end}
{synopt :{cmd:e(}{it:a}{cmd:,}{it:b}{cmd:)}}E(y | {it:a} < y < {it:b}){p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample

INCLUDE help whereab
{p 6 6 2}对于 {cmd:churdle exponential}，{it:b} 为 {cmd:.}（缺失值）。


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测的新变量，如条件期望 {depvar}、残差、线性预测、
标准误和概率。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{cmd:ystar}，默认值，计算因变量的条件期望。

{phang}
{cmd:residuals}计算残差。

{phang}
{cmd:ystar(}{it:a}{cmd:,}{it:b}{cmd:)}计算 E(y*)。 {it:a} 和
{it:b} 的指定方式与 {cmd:pr()} 相同。如果 {it:a} 和 {it:b}
等于 {cmd:churdle} 中指定的上下限，则 E(y*) 等同于因变量的预测值
{cmd:ystar}。

{phang}
{cmd:xb}计算线性预测。

{phang}
{cmd:stdp}计算线性预测的标准误。 

{phang}
{opt pr(a,b)} 计算 {bind:Pr({it:a} < y < {it:b})}，即在区间 ({it:a},{it:b}) 中观察到的概率
y|x。

{pmore}
{it:a} 和 {it:b} 可以指定为数字或变量名；
{it:lb} 和 {it:ub} 是变量名；{break}
{cmd:pr(20,30)} 计算 {bind:Pr(20 < y<30)}；{break}
{cmd:pr(}{it:lb}{cmd:,}{it:ub}{cmd:)} 计算 
{bind:Pr({it:lb} < y < {it:ub})}；并且{break}
{cmd:pr(20,} {it:ub}{cmd:)} 计算 {bind:Pr(20 < y < {it:ub})}。

{pmore}
{it:a} 为缺失值 {bind:({it:a} {ul:>} {cmd:.})} 意味着 {cmd:ll}; {cmd:pr(.,30)}
计算 {bind:Pr({it:ll} < y < 30)}；{break}
{cmd:pr(}{it:lb}{cmd:,30)} 计算 {bind:Pr({it:ll} < y < 30)}，适用于 {bind:{it:lb} {ul:>} {cmd:.}} 的观察值；{break} 并计算
{bind:Pr({it:lb} < y < 30)} 在其他地方。

{pmore}
{it:b} 为缺失值 {bind:({it:b} {ul:>} {cmd:.})} 意味着正无穷大；
{cmd:pr(20,.)} 计算 {bind:Pr(infinity > y > 20)}；{break}
{cmd:pr(20,}{it:ub}{cmd:)} 计算 {bind:Pr(infinity > y > 20)} 在观察值中
{bind:{it:ub} {ul:>} {cmd:.}}；{break}
并在其他地方计算 {bind:Pr({it:ub} > y > 20)}。{break}
对于 {cmd:churdle linear}，{it:ul} 为无穷大。

{phang}
{cmd:e(}{it:a}{cmd:,}{it:b}{cmd:)}计算
{bind:E(y | {it:a} < y < {it:b})}，
即 y|x 在区间 ({it:a},{it:b}) 中的条件期望值，意味着 y|x 有界。
{it:a} 和 {it:b} 的指定方式与 {cmd:pr()} 相同。

{phang}
{opt equation(eqno)} 指定要为 {cmd:xb} 和 {cmd:stdp} 选项作出预测的方程。 {cmd:equation()}
应包含一个方程名称或 {cmd:#1}、{cmd:#2}、...
其中 {cmd:#1} 表示第一个方程，{cmd:#2} 表示第二个方程，等等。

{pmore}
如果您未指定 {cmd:equation()}，结果与
指定 {cmd:equation(# 1)} 的结果相同。

{phang}
{cmd:scores} 计算方程级别的得分变量。如果您指定一个新变量，则计算潜变量方程的得分。如果您指定变量列表，则计算每个方程的得分。可以获得以下得分：

{pmore}
第一个新变量将包含 
partial ln L/partial(x beta),

{pmore}
第二个新变量将包含 
partial ln L/partial(z gamma_{ll}),

{pmore}
第三个新变量将包含 
partial ln L/partial(z gamma_{ul}),

{pmore}
第四个新变量将包含 
partial ln L/partial(sigma),

{pmore}
第五个新变量将包含 
partial ln L/partial(sigma_{ll})，以及 

{pmore}
第六个新变量将包含 
partial ln L/partial(sigma_{ul}).


INCLUDE help syntax_margins

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:主要}
{synopt :{opt ys:tar}}条件期望 {it:depvar}；默认值{p_end}
{synopt :{cmdab:ys:tar(}{it:a}{cmd:,}{it:b}{cmd:)}}E(y*), y*=max{{it:a}, min(y,{it:b})}; 对于 {cmd:churdle exponential}，{it:b} 为 .{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{cmd:pr(}{it:a}{cmd:,}{it:b}{cmd:)}}Pr({it:a} < y < {it:b}); 对于 {cmd:churdle exponential}，{it:b} 为 .{p_end}
{synopt :{cmd:e(}{it:a}{cmd:,}{it:b}{cmd:)}}E(y | {it:a} < y < {it:b}); 对于 {cmd:churdle exponential}，{it:b} 为 .{p_end}
{synopt :{opt r:esiduals}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:margins的描述}

{pstd}
{cmd:margins} 估计响应的边际值，适用于
条件期望、线性预测和概率。


{marker examples}{...}
{title:实例}

    设置
{phang2}{cmd:. webuse fitness}{p_end}
{phang2}{cmd:. churdle linear hours age i.smoke distance i.single, select(commute whours) ll(0) het(age single) nolog}

{pstd}拟合因变量 {cmd:hours} 的条件期望{p_end}
{phang2}{cmd:. predict hourshat}

{pstd}拟合因变量的条件期望大于零的值{p_end}
{phang2}{cmd:. predict exercises, e(0,.)}{p_end}
{phang2}{cmd:. summarize hours hourshat exercises}{p_end}

{pstd}计算 {cmd:single} 的平均边际效应{p_end}
{phang2}{cmd:. margins, dydx(1.single)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <churdle_postestimation.sthlp>}