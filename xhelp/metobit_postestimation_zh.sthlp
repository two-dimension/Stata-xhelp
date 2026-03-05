{smcl}
{* *! version 1.0.4  22oct2017}{...}
{viewerdialog predict "dialog metobit_p"}{...}
{viewerdialog estat "dialog metobit_estat"}{...}
{vieweralsosee "[ME] metobit postestimation" "mansection ME metobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] metobit" "help metobit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meglm postestimation" "help meglm postestimation"}{...}
{viewerjumpto "Postestimation commands" "metobit postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "metobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "metobit postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "metobit postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "metobit postestimation##examples"}
{help metobit_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[ME] metobit postestimation} {hline 2}}metobit 的后估计工具{p_end}
{p2col:}({mansection ME metobitpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:metobit} 之后，以下后估计命令特别重要：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat group}}总结嵌套组的组成{p_end}
{synopt :{helpb estat icc}}估计组内相关性{p_end}
{synopt :{helpb me estat sd:estat sd}}以标准差和相关性显示方差成分{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可以使用：

{synoptset 18 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_contrast
包含 help post_estatic
包含 help post_estatsum
包含 help post_estatvce
包含 help post_svy_estat
包含 help post_estimates
包含 help post_hausman_star
包含 help post_lincom
包含 help post_lrtest_star
{synopt:{helpb metobit_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含 help post_marginsplot
包含 help post_nlcom
{synopt :{helpb metobit postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
包含 help post_predictnl
包含 help post_pwcompare
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman} 和 {cmd:lrtest} 对 {cmd:svy} 估计结果不适用。


{marker linkspdf}{...}
{title:PDF 文档的链接}

        {mansection ME metobitpostestimationRemarksandexamples:备注和示例}

        {mansection ME metobitpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


包含 help syntax_me_predict


{marker statistic}{...}
{synoptset 25 tabbed}{...}
{synopthdr :统计量}
{synoptline}
{syntab :主要}
{synopt :{opt eta}}拟合的线性预测值；默认值{p_end}
{synopt :{opt xb}}仅限于模型固定部分的线性预测{p_end}
{synopt :{opt stdp}}固定部分线性预测的标准误{p_end}
{synopt :{opt pr(a,b)}}Pr(a < y < b){p_end}
{synopt :{opt e(a,b)}}E(y | a < y < b){p_end}
{synopt :{opt ys:tar(a,b)}}E(y*), y* = max{a,min(y,b)}{p_end}
{synoptline}
包含 help esample

包含 help whereab

{marker options_table}{...}
{synoptset 25 tabbed}{...}
{synopthdr :选项}
{synoptline}
{syntab :主要}
{synopt :{opt cond:itional}{cmd:(}{it:{help metobit_postestimation##ctype:ctype}}{cmd:)}}在估计随机效应的条件下计算 {it:statistic}；默认值是 {cmd:conditional(ebmeans)}{p_end}
{synopt :{opt marginal}}相对于随机效应边际计算 {it:statistic}{p_end}
{synopt :{opt nooff:set}}在计算时忽略偏移或暴露{p_end}

{syntab :积分}
{synopt :{it:{help metobit_postestimation##int_options:int_options}}}积分选项{p_end}
{synoptline}

包含 help syntax_me_predict_ctype

包含 help syntax_me_predict_reopts

包含 help syntax_me_predict_intopts


包含 help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测值的新变量，例如线性预测、标准误、概率和期望值。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{opt eta}， 默认情况下，计算拟合的线性预测。

{phang}
{opt pr(a,b)} 计算 
{bind:Pr({it:a} < y < {it:b})} 的估计值，即 y 处于区间 (a,b) 的概率。

{pmore}
{it:a} 和 {it:b} 可以指定为数字或变量名；{it:lb} 和 {it:ub} 是变量名；{break}
{cmd:pr(20,30)} 计算 {bind:Pr(20 < y < 30)}；{break}
{cmd:pr(}{it:lb}{cmd:,}{it:ub}{cmd:)} 计算
{bind:Pr({it:lb} < y < {it:ub})}；而{break}
{cmd:pr(20,}{it:ub}{cmd:)} 计算
{bind:Pr(20 < y < {it:ub})}。

{pmore}
{it:a} 缺失 {bind:({it:a} {ul:>} {cmd:.})} 表示负无穷；{break}
{cmd:pr(.,30)} 计算 {bind:Pr(-infinity < y < 30)}；{break}
{cmd:pr(}{it:lb}{cmd:,30)} 计算 {bind:Pr(-infinity < y < 30)}
在 {bind:{it:lb} {ul:>} {cmd:.} 的观测值中（并在其他地方计算 {bind:Pr({it:lb} < y < 30)}）。

{pmore}
{it:b} 缺失 {bind:({it:b} {ul:>} .)} 表示正无穷；{break}
{cmd:pr(20,.)} 计算 {bind:Pr(+infinity > y > 20)}；{break}
{cmd:pr(20,}{it:ub}{cmd:)} 计算 {bind:Pr(+infinity > y > 20)} 在 {it:ub} {ul:>} {cmd:.} 的观测值中（并在其他地方计算 {bind:Pr(20 < y < {it:ub})}）。

{phang}
{opt e(a,b)} 计算 
{bind:E(y | {it:a} < y < {it:b})} 的估计值，即在 y 位于区间 ({it:a},{it:b}) 时 y 的期望值，表示 y 被截断。 {it:a} 和 {it:b} 的指定方式与 {cmd:pr()} 相同。

{phang}
{opt ystar(a,b)} 计算 E(y*) 的估计值，其中 {bind:y* = a} 如果
{bind:y {ul:<} {it:a}}， {bind:y* = {it:b}} 如果
{bind:y {ul:>} {it:b}，而 {bind:y* = y} 否则，意味着 y* 是 y 的截断版本。
{it:a} 和 {it:b} 的指定方式与 {cmd:pr()} 相同。

{phang}
{opt xb}， {opt stdp}， {opt scores}， {opt conditional()}， {opt marginal}，
及 {opt nooffset}；见 {helpb meglm postestimation##options_predict:[ME] meglm postestimation}。

{phang}
{cmd:reffects}，
{cmd:ebmeans}，
{cmd:ebmodes} 和
{cmd:reses()}；
见 {helpb meglm postestimation##options_predict:[ME] meglm postestimation}。

{dlgtab:积分}

{phang}
{cmd:intpoints()}，
{cmd:iterate()}，和
{cmd:tolerance()}；
见 {helpb meglm postestimation##options_predict:[ME] meglm postestimation}。


包含 help syntax_margins

{marker statistic}{...}
{synoptset 25}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt eta}}拟合的线性预测；默认值{p_end}
{synopt :{opt xb}}仅限于模型固定部分的线性预测{p_end}
{synopt :{opt pr(a,b)}}Pr(a < y < b){p_end}
{synopt :{opt e(a,b)}}E(y | a < y < b){p_end}
{synopt :{opt ys:tar(a,b)}}E(y*), y* = max{a,min(y,b)}{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 同用{p_end}
{synoptline}

包含 help notes_margins


包含 help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计线性预测、概率和期望值的边际响应。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse nlswork3}{p_end}
{phang2}{cmd:. metobit ln_wage union age south##c.grade || idcode:, ul(1.9)}{p_end}

{pstd}预测（未观察到的）未截断变量的均值{p_end}
{phang2}{cmd:. predict uncens_pred, eta marginal}{p_end}

{pstd}预测（已观察到的）截断值的均值{p_end}
{phang2}{cmd:. predict cens_pred, ystar(.,1.9) marginal}{p_end}

{pstd}计算残余组内相关性{p_end}
{phang2}{cmd:. estat icc}{p_end}

{pstd}总结嵌套组的组成{p_end}
{phang2}{cmd:. estat group}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <metobit_postestimation.sthlp>}