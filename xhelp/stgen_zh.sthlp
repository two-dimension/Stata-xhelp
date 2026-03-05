{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog stgen "dialog stgen"}{...}
{vieweralsosee "[ST] stgen" "mansection ST stgen"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stci" "help stci_zh"}{...}
{vieweralsosee "[ST] sts" "help sts_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{vieweralsosee "[ST] stvary" "help stvary_zh"}{...}
{viewerjumpto "Syntax" "stgen_zh##syntax"}{...}
{viewerjumpto "Menu" "stgen_zh##menu"}{...}
{viewerjumpto "Description" "stgen_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "stgen_zh##linkspdf"}{...}
{viewerjumpto "Functions" "stgen_zh##functions"}{...}
{viewerjumpto "Examples" "stgen_zh##examples"}
{help stgen:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[ST] stgen} {hline 2}}生成反映完整历史的变量{p_end}
{p2col:}({mansection ST stgen:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}{cmd:stgen} {dtype} {it:{help newvar_zh}} {cmd:=} {it:function}

{pstd}其中 {it:function} 为

		{opth ever(exp)}
		{opth never(exp)}
		{opth always(exp)}
		{opth min(exp)}
		{opth max(exp)}
		{opth when(exp)}
		{opth when0(exp)}
		{opth count(exp)}
		{opth count0(exp)}
		{opth minage(exp)}
		{opth maxage(exp)}
		{opth avgage(exp)}
		{opt nfailures()}
		{opt ngaps()}
		{opt gaplen()}
		{opt hasgap()}

{pstd}
在使用 {cmd:stgen} 之前，您必须先使用 {cmd:stset} 对数据进行设置；请参见
{manhelp stset ST}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 设置和工具 >}
       {bf:生成反映完整历史的变量}


{marker description}{...}
{title:描述}

{pstd}
{cmd:stgen} 提供了一种方便的方法来生成反映完整历史的新变量。这些函数旨在用于多个记录的生存数据，但也可以用于单一记录的数据。对于单一记录的数据，每个函数可简化为一个 {help generate_zh}，因此使用 {cmd:generate} 会是更自然的解决方案。

{pstd}
{cmd:stgen} 可以用于单一或多次失败的生存数据。

{pstd}
如果您想生成计算值，例如生存函数，请参见 {manhelp sts ST}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ST stgenQuickstart:快速开始}

        {mansection ST stgenRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker functions}{...}
{title:函数}

{pstd}
以下函数的描述中，时间单位参考与 {cmd:stset} {it:timevar}{cmd:,} {it:...} 中的 
{it:timevar} 相同的单位。例如，如果 {it:timevar} 是以年为单位——自1960年以来的年数、诊断以来的年数，或其他——则时间单位也是年。

{pstd}
当我们说变量 X 记录一个“时间”时，我们指的是一个记录某事件发生时间的变量，其单位和基准与 {it:timevar} 相同。如果 {it:timevar} 是 Stata 日期，则“时间”相应地也是 Stata 日期。

{pstd}
t 单位或分析时间单位，指的是来自 {cmd:stset} {it:timevar}{cmd:, scale(}{it:...}{cmd:)}中 
{it:timevar}/{opt scale()} 的变量。如果您没有指定 {opt scale()}，那么 t 单位与时间单位相同。
反之，如果 {it:timevar} 被记录为 Stata 日期，并且您指定了 {cmd:scale(365.25)}，那么 t 单位就是年。如果您指定了一个非恒定的尺度—— {cmd:scale(myvar)}，其中 {cmd:myvar} 在不同的个体之间变化——那么 t 单位对于每个个体来说都是不同的。

{pstd}
“分析时间”是指某事件发生的时间，记录在 {cmd:(}{it:timevar}{cmd:-origin())/scale()} 的单位中。我们只在每个时间跨度记录的开始和结束时讨论分析时间。

{pstd}
虽然在上面的 {help stgen##description:{it:描述}} 中我们提到 {cmd:stgen} 创建反映完整历史的变量，但 {cmd:stgen} 限制为 {cmd:stset} 的观察，因此“完整历史”意味着当前 {cmd:stset} 的完整历史。如果您真的想使用数据中记录的完整历史，请在使用 {cmd:stgen} 之前输入 {cmd:streset, past} 或 {cmd:streset, past future}。然后输入 {cmd:streset} 以重置为原始分析样本。

{pstd}
以下函数可用：

{phang}
{opth ever(exp)} 创建 {newvar}，如果表达式 ever 为真（非零），则为 1（真），否则为 0。

{phang}
{opth never(exp)} 为 {opt ever()} 的相反；它创建 {newvar}，如果表达式始终为假（0），则为1（真），否则为0。

{phang}
{opth always(exp)} 创建 {newvar}，如果表达式始终为真（非零），则为 1（真），否则为 0。

{phang}
{opth min(exp)} 和 {opt max(exp)} 创建 {newvar}，包含在 {opt id()} 内部的 {it:exp} 的最小或最大非缺失值。 {opt min()} 和 {opt max()} 经常与记录时间的变量一起使用（见上文 {help stgen##functions:定义}），例如 {cmd:min(visitdat)}。

{phang}
{opth when(exp)} 和 {opt when0(exp)} 创建 {newvar}，包含 {it:exp} 在先前的 {help stset_zh} {opt id()} 内首次为真时的时间。结果以时间单位而非 t 单位表示；请见上文 {help stgen##functions:定义}。

{pmore}
{opt when()} 和 {opt when0()} 之间的不同在于 {it:exp} 何时变为真。记录记录时间跨度 (time0,time1]。 {opt when()} 假设表达式在时间跨度的末尾 time1 变为真。 {opt when0()} 假设表达式在时间跨度的开始 time0 变为真。

{phang}
{opth count(exp)} 和 {opt count0(exp)} 创建 {newvar}，其中包含 {it:exp} 在 {opt id()} 内为真时的发生次数。

{pmore}
{opt count()} 和 {opt count0()} 假设 {it:exp} 发生的时间不同。{opt count()} 假设 {it:exp} 对应于时间跨度记录的结束。因此，即使 {it:exp} 在此记录中为真，计数也不会改变，直到下一个记录。

{pmore}
{opt count0()} 假设 {it:exp} 对应于时间跨度记录的开始。因此，如果 {it:exp} 在此记录中为真，则计数会立即更新。

{phang}
{opth minage(exp)}、{opt maxage(exp)} 和 {opt avgage(exp)} 返回自 {it:exp} 起的经过时间，以时间单位计，依据记录的开始、结束或中间。预期 {it:exp} 可评估为时间值。{opt minage()}、{opt maxage()} 和 {opt avgage()} 适合与 {opt when()}、{opt when0()}、{opt min()} 和 {opt max()} 的结果一起使用，例如。

{pmore}
另请参见 {manhelp stsplit ST}；{cmd:stsplit} 将时间跨度记录分割成新的记录，这些记录记录指定的年龄时间间隔。

{phang}
{opt nfailures()} 创建 {newvar}，包含每个个体在观察的进入时间时的累计失败次数。{opt nfailures()} 旨在与多次失败数据一起使用；在单次失败数据中，{opt nfailures()} 始终为 0。

{phang}
{opt ngaps()} 创建 {newvar}，包含每个个体在记录的进入时间时的累计间隙数。延迟进入（一个开启间隙）不被视为间隙。

{phang}
{opt gaplen()} 创建 {newvar}，包含每个个体在观察的进入时间时的间隙时间，以分析时间单位测量。延迟进入（一个开启间隙）不被视为间隙。

{phang}
{opt hasgap()} 创建 {newvar}，如果个体曾经有间隙则均为 1，否则为 0。延迟进入（一个开启间隙）不被视为间隙。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse stgenxmpl}{p_end}
{phang2}{cmd:. keep in 1/10}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset t, id(id) failure(d)}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id t d bp, sepby(id)}

{pstd}按 {cmd:id}，创建 {cmd:everlow} = 1，如果 {cmd:bp < 100} 对于任何观察为真；否则为 0{p_end}
{phang2}{cmd:. stgen everlow = ever(bp<100)}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id t d bp *low, sepby(id)}

