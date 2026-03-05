{smcl}
{* *! version 1.3.13  23jan2019}{...}
{viewerdialog bootstrap "dialog bootstrap"}{...}
{vieweralsosee "[R] bootstrap" "mansection R bootstrap"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bootstrap postestimation" "help bootstrap postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] jackknife" "help jackknife_zh"}{...}
{vieweralsosee "[R] permute" "help permute_zh"}{...}
{vieweralsosee "[R] simulate" "help simulate_zh"}{...}
{vieweralsosee "[R] set rngstream" "help set rngstream"}{...}
{vieweralsosee "[SVY] svy bootstrap" "help svy bootstrap"}{...}
{viewerjumpto "Syntax" "bootstrap_zh##syntax"}{...}
{viewerjumpto "Menu" "bootstrap_zh##menu"}{...}
{viewerjumpto "Description" "bootstrap_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bootstrap_zh##linkspdf"}{...}
{viewerjumpto "Options" "bootstrap_zh##options"}{...}
{viewerjumpto "Remarks" "bootstrap_zh##remarks"}{...}
{viewerjumpto "Examples" "bootstrap_zh##examples"}{...}
{viewerjumpto "Stored results" "bootstrap_zh##results"}{...}
{viewerjumpto "Reference" "bootstrap_zh##reference"}
{help bootstrap:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] bootstrap} {hline 2}}自助采样和估计{p_end}
{p2col:}({mansection R bootstrap:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:bootstrap}
	{it:{help exp_list_zh}}
	[{cmd:,} {it:options} {it:{help eform_option_zh}}]
	{cmd::} {help bootstrap##command:{it:command}}

{synoptset 24 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opt r:eps(#)}}执行
	{it:#} 次自助复抽；默认值为 {cmd:reps(50)}{p_end}

{syntab:选项}
{synopt :{opth str:ata(varlist)}}识别分层的变量{p_end}
{synopt :{opt si:ze(#)}}抽取大小为 {it:#} 的样本；默认值为 {help _N}{p_end}
{synopt :{opth cl:uster(varlist)}}识别重抽样集群的变量{p_end}
{synopt :{opth id:cluster(newvar)}}创建新的集群ID变量{p_end}
{synopt :{help prefix_saving_option_zh:{bf:{ul:sa}ving(}{it:filename}{bf:, ...)}}}保存
	结果到 {it:filename}；以双精度存储统计数据；
	每 {it:#} 次复抽保存结果到 {it:filename}{p_end}
{synopt :{opt bca}}计算BCa置信区间的加速度{p_end}
{synopt :{opt tie:s}}对平局/BCa置信区间调整重复值{p_end}
{synopt :{opt mse}}使用MSE公式估计方差{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt notable}}抑制结果表的显示{p_end}
{synopt :{opt noh:eader}}抑制表头的显示{p_end}
{synopt :{opt nol:egend}}抑制表图例的显示{p_end}
{synopt :{opt v:erbose}}显示完整的表图例{p_end}
{synopt :{opt nodots}}抑制复抽点的显示{p_end}
{synopt :{opt dots(#)}}每 {it:#} 次复抽时显示点{p_end}
{synopt :{opt noi:sily}}显示来自 {it:command} 的任何输出{p_end}
{synopt :{opt tr:ace}}跟踪 {it:command}{p_end}
{synopt :{opt ti:tle(text)}}将 {it:text} 用作自助结果的标题{p_end}
{synopt :{it:{help bootstrap##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall
{synopt :{it:eform_option}}以指数形式显示系数表{p_end}

{syntab:高级}
{synopt :{opt nodrop}}不丢弃观测值{p_end}
{synopt :{opt nowarn}}不在未设置 {cmd:e(sample)} 时发出警告{p_end}
{synopt :{opt force}}不检查 {it:weights} 或 {cmd:svy} 命令；很少使用{p_end}
{synopt :{opth reject(exp)}}识别无效结果{p_end}
{synopt :{opt seed(#)}}将随机数种子设置为 {it:#}{p_end}

{synopt :{opth group(varname)}}在 {opt cluster()} 内部标识组的变量{p_end}
{synopt :{opt jack:knifeopts(jkopts)}}传递给 {help jackknife_zh} 的选项{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{marker command}{...}
{p 4 6 2}
{it:command} 是遵循标准 Stata 语法的任何命令。
{it:weights} 不允许在 {it:command} 中使用。{p_end}
{p 4 6 2}
{opt group()}, {opt jackknifeopts()} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}有关估计后可用功能，请参见 {manhelp bootstrap_postestimation R:bootstrap postestimation}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 重抽样 > 自助估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bootstrap} 执行指定统计量（或表达式）的非参数自助估计，用于 Stata 命令或用户编写的程序。通过在内存中重抽样数据并有放回地进行采样来进行自助估计。{cmd:bootstrap} 旨在与非估计命令、系数的函数或用户编写的程序一起使用。要对系数进行自助估计，我们建议在允许的情况下使用 {cmd:vce(bootstrap)} 选项。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R bootstrapQuickstart:快速入门}

        {mansection R bootstrapRemarksandexamples:备注和示例}

        {mansection R bootstrapMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt reps(#)} 指定要执行的自助复抽次数。默认值为 50。一般总共 50 到 200 次复抽足以用于标准误差的估计，因此也足以用于正态近似的置信区间；参见 
{help bootstrap##MD1993:Mooney 和 Duval (1993, 11)}。使用百分位数或偏差校正方法估计置信区间通常需要 1000 次或更多的复抽。

{dlgtab:选项}

{phang}
{opth strata(varlist)} 指定识别分层的变量。如果指定此选项，自助样本将在每个分层内独立抽取。

{phang}
{opt size(#)} 指定要抽取的样本大小。默认值为 {opt _N}，即样本大小与数据相同。如果指定，{it:#} 必须小于或等于 
{opt strata()} 中的观测值数量。

{pmore}
如果指定了 {opt cluster()}，默认大小为原始数据集中的集群数量。对于不平衡集群，导致的样本大小在复抽之间会有所不同。对于集群抽样，{it:#} 必须小于或等于 {opt strata()} 中的集群数量。

{phang}
{opth cluster(varlist)} 指定识别重抽样集群的变量。如果指定此选项，每次复抽抽取的样本是集群的自助样本。

{phang}
{opth idcluster(newvar)} 创建一个新的变量，包含每个重抽样集群的唯一标识符。此选项要求同时指定 {opt cluster()}。

INCLUDE help prefix_saving_option

{pmore}
有关 {it:suboptions} 的详细信息，请参见 {help prefix_saving_option_zh}。

{phang}
{opt bca} 指定 {cmd:bootstrap} 估计 {it:exp_list} 中每个统计量的加速度。此估计用于构建 BCa 置信区间。键入 {cmd:estat bootstrap, bca} 以显示 {cmd:bootstrap} 命令生成的 BCa 置信区间。

{phang}
{opt ties} 指定 {cmd:bootstrap} 在计算中位数偏差时调整重复值，以便构建 BC 和 BCa 置信区间。

{phang}
{opt mse} 指定 {cmd:bootstrap} 通过使用基于整个数据集的统计观察值的偏差计算方差。默认情况下，{cmd:bootstrap} 通过使用相对平均值的偏差来计算方差。

{dlgtab:报告}

{phang}
{opt level(#)}；见 
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt notable} 抑制结果表的显示。

{phang}
{opt noheader} 抑制表头的显示。此选项隐含了 {opt nolegend}。当重新播放估计结果时，也可以指定此选项。

{phang}
{opt nolegend} 抑制表图例的显示。当重新播放估计结果时，也可以指定此选项。

{phang}
{opt verbose} 指定显示完整的表图例。默认情况下，系数和标准误差不显示。当重新播放估计结果时，也可以指定此选项。

INCLUDE help dots

{phang}
{opt noisily} 指定显示来自 {it:command} 的任何输出。此选项隐含 {opt nodots} 选项。

{phang}
{opt trace} 显示 {it:command} 执行的跟踪。此选项隐含 {opt noisily} 选项。

{phang}
{opt title(text)} 指定在自助结果表上方显示的标题。默认标题为由估计命令存储在 {cmd:e(title)} 中的标题；如果 {cmd:e(title)} 未填写，则使用 {cmd:自助结果}。{opt title()} 在重新播放估计结果时也可以指定。

INCLUDE help displayopts_list

{phang}
{it:eform_option} 会将系数表以指数形式显示；参见 {manhelpi eform_option R}。{it:command} 决定允许哪个 {it:eform_option}（{opt eform(string)} 和 {opt eform} 始终允许）。

{dlgtab:高级}

{phang}
{opt nodrop} 防止在重抽样之前删除不在 {cmd:e(sample)} 及 {cmd:if} 和 {cmd:in} 限定条件之外的观测值。

{phang}
{opt nowarn} 抑制在 {it:command} 未设置 {cmd:e(sample)} 时显示警告消息。

{phang}
{opt force} 抑制限制，即 {it:command} 不指定权重或不是 {cmd:svy} 命令。这是一个很少使用的选项。仅在确定自己在做什么的情况下使用。

{phang}
{opth reject(exp)} 标识一个表达式以指示何时应拒绝结果。当 {it:exp} 为真时，结果值将被重置为缺失值。

{phang}
{opt seed(#)} 设置随机数种子。指定此选项相当于在调用 {cmd:bootstrap} 之前输入以下命令：

{phang2}
{cmd:. set seed} {it:#}

{phang}
以下选项在 {cmd:bootstrap} 中可用，但不会显示在对话框中：

{phang}
{opth group(varname)} 重新创建 {it:varname}，在重抽样集群中包含一个唯一标识符。此选项要求同时指定 {opt idcluster()}。

{pmore}
此选项对于在进行基于抽样的集群抽样时维护唯一的组标识符非常有用。假设集群1包含3个组。如果指定了 {cmd:idcluster(newclid)} 选项，并且集群1被多次抽样，{cmd:newclid} 将唯一标识集群1的每一个拷贝。如果还指定了 {cmd:group(newgroupid)}，{cmd:newgroupid} 将唯一标识每个组的每一拷贝。

{phang}
{opt jackknifeopts(jkopts)} 标识要传递给 {help jackknife_zh} 的选项，以便其计算 BCa 置信区间的加速度值。此选项要求 {opt bca} 选项，主要用于将 {opt eclass}、{opt rclass} 或 {opt n(#)} 选项传递给 {cmd:jackknife}。

{phang}
{opt coeflegend}；见 
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker remarks}{...}
{title:备注}

{pstd}
键入

{phang2}
{cmd:. bootstrap} {it:exp_list}{cmd:,} {opt reps(#)}{cmd::} {it:command}

{pstd}
执行 {it:command} 多次，通过从内存中的数据中重抽样（带放回）来对 {it:exp_list} 中的统计量进行自助抽样 {it:#} 次。此方法通常称为非参数自助。

{pstd}
{it:command} 定义要执行的统计命令。大多数 Stata 命令和用户编写的程序可以与 {cmd:bootstrap} 一起使用，只要它们遵循标准 Stata 语法；参见 {help language_zh:[U] 11 语言语法}。如果提供了 {opt bca} 选项，则 {it:command} 也必须与 {cmd:jackknife} 一起工作；见 {manhelp jackknife R}。{cmd:by} 前缀不得作为 {it:command} 的一部分。

{pstd}
{it:{help exp_list_zh}} 指定从 {it:command} 的执行中收集的统计数据。如果 {it:command} 更改 {cmd:e(b)} 的内容，则 {it:exp_list} 是可选的，默认值为 {cmd:_b}。

{pstd}
由于自助抽样是一个随机过程，如果希望能够重现结果，则通过指定 {opt seed(#)} 选项或输入

{phang2}
{cmd:. set seed} {it:#}

{pstd}
在运行 {cmd:bootstrap} 之前，设置随机数种子；见 {manhelp set_seed R:set seed}。

{pstd}
许多估计命令允许 {cmd:vce(bootstrap)} 选项。对于这些命令，我们建议使用 {cmd:vce(bootstrap)} 而不是 {cmd:bootstrap}，因为估计命令已经为您处理了集群和其他模型特定的细节。{cmd:bootstrap} 前缀命令旨在用于非估计命令，例如 {cmd:summarize}、用户编写的程序或系数的函数。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}计算自助估计{p_end}
{phang2}{cmd:. bootstrap: regress mpg weight gear foreign}{p_end}

{pstd}与上述命令相同{p_end}
{phang2}{cmd:. bootstrap _b: regress mpg weight gear foreign}

{pstd}将复抽次数更改为100{p_end}
{phang2}{cmd:. bootstrap, reps(100): regress mpg weight gear foreign}{p_end}

{pstd}计算加速度以获取BCa置信区间{p_end}
{phang2}{cmd:. bootstrap, bca: regress mpg weight gear foreign}{p_end}

{pstd}将结果保存到 {cmd:bsauto} 文件{p_end}
{phang2}{cmd:. bootstrap, saving(bsauto): regress mpg weight gear foreign}
{p_end}

{pstd}在 {cmd:weight} 和 {cmd:gear} 的系数差异上运行 {cmd:bootstrap}{p_end}
{phang2}{cmd:. bootstrap diff=(_b[weight]-_b[gear]): regress mpg weight gear}
                  {cmd:foreign}{p_end}

{pstd}{cmd:bootstrap} {it:t} 统计量使用1000次复抽，在 {cmd:foreign} 上分层，并将结果保存在 {cmd:bsauto} 文件中{p_end}
{phang2}{cmd:. bootstrap t=r(t), rep(1000) strata(foreign)}
          {cmd:saving(bsauto, replace): ttest mpg, by(foreign) unequal}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:bootstrap} 将以下信息存储在 {cmd:e()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:e(N)}}样本大小{p_end}
{synopt:{cmd:e(N_reps)}}完整的复抽次数{p_end}
{synopt:{cmd:e(N_misreps)}}不完整的复抽次数{p_end}
{synopt:{cmd:e(N_strata)}}层的数量{p_end}
{synopt:{cmd:e(N_clust)}}集群的数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_exp)}}标准表达式的数量{p_end}
{synopt:{cmd:e(k_eexp)}}扩展表达式的数量（即，{cmd:_b}）{p_end}
{synopt:{cmd:e(k_extra)}}超出 {cmd:e(b)} 中原始方程的额外方程数量{p_end}
{synopt:{cmd:e(level)}}自助置信区间的置信水平{p_end}
{synopt:{cmd:e(bs_version)}}{cmd:bootstrap} 结果的版本{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:e(cmdname)}}来自 {it:command} 的命令名称{p_end}
{synopt:{cmd:e(cmd)}}与 {cmd:e(cmdname)} 或 {cmd:bootstrap} 相同{p_end}
{synopt:{cmd:e(command)}}{it:command}{p_end}
{synopt:{cmd:e(cmdline)}}按输入命令{p_end}
{synopt:{cmd:e(prefix)}}{cmd:bootstrap}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(strata)}}分层变量{p_end}
{synopt:{cmd:e(cluster)}}集群变量{p_end}
{synopt:{cmd:e(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:e(size)}}来自 {cmd:size(}{it:#}{cmd:)} 选项{p_end}
{synopt:{cmd:e(exp}{it:#}{cmd:)}}第 {it:#} 个统计量的表达式{p_end}
{synopt:{cmd:e(ties)}}{cmd:ties}（如已指定）{p_end}
{synopt:{cmd:e(mse)}}{cmd:mse}（如已指定）{p_end}
{synopt:{cmd:e(vce)}}{cmd:bootstrap}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}观察到的统计量{p_end}
{synopt:{cmd:e(b_bs)}}自助估计{p_end}
{synopt:{cmd:e(reps)}}非缺失结果的数量{p_end}
{synopt:{cmd:e(bias)}}估计的偏差{p_end}
{synopt:{cmd:e(se)}}估计的标准误差{p_end}
{synopt:{cmd:e(z0)}}中位数偏差{p_end}
{synopt:{cmd:e(accel)}}估计的加速度{p_end}
{synopt:{cmd:e(ci_normal)}}正态近似置信区间{p_end}
{synopt:{cmd:e(ci_percentile)}}百分位数置信区间{p_end}
{synopt:{cmd:e(ci_bc)}}偏差校正置信区间{p_end}
{synopt:{cmd:e(ci_bca)}}偏差校正和加速置信区间{p_end}
{synopt:{cmd:e(V)}}自助方差协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{pstd}
当 {it:exp_list} 为 {cmd:_b} 时，自助也将从 {it:command} 中携带大部分已经在 {cmd:e()} 中的结果。
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker MD1993}{...}
{phang}
Mooney, C. Z. 和 R. D. Duval. 1993.
{browse "http://www.stata.com/bookstore/banasi.html":{it:Bootstrapping: A Nonparametric Approach to Statistical Inference}.}
加利福尼亚州新伯里公园：Sage。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bootstrap.sthlp>}