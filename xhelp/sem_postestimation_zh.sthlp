{smcl}
{* *! version 1.1.8  14may2018}{...}
{vieweralsosee "[SEM] sem postestimation" "mansection SEM sempostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem reporting options" "help sem_reporting_options_zh"}{...}
{viewerjumpto "后估计命令" "sem_postestimation_zh##description"}{...}
{viewerjumpto "PDF文档链接" "sem_postestimation_zh##linkspdf"}{...}
{viewerjumpto "边际" "sem_postestimation_zh##syntax_margins"}{...}
{viewerjumpto "备注" "sem_postestimation_zh##remarks"}
{help sem_postestimation:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[SEM] sem postestimation} {hline 2}}sem 的后估计工具{p_end}
{p2col:}({mansection SEM sempostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
以下是您可以在使用 {cmd:sem} 估计后使用的后估计命令：

{synoptset 18 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{help sem_estat_framework_zh:estat framework}}以建模框架（矩阵形式）显示结果{p_end}

{synopt :{help sem_estat_gof_zh:estat gof}}整体拟合优度{p_end}
{synopt :{help sem_estat_ggof_zh:estat ggof}}组级拟合优度{p_end}
{synopt :{help sem_estat_eqgof_zh:estat eqgof}}方程级拟合优度{p_end}
{synopt :{help sem_estat_residuals_zh:estat residuals}}残差矩阵{p_end}
包括 help post_estatic
包括 help post_hausman_star

{synopt :{help sem_estat_mindices_zh:estat mindices}}修正指数（评分检验）{p_end}
{synopt :{help sem_estat_scoretests_zh:estat scoretests}}评分检验{p_end}
{synopt :{help sem_estat_ginvariant_zh:estat ginvariant}}参数在不同组之间不变性的检验{p_end}

{synopt :{help sem_estat_eqtest_zh:estat eqtest}}方程级 Wald 检验{p_end}
{p2coldent:* {help sem_lrtest_zh:lrtest}}似然比检验{p_end}
{synopt :{help sem_test_zh:test}}Wald 检验{p_end}
{synopt :{help sem_lincom_zh:lincom}}参数的线性组合{p_end}
{synopt :{help sem_nlcom_zh:nlcom}}参数的非线性组合{p_end}
{synopt :{help sem_testnl_zh:testnl}}非线性假设的 Wald 检验{p_end}
{synopt :{help sem_estat_stdize_zh:estat stdize:}}检验标准化参数{p_end}

{synopt :{help sem_estat_teffects_zh:estat teffects}}效应的分解{p_end}
{synopt :{help sem_estat_stable_zh:estat stable}}评估非递归系统的稳定性{p_end}
包括 help post_estatsum
包括 help post_estatvce

{synopt :{help sem_predict_zh:predict}}因子得分，预测值等{p_end}

{synopt:{helpb sem_postestimation##margins:margins}}边际均值，预测边际，边际效应和平均边际效应{p_end}
包括 help post_marginsplot

{synopt :{help estimates_zh:estimates}}估计结果目录{p_end}
{synoptline}
{p 4 6 2}
* {cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。

{pstd}
有关后估计功能的总结，请参见 {manlink SEM Intro 7}。

{pstd}
后估计命令如 {cmd:lincom} 和 {cmd:nlcom} 需要参考估计的参数值，这些值可以通过 {cmd:_b[}{it:name}{cmd:]} 访问。要找出名称，请输入 {cmd:sem,} {cmd:coeflegend}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SEM sempostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


包括 help syntax_margins1

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :default}所有 OEn 变量的线性预测{p_end}
{synopt :{opth xb(varname)}}指定 OEn 变量的线性预测{p_end}
{synopt :{opt xb}}与 {cmd:margins} 在语法上不兼容{p_end}
{synopt :{opt xblat:ent}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt xblat:ent(varlist)}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt lat:ent}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt lat:ent(varlist)}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt sc:ores}}与 {cmd:margins} 不允许{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
键： OEn = 观察到的内生变量
{p_end}

包括 help notes_margins

包括 help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 用于估计线性预测的响应边际。


{marker remarks}{...}
{title:备注}

{pstd}
本手册条目涉及 {cmd:sem}。
有关在 {cmd:gsem} 后可用的后估计功能的信息，请参见 {helpb gsem postestimation:[SEM] gsem 后估计}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_postestimation.sthlp>}