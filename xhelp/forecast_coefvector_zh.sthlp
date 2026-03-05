{smcl}
{* *! version 1.1.2  19oct2017}{...}
{viewerdialog forecast "dialog forecast"}{...}
{vieweralsosee "[TS] forecast coefvector" "mansection TS forecastcoefvector"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{vieweralsosee "[TS] forecast solve" "help forecast solve"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "[P] matrix rownames" "help matrix rownames"}{...}
{viewerjumpto "语法" "forecast_coefvector_zh##syntax"}{...}
{viewerjumpto "描述" "forecast_coefvector_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "forecast_coefvector_zh##linkspdf"}{...}
{viewerjumpto "选项" "forecast_coefvector_zh##options"}{...}
{viewerjumpto "示例" "forecast_coefvector_zh##example"}
{help forecast_coefvector:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[TS] forecast coefvector} {hline 2}}通过系数向量指定方程{p_end}
{p2col:}({mansection TS forecastcoefvector:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmdab:fore:cast} {cmdab:co:efvector} {it:cname}
[{cmd:,} {it:options}]

{phang}
{it:cname} 是一个包含一行的 Stata 矩阵。

{synoptset 26}{...}
{synopthdr}
{synoptline}
{synopt :{opt v:ariance(vname)}}指定参数方差矩阵{p_end}
{synopt :{opt err:orvariance(ename)}}指定加性误差方差矩阵{p_end}
{synopt :{cmdab:na:mes(}{it:namelist}[{cmd:, replace}]{cmd:)}}使用 {it:namelist} 作为左侧变量的名称{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:forecast coefvector} 将作为系数向量存储的方程添加到您的预测模型中。通常，方程是使用 {cmd:forecast estimates} 和 {cmd:forecast identity} 添加的。
{cmd:forecast coefvector} 用于不太常见的情况，即您有一个表示线性方程的参数向量。

{pstd}
大多数使用 {cmd:forecast} 命令的用户都不需要使用 {cmd:forecast coefvector}。
我们建议在熟悉 {cmd:forecast} 的其他功能之前跳过此手册条目。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS forecastcoefvectorQuickstart:快速入门}

        {mansection TS forecastcoefvectorRemarksandexamples:备注和示例}

        {mansection TS forecastcoefvectorMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt variance(vname)} 指定 Stata 矩阵 {it:vname} 包含估计参数的方差矩阵。此选项仅在您调用 {cmd:forecast} {cmd:solve} 时指定了 {cmd:simulate()} 选项以及请求 {it:sim_technique} 的 {cmd:betas} 或 {cmd:residuals} 时有效。请参阅 {helpb forecast solve:[TS] forecast solve}。

{phang} 
{opt errorvariance(ename)} 指定正在添加的方程包括一个方差为 {it:ename} 的加性误差项，其中 {it:ename} 是 Stata 矩阵的名称。 {it:ename} 的行数和列数必须与系数向量 {it:cname} 所表示的方程数量相匹配。此选项仅在您调用 {cmd:forecast} {cmd:solve} 时指定了 {cmd:simulate()} 选项以及请求 {it:sim_technique} 的 {cmd:errors} 或 {cmd:residuals} 时有效。请参阅 {helpb forecast solve:[TS] forecast solve}。

{phang}
{cmd:names(}{it:namelist}[{cmd:, replace}]{cmd:)} 指示 {cmd:forecast} {cmd:coefvector} 使用 {it:namelist} 作为添加的系数向量中左侧变量的名称。默认情况下，{cmd:forecast} {cmd:coefvector} 使用 {it:cname} 的列条带上的方程名称。如果 {it:cname} 中的任何方程名称包含时间序列操作符，则必须使用此选项。  


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. set obs 20}{p_end}
{phang2}{cmd:. generate t = _n}{p_end}
{phang2}{cmd:. tsset t}{p_end}
{phang2}{cmd:. generate y = 0}{p_end}

{pstd}创建系数向量{p_end}
{phang2}{cmd:. matrix y = (.9, -.6, 0.3)}{p_end}
{phang2}{cmd:. matrix coleq y = y:L.y y:L2.y y:L3.y}{p_end}

{pstd}创建预测模型并添加 {cmd:y}{p_end}
{phang2}{cmd:. forecast create}{p_end}
{phang2}{cmd:. forecast coefvector y}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <forecast_coefvector.sthlp>}