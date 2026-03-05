{smcl}
{* *! version 1.2.9  20jun2019}{...}
{vieweralsosee "[XT] xt" "mansection XT xt"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Description" "xt_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xt_zh##linkspdf"}{...}
{viewerjumpto "Example" "xt_zh##example"}
{help xt:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[XT] xt} {hline 2}}xt 命令简介{p_end}
{p2col:}({mansection XT xt:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
xt 系列命令提供用于分析面板数据的工具（也称为纵向数据或在某些学科中带有明确时间成分时称为横截面时间序列）。面板数据集的形式为 {bf:x}_[it]，其中 {bf:x}_[it] 是单元 i 和时间 t 的观察向量。特定的命令（如 {cmd:xtdescribe}、{cmd:xtsum} 和 {cmd:xtreg}）在本条目之后按字母顺序进行文档说明。如果您不知道需要的命令名称，请尝试浏览本描述部分的第二部分，该部分按主题组织 xt 命令。{it:{mansection XT xtRemarksandexamples:备注和示例}}描述了在命令间普遍存在的概念。

{pstd}
{cmd:xtset} 命令用于设置面板变量和时间变量；请参阅 {help xtset_zh:[XT] xtset}。大多数 xt 命令要求指定面板变量，某些命令还要求指定时间变量。一旦您 {cmd:xtset} 数据，就无需再次执行。{cmd:xtset} 信息将与您的数据一起存储。

{pstd}
如果您之前已通过使用面板和时间变量同时 {cmd:tsset} 数据，则这些设置将被 {cmd:xtset} 识别，您无需 {cmd:xtset} 数据。

{pstd}
如果您关注的是一般的时间序列分析，请参阅 {findalias frestts} 和 {it:{mansection TS tsTimeSeries:时间序列参考手册}}。如果您关注的是多层混合效应模型，请参见 {it:{mansection ME meMultilevelMixedEffects:多层混合效应参考手册}}。如果您对面板数据的 SAR（空间自回归或同时自回归）模型感兴趣，请参见 {manhelp spxtregress SP}。如果您对解决内生协变量、非随机处理分配和内生样本选择的扩展面板数据回归模型感兴趣，请参见 {it:{mansection ERM ermExtendedRegression:扩展回归模型参考手册}}。


    {title:设置}

{p 8 26 2}{help xtset_zh} {space 6} 声明数据为面板数据{p_end}


    {title:数据管理与探索工具}

{p 8 26 2}{help xtdescribe_zh} {space 1} 描述 xt 数据的模式{p_end}
{p 8 26 2}{help xtsum_zh} {space 6} 汇总 xt 数据{p_end}
{p 8 26 2}{help xttab_zh} {space 6} 列出 xt 数据{p_end}
{p 8 26 2}{help xtdata_zh} {space 5} 使用 xt 数据进行更快的规格搜索{p_end}
{p 8 26 2}{help xtline_zh} {space 5} 面板数据线性图{p_end}


    {title:线性回归估计量}

{p 8 26 2}{help xtreg_zh} {space 6} 固定效应、之间效应、随机效应和总体平均线性模型{p_end}
{p 8 26 2}{help xtregar_zh} {space 4} 带有 AR(1) 干扰项的固定效应和随机效应线性模型{p_end}
{p 8 26 2}{help xtgls_zh} {space 6} 使用 GLS 拟合面板数据模型{p_end}
{p 8 26 2}{help xtpcse_zh} {space 5} 面板校正标准误差的线性回归{p_end}
{p 8 26 2}{help xthtaylor_zh} {space 2} Hausman-Taylor 估计量用于误差成分模型{p_end}
{p 8 26 2}{help xtfrontier_zh} {space 1} 面板数据的随机边界模型{p_end}
{p 8 26 2}{help xtrc_zh} {space 7} 随机系数模型{p_end}
{p 8 26 2}{help xtivreg_zh} {space 4} 面板数据模型的工具变量和两阶段最小二乘法{p_end}
{p 8 26 2}{help xtheckman_zh} {space 2} 带样本选择的随机效应回归{p_end}
{p 8 26 2}{helpb xteregress} {space 1} 带内生协变量、处理和样本选择的随机效应模型{p_end}


    {title:单位根检验}

{p 8 26 2}{help xtunitroot_zh} {space 1} 面板数据单位根检验{p_end}


    {title:协整检验}

{p 8 26 2}{help xtcointtest_zh} {space 1} 面板数据协整检验{p_end}


    {title:动态面板数据估计量}

{p 8 26 2}{help xtabond_zh} {space 4} Arellano-Bond 线性动态面板数据估计{p_end}
{p 8 26 2}{help xtdpd_zh} {space 6} 线性动态面板数据估计{p_end}
{p 8 26 2}{help xtdpdsys_zh} {space 3} Arellano-Bover/Blundell-Bond 线性动态面板数据估计{p_end}


    {title:截尾结果估计量}

{p 8 26 2}{help xttobit_zh} {space 4} 随机效应 tobit 模型{p_end}
{p 8 26 2}{help xtintreg_zh} {space 3} 随机效应区间数据回归模型{p_end}
{p 8 26 2}{helpb xteintreg} {space 2} 带内生协变量、处理和样本选择的随机效应区间数据回归模型{p_end}


    {title:二元结果估计量}

{p 8 26 2}{help xtlogit_zh} {space 4} 固定效应、随机效应和总体平均 logit 模型{p_end}
{p 8 26 2}{help xtprobit_zh} {space 3} 随机效应和总体平均 probit 模型{p_end}
{p 8 26 2}{help xtcloglog_zh}{space 4} 随机效应和总体平均 cloglog 模型{p_end}
{p 8 26 2}{helpb xteprobit} {space 2} 带内生协变量、处理和样本选择的随机效应 probit 模型{p_end}


    {title:有序结果估计量}

{p 8 26 2}{help xtologit_zh} {space 4} 随机效应有序逻辑模型{p_end}
{p 8 26 2}{help xtoprobit_zh} {space 3} 随机效应有序 probit 模型{p_end}
{p 8 26 2}{helpb xteoprobit} {space 2} 带内生协变量、处理和样本选择的随机效应有序 probit 模型{p_end}


    {title:计数数据估计量}

{p 8 26 2}{help xtpoisson_zh}{space 4}固定效应、随机效应和总体平均 Poisson 模型{p_end}
{p 8 26 2}{help xtnbreg_zh} {space 4} 固定效应、随机效应和总体平均负二项模型{p_end}


    {title:生存时间估计量}

{p 8 26 2}{help xtstreg_zh}{space 6}随机效应参数化生存模型{p_end}


    {title:广义估计方程估计量}

{p 8 26 2}{help xtgee_zh} {space 6} 使用 GEE 的总体平均面板数据模型{p_end}


    {title:实用工具}

{p 8 26 2}{help quadchk_zh} {space 4} 检查四重积分近似的灵敏度{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker example}{...}
{title:示例}

{pstd}
一个 xt 数据集：

	 pid  yr_visit  fev  age  sex   height  smokes
	{hline 46}
	1071    1991   1.21   25   1      69       0
	1071    1992   1.52   26   1      69       0
	1071    1993   1.32   28   1      68       0
	1072    1991   1.33   18   1      71       1
	1072    1992   1.18   20   1      71       1
	1072    1993   1.19   21   1      71       0

{pstd}
其他 xt 命令需要知道识别患者和时间的变量标识。您可以输入

	{cmd:. xtset pid yr_visit}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xt.sthlp>}