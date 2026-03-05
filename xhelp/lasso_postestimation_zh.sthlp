{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog predict "dialog lasso_p"}{...}
{vieweralsosee "[LASSO] lasso postestimation" "mansection lasso lassopostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso examples" "mansection lasso lassoexamples"}{...}
{vieweralsosee "[LASSO] elasticnet" "help elasticnet_zh"}{...}
{vieweralsosee "[LASSO] lasso" "help lasso_zh"}{...}
{vieweralsosee "[LASSO] sqrtlasso" "help sqrtlasso_zh"}{...}
{viewerjumpto "Postestimation commands" "lasso_postestimation_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "lasso_postestimation_zh##linkspdf"}{...}
{viewerjumpto "Predictions" "lasso postestimation##syntax_predict"}{...}
{viewerjumpto "Examples" "lasso postestimation##examples"}
{help lasso_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[LASSO] lasso postestimation} {hline 2}}用于预测的 lasso 后估计工具{p_end}
{p2col:}({mansection LASSO lassopostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:lasso}、{cmd:sqrtlasso} 和 {cmd:elasticnet} 之后，以下后估计命令特别重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{help coefpath_zh}}绘制系数路径{p_end}
{synopt :{help cvplot_zh}}绘制交叉验证函数{p_end}
{synopt :{help lassocoef_zh}}显示选择的系数{p_end}
{synopt :{help lassogof_zh}}预测的 lasso 拟合优度{p_end}
{synopt :{help lassoinfo_zh}}有关 lasso 估计结果的信息{p_end}
{synopt :{help lassoknots_zh}}系数选择和拟合度的节点表{p_end}
{synopt :{help lassoselect_zh}}选择替代的 lambda*（对于 {cmd:elasticnet} 也适用 alpha*）{p_end}
{synoptline}

{pstd}
以下标准后估计命令也可用：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_estatsum
INCLUDE help post_estimates
{synopt :{helpb lasso postestimation##predict:predict}}预测{p_end}
{synopt :{help predictnl_zh}}广义预测的点估计{p_end}
{synoptline}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection LASSO lassopostestimationRemarksandexamples:备注和示例}

{pstd}
以上章节不包含在此帮助文件中。


{marker predict}{...}
{marker syntax_predict}{...}
{title:预测的语法}

{p 8 19 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic} {it:options}]

{marker statistic}{...}
{synoptset 19 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主要}
{synopt :{opt xb}}线性预测； {cmd:linear} 模型的默认值{p_end}
{synopt :{opt pr}}正事件的概率； {cmd:logit} 和 {cmd:probit} 模型的默认值{p_end}
{synopt :{opt n}}事件数量； {cmd:poisson} 模型的默认值{p_end}
{synopt :{opt ir}}发生率； {cmd:poisson} 模型的可选项{p_end}
{synoptline}
{p 4 6 2}
选项 {cmd:pr} 不允许在模型为 {cmd:linear} 或 {cmd:poisson} 时使用。{p_end}
{p 4 6 2}
选项 {cmd:n} 和 {cmd:ir} 仅在模型为 {cmd:poisson} 时有效。


{marker statistic}{...}
{synoptset 19 tabbed}{...}
{synopthdr:options}
{synoptline}
{syntab:主要}
{synopt :{opt pen:alized}}使用惩罚系数； 默认值{p_end}
{synopt :{opt post:selection}}使用后选择（非惩罚）系数{p_end}
{synopt :{opt nooff:set}}忽略偏移或暴露变量（如果有的话）{p_end}
{synoptline}


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测结果，例如线性预测、当模型为 logit 或 probit 时的概率，或当模型为 Poisson 时的事件数量。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{cmd:xb}，{cmd:linear} 模型的默认值，计算线性预测。

{phang}
{cmd:pr}，{cmd:logit} 和 {cmd:probit} 模型的默认值，计算正事件的概率。

{phang}
{cmd:n}，{cmd:poisson} 模型的默认值，计算事件数量。

{phang}
{cmd:ir} 仅适用于 {cmd:poisson} 模型。 它计算发生率 exp(xbeta')，这是当曝光为 1 时预测的事件数量。在拟合模型时未指定 {cmd:offset()} 或 {cmd:exposure()} 时，指定 {cmd:ir} 相当于指定 {cmd:n}。

{phang}
{cmd:penalized} 指定使用惩罚系数计算预测。这是默认设置。惩罚系数是通过 lasso 在计算 lasso 惩罚时估计的系数。请参见
{mansection LASSO lassoMethodsandformulas:{it:方法和公式}} 在 {bf:[LASSO] lasso} 中。

{phang}
{cmd:postselection} 指定使用后选择系数计算预测。后选择系数通过选取 lasso 选择的变量并使用适当的普通估计量重新拟合模型来计算：线性回归对于 {cmd:linear} 模型，逻辑回归对于 {cmd:logit} 模型，probit 回归对于 {cmd:probit} 模型，以及 Poisson 回归对于 {cmd:poisson} 模型。

{phang}
{cmd:nooffset} 仅在您在拟合模型时指定了 {cmd:offset()} 或 {cmd:exposure()} 时相关。它修改 {cmd:predict} 的计算，使其忽略偏移或暴露变量；线性预测被视为 xbeta' 而不是 xbeta' + offset 或 xbeta' + ln(exposure)。对于 {cmd:poisson} 模型，在指定 {cmd:predict} 
...{cmd:, nooffset} 时，相当于指定 {cmd:predict} 
...{cmd:, ir}.{p_end}


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse auto}{p_end}
{phang2}{cmd:. set seed 1234}{p_end}
{phang2}{cmd:. lasso linear mpg i.foreign i.rep78 headroom weight turn}
        {cmd:gear_ratio price trunk length displacement}

{pstd}预测 {cmd:mpg}{p_end}
{phang2}{cmd:. predict mpghat}

{pstd}使用后选择（非惩罚）系数{p_end}
{phang2}{cmd:. predict mpghat1, postselection}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. clear all}{p_end}
{phang2}{cmd:. set maxvar 10000}{p_end}
{phang2}{cmd:. webuse fakesurvey_vl}{p_end}
{phang2}{cmd:. vl rebuild}{p_end}
{phang2}{cmd:. lasso logit q106 $idemographics $ifactors $vlcontinuous,}
               {cmd:rseed(1234)}

{pstd}预测 q106=1 的概率{p_end}
{phang2}{cmd:. predict prob}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lasso_postestimation.sthlp>}