{pstd}按 {cmd:id}，创建 {cmd:neverlow} = 1，如果 {cmd:bp < 100} 对于所有观察为假；否则为 0{p_end}
{phang2}{cmd:. stgen neverlow = never(bp<100)}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id t d bp *low, sepby(id)}

{pstd}按 {cmd:id}，创建 {cmd:minbp}，变量 {cmd:bp} 的最小值{p_end}
{phang2}{cmd:. stgen minbp = min(bp)}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id t d bp minbp, sepby(id)}

{pstd}按 {cmd:id}，创建 {cmd:maxdiff}，表示 {cmd:bp} 与 {cmd:minbp} 之间最大值的差{p_end}
{phang2}{cmd:. stgen maxdiff = max(bp - minbp)}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id t d bp minbp maxdiff, sepby(id)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse mrmf, clear}

{pstd}显示生存设置{p_end}
{phang2}{cmd:. st}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list in 1/9, sepby(id)}

{pstd}按 {cmd:id}，创建 {cmd:x1b0}，包含第一次 {cmd:x1 > 0.1} 的时间，考虑该断言在相应记录的开始时为真{p_end}
{phang2}{cmd:. stgen x1b0 = when0(x1>.1)}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id t0 t d x1 x1b0 in 38/50, sepby(id)}

