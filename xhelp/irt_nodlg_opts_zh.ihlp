
{help irt_nodlg_opts:English Version}
{hline}
{* *! version 1.0.2  10jan2019}{...}
{pstd}
以下选项可用于 {cmd:irt}，但在对话框中未显示：

{marker startvalues}{...}
{phang} 
{opt startvalues()} 指定如何计算起始值。
在 {cmd:from()} 中指定的起始值会覆盖计算出的起始值。

{phang2}
{cmd:startvalues(zero)} 指定所有起始值设定为 0。这个选项通常仅在与 {opt from()} 选项一起指定时才有用。

{phang2}
{cmd:startvalues(constantonly)} 基于 {cmd:startvalues(zero)}，为每个响应拟合常数模型以获得截距和切点参数的估计。

{phang2} 
{cmd:startvalues(fixedonly)} 基于 {cmd:startvalues(constantonly)}，为每个响应变量拟合完整的固定效应模型以获得系数的估计，以及截距和切点参数。你还可以添加子选项 {opt iterate(#)} 来限制 {cmd:irt} 在拟合固定效应模型时允许的迭代次数。

{phang2} 
{cmd:startvalues(ivloadings)} 基于 {cmd:startvalues(fixedonly)}，使用固定效应模型的广义残差的工具变量方法来计算潜变量载荷的起始值。这是默认行为。

{phang} 
{opt noestimate} 指定模型不进行拟合。相反，起始值将显示（如果进行了修改，上述选项将影响其显示），并且按照 {cmd:coeflegend} 的输出风格显示。这个选项的一个重要用途是在你尚未修改起始值之前；你可以键入以下命令：

            {cmd:. irt} ...{cmd:,} ... {cmd:noestimate}

            {cmd:. matrix b = e(b)}

            {cmd:.} ... ({it:修改} {cmd:b} 的元素) ...

            {cmd:. irt} ...{cmd:,} ... {cmd:from(b)}

{*与 -mixed- 不同的描述，因为这里确实是在估计度量上*}{...}
{phang}
{opt estmetric} 以在估计中使用的斜率-截距度量显示参数估计。

{phang}
{opt dnumerical} 指定在优化过程中，梯度向量和海森矩阵使用数值技术计算，而不是解析公式。默认情况下，{opt irt} 对于所有积分方法使用解析公式来计算梯度和海森矩阵。

{phang}
{opt coeflegend}; 见 {help estimation_options_zh:[R] Estimation options}。
{p_end}