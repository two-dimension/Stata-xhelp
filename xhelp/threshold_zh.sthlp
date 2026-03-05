{smcl}
{* *! version 1.0.5  23jan2019}{...}
{viewerdialog threshold "dialog threshold"}{...}
{vieweralsosee "[TS] threshold" "mansection TS threshold"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] threshold postestimation" "help threshold postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] mswitch" "help mswitch_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{viewerjumpto "Syntax" "threshold_zh##syntax"}{...}
{viewerjumpto "Menu" "threshold_zh##menu"}{...}
{viewerjumpto "Description" "threshold_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "threshold_zh##linkspdf"}{...}
{viewerjumpto "Options" "threshold_zh##options"}{...}
{viewerjumpto "Examples" "threshold_zh##examples"}{...}
{viewerjumpto "Stored results" "threshold_zh##results"}
{help threshold:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[TS] threshold} {hline 2}}阈值回归{p_end}
{p2col:}({mansection TS threshold:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:threshold}
{depvar}
[{indepvars}]
{ifin}{cmd:,}
{opth threshvar(varname)}
[{it:选项}]

{phang}
{it:indepvars} 是具有区域不变系数的变量列表。

{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent:* {opth threshvar(varname)}}阈值变量{p_end}
{synopt:{opth regionvars(varlist)}}为指定协变量包含区域变化系数{p_end}
{synopt:{opt consinv:ariant}}用区域不变常数替换区域变化常数{p_end}
{synopt:{opt nocons:tant}}抑制区域变化的常数项{p_end}
{synopt:{opt trim(#)}}修剪百分比；默认值为 {cmd:trim(10)}{p_end}
{synopt:{opt nthresh:olds(#)}}阈值的数量；默认值为 {cmd:nthresholds(1)}；与 
{cmd:optthresh()} 不允许一起使用{p_end}
{synopt:{cmd:optthresh(}{it:#}[{cmd:,} {help threshold##ictype:{it:ictype}}]{cmd:)}}选择小于或等于 {it:#} 的最优阈值数量；与 {opt nthresholds()} 不允许一起使用{p_end}

{syntab:SE/稳健性}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim} 或
	{opt r:obust}{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{opt nocnsr:eport}}不显示约束{p_end}
{synopt:{it:{help threshold##display_options:display_options}}}控制
包含帮助短描述显示选项
{synopt :{opt nodots}}抑制重复点{p_end}
{synopt :{opt dots(#)}}每 {it:#} 次重复显示一次点{p_end}

{syntab:高级}
{synopt:{cmd:ssrs(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvarlist_zh}{cmd:})}}为每个临时阈值创建包含平方残差和（SSRs）的变量{p_end}
{synopt:{opth const:raints(numlist)}}应用指定的线性约束；与
	{cmd:optthresh()} 不允许一起使用{p_end}

包含帮助短描述系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}*{opt threshvar()} 是必需的。{p_end}
{p 4 6 2}在使用 {cmd:threshold} 之前，您必须 {cmd:tsset} 数据；请参阅
{manhelp tsset TS}.{p_end}
{p 4 6 2}{it:indepvars} 和 {it:varlist} 可以包含因子变量；请参见
{help fvvarlist_zh}.{p_end}
{p 4 6 2}{it:depvar}、{it:indepvars}、{it:varlist} 和 {it:varname} 可能
包含时间序列运算符；请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:by}、{cmd:rolling} 和 {cmd:statsby} 是允许的；请参见 {help prefix_zh}.{p_end}
{p 4 6 2}{opt coeflegend} 在对话框中不可见。{p_end}
{p 4 6 2}有关估计后可用功能，请参阅 {manhelp threshold_postestimation TS:阈值估计后处理}。

{marker ictype}{...}
{synoptset 25}{...}
{synopthdr:ictype}
{synoptline}
{synopt:{opt bic}}贝叶斯信息准则（BIC）；默认值{p_end}
{synopt:{opt aic}}赤池信息量准则（AIC）{p_end}
{synopt:{opt hqic}}汉南-奎因信息准则（HQIC）{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 阈值回归模型}


{marker description}{...}
{title:描述}

{pstd}
{opt threshold} 扩展线性回归，以允许系数在不同区域之间存在差异。这些区域通过阈值变量高于或低于阈值值来识别。模型可以有多个阈值，您可以指定已知数量的阈值，也可以让 {cmd:threshold} 通过贝叶斯信息准则（BIC）、赤池信息量准则（AIC）或汉南-奎因信息准则（HQIC）来为您找到该数量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS thresholdQuickstart:快速入门}

        {mansection TS thresholdRemarksandexamples:备注和示例}

        {mansection TS thresholdMethodsandformulas:方法与公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth threshvar(varname)} 指定要从中选择阈值的变量。 {opt threshvar()} 是必需的。

{phang}
{opth regionvars(varlist)} 指定在由估计阈值定义的区域中系数变化的附加变量。默认情况下，只有常数项在区域中变化。

{phang}
{opt consinvariant} 指定常数项应为区域不变，而不是区域变化。

{phang}
{opt noconstant} 抑制模型中的区域变化常数项（截距）。

{phang}
{opt trim(#)} 指定 {opt threshold} 将阈值变量的第 {it:#} 个百分位数的值视为第一个可能的阈值，第 (100-{it:#}) 个百分位数的值视为最后一个可能的阈值。 {it:#} 必须是 1 到 49 之间的整数。默认值为 {cmd:trim(10)}。

{phang}
{opt nthresholds(#)} 指定阈值的数量。指定阈值数量等同于指定区域的数量，因为区域数量等于 {it:#}+1 个阈值。默认值为 {cmd:nthresholds(1)}，相当于 2 个区域。

{phang}
{cmd:optthresh(}{it:#} [{cmd:,} {help threshold##ictype:{it:ictype}}{cmd:)} 指定 {opt threshold} 选择最多 {it:#} 的最优阈值数量。默认情况下，最优阈值数量基于 BIC，但您可以指定使用的信息准则 ({it:ictype})。 {it:ictype} 可以是 {cmd:bic}（默认）、{cmd:aic} 或 {cmd:hqic}。 {opt optthresh()} 不能与 {opt nthresholds()} 一起使用。

{dlgtab:SE/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括基于渐近理论的类型 ({cmd:oim}) 和对某些错误指定稳健的类型 ({cmd:robust})；请参见 {manhelpi vce_option R}。

{dlgtab:报告}

{phang}
{opt level(#)}, {cmd:nocnsreport}；请参阅
{manhelp estimation_options R:估计选项}。

包含帮助显示选项列表

{phang}
{opt nodots} 和 {opt dots(#)} 指定是否显示重复点。默认情况下，每次成功的重复显示一个点字符。如果 {it:command} 返回错误，那么显示一个红色 `x`。你还可以通过 {helpb set dots} 控制点是否显示。

{phang2}
{opt nodots} 抑制重复点的显示。

{phang2}
{opt dots(#)} 每 {it:#} 次重复显示一个点。
{cmd:dots(0)} 是 {cmd:nodots} 的同义词。

{dlgtab:高级}

{phang}
{cmd:ssrs(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvarlist_zh}}{cmd:)} 创建一个变量，该变量包含在搜索第 {it:k} 个阈值期间为每个临时阈值计算的平方残差和（SSRs）。对于在 {opt threshvar()} 中指定的阈值变量的值不是临时阈值的观测值，{opt ssrs()} 为该观测值创建的变量的对应值将缺失。

{pmore}
如果您指定 {it:stub}{cmd:*}，Stata 将创建 {it:k} 个新变量，名称为 {it:stub}{cmd:1}、...、{it:stubk}，这些变量将包含第 1、...、第 {it:k} 个阈值的 SSRs，其中 {it:k} 是在 {opt nthresholds()} 中指定的 {it:#} 或如果指定了 {opt optthresh()} 的最优阈值数量。

{pmore}
如果您指定新变量名称列表，您可以请求最多 {it:#} 的 SSRs，指定在 {opt nthresholds()} 中的。如果您指定 
{opt optthresh(#)} 且最优阈值数量少于 {it:#}，任何额外的变量将仅包含缺失值。

{phang}
{opth constraints(numlist)} 指定在使用 {opt constraint} 命令定义后按编号进行的约束；请参见
{manhelp constraint R}。 {opt constraints()} 不能与 {opt optthresh()} 一起使用。

{pstd}
以下选项在 {opt threshold} 中可用，但在对话框中未显示：

{phang}
{opt coeflegend}; 请参见
{helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}
设置
{p_end}
{phang2}{cmd:. webuse usmacro}

{pstd}
拟合一个阈值回归模型，为 {cmd:l2.ogap} 估计一个阈值，并且系数在两个区域之间变化{p_end}
{phang2}{cmd:. threshold fedfunds, regionvars(l.fedfunds inflation ogap)}
        {cmd:threshvar(l2.ogap)}

{pstd}
与上述相同，但从最多五个中选择最优阈值数量{p_end}
{phang2}{cmd:. threshold fedfunds, regionvars(l.fedfunds inflation ogap)}
        {cmd:threshvar(l2.ogap) optthresh(5)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:threshold} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(nthresholds)}}阈值数量{p_end}
{synopt:{cmd:e(optthresh)}}最大阈值数量；如果指定{p_end}
{synopt:{cmd:e(ssr)}}模型的平方残差和{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(aic)}}赤池信息量准则{p_end}
{synopt:{cmd:e(bic)}}贝叶斯信息准则{p_end}
{synopt:{cmd:e(hqic)}}汉南-奎因信息准则{p_end}
{synopt:{cmd:e(tmin)}}最小时间{p_end}
{synopt:{cmd:e(tmax)}}最大时间{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:threshold}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(eqnames)}}方程名称{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(regionvars)}}区域特定变量列表{p_end}
{synopt:{cmd:e(indepvars)}}区域不变变量列表{p_end}
{synopt:{cmd:e(threshvar)}}阈值变量名称{p_end}
{synopt:{cmd:e(criteria)}}如果 
    {cmd:optthresh(}{it:#}{cmd:,} {it:ictype}{cmd:)} 指定的信息准则{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(tsfmt)}}当前时间变量的格式{p_end}
{synopt:{cmd:e(tmins)}}格式化的最小时间{p_end}
{synopt:{cmd:e(tmaxs)}}格式化的最大时间{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}被 {cmd:margins} 拒绝的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(ssrmat)}}每个估计阈值的平方残差和{p_end}
{synopt:{cmd:e(thresholds)}}估计阈值的矩阵{p_end}
{synopt:{cmd:e(nobs)}}每个区域的观测值数量{p_end}

{p2col 5 20 24 2:函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <threshold.sthlp>}