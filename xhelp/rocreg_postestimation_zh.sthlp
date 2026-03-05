{smcl}
{* *! version 1.1.4  05sep2018}{...}
{viewerdialog  predict "dialog rocreg_p"}{...}
{viewerdialog  "estat" "dialog rocreg_estat"}{...}
{vieweralsosee "[R] rocreg postestimation" "mansection R rocregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] rocreg" "help rocreg_zh"}{...}
{vieweralsosee "[R] rocregplot" "help rocregplot_zh"}{...}
{viewerjumpto "Postestimation commands" "rocreg postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "rocreg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "rocreg postestimation##syntax_predict"}{...}
{viewerjumpto "estat" "rocreg postestimation##syntax_estat"}{...}
{viewerjumpto "Examples" "rocreg postestimation##examples"}{...}
{viewerjumpto "Stored results" "rocreg postestimation##results"}
{help rocreg_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[R] rocreg postestimation} {hline 2}}rocreg 的后续估计工具{p_end}
{p2col:}({mansection R rocregpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后续估计命令}

{pstd}
以下命令在 {opt rocreg} 之后特别重要：

{synoptset 13}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb rocreg_postestimation##estat_nproc:estat nproc}}非参数的
ROC 曲线估计，保留来自 {cmd:rocreg} 的拟合信息{p_end}
{synopt :{help rocregplot_zh}}绘制边际和协变量特定的 ROC 曲线
{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后续估计命令也可用：

{synoptset 13}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
包含帮助 post_estimates
包含帮助 post_lincom
包含帮助 post_nlcom
{synopt :{helpb rocreg_postestimation##predict:predict}}参数化 ROC 曲线估计的预测{p_end}
包含帮助 post_test
包含帮助 post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R rocregpostestimationRemarksandexamples:备注和示例}

        {mansection R rocregpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} 
[{cmd:,} {it:statistic} {it:options}]

{synoptset 23 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主要}
{synopt:{opth at(varname)}}用于统计的输入变量{p_end}
{synopt:{opt auc}}ROC 曲线下的总面积；默认值{p_end}
{synopt:{opt roc}}在 {cmd:at()} 中给定的假阳性率的 ROC 值{p_end}
{synopt:{opt invroc}}在 {cmd:at()} 中给定的 ROC 值的假阳性率{p_end}
{synopt:{opt pauc}}在 {cmd:at()} 中针对每个假阳性率的部分 ROC 曲线下的面积{p_end}
{synopt:{opth classvar(varname)}}针对给定分类器的统计{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 23 tabbed}{...}
{synopthdr:options}
{synoptline}
{syntab:选项}
{synopt:{opt intpts(#)}}在 pAUC 计算中的数值积分点{p_end}
{synopt:{opth se(newvar)}}预测标准误差 {p_end}
{synopt:{opt ci(stubname)}}产生置信区间，存储为以 {it:stubname} 为前缀和 {cmd:_l}、{cmd:_u} 为后缀的变量{p_end}
{synopt:{opt l:evel(#)}}设定置信水平；默认值为 {cmd:level(95)}{p_end}
{p2coldent:* {cmd:bfile(}{it:{help filename_zh}}{cmd:,} ...{cmd:)}}加载来自 {cmd:rocreg} 的 bootstrap 重复样本的 数据集{p_end}
{p2coldent:* {cmd:btype(n} | {cmd:p} | {cmd:bc)}}产生基于正态的 ({cmd:n})、百分位数的 ({cmd:p}) 或偏差修正的 ({cmd:bc}) 置信区间；默认值为 {cmd:btype(n)}{p_end}
{synoptline}
{p 4 6 2}* {opt bfile()} 和 {opt btype()} 仅允许使用带有参数的分析，使用 bootstrap 推断。
{p2colreset}{...}


包含帮助 menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
在使用 {cmd:rocreg} 拟合参数模型后使用 {cmd:predict} 
允许计算协变量特定的 ROC 曲线的所有 ROC 曲线摘要统计。 
可以计算给定假阳性率的 ROC 值、给定 ROC 值的假阳性率、ROC 曲线下的面积 (AUC) 和 
给定假阳性率的部分 ROC 曲线下的面积 (pAUC)。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opth at(varname)} 记录将用于上述预测的变量。

{phang}
{opt auc} 预测由数据中的协变量值定义的 ROC 曲线下的总面积。 这是默认的统计。

{phang}
{opt roc} 预测存储在 {cmd:at()} 中的 {varname} 指定的假阳性率的 ROC 值。

{phang}
{opt invroc} 预测存储在 {cmd:at()} 中的 {varname} 指定的给定 ROC 值的假阳性率。

{phang} 
{opt pauc} 预测在 {cmd:at()} 中存储的每个假阳性率的部分 ROC 曲线下的面积。

{phang}
{opth classvar(varname)} 对指定分类器执行预测。

{dlgtab:选项}

{phang}
{opt intpts(#)} 指定在 pAUC 计算中使用 {it:#} 个点。

{phang}
{opth se(newvar)} 指定生成标准误差并存储在 {it:newvar} 中。

{phang}
{opt ci(stubname)} 请求生成置信区间， 并将下限和上限存储在 {it:stubname}{cmd:_l} 和 {it:stubname}{cmd:_u} 中。

{phang}
{opt level(#)}
指定置信区间的置信水平，以百分比表示。 默认值为 {cmd:level(95)} 或由 {helpb set level} 设置。

{phang}
{cmd:bfile(}{it:{help filename_zh}}{cmd:,} ...{cmd:)} 使用来自 {cmd:rocreg} 存储在 {it:filename} 中的参数的 bootstrap 重复样本来估计预测的标准误差和置信区间。

{phang}
{cmd:btype(n} | {cmd:p} | {cmd:bc)} 指定是否生成基于正态的 ({cmd:n})、百分位数的 ({cmd:p}) 或偏差修正的 ({cmd:bc}) 置信区间。 默认值为 {cmd:btype(n)}。


{marker syntax_estat}{...}
{marker estat_nproc}{...}
{title:estat nproc 的语法}

{p 8 16 2}
{cmd:estat nproc}  
[{cmd:,} {it:estat_nproc_options}]

{synoptset 23 tabbed}{...}
{synopthdr:estat_nproc_options}
{synoptline}
{syntab:主要}
{synopt:{opt auc}}估计 ROC 曲线下的总面积{p_end}
{synopt:{cmd:roc(}{it:{help numlist_zh}}{cmd:)}}估计给定假阳性率的 ROC{p_end}
{synopt:{cmd:invroc(}{it:{help numlist_zh}}{cmd:)}}估计给定 ROC 值的假阳性率{p_end}
{synopt:{cmd:pauc(}{it:{help numlist_zh}}{cmd:)}}估计在每个假阳性率下的部分 ROC 曲线下面积{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
必须指定至少一个选项。
{p_end}


包含帮助 menu_estat


{marker des_estat}{...}
{title:estat 的描述}

{pstd}
{cmd:estat nproc} 允许计算协变量特定的 ROC 曲线的所有 ROC 曲线总结统计，以及
用于非参数 ROC 估计。 在非参数估计下，单个 ROC 曲线由 {cmd:rocreg} 估计。 
协变量可能影响此估计，但没有单独的协变量特定的 ROC 曲线。因此， {cmd:estat nproc} 的输入参数在命令行中而不是作为变量值来自数据。


{marker options_estat}{...}
{title:estat nproc 的选项}

{dlgtab:主要}

{phang} 
{opt auc} 估计 ROC 曲线下的总面积。  

{phang}
{opth roc(numlist)} 估计 {it:numlist} 中每个假阳性率的 ROC。 {it:numlist} 中的值必须在范围 (0,1) 内。

{phang}
{opth invroc(numlist)} 估计 {it:numlist} 中每个 ROC 值的假阳性率。 {it:numlist} 中的值必须在范围 (0,1) 内。

{phang}
{opth pauc(numlist)} 估计在 {it:numlist} 中每个假阳性率下的部分 ROC 曲线下面积。 {it:numlist} 中的值必须在范围 (0,1] 内。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse hanley}{p_end}

{pstd}假设二元模型拟合光滑的 ROC 曲线{p_end}
{phang2}{cmd:. rocreg disease rating, probit ml}{p_end}
{phang2}{cmd:. generate rocinp = .2 if _n == 1}{p_end}
{phang2}{cmd:. predict double rocval if _n == 1, roc at(rocinp) se(ser) ci(cir)}{p_end}
{phang2}{cmd:. list rocinp rocval ser cir* if _n == 1}{p_end}

{pstd}拟合非参数 ROC 曲线{p_end}
{phang2}{cmd:. rocreg disease rating, invroc(.5) bseed(32)}{p_end}
{phang2}{cmd:. estat nproc, pauc(.5)}{p_end}

    {hline}
{pstd}包含多个协变量的数据集的设置{p_end}
{phang2}{cmd:. webuse nnhs, clear}{p_end}

{pstd}对数据拟合带有控制/ROC 协变量和 bootstrap 推断的二元 ROC 曲线{p_end}
{phang2}{cmd:. rocreg d y1, ctrlcov(currage male) ctrlmodel(linear)}
        {cmd:roccov(currage) cluster(id) bseed(56930) breps(50) bsave(nnhs2y1)}
        {cmd:probit}{p_end}

{pstd}对数据拟合带有控制/ROC 协变量和最大似然推断的二元 ROC 曲线{p_end}
{phang2}{cmd:. rocreg d y1, ctrlcov(currage male) ctrlmodel(linear)}
        {cmd:roccov(currage) cluster(id) probit ml}{p_end}
{phang2}{cmd:. local n = _N+3}{p_end}
{phang2}{cmd:. set obs `n'}{p_end}
{phang2}{cmd:. qui replace currage = 30 if _n== _N-2}{p_end}
{phang2}{cmd:. qui replace currage = 40 if _n== _N-1}{p_end}
{phang2}{cmd:. qui replace currage = 50 if _n== _N}{p_end}
{phang2}{cmd:. predict double predAUC if _n > _N-3, auc se(seAUC) ci(ciAUC)}
{p_end}
{phang2}{cmd:. list currage *AUC* if _n > _N-3}{p_end}
    {hline}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:estat nproc} 将以下数据存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(b)}}系数向量{p_end}
{synopt:{cmd:r(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:r(ci_normal)}}正态近似置信区间{p_end}
{synopt:{cmd:r(ci_percentile)}}百分位数置信区间{p_end}
{synopt:{cmd:r(ci_bc)}}偏差修正的置信区间{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rocreg_postestimation.sthlp>}