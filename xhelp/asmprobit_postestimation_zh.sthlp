{smcl}
{* *! version 2.4.3  01apr2019}{...}
{viewerdialog predict "dialog asmprobit_p"}{...}
{viewerdialog estat "dialog asmprobit_estat"}{...}
{vieweralsosee "之前文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] asmprobit" "help asmprobit_zh"}{...}
{viewerjumpto "后估计命令" "asmprobit postestimation##description"}{...}
{viewerjumpto "预测" "asmprobit postestimation##syntax_predict"}{...}
{viewerjumpto "estat" "asmprobit postestimation##syntax_estat"}{...}
{viewerjumpto "备注" "asmprobit postestimation##remarks"}{...}
{viewerjumpto "示例" "asmprobit postestimation##examples"}{...}
{viewerjumpto "存储结果" "asmprobit postestimation##results"}
{help asmprobit_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[R] asmprobit 后估计} {hline 2}}asmprobit 的后估计工具{p_end}
{p2col:}({browse "http://www.stata.com/manuals15/rasmprobitpostestimation.pdf":查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{pstd}
{cmd:asmprobit} 依然可用，但自 Stata 16 起不再是 Stata 的官方部分。这是原始的帮助文件，我们将不再更新，因此某些链接可能不再有效。

{pstd}
有关 {cmd:asmprobit} 的推荐替代方案，请参见 {help cmmprobit_zh}。

{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:asmprobit} 之后，以下后估计命令特别重要：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb asmprobit postestimation##estatalt:estat alternatives}}替代性摘要统计{p_end}
{synopt :{helpb asmprobit postestimation##estatcov:estat covariance}}替代方案的潜变量误差的协方差矩阵{p_end}
{synopt :{helpb asmprobit postestimation##estatcor:estat correlation}}替代方案的潜变量误差的相关矩阵{p_end}
{synopt :{helpb asmprobit postestimation##estatfac:estat facweights}}协方差因子权重矩阵{p_end}
{synopt :{helpb asmprobit postestimation##estatmfx:estat mfx}}边际效应{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 帮助 post_contrast
包含 帮助 post_estatic
包含 帮助 post_estatsum
包含 帮助 post_estatvce
包含 帮助 post_estimates
包含 帮助 post_hausman
包含 帮助 post_lincom
包含 帮助 post_lrtest
包含 帮助 post_nlcom
{synopt :{helpb asmprobit postestimation##predict:predict}}预测概率、估计线性预测及其标准误差{p_end}
包含 帮助 post_predictnl
包含 帮助 post_pwcompare
包含 帮助 post_test
包含 帮助 post_testnl
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

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:主}
{synopt :{opt p:r}}选择替代品的概率；默认值{p_end}
{synopt :{cmd:xb}}线性预测{p_end}
{synopt :{cmd:stdp}}线性预测的标准误差{p_end}
{synoptline}
{p2colreset}{...}
包含 帮助 esample

包含 帮助 menu_predict

{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测的新的变量，例如概率、线性预测和标准误差。

{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt pr}（默认）计算替代 {it:j} 在案例 {it:i} 被选择的概率。

{phang}
{opt xb} 计算替代 {it:j} 和案例 {it:i} 的线性预测。

{phang}
{opt stdp} 计算线性预测的标准误差。

{phang}
{opt altwise} 指定在由于变量缺失而标记出观察值时使用逐替代删除。默认是使用逐案例删除。{cmd:xb} 和 {cmd:stdp} 选项始终使用逐替代删除。

{phang}
{opt scores} 计算 {cmd:e(b)} 中每个系数的评分。此选项需要一个新变量列表，其长度等于 {cmd:e(b)} 中的列数。否则，使用 {it:stub}{cmd:*} 语法让 {cmd:predict} 生成以 {it:stub} 为前缀的枚举变量。

{marker syntax_estat}{...}
{marker estatalt}{marker estatcov}{marker estatcor}{...}
{marker estatfac}{marker estatmfx}{...}
{title:estat 的语法}

{pstd}
替代性摘要统计

{p 8 16 2}
{cmd:estat}
{opt alt:ernatives}

{pstd}
替代方案的潜变量误差的协方差矩阵

{p 8 16 2}
{cmd:estat}
{opt cov:ariance} [{cmd:,} {opth for:mat(%fmt)}
{opth bor:der(matlist##bspec:bspec)} 
{opt left(#)}]

{pstd}
替代方案的潜变量误差的相关矩阵

{p 8 16 2}
{cmd:estat}
{opt cor:relation} [{cmd:,} {opth for:mat(%fmt)}
{opth bor:der(matlist##bspec:bspec)} 
{opt left(#)}]

{pstd}
协方差因子权重矩阵

{p 8 16 2}
{cmd:estat}
{opt facw:eights} [{cmd:,} {opth for:mat(%fmt)}
{opth bor:der(matlist##bspec:bspec)} 
{opt left(#)}]

{pstd}
边际效应

{p 8 16 2}
{cmd:estat}
{opt mfx}
{ifin}
[{cmd:,} {it:estat_mfx_options}]

{synoptset 35 tabbed}{...}
{synopthdr:estat_mfx_options}
{synoptline}
{syntab:主}

{synopt : {opth var:list(varlist)}}显示 {it:varlist} 的边际效应{p_end}
{synopt : {cmd:at(mean} [{it:{help asmprobit postestimation##atlist:atlist}}]|{cmd:median} [{it:{help asmprobit postestimation##atlist:atlist}}]{cmd:)}}在这些值下计算边际效应{p_end}

{syntab:选项}
{synopt : {opt l:evel(#)}}设置置信区间水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt noe:sample}}不要限制均值和中值的计算在估计样本{p_end}
{synopt :{opt now:ght}}在计算均值和中值时忽略权重{p_end}
{synoptline}
{p2colreset}{...}

包含 帮助 menu_estat

{marker des_estat}{...}
{title:estat 的描述}

{pstd}
{cmd: estat alternatives} 显示估计样本中替代方案的摘要统计，并提供模型协方差参数的索引编号与其相关值和替代变量标签之间的映射。

{pstd}
{cmd: estat covariance} 计算替代方案的潜变量误差的估计方差-协方差矩阵。估计值将被显示，方差-协方差矩阵会存储在 {hi:r(cov)} 中。

{pstd}
{cmd: estat correlation} 计算替代方案的潜变量误差的估计相关矩阵。估计值将被显示，相关矩阵会存储在 {hi:r(cor)} 中。

{pstd}
{cmd: estat facweights} 显示协方差因子权重矩阵并将其存储在 {hi:r(C)} 中。

{pstd}
{cmd: estat mfx} 计算模拟的概率边际效应。

{marker options_estat}{...}
{title:estat 的选项}

{pstd}
{cmd:estat} 的选项分为以下几个标题：

{phang2}{help asmprobit postestimation##options_estat_co:estat 协方差、estat 相关和 estat facweights 的选项}{p_end}
{phang2}{help asmprobit postestimation##options_estat_mfx:estat mfx 的选项}

{marker options_estat_co}{...}
{title:estat 协方差、estat 相关和 estat facweights 的选项}

{phang}
{opth format(%fmt)} 设置矩阵显示格式。{cmd:estat covariance} 和 {cmd:estat facweights} 的默认值为 {cmd:format(%9.0f)}；{cmd:estat correlation} 的默认值为 {cmd:format(%9.4f)}。

{phang}
{opt border(bspec)} 设置矩阵显示边框样式。默认为 {cmd:border(all)}。请参见 {manhelp matlist P}。

{phang}
{opt left(#)} 设置矩阵显示的左缩进。默认为 {cmd:left(2)}。请参见 {manhelp matlist P}。

{marker options_estat_mfx}{...}
{title:estat mfx 的选项}

{dlgtab:主}

{phang}
{opth varlist(varlist)} 指定要显示边际效应的变量。默认是所有变量。

{marker atlist}{...}
{* 虽然代码是这样的，你可以输入 at(mean)、at(mean atlist)、}{...}
{* at(median)、at(median atlist) 或者直接输入 at(atlist)；我们记录}{...}
{* 是这样的，你必须必须在 atlist 后输入 mean 或 median}{...}
{phang}
{cmd:at(}{cmd:mean} [{it:atlist}]|{cmd:median} [{it:atlist}]{cmd:)} 指定要计算边际效应的值。{it:atlist} 是

{pmore2}
[[{it:alternative}{cmd::}{it:variable} {cmd:=} {it:#}] [{it:variable} {cmd:=} {it:#}] [...]]

{pmore}
默认情况是在估计样本的自变量均值处计算边际效应，即 {cmd:at(mean)}。

{pmore}
在指定摘要统计之后，您可以为变量指定一系列特定值。您可以按替代指定替代特定变量的值，或者可以为所有替代指定一个值。对于案例特定变量只能指定一个值。例如，在 {cmd:travel} 数据集中，{cmd:income} 是案例特定变量，而 {cmd:termtime} 和 {cmd:travelcost} 是替代特定变量。以下是 {cmd:estat mfx} 的合法语法：

{p 12 16 2}{cmd:. estat mfx, at(mean air:termtime=50 travelcost=100 income=60)}{p_end}

{pmore}
{cmd:at(mean} [{it:atlist}{cmd:])} 或
{cmd:at(median} [{it:atlist}]{cmd:)} 对于因子变量在计算边际效应时没有效果，因子变量的计算为因子变量从基准水平变化到在选项 {cmd:at()} 中指定的水平时概率的离散变化。如果在 {cmd:at()} 选项中未指定因子水平，则使用第一个非基准的水平。

{pmore}
均值和中值计算尊重任何 {cmd:if} 或 {cmd:in} 限定符，因此您可以限制用于计算均值或中值的数据。您甚至可以限制到特定案例；例如，

{p 12 16 2}{cmd:. estat mfx if case==21}{p_end}

{dlgtab:选项}

{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。默认值为 {cmd:level(95)} 或 {helpb set level} 设置的值。

{phang}
{opt noesample} 指定考虑整个数据集，而不仅仅是 {cmd:e(sample)} 中标记的数据，这一数据的定义由 {cmd:asmprobit} 命令确定。

{phang}
{opt nowght} 指定在计算均值或中值时忽略权重。

{marker remarks}{...}
{title:备注}

{pstd}
不能为在替代特定变量和案例特定变量列表中均指定的变量计算模拟的概率边际效应。计算假定这两个变量列表是互斥的。例如，如果您的模型中包含替代特定变量（在 {helpb asmprobit##syntax:asmprobit} 中指定的 {it:indepvars}）和案例特定变量（在 {helpb asmprobit##syntax:casevars()} 选项中指定的 {it:varlist}）之间的交互，则 {cmd:estat mfx} 将退出并显示错误消息。如果您在 {cmd:estat mfx} 的 {cmd:varlist()} 选项中指定不包含在替代特定和案例特定变量列表中的变量，则可以继续进行边际效应计算。

{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse travel}{p_end}
{phang2}{cmd:. asmprobit choice travelcost termtime, case(id)}
        {cmd:alternatives(mode) casevars(income)}{p_end}

{pstd}获取替代方案的相关矩阵{p_end}
{phang2}{cmd:. estat correlation}{p_end}

{pstd}获取替代方案的方差-协方差矩阵{p_end}
{phang2}{cmd:. estat covariance}{p_end}

{pstd}计算选择替代品的概率{p_end}
{phang2}{cmd:. predict p}{p_end}

{pstd}为案例特定变量 {cmd:income} 和替代特定变量 {cmd:termtime} 及 {cmd:travelcost} 计算边际效应{p_end}
{phang2}{cmd:. estat mfx, at(air: termtime=50 travelcost=100 income=60)}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse travel, clear}{p_end}
{phang2}{cmd:. asmprobit choice travelcost termtime, case(id)}
          {cmd:alternatives(mode) casevars(income)}{p_end}
{phang2}{cmd:. estimates store full}{p_end}
{phang2}{cmd:. asmprobit choice travelcost termtime, case(id)}
          {cmd:alternatives(mode) casevars(income)}
          {cmd:correlation(exchangeable)}{p_end}

{pstd}进行似然比检验以比较模型{p_end}
{phang2}{cmd:. lrtest full .}{p_end}
    {hline}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat mfx} 将以下信息存储在 {opt r()} 中：

{pstd}标量

{phang2}
{cmd: r(pr_}{it:alt}{opt )} 标量，包含在表格输出中标记 X 时计算的每个替代品的概率。这里 {it:alt} 是宏 {cmd:e(alteqs)} 中的标签。

{pstd}矩阵

{phang2}
{cmd: r(}{it:alt}{opt )} 矩阵，包含计算的边际效应及其相关统计数据。每个替代品都有一个矩阵，{it:alt} 是宏 {cmd:e(alteqs)} 中的标签。每个矩阵的第 1 列包含边际效应；第 2 列包含它们的标准误差；第 3 和第 4 列包含它们的 z 统计量及其 p 值；第 5 和第 6 列为置信区间。第 7 列包含用于计算概率的自变量的值 {cmd:r(pr_}{it:alt}{opt )}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <asmprobit_postestimation.sthlp>}