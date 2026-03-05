{smcl}
{* *! version 1.1.6  11may2018}{...}
{viewerdialog forecast "dialog forecast"}{...}
{vieweralsosee "[TS] forecast identity" "mansection TS forecastidentity"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{viewerjumpto "Syntax" "forecast_identity_zh##syntax"}{...}
{viewerjumpto "Description" "forecast_identity_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "forecast_identity_zh##linkspdf"}{...}
{viewerjumpto "Options" "forecast_identity_zh##options"}{...}
{viewerjumpto "Examples" "forecast_identity_zh##examples"}{...}
{viewerjumpto "Stored results" "forecast_identity_zh##results"}
{help forecast_identity:English Version}
{hline}{...}
{p2colset 1 27 26 2}{...}
{p2col:{bf:[TS] forecast identity} {hline 2}}向预测模型添加一个身份{p_end}
{p2col:}({mansection TS forecastidentity:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmdab:fore:cast} {cmdab:id:entity} {it:varname} {cmd:=} {it:{help exp_zh}}
    [{cmd:,} {it:options}]

{synoptset 12 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{synopt :{opt gen:erate}}创建新变量 {it:varname}{p_end}
{p2coldent :* {opt do:uble}}将新变量存储为 {cmd:double} 而不是 {cmd:float}{p_end}
{synoptline}
{p 4 6 2}{it:varname} 是要添加到预测模型中的内生变量名称。{p_end}
{p 4 6 2}* 只有在指定了 {opt generate} 时才能指定 {opt double} 。{p_end}


{marker description}{...}
{title:描述}

{pstd}
{cmd:forecast} {cmd:identity} 向当前内存中的预测模型添加一个身份。您必须首先使用 {cmd:forecast} {cmd:create} 创建一个新模型，然后才能使用 {cmd:forecast} {cmd:identity} 添加身份。身份是一个非随机方程，它将模型中的内生变量表示为模型中其他变量的函数。身份通常描述基于会计身份或加总条件的内生变量的行为。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS forecastidentityQuickstart:快速开始}

        {mansection TS forecastidentityRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt generate} 指定根据当前数据集中所有观察的 {it:{help exp_zh}} 创建新变量 {it:varname}。

{phang}
{opt double} 与 {opt generate} 选项一起使用，请求将新变量创建为 {cmd:double} 而不是 {cmd:float}。有关详细信息，请参见 {helpb data types:[D] 数据类型}。


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

{pstd}指定决定我们模型中其他四个内生变量的四个身份{p_end}
{phang2}{cmd:. forecast identity y = c + i + g}{p_end}
{phang2}{cmd:. forecast identity p = y - t - wp}{p_end}
{phang2}{cmd:. forecast identity k = L.k + i}{p_end}
{phang2}{cmd:. forecast identity w = wg + wp}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:forecast} {cmd:identity} 在 {cmd:r()} 中存储以下内容：

{synoptset 16 tabbed}{...}
{p2col 5 16 20 2: 宏}{p_end}
{synopt:{cmd:r(lhs)}}左侧（内生）变量{p_end}
{synopt:{cmd:r(rhs)}}身份的右侧{p_end}
{synopt:{cmd:r(basenames)}}在右侧找到的变量的基本名称{p_end}
{synopt:{cmd:r(fullnames)}}在右侧找到的变量的完整名称{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <forecast_identity.sthlp>}