
{help cmmprobit_options_model:English Version}
{hline}
{* *! version 1.0.1  12dec2018}{...}
{dlgtab:模型}

{phang}{opth case(varname)} 指定标识每个案例的变量。该变量标识做出选择的个体或实体。{opt case()} 是必需的。

{phang}{opth alternatives(varname)} 指定标识每个案例的备选项的变量。每个案例的备选项数量可以不同；备选项的最大数量为 20。{opt alternatives()} 是必需的。

{phang}{opth casevars(varlist)} 指定对每个 {opt case()} 固定的案例特定变量。如果备选项最多为 J， 则将与 {opt casevars()} 关联 J-1 组系数。

{phang}
{opt constraints(constraints)}；请参见
{helpb estimation options:[R] 估计选项}。

{dlgtab:模型 2}

{phang}
{opt correlation(correlation)} 指定潜变量误差的相关结构。

{phang2}
{cmd:correlation(unstructured)} 是最一般的，有 J(J-3)/2+1 个唯一相关参数。 默认情况下使用此选项，除非指定 {cmd:stdev()} 或 {cmd:structural}。

{phang2}
{cmd:correlation(exchangeable)} 提供一个通用的相关系数，适用于所有潜变量，除了与 {opt basealternative()} 选项相关的潜变量。

{phang2}
{cmd:correlation(independent)} 假设所有相关性为零。

{phang2}
{cmd:correlation(pattern} {it:matname}{cmd:)} 和 {cmd:correlation(fixed} {it:matname}{cmd:)} 为您在定义相关结构上提供更多灵活性。有关更多信息，请参见
{mansection CM cmmprobitRemarksandexamplesVariancestructures:{it:方差结构}}
在 {hi:[CM] cmmprobit} 中。

{phang}
{opt stddev(stddev)} 指定潜变量误差的方差结构。

{phang2}
{cmd:stddev(heteroskedastic)} 是最一般的，有 J-2 个可估计参数。与 {opt basealternative()} 和 {opt scalealternative()} 中指定的备选项的潜变量误差的标准差固定为 1。

{phang2}
{cmd:stddev(homoskedastic)} 将所有标准差约束为等于 1。

{phang2}
{cmd:stddev(pattern} {it:matname}{cmd:)} 或
{cmd:stddev(fixed} {it:matname}{cmd:)} 为您在定义标准差参数时提供额外的灵活性。有关更多信息，请参见
{mansection CM cmmprobitRemarksandexamplesVariancestructures:{it:方差结构}}
在 {hi:[CM] cmmprobit} 中。

{phang}{opt structural} 请求使用 J x J 的结构协方差参数化，而不是默认的 J-1 x J-1 差分协方差参数化（潜在误差的差分与基准备选项的协方差）。差分协方差参数化将实现相同的最大似然估计，无论选择哪个 {opt basealternative()} 和 {opt scalealternative()}。另一方面，结构协方差参数化施加更多的归一化，可能使模型远离其最大似然，从而在某些数据集或选择的 {opt basealternative()} 和 {opt scalealternative()} 中防止收敛。

{phang}{opt factor(#)} 请求使用维度为 {it:#} 的因素协方差结构。 {cmd:factor()} 选项可以与 {cmd:structural} 选项一起使用，但不能与 {cmd:stddev()} 或 {cmd:correlation()} 一起使用。使用一个 {it:#} x J（或 {it:#} x J-1）矩阵 C 来因子化协方差矩阵，形式为 I + C'C，其中 I 是维度为 J（或 J-1）的单位矩阵。C 的列维度取决于协方差是结构的还是差分的。C 的行维度 {it:#} 必须小于或等于 {cmd:floor(}(J(J-1)/2-1)/(J-2){cmd:)}, 因为只有 J(J-1)/2-1 个可识别的方差-协方差参数。此协方差参数化可能有助于减少需要估计的协方差参数数量。

{pmore}
如果协方差是结构的，则对应于基准备选项的 C 列包含零。对应于规模备选项的列在第一行有一个值为 1，其余为零。如果协方差是差分的，则对应于规模备选项（与基准差分）的列在第一行有一个值为 1，其余为零。

{phang}{opt noconstant} 抑制 J-1 个特定于备选项的常数项。

{phang}{opt basealternative(#|lbl|str)} 指定用于规范潜变量位置（也称为效用水平）的备选项。基准备选项可以指定为数字、标签或字符串。与基准备选项相关的潜变量误差的标准差固定为 1，该备选项与所有其他潜变量误差的相关性设为零。默认是排序后的第一个备选项。如果在 {opt stddev()} 和 {opt correlation()} 选项中给定了 {cmd:fixed} 或 {cmd:pattern} 矩阵，那么 {opt basealternative()} 将由矩阵规格中的固定标准差和相关性暗示。{opt basealternative()} 不能等于 {opt scalealternative()}。

{phang}{opt scalealternative(#|lbl|str)} 指定用于规范潜变量尺度（也称为效用的尺度）的备选项。规模备选项可以指定为数字、标签或字符串。默认是在排序后的第二个备选项。如果在 {opt stddev()} 选项中给定了 {cmd:fixed} 或 {cmd:pattern} 矩阵， {opt scalealternative()} 将由矩阵规格中的固定标准差暗示。{opt scalealternative()} 不能等于 {opt basealternative()}。

{pmore}
如果为 {cmd:stddev()} 选项提供了 {cmd:fixed} 或 {cmd:pattern} 矩阵，基准备选项和规模备选项将由矩阵规格中的标准差和相关性暗示，无需在 {cmd:basealternative()} 和 {cmd:scalealternative()} 选项中指定。

{phang}{opt altwise} 指定在因变量缺失值时使用备选项逐个删除。当遇到任何缺失值时，默认情况下使用案例逐个删除；也就是说，组成一个案例的整个观察组将被删除。该选项不适用于被 {cmd:if} 或 {cmd:in} 限定符或 {cmd:by} 前缀标记的观察。
{p_end}