{pstd}按 {cmd:id}，创建 {cmd:x1b}，包含第一次 {cmd:x1 > 0.1} 的时间，考虑该断言在相应记录的结束时为真{p_end}
{phang2}{cmd:. stgen x1b = when(x1>.1)}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id t0 t d x1 x1b0 x1b in 38/50, sepby(id)}

{pstd}按 {cmd:id}，创建 {cmd:x1n0}，包含累计记录的次数，其中 {cmd:x1 > 0.1}，考虑该断言在相应记录的开始时为真{p_end}
{phang2}{cmd:. stgen x1n0 = count0(x1>.1)}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id t0 t d x1 x1n0 in 1/11, sepby(id)}

{pstd}按 {cmd:id}，创建 {cmd:x1n}，包含累计记录的次数，其中 {cmd:x1 > 0.1}，考虑该断言在相应记录的结束时为真{p_end}
{phang2}{cmd:. stgen x1n = count(x1>.1)}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id t0 t d x1 x1n0 x1n in 1/11, sepby(id)}

{pstd}创建 {cmd:min1b}，包含从变量 {cmd:x1b} 的值到每个记录开始的时间{p_end}
{phang2}{cmd:. stgen min1b = minage(x1b)}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id t0 t d x1b min1b in 1/11, sepby(id)}

{pstd}创建 {cmd:avg1b}，包含从变量 {cmd:x1b} 的值到每个记录中间的时间{p_end}
{phang2}{cmd:. stgen avg1b = avgage(x1b)}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id t0 t d x1b min1b avg1b in 1/11, sepby(id)}

{pstd}创建 {cmd:max1b}，包含从变量 {cmd:x1b} 的值到每个记录结束的时间{p_end}
{phang2}{cmd:.  stgen max1b = maxage(x1b)}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id t0 t d x1b min1b avg1b max1b in 1/11, sepby(id)}

{pstd}按 {cmd:id}，创建 {cmd:nf}，包含截至每个记录的进入时间的累计失败次数{p_end}
{phang2}{cmd:. stgen nf = nfailures()}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id t0 t d nf in 38/49, sepby(id) }

{pstd}按 {cmd:id}，创建 {cmd:ng}，截至每个记录的进入时间的累计间隙数{p_end}
{phang2}{cmd:. stgen ng = ngaps()}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id t0 t ng in 540/550, sepby(id)}

{pstd}按 {cmd:id}，创建 {cmd:hg} = 1 如果个体曾经有间隙；否则为0{p_end}
{phang2}{cmd:. stgen hg = hasgap()}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id t0 t ng hg in 540/550, sepby(id)}

{pstd}确定有多少个体在数据中有间隙{p_end}
{phang2}{cmd:. count if hg == 1 & id[_n] !=id[_n-1]}

{pstd}按 {cmd:id}，创建 {cmd:gl}，包含在每个记录的进入时间的间隙时间（以分析时间单位计）{p_end}
{phang2}{cmd:. stgen gl = gaplen()}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id t0 t ng hg gl in 540/550, sepby(id)}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stgen.sthlp>}