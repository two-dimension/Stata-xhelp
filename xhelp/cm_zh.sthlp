{smcl}
{* *! version 1.0.0  17may2019}{...}
{vieweralsosee "[CM]" "mansection CM"}{...}
{viewerjumpto "描述" "cm_zh##description"}{...}
{viewerjumpto "资源" "cm_zh##resources"}
{help cm:English Version}
{hline}{...}
{p2colset 1 7 9 2}{...}
{p2col:{bf:cm} {hline 2}}选择模型简介{p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
选择模型（CM）是用于具有选择结果的数据模型。这些选择由决策者（例如个人或企业）从一组可能的替代方案中选择。例如，我们可以模拟消费者从几个不同品牌中选择早餐谷物的选择。或者我们可以模拟企业选择是否购买电视、广播、互联网或报纸广告的选择。

{pstd}
选择数据的模型有两种类型——离散选择模型和排名选择模型。当每个个体选择一个替代方案时，例如他或她购买一箱谷物，数据就是离散选择数据。当每个个体对选择进行排名时，例如他或她按照最喜欢到最不喜欢的顺序排列谷物，数据就是排名选择数据。Stata 提供了适用于离散选择模型和排名选择模型的命令。


{marker resources}{...}
{title:资源}

{pstd}
如果您是选择模型的新手，请参阅以下手册条目的简介：{p_end}

{synoptset 33}{...}
{synoptline}
{synopt :{manlink CM Intro 1}}选择模型的解释{p_end}
{synopt :{manlink CM Intro 2}}数据布局{p_end}
{synopt :{manlink CM Intro 3}}描述性统计{p_end}
{synopt :{manlink CM Intro 4}}估计命令{p_end}
{synopt :{manlink CM Intro 5}}离散选择的模型{p_end}
{synopt :{manlink CM Intro 6}}排名选择的模型{p_end}
{synopt :{manlink CM Intro 7}}面板数据的模型{p_end}
{synopt :{manlink CM Intro 8}}随机效用模型、假设和估计{p_end}
{synoptline}

{pstd}
在您使用 {cmd:cm} 命令拟合模型之前，您需要 {cmd:cmset} 您的数据.{p_end}

{synoptline}
{synopt :{help cmset_zh:[CM] cmset}}声明数据为选择模型数据{p_end}
{synoptline}

{pstd}
如果您已经熟悉选择模型，请参阅以下帮助文件，以探索使用专用命令计算选择模型数据的摘要统计信息：{p_end}

{synoptline}
{synopt :{help cmchoiceset_zh:[CM] cmchoiceset}}列出选择集{p_end}
{synopt :{help cmsample_zh:[CM] cmsample}}显示样本排除的原因{p_end}
{synopt :{help cmsummarize_zh:[CM] cmsummarize}}按所选替代方案汇总变量{p_end}
{synopt :{help cmtab_zh:[CM] cmtab}}列出所选替代方案{p_end}
{synoptline}

{pstd}
请参阅以下帮助文件以获取拟合选择模型的命令的描述：{p_end}

{synoptline}
{synopt :{help cmclogit_zh:[CM] cmclogit}}条件逻辑（McFadden's）选择模型{p_end}
{synopt :{help cmmixlogit_zh:[CM] cmmixlogit}}混合逻辑选择模型{p_end}
{synopt :{help cmmprobit_zh:[CM] cmmprobit}}多项式概率选择模型{p_end}
{synopt :{help cmrologit_zh:[CM] cmrologit}}排名逻辑选择模型{p_end}
{synopt :{help cmroprobit_zh:[CM] cmroprobit}}排名概率选择模型{p_end}
{synopt :{help cmxtmixlogit_zh:[CM] cmxtmixlogit}}面板数据混合逻辑选择模型{p_end}
{synopt :{help nlogit_zh:[CM] nlogit}}嵌套逻辑回归{p_end}
{synoptline}

{pstd}
请参阅以下帮助文件以获取拟合选择模型后可用命令的描述：{p_end}

{synoptline}
{synopt :{help cm_margins_zh:[CM] margins}}调整后的预测、预测边际和边际效应{p_end}

{synopt :{help cmclogit_postestimation_zh:[CM] cmclogit postestimation}}cmclogit 的后估计工具{p_end}
{synopt :{help cmmixlogit_postestimation_zh:[CM] cmmixlogit postestimation}}cmmixlogit 的后估计工具{p_end}
{synopt :{help cmmprobit_postestimation_zh:[CM] cmmprobit postestimation}}cmmprobit 的后估计工具{p_end}
{synopt :{help cmrologit_postestimation_zh:[CM] cmrologit postestimation}}cmrologit 的后估计工具{p_end}
{synopt :{help cmroprobit_postestimation_zh:[CM] cmroprobit postestimation}}cmroprobit 的后估计工具{p_end}
{synopt :{help cmxtmixlogit_postestimation_zh:[CM] cmxtmixlogit postestimation}}cmxtmixlogit 的后估计工具{p_end}
{synopt :{help nlogit_postestimation_zh:[CM] nlogit postestimation}}nlogit 的后估计工具{p_end}
{synoptline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cm.sthlp>}