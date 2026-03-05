{smcl}
{* *! version 1.2.9  14may2018}{...}
{vieweralsosee "[SEM] gsem postestimation" "mansection SEM gsempostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem reporting options" "help gsem_reporting_options_zh"}{...}
{viewerjumpto "后估计命令" "gsem_postestimation_zh##description"}{...}
{viewerjumpto "链接到 PDF 文档" "gsem_postestimation_zh##linkspdf"}{...}
{viewerjumpto "margins" "gsem_postestimation_zh##syntax_margins"}{...}
{viewerjumpto "备注" "gsem_postestimation_zh##remarks"}
{help gsem_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[SEM] gsem 后估计} {hline 2}}gsem 的后估计工具{p_end}
{p2col:}({mansection SEM gsempostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
下面是您在使用 {cmd:gsem} 估计后可以使用的后估计命令：

{synoptset 18 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{help sem_estat_eform_zh:estat eform}}显示指数化系数{p_end}
包含帮助 post_estatic
{synopt :{help sem_estat_lcgof_zh:estat lcgof}}潜在类别拟合优度统计{p_end}
{synopt :{help sem_estat_lcmean_zh:estat lcmean}}潜在类别边际均值{p_end}
{synopt :{help sem_estat_lcprob_zh:estat lcprob}}潜在类别边际概率{p_end}
{synopt :{help sem_estat_sd_zh:estat sd}}将方差成分显示为标准差和相关性{p_end}
包含帮助 post_hausman_star

{p2coldent:* {help sem_lrtest_zh:lrtest}}似然比检验 {p_end}
{synopt :{help sem_test_zh:test}}瓦尔德检验 {p_end}
{synopt :{help sem_lincom_zh:lincom}}参数的线性组合 {p_end}
{synopt :{help sem_nlcom_zh:nlcom}}参数的非线性组合 {p_end}
{synopt :{help sem_testnl_zh:testnl}}非线性假设的瓦尔德检验 {p_end}

包含帮助 post_estatsum
包含帮助 post_estatvce

{synopt :{help gsem_predict_zh:predict}}广义线性预测等 {p_end}
包含帮助 post_predictnl

{synopt:{helpb gsem_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含帮助 post_marginsplot
{synopt :{help contrast_zh}}对比和线性假设检验{p_end}
{synopt :{help pwcompare_zh}}成对比较{p_end}

{synopt :{help estimates_zh:estimates}}目录化估计结果{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。

{pstd}
有关后估计功能的总结，请参见 {manlink SEM Intro 7}。

{pstd}
后估计命令如 {cmd:lincom} 和 {cmd:nlcom} 需要引用估计的参数值，这些值可以通过 {cmd:_b[}{it:name}{cmd:]} 访问。要查看名称，请输入 {cmd:sem,} {cmd:coeflegend}。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection SEM gsempostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


包含帮助 syntax_margins

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :default}计算每个 {depvar} 的期望值{p_end}
{synopt :{opt mu}}计算 {it:depvar} 的期望值{p_end}
{synopt :{opt pr}}计算概率（当 mu 是概率时，同义词 {cmd:mu}）{p_end}
{synopt :{opt eta}}计算 {it:depvar} 的线性预测的期望值{p_end}
{synopt :{opt exp:ression}{cmd:(}{it:{help gsem_predict##exp:exp}{cmd:)}}}使用 {it:exp} 计算预测{p_end}
{synopt :{opt classpr}}计算潜在类别概率{p_end}
{synopt :{opt den:sity}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt dist:ribution}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt surv:ival}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt latent}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt latent(varlist)}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt classpost:eriorpr}}与 {cmd:margins} 不允许{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt mu} 如果未指定选项 {opt outcome()} 默认选择第一个 {it:depvar}。
如果 {it:depvar} 是
{cmd:family(multinomial)} 或 {cmd:family(ordinal)}
默认选择结果的第一个级别。
{p_end}
{p 4 6 2}
{opt pr} 如果未指定选项 {opt outcome()} 默认选择第一个允许预测概率的 {it:depvar}。
如果 {it:depvar} 是
{cmd:family(multinomial)} 或 {cmd:family(ordinal)}
默认选择结果的第一个级别。
{p_end}
{p 4 6 2}
{opt eta} 如果未指定选项 {opt outcome()} 默认选择第一个 {it:depvar}。
如果 {it:depvar} 是
{cmd:family(multinomial)}
默认选择结果的第一个级别。
{p_end}
{p 4 6 2}
{opt classpr} 如果未指定选项 {opt class()} 默认选择第一个潜在类别。{p_end}
{p 4 6 2}
{cmd:predict} 的选项 {opt marginal} 被假定为
如果 {cmd:predict} 的选项 {cmd:conditional(fixedonly)} 和 {cmd:class()} 未指定；详见 {manhelp gsem_predict SEM:predict after gsem}。
{p_end}

包含帮助 notes_margins


包含帮助 menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计响应的边际值，即期望值、概率和预测。


{marker remarks}{...}
{title:备注}

{pstd}
本手册条目涉及 {cmd:gsem}。
有关 {cmd:sem} 后可用的后估计功能的信息，请参见 {helpb sem postestimation:[SEM] sem 后估计}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gsem_postestimation.sthlp>}