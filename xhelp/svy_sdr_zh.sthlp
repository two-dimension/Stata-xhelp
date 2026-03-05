{smcl}
{* *! version 1.1.7  23jan2019}{...}
{viewerdialog "svy sdr" "dialog svy_sdr"}{...}
{vieweralsosee "[SVY] svy sdr" "mansection SVY svysdr"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy postestimation" "help svy_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy bootstrap" "help svy_bootstrap_zh"}{...}
{vieweralsosee "[SVY] svy brr" "help svy_brr_zh"}{...}
{vieweralsosee "[SVY] svy jackknife" "help svy_jackknife_zh"}{...}
{viewerjumpto "语法" "svy_sdr_zh##syntax"}{...}
{viewerjumpto "菜单" "svy_sdr_zh##menu"}{...}
{viewerjumpto "描述" "svy_sdr_zh##description"}{...}
{viewerjumpto "PDF文档链接" "svy_sdr_zh##linkspdf"}{...}
{viewerjumpto "选项" "svy_sdr_zh##options"}{...}
{viewerjumpto "示例" "svy_sdr_zh##example"}{...}
{viewerjumpto "存储结果" "svy_sdr_zh##results"}
{help svy_sdr:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[SVY] svy sdr} {hline 2}}逐次差异复制法用于调查数据{p_end}
{p2col:}({mansection SVY svysdr:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
[{cmd:svy}] {cmd:sdr}
	{it:{help exp_list_zh}}
	[{cmd:,}
		{help svy sdr##svy_options:{it:svy_options}}
		{help svy sdr##sdr_options:{it:sdr_options}}
		{it:{help eform_option_zh}}]
	{cmd::} {it:command}

{phang}
{it:{help exp_list_zh}}指定要从执行 {it:command} 中收集的统计量。除非 {it:command} 具有 {cmd:svyb} 程序属性，否则 {it:exp_list} 是必需的，在该情况下 {it:exp_list} 默认为 {cmd:_b}；请参阅 {manhelp program_properties P:程序属性}。

{marker svy_options}{...}
{synoptset 25 tabbed}{...}
{synopthdr:svy_options}
{synoptline}
{syntab:if/in}
{synopt :{opt sub:pop}{cmd:(}[{varname}] [{it:{help if_zh}}]{cmd:)}}识别子人群{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt noh:eader}}抑制表头{p_end}
{synopt :{opt nol:egend}}抑制表图例{p_end}
{synopt :{opt noadj:ust}}不调整模型Wald统计量{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help svy##display_options:display_options}}}控制
包含帮助短描述-显示选项全部

包含帮助短描述-系数图例
{synoptline}
{p 4 6 2}
{opt coeflegend}未在估计命令的对话框中显示。
{p_end}

{marker sdr_options}{...}
{synopthdr:sdr_options}
{synoptline}
{syntab:选项}
{synopt :{help prefix_saving_option_zh:{bf:{ul:保存(}{it:filename}[{bf:,} ...]{bf:)}}}保存
	结果到 {it:filename}；以双精度保存统计量；每 {it:#} 次重复保存结果到 {it:filename} {p_end}
{synopt :{opt mse}}使用均方误差公式计算方差{p_end}

{syntab:报告}
{synopt :{opt v:erbose}}显示完整的表图例{p_end}
{synopt :{opt nodots}}抑制复制点{p_end}
{synopt :{opt dots(#)}}每 {it:#} 次复制显示点{p_end}
{synopt :{opt noi:sily}}显示来自 {it:command} 的任何输出{p_end}
{synopt :{opt tr:ace}}追踪 {it:command} 的执行{p_end}
{synopt :{opt ti:tle(text)}}使用 {it:text} 作为SDR结果的标题{p_end}

{syntab:高级}
{synopt :{opt nodrop}}不删除观察值{p_end}
{synopt :{opth reject(exp)}}识别无效结果{p_end}
{synopt :{opt dof(#)}}设计自由度{p_end}
{synoptline}
{p2colreset}{...}
包含帮助 svy_notes_common
{phang}
{cmd:svy} {cmd:sdr} 要求使用 {help svyset_zh} 确定逐次差异复制权重。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 调查数据分析 > 重抽样 >}
      {bf:逐次差异复制估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:svy} {cmd:sdr} 对指定的统计量（或表达式）执行逐次差异复制（SDR）估计，适用于Stata命令或用户编写的程序。该命令针对每个复制使用根据SDR方法调整的抽样权重执行一次。可以与 {cmd:svy} {cmd:sdr} 一起使用的任何Stata估计命令列在 {manhelp svy_estimation SVY:svy估计} 中。满足 {manhelp program_properties P:程序属性} 中要求的用户编写程序也可以使用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SVY svysdrQuickstart:快速入门}

        {mansection SVY svysdrRemarksandexamples:备注和示例}

        {mansection SVY svysdrMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:svy_options}; 请参见 {manhelp svy SVY}。

{dlgtab:选项}

包含帮助 prefix_saving_option

{pmore}
有关 {it:suboptions} 的详细信息，请参见 {it:{help prefix_saving_option_zh}}。

{phang}
{opt mse} 指定 {cmd:svy} {cmd:sdr} 通过使用整个数据集的统计量观察值与复制值的偏差来计算方差。 默认情况下， {cmd:svy} {cmd:sdr} 通过使用复制值与其均值的偏差来计算方差。

{dlgtab:报告}

{phang}
{opt verbose} 请求显示完整的表图例。

包含帮助 svy_dots

{phang}
{opt noisily} 请求显示来自 {it:command} 的任何输出。此选项意味着 {opt nodots} 选项。

{phang}
{opt trace} 使 {it:command} 的执行追踪被显示。此选项意味着 {opt noisily} 选项。

{phang}
{opt title(text)} 指定在SDR结果表上方显示的标题；默认标题为“SDR结果”。

{phang}
{it:eform_option}; 请参见 {manhelpi eform_option R}。如果 {it:{help exp_list_zh}} 不是 {cmd:_b} ，则此选项被忽略。

{dlgtab:高级}

{phang}
{opt nodrop} 防止在数据重新抽样之前丢弃 {cmd:e(sample)} 及 {cmd:if} 和 {cmd:in} 限定符外的观察值。

{phang}
{opth reject(exp)} 确认一个表达式，指示何时应拒绝结果。当 {it:exp} 为真时，结果值将被重置为缺失值。

{phang}
{opt dof(#)} 指定设计自由度，覆盖默认计算，df = N_psu - N_strata。


{marker example}{...}
{title:示例}

{phang}
{cmd:. webuse ss07ptx}
{p_end}
{phang}
{cmd:. svyset}
{p_end}
{phang}
{cmd:. svy: mean agep, over(sex)}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
除了在 {manhelp svy SVY} 中记录的结果外，{cmd:svy sdr} 还在 {cmd:e()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N_reps)}}复制次数{p_end}
{synopt:{cmd:e(N_misreps)}}含缺失值的复制次数{p_end}
{synopt:{cmd:e(k_exp)}}标准表达式数{p_end}
{synopt:{cmd:e(k_eexp)}}{cmd:_b}/{cmd:_se} 表达式数{p_end}
{synopt:{cmd:e(k_extra)}}添加到 {cmd:_b} 的额外估计数{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmdname)}}来自 {it:command} 的命令名称{p_end}
{synopt:{cmd:e(cmd)}}与 {cmd:e(cmdname)} 或 {cmd:sdr} 相同{p_end}
{synopt:{cmd:e(vce)}}{cmd:sdr}{p_end}
{synopt:{cmd:e(exp}{it:#}{cmd:)}}第 {it:#} 个表达式{p_end}
{synopt:{cmd:e(sdrweight)}}{cmd:sdrweight()} 变量列表{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b_sdr)}}SDR均值{p_end}
{synopt:{cmd:e(V)}}SDR方差估计{p_end}

{pstd}
当 {it:exp_list} 为 {cmd:_b} 时， {cmd:svy sdr} 还将保留大部分来自 {it:command} 的 {cmd:e()} 中的结果。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svy_sdr.sthlp>}