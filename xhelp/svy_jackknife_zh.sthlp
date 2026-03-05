{smcl}
{* *! version 1.2.7  23jan2019}{...}
{viewerdialog "svy jackknife" "dialog svy_jackknife"}{...}
{vieweralsosee "[SVY] svy jackknife" "mansection SVY svyjackknife"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy postestimation" "help svy_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] jackknife" "help jackknife_zh"}{...}
{vieweralsosee "[SVY] svy bootstrap" "help svy_bootstrap_zh"}{...}
{vieweralsosee "[SVY] svy brr" "help svy_brr_zh"}{...}
{vieweralsosee "[SVY] svy sdr" "help svy_sdr_zh"}{...}
{viewerjumpto "Syntax" "svy_jackknife_zh##syntax"}{...}
{viewerjumpto "Menu" "svy_jackknife_zh##menu"}{...}
{viewerjumpto "Description" "svy_jackknife_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "svy_jackknife_zh##linkspdf"}{...}
{viewerjumpto "Options" "svy_jackknife_zh##options"}{...}
{viewerjumpto "Examples" "svy_jackknife_zh##examples"}{...}
{viewerjumpto "Stored results" "svy_jackknife_zh##results"}
{help svy_jackknife:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[SVY] svy jackknife} {hline 2}}对调查数据的杰克刀估计
{p_end}
{p2col:}({mansection SVY svyjackknife:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:svy} {cmdab:jack:knife}
	{it:{help exp_list_zh}}
	[{cmd:,}
		{help svy jackknife##svy_options:{it:svy_options}}
		{help svy jackknife##jackknife_options:{it:jackknife_options}}
		{it:{help eform_option_zh}}]
	{cmd::} {it:command}

{phang}
{it:{help exp_list_zh}} 指定要从 {it:command} 执行中收集的统计信息。除非 {it:command} 具有 {cmd:svyj} 程序属性，否则 {it:exp_list} 是必需的，此时 {it:exp_list} 默认为 {cmd:_b}; 请参见 {manhelp program_properties P:程序属性}。

{marker svy_options}{...}
{synoptset 25 tabbed}{...}
{synopthdr:svy_options}
{synoptline}
{syntab:if/in}
{synopt :{opt sub:pop}{cmd:(}[{varname}] [{it:{help if_zh}}]{cmd:)}}识别
	   子人群{p_end}

{syntab:Reporting}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt noh:eader}}抑制表头{p_end}
{synopt :{opt nol:egend}}抑制表图例{p_end}
{synopt :{opt noadj:ust}}不调整模型 Wald 统计量{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help svy##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

INCLUDE help shortdes-coeflegend
{synoptline}
{p 4 6 2}
{opt coeflegend} 在估计命令的对话框中是不显示的。
{p_end}

{marker jackknife_options}{...}
{synopthdr:jackknife_options}
{synoptline}
{syntab:Main}
{synopt :{opt e:class}}观察数量存储在 {cmd:e(N)} 中{p_end}
{synopt :{opt r:class}}观察数量存储在 {cmd:r(N)} 中{p_end}
{synopt :{opt n(exp)}}指定评估为所用观察数量的 {it:exp}{p_end}

{syntab:Options}
{synopt :{help prefix_saving_option_zh:{bf:{ul:sa}ving(}{it:filename}{bf:[, ...])}}}将结果保存到 {it:filename}；以双精度保存统计数据；每 {it:#} 次复制保存结果到 {it:filename}{p_end}
{synopt :{opt keep}}保留伪值{p_end}
{synopt :{opt mse}}使用 MSE 公式计算方差{p_end}

{syntab:Reporting}
{synopt :{opt v:erbose}}显示完整表图例{p_end}
{synopt :{opt nodots}}抑制复制点{p_end}
{synopt :{opt dots(#)}}每 {it:#} 次复制显示点{p_end}
{synopt :{opt noi:sily}}显示来自 {it:command} 的任何输出{p_end}
{synopt :{opt tr:ace}}跟踪 {it:command}{p_end}
{synopt :{opt ti:tle(text)}}将 {it:text} 用作杰克刀结果的标题{p_end}

{syntab:Advanced}
{synopt :{opt nodrop}}不删除观察{p_end}
{synopt :{opth reject(exp)}}识别无效结果{p_end}
{synopt :{opt dof(#)}}设计自由度{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help svy_notes_common


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 调查数据分析 > 重抽样 > 杰克刀估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:svy} {cmd:jackknife} 对 Stata 命令或用户编写程序指定的统计（或表达式）执行杰克刀方差估计。每个复制的命令使用根据杰克刀方法调整的采样权重执行一次。可与 {cmd:svy} {cmd:jackknife} 一起使用的任意 Stata 估计命令列于 {manhelp svy_estimation SVY:svy 估计} 中。符合 {manhelp program_properties P:程序属性} 要求的用户编写程序也可使用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SVY svyjackknifeQuickstart:快速入门}

        {mansection SVY svyjackknifeRemarksandexamples:备注和示例}

        {mansection SVY svyjackknifeMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:svy_options}; 请参见 {manhelp svy SVY}。

{dlgtab:Main}

{phang}
{opt eclass}、{opt rclass} 和 {opt n(exp)} 指定 {it:command} 存储计算结果的观察数量。我们强烈建议您指定其中一个选项。

{pin}
{opt eclass} 指定 {it:command} 将观察数量存储在 {hi:e(N)} 中。

{pin}
{opt rclass} 指定 {it:command} 将观察数量存储在 {hi:r(N)} 中。

{pin}
{opt n(exp)} 允许您指定一个表达式，该表达式评估为使用的观察数量。指定 {cmd:n(r(N))} 相当于指定 {opt rclass} 选项。指定 {cmd:n(e(N))} 相当于指定 {opt eclass} 选项。如果 {it:command} 将观察数量存储在 {cmd:r(N1)} 中，请指定 {cmd:n(r(N1))}。

{pin}
如果您没有指定这些选项，则 {cmd:svy} {cmd:jackknife} 将假设 {opt eclass} 或 {opt rclass}，具体取决于 {hi:e(N)} 和 {hi:r(N)} 哪个不缺失（按此顺序）。如果 {hi:e(N)} 和 {hi:r(N)} 都缺失，则 {cmd:svy} {cmd:jackknife} 假设数据集中所有观察都对计算结果有贡献。如果这个假设不正确，则报告的标准误将不正确。请参见 {mansection SVY svyjackknifeOptionseclass:{bf:[SVY] svy jackknife}} 以获取更多详细信息。

{dlgtab:Options}

INCLUDE help prefix_saving_option

{pmore}
有关 {it:suboptions} 的详细信息，请参见 {it:{help prefix_saving_option_zh}}。

{phang}
{opt keep} 指定将新变量添加到数据集中，这些变量包含所请求统计的伪值。
有关详细信息，请参见 {mansection SVY svyjackknifeOptionskeep:{bf:[SVY] svy jackknife}}。 {opt keep} 意味着 {opt nodrop} 选项。

{phang}
{opt mse} 指定 {cmd:svy} {cmd:jackknife} 使用偏差的计算方差，偏差是从整个数据集计算的统计值。默认情况下，{cmd:svy} {cmd:jackknife} 通过使用伪值与其均值的偏差来计算方差。

{dlgtab:Reporting}

{phang}
{opt verbose} 请求显示完整的表图例。

{phang}
{opt nodots} 和 {opt dots(#)} 指定是否显示复制点。默认情况下，每次成功复制都会打印一个点字符。如果 {it:command} 返回错误，则显示红色 “x”，如果 {it:exp_list} 的至少一个值缺失，则显示“e”，如果样本大小不正确，则显示“n”，如果丢弃的采样单元位于子人群样本之外，则显示黄色“s”。

{phang2}
{opt nodots} 抑制复制点的显示。

{phang2}
{opt dots(#)} 每 {it:#} 次复制显示点。 {cmd:dots(0)} 是 {cmd:nodots} 的同义词。

{phang}
{opt noisily} 请求显示来自 {it:command} 的任何输出。此选项暗示 {opt nodots} 选项。

{phang}
{opt trace} 使 {it:command} 的执行轨迹显示。此选项暗示 {opt noisily} 选项。

{phang}
{opt title(text)} 指定要在杰克刀结果表上方显示的标题；默认标题为“杰克刀结果”。

{phang}
{it:eform_option}; 请参见 {manhelpi eform_option R}。
如果 {it:{help exp_list_zh}} 不是 {cmd:_b}，则此选项被忽略。

{dlgtab:Advanced}

{phang}
{opt nodrop} 防止 {cmd:e(sample)} 之外的观察和 {cmd:if} 和 {cmd:in} 限定词在数据重抽样之前被删除。

{phang}
{opth reject(exp)} 识别一个表达式，该表达式指示何时应拒绝结果。当 {it:exp} 为真时，结果值将重置为缺失值。

{phang}
{opt dof(#)} 指定设计自由度，覆盖默认计算，df = N_psu - N_strata。


{marker examples}{...}
{title:示例}

{phang}
{cmd:. webuse nhanes2}
{p_end}
{phang}
{cmd:. svy jackknife slope = _b[height] constant=_b[_cons]:}
           {cmd:regress weight height}
{p_end}

{phang}
{cmd:. webuse nhanes2jknife}
{p_end}
{phang}
{cmd:. svyset _n}
{p_end}
{phang}
{cmd:. svy jackknife slope = _b[height] : regress weight height}
{p_end}
{phang}
{cmd:. svy jackknife slope = _b[height], mse : regress weight height}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
除了在 {manhelp svy SVY} 中记录的结果，{cmd:svy jackknife} 还将以下内容存储在 {cmd:e()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N_reps)}}复制次数{p_end}
{synopt:{cmd:e(N_misreps)}}具有缺失值的复制次数{p_end}
{synopt:{cmd:e(k_exp)}}标准表达式数量{p_end}
{synopt:{cmd:e(k_eexp)}} {cmd:_b}/{cmd:_se} 表达式数量{p_end}
{synopt:{cmd:e(k_extra)}} 添加到 {cmd:_b} 的额外估计数{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmdname)}}来自 {it:command} 的命令名称{p_end}
{synopt:{cmd:e(cmd)}}与 {cmd:e(cmdname)} 或 {cmd:jackknife} 相同{p_end}
{synopt:{cmd:e(vce)}}{cmd:jackknife}{p_end}
{synopt:{cmd:e(exp}{it:#}{cmd:)}}第 {it:#} 个表达式{p_end}
{synopt:{cmd:e(jkrweight)}}{cmd:jkrweight()} 变量列表{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b_jk)}}杰克刀均值{p_end}
{synopt:{cmd:e(V)}}杰克刀方差估计{p_end}

{pstd}
当 {it:exp_list} 为 {cmd:_b} 时，{cmd:svy jackknife} 还将转发 {it:command} 中大部分已经存在的 {cmd:e()} 结果。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svy_jackknife.sthlp>}