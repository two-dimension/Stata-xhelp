{smcl}
{* *! version 1.1.7  14may2019}{...}
{vieweralsosee "[BAYES] 贝叶斯后验估计" "mansection BAYES Bayesianpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[BAYES] bayesmh" "help bayesmh_zh"}{...}
{vieweralsosee "[BAYES] bayesmh 评估器" "help bayesmh evaluators"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] 贝叶斯命令" "help bayesian commands"}{...}
{vieweralsosee "[BAYES] 术语表" "help bayes_glossary_zh"}{...}
{viewerjumpto "描述" "bayesian postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "bayesian_postestimation_zh##linkspdf"}{...}
{viewerjumpto "备注" "bayesian_postestimation_zh##remarks"}
{help bayesian_postestimation:English Version}
{hline}{...}
{p2colset 1 36 38 2}{...}
{p2col:{bf:[BAYES] 贝叶斯后验估计} {hline 2}}对 bayesmh 和 bayes 前缀的后验估计工具{p_end}
{p2col:}({mansection BAYES Bayesianpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
在 {cmd:bayesmh} 命令 ({manhelp bayesmh BAYES}) 和 {cmd:bayes} 前缀 ({manhelp bayes BAYES}) 之后，可用以下贝叶斯后验估计命令：

{synoptset 24 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{help bayesgraph_zh}}图形摘要和收敛诊断{p_end}
{synopt :{helpb bayesstats grubin}}Gelman-Rubin 收敛诊断{p_end}
{synopt :{helpb bayesstats ess}}有效样本大小及相关统计{p_end}
{synopt :{helpb bayesstats ppvalues}}贝叶斯预测 p 值（仅在 {cmd:bayesmh} 之后可用）{p_end}
{synopt :{helpb bayesstats summary}}模型参数及其函数的贝叶斯摘要统计{p_end}
{synopt :{helpb bayesstats ic}}贝叶斯信息准则和贝叶斯因子{p_end}
{synopt :{helpb bayestest model}}使用模型后验概率的假设检验{p_end}
{synopt :{helpb bayestest interval}}区间假设检验{p_end}
{synopt :{help bayespredict_zh}}贝叶斯预测（仅在 {cmd:bayesmh} 之后可用）{p_end}
{p2coldent:* {help estimates_zh}}分类估计结果{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:estimates table} 和 {cmd:estimates stats} 不适用于 {cmd:bayesmh} 和 {cmd:bayes:} 的估计结果。
{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES BayesianpostestimationRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{marker bayesian_post_reref}{...}
{pstd}
对于多水平模型，存在多种方式 {it:reref} 可以参考单个随机效应参数。假设你的模型在 {cmd:id} 级别上具有随机截距，这些截距标记为 {cmd:{U0[id]}} 或简写为 {cmd:{U0}}。要引用所有随机截距，可以使用 {cmd:{U0}}、{cmd:{U0[.]} 和 {cmd:{U0[id]}}。要引用特定的随机截距，可以使用 {cmd:{c -(}U0[}{it:#}{cmd:]{c )-}}，其中 {it:#} 代表随机效应向量的 {it:#}th 元素，或者使用 {cmd:{c -(}U0[}{it:#}{cmd:.id]{c )-}}，其中 {it:#} 代表 {cmd:id} 变量的 {it:#}th 级别。您还可以通过使用 {cmd:{c -(}U0[}{it:numlist}{cmd:]{c )-}} 或 {cmd:{c -(}U0[(}{it:numlist}{cmd:).id]{c )-}} 来引用随机截距的子集 {it:{help numlist_zh}}。对于嵌套随机效应，例如 {cmd:{UU0[id1>id2]}}, 您可以将所有随机效应称为 {cmd:{UU0}} 或 {cmd:{UU0[.,.]}}，并将随机效应的子集称为 {cmd:{c -(}UU0[}{it:numlist}{cmd:,}{it:numlist}{cmd:]{c )-}} 或 {cmd:{c -(}UU0[(}{it:numlist}{cmd:).id1,}{cmd:(}{it:numlist}{cmd:).id2]{c )-}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayesian_postestimation.sthlp>}