
{smcl}
{* *! version 1.2.1  15jun2012}{...}
{cmd:help adjust} {right:dialog:  {dialog adjust}}
{hline}
{help adjust:English Version}
{hline}
{pstd}
{cmd:adjust} 已被 {cmd:margins} 所取代。除了 {cmd:adjust} 的 {opt generate()} 和 {opt stdf} 选项外，{cmd:margins} 命令可以做 {cmd:adjust} 所做的一切及更多。 {cmd:margins} 的语法与 {cmd:adjust} 不同；参见 {help margins_zh}。 {cmd:adjust} 继续有效，但不支持因子变量，如果您没有在 {help version_zh:version control} 下运行估计命令（版本设置小于 11），它通常会失败。此帮助文件仍然存在以帮助那些在旧的 do 文件和程序中遇到 {cmd:adjust} 命令的用户。

{title:标题}

{p2colset 5 19 21 2}{...}
{p2col :{bf:[R] adjust} {hline 2}}调整均值和比例的表格{p_end}
{p2colreset}{...}

{title:语法}

{p 8 15 2} 
{cmd:adjust} 
[{it:var}[{opt =} {it:#}] {it:...}] 
{ifin}
[{cmd:,} {it:options}]

{p2colset 5 36 38 2}{...}
{p2col :{it:options}}描述{p_end}
{p2line}
{p2col 3 36 38 2:主要}{p_end}
{p2col :{opth by(varlist)}}计算并显示每个变量级别的预测{p_end}

{p2col 3 36 38 2:选项}{p_end}
{p2col :{opt xb}}线性预测；默认{p_end}
{p2col :{opt p:r}}预测概率{p_end}
{p2col :{opt exp}}指数线性预测{p_end}
{p2col :{opt se}}显示预测的标准误差；默认不显示{p_end}
{p2col :{opt stdf}}显示预测的标准误差；默认不显示{p_end}
{p2col :{opt ci}}显示置信区间或预测区间{p_end}
{p2col :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{p2col :{opt vert:ical}}堆叠置信区间{p_end}
{p2col :{opt eq:uation(eqno)}}在多方程系统中使用 {it:eqno} 方程{p_end}
{p2col :{opt nooff:set}}在进行预测时忽略 {opt offset} 或 {opt exposure} 变量（如果有）{p_end}
{p2col :{opth g:enerate(newvar:newvar1 [newvar2])}}生成预测变量，误差变量{p_end}

{p2col 3 36 38 2:更多选项}{p_end}
{p2col :{opt replace}}用包含每个单元一个观测值的表格替换内存中的数据{p_end}
{p2col :{opt lab:el(text)}}预测标签{p_end}
{p2col :{opt selab:el(text)}}误差项标签{p_end}
{p2col :{opt cilab:el(text)}}置信区间标签{p_end}
{p2col :{opth f:ormat(%fmt)}}表格中数字的显示格式{p_end}
{p2col :{opt nokey}}抑制表格键{p_end}
{p2col :{opt nohead:er}}抑制表格头部{p_end}
{p2col :{opt cen:ter}}将单元格中的数字居中；默认是右对齐{p_end}
{p2col :{opt l:eft}}将列标签左对齐；默认是右对齐{p_end}
{p2col :{opt cellw:idth(#)}}单元格宽度{p_end}
{p2col :{opt csep:width(#)}}列间隔{p_end}
{p2col :{opt scsep:width(#)}}超级列间隔{p_end}
{p2col :{opt stubw:idth(#)}}左侧存根宽度{p_end}
{p2line}
{p2colreset}{...}

{title:菜单}

{phang}
{bf:统计 > 后估计 > 调整均值和比例}

{title:描述}

{pstd}
在估计命令后（参见 {manhelp estimation_commands I:估计命令}），{cmd:adjust} 提供 xb 的调整预测（在线性回归设置中为均值）、概率（在某些估计命令后提供）或指数线性预测。对于 {opt by()} 变量的每个级别计算估计值，如果指定了 [{it:var}[{opt =} {it:#}] {it:...}] 中的 {opt =} {it:#} 部分，则设置所指定变量的均值或指定值。如果未指定 {opt by()}，{cmd:adjust} 将结果处理为 {opt by()} 定义一个组。用于估计命令的变量但未包含在 {opt by()} 变量列表或 {cmd:adjust} 变量列表中的变量将逐个观测保持其当前值。在这里，{cmd:adjust} 显示平均估计预测（或相应概率或指数预测），在 {opt by()} 选项中定义的每组内替换这些未指定变量的均值。

{title:选项}

{dlgtab:主要}

{phang}
{opth by(varlist)} 指定决定数据子集的变量级别，以便计算调整预测。 {opt by()} 中的变量不必在原始估计命令中涉及。最多可以在 {opt by()} 选项中指定七个变量。如果未指定 {opt by()}，则结果将处理所有数据作为一个组。

{dlgtab:选项}

{phang}
{opt xb}，默认，指定应显示来自估计命令的线性预测。 这会产生一个预测值（线性回归设置中的均值），并等同于 {help predict_zh} 的 {opt xb} 选项。根据估计命令，{opt xb} 值可能不在因变量的原始单位中。

{phang}
{opt pr} 是 {opt xb} 的替代选项，指定应显示预测概率。并非在所有命令后都可使用 {opt pr} 选项。

{phang}
{opt exp} 是 {opt xb} 的替代选项，指定应显示指数线性预测 exp(xb)。根据估计命令，结果数量可能被称为“发生率”，或“风险比”等等。

{phang}
{opt se} 指定应显示线性预测的标准误差。这等同于 {help predict_zh} 的 {opt stdp} 选项。

{phang}
{opt stdf} 指定应显示线性预测的预测标准误差。这等同于 {help predict_zh} 的 {opt stdf} 选项，仅在支持 {opt stdf predict} 选项的估计命令之后可用。

{phang}
{opt ci} 指定应显示置信区间。该置信区间适用于由 {opt xb}、{opt pr} 或 {opt exp} 选项确定的显示估计值 -- 产生调整线性预测、概率或指数线性预测的区间。当指定 {opt stdf} 时，会产生预测区间，定义上该区间比相应的置信区间要宽。

{phang}
{opt level(#)} 指定置信或预测区间的置信水平，百分比形式。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置。

{phang}
{opt vertical} 请求将置信或预测区间的端点在显示中垂直堆叠。您必须在 {cmd:by()} 选项中指定超过两个变量，以获得 {cmd:vertical} 结果。

{phang}
{opt equation(eqno)} 指定在多方程系统中用于 {cmd:adjust} 命令的方程。此选项仅在多方程估计命令之后允许。

{phang}
{opt nooffset} 仅在您在拟合模型时指定了 {opt offset(varname)} 或 {opt exposure(varname)} 时相关。它修改 {cmd:adjust} 所做的计算，以使其忽略偏移或暴露变量。

{opth "generate(newvar:newvar1 [newvar2])"} 生成一个或两个新变量。如果指定一个变量，则为每个观测生成调整线性预测，存放在 {it:newvar1} 中（将适当变量保持在其均值或其他指定值）。如果指定了 {opt pr}，调整的线性预测将转换为概率。如果指定了 {opt exp}，则返回指数预测。如果指定了 {it:newvar2}，则将标准误差放置在第二个变量中，该标准误差来自 {opt se} 选项或 {opt stdf} 选项。

{dlgtab:更多选项}

{phang}
{opt replace} 指定内存中的数据被替换为包含每个单元一个观测值的 data，这些观测值对应于 {cmd:adjust} 命令生成的表格。

{phang}
{opt label(text)}、{opt selabel(text)} 和 {opt cilabel(text)} 允许您更改显示预测（来自 {opt xb}、{opt pr} 或 {opt exp} 选项）、误差项（来自 {opt se} 或 {opt stdf} 选项）及置信区间（来自 {opt ci} 选项）的标签。 {opt label()} 和 {opt selabel()} 还会更改由 {opt generate()} 选项创建的变量的变量标签。

{phang}
{opth format(%fmt)} 指定在表中呈现数字的显示格式；参见 {findalias frformats}。 {cmd:format(%8.0g)} 是默认值。标准误差和置信区间经过自动格式化，以括号或方括号的方式输出。

{phang}
{opt nokey} 和 {opt noheader} 抑制表格键和头部信息的显示。

{phang}
{opt center} 指定结果在表格单元中居中显示。默认是右对齐结果。为了使居中效果良好，还应指定显示格式，例如 {cmd:format(%9.2f)}。

{phang}
{opt left} 指定列标签左对齐。默认是右对齐，以将它们与左对齐的超级列标签区分开。

{phang}
{opt cellwidth(#)} 指定单元格的宽度，单位为数字宽度；10 表示占用 10 个数字的空间，即 0123456789。默认值不是固定数字，而是一个数字，选择该数字以展开表格，同时在页面上呈现合理数量的列。

{phang}
{opt csepwidth(#)} 指定列之间的间距，单位为数字宽度。默认值不是固定数字，而是根据 Stata 认为最好看的情况选择的数字。

{phang}
{opt scsepwidth(#)} 指定超级列之间的间距，单位为数字宽度。默认值不是固定数字，而是根据 Stata 认为最好看的情况选择的数字。

{phang}
{opt stubwidth(#)} 指定表格左侧存根的宽度，单位为数字宽度。默认值不是固定数字，而是根据 Stata 认为最好看的情况选择的数字。

{title:备注}

{pstd}
{cmd:adjust} 是一个后估计命令；参见 {help postest_zh}。 {cmd:adjust} 实际上只是一种 {help predict_zh} 的前端处理过程。它设置了所需预测值的值，然后以表格形式显示预测；数据保持不变。 {cmd:adjust} 的选项控制预测、误差和置信区间的标签。 {help tabdisp_zh} 用于生成最终表格。

{pstd}
如果您通过使用 {opt if} 或 {opt in} 将估计命令限制在数据的某一部分，则通常希望在 {cmd:adjust} 时使用相同的条件。通过在 {cmd:adjust} 命令中包括 {cmd:if e(sample)} 可以轻松完成此任务。然而，出于合理的原因，可能会使用不同的数据来执行估计并获取调整预测（即，样本外的调整预测）。

{title:示例}

{pstd}{title:{help regress_zh}}

{phang2}设置{p_end}
{phang3}{cmd:. sysuse auto}{p_end}
{phang3}{cmd:. regress price mpg weight turn foreign}{p_end}
{phang3}{cmd:. adjust mpg weight turn, by(foreign)}{p_end}
{phang3}{cmd:. adjust mpg weight turn, by(foreign) se ci}{p_end}
{phang3}{cmd:. adjust mpg weight turn, by(foreign) stdf ci}

{phang2}设置某些变量为特定值而不是其均值{p_end}
{phang3}{cmd:. adjust mpg=25 weight turn=35.2, by(foreign)}

{phang2}生成包含预测和误差的变量{p_end}
{phang3}{cmd:. adjust mpg weight, by(foreign) gen(pred err) se}

{phang2}使用多个 {opt by()} 变量，且不必在估计命令中使用{p_end}
{phang3}{cmd:. adjust mpg weight, by(foreign rep78) se ci}

{phang2}设置一个变量并将其用作 {opt by()} 变量{p_end}
{phang3}{cmd:. sysuse auto, clear}{p_end}
{phang3}{cmd:. regress price mpg weight turn foreign}{p_end}
{phang3}{cmd:. adjust weight foreign=0, by(foreign) se}

{phang2}与之比较{p_end}
{phang3}{cmd:. adjust weight, by(foreign) se}

{phang2}以及{p_end}
{phang3}{cmd:. adjust weight foreign=1, by(foreign) se}

{pstd}{title:{help logit_zh}}

{phang2}设置{p_end}
{phang3}{cmd:. sysuse auto}{p_end}
{phang3}{cmd:. logit foreign weight mpg}{p_end}

{phang2}对于每个 {cmd:rep78} 的级别获得预测概率，设置 {cmd:mpg} 为其均值{p_end}
{phang3}{cmd:. adjust mpg, by(rep78) pr}{p_end}

{pstd}{title:{help anova_zh}}

{phang2}设置{p_end}
{phang3}{cmd:. webuse sysage, clear}{p_end}
{phang3}{cmd:. anova systolic drug disease drug*disease age, continuous(age)}{p_end}

{phang2}通过 {cmd:disease} 和 {cmd:drug} 获取调整后的均值和标准误差{p_end}
{phang3}{cmd:. adjust age, by(disease drug) se}

{pstd}{title:{help mvreg_zh}}

{phang2}设置{p_end}
{phang3}{cmd:. sysuse auto}{p_end}
{phang3}{cmd:. mvreg weight length turn = displ foreign}{p_end}

{phang2}在拟合多变量模型后从各方程获取统计数据{p_end}
{phang3}{cmd:. adjust displ, by(foreign) equation(length) se ci}{p_end}
{phang3}{cmd:. adjust displ, by(foreign) equation(#3) se ci}

{title:另见}

{psee}
手册： {bf:[R] adjust}

{psee}
{space 2}帮助： {manhelp table R}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <adjust.sthlp>}