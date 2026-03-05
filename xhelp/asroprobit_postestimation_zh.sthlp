{smcl}
{* *! version 1.4.4  01apr2019}{...}
{viewerdialog predict "dialog asroprobit_p"}{...}
{viewerdialog estat "dialog asroprobit_estat"}{...}
{vieweralsosee "之前文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] asroprobit" "help asroprobit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] asmprobit" "help asmprobit_zh"}{...}
{viewerjumpto "后估计命令" "asroprobit postestimation##description"}{...}
{viewerjumpto "预测" "asroprobit postestimation##syntax_predict"}{...}
{viewerjumpto "estat" "asroprobit postestimation##syntax_estat"}{...}
{viewerjumpto "备注" "asroprobit postestimation##remarks"}{...}
{viewerjumpto "示例" "asroprobit postestimation##examples"}{...}
{viewerjumpto "存储结果" "asroprobit postestimation##results"}
{help asroprobit_postestimation:English Version}
{hline}{...}
{p2colset 1 34 35 2}{...}
{p2col:{bf:[R] asroprobit 后估计} {hline 2}}asroprobit的后估计工具{p_end}
{p2col:}({browse "http://www.stata.com/manuals15/rasroprobitpostestimation.pdf":查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}

{pstd}
{cmd:asroprobit} 已更名为 {help cmroprobit_zh}。{cmd:asroprobit} 继续有效，但自 Stata 16 起不再是 Stata 的官方部分。这是原始帮助文档，我们将不再更新，因此一些链接可能不再有效。

{pstd}
请参见 {help cmroprobit_zh} 以获取对 {cmd:asroprobit} 的推荐替代方案。


{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在 {cmd:asroprobit} 后特别有用：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb asroprobit postestimation##syntax_estat:estat alternatives}}替代方案的替代摘要统计{p_end}
{synopt :{helpb asroprobit postestimation##syntax_estat:estat covariance}}替代方案的潜变量误差的协方差矩阵{p_end}
{synopt :{helpb asroprobit postestimation##syntax_estat:estat correlation}}替代方案的潜变量误差的相关矩阵{p_end}
{synopt :{helpb asmprobit postestimation##syntax_estat:estat facweights}}协方差因子权重矩阵{p_end}
{synopt :{helpb asroprobit postestimation##syntax_estat:estat mfx}}边际效应{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含帮助 post_contrast
包含帮助 post_estatic
包含帮助 post_estatsum
包含帮助 post_estatvce
包含帮助 post_estimates
包含帮助 post_hausman
包含帮助 post_lincom
包含帮助 post_lrtest
包含帮助 post_nlcom
{synopt :{helpb asroprobit postestimation##predict:predict}}预测概率、估计线性预测及其标准误差{p_end}
包含帮助 post_predictnl
包含帮助 post_pwcompare
包含帮助 post_test
包含帮助 post_testnl
{synoptline}
{p2colreset}{...}

{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic} {opt altwise}]

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:stub}{cmd:*}{c |}{it:{help newvarlist_zh}}{c )-}
{ifin}
{cmd:,} {opt sc:ores}

{synoptset 20 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:主要}
{synopt :{opt p:r}}每个排名的概率，按案例计算；默认值{p_end}
{synopt :{opt pr1}}每个替代方案被优先选择的概率{p_end}
{synopt :{cmd:xb}}线性预测{p_end}
{synopt :{cmd:stdp}}线性预测的标准误差{p_end}
{synoptline}
{p2colreset}{...}
包含帮助 esample


包含帮助 menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含诸如概率、线性预测和标准误差的预测结果。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt pr}，默认情况下，计算每个排名的概率。
对于每个案例，计算一个排名中的概率
{hi:e(depvar)}。

{phang}
{opt pr1} 计算每个替代方案被优先选择的概率。

{phang}
{opt xb} 计算每个替代方案的线性预测。

{phang}
{opt stdp} 计算线性预测的标准误差。

{phang}
{opt altwise} 指定在因变量缺失时应使用替代方式删除观察值。默认情况下使用案例方式删除。{cmd:xb}和{cmd:stdp}选项始终使用替代方式删除。

{phang}
{opt scores} 计算每个在 {cmd:e(b)} 中的系数的分数。此选项需要新变量列表，其长度应等于
{cmd:e(b)} 中的列数。否则，使用 {it:stub}{cmd:*} 语法让 {cmd:predict} 生成以 {it:stub} 为前缀的枚举变量。


{marker syntax_estat}{...}
{marker estatalt}{...}
{title:estat 的语法}

{pstd}替代摘要统计

{p 8 16 2}
{cmd:estat}
{opt alt:ernatives}


{pstd}替代方案的潜变量误差的协方差矩阵

{p 8 16 2}
{cmd:estat}
{opt cov:ariance} [{cmd:,} {opth for:mat(%fmt)}
{opth bor:der(matlist##bspec:bspec)} 
{opt left(#)}]


{pstd}替代方案的潜变量误差的相关矩阵

{p 8 16 2}
{cmd:estat}
{opt cor:relation} [{cmd:,} {opth for:mat(%fmt)}
{opth bor:der(matlist##bspec:bspec)} 
{opt left(#)}]


{pstd}协方差因子权重矩阵

{p 8 16 2}
{cmd:estat}
{opt facw:eights} [{cmd:,} {opth for:mat(%fmt)}
{opth bor:der(matlist##bspec:bspec)} 
{opt left(#)}]


{pstd}边际效应

{p 8 16 2}
{cmd:estat}
{opt mfx}
{ifin}
[{cmd:,} {it:estat_mfx_options}]


{synoptset 20 tabbed}{...}
{synopthdr:estat_mfx_options}
{synoptline}
{syntab:主要}
{synopt : {opth var:list(varlist)}}为 {it:varlist} 显示边际效应{p_end}
{synopt : {cmd:at(}{cmd:median} [{it:{help asroprobit postestimation##atlist:atlist}}]{cmd:)}}在这些值下计算边际效应{p_end}
{synopt : {cmd:rank(}{it:{help asroprobit postestimation##ranklist:ranklist}}{cmd:)}}计算这些排名替代方案的模拟概率的边际效应{p_end}

{syntab:选项}
{synopt : {opt l:evel(#)}}设置置信区间水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt noe:sample}}不限制中位数的计算范围于估计样本{p_end}
{synopt :{opt now:ght}}在计算中位数时忽略权重{p_end}
{synoptline}
{p2colreset}{...}

包含帮助 menu_estat


{marker des_estat}{...}
{title:estat 的描述}

{pstd}
{cmd: estat alternatives} 显示估计样本中替代方案的摘要统计。该命令还提供了一个映射，描述标记模型的协方差参数的索引号及其与替代变量的相关值和标签之间的关系。

{pstd}
{cmd: estat covariance} 计算替代方案的潜变量误差的估计方差-协方差矩阵。 估计值被显示，并且方差-协方差矩阵存储在 {hi:r(cov)} 中。

{pstd}
{cmd: estat correlation} 计算替代方案的潜变量误差的估计相关矩阵。估计值被显示，并且相关矩阵存储在 {hi:r(cor)} 中。

{pstd}
{cmd: estat facweights} 显示协方差因子权重矩阵，并将其存储在 {hi:r(C)} 中。

{pstd}
{cmd: estat mfx} 计算一组排名替代方案的模拟概率的边际效应。概率存储在 {hi:r(pr)} 中，排名矩阵存储在 {hi:r(ranks)} 中，边际效应统计矩阵存储在 {hi:r(mfx)} 中。


{marker options_estat}{...}
{title:estat 的选项}

{pstd}
{cmd:estat} 的选项如下所述：

{phang2}{help asroprobit postestimation##options_estat_co:estat covariance、estat correlation 和 estat facweights 的选项}{p_end}
{phang2}{help asroprobit postestimation##options_estat_mfx:estat mfx 的选项}


{marker options_estat_co}{...}
{marker options_estat}{...}
{title:estat covariance、estat correlation 和 estat facweights 的选项}

{phang}
{opth format(%fmt)} 设置矩阵显示格式。{cmd:estat covariance} 和 {cmd:estat facweights} 的默认值为
{cmd:format(%9.0g)}；{cmd:estat correlation} 的默认值为 {cmd:format(%9.4f)}。

{phang}
{opt border(bspec)} 设置矩阵显示边框样式。默认值为
{cmd:border(all)}。请参见 {manhelp matlist P}。

{phang}
{opt left(#)} 设置矩阵显示的左缩进。默认值为
{cmd:left(2)}。请参见 {manhelp matlist P}。


{marker options_estat_mfx}{...}
{title:estat mfx 的选项}

{dlgtab:主要}

{phang}
{opth varlist(varlist)} 指定要显示边际效应的变量。默认是所有变量。

{marker atlist}{...}
{* 虽然代码允许你输入 at(median)、}{...}
{* at(median atlist)，或者只输入 at(atlist)；我们正在文档化}{...}
{* 使你必须将中位数与 atlist 一起输入}{...}
{phang}
{cmd:at(}{cmd:median} [{it:atlist}]{cmd:)} 指定计算边际效应的值。
{it:atlist} 是

{pmore2}
[[{it:alternative}{cmd::}{it:variable} {cmd:=} {it:#}] [{it:variable} {cmd:=} {it:#}] [...]]{cmd:)} 

{pmore}
边际效应是在自变量的中位数进行计算的。

{pmore}
在指定摘要统计后，可以指定变量的特定值。可以按替代方案指定替代特定变量的值，或者可以为所有替代方案指定一个值。只能为案例特定变量指定一个值。例如，在 {cmd:wlsrank} 数据集中，{cmd:female} 和 {cmd:score} 是案例特定变量，而 {cmd:high} 和 {cmd:low} 是替代特定变量。以下是 {cmd:estat mfx} 的合法语法：

{p 12 16 2}{cmd:. estat mfx, at(median high=0 esteem:high=1 low=0 security:low=1 female=1)}{p_end}

{pmore}
{cmd:at(median} [{it:atlist}]{cmd:)} 对于因子变量的边际效应计算没有影响，因子变量的边际效应计算为因子变量从基准水平变化到在选项 {cmd:at()} 中指定的水平时的概率的离散变化。如果在 {cmd:at()} 选项中未指定因子水平，则使用第一个不是基准的水平。

{pmore}
中位数计算遵循任何 {cmd:if} 或 {cmd:in} 限定词，因此可以限制计算中位数的数据。您甚至可以将值限制为特定案例，例如，

{p 12 16 2}{cmd:. estat mfx if case==13}{p_end}

{marker ranklist}{...}
{phang}
{opt rank(ranklist)} 指定替代方案的排名。{it:ranklist} 是

{pmore2}
{it:alternative} {cmd:=} {it:#} {it:alternative} {cmd:=} {it:#} [...]

{pmore}
默认情况下，按计算出的潜变量进行排名。Excluded from {cmd:rank()} 的替代方案将被排除在分析之外。因此，您必须在 {cmd:rank()} 中指定至少两个替代方案。您可以在排名规范中有平局排名。只有排名顺序是相关的。

{dlgtab:选项}

{phang}
{opt level(#)} 指定置信水平，作为置信区间的百分比。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置的值。

{phang}
{opt noesample} 指定考虑整个数据集，而不仅仅考虑在 {cmd:e(sample)} 中标记的部分，该部分由 {cmd:asroprobit} 命令定义。

{phang}
{opt nowght} 指定在计算中位数时忽略权重。


{marker remarks}{...}
{title:备注}

{pstd}
对于在替代特定和案例特定变量列表中均指定的变量，无法计算模拟概率的边际效应。计算假定这两个变量列表是互斥的。例如，如果您的模型中有自变量是替代特定变量与案例特定变量的交互（在 {helpb asroprobit##syntax:asroprobit} 中指定的 {it:indepvars}）以及案例特定变量（在{helpb asroprobit##syntax:casevars()} 选项中指定的 {it:varlist}），则 {cmd:estat mfx} 会以错误消息退出。如果在 {cmd:estat mfx} 的 {cmd:varlist()} 选项中指定一个不包含用于替代特定和案例特定变量列表中的变量的变量列表，则可以继续进行边际效应的计算。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse travel}{p_end}

{pstd}拟合替代特定的排名有序 probit 模型{p_end}
{phang2}{cmd:. asroprobit choice travelcost termtime, case(id)}
        {cmd:alternatives(mode) casevars(income)}{p_end}

{pstd}获取替代方案的相关矩阵{p_end}
{phang2}{cmd:. estat correlation}{p_end}

{pstd}获取替代方案的方差-协方差矩阵{p_end}
{phang2}{cmd:. estat covariance}{p_end}

{pstd}计算所选替代方案的概率{p_end}
{phang2}{cmd:. predict p}{p_end}

{pstd}计算案例特定变量 {cmd:income} 和替代特定变量 {cmd:termtime} 和 {cmd:travelcost} 的边际效应{p_end}
{phang2}{cmd:. estat mfx, at(air: termtime=50 travelcost=100 income=60)}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse travel, clear}{p_end}

{pstd}拟合替代特定的排名有序 probit 模型{p_end}
{phang2}{cmd:. asroprobit choice travelcost termtime, case(id)}
            {cmd:alternatives(mode) casevars(income)}{p_end}

{pstd}存储估计结果{p_end}
{phang2}{cmd:. estimates store unstructured}{p_end}

{pstd}拟合第二个替代特定的排名有序 probit 模型{p_end}
{phang2}{cmd:. asroprobit choice travelcost termtime, case(id)}
            {cmd:alternatives(mode) casevars(income)} 
            {cmd:correlation(independent)}{p_end}

{pstd}执行似然比检验以比较模型{p_end}
{phang2}{cmd:. lrtest unstructured}{p_end}
    {hline}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat mfx} 将以下内容存储在 {opt r()} 中：

{pstd}标量

{phang2}
{cmd:r(pr)} 存储计算出的替代方案的排名概率的标量。

{pstd}矩阵

{phang2}
{cmd:r(ranks)} 列向量，包含替代方案的排名。行名称标识替代方案。

{phang2}
{cmd:r(mfx)} 矩阵，包含计算出的边际效应和相关统计数据。矩阵的第 1 列包含边际效应；第 2 列包含它们的标准误；第 3 列包含它们的 z 统计量；第 4 列和第 5 列包含置信区间。第 6 列包含用于计算概率 {cmd:r(pr)} 的自变量的值。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <asroprobit_postestimation.sthlp>}