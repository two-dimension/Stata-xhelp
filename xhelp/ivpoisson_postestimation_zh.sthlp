{smcl}
{* *! version 1.1.7  23oct2017}{...}
{viewerdialog predict "dialog ivpoisson_p"}{...}
{viewerdialog estat "dialog ivpoisson_estat"}{...}
{vieweralsosee "[R] ivpoisson postestimation" "mansection R ivpoissonpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ivpoisson" "help ivpoisson_zh"}{...}
{viewerjumpto "后估计命令" "ivpoisson postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "ivpoisson_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "ivpoisson postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "ivpoisson postestimation##syntax_margins"}{...}
{viewerjumpto "estat" "ivpoisson postestimation##syntax_estat_overid"}{...}
{viewerjumpto "示例" "ivpoisson postestimation##examples"}{...}
{viewerjumpto "存储结果" "ivpoisson postestimation##results"}
{help ivpoisson_postestimation:English Version}
{hline}{...}
{p2colset 1 33 26 2}{...}
{p2col:{bf:[R] ivpoisson postestimation} {hline 2}}ivpoisson 的后估计工具{p_end}
{p2col:}({mansection R ivpoissonpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:ivpoisson} 后，以下后估计命令特别重要：

{synoptset 14}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb ivpoisson postestimation##estatoverid:estat overid}}进行过识别限制的检验{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 14}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含帮助 post_contrast
包含帮助 post_estatsum
包含帮助 post_estatvce
包含帮助 post_estimates
包含帮助 post_forecast
包含帮助 post_hausman
包含帮助 post_lincom
{synopt:{helpb ivpoisson_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含帮助 post_marginsplot
包含帮助 post_nlcom
{synopt :{helpb ivpoisson postestimation##predict:predict}}预测和残差{p_end}
包含帮助 post_predictnl
包含帮助 post_pwcompare
包含帮助 post_test
包含帮助 post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R ivpoissonpostestimationRemarksandexamples:备注和示例}

        {mansection R ivpoissonpostestimationMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic} {opt nooff:set}]

{synoptset 11 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主}
{synopt :{opt n}}事件数量；默认值{p_end}
{synopt : {opt xbt:otal}}线性预测，使用 
残差估计用于 {opt ivpoisson cfunction}{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
{synoptline}
{p2colreset}{...}
包含帮助 esample


包含帮助 menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含事件数量、线性预测和残差的预测新变量。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主}

{phang}
{opt n}，默认，计算通过指数形式的估计得到的预测事件数量。如果未指定 {cmd:offset()} 或 {opt exposure()}，该值为 exp(x'b1+y2'b2)；如果指定了 {cmd:offset()}，则为 exp(x'b1+y2'b2 + offset)；如果指定了 {cmd:exposure()}，则为 exp(x'b1 + y2'b2)*exposure。

{pmore}
在广义矩估计后，指数形式的估计并不是 y 的条件均值的一致估计，因为没有修正 E(e|y2)。更多细节见 
{mansection R ivpoissonpostestimationMethodsandformulas:{it:方法和公式}}。

{pmore}
在控制函数估计后，我们通过使用 y2 的估计残差和 {cmd:c_*} 辅助参数来修正指数形式的估计。这样一来，x 通过 b1 和 b2 的直接效应与 y2、x 和工具变量 z 通过内生误差 e 的间接效应结合。因此，指数形式的估计一致地估计了 y 的条件均值。

{phang}
{opt xbtotal} 计算线性预测，如果未指定 {cmd:offset()} 或 {cmd:exposure()}，则为 x'b1+y2'b2；如果指定了 {cmd:offset()}，则为 x'b1+y2'b2 + offset；如果指定了 {cmd:exposure()}，则为 x'b1+y2'b2 + ln(exposure)。

{pmore}
在控制函数估计后，线性形式的估计 x'b1 包含内生回归量的估计残差以及来自 {cmd:c_*} 辅助参数的系数。

{phang}
{opt xb} 计算线性预测，如果未指定 {cmd:offset()} 或 {cmd:exposure()}，则为 x'b1+y2'b2；如果指定了 {cmd:offset()}，则为 x'b1+y2'b2 + offset；如果指定了 {cmd:exposure()}，则为 x'b1+y2'b2 + ln(exposure)。见下面的 {helpb ivpoisson_postestimation##nooffset:nooffset}。

{phang}
{opt residuals} 计算残差。在加法误差下，计算为 y-exp(x'b1+y2'b2)。在乘法误差下，计算为 y/exp(x'b1+y2'b2) - 1。

{pmore}
当指定了 {cmd:offset()} 或 {cmd:exposure()} 时，x'b1 不直接用于残差。如果指定了 {cmd:offset()}，则 使用 x'b1 + offset；如果指定了 {cmd:exposure()}，则使用 x'b1 + ln(exposure)。见下面的 {helpb ivpoisson_postestimation##nooffset:nooffset}。

{pmore}
在控制函数估计后，线性形式的估计 x'b1 包含内生回归量的估计残差以及来自 {cmd:c_*} 辅助参数的系数。

{marker nooffset}{...}
{phang}
{opt nooffset} 仅在运行模型时指定了 {opt offset()} 或 {opt exposure()} 时相关。它修改 {cmd:predict} 所做的计算，以便忽略偏移或曝光变量。{cmd:nooffset} 从涉及 {cmd:treat()} 方程和因变量计数的计算中移除偏移。

包含帮助 syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt n}}事件数量；默认值{p_end}
{synopt :{opt xbt:otal}}线性预测，使用
残差估计用于 {opt ivpoisson cfunction}{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt r:esiduals}}在 {cmd:margins} 中不允许{p_end}
{synoptline}
{p2colreset}{...}

包含帮助 notes_margins


包含帮助 menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计事件数量和线性预测的响应边际。


{marker syntax_estat_overid}{...}
{marker estatoverid}{...}
{title:estat 的语法}

{p 8 16 2}
{cmd:estat} {cmdab:over:id} 


包含帮助 menu_estat


{marker des_estat}{...}
{title:estat 的描述}

{pstd}
{cmd:estat} {cmd:overid} 报告汉森的 J 统计量，用于确定 GMM 模型中过识别限制的有效性。{cmd:ivpoisson} {cmd:gmm} 使用 GMM 估计来获得参数估计。在加法和乘法误差下，只有在指定的工具变量超过内生回归量时，汉森的 J 统计量才能准确报告。不能在执行 {cmd:ivpoisson} {cmd:cfunction} 后报告 J 统计量，因为是拟合了一个恰好识别的模型。

{pstd}
如果模型在 E{z u(y,x,y2,b)} = 0 的意义上是正确指定的，那么在估计的 b1 和 b2 值下样本的类比条件应该成立。z 变量是 {cmd:ivpoisson} {cmd:gmm} 中使用的外生回归量 x 和工具变量 z。y2 是内生回归量。u 函数是误差函数，对不同的乘法和加法误差形式在回归中具有不同的形式。

{pstd}
只有当权重矩阵是最优的，即等于矩条件协方差矩阵的逆时，汉森的 J 统计量才有效。因此，{cmd:estat} {cmd:overid} 仅在二步或迭代估计后报告汉森的 J 统计量，或者如果您在调用 {cmd:ivpoisson} {cmd:gmm} 时指定了 {opt winitial(matname)}。在后者情况下，您有责任确定 J 统计量的有效性。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse website}{p_end}

{pstd}广义矩估计；加法误差{p_end}
{phang2}{cmd:. ivpoisson gmm visits ad female} 
	{cmd:(time = phone frfam)}{p_end}

{pstd}检验过识别限制{p_end}
{phang2}{cmd:. estat overid }{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse trip}{p_end}

{pstd}控制函数方法{p_end}
{phang2}{cmd:. ivpoisson cfunction trips cbd ptn worker weekend}
	{cmd: (tcost=pt)}{p_end}

{pstd}预测旅行次数{p_end}
{phang2}{cmd:. predict double m} {p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat overid} 将以下内容存储在 {cmd:r()} 中：

{synoptset 10 tabbed}{...}
{p2col 5 10 14 2: 标量}{p_end}
{synopt:{cmd:r(J)}}汉森的 J 统计量{p_end}
{synopt:{cmd:r(J_df)}}J 统计量的自由度{p_end}
{synopt:{cmd:r(J_p)}}J 统计量的 p 值{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ivpoisson_postestimation.sthlp>}