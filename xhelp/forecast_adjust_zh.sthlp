{smcl}
{* *! version 1.0.4  19oct2017}{...}
{viewerdialog forecast "dialog forecast"}{...}
{vieweralsosee "[TS] forecast adjust" "mansection TS forecastadjust"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{vieweralsosee "[TS] forecast solve" "help forecast solve"}{...}
{viewerjumpto "Syntax" "forecast_adjust_zh##syntax"}{...}
{viewerjumpto "Description" "forecast_adjust_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "forecast_adjust_zh##linkspdf"}{...}
{viewerjumpto "Examples" "forecast_adjust_zh##examples"}{...}
{viewerjumpto "Stored results" "forecast_adjust_zh##results"}
{help forecast_adjust:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[TS] forecast adjust} {hline 2}}调整变量，通过加法、替换等方式。{p_end}
{p2col:}({mansection TS forecastadjust:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmdab:fore:cast} {cmdab:ad:just}
{it:varname} {cmd:=} {it:exp}
{ifin}

{phang}
{it:varname} 是一个内生变量的名称，该变量之前已经使用 {cmd:forecast estimates} 或 {cmd:forecast coefvector} 添加到模型中。

{phang}
{it:exp} 表示一个Stata表达式；请参见 {help exp_zh:help exp}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:forecast adjust} 指定对模型中的内生变量应用的调整。调整通常用于生成替代的预测场景或将外部信息整合到模型中。例如，您可以使用 {cmd:forecast adjust} 在宏观经济模型中模拟石油价格冲击的影响，假设石油价格在某个季度比模型的预测高出50美元。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS forecastadjustQuickstart:快速入门}

        {mansection TS forecastadjustRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse klein2}{p_end}
{phang2}{cmd:. reg3 (c p L.p w) (i p L.p L.k) (wp y L.y yr)}
        {cmd:if year < 1939, endog(w p y) exog(t wg g)}{p_end}
{phang2}{cmd:. estimates store klein}{p_end}

{pstd}创建新的预测模型{p_end}
{phang2}{cmd:. forecast create kleinmodel}

{pstd}将通过 {cmd:reg3} 拟合的随机方程添加到 {cmd:kleinmodel}{p_end}
{phang2}{cmd:. forecast estimates klein}{p_end}

{pstd}指定决定我们模型中其他四个内生变量的四个身份{p_end}
{phang2}{cmd:. forecast identity y = c + i + g}{p_end}
{phang2}{cmd:. forecast identity p = y - t - wp}{p_end}
{phang2}{cmd:. forecast identity k = L.k + i}{p_end}
{phang2}{cmd:. forecast identity w = wg + wp}{p_end}

{pstd}识别四个外生变量{p_end}
{phang2}{cmd:. forecast exogenous wg}{p_end}
{phang2}{cmd:. forecast exogenous g}{p_end}
{phang2}{cmd:. forecast exogenous t}{p_end}
{phang2}{cmd:. forecast exogenous yr}{p_end}

{pstd}获取一步ahead预测{p_end}
{phang2}{cmd:. forecast solve, prefix(bl_) begin(1939)}{p_end}

{pstd}模拟1939年投资的增加{p_end}
{phang2}{cmd:. forecast adjust i = i + 1 if year == 1939}

{pstd}将投资税收抵免模型化为两年而不是一年{p_end}
{phang2}{cmd:. forecast adjust i = i + 1 if year == 1939}{p_end}
{phang2}{cmd:. forecast adjust i = i + 1 if year == 1940}{p_end}

{pstd}与上述相同，但在一个命令中指定{p_end}
{phang2}{cmd:. forecast adjust i = i + 1 if year == 1939 | year == 1940}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:forecast adjust} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2:宏}{p_end}
{synopt:{cmd:r(lhs)}}左侧（内生）变量{p_end}
{synopt:{cmd: r(rhs)}}身份的右侧{p_end}
{synopt:{cmd:r(basenames)}}在右侧发现的变量的基本名称{p_end}
{synopt:{cmd:r(fullnames)}}在右侧发现的变量的全名{p_end}
{p2colreset}{...}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <forecast_adjust.sthlp>}