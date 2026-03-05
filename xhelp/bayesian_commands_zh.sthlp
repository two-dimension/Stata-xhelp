{smcl}
{* *! version 1.0.6  03apr2019}{...}
{vieweralsosee "[BAYES] Bayesian commands" "mansection BAYES Bayesiancommands"}{...}
{vieweralsosee "[BAYES] Intro" "mansection BAYES Intro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[BAYES] bayesmh" "help bayesmh_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian estimation"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian postestimation"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Description" "bayesian_commands_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayesian_commands_zh##linkspdf"}
{help bayesian_commands:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[BAYES] Bayesian commands} {hline 2}}贝叶斯分析命令简介{p_end}
{p2col:}({mansection BAYES Bayesiancommands:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
此条目描述执行贝叶斯分析的命令。贝叶斯分析是一种统计程序，通过使用概率表达对未知参数的不确定性来回答研究问题。它基于基本假设，即不仅感兴趣的结果，而且统计模型中的所有未知参数本质上都是随机的，并且受到先验信念的影响。


{p2colset 9 30 32 2}{...}
{pstd}
{bf:估计}

{p2col :{helpb Bayesian estimation}}贝叶斯估计命令{p_end}
{p2col :{help bayes_zh}}使用 {cmd:bayes} 前缀的贝叶斯回归模型{p_end}
{p2col :{help bayesmh_zh}}使用MH的贝叶斯回归{p_end}
{p2col :{helpb bayesmh evaluators}}使用MH的用户定义贝叶斯模型{p_end}


{pstd}
{bf:收敛性测试和图形摘要}

{p2col :{help bayesgraph_zh}}图形摘要{p_end}
{p2col :{helpb bayesstats grubin}}Gelman-Rubin收敛诊断{p_end}


{pstd}
{bf:后验统计}

{p2col :{helpb bayesstats ess}}有效样本量及相关统计{p_end}
{p2col :{helpb bayesstats summary}}贝叶斯汇总统计{p_end}
{p2col :{helpb bayesstats ic}}贝叶斯信息准则和贝叶斯因子{p_end}


{pstd}
{bf:预测}

{p2col :{help bayespredict_zh}}贝叶斯预测{p_end}
{p2col :{helpb bayesstats ppvalues}}贝叶斯预测p值{p_end}


{pstd}
{bf:假设检验}

{p2col :{helpb bayestest model}}使用模型后验概率进行假设检验{p_end}
{p2col :{helpb bayestest interval}}区间假设检验{p_end}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES BayesiancommandsRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayesian_commands.sthlp>}