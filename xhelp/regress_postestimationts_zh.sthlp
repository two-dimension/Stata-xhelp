{smcl}
{* *! version 1.1.18  19oct2017}{...}
{viewerdialog estat "dialog regress_estat"}{...}
{vieweralsosee "[R] regress postestimation time series" "mansection R regresspostestimationtimeseries"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[R] regress postestimation" "help regress postestimation"}{...}
{vieweralsosee "[R] regress postestimation diagnostic plots" "help regress postestimation plots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{viewerjumpto "Postestimation commands" "regress postestimationts##description"}{...}
{viewerjumpto "Links to PDF documentation" "regress_postestimationts_zh##linkspdf"}{...}
{viewerjumpto "" "--"}{...}
{viewerjumpto "estat archlm" "regress postestimationts##syntax_estat_archlm"}{...}
{viewerjumpto "estat bgodfrey" "regress postestimationts##syntax_estat_bgodfrey"}{...}
{viewerjumpto "estat durbinalt" "regress postestimationts##syntax_estat_durbinalt"}{...}
{viewerjumpto "estat dwatson" "regress postestimationts##syntax_estat_dwatson"}{...}
{viewerjumpto "" "--"}{...}
{viewerjumpto "Examples" "regress postestimationts##examples"}{...}
{viewerjumpto "Stored results" "regress postestimationts##results"}{...}
{viewerjumpto "References" "regress postestimationts##references"}
{help regress_postestimationts:English Version}
{hline}{...}
{p2colset 1 43 45 2}{...}
{p2col:{bf:[R] regress postestimation time series} {hline 2}}回归的时间序列后验估计工具{p_end}
{p2col:}({mansection R regresspostestimationtimeseries:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验估计命令}

{pstd}
以下是可用于 {cmd:regress} 的时间序列后验估计命令：

{synoptset 19}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt: {helpb regress postestimationts##archlm:estat archlm}}检测残差中的 ARCH 效应{p_end}
{synopt: {helpb regress postestimationts##bgodfrey:estat bgodfrey}}Breusch-Godfrey 高阶序列相关性检验{p_end}
{synopt: {helpb regress postestimationts##durbinalt:estat durbinalt}}Durbin 的序列相关性替代检验{p_end}
{synopt: {helpb regress postestimationts##dwatson:estat dwatson}}Durbin-Watson d 统计量用于检验一阶序列相关性{p_end}
{synopt:{helpb estat sbcusum}}执行参数稳定性的累积和检验{p_end}
{synopt:{helpb estat sbknown}}使用已知的跳变日期进行结构性突破检验{p_end}
{synopt:{helpb estat sbsingle}}使用未知的跳变日期进行结构性突破检验{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
这些命令为时间序列提供回归诊断工具。在使用这些命令之前，您必须使用 {cmd:tsset} 对数据进行设置；有关详细信息，请参见 {manhelp tsset TS}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R regresspostestimationtimeseriesRemarksandexamples:备注和示例}

        {mansection R regresspostestimationtimeseriesMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker archlm}{...}
{marker syntax_estat_archlm}{...}
{title:estat archlm 的语法}

{p 8 17 2}
{cmd:estat archlm} 
[{cmd:,} {it:archlm_options}]

{synoptset 16}
{synopthdr:archlm_options}
{synoptline}
{synopt :{opth l:ags(numlist)}}检测 {it:numlist} 的滞后顺序{p_end}
{synopt :{opt force}}允许在 {cmd:regress,} {cmd:vce(robust)} 之后进行检验{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_estat


{marker des_estat_archlm}{...}
{title:estat archlm 的描述}

{pstd}
{cmd:estat archlm} 执行 Engle 的 Lagrange 乘数检验，以检测自回归条件异方差性。


{marker options_estat_archlm}{...}
{title:estat archlm 的选项}

{phang}
{opth lags(numlist)} 指定一个数字列表，指示要检验的滞后顺序。检验将分别针对每个顺序进行。默认是第一阶。

{phang}
{opt force} 允许在 {cmd:regress,} {cmd:vce(robust)} 后运行检验。如果使用 {help regress_zh} 的 {cmd:vce(cluster} {it:clustvar}{cmd:)} 选项，则命令将无效。


{marker bgodfrey}{...}
{marker syntax_estat_bgodfrey}{...}
{title:estat bgodfrey 的语法}

{p 8 17 2}
{cmd:estat} {opt bgo:dfrey} 
[{cmd:,} {it:bgodfrey_options}]

{synoptset 19}
{synopthdr:bgodfrey_options}
{synoptline}
{synopt :{opth l:ags(numlist)}}检测 {it:numlist} 的滞后订单{p_end}
{synopt :{opt nom:iss0}}不使用 Davidson 和 MacKinnon's 方法{p_end}
{synopt :{opt s:mall}}使用 F 或 t 分布获取 p 值{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_estat


{marker des_estat_bgodfrey}{...}
{title:estat bgodfrey 的描述}

{pstd}
{cmd:estat bgodfrey} 执行 Breusch-Godfrey 检验，以检测扰动中的高阶序列相关性。该检验不要求所有回归变量严格外生。


{marker options_estat_bgodfrey}{...}
{title:estat bgodfrey 的选项}

{phang}
{opth lags(numlist)} 指定一个数字列表，指示要检验的滞后顺序。检验将分别针对每个顺序进行。默认是第一阶。

{phang}
{opt nomiss0} 指定不使用 Davidson 和 MacKinnon's 方法
（{help regress postestimationts##DM1993:1993}, 358），该方法用零替换辅助回归中滞后残差的初始观测缺失值。

{phang}
{opt small} 指定使用 F 或 t 分布获取检验统计量的 p 值，而不是默认的卡方或正态分布。


{marker durbinalt}{...}
{marker syntax_estat_durbinalt}{...}
{title:estat durbinalt 的语法}

{p 8 17 2}
{cmd:estat} {opt dur:binalt} 
[{cmd:,} {it:durbinalt_options}]

{synoptset 21}
{synopthdr:durbinalt_options}
{synoptline}
{synopt :{opth l:ags(numlist)}}检测 {it:numlist} 的滞后订单{p_end}
{synopt :{opt nom:iss0}}不使用 Davidson 和 MacKinnon's 方法{p_end}
{synopt :{opt r:obust}}使用强健/三明治估计器计算标准误{p_end}
{synopt :{opt s:mall}}使用 F 或 t 分布获取 p 值{p_end}
{synopt :{opt force}} 允许在 {cmd:regress,} {cmd:vce(robust)} 或 {cmd:newey} 后执行检验{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_estat


{marker des_estat_durbinalt}{...}
{title:estat durbinalt 的描述}

{pstd}
{cmd:estat durbinalt} 执行 Durbin 的序列相关性替代检验。该检验不要求所有回归变量严格外生。


{marker options_estat_durbinalt}{...}
{title:estat durbinalt 的选项}

{phang}
{opth lags(numlist)} 指定一个数字列表，指示要检验的滞后顺序。检验将分别针对每个顺序进行。默认是第一阶。

{phang}
{opt nomiss0} 指定不使用 Davidson 和 MacKinnon's 方法
（{help regress postestimationts##DM1993:1993}, 358），该方法用零替换辅助回归中滞后残差的初始观测缺失值。

{phang}
{opt robust} 指定在 Durbin 的替代检验中使用 Huber/White/三明治估计量作为方差-协方差矩阵的估计。

{phang}
{opt small} 指定使用 F 或 t 分布获取检验统计量的 p 值，而不是默认的卡方或正态分布。此选项不可与 {cmd:robust} 一起指定，因为 {cmd:robust} 始终使用 F 或 t 分布。

{phang}
{opt force} 允许在 {cmd:regress,} {cmd:vce(robust)} 和 {help newey_zh} 后运行检验。如果使用 {help regress_zh} 的 {cmd:vce(cluster} {it:clustvar}{cmd:)} 选项，则命令将无效。


{marker dwatson}{...}
{marker syntax_estat_dwatson}{...}
{title:estat dwatson 的语法}

{p 8 17 2}
{cmd:estat} {opt dwa:tson}


INCLUDE help menu_estat


{marker des_estat_dwatson}{...}
{title:estat dwatson 的描述}

{pstd}
{cmd:estat dwatson} 计算 Durbin-Watson d 统计量
（{help regress postestimationts##DW1950:Durbin and Watson 1950}），以检测所有回归变量严格外生情况下的扰动中的一阶序列相关性。


{marker examples}{...}
{title:示例}

    {hline}
{phang}{cmd:. webuse klein}{p_end}
{phang}{cmd:. tsset yr}{p_end}
{phang}{cmd:. regress consump wagegovt}{p_end}
{phang}{cmd:. estat dwatson}{p_end}
{phang}{cmd:. estat durbinalt, small}{p_end}
    {hline}
{phang}{cmd:. webuse klein}{p_end}
{phang}{cmd:. tsset yr}{p_end}
{phang}{cmd:. regress consump wagegovt L.consump L2.consump}{p_end}
{phang}{cmd:. estat durbinalt, small lags(1/2)}{p_end}
{phang}{cmd:. estat bgodfrey, small lags(1/2)}{p_end}
    {hline}
{phang}{cmd:. webuse klein}{p_end}
{phang}{cmd:. tsset yr}{p_end}
{phang}{cmd:. regress consump wagegovt}{p_end}
{phang}{cmd:. estat archlm, lags(1 2 3)}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat archlm} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测值的数量{p_end}
{synopt:{cmd:r(k)}}回归变量的数量{p_end}
{synopt:{cmd:r(N_gaps)}}间隙的数量{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(lags)}}滞后顺序{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(arch)}}每个滞后顺序的检验统计量{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}

{pstd}
{cmd:estat bgodfrey} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测值的数量{p_end}
{synopt:{cmd:r(k)}}回归变量的数量{p_end}
{synopt:{cmd:r(N_gaps)}}间隙的数量{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(lags)}}滞后顺序{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(chi2)}}每个滞后顺序的卡方统计量{p_end}
{synopt:{cmd:r(F)}}每个滞后顺序的 F 统计量（仅 {cmd:small}）{p_end}
{synopt:{cmd:r(df_r)}}残差的自由度（仅 {cmd:small}）{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}
{p2colreset}{...}

{pstd}
{cmd:estat durbinalt} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测值的数量{p_end}
{synopt:{cmd:r(k)}}回归变量的数量{p_end}
{synopt:{cmd:r(N_gaps)}}间隙的数量{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(lags)}}滞后顺序{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(chi2)}}每个滞后顺序的卡方统计量{p_end}
{synopt:{cmd:r(F)}}每个滞后顺序的 F 统计量（仅 {cmd:small}）{p_end}
{synopt:{cmd:r(df_r)}}残差的自由度（仅 {cmd:small}）{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}
{p2colreset}{...}

{pstd}
{cmd:estat dwatson} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测值的数量{p_end}
{synopt:{cmd:r(k)}}回归变量的数量{p_end}
{synopt:{cmd:r(N_gaps)}}间隙的数量{p_end}
{synopt:{cmd:r(dw)}}Durbin-Watson 统计量{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker DM1993}{...}
{phang}
Davidson, R., 和 J. G. MacKinnon. 1993.
{browse "http://www.stata.com/bookstore/eie.html":{it:计量经济学中的估计与推断}.}
纽约：牛津大学出版社。

{marker DW1950}{...}
{phang}
Durbin, J., 和 G. S. Watson. 1950. 检验最小二乘回归中的序列相关性 I. {it:Biometrika} 37: 409-428.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <regress_postestimationts.sthlp>}