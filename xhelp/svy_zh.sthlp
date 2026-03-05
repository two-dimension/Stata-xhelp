{smcl}
{* *! version 1.3.22  01apr2019}{...}
{vieweralsosee "[SVY] svy" "mansection SVY svy"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[SVY] svy postestimation" "help svy_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] program properties" "help program_properties_zh"}{...}
{vieweralsosee "[P] _robust" "help _robust_zh"}{...}
{vieweralsosee "[SVY] svy bootstrap" "help svy_bootstrap_zh"}{...}
{vieweralsosee "[SVY] svy brr" "help svy_brr_zh"}{...}
{vieweralsosee "[SVY] svy jackknife" "help svy_jackknife_zh"}{...}
{vieweralsosee "[SVY] svy sdr" "help svy_sdr_zh"}{...}
{vieweralsosee "[SVY] svyset" "help svyset_zh"}{...}
{viewerjumpto "语法" "svy_zh##syntax"}{...}
{viewerjumpto "描述" "svy_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "svy_zh##linkspdf"}{...}
{viewerjumpto "选项" "svy_zh##options"}{...}
{viewerjumpto "示例" "svy_zh##examples"}{...}
{viewerjumpto "存储结果" "svy_zh##results"}{...}
{viewerjumpto "参考" "svy_zh##reference"}
{help svy:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[SVY] svy} {hline 2}}调查前缀命令
{p_end}
{p2col:}({mansection SVY svy:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang2}
{cmd:svy} [{help svy##svy_vcetype:{it:vcetype}}] [{cmd:,}
           {help svy##svy_options:{it: svy_options}}
	{it:{help eform_option_zh}}] {cmd::} {it:command}

{marker svy_vcetype}{...}
{* 注意: 如果您要更改此表的内容，还请参阅以下帮助文件。}{...}
{*	svy_bootstrap.sthp	}{...}
{*	svy_brr.sthlp		}{...}
{*	svy_jknife.sthlp	}{...}
{*	svy_sdr.sthlp		}{...}
{*	svy_tabulate_oneway.sthlp}{...}
{*	svy_tabulate_twoway.sthlp}{...}
包含帮助 vcetype

{marker svy_options}{...}
{synopthdr:svy_options}
{synoptline}
{syntab:if/in}
{synopt :{opt sub:pop}{cmd:(}[{varname}] [{it:{help if_zh}}]{cmd:)}}确定一个子群体{p_end}

{syntab:SE}
{synopt :{opt dof(#)}}设计自由度{p_end}
{synopt :{it:{help bootstrap_options_zh}}}与 bootstrap 方差估计允许的更多选项{p_end}
{synopt :{it:{help brr_options_zh}}}与 BRR 方差估计允许的更多选项{p_end}
{synopt :{it:{help jackknife_options_zh}}}与 jackknife 方差估计允许的更多选项{p_end}
{synopt :{it:{help sdr_options_zh}}}与 SDR 方差估计允许的更多选项{p_end}

{syntab:Reporting}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help svy##display_options:display_options}}}控制
包含帮助 shortdes-displayoptall

{synopt :{opt noh:eader}}抑制表头{p_end}
{synopt :{opt nol:egend}}抑制表图例{p_end}
{synopt :{opt noadj:ust}}不调整模型 Wald 统计量{p_end}
{synopt :{opt noi:sily}}显示来自 {it:command} 的任何输出{p_end}
{synopt :{opt tr:ace}}追踪 {it:command}{p_end}
包含帮助 shortdes-coeflegend
{synoptline}
{p 4 6 2}
{cmd:svy} 需要使用 {help svyset_zh} 来识别调查设计变量。
{p_end}
{p 4 6 2}
{it:command} 定义要执行的估计命令。{help by_zh} 前缀不能作为 {it:command} 的一部分。{p_end}
{p 4 6 2}
{cmd:mi estimate} 可与 {cmd:svy linearized} 一起使用，如果估计命令允许 {cmd:mi estimate}；但是不能与 {cmd:svy bootstrap}、{cmd:svy brr}、{cmd:svy jackknife} 或 {cmd:svy sdr} 一起使用。{p_end}
{p 4 6 2}
{opt noheader}、{opt nolegend}、{opt noadjust}、{opt noisily}、 
{opt trace} 和 {opt coeflegend} 在估计命令的对话框中未显示。
{p_end}
{p 4 6 2}
警告：使用 {cmd:if} 或 {cmd:in} 限制通常不会产生子群体的正确方差估计。要计算子群体的估计值，使用 {cmd:subpop()} 选项。
{p_end}
{p 4 6 2}
有关估计后可用的功能，请参见 {helpb svy postestimation:[SVY] svy postestimation}。
{p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:svy} 通过调整命令的结果以适应由 {help svyset_zh} 识别的调查设置，来拟合复杂调查数据的统计模型。任何 Stata 估计命令，均可在 
{manhelp svy_estimation SVY:svy estimation} 中找到，可以与 {cmd:svy} 一起使用。符合 
{manhelp program_properties P:program properties} 中要求的用户编写程序也可以使用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SVY svyQuickstart:快速入门}

        {mansection SVY svyRemarksandexamples:备注和示例}

        {mansection SVY svyMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:if/in}

{phang}
{opt subpop}{cmd:(}{it:subpop}{cmd:)} 指定为 
由 {it:subpop} 确定的单一子群体计算估计值，定义如下：

{pmore2}
[{varname}] [{it:{help if_zh}}]

{pmore}
因此，子群体由满足 {cmd:if} 条件的 {it:varname}!=0 的观测值定义。典型地，{it:varname}=1 定义子群体，而 {it:varname}=0 表示不属于子群体的观测值。对于子群体状态不确定的观测值，应将 {it:varname} 设置为缺失值；这类观测值会从估计样本中删除。

{pmore}
请参见 {manlink SVY 子群体估计} 和 {manlink SVY estat}。

{dlgtab:SE}

{phang}
{opt dof(#)} 指定设计自由度，覆盖默认计算 df = N_psu - N_strata。

{phang}
{it:bootstrap_options} 是在使用 {cmd:svy} {cmd:bootstrap} 指定的 bootstrap 方差估计时允许的其他选项，或在使用 {cmd:vce(bootstrap)} 选项时在 {cmd:svyset} 中指定；
请参见 {manhelpi bootstrap_options SVY}。

{phang}
{it:brr_options} 是在使用 {cmd:svy} {cmd:brr} 指定的 BRR 方差估计时允许的其他选项，或在使用 {cmd:vce(brr)} 选项时在 {cmd:svyset} 中指定；
请参见 {manhelpi brr_options SVY}。

{phang}
{it:jackknife_options} 是在使用 {cmd:svy} {cmd:jackknife} 指定的 jackknife 方差估计时允许的其他选项，或在使用 {cmd:vce(jackknife)} 选项时在 {cmd:svyset} 中指定；请参见 {manhelpi jackknife_options SVY}。

{phang}
{it:sdr_options} 是在使用 {cmd:svy} {cmd:sdr} 指定的 SDR 方差估计时允许的其他选项，或在使用 {cmd:vce(sdr)} 选项时在 {cmd:svyset} 中指定；
请参见 {manhelpi sdr_options SVY}。

{dlgtab:Reporting}

{phang}
{opt level(#)}
指定置信区间的置信水平，单位为百分比。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置。

{phang}
{opt nocnsreport}; 见 
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包含帮助 displayopts_list

{pstd}
以下选项适用于 {cmd:svy} 
但在对话框中未显示：

{phang}
{opt noheader} 防止显示表头。此选项意味着 {cmd:nolegend}。

{phang}
{opt nolegend} 防止显示识别子群体的表图例。

{phang}
{opt noadjust} 指定模型 Wald 测试应按 {it:W}/{it:k} 分布，即 {it:F}({it:k},{it:d})，其中 {it:W} 是 Wald 测试统计量，{it:k} 是模型中不包括常数项的项数，{it:d} 是总样本 PSUs 的数量减去总 strata 的数量，{it:F}({it:k},{it:d}) 是拥有 {it:k} 自由度和 {it:d} 分母自由度的 {it:F} 分布。默认情况下，会进行调整的 Wald 测试：
({it:d}-{it:k}+1){it:W}/({it:k}{it:d}) 分布为 
{it:F}({it:k},{it:d}-{it:k}+{it:1})。

{pmore}
有关 Wald 测试及其调整的讨论，请参考 {help svy##KG1990:Korn and Graubard (1990)}。不建议使用 {opt noadjust} 选项。
{p_end}

{phang}
{opt noisily} 请求显示来自 {it:command} 的任何输出。

{phang}
{opt trace} 导致显示 {it:command} 执行的跟踪信息。

{phang}
{opt coeflegend}; 参见 
     {helpb estimation options##coeflegend:[R] 估计选项}。


{pstd}
以下选项通常在估计时或重放时可用于 {cmd:svy}，但在所有对话框中未显示：

{phang}
{it:eform_option}; 参见 {manhelpi eform_option R}。


{marker examples}{...}
{title:示例}

{phang}
{cmd:. webuse nhanes2f}
{p_end}
{phang}
{cmd:. svyset psuid [pweight=finalwgt], strata(stratid)}
{p_end}
{phang}
{cmd:. svy: mean zinc}
{p_end}
{phang}
{cmd:. mean zinc}
{p_end}

{phang}
{cmd:. svyset [pweight=finalwgt]}
{p_end}
{phang}
{cmd:. svy: mean zinc}
{p_end}

{phang}
{cmd:. svyset psuid [pweight=finalwgt]}
{p_end}
{phang}
{cmd:. svy: mean zinc}
{p_end}

{phang}
{cmd:. svyset psuid [pweight=finalwgt], strata(stratid)}
{p_end}
{phang}
{cmd:. svy: regress zinc age age2 weight female black orace rural}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:svy} 将以下内容存储在 {cmd:e()} 中：

{synoptset 22 tabbed}{...}
{p2col 5 22 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_sub)}}子群体观察{p_end}
{synopt:{cmd:e(N_strata)}}分层数量{p_end}
{synopt:{cmd:e(N_strata_omit)}}省略的分层数量{p_end}
{synopt:{cmd:e(singleton)}}{cmd:1} 如果是单例分层，{cmd:0} 否则{p_end}
{synopt:{cmd:e(census)}}{cmd:1} 如果是普查数据，{cmd:0} 否则{p_end}
{synopt:{cmd:e(F)}}模型 F 统计量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_r)}}方差自由度{p_end}
{synopt:{cmd:e(N_pop)}}人口大小估计{p_end}
{synopt:{cmd:e(N_subpop)}}子群体大小估计{p_end}
{synopt:{cmd:e(N_psu)}}抽样 PSUs 数量{p_end}
{synopt:{cmd:e(stages)}}抽样阶段数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_aux)}}附加参数数量{p_end}
{synopt:{cmd:e(p)}}p值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 22 tabbed}{...}
{p2col 5 22 24 2: 宏}{p_end}
{synopt:{cmd:e(prefix)}}{cmd:svy}{p_end}
{synopt:{cmd:e(cmdname)}}来自 {it:command} 的命令名称{p_end}
{synopt:{cmd:e(cmd)}}与 {cmd:e(cmdname)} 或 {cmd:e(vce)} 相同{p_end}
{synopt:{cmd:e(command)}}{it:command}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(weight}{it:#}{cmd:)}}识别第 {it:#} 阶段的权重的变量{p_end}
{synopt:{cmd:e(wvar)}}权重变量名称{p_end}
{synopt:{cmd:e(singleunit)}}{cmd:singleunit()} 设置{p_end}
{synopt:{cmd:e(strata)}}{cmd:strata()} 变量{p_end}
{synopt:{cmd:e(strata}{it:#}{cmd:)}}识别第 {it:#} 阶段的分层变量{p_end}
{synopt:{cmd:e(psu)}}{cmd:psu()} 变量{p_end}
{synopt:{cmd:e(su}{it:#}{cmd:)}}识别第 {it:#} 阶段的抽样单位的变量{p_end}
{synopt:{cmd:e(fpc)}}{cmd:fpc()} 变量{p_end}
{synopt:{cmd:e(fpc}{it:#}{cmd:)}}第 {it:#} 阶段的 FPC{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(poststrata)}}{cmd:poststrata()} 变量{p_end}
{synopt:{cmd:e(postweight)}}{cmd:postweight()} 变量{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记 Std. Err. 的标题{p_end}
{synopt:{cmd:e(mse)}}{cmd:mse}，如果指定{p_end}
{synopt:{cmd:e(subpop)}}来自 {cmd:subpop()} 的 {it:subpop}{p_end}
{synopt:{cmd:e(adjust)}}如果指定，{cmd:noadjust}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginswtype)}}{cmd:margins} 的权重类型{p_end}

{synoptset 22 tabbed}{...}
{p2col 5 22 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}估计值{p_end}
{synopt:{cmd:e(V)}}基于设计的方差{p_end}
{synopt:{cmd:e(V_srs)}}无替换简单随机抽样方差，
V_srswor 估计{p_end}
{synopt:{cmd:e(V_srssub)}}子群体
无替换简单随机抽样方差，V_srswor 估计（仅在指定 {cmd:subpop()} 时创建）{p_end}
{synopt:{cmd:e(V_srswr)}}有替换简单随机抽样方差，
V_srswr 估计（仅在 {cmd:fpc()} 选项为 {cmd:svyset} 时创建）{p_end}
{synopt:{cmd:e(V_srssubwr)}}子群体有替换简单随机抽样方差，V_srswr 估计（仅在指定 {cmd:subpop()} 时创建）{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}
{synopt:{cmd:e(V_msp)}}来自模型拟合不当的方差，V_msp 估计{p_end}
{synopt:{cmd:e(_N_strata_single)}}包含一个抽样单位的分层数量{p_end}
{synopt:{cmd:e(_N_strata_certain)}}确定性分层数量{p_end}
{synopt:{cmd:e(_N_strata)}}分层数量{p_end}
{synopt:{cmd:e(_N_subp)}}{cmd:over()} 组内子群体大小的估计{p_end}

{synoptset 22 tabbed}{...}
{p2col 5 22 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{pstd}
{cmd:svy} 还将大部分来自 {it:command} 的结果保留在 {cmd:e()} 中。


{marker reference}{...}
{title:参考}

{marker KG1990}{...}
{phang}
Korn, E. L., and B. I. Graubard.  1990.  使用复杂调查数据进行回归系数的同时检验：使用 Bonferroni t 统计量。
{it:American Statistician} 44: 270-276.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svy.sthlp>}