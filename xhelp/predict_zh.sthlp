{smcl}
{* *! version 1.1.11  31may2018}{...}
{viewerdialog predict "dialog predict"}{...}
{vieweralsosee "[R] predict" "mansection R predict"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] _predict" "help _predict_zh"}{...}
{vieweralsosee "[R] predictnl" "help predictnl_zh"}{...}
{vieweralsosee "[P] _pred_se" "help _pred_se_zh"}{...}
{viewerjumpto "Syntax" "predict_zh##syntax"}{...}
{viewerjumpto "Menu" "predict_zh##menu_predict"}{...}
{viewerjumpto "Description" "predict_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "predict_zh##linkspdf"}{...}
{viewerjumpto "Options" "predict_zh##options"}{...}
{viewerjumpto "Examples" "predict_zh##examples"}
{help predict:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] predict} {hline 2}}获取估计后的预测值、残差等{p_end}
{p2col:}({mansection R predict:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
单方程（SE）模型后

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} 
{it:{help predict##single_options:单方程选项}}]


{phang}
多方程（ME）模型后

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,}
 {it:{help predict##multiple_options:多方程选项}}] 

{p 8 16 2}
{cmd:predict} {dtype}
 {c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh:newvar1}} ... {it:{help newvar_zh:newvarq}}{c )-}
{ifin} {cmd:,} {opt sc:ores}


{synoptset 23 tabbed}{...}
{marker single_options}
{synopthdr :单方程选项}
{synoptline}
{syntab :主要}
{synopt :{opt xb}}计算线性预测{p_end}
{synopt :{opt stdp}}计算预测的标准误差{p_end}
{synopt :{opt sc:ore}}计算对数似然函数对于xb的第一导数{p_end}

{syntab :选项}
{synopt :{opt nooff:set}}忽略任何 {opt offset()} 或 {opt exposure()} 变量{p_end}
{synopt :{it:其他选项}}命令特定的选项{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 23 tabbed}{...}
{marker multiple_options}{...}
{synopthdr :多方程选项}
{synoptline}
{syntab :主要}
{synopt :{opt eq:uation}{cmd:(}{it:eqno}[{cmd:,}{it:eqno}]{cmd:)}}指定方程{p_end}
{synopt :{opt xb}}计算线性预测{p_end}
{synopt :{opt stdp}}计算预测的标准误差{p_end}
{synopt :{opt stddp}}计算线性预测的差值{p_end}

{syntab :选项}
{synopt :{opt nooff:set}}忽略任何 {opt offset()} 或 {opt exposure()} 变量{p_end}
{synopt :{it:其他选项}}命令特定的选项{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_predict


{marker description}{...}
{title:描述}

{pstd}
{cmd:predict} 计算预测值、残差、影响统计量等，适用于估计后的结果。{cmd:predict} 的具体功能由之前的估计命令决定；每个估计命令都有特定的选项文档。无论命令的具体选项如何，{cmd:predict} 的操作在估计命令之间有某些共性：

{phang2}1.{space 2}{cmd:predict} {newvar} 创建 {it:newvar}，包含“预测值”——与 {it:E}(y|x) 相关的数字。例如，在进行线性回归后，{cmd:predict} {it:newvar} 创建 xb，而在进行 probit 回归后，创建概率 F(xb)。

{phang2}2.{space 2}{cmd:predict} {newvar}{cmd:,} {opt xb} 创建 {it:newvar}，包含 xb。这可能与选项 1 结果相同（例如，线性回归），也可能不同（例如，probit），但无论如何，选项 {opt xb} 是允许的。

{phang2}3.{space 2}{cmd:predict} {newvar}{cmd:,} {opt stdp} 创建 {it:newvar}，包含线性预测 xb 的标准误差。

{phang2}4.{space 2}{cmd:predict} {newvar}{cmd:,} {it:其他选项} 可能创建 {it:newvar}，包含其他有用的量；有关其他可用选项，请参见 {cmd:help} 或特定估计命令的参考手册条目。

{phang2}5.{space 2}{cmd:nooffset} 添加到上述任何命令时，要求在计算中忽略通过包含 {opth offset:(varname:varname_o)} 或 {opt exposure(varname_e)} 选项指定的任何偏移或暴露变量。  

{pstd}
{cmd:predict} 可用于进行样本内或样本外预测：

{phang2}6.{space 2}{cmd:predict} 计算所有可能观测值的请求统计量，无论它们是否用于拟合模型。{cmd:predict} 会对标准选项 1 到 3 执行此操作，并通常会对特定估计器的选项 4 执行此操作。

{phang2}7.{space 2}{cmd:predict} {newvar} {cmd:if e(sample),} {it:...} 限制预测到估计子样本。

{phang2}8.{space 2}某些统计量只能与估计子样本相关。在这种情况下，计算自动限制为估计子样本，特定选项的文档将说明这一点。即使如此，如果不确定，您仍可以指定 {cmd:if e(sample)}。

{phang2}9.{space 2}{cmd:predict} 即使使用其他数据集也可以进行样本外预测。特别地，您可以

{pmore2}{cmd:. use ds1}{p_end}
             {it:(拟合模型)}
{pmore2}{cmd:. use two} {space 12} /* 另一个数据集         */{p_end}
{pmore2}{cmd:. predict yhat,} {it:...} {space 2} /* 填入预测值 */


{marker linkspdf}{...}
{title:PDF文档的链接}

        {mansection R predictQuickstart:快速入门}

        {mansection R predictRemarksandexamples:备注和示例}

        {mansection R predictMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:xb} 计算拟合模型的线性预测。也就是说，所有模型都可以被认为在估计一组参数 b1, b2, ..., bk，线性预测为 y = xb。对于线性回归，值 y 被称为预测值，或者对于样本外预测，被称为预测值。对于 logit 和 probit 回归，例如，y 被称为 logit 或 probit 指数。

{pmore}
x1, x2, ..., xk 从当前内存中的数据获得，且不必与用于拟合模型的自变量数据（获取 b1, b2, ..., bk）相对应。

{phang}
{cmd:stdp} 计算线性预测的标准误差。在这里，预测与“指数”的意思相同，即 xb。由 {cmd:stdp} 生成的统计量可以被视为观察值协变量模式的预测期望值或均值指数的标准误差。预测的标准误差通常被称为拟合值的标准误差。该计算可以在样本内或样本外进行。

{phang}
{opt stddp} 仅在您之前已拟合多方程模型后才允许使用。计算两个方程之间线性预测的差值的标准误差。此选项要求指定 {opt equation(eqno1,eqno2)}。

{phang}
{opt score} 计算方程级别的得分；通常是对数似然函数对线性预测的导数。

{phang}
{opt scores} 是 ME 模型中 {opt score} 选项的等效选项，结果是多个方程级别得分变量。为模型中的每个方程创建一个方程级别得分变量；附属参数——如 ln(sigma) 和 atanh(rho) ——构成单独的方程。

{phang}
{cmd:equation(}{it:eqno}[{cmd:,}{it:eqno}]{cmd:)} -- 同义词
{opt outcome()} -- 仅在您之前已拟合多方程模型时相关。指定您所指的方程。

{pmore}
{opt equation()} 通常填写一个 {it:eqno} —— 例如，在选项 {opt xb} 和 {opt stdp} 中以这种方式填写。{cmd:equation(#1)}表示计算是针对第一个方程进行的，{cmd:equation(#2)}表示第二个，以此类推。您也可以按名称引用方程。{cmd:equation(income)} 将引用名为 income 的方程，{cmd:equation(hours)} 将引用名为 hours 的方程。

{pmore}
如果不指定 {opt equation()}，结果与指定 {cmd:equation(#1)} 相同。

{pmore}
其他统计量，如 {opt stddp}，则引用方程间的概念。在这些情况下，您可以指定 {cmd:equation(#1,#2)} 或 
{cmd:equation(income,hours)}。当必须指定两个方程时，{opt equation()} 是必需的。

{dlgtab:选项}

{phang}
{opt nooffset} 可与大多数统计量组合使用，并指定计算应忽略在拟合模型时指定的任何偏移或暴露变量。  

{pmore}
此选项是可用的，即使在特定命令后的 {opt predict} 并未文档化。如果在拟合模型时既没有指定 {opth offset:(varname:varname_o)} 选项，也没有指定 {opt exposure(varname_e)} 选项，则指定 {opt nooffset} 将无效。

{phang}
{it:其他选项} 是指与每个命令文档化的命令特定选项。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress mpg weight if foreign}

{pstd}仅针对我们拟合模型的样本获取预测{p_end}
{phang2}{cmd:. predict pmpg if e(sample)}{p_end}

{pstd}使用同一数据集的所有 74 个观测值获得样本外预测{p_end}
{phang2}{cmd:. predict pmpg2}

{pstd}{cmd:cooksd} 是一个特定于回归的选项；请参见
        {manhelp regress_postestimation R:regress postestimation}{p_end}
{phang2}{cmd:. predict c, cooksd}

    {hline}
    设置
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. generate weight2 = weight^2}{p_end}
{phang2}{cmd:. regress mpg weight weight2 foreign}{p_end}
{phang2}{cmd:. webuse newautos, clear}{p_end}
{phang2}{cmd:. generate weight2 = weight^2}{p_end}

{pstd}使用另一个数据集进行样本外预测{p_end}
{phang2}{cmd:. predict mpg}{p_end}

    {hline}
    设置
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. generate weight2 = weight^2}{p_end}
{phang2}{cmd:. regress mpg weight weight2 foreign}{p_end}

{pstd}获取残差{p_end}
{phang2}{cmd:. predict double resid, residuals}{p_end}
{phang2}{cmd:. summarize resid}{p_end}

    {hline}
    设置
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. logistic foreign mpg weight}{p_end}

{pstd}获取正结果的概率；请参见
         {manhelp logistic_postestimation R:logistic postestimation}{p_end}
{phang2}{cmd:. predict phat}{p_end}

{pstd}获取线性预测{p_end}
{phang2}{cmd:. predict idxhat, xb}{p_end}
{phang2}{cmd:. summarize foreign phat idxhat}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse airline, clear}{p_end}
{phang2}{cmd:. poisson injuries XYZowned}{p_end}

{pstd}获取预测的计数；请参见
        {manhelp poisson_postestimation R:poisson postestimation}{p_end}
{phang2}{cmd:. predict injhat}{p_end}

{pstd}获取线性预测{p_end}
{phang2}{cmd:. predict idx, xb}{p_end}
{phang2}{cmd:. generate exp_idx = exp(idx)}{p_end}
{phang2}{cmd:. summarize injuries injhat exp_idx idx}{p_end}

    {hline}
    设置
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. logistic foreign mpg weight}{p_end}

{pstd}获取单方程模型得分{p_end}
{phang2}{cmd:. predict double sc, score}{p_end}
{phang2}{cmd:. summarize sc}{p_end}

    {hline}
    设置
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. sureg (price foreign displ) (weight foreign length)}{p_end}

{pstd}获取 {cmd:price} 方程的线性预测{p_end}
{phang2}{cmd:. predict pred_p, equation(price)}{p_end}

{pstd}获取 {cmd:weight} 方程的线性预测{p_end}
{phang2}{cmd:. predict pred_w, equation(weight)}{p_end}
{phang2}{cmd:. summarize price pred_p weight pred_w}{p_end}

    {hline}
    设置
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. ologit rep78 mpg weight}{p_end}

{pstd}获取多方程模型得分{p_end}
{phang2}{cmd:. predict double sc*, scores}{p_end}
{phang2}{cmd:. summarize sc*}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <predict.sthlp>}