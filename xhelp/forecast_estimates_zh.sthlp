{smcl}
{* *! version 1.0.4  19oct2017}{...}
{viewerdialog forecast "dialog forecast"}{...}
{vieweralsosee "[TS] forecast estimates" "mansection TS forecastestimates"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estimates" "help estimates_zh"}{...}
{vieweralsosee "[R] predict" "help predict_zh"}{...}
{viewerjumpto "Syntax" "forecast_estimates_zh##syntax"}{...}
{viewerjumpto "Description" "forecast_estimates_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "forecast_estimates_zh##linkspdf"}{...}
{viewerjumpto "Options" "forecast_estimates_zh##options"}{...}
{viewerjumpto "Examples" "forecast_estimates_zh##examples"}
{help forecast_estimates:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[TS] forecast estimates} {hline 2}}将估计结果添加到预测模型{p_end}
{p2col:}({mansection TS forecastestimates:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
将当前内存中的估计结果添加到模型

{p 8 15 2}
{cmdab:fore:cast} {cmdab:est:imates}
{it:name}
[{cmd:,} {it:{help forecast estimates##opt_table:选项}}]

{phang}
{it:name} 是一个存储的估计结果的名称；请参见 {helpb estimates store:[R] estimates store}。


{pstd}
将当前磁盘中保存的估计结果添加到模型

{p 8 15 2}
{cmdab:fore:cast} {cmdab:est:imates} 
{cmd:using} {it:filename}
[{cmd:,}
{opt nu:mber(#)}
{it:{help forecast estimates##opt_table:选项}}]

{phang}
{it:filename} 是由 {cmd:estimates save} 创建的估计结果文件；请参见 {helpb estimates save:[R] estimates save}。如果未指定文件扩展名，将假设为 {.ster}。


{marker opt_table}{...}
{synoptset 26}{...}
{synopthdr}
{synoptline}
{synopt:{opt pr:edict(p_options)}}调用 {cmd:predict} 采用 {it:p_options}{p_end}
{synopt:{cmdab:na:mes(}{it:namelist}[{cmd:, replace}]{cmd:)}}使用 {it:namelist} 作为左侧变量的名称{p_end}
{synopt:{opt ad:vise}}建议是否可以从内存中删除估计结果{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:forecast} {cmd:estimates} 将估计结果添加到当前内存中的预测模型。您必须首先使用 {cmd:forecast} {cmd:create} 创建一个新模型，然后才能使用 {cmd:forecast} {cmd:estimates} 添加估计结果。在估计方程或方程组的参数后，您必须使用 {cmd:estimates} {cmd:store} 将估计结果存储在内存中，或使用 {cmd:estimates} {cmd:save} 将它们保存到磁盘，然后才能将其添加到模型中。  


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS forecastestimatesQuickstart:快速开始}

        {mansection TS forecastestimatesRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt predict(p_options)} 指定预测因子时要使用的 {cmd:predict} 选项。对于单方程估计命令，您只需指定合适的选项传递给 {cmd:predict}。如果需要多个选项，请将它们放在引号中：

{phang2}
{cmd:. forecast estimates ..., predict("pr outcome(#1)")}

{pmore}
对于多个方程估计命令，您可以指定一个适用于所有方程的选项集，或指定 {it:p} 选项，其中 {it:p} 是要添加的内生变量的数量。如果每个方程需要多个选项，请将每个方程的选项用引号括起来：

{phang2}
{cmd:. forecast estimates ..., predict("pr eq(#1)" "pr eq(#2)")}

{pmore}
如果您未为任一方程指定 {cmd:eq()} 选项， {cmd:forecast} 会自动为您包括它。

{pmore}
如果您添加的是 {cmd:forecast} 识别为一个可以计算为 x_t'b 的线性估计命令的结果，请不要指定 {cmd:predict()} 选项，因为这会显著降低 {cmd:forecast} 的计算速度。使用 {cmd:advise} 选项来确定 {cmd:forecast} 是否需要调用 {cmd:predict}。

{pmore}
如果您未指定任何 {cmd:predict} 选项， {cmd:forecast} 会使用所添加命令的默认预测类型。

{phang}
{cmd:names(}{it:namelist}[{cmd:, replace}]{cmd:)} 指示 {cmd:forecast} {cmd:estimates} 使用 {it:namelist} 作为要添加的估计结果中的左侧变量名称。如果任何左侧变量包含时间序列操作符，则必须使用此选项。默认情况下， {cmd:forecast} {cmd:estimates} 使用要添加的结果中的 {cmd:e(depvar)} 宏中存储的名称。

{pmore}
{cmd:forecast estimates} 为数据集中每个 {it:namelist} 元素创建一个新变量。如果数据集中已经存在相同名称的变量，除非您指定 {cmd:replace} 选项， {cmd:forecast} {cmd:estimates} 会因错误而退出，在这种情况下现有变量会被覆盖。

{phang}
{cmd:advise} 请求 {cmd:forecast} {cmd:estimates} 报告一条消息，指示所添加的估计结果是否可以从内存中删除。此选项在您期望模型包含超过 300 组估计结果的情况下非常有用，Stata 允许您在内存中存储的最大数量；请参见 {help limits_zh}。此选项还可以指示模型的求解速度：如果估计结果必须保留在内存中， {cmd:forecast} 的执行速度会显著降低。 

{phang}
{opt number(#)} 用于 {cmd:forecast} {cmd:estimates} {cmd:using}，指定从 {it:filename} 加载的第 {it:#} 组估计结果。这假设在 {it:filename} 中保存了多个估计结果集。默认情况下为 {cmd:number(1)}。有关在单个文件中保存多个估计结果集的更多信息，请参见 {helpb estimates save:[R] estimates save}。   


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse klein2}{p_end}
{phang2}{cmd:. reg3 (c p L.p w) (i p L.p L.k) (wp y L.y yr)}
        {cmd:if year < 1939, endog(w p y) exog(t wg g)}{p_end}
{phang2}{cmd:. estimates store klein}{p_end}

{pstd}创建一个新的预测模型{p_end}
{phang2}{cmd:. forecast create kleinmodel}

{pstd}将使用 {cmd:reg3} 拟合的随机方程添加到 {cmd:kleinmodel}{p_end}
{phang2}{cmd:. forecast estimates klein}{p_end}

{pstd}将 {cmd:advise} 添加到上述命令，以显示特别代码，以快速获取 {cmd:reg3} 结果的预测{p_end}
{phang2}{cmd:. forecast estimates klein, advise}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <forecast_estimates.sthlp>}