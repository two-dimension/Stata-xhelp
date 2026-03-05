{smcl}
{* *! version 1.0.8  12feb2019}{...}
{viewerdialog forecast "dialog forecast"}{...}
{vieweralsosee "[TS] forecast solve" "mansection TS forecastsolve"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{vieweralsosee "[TS] forecast adjust" "help forecast adjust"}{...}
{vieweralsosee "[TS] forecast drop" "help forecast drop"}{...}
{vieweralsosee "[R] set seed" "help set seed"}{...}
{viewerjumpto "Syntax" "forecast_solve_zh##syntax"}{...}
{viewerjumpto "Description" "forecast_solve_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "forecast_solve_zh##linkspdf"}{...}
{viewerjumpto "Options" "forecast_solve_zh##options"}{...}
{viewerjumpto "Examples" "forecast_solve_zh##examples"}{...}
{viewerjumpto "Stored results" "forecast_solve_zh##results"}
{help forecast_solve:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[TS] forecast solve} {hline 2}}获取静态和动态预测{p_end}
{p2col:}({mansection TS forecastsolve:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmdab:fore:cast} {cmdab:s:olve}
[{cmd:,}
{c -(} {cmdab:pre:fix(}{it:stub}) | {cmdab:suf:fix(}{it:stub}) {c )-}
{it:options}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {opt pre:fix(string)}}指定预测变量的前缀{p_end}
{p2coldent :* {opt suf:fix(string)}}指定预测变量的后缀{p_end}
{synopt :{opt b:egin(time_constant)}}指定开始预测的时期{p_end}
{p2coldent :+ {opt e:nd(time_constant)}}指定结束预测的时期{p_end}
{p2coldent :+ {opt per:iods(#)}}指定要预测的期间数{p_end}
{synopt : {opt do:uble}}将预测变量存储为 {cmd:double} 而不是 {cmd:float}{p_end}
{synopt :{opt st:atic}}生成静态预测而不是动态预测{p_end}
{synopt :{opt ac:tuals}}如果可用，使用实际值而不是预测值{p_end}

{syntab:模拟}
{synopt :{cmdab:sim:ulate(}{help forecast solve##sim_technique:{it:sim_technique}}{cmd:,} {help forecast solve##sim_statistic:{it:sim_statistic}} {help forecast solve##sim_options:{it:sim_options}}{cmd:)}}指定
   模拟技术和选项{p_end}

{syntab:报告}
{synopt :{opt log(log_level)}}指定日志显示的级别;
{it:log_level} 可以是 {opt de:tail},  {opt on}, {opt br:ief}, 或 {opt of:f}{p_end}

{syntab:求解器}
{synopt: {opt vtol:erance(#)}}指定预测值的容差{p_end}
{synopt: {opt ztol:erance(#)}}指定函数零的容差{p_end}
{synopt: {opt iter:ate(#)}}指定最大迭代次数{p_end}
{synopt: {opt tech:nique(technique)}}指定解决方法; 可以是 
{opt dam:pedgaussseidel} {it:#},
{opt gau:ssseidel},
{opt bro:ydenpowell}, 或 
{opt new:tonraphson}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 您可以指定 {cmd:prefix()} 或 {cmd:suffix()} 但不能两个都指定。{p_end}
{p 4 6 2}
+ 您可以指定 {cmd:end()} 或 {cmd:periods()} 但不能两个都指定。{p_end}

{marker sim_technique}
{synoptset 26}{...}
{synopthdr:sim_technique}
{synoptline}
{synopt :{opt be:tas}}提取多元正态参数向量{p_end}
{synopt :{opt er:rors}}从多元正态分布中提取加性误差{p_end}
{synopt :{opt re:siduals}}根据静态预测误差提取加性残差{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
您可以指定一个或两个 {it:sim_methods} 用空格分隔，但不能同时指定 {cmd:errors} 和 {cmd:residuals}.{p_end}

{marker sim_statistic}
{pstd}
{it:sim_statistic} 是

{phang2}
{cmdab:stat:istic(}{helpb forecast solve##statistic:{it:statistic}}{cmd:,}{...}
	{c -(}{opt pre:fix(string)} | {opt suf:fix(string)}{c )-}{cmd:)}

{pstd}
可以重复最多三次。

{marker statistic}
{synoptset 26}{...}
{synopthdr:statistic}
{synoptline}
{synopt :{opt m:ean}}记录模拟预测的均值{p_end}
{synopt :{opt v:ariance}}记录模拟预测的方差{p_end}
{synopt :{opt s:tddev}}记录模拟预测的标准差{p_end}
{synoptline}

{marker sim_options}
{synopthdr:sim_options}
{synoptline}
{synopt :{opt sa:ving(filename, ...)}}将结果保存到文件; 以双精度保存统计数据; 每 {it:#} 次复制将结果保存到文件名{p_end}
{synopt :{opt nodots}}抑制复制点{p_end}
{synopt :{opt r:eps(#)}}执行 {it:#} 次复制; 默认是 {cmd:reps(50)}{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:forecast} {cmd:solve} 根据当前内存中的模型计算静态或动态预测。在您可以解决模型之前，必须先使用 {cmd:forecast} {cmd:create} 创建一个新模型，并使用 {help forecast_zh:[TS] forecast} 中总结的命令向其添加方程和变量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS forecastsolveQuickstart:快速入门}

        {mansection TS forecastsolveRemarksandexamples:备注和示例}

        {mansection TS forecastsolveMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt prefix(string)} 和 {opt suffix(string)} 指定一个
名称前缀或后缀，将用于命名包含模型中变量的预测值的变量。 您可以指定 {cmd:prefix()}
或 {cmd:suffix()} 但不能两者同时指定。 有时，让所有预测变量以相同的一组字符开头更方便，而其他时候，让所有预测变量以相同的一组字符结尾更方便。

{pmore}
如果您指定 {cmd:prefix(f_)}, 则内生变量 {cmd:x}, {cmd:y}, 和 {cmd:z} 的预测值将存储在新变量 {cmd:f_x}, {cmd:f_y}, 和 {cmd:f_z} 中。  

{pmore} 
如果您指定 {cmd:suffix(_g)}, 则内生变量 {cmd:x}, {cmd:y}, 和 {cmd:z} 的预测值将存储在新变量 {cmd:x_g}, {cmd:y_g}, 和 {cmd:z_g} 中。

{phang}
{opt begin(time_constant)} 请求 {cmd:forecast} 从时期 {it:time_constant} 开始预测。 默认情况下， {cmd:forecast} 自动确定何时开始预测。

{phang}
{opt end(time_constant)} 请求 {cmd:forecast} 在时期 {it:time_constant} 结束预测。 默认情况下， {cmd:forecast} 为数据集中在 {cmd:begin()} 之后的所有时期生成预测。

{phang}
{opt periods(#)} 指定在 {cmd:begin()} 之后的预测期数。 默认情况下， {cmd:forecast} 为数据集中在 {cmd:begin()} 之后的所有时期生成预测。

{phang}
{opt double} 请求将预测和模拟变量存储为双精度。 默认情况下，使用单精度 {opt float}。 有关更多信息，请参阅 {help data_types_zh:[D] 数据类型}。 

{phang}
{cmd:static} 请求生成静态预测。 在模型中出现的滞后内生变量的地方使用变量的实际值。 默认情况下，生成动态预测，动态预测在模型中出现的滞后内生变量的地方使用变量的预测值。 静态预测也称为一步 ahead 预测。

{phang}
{opt actuals} 指定如何处理预测 horizonte 内的非缺失内生变量值。 默认情况下，忽略非缺失值，预测为所有内生变量。 当您指定 {opt actuals} 时， {opt forecast} 设置预测值等于实际值（如果它们是非缺失的）。 其他内生变量的预测随后依赖于已知的具有非缺失数据的内生变量的值。

{dlgtab:模拟}

{phang}
{opt simulate(sim_technique, sim_statistic sim_options)}
允许您模拟您的模型，以获取围绕模型生成的点预测的不确定性度量。 模拟模型涉及多次解决模型，每次考虑与误差项和估计系数向量相关的不确定性。

{phang2}
{it:sim_technique} 可以是 {cmd:betas}, {cmd:errors}, 或 {cmd:residuals}, 或您可以指定 {cmd:betas} 和上述 {cmd:errors} 或 {cmd:residuals} 中的任意一个用空格分隔。 您不能同时指定 {cmd:errors} 和
{cmd:residuals}。 {it:sim_technique} 控制如何将不确定性引入模型。

{phang2}
{it:sim_statistic} 指定总结统计，以总结所有模拟中的预测。 {it:sim_statistic} 形式为

{pmore3}
{cmd:statistic(}{it:statistic}{cmd:,} {c -(}{opt prefix(string)} | 
        {opt suffix(string)}{c )-}{cmd:)}

{pmore2}
其中 {it:statistic} 可以是 {opt mean}, {opt variance}, 或 {opt stddev}。 您可以指定前缀或后缀，用于命名将包含请求的 {it:statistic} 的变量。 您最多可以指定三次 {it:sim_statistic}，以跟踪您的预测的均值、方差和标准偏差。

{phang2}
{it:sim_options} 包括
{opt saving(filename, [suboptions])},
{opt nodots},
和
{opt reps(#)}。

{phang3}
{opt saving(filename, [suboptions])} 创建一个 Stata 数据
文件（{cmd:.dta} 文件），包含模型中每个内生变量的一个包含模拟值的变量。

{pmore3}
{opt double} 指定每个复制的结果作为双精度保存，意味着 8 字节实数。 默认情况下，它们将作为浮点数保存，意味着 4 字节实数。

{pmore3} 
{opt replace} 指定如果 {it:filename} 存在，则被覆盖。

{pmore3}
{opt every(#)} 指定每 {it:#} 次复制将结果写入磁盘。 仅在重复命令时，{cmd:every()} 应结合使用 {cmd:saving()}，当每次复制所需时间较长时。 这将允许在某些其他软件崩溃计算机时恢复部分结果。 参见 {helpb postfile:[P] postfile}。

{phang3}
{opt nodots} 抑制复制点的显示。 默认情况下，对于每次成功复制，显示一个点字符。如果在复制过程中未实现收敛，则 {cmd:forecast} {cmd:solve} 将以错误消息退出。

{phang3}
{opt reps(#)} 请求 {cmd:forecast} {cmd:solve} 执行 {it:#} 次复制； 默认是 {cmd:reps(50)}。  

{dlgtab:报告}

{phang}
{opt log(log_level)} 指定在解决模型时提供的日志级别。 {it:log_level} 可以是 {cmd:detail}, {cmd:on}, {cmd:brief},
或 {cmd:off}。

{pmore}
{cmd:log(detail)} 提供详细的迭代日志，包括每个时期在每个面板（在面板数据的情况下）中解决模型时收敛标准的当前值。

{pmore}
{cmd:log(on)}，默认情况下，提供迭代日志，显示当前面板和解决模型的当前时期，以及每个时期显示的每次迭代的点的序列。

{pmore}
{cmd:log(brief)}，在与时间序列数据集一起使用时，相当于 {cmd:log(on)}。 在与面板数据集一起使用时， {cmd:log(brief)} 生成一个迭代日志，显示当前正在解决的面板，但不显示当前面板中正在解决的时期。

{pmore}
{cmd:log(off)} 请求不生成迭代日志。

{dlgtab:求解器}

{phang}
{opt vtolerance(#)}, {opt ztolerance(#)}, 和 {opt iterate(#)} 控制系统方程的求解器何时停止。 如果指定 {cmd:technique(dampedgaussseidel} {it:#}{cmd:)} 或
{cmd:technique(gaussseidel)}，则会忽略 {cmd:ztolerance()}。 这些选项很少使用。 参见 {help mf_solvenl_zh:[M-5] solvenl()}。

{phang}
{opt technique(technique)} 指定用于求解方程组的技术。 {it:technique} 可以是
{cmd:dampedgaussseidel} {it:#}, {cmd:gaussseidel},
{cmd:broydenpowell}, 或 {cmd:newtonraphson}，
其中 0 < # < 1 指定阻尼的程度，较小的数字表示较少的阻尼。 默认是 {cmd:technique(dampedgaussseidel}
{cmd:0.2)}，在大多数情况下效果良好。 如果您遇到收敛问题，请首先尝试继续使用 {cmd:dampedgaussseidel} {it:#}，但使用更大的阻尼因子。 方法 {cmd:broydenpowell} 和 {cmd:newtonraphson} 通常效果良好，但因为它们需要计算数值导数，因此往往比较慢。 参见 {help mf_solvenl_zh:[M-5] solvenl()}。

{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse gdpoil}{p_end}

{pstd}拟合 VAR 模型并存储估计结果{p_end}
{phang2}{cmd:. var gdp oil, lags(1 2)}{p_end}
{phang2}{cmd:. estimates store var}

{pstd}将数据集延展三年到 2010{p_end}
{phang2}{cmd:. tsappend, add(12)}

{pstd}创建预测模型并获得基线预测{p_end}
{phang2}{cmd:. forecast create oilmodel}{p_end}
{phang2}{cmd:. forecast estimates var}{p_end}
{phang2}{cmd:. forecast solve, prefix(bl_)}{p_end}

{pstd}用我们假设的价格路径填充 {cmd:oil}{p_end}
{phang2}{cmd:. replace oil = 10 if qdate == tq(2008q1)}{p_end}
{phang2}{cmd:. replace oil = 10 if qdate == tq(2008q2)}{p_end}
{phang2}{cmd:. replace oil = 10 if qdate == tq(2008q3)}{p_end}
{phang2}{cmd:. replace oil = 0 if qdate > tq(2008q3)}{p_end}

{pstd}获得条件于 {cmd:oil} 变量的预测，使用前缀 {cmd:alt_} 为这些预测变量{p_end}
{phang2}{cmd:. forecast solve, prefix(alt_) actuals}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. clear all}{p_end}
{phang2}{cmd:. webuse klein2}{p_end}
{phang2}{cmd:. reg3 (c p L.p w) (i p L.p L.k) (wp y L.y yr), endog(w p y)}
        {cmd:exog(t wg g)}{p_end}
{phang2}{cmd:. estimates store klein}{p_end}
{phang2}{cmd:. forecast create kleinmodel}{p_end}
{phang2}{cmd:. forecast estimates klein}{p_end}
{phang2}{cmd:. forecast identity y = c + i + g}{p_end}
{phang2}{cmd:. forecast identity p = y - t - wp}{p_end}
{phang2}{cmd:. forecast identity k = L.k + i}{p_end}
{phang2}{cmd:. forecast identity w = wg + wp}{p_end}
{phang2}{cmd:. forecast exogenous wg}{p_end}
{phang2}{cmd:. forecast exogenous g}{p_end}
{phang2}{cmd:. forecast exogenous t}{p_end}
{phang2}{cmd:. forecast exogenous yr}{p_end}

{pstd}设置 {help set seed:随机数种子} 以便结果可复制{p_end}
{phang2}{cmd:. set seed 1}

{pstd}解决模型，使用前缀 {cmd:d_} 为预测变量，使用前缀 {cmd:sd_} 为预测的标准偏差{p_end}
{phang2}{cmd:. forecast solve, prefix(d_) begin(1936)}
        {cmd:simulate(betas, statistic(stddev, prefix(sd_)) reps(100))}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:forecast solve} 将以下内容存储在 {cmd:r()} 中:

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(first_obs)}}预测范围内的第一观测值{p_end}
{synopt:{cmd:r(last_obs)}}预测范围内的最后观测值（如果预测面板数据，则为第一面板）{p_end}
{synopt:{cmd:r(Npanels)}}预测的面板数量{p_end}
{synopt:{cmd:r(Nvar)}}预测变量的数量{p_end}
{synopt:{cmd:r(vtolerance)}}预测值的容差{p_end}
{synopt:{cmd:r(ztolerance)}}函数零的容差{p_end}
{synopt:{cmd:r(iterate)}}最大迭代次数{p_end}
{synopt:{cmd:r(sim_nreps)}}模拟次数{p_end}
{synopt:{cmd:r(damping)}}阻尼参数用于阻尼的 Gauss-Seidel{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(prefix)}}预测变量前缀{p_end}
{synopt:{cmd:r(suffix)}}预测变量后缀{p_end}
{synopt:{cmd:r(actuals)}}{cmd:actuals}，如果指定{p_end}
{synopt:{cmd:r(static)}}{cmd:static}，如果指定{p_end}
{synopt:{cmd:r(double)}}{cmd:double}，如果指定{p_end}
{synopt:{cmd:r(technique)}}解决方法{p_end}
{synopt:{cmd:r(sim_technique)}}指定的 {it:sim_technique}{p_end}
{synopt:{cmd:r(logtype)}}{cmd:on}, {cmd:off}, {cmd:brief}, 或 {cmd:detail}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <forecast_solve.sthlp>}