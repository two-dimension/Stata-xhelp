{smcl}
{* *! version 1.0.6  19oct2017}{...}
{viewerdialog forecast "dialog forecast"}{...}
{vieweralsosee "[TS] forecast" "mansection TS forecast"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ivregress" "help ivregress_zh"}{...}
{vieweralsosee "[R] reg3" "help reg3_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "forecast_zh##syntax"}{...}
{viewerjumpto "Description" "forecast_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "forecast_zh##linkspdf"}{...}
{viewerjumpto "Examples" "forecast_zh##examples"}{...}
{viewerjumpto "Video example" "forecast_zh##video"}
{help forecast:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[TS] forecast} {hline 2}}计量经济模型预测{p_end}
{p2col:}({mansection TS forecast:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:forecast} {it:subcommand} ... [{cmd:,} {it:options}]

{synoptset 16}{...}
{synopthdr:子命令}
{synoptline}
{synopt :{helpb forecast create:create}}创建一个新的模型{p_end}
{synopt :{helpb forecast estimates:estimates}}将估计结果添加到当前模型{p_end}
{synopt :{helpb forecast identity:identity}}指定一个恒等式（非随机方程）{p_end}
{synopt :{helpb forecast coefvector:coefvector}}通过系数向量指定方程{p_end}
{synopt :{helpb forecast exogenous:exogenous}}声明外生变量{p_end}
{synopt :{helpb forecast solve:solve}}获得一步前或动态预测{p_end}
{synopt :{helpb forecast adjust:adjust}}通过加法、替换等调整变量{p_end}
{synopt :{helpb forecast describe:describe}}描述模型{p_end}
{synopt :{helpb forecast list:list}}列出构成当前模型的所有 {cmd:forecast} 命令{p_end}
{synopt :{helpb forecast clear:clear}}从内存中清除当前模型{p_end}
{synopt :{helpb forecast drop:drop}}删除预测变量{p_end}
{synopt :{helpb forecast query:query}}检查是否已启动预测模型{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:forecast} 是一系列命令，用于通过解决模型来获得预测，模型是共同决定一个或多个变量结果的方程集合。方程可以是使用估计命令（如 {cmd:regress}、{cmd:ivregress}、{cmd:var} 或 {cmd:reg3}）拟合的随机关系；也可以是将一个变量表达为其他变量的确定性函数的非随机关系，称为恒等式。预测模型也可以包括其值已经被已知或被外部因素决定的外生变量。{cmd:forecast} 命令还可以用于单方程模型中获得动态预测。

{pstd}
{cmd:forecast} 套件允许您通过使用附加因子和类似设备将外部信息纳入预测中，并且您可以指定一些模型变量的未来路径，并在该路径上获得其他变量的预测。每组预测变量都有自己的名称前缀或后缀，因此您可以比较基于不同情景的预测。可以通过随机模拟获得预测的置信区间，并且可以结合参数不确定性和附加误差项。

{pstd}
{cmd:forecast} 可与时间序列和面板数据集一起使用。时间序列数据集不得包含任何缺失，而面板数据集必须是强平衡的。

{pstd}
本手册条目提供了预测模型的概述和多个示例，展示了如何将 {cmd:forecast} 命令组合使用。有关可用的各种选项和特定子命令的说明，请参阅各个子命令的手册条目。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS forecastQuickstart:快速入门}

        {mansection TS forecastRemarksandexamples:备注和示例}

{pstd}
上述章节不包括在此帮助文件中。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse klein2}{p_end}
{phang2}{cmd:. reg3 (c p L.p w) (i p L.p L.k) (wp y L.y yr)}
        {cmd:if year < 1939, endog(w p y) exog(t wg g)}{p_end}
{phang2}{cmd:. estimates store klein}{p_end}

{pstd}创建一个新的预测模型{p_end}
{phang2}{cmd:. forecast create kleinmodel}

{pstd}将使用 {cmd:reg3} 拟合的随机方程添加到 {cmd:kleinmodel}{p_end}
{phang2}{cmd:. forecast estimates klein}{p_end}

{pstd}指定决定我们模型中其他四个内生变量的四个恒等式{p_end}
{phang2}{cmd:. forecast identity y = c + i + g}{p_end}
{phang2}{cmd:. forecast identity p = y - t - wp}{p_end}
{phang2}{cmd:. forecast identity k = L.k + i}{p_end}
{phang2}{cmd:. forecast identity w = wg + wp}{p_end}

{pstd}识别四个外生变量{p_end}
{phang2}{cmd:. forecast exogenous wg}{p_end}
{phang2}{cmd:. forecast exogenous g}{p_end}
{phang2}{cmd:. forecast exogenous t}{p_end}
{phang2}{cmd:. forecast exogenous yr}{p_end}

{pstd}获得动态预测{p_end}
{phang2}{cmd:. forecast solve, prefix(bl_) begin(1939)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. clear all}{p_end}
{phang2}{cmd:. webuse hardware}{p_end}
{phang2}{cmd:. generate lndim = ln(dim)}{p_end}
{phang2}{cmd:. generate lngdp = ln(gdp)}{p_end}
{phang2}{cmd:. generate lnstarts = ln(starts)}{p_end}
{phang2}{cmd:. regress D.lndim lnstarts D.lngdp unrate if qdate <=}
           {cmd:tq(2009q4)}{p_end}
{phang2}{cmd:. estimates store dim}{p_end}
{phang2}{cmd:. regress sheet dim D.lngdp unrate if qdate <= tq(2009q4)}{p_end}
{phang2}{cmd:. estimates store sheet}{p_end}
{phang2}{cmd:. regress misc dim D.lngdp unrate if qdate <= tq(2009q4)}{p_end}
{phang2}{cmd:. estimates store misc}{p_end}

{pstd}创建一个名为 {cmd:salesfcast} 的新预测模型，并添加那两个方程{p_end}
{phang2}{cmd:. forecast create salesfcast}{p_end}
{phang2}{cmd:. forecast estimates sheet}{p_end}
{phang2}{cmd:. forecast estimates misc}{p_end}

{pstd}使用 {cmd:forecast} {cmd:estimates} 的 {cmd:names()} 选项为添加的内生变量指定一个有效名称{p_end}
{phang2}{cmd:. forecast estimates dim, names(dlndim)}

{pstd}指定一个恒等式以逆转一阶差分{p_end}
{phang2}{cmd:. forecast identity lndim = L.lndim + dlndim}

{pstd}指定另一个恒等式以从 {cmd:lndim} 获得 {cmd:dim}{p_end}
{phang2}{cmd:. forecast identity dim = exp(lndim)}

{pstd}解决模型，获得从2010年第一季度开始的动态预测，并使用 {cmd:log(off)}  suppress 迭代日志{p_end}
{phang2}{cmd:. forecast solve, begin(tq(2010q1)) log(off)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. clear all}{p_end}
{phang2}{cmd:. webuse statehardware}{p_end}
{phang2}{cmd:. generate lndim = ln(dim)}{p_end}
{phang2}{cmd:. generate lnstarts = ln(starts)}{p_end}
{phang2}{cmd:. xtreg D.lndim lnstarts rgspgrowth unrate if qdate <= tq(2009q4),}
           {cmd:fe}{p_end}
{phang2}{cmd:. predict dlndim_u, u}{p_end}
{phang2}{cmd:. estimates store dim}{p_end}
{phang2}{cmd:. xtreg sheet dim rgspgrowth unrate if qdate <= tq(2009q4),}
           {cmd:fe}{p_end}
{phang2}{cmd:. predict sheet_u, u}{p_end}
{phang2}{cmd:. estimates store sheet}{p_end}
{phang2}{cmd:. xtreg misc dim rgspgrowth unrate if qdate <= tq(2009q4),}
           {cmd:fe}{p_end}
{phang2}{cmd:. predict misc_u, u}{p_end}
{phang2}{cmd:. estimates store misc}

{pstd}扩展面板级效应的估计到预测范围{p_end}
{phang2}{cmd:. by state: egen dlndim_u2 = mean(dlndim_u)}{p_end}
{phang2}{cmd:. by state: egen sheet_u2 = mean(sheet_u)}{p_end}
{phang2}{cmd:. by state: egen misc_u2 = mean(misc_u)}

{pstd}定义预测模型，包括估计的面板特定项{p_end}
{phang2}{cmd:. forecast create statemodel}{p_end}
{phang2}{cmd:. forecast estimates dim, name(dlndim)}{p_end}
{phang2}{cmd:. forecast adjust dlndim = dlndim + dlndim_u2}{p_end}
{phang2}{cmd:. forecast identity lndim = L.lndim + dlndim}{p_end}
{phang2}{cmd:. forecast identity dim = exp(lndim)}{p_end}
{phang2}{cmd:. forecast estimates sheet}{p_end}
{phang2}{cmd:. forecast adjust sheet = sheet + sheet_u2}{p_end}
{phang2}{cmd:. forecast estimates misc}{p_end}
{phang2}{cmd:. forecast adjust misc = misc + misc_u2}

{pstd}解决模型，获得从2010年第一季度开始的动态预测{p_end}
{phang2}{cmd:. forecast solve, begin(tq(2010q1))}{p_end}

    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=wx3lyVGYDic&feature=youtu.be":预测概述}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <forecast.sthlp>}