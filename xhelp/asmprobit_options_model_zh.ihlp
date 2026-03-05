
{help asmprobit_options_model:English Version}
{hline}
{* *! version 1.1.8  14may2018}{...}
{dlgtab:模型}

{phang}{opth case(varname)} 指定识别每个案例的变量。该变量识别做出选择的个体或实体。{opt case()} 是必需的。

{phang}{opth alternatives(varname)} 指定识别每个案例的备选项的变量。每个案例的备选项数量可以不同；最多可以有 20 个备选项。{opt alternatives()} 是必需的。

{phang}{opth casevars(varlist)} 指定对于每个 {opt case()} 来说是常量的案例特定变量。如果最多有 J 个备选项，将会有 J-1 组系数与 {opt casevars()} 相关联。

{phang}
{opt constraints(constraints)}、{opt collinear}；详见 {helpb estimation options:[R] Estimation options}。

{dlgtab:模型 2}

{phang}
{opt correlation(correlation)} 指定潜变量错误的相关结构。

{phang2}
{cmd:correlation(unstructured)} 是最一般的，包含 J(J-3)/2+1 个独特的相关参数。除非指定了 {cmd:stdev()} 或 {cmd:structural}，否则这是默认值。

{phang2}
{cmd:correlation(exchangeable)} 为所有潜变量提供一个共同的相关系数，除了与 {opt basealternative()} 选项相关的潜变量。

{phang2}
{cmd:correlation(independent)} 假设所有相关性为零。

{phang2}
{cmd:correlation(pattern} {it:matname}{cmd:)} 和 {cmd:correlation(fixed} {it:matname}{cmd:)} 为你提供了更大的灵活性来定义相关结构。有关更多信息，请查看 {mansection R asmprobitRemarksandexamplesVariancestructures:{it:方差结构}} 在 {hi:[R] asmprobit} 中。

{phang}
{opt stddev(stddev)} 指定潜变量错误的方差结构。

{phang2}
{cmd:stddev(heteroskedastic)} 是最一般的，包含 J-2 个可估计参数。为 {opt basealternative()} 和 {opt scalealternative()} 指定的潜变量错误的标准差被固定为 1。

{phang2}
{cmd:stddev(homoskedastic)} 限制所有标准差均等于 1。

{phang2}
{cmd:stddev(pattern} {it:matname}{cmd:)} 或 {cmd:stddev(fixed} {it:matname}{cmd:)} 为定义标准差参数提供了额外的灵活性。有关更多信息，请查看 {mansection R asmprobitRemarksandexamplesVariancestructures:{it:方差结构}} 在 {hi:[R] asmprobit} 中。

{phang}{opt structural} 请求 J x J 的结构协方差参数化，而不是默认的 J-1 x J-1 的差分协方差参数化（潜变量错误与基准备选项的差分协方差）。差分协方差参数化无论选择何种 {opt basealternative()} 和 {opt scalealternative()} 都会达到相同的 MSL。另一方面，结构协方差参数化施加了更多的归一化，这可能使模型远离其最大似然，并因此在某些数据集或选择的 {opt basealternative()} 和 {opt scalealternative()} 中阻止收敛。

{phang}{opt factor(#)} 请求使用维度为 {it:#} 的因子协方差结构。{cmd:factor()} 选项可以与 {cmd:structural} 选项一起使用，但不能与 {cmd:stddev()} 或 {cmd:correlation()} 一起使用。一个 {it:#} x J（或 {it:#} x J-1）矩阵 C 用于因子化协方差矩阵为 I + C'C，其中 I 是维度为 J（或 J-1）的单位矩阵。C 的列维度取决于协方差是结构还是差分。C 的行维度 {it:#} 必须小于或等于 {cmd:floor(}(J(J-1)/2-1)/(J-2){cmd:)}, 因为只有 J(J-1)/2-1 个可识别的方差-协方差参数。该协方差参数化可能对减少需要估计的协方差参数数量非常有用。

{pmore}
如果协方差是结构的，C 中对应基准备选项的列包含零。对应规模备选项的列在第一行有一个一，其他地方为零。如果协方差是差分的，对应规模备选项的列（与基准的差分）在第一行有一个一，其他地方为零。

{phang}{opt noconstant} 抑制 J-1 个备选项特定的常数项。

{phang}{opt basealternative(#|lbl|str)} 指定用于标准化潜变量位置（也称为效用水平）的备选项。基准备选项可以指定为数字、标签或字符串。与基准备选项相关的潜变量错误的标准差固定为 1，其与所有其他潜变量错误的相关性设为零。默认情况下为排序后的第一个备选项。如果在 {opt stddev()} 和 {opt correlation()} 选项中给出了 {cmd:fixed} 或 {cmd:pattern} 矩阵，将根据矩阵规格中的固定标准差和相关性来推断 {opt basealternative()}。{opt basealternative()} 不能与 {opt scalealternative()} 相等。

{phang}{opt scalealternative(#|lbl|str)} 指定用于标准化潜变量规模（也称为效用规模）的备选项。规模备选项可以指定为数字、标签或字符串。默认情况下，使用排序后的第二个备选项。如果在 {opt stddev()} 选项中给出了 {cmd:fixed} 或 {cmd:pattern} 矩阵，将根据矩阵规格中的固定标准差来推断 {opt scalealternative()}。{opt scalealternative()} 不能与 {opt basealternative()} 相等。

{pmore}
如果为 {cmd:stddev()} 选项给出了 {cmd:fixed} 或 {cmd:pattern} 矩阵，则基准备选项和规模备选项由矩阵规格中的标准差和相关性推断，无需在 {cmd:basealternative()} 和 {cmd:scalealternative()} 选项中指定。

{phang}{opt altwise} 指定在由于变量缺失值而标记观察时使用逐项删除。默认情况下使用案例删除；也就是说，如果遇到任何缺失值，将删除构成案例的整个观察组。该选项不适用于通过 {cmd:if} 或 {cmd:in} 限定符或 {cmd:by} 前缀标记的观察。
{p_end}