{smcl}
{* *! version 1.3.10  23jan2019}{...}
{viewerdialog jackknife "dialog jackknife"}{...}
{vieweralsosee "[R] jackknife" "mansection R jackknife"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] jackknife postestimation" "help jackknife postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bootstrap" "help bootstrap_zh"}{...}
{vieweralsosee "[R] permute" "help permute_zh"}{...}
{vieweralsosee "[R] simulate" "help simulate_zh"}{...}
{vieweralsosee "[SVY] svy jackknife" "help svy_jackknife_zh"}{...}
{viewerjumpto "Syntax" "jackknife_zh##syntax"}{...}
{viewerjumpto "Menu" "jackknife_zh##menu"}{...}
{viewerjumpto "Description" "jackknife_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "jackknife_zh##linkspdf"}{...}
{viewerjumpto "Options" "jackknife_zh##options"}{...}
{viewerjumpto "Remarks" "jackknife_zh##remarks"}{...}
{viewerjumpto "Examples" "jackknife_zh##examples"}{...}
{viewerjumpto "Stored results" "jackknife_zh##results"}
{help jackknife:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] jackknife} {hline 2}}Jackknife 估计{p_end}
{p2col:}({mansection R jackknife:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:jackknife}
	{it:{help exp_list_zh}}
	[{cmd:,} {it:options} {it:{help eform_option_zh}}]
	{cmd::} {help jackknife##command:{it:command}}

{synoptset 24 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要选项}
{synopt :{opt e:class}}使用的观察数存储在 {cmd:e(N)}{p_end}
{synopt :{opt r:class}}使用的观察数存储在 {cmd:r(N)}{p_end}
{synopt :{opth n(exp)}}指定
	{it:exp} 用于计算使用的观察数 {p_end}

{syntab:选项}
{synopt :{opth cl:uster(varlist)}}识别样本聚类的变量{p_end}
{synopt :{opth id:cluster(newvar)}}创建新的聚类 ID 变量{p_end}
{synopt :{help prefix_saving_option_zh:{bf:{ul:sa}ving(}{it:filename}{bf:, ...)}}}将结果保存到 {it:filename}; 以双精度保存统计信息; 每 {it:#} 次重复保存结果到 {it:filename}{p_end}
{synopt :{opt keep}}保留伪值{p_end}
{synopt :{opt mse}}使用均方误差公式进行方差估计{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信置信水平; 默认值为 {cmd:level(95)}{p_end}
{synopt :{opt notable}}抑制结果表的显示{p_end}
{synopt :{opt noh:eader}}抑制结果表头的显示{p_end}
{synopt :{opt nol:egend}}抑制结果表图例的显示{p_end}
{synopt :{opt v:erbose}}显示完整的表格图例{p_end}
{synopt :{opt nodots}}抑制重复状态点的显示{p_end}
{synopt :{opt dots(#)}}每 {it:#} 次重复显示状态点{p_end}
{synopt :{opt noi:sily}}显示任何命令的输出{p_end}
{synopt :{opt tr:ace}}跟踪 {it:command}{p_end}
{synopt :{opt ti:tle(text)}}使用 {it:text} 作为 jackknife 结果的标题{p_end}
{synopt :{it:{help jackknife##display_options:display_options}}}控制
包含帮助短描述-显示选项
{synopt :{it:eform_option}}以指数形式显示系数表{p_end}

{syntab:高级}
{synopt :{opt nodrop}}不丢弃观察值{p_end}
{synopt :{opth reject(exp)}}识别无效结果{p_end}

包含帮助短描述-系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt svy} 是允许的; 见 {manhelp svy_jackknife SVY:svy jackknife}。{p_end}
{marker command}{...}
{p 4 6 2}
{it:command} 是符合标准 Stata 语法的任何命令。
所有 {it:command} 支持的权重类型都被允许，除了 {cmd:aweight}；
见 {help weight_zh}。{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
参见 {manhelp jackknife_postestimation R:jackknife postestimation} 了解估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 重新抽样 > Jackknife 估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:jackknife} 对指定统计量（或表达式）执行 jackknife 估计，适用于 Stata 命令或用户编写的程序。
通过为数据集中的每个观察值或聚类估计一次命令，jackknife 统计量，排除相关的观察值或聚类。 {cmd:jackknife} 旨在与非估计命令、系数函数或用户编写的程序一起使用。
要进行系数的 jackknife 估计，建议在估计命令允许的情况下使用 {cmd:vce(jackknife)} 选项。 


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R jackknifeQuickstart:快速开始}

        {mansection R jackknifeRemarksandexamples:备注和示例}

        {mansection R jackknifeMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要选项}

{phang}
{opt eclass}、{opt rclass} 和 {opth n(exp)} 指定 {it:command} 将计算结果基于的观察数存储位置。我们强烈建议您指定其中一个选项。

{pmore}
{opt eclass} 指定 {it:command} 将观察数存储在 {hi:e(N)} 中。

{pmore}
{opt rclass} 指定 {it:command} 将观察数存储在 {hi:r(N)} 中。

{pmore}
{opt n(exp)} 指定一个
评估到使用观察数的表达式。指定 {cmd:n(r(N))} 等同于指定 {opt rclass} 选项。指定 {cmd:n(e(N))} 等同于指定 {opt eclass} 选项。如果 {it:command} 将观察数存储在 {cmd:r(N1)} 中，请指定 {cmd:n(r(N1))}。

{pmore}
如果您未指定选项，{opt jackknife} 将假定
{opt eclass} 或
{opt rclass}，取决于 {hi:e(N)} 和 {hi:r(N)} 中哪个不缺失（按此顺序）。
如果 {hi:e(N)} 和 {hi:r(N)} 都缺失，{opt jackknife} 假定数据集中所有观察都对计算结果有贡献。如果该假设不正确，则报告的标准误差将不正确。例如，假设您指定

{center:{cmd:. jackknife coef=_b[x2]: myreg y x1 x2 x3}}

{pmore}
其中 {opt myreg} 使用 {cmd:e(n)} 而不是 {cmd:e(N)} 来确定计算中使用的观察数。进一步假设数据集中第 42 个观察值的 {opt x3} 为缺失。第 42 个观察不在估计中发挥作用，但 {opt jackknife} 无法知道这一点，将使用错误的 {it:N}。另一方面，如果您指定

{center:{cmd:. jackknife coef=_b[x2], n(e(n)): myreg y x1 x2 x3}}

{pmore}
{opt jackknife} 将注意到第 42 个观察没有发挥作用。因为 {opt myreg} 是一个估计命令，但它将观察数存储在 {cmd:e(n)} 中（而不是标准的 {cmd:e(N)}）。当 {opt jackknife} 运行回归以排除第 42 个观察时，{opt jackknife} 将观察到 {cmd:e(n)} 的值与先前使用所有观察运行回归时的值相同。因此，{opt jackknife} 将知道 {opt myreg} 没有使用该观察。

{dlgtab:选项}

{phang}
{opth cluster(varlist)} 指定识别样本聚类的变量。如果指定 {opt cluster()}，则在每次调用 {it:command} 时排除一个聚类，而不是一个观察值。

{phang}
{opth idcluster(newvar)} 创建一个新变量，包含每个重采样聚类的唯一整数标识符，起始于 {opt 1} 并延伸到聚类的数量。此选项仅在指定 {opt cluster()} 选项时可以指定。
{opt idcluster()} 有助于识别伪值所属的聚类。

包含帮助前缀保存选项

{pmore}
有关 {it:suboptions} 的详细信息，请参见 {help prefix_saving_option_zh}。

{phang}
{opt keep} 指定将新变量添加到数据集中，包含所请求统计信息的伪值。见 
{bind:{bf:[R] jackknife}} 了解详细信息。当指定 {opt cluster()} 选项时，每个聚类最多只有一个非缺失的伪值。{opt keep} 选项隐含 {opt nodrop} 选项。

{phang}
{opt mse} 指定 {opt jackknife} 使用基于整个数据集的统计值的观测值与伪值的偏差来计算方差。默认情况下，{opt jackknife} 使用伪值与其均值之间的偏差计算方差。

{dlgtab:报告}

{phang}
{opt level(#)}; 见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt notable} 抑制结果表的显示。

{phang}
{opt noheader} 抑制结果表头的显示。此选项隐含 {opt nolegend}。

{phang}
{opt nolegend} 抑制结果表图例的显示。表格图例标识表格行与它们表示的表达式。

{phang}
{opt verbose} 指定显示完整的表格图例。默认情况下，不显示系数和标准误差。

包含帮助状态点

{phang}
{opt noisily} 指定显示 {it:command} 的任何输出。此选项隐含 {opt nodots} 选项。

{phang}
{opt trace} 显示 {it:command} 的执行跟踪。此选项隐含 {opt noisily} 选项。

{phang}
{opt title(text)} 指定在 jackknife 结果表上方显示的标题；默认标题为 {opt Jackknife results} 或由估计命令生成的 {cmd:e(title)}。

包含帮助显示选项列表

{phang}
{it:eform_option} 导致以指数形式显示系数表；见 {manhelpi eform_option R}。 {it:command} 确定允许哪些 {it:eform_option} ({opt eform(string)} 和 {opt eform} 总是允许)。

{dlgtab:高级选项}

{phang}
{opt nodrop} 防止在重采样之前丢弃 {cmd:e(sample)} 和 {cmd:if} 和 {cmd:in} 限定符之外的观察。

{phang}
{opth reject(exp)} 指定一个表达式，用于标识何时拒绝结果。当 {it:exp} 为真时，结果值重置为缺失值。

{pstd}
以下选项在 {opt jackknife} 中可用，但未显示在对话框中：

{phang}
{opt coeflegend}; 见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker remarks}{...}
{title:备注}

{pstd}
输入

{pin}
{cmd:. jackknife} {it:exp_list}{cmd::} {it:command}

{pstd}
会对数据集中的每个观察执行一次 {it:command}，将相关的观察排除在形成 {it:exp_list} 的计算之外。

{pstd}
{it:command} 定义要执行的统计命令。
大多数 Stata 命令和用户编写的程序均可与 {opt jackknife} 一起使用，只要它们遵循标准 Stata 语法并允许 {cmd:if} 限定符；见 {help language_zh:[U] 11 语言语法}。
{opt by} 前缀不能是 {it:command} 的一部分。

{pstd}
{it:{help exp_list_zh}} 指定从执行 {it:command} 中收集的统计量。如果 {it:command} 改变了 {cmd:e(b)} 的内容，则 {it:exp_list} 是可选的，默认为 {cmd:_b}。

{pstd}
当给定 {opt cluster()} 选项时，排除的是聚类，而不是观察，N 是聚类的数量，而不是样本大小。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}样本均值的 Jackknife 标准误差{p_end}
{phang2}{cmd:. jackknife r(mean): summarize mpg}

{pstd}回归系数的 Jackknife 标准误差{p_end}
{phang2}{cmd:. jackknife: regress mpg weight trunk}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:jknife} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}样本大小{p_end}
{synopt:{cmd:e(N_reps)}}完整重复的数量{p_end}
{synopt:{cmd:e(N_misreps)}}不完整重复的数量{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_extra)}}额外方程的数量{p_end}
{synopt:{cmd:e(k_exp)}}表达式的数量{p_end}
{synopt:{cmd:e(k_eexp)}}扩展表达式的数量 ({cmd:_b} 或 {cmd:_se}){p_end}
{synopt:{cmd:e(df_r)}}自由度{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmdname)}}{it:command} 的命令名称{p_end}
{synopt:{cmd:e(cmd)}}与 {cmd:e(cmdname)} 或 {cmd:jackknife} 相同{p_end}
{synopt:{cmd:e(command)}}{it:command}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(prefix)}}{cmd:jackknife}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(cluster)}}聚类变量{p_end}
{synopt:{cmd:e(pseudo)}}包含伪值的新变量{p_end}
{synopt:{cmd:e(nfunction)}}{cmd:e(N)}、{cmd:r(N)}、{cmd:n()} 选项或
	空{p_end}
{synopt:{cmd:e(exp}{it:#}{cmd:)}}第 {it:#} 个统计量的表达式{p_end}
{synopt:{cmd:e(mse)}}来自 {cmd:mse} 选项{p_end}
{synopt:{cmd:e(vce)}}{cmd:jackknife}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}观察统计 {p_end}
{synopt:{cmd:e(b_jk)}}jackknife 估计{p_end}
{synopt:{cmd:e(V)}}jackknife 方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{pstd}
当 {it:exp_list} 为 {cmd:_b} 时，jackknife 还将转移 {it:command} 中 {cmd:e()} 中的结果。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <jackknife.sthlp>}