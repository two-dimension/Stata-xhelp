{smcl}
{* *! version 1.3.3  01apr2019}{...}
{viewerdialog predict "dialog asclogit_p"}{...}
{viewerdialog estat "dialog asclogit_estat"}{...}
{vieweralsosee "之前的文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] asclogit" "help asclogit_zh"}{...}
{viewerjumpto "后续估计命令" "asclogit postestimation##description"}{...}
{viewerjumpto "预测" "asclogit postestimation##syntax_predict"}{...}
{viewerjumpto "estat" "asclogit postestimation##syntax_estat"}{...}
{viewerjumpto "备注" "asclogit postestimation##remarks"}{...}
{viewerjumpto "示例" "asclogit postestimation##examples"}{...}
{viewerjumpto "存储结果" "asclogit postestimation##results"}
{help asclogit_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[R] asclogit postestimation} {hline 2}}asclogit 的后续估计工具{p_end}
{p2col:}({browse "http://www.stata.com/manuals15/rasclogitpostestimation.pdf":查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}

{pstd}
{cmd:asclogit} 继续有效，但自 Stata 16 起，它不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{pstd}
有关 {cmd:asclogit} 的推荐替代方案，请参见 {help cmclogit_zh}。

{marker description}{...}
{title:后续估计命令}

{pstd}
以下后续估计命令在 {cmd:asclogit} 后特别重要：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb asclogit postestimation##estatalt:estat alternatives}}替代
	摘要统计{p_end}
{synopt :{helpb asclogit postestimation##estatmfx:estat mfx}}边际
	效应{p_end}{synoptline}
{p2colreset}{...}

{pstd}
以下标准后续估计命令也可用：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_lrtest
INCLUDE help post_nlcom
{synopt :{helpb asclogit postestimation##predict:predict}}预测
	概率、估计线性预测及其标准误差{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}

{marker syntax_predict}{...}
{marker predict}{...}
{title:预测语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic} {it:options}]

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:stub}{cmd:*}{c |}{it:{help newvarlist_zh}}{c )-}
{ifin}
{cmd:,} {opt sc:ores}

{synoptset 15 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主要}
{synopt :{opt p:r}}每个替代方案被选择的概率；默认值为
{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synoptline}

{synopthdr:options}
{synoptline}
{syntab:主要}
{p2coldent :* {cmd:k(}{it:#}|{cmd:observed)}}条件为 {it:#} 
	每个案例的替代方案数量或观察到的替代方案数量{p_end}
{synopt :{opt altwise}}在计算概率时采用替代方案删除而非案例删除{p_end}
{synopt :{opt nooff:set}}忽略在 {cmd:asclogit} 中指定的 {cmd:offset()} 变量{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
*{cmd:k(}{it:#}|{cmd:observed)} 仅可与 {opt pr} 一起使用。{p_end}
INCLUDE help esample

INCLUDE help menu_predict

{marker des_predict}{...}
{title:预测描述}

{pstd}
{cmd:predict} 创建一个新变量，包含诸如概率、线性预测和标准误差的预测。

{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{opt pr} 计算考虑到选择 {opt k()} 个替代方案时每个替代方案被选择的概率。这是默认统计，默认值为 {cmd:k(1)}；每个案例选择一个替代方案。

{phang} 
{opt xb} 计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误差。

{phang}
{cmd:k(}{it:#}|{cmd:observed)} 将概率条件化为每个案例 {it:#} 个替代方案或观察到的替代方案数量。默认值为 {cmd:k(1)}。此选项仅可与 {cmd:pr} 选项一起使用。

{phang}
{opt altwise} 指定在标记由于变量缺失而被剔除的观察值时采用替代方案删除。默认采用案例删除。{cmd:xb} 和 {cmd:stdp} 选项始终采用替代方案删除。

{phang}
{opt nooffset} 仅在您为 {cmd:asclogit} 指定了 {cmd:offset({varname})} 时相关。它修改 {cmd:predict} 的计算方式，使其忽略偏移变量；线性预测被视为 {cmd:xb} 而不是 {cmd:xb} + {cmd:offset}。

{phang}
{opt scores} 计算 {cmd:e(b)} 中每个系数的得分。此选项需要一个新变量列表，其长度等于 {cmd:e(b)} 中的列数。否则，使用 {it:stub}{cmd:*} 语法使 {cmd:predict} 生成前缀为 {it:stub} 的枚举变量。

{marker syntax_estat}{...}
{marker estatalt}{marker estatmfx}{...}
{title:estat 语法}

{pstd}替代摘要统计

{p 8 16 2}
{cmd:estat}
{opt alt:ernatives}

{pstd}边际效应

{p 8 16 2}
{cmd:estat}
{opt mfx}
{ifin}
[{cmd:,} {it:options}]

{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}

{synopt : {opth var:list(varlist)}}显示 {it:varlist} 的边际效应{p_end}
{synopt : {cmd:at(mean} [{it:{help asclogit postestimation##atlist:atlist}}]|{cmd:median} [{it:{help asclogit postestimation##atlist:atlist}}]{cmd:)}}在这些值处计算边际效应{p_end}
{synopt : {opt k(#)}}以选择的替代方案数量 {it:#} 条件化

{syntab:选项}
{synopt : {opt l:evel(#)}}设置置信区间水平；默认值为 
	{cmd:level(95)}{p_end}
{synopt :{opt noe:sample}}不限制均值和中位数的计算到估计样本{p_end}
{synopt :{opt now:ght}}在计算均值和中位数时忽略权重{p_end}
{synoptline}
{p2colreset}{...}

{marker menu_estat}{...}
INCLUDE help menu_estat

{marker des_estat}{...}
{title:estat 描述}

{pstd}
{cmd: estat alternatives} 显示关于估计样本中替代方案的摘要统计。

{pstd}
{cmd: estat mfx} 计算概率边际效应。

{marker options_estat_mfx}{...}
{title:estat mfx 的选项}

{dlgtab:主要}

{phang}
{opth varlist(varlist)} 指定要显示边际效应的变量。默认情况下为所有变量。

{* 尽管代码是这样的，你可以输入 at(mean)， at(mean atlist)，}{...}
{* at(median)， at(median atlist)，或者仅输入 at(atlist)；我们记录}{...}
{* 的方式是你必须在 atlist 中输入 mean 或 median}{...}
{marker atlist}{...}
{phang}
{cmd:at(}{cmd:mean} [{it:atlist}]|{cmd:median} [{it:atlist}]{cmd:)} 指定计算边际效应的值。{it:atlist} 是 

{pmore2}
[[{it:alternative}{cmd::}{it:variable} {cmd:=} {it:#}] [{it:variable} {cmd:=} {it:#}] [{it:alternative}{cmd::}{it:offset} {cmd:=} {it:#}] [...]]

{pmore}
默认情况下，使用估计样本的自变量均值计算边际效应，即 {cmd:at(mean)}。如果在估计过程中使用了 {cmd:offset()}，则默认计算各替代方案的偏移均值。

{pmore}
在指定摘要统计后，您可以为变量指定一系列特定值。您可以按替代方案为替代特定变量指定值，或为所有替代方案指定一个值。您可以仅为案例特定变量指定一个值。您为（如果存在）{cmd:offset()} 变量指定值的方式与为替代特定变量指定值的方式相同。举例来说，在 {cmd:choice} 数据集（汽车选择）中，{cmd:income} 是案例特定变量，而 {cmd:dealer} 是替代特定变量。以下是 {cmd:estat mfx} 的合法语法：

{p 12 16 2}{cmd:. estat mfx, at(mean American:dealer=18 income=40)}{p_end}

{pmore}
{cmd:at(mean} [{it:atlist}]{cmd:)} 或
{cmd:at(median} [{it:atlist}]{cmd:)} 对于因子变量的边际效应计算没有影响，因其是计算因子变量从基准水平变化到指定在选项 {bf:at()} 中水平的概率离散变化。如果在 {bf:at()} 选项中未指定因子水平，则使用第一个非基准水平。

{pmore}
均值和中位数计算遵循任何 {cmd:if} 或 {cmd:in} 限定词，因此您可以限制计算统计数据的数据。您甚至可以将值限制为特定案例，例如， 

{p 12 16 2}{cmd:. estat mfx if case==21}{p_end}

{phang}
{opt k(#)} 计算条件为 {it:#} 选择的替代方案的概率。默认为选择一个替代方案。

{dlgtab:选项}

{phang}
{opt level(#)} 设置置信水平；默认为 {cmd:level(95)}。

{phang}
{opt noesample} 指定考虑整个数据集，而非仅指在 {cmd:e(sample)} 中标记的案例，该标记由 {cmd:asclogit} 命令定义。

{phang}
{opt nowght} 指定在计算中位数时忽略权重。

{marker remarks}{...}
{title:备注}

{pstd}
对于同时在替代特定和案例特定变量列表中指定的变量，无法计算概率边际效应。计算假设这两个变量列表是互斥的。例如，如果您的模型有独立变量是替代特定变量（在 {helpb asclogit##syntax:asclogit} 中指定的 {it:indepvars}）和案例特定变量（在 {helpb asclogit##syntax:casevars()} 选项中指定的 {it:varlist}）的交互，{cmd:estat mfx} 将以错误消息退出。如果在 {cmd:estat mfx} 的 {cmd:varlist()} 选项中指定的变量列表中不包括在替代特定和案例特定变量列表中使用的变量，则可以继续计算边际效应。

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse choice}{p_end}

{pstd}拟合替代特定的逻辑回归模型{p_end}
{phang2}{cmd:. asclogit choice dealer, case(id) alternatives(car)}
           {cmd:casevars(sex income)}{p_end}

{pstd}预测每个替代方案被选择的概率{p_end}
{phang2}{cmd:. predict p if e(sample)}{p_end}

{pstd}预测每个替代方案被选择的概率，条件为每个案例选择两个替代方案{p_end}
{phang2}{cmd:. predict p2, k(2)}{p_end}

{pstd}获取关于替代方案的摘要统计{p_end}
{phang2}{cmd:. estat alt}{p_end}

{pstd}假定每个人为女性，并且每个城市有一个不同国籍的经销商，获得边际效应{p_end}
{phang2}{cmd:. estat mfx, varlist(sex income) at(sex=0 dealer=1)}{p_end}

{marker results}{...}
{title:存储结果}

{phang}
{cmd:estat mfx} 将以下内容存储在 {opt r()} 中：

{phang}
{cmd: r(pr_}{it:alt}{opt )} 包含在表格输出中标记为 X 的值下计算的每个替代方案的概率的标量。这里 {it:alt} 是宏 {cmd:e(alteqs)} 中的标签。

{phang}
{cmd: r(}{it:alt}{opt )} 包含计算的边际效应及相关统计量的矩阵。每个替代方案都有一个矩阵，其中 {it:alt} 是宏 {cmd:e(alteqs)} 中的标签。每个矩阵的第 1 列包含边际效应；第 2 列，其标准误差；第 3 列，其 z 统计量；第 4 列和第 5 列，置信区间。第 6 列包含用于计算概率 {cmd:r(pr_}{it:alt}{opt )} 的自变量的值。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <asclogit_postestimation.sthlp>}