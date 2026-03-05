{smcl}
{* *! version 1.0.4  19oct2017}{...}
{viewerdialog forecast "dialog forecast"}{...}
{vieweralsosee "[TS] forecast describe" "mansection TS forecastdescribe"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{vieweralsosee "[TS] forecast list" "help forecast list"}{...}
{viewerjumpto "Syntax" "forecast_describe_zh##syntax"}{...}
{viewerjumpto "Description" "forecast_describe_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "forecast_describe_zh##linkspdf"}{...}
{viewerjumpto "Options" "forecast_describe_zh##options"}{...}
{viewerjumpto "Examples" "forecast_describe_zh##examples"}{...}
{viewerjumpto "Stored results" "forecast_describe_zh##results"}
{help forecast_describe:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[TS] forecast describe} {hline 2}}描述预测模型的特征{p_end}
{p2col:}({mansection TS forecastdescribe:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
描述当前的预测模型

{p 8 15 2}
{cmdab:fore:cast} {cmdab:d:escribe} 
[{cmd:,} {it:{help forecast_describe##opt_table:options}}]


{pstd}
描述当前预测模型的特定方面

{p 8 15 2}
{cmdab:fore:cast} {cmdab:d:escribe}
{it:{help forecast_describe##aspect:aspect}}
[{cmd:,} {it:{help forecast_describe##opt_table:options}}]


{marker aspect}{...}
{synoptset 26}{...}
{synopthdr:方面}
{synoptline}
{synopt :{opt est:imates}}估计结果{p_end}
{synopt :{opt co:efvector}}系数向量{p_end}
{synopt :{opt id:entity}}身份{p_end}
{synopt :{opt ex:ogenous}}声明的外生变量{p_end}
{synopt :{opt ad:just}}对内生变量的调整{p_end}
{synopt :{opt s:olve}}预测解信息{p_end}
{synopt :{opt en:dogenous}}所有内生变量{p_end}
{synoptline}

{marker opt_table}{...}
{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{synopt: {opt b:rief}}提供一行摘要{p_end}
{p2coldent :* {opt d:etail}}提供更详细的信息{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* 指定 {cmd:detail} 时，对 {it:aspect} {cmd:exogenous}、{cmd:endogenous} 和 {cmd:solve} 不提供额外信息。


{marker description}{...}
{title:描述}

{pstd}
{cmd:forecast describe} 显示当前内存中预测模型的信息。例如，您可以获取模型中所有内生变量或外生变量的信息，或用于替代情景的调整，或使用的解法方法。输入 {cmd:forecast} {cmd:describe} 而不指定模型的特定方面，相当于输入 {cmd:forecast} {cmd:describe} 每个可用方面，这可能导致输出结果超过您的预期，尤其是如果您还请求详细描述。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS forecastdescribeQuickstart:快速入门}

        {mansection TS forecastdescribeRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:brief} 请求 {cmd:forecast describe} 生成指定方面的一句话摘要。例如，{cmd:forecast} {cmd:describe} {cmd:exogenous,} {cmd:brief} 仅会告诉您当前预测模型的名称和模型中的外生变量数量。

{phang}
{cmd:detail} 请求更详细的说明指定方面。例如，输入 {cmd:forecast} {cmd:describe} {cmd:estimates} 列出使用 {cmd:forecast} {cmd:estimates} 添加到模型的所有估计结果，使用的估计命令，以及每个估计结果中的左侧变量数量。当您指定 {cmd:forecast} {cmd:describe} {cmd:estimates,} {cmd:detail} 时，输出将包含所有通过 {cmd:forecast} {cmd:estimates} 输入的左侧变量的列表。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse klein2}{p_end}
{phang2}{cmd:. reg3 (c p L.p w) (i p L.p L.k) (wp y L.y yr)}
        {cmd:if year < 1939, endog(w p y) exog(t wg g)}{p_end}
{phang2}{cmd:. estimates store klein}{p_end}

{pstd}创建新的预测模型{p_end}
{phang2}{cmd:. forecast create kleinmodel}

{pstd}将使用 {cmd:reg3} 适配的随机方程添加到 {cmd:kleinmodel}{p_end}
{phang2}{cmd:. forecast estimates klein}{p_end}

{pstd}指定确定其他四个内生变量的四个身份{p_end}
{phang2}{cmd:. forecast identity y = c + i + g}{p_end}
{phang2}{cmd:. forecast identity p = y - t - wp}{p_end}
{phang2}{cmd:. forecast identity k = L.k + i}{p_end}
{phang2}{cmd:. forecast identity w = wg + wp}{p_end}

{pstd}识别四个外生变量{p_end}
{phang2}{cmd:. forecast exogenous wg}{p_end}
{phang2}{cmd:. forecast exogenous g}{p_end}
{phang2}{cmd:. forecast exogenous t}{p_end}
{phang2}{cmd:. forecast exogenous yr}{p_end}

{pstd}显示所有内生变量的信息{p_end}
{phang2}{cmd:. forecast describe endogenous}{p_end}

{pstd}显示已估计方程的信息{p_end}
{phang2}{cmd:. forecast describe estimates}{p_end}

{pstd}获取一步前的预测{p_end}
{phang2}{cmd:. forecast solve, prefix(bl_) begin(1939)}{p_end}

{pstd}显示上述解的信息{p_end}
{phang2}{cmd:. forecast describe estimates}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
当您指定选项 {cmd:brief} 时，仅会存储有限数量的结果。在下表中，(B) 表示即使指定了 {cmd:brief} 也可用的结果。 {cmd:forecast} {cmd:coefvector} 仅在指定了 {cmd:detail} 时保存某些结果；这些结果以 (D) 标识。输入 {cmd:forecast} {cmd:describe} 而不指定方面不会返回任何结果。


{pstd}
{cmd:forecast describe estimates} 在 {cmd:r()} 中存储以下内容：

{synoptset 24 tabbed}{...}
{p2col 5 24 28 2: 标量}{p_end}
{synopt:{cmd:r(n_estimates)} (B)}估计结果的数量{p_end}
{synopt:{cmd:r(n_lhs)}}由估计结果定义的左侧变量的数量{p_end}

{p2col 5 24 28 2: 宏}{p_end}
{synopt:{cmd:r(model)} (B)}预测模型的名称，如果已命名{p_end}
{synopt:{cmd:r(lhs)}}左侧变量{p_end}
{synopt:{cmd:r(estimates)}}估计结果的名称{p_end}


{pstd}
{cmd:forecast} {cmd:describe} {cmd:identity} 在 {cmd:r()} 中存储以下内容：

{p2col 5 24 28 2: 标量}{p_end}
{synopt:{cmd:r(n_identities)} (B)}身份的数量{p_end}

{p2col 5 24 28 2: 宏}{p_end}
{synopt:{cmd:r(model)} (B)}预测模型的名称，如果已命名{p_end}
{synopt:{cmd:r(lhs)}}左侧变量{p_end}
{synopt:{cmd:r(identities)}}身份列表{p_end}


{pstd}
{cmd:forecast} {cmd:describe} {cmd:coefvector} 在 {cmd:r()} 中存储以下内容：

{p2col 5 24 28 2: 标量}{p_end}
{synopt:{cmd:r(n_coefvectors)} (B)}系数向量的数量{p_end}
{synopt:{cmd:r(n_lhs)} (B)}由系数向量定义的左侧变量的数量{p_end}

{p2col 5 24 28 2: 宏}{p_end}
{synopt:{cmd:r(model)} (B)}预测模型的名称，如果已命名{p_end}
{synopt:{cmd:r(lhs)}}左侧变量{p_end}
{synopt:{cmd:r(rhs)} (D)}右侧变量{p_end}
{synopt:{cmd:r(names)}}系数向量的名称{p_end}
{synopt:{cmd:r(Vnames)} (D)}方差矩阵的名称（如果未指定，则为"{cmd:.}"）{p_end}
{synopt:{cmd:r(Enames)} (D)}误差方差矩阵的名称（如果未指定，则为"{cmd:.}"）{p_end}


{pstd}
{cmd:forecast describe exogenous} 在 {cmd:r()} 中存储以下内容：

{p2col 5 24 28 2: 标量}{p_end}
{synopt:{cmd:r(n_exogenous)} (B)}声明的外生变量的数量{p_end}

{p2col 5 24 28 2: 宏}{p_end}
{synopt:{cmd:r(model)} (B)}预测模型的名称，如果已命名{p_end}
{synopt:{cmd:r(exogenous)}}声明的外生变量{p_end}


{pstd}
{cmd:forecast} {cmd:describe} {cmd:endogenous} 在 {cmd:r()} 中存储以下内容：

{p2col 5 24 28 2: 标量}{p_end}
{synopt:{cmd:r(n_endogenous)} (B)}内生变量的数量{p_end}

{p2col 5 24 28 2: 宏}{p_end}
{synopt:{cmd:r(model)} (B)}预测模型的名称，如果已命名{p_end}
{synopt:{cmd:r(varlist)}}内生变量{p_end}
{synopt:{cmd:r(source_list)}}内生变量的来源（{cmd:estimates}、{cmd:identity}、{cmd:coefvector}）{p_end}
{synopt:{cmd:r(adjust_cnt)}}每个内生变量的调整数量{p_end}


{pstd}
{cmd:forecast} {cmd:describe} {cmd:solve} 在 {cmd:r()} 中存储以下内容：

{p2col 5 24 28 2: 标量}{p_end}
{synopt:{cmd:r(periods)}}每个面板的预测期数{p_end}
{synopt:{cmd:r(Npanels)}}预测的面板数量{p_end}
{synopt:{cmd:r(Nvar)}}预测变量的数量{p_end}
{synopt:{cmd:r(damping)}}阻尼高斯-赛德尔的阻尼参数{p_end}
{synopt:{cmd:r(maxiter)}}最大迭代次数{p_end}
{synopt:{cmd:r(vtolerance)}}预测值的容差{p_end}
{synopt:{cmd:r(ztolerance)}}零函数的容差{p_end}
{synopt:{cmd:r(sim_nreps)}}模拟次数{p_end}

{p2col 5 24 28 2: 宏}{p_end}
{synopt:{cmd:r(solved)} (B)}{cmd:solved}，如果模型已经解决{p_end}
{synopt:{cmd:r(model)} (B)}预测模型的名称，如果已命名{p_end}
{synopt:{cmd:r(actuals)}}{cmd:actuals}，如果与 {cmd:forecast} {cmd:solve} 一起指定{p_end}
{synopt:{cmd:r(double)}}{cmd:double}，如果与 {cmd:forecast} {cmd:solve} 一起指定{p_end}
{synopt:{cmd:r(static)}}{cmd:static}，如果与 {cmd:forecast} {cmd:solve} 一起指定{p_end}
{synopt:{cmd:r(begin)}}预测区间的第一期{p_end}
{synopt:{cmd:r(end)}}预测区间的最后一期{p_end}
{synopt:{cmd:r(technique)}}解算器技术{p_end}
{synopt:{cmd:r(sim_technique)}}指定的 {it:sim_technique}{p_end}
{synopt:{cmd:r(prefix)}}预测变量前缀{p_end}
{synopt:{cmd:r(suffix)}}预测变量后缀{p_end}
{synopt:{cmd:r(sim_prefix_}{it:i}{cmd:)}}{it:i}th 模拟统计前缀{p_end}
{synopt:{cmd:r(sim_suffix_}{it:i}{cmd:)}}{it:i}th 模拟统计后缀{p_end}
{synopt:{cmd:r(sim_stat_}{it:i}{cmd:)}}{it:i}th 模拟统计{p_end}


{pstd}
{cmd:forecast} {cmd:describe} {cmd:adjust} 在 {cmd:r()} 中存储以下内容：

{p2col 5 24 28 2: 标量}{p_end}
{synopt:{cmd:r(n_adjustments)} (B)}总调整数{p_end}
{synopt:{cmd:r(n_adjust_vars)} (B)}有调整的变量数量{p_end}

{p2col 5 24 28 2: 宏}{p_end}
{synopt:{cmd:r(model)} (B)}预测模型的名称，如果已命名{p_end}
{synopt:{cmd:r(varlist)}}有调整的变量{p_end}
{synopt:{cmd:r(adjust_cnt)}}每个内生变量的调整数量{p_end}
{synopt:{cmd:r(adjust_list)}}调整列表{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <forecast_describe.sthlp>}