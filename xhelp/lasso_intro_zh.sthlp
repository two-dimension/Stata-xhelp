{smcl}
{* *! version 1.0.1  01jul2019}{...}
{vieweralsosee "[LASSO] Lasso intro" "mansection LASSO Lassointro"}{...}
{viewerjumpto "Description" "data##description"}{...}
{viewerjumpto "Links to PDF documentation" "time_zh##linkspdf"}
{help lasso_intro:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[LASSO] Lasso intro} {hline 2}}Lasso 介绍{p_end}
{p2col:}({mansection LASSO Lassointro:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
Lasso 最初是“least absolute shrinkage and selection operator”的缩写。今天，lasso 被视为一个词，而不是缩写。

{pstd}
Lasso 用于预测、模型选择以及作为估计量的一部分进行推断。

{pstd}
Lasso、弹性网和平方根 lasso 旨在用于模型选择和预测。Stata 的 {cmd:lasso}、{cmd:elasticnet} 和 {cmd:sqrtlasso} 命令实现了这些方法。{cmd:lasso} 和 {cmd:elasticnet} 适用于连续、二元和计数结果，而 {cmd:sqrtlasso} 则适用于连续结果。

{pstd}
Stata 还提供用于推断的 lasso 命令。它们使用 lasso 选择出出现在模型中的控制变量，并为指定的协变量子集估计系数和标准误差。

{pstd}
Stata 的 lasso 推断命令实现了双重选择、部分剔除和交叉拟合部分剔除等方法。使用这些方法，可以应用线性、逻辑或泊松回归来建模连续、二元或计数结果。部分剔除和交叉拟合部分剔除也允许在线性模型中使用内生协变量。

{pstd}
此条目提供了用于预测、模型选择和推断的 lasso 概述，并介绍了 Stata 的 lasso 命令集。

{synoptset 37}{...}
{synoptline}
{synopt :{manlink LASSO Lasso inference intro}}推断性 lasso 模型简介{p_end}
{synopt :{manhelp coefpath LASSO}}绘制 lasso 后系数路径{p_end}
{synopt :{manlink LASSO Collinear covariates}}对共线性协变量的处理{p_end}
{synopt :{manhelp cvplot LASSO}}绘制 lasso 后的交叉验证函数{p_end}
{synopt :{manhelp dslogit LASSO}}双重选择 lasso 逻辑回归{p_end}
{synopt :{manhelp dspoisson LASSO}}双重选择 lasso 泊松回归{p_end}
{synopt :{manhelp dsregress LASSO}}双重选择 lasso 线性回归{p_end}
{synopt :{manhelp elasticnet LASSO}}弹性网用于预测和模型选择{p_end}
{synopt :{helpb lasso estimates store:[LASSO] estimates store}}在内存和磁盘中保存和恢复估计{p_end}
{synopt :{manlink LASSO Inference examples}}推断示例和工作流程{p_end}
{synopt :{manlink LASSO Inference requirements}}推断要求{p_end}
{synopt :{manhelp lasso LASSO}}用于预测和模型选择的 lasso{p_end}
{synopt :{helpb lasso postestimation:[LASSO] lasso postestimation}}用于预测的 lasso 后估计工具{p_end}
{synopt :{manhelp lassocoef LASSO}}显示 lasso 估计结果后的系数{p_end}
{synopt :{manlink LASSO lasso examples}}用于预测的 lasso 示例{p_end}
{synopt :{manlink LASSO lasso fitting}}拟合 lasso 模型的过程（概述）{p_end}
{synopt :{manhelp lassogof LASSO}}用于预测的 lasso 拟合优度{p_end}
{synopt :{helpb lasso inference postestimation:[LASSO] lasso inference postestimation}}用于推断模型的 lasso 后估计工具{p_end}
{synopt :{manhelp lassoinfo LASSO}}显示有关 lasso 估计结果的信息{p_end}
{synopt :{manhelp lassoknots LASSO}}在 lasso 估计后显示节点表{p_end}
{synopt :{helpb lasso options:[LASSO] lasso options}}推断模型的 lasso 选项{p_end}
{synopt :{manhelp lassoselect LASSO}}在 lasso 后选择 lambda{p_end}
{synopt :{manhelp poivregress LASSO}}剔除的 lasso 工具变量回归{p_end}
{synopt :{manhelp pologit LASSO}}剔除的 lasso 逻辑回归{p_end}
{synopt :{manhelp popoisson LASSO}}剔除的 lasso 泊松回归{p_end}
{synopt :{manhelp poregress LASSO}}剔除的 lasso 线性回归{p_end}
{synopt :{manhelp sqrtlasso LASSO}}平方根 lasso 用于预测和模型选择{p_end}
{synopt :{manhelp xpoivregress LASSO}}交叉拟合剔除的 lasso 工具变量回归{p_end}
{synopt :{manhelp xpologit LASSO}}交叉拟合剔除的 lasso 逻辑回归{p_end}
{synopt :{manhelp xpopoisson LASSO}}交叉拟合剔除的 lasso 泊松回归{p_end}
{synopt :{manhelp xporegress LASSO}}交叉拟合剔除的 lasso 线性回归{p_end}
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection LASSO LassointroRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lasso_intro.sthlp>}