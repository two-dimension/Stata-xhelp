{smcl}
{* *! version 1.0.7  15mar2019}{...}
{vieweralsosee "[ERM]" "mansection ERM"}{...}
{viewerjumpto "Description" "erm_intro_zh##description"}{...}
{viewerjumpto "Resources" "erm_intro_zh##resources"}{...}
{viewerjumpto "Reference" "erm_intro_zh##reference"}
{help erm_intro:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:erm introduction }{hline 2}}erm简介{p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
ERM 是扩展回归模型（extended regression model）的缩写，这是我们 Stata 创造的术语。虽然这个术语是新的，但这种方法并不新颖。ERM 是包含连续结果（包括截尾和 Tobit 结果）、二元结果和有序结果的回归模型，采用最大似然法进行拟合。这些模型可以考虑内生协变量、样本选择和非随机处理分配。ERM 提供了一个统一的框架，以单独或组合方式处理这些复杂情况。


{marker resources}{...}
{title:资源}

{pstd}
如果您对 ERM 不熟悉，请参阅以下手册条目的简介：{p_end}

{synoptset 30}{...}
{synoptline}
{synopt :{manlink ERM Intro}}简介{p_end}
{synopt :{manlink ERM Intro 1}}对 ERM 命令的介绍{p_end}
{synopt :{manlink ERM Intro 2}}ERM 拟合模型{p_end}
{synopt :{manlink ERM Intro 3}}内生协变量特征{p_end}
{synopt :{manlink ERM Intro 4}}内生样本选择特征{p_end}
{synopt :{manlink ERM Intro 5}}处理分配特征{p_end}
{synopt :{manlink ERM Intro 6}}面板数据和分组数据模型特征{p_end}
{synopt :{manlink ERM Intro 7}}模型解释{p_end}
{synopt :{manlink ERM Intro 8}}扩展回归命令的罗塞塔石{p_end}
{synopt :{manlink ERM Intro 9}}通过实例的概念介绍{p_end}
{synoptline}

{pstd}
如果您已经熟悉 ERM，请参阅以下帮助文件，了解拟合 ERM 的命令描述：{p_end}

{synoptline}
{synopt :{help eintreg_zh:[ERM] eintreg}}扩展区间回归{p_end}
{synopt :{help eoprobit_zh:[ERM] eoprobit}}扩展有序 Probit 回归{p_end}
{synopt :{help eprobit_zh:[ERM] eprobit}}扩展 Probit 回归{p_end}
{synopt :{help eregress_zh:[ERM] eregress}}扩展线性回归{p_end}
{synopt :{help erm_options_zh:[ERM] ERM options}}扩展回归模型选项{p_end}
{synoptline}

{pstd}
请参阅以下帮助文件，以获取拟合 ERM 后可用命令的描述：{p_end}

{synoptline}
{synopt :{help eintreg_postestimation_zh:[ERM] eintreg postestimation}}eintreg 和 xteintreg 的后估计工具{p_end}
{synopt :{help eintreg_predict_zh:[ERM] eintreg predict}}eintreg 和 xteintreg 的预测{p_end}
{synopt :{help eoprobit_postestimation_zh:[ERM] eoprobit postestimation}}eoprobit 和 xteoprobit 的后估计工具{p_end}
{synopt :{help eoprobit_predict_zh:[ERM] eoprobit predict}}eoprobit 和 xteoprobit 的预测{p_end}
{synopt :{help eprobit_postestimation_zh:[ERM] eprobit postestimation}}eprobit 和 xteprobit 的后估计工具{p_end}
{synopt :{help eprobit_predict_zh:[ERM] eprobit predict}}eprobit 和 xteprobit 的预测{p_end}
{synopt :{help eregress_postestimation_zh:[ERM] eregress postestimation}}eregress 和 xteregress 的后估计工具{p_end}
{synopt :{help eregress_predict_zh:[ERM] eregress predict}}eregress 和 xteregress 的预测{p_end}
{synoptline}

{pstd}
以下手册条目展示了如何使用 {cmd:eregress}、{cmd:eintreg}、{cmd:eprobit} 和 {cmd:eoprobit} 拟合模型的示例：

{synoptline}
{synopt :{manlink ERM Example 1a}}具有连续内生协变量的线性回归{p_end}
{synopt :{manlink ERM Example 1b}}具有连续内生协变量的区间回归{p_end}
{synopt :{manlink ERM Example 1c}}具有内生协变量和样本选择的区间回归{p_end}
{synopt :{manlink ERM Example 2a}}具有二元内生协变量的线性回归{p_end}
{synopt :{manlink ERM Example 2b}}具有外生处理的线性回归{p_end}
{synopt :{manlink ERM Example 2c}}具有内生处理的线性回归{p_end}
{synopt :{manlink ERM Example 3a}}具有连续内生协变量的 Probit 回归{p_end}
{synopt :{manlink ERM Example 3b}}具有内生协变量和处理的 Probit 回归{p_end}
{synopt :{manlink ERM Example 4a}}具有内生样本选择的 Probit 回归{p_end}
{synopt :{manlink ERM Example 4b}}具有内生处理和样本选择的 Probit 回归{p_end}
{synopt :{manlink ERM Example 5}}具有内生有序处理的 Probit 回归{p_end}
{synopt :{manlink ERM Example 6a}}具有内生处理的有序 Probit 回归{p_end}
{synopt :{manlink ERM Example 6b}}具有内生处理和样本选择的有序 Probit 回归{p_end}
{synopt :{manlink ERM Example 7}}具有连续内生协变量的随机效应回归{p_end}
{synopt :{manlink ERM Example 8a}}一个方程中的随机效应和内生协变量{p_end}
{synopt :{manlink ERM Example 8b}}随机效应、内生协变量和内生样本选择{p_end}
{synopt :{manlink ERM Example 9}}具有内生处理和随机效应的有序 Probit 回归{p_end}
{synoptline}
{p2colreset}{...}


{marker reference}{...}
{title:参考}

{phang}
Gould, W. W. 2018. Ermistatas 和 Stata 的新 ERM 命令。
Stata 博客：其他分类。
{browse "https://blog.stata.com/2018/03/27/ermistatas-and-statas-new-erms-commands/"}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <erm_intro.sthlp>}