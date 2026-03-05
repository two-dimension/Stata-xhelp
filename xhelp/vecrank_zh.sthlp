{smcl}
{* *! version 1.1.15  12feb2019}{...}
{viewerdialog vecrank "dialog vecrank"}{...}
{vieweralsosee "[TS] vecrank" "mansection TS vecrank"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] vec" "help vec_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "Syntax" "vecrank_zh##syntax"}{...}
{viewerjumpto "Menu" "vecrank_zh##menu"}{...}
{viewerjumpto "Description" "vecrank_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "vecrank_zh##linkspdf"}{...}
{viewerjumpto "Options" "vecrank_zh##options"}{...}
{viewerjumpto "Examples" "vecrank_zh##examples"}{...}
{viewerjumpto "Stored results" "vecrank_zh##results"}
{help vecrank:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[TS] vecrank} {hline 2}}估计 VECM 的协整秩{p_end}
{p2col:}({mansection TS vecrank:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}
{cmd:vecrank} {depvarlist} {ifin} [{cmd:,} {it:options}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt la:gs(#)}}使用 {it:#} 作为基础 VAR 模型中的最大滞后期{p_end}
{synopt :{opt t:rend}{cmd:(}{opt c:onstant}{cmd:)}}在模型中包含一个不受限的常数项；默认设置{p_end}
{synopt :{opt t:rend}{cmd:(}{opt rc:onstant}{cmd:)}}在模型中包含一个受限的常数项{p_end}
{synopt :{opt t:rend}{cmd:(}{opt t:rend}{cmd:)}}在协整方程中包含一个线性趋势和未差分数据中的平方趋势{p_end}
{synopt :{opt t:rend}{cmd:(}{opt rt:rend}{cmd:)}}在模型中包含一个受限的趋势{p_end}
{synopt :{opt t:rend}{cmd:(}{opt n:one}{cmd:)}}不包含趋势或常数项{p_end}

{syntab:高级模型}
{synopt :{opth si:ndicators(varlist:varlist_si)}}在模型中包含标准化的季节性指示变量 {it:varlist_si}{p_end}
{synopt :{opt noreduce}}不执行对因变量滞后项之间的共线性检查和修正{p_end}

{syntab:报告}
{synopt :{opt notr:ace}}不报告迹统计量{p_end}
{synopt :{opt m:ax}}报告最大特征值统计量{p_end}
{synopt :{opt i:c}}报告信息标准{p_end}
{synopt :{opt level99}}报告 1% 临界值而不是 5% 临界值{p_end}
{synopt :{opt levela}}同时报告 1% 和 5% 临界值{p_end}
{synoptline}
{p2colreset}{...}
{pstd}在使用 {cmd:vecrank} 之前，必须先 {cmd:tsset} 数据；请参见{help tsset_zh:[TS] tsset}.{p_end}
{pstd}{depvar} 可以包含时间序列运算符；请参见 {help tsvarlist_zh}。
{p_end}
{pstd}{cmd:by}、{cmd:rolling} 和 {cmd:statsby} 是允许的；参见 {help prefix_zh}。
{p_end}
{pstd}{cmd:vecrank} 不允许数据中存在缺口.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > VECM 的协整秩}


{marker description}{...}
{title:描述}

{pstd}
{cmd:vecrank} 生成用于确定向量误差修正模型（VECM）中协整方程数量的统计量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS vecrankQuickstart:快速入门}

        {mansection TS vecrankRemarksandexamples:备注和示例}

        {mansection TS vecrankMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt lags(#)} 指定模型中 VAR 表示的滞后数量。 VECM 将包含少一个的一阶差分滞后。 滞后数量必须大于零，但也要足够小，以便模型使用的自由度小于观察值的数量。

{phang}
{opt trend(trend_spec)} 指定要在模型中包含的五种趋势规格之一。有关描述，请参见 {manlink TS vec intro} 和 {manlink TS vec}。 默认值是 {cmd:trend(constant)}。

{dlgtab:高级模型}

{phang}
{opth sindicators:(varlist:varlist_si)} 指定要包含在模型中的标准化季节性指示变量。 该选项中指定的指示变量必须经过Johansen (1995, 84) 中讨论的标准化。如果指示变量未正确标准化，基于似然比的协整方程数量测试将无法收敛到Johansen推导的渐近分布。有关详细信息，请参见{it:{mansection TS vecMethodsandformulas:方法和公式}}在{bf:[TS] vec}中。{opt sindicators()}不能与{cmd:trend(none)}或{cmd:trend(rconstant)}同时指定。

{phang} 
{opt noreduce} 使 {cmd:vecrank} 跳过对因变量滞后项之间共线性的检查和修正。 默认情况下， {cmd:vecrank} 检查当前滞后规格是否导致 {cmd:vecrank} 执行的一些回归包含完全共线的变量，并减少最大滞后直到完全共线性被消除。有关更多信息，请参见{it:{mansection TS vecRemarksandexamplesCollinearity:共线性}}在{bf:[TS] vec}中。

{dlgtab:报告}

{phang}
{opt notrace} 请求不显示迹统计量的输出。 默认情况下会显示迹统计量。

{phang}
{opt max} 请求显示最大特征值统计量的输出。 默认情况下不显示此输出。

{phang}
{opt ic} 使信息标准的输出显示。 默认情况下不显示此输出。

{phang}
{opt level99} 使 1% 临界值显示，而不是默认的 5% 临界值。

{phang}
{opt levela} 使 1% 和 5% 临界值都显示。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse balance2}{p_end}

{pstd}估计 VECM 中的协整秩{p_end}
{phang2}{cmd:. vecrank y i c}{p_end}

{pstd}与上述相同，但在基础 VAR 模型中使用 5 个滞后{p_end}
{phang2}{cmd:. vecrank y i c, lags(5)}{p_end}

{pstd}与上述相同，但报告 1% 临界值而不是 5%{p_end}
{phang2}{cmd:. vecrank y i c, lags(5) level99}{p_end}

{pstd}与上述相同，但抑制迹统计量表格并报告最大特征值统计量{p_end}
{phang2}{cmd:. vecrank y i c, lags(5) level99 notrace max}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:vecrank} 将以下内容存储在 {cmd:e()} 中：

{synoptset 17 tabbed}{...}
{p2col 5 17 21 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)}中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(tmin)}}最小时间{p_end}
{synopt:{cmd:e(tmax)}}最大时间{p_end}
{synopt:{cmd:e(n_lags)}}滞后数量{p_end}
{synopt:{cmd:e(k_ce95)}}通过多重迹测试选择的 95% 置信区间内的协整方程数量{p_end}
{synopt:{cmd:e(k_ce99)}}通过多重迹测试选择的 99% 置信区间内的协整方程数量{p_end}
{synopt:{cmd:e(k_cesbic)}}通过最小化 SBIC 选择的协整方程数量{p_end}
{synopt:{cmd:e(k_cehqic)}}通过最小化 HQIC 选择的协整方程数量{p_end}

{synoptset 17 tabbed}{...}
{p2col 5 17 21 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:vecrank}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(trend)}}指定的趋势{p_end}
{synopt:{cmd:e(reduced_lags)}}模型已减少到的最大滞后的列表{p_end}
{synopt:{cmd:e(reduce_opt)}}如果指定了 {cmd:noreduce} 的话,{cmd:noreduce}{p_end}
{synopt:{cmd:e(tsfmt)}}当前时间变量的格式{p_end}

{synoptset 17 tabbed}{...}
{p2col 5 17 21 2: 矩阵}{p_end}
{synopt:{cmd:e(max)}}最大特征值统计量的向量{p_end}
{synopt:{cmd:e(trace)}}迹统计量的向量{p_end}
{synopt:{cmd:e(ll)}}模型对数似然的向量{p_end}
{synopt:{cmd:e(lambda)}}特征值的向量{p_end}
{synopt:{cmd:e(k_rank)}}未约束参数的数量向量{p_end}
{synopt:{cmd:e(hqic)}} HQIC 值的向量{p_end}
{synopt:{cmd:e(sbic)}} SBIC 值的向量{p_end}
{synopt:{cmd:e(aic)}} AIC 值的向量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <vecrank.sthlp>}