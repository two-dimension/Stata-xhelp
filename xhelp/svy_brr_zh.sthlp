{smcl}
{* *! version 1.2.7  23jan2019}{...}
{viewerdialog "svy brr" "dialog svy_brr"}{...}
{vieweralsosee "[SVY] svy brr" "mansection SVY svybrr"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy postestimation" "help svy_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy bootstrap" "help svy_bootstrap_zh"}{...}
{vieweralsosee "[SVY] svy jackknife" "help svy_jackknife_zh"}{...}
{vieweralsosee "[SVY] svy sdr" "help svy_sdr_zh"}{...}
{viewerjumpto "语法" "svy_brr_zh##syntax"}{...}
{viewerjumpto "菜单" "svy_brr_zh##menu"}{...}
{viewerjumpto "描述" "svy_brr_zh##description"}{...}
{viewerjumpto "PDF文档链接" "svy_brr_zh##linkspdf"}{...}
{viewerjumpto "选项" "svy_brr_zh##options"}{...}
{viewerjumpto "示例" "svy_brr_zh##examples"}{...}
{viewerjumpto "存储结果" "svy_brr_zh##results"}
{help svy_brr:English Version}
{hline}{...}
{p2colset 1 18 22 2}{...}
{p2col:{bf:[SVY] svy brr} {hline 2}}用于调查数据的平衡重复复制{p_end}
{p2col:}({mansection SVY svybrr:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
[{cmd:svy}] {cmd:brr}
	{it:{help exp_list_zh}}
	[{cmd:,}
		{help svy brr##svy_options:{it:svy_options}}
		{help svy brr##brr_options:{it:brr_options}}
		{it:{help eform_option_zh}}]
	{cmd::} {it:command}

{phang}
{it:{help exp_list_zh}}指定要从{it:command}的执行中收集的统计数据。除非{it:command}具有{cmd:svyb}程序属性，{it:exp_list}是必需的，在这种情况下，{it:exp_list}默认为{cmd:_b}；请参见 {manhelp program_properties P:程序属性}。

{marker svy_options}{...}
{synoptset 25 tabbed}{...}
{synopthdr:svy_options}
{synoptline}
{syntab:if/in}
{synopt :{opt sub:pop}{cmd:(}[{varname}] [{it:{help if_zh}}]{cmd:)}}确定子人群{p_end}

{syntab:Reporting}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt noh:eader}}抑制表头{p_end}
{synopt :{opt nol:egend}}抑制表图例{p_end}
{synopt :{opt noadj:ust}}不调整模型Wald统计量{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help svy##display_options:display_options}}}控制
包含帮助短描述-displayoptall

包含帮助短描述-系数图例
{synoptline}
{p 4 6 2}
{opt coeflegend}未在估计命令的对话框中显示。
{p_end}

{marker brr_options}{...}
{synopthdr:brr_options}
{synoptline}
{syntab:Main}
{synopt :{opt h:adamard(matrix)}}Hadamard矩阵{p_end}
{synopt :{opt fay(#)}}Fay的调整{p_end}

{syntab:Options}
{synopt :{help prefix_saving_option_zh:{bf:{ul:sa}ving(}{it:filename}{bf:[, ...])}}}将结果保存到 {it:filename}；以双精度保存统计数据；每{it:#}次重复将结果保存到 {it:filename}{p_end}
{synopt :{opt mse}}使用均方误差公式计算方差{p_end}

{syntab:Reporting}
{synopt :{opt v:erbose}}显示完整表图例{p_end}
{synopt :{opt nodots}}抑制复制点{p_end}
{synopt :{opt dots(#)}}每{it:#}次重复显示点{p_end}
{synopt :{opt noi:sily}}显示来自{it:command}的任何输出{p_end}
{synopt :{opt tr:ace}}跟踪{it:command}{p_end}
{synopt :{opt ti:tle(text)}}将 {it:text} 用作 BRR 结果的标题{p_end}

{syntab:Advanced}
{synopt :{opt nodrop}}不删除观测值{p_end}
{synopt :{opth reject(exp)}}识别无效结果{p_end}
{synopt :{opt dof(#)}}设计自由度{p_end}
{synoptline}
{p2colreset}{...}
包含帮助 svy_notes_common


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 调查数据分析 > 重新抽样 >}
      {bf:平衡重复复制估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:svy} {cmd:brr} 对指定统计数据（或表达式）执行平衡重复复制（BRR）估计，适用于 Stata 命令或用户编写的程序。该命令对于每个复制执行一次，使用根据 BRR 方法调整的抽样权重。任何在{manhelp svy_estimation SVY:svy 估计}中列出的 Stata 估计命令均可与 {cmd:svy} {cmd:brr} 一起使用。同时满足{manhelp program_properties P:程序属性}中要求的用户编写程序也可以使用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SVY svybrrQuickstart:快速入门}

        {mansection SVY svybrrRemarksandexamples:备注和示例}

        {mansection SVY svybrrMethodsandformulas:方法和公式}

{pstd}
上述部分未包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:svy_options}; 请参见 {manhelp svy SVY}。

{dlgtab:Main}

{phang}
{opt hadamard(matrix)} 指定要用于确定每个复制选择哪些PSU的Hadamard矩阵。

{phang}
{opt fay(#)} 指定 Fay 的调整，其中 0 {ul:<} {it:#} {ul:<} 2，但不包括 1。
此选项覆盖 {help svyset_zh} 的 {opt fay(#)} 选项。

{dlgtab:Options}

包含帮助 prefix_saving_option

{pmore}
请参见 {it:{help prefix_saving_option_zh}} 以获取有关 {it:suboptions} 的详细信息。

{phang}
{opt mse} 指定 {cmd:svy} {cmd:brr} 使用基于整个数据集的统计观察值计算方差。默认情况下，{cmd:svy} {cmd:brr} 使用基于其均值的重复观察值计算方差。

{dlgtab:Reporting}

{phang}
{opt verbose} 请求显示完整的表图例。

包含帮助 svy_dots

{phang}
{opt noisily} 请求显示任何来自 {it:command} 的输出。
此选项意味着 {opt nodots} 选项。

{phang}
{opt trace} 导致显示 {it:command} 执行的跟踪。
此选项意味着 {opt noisily} 选项。

{phang}
{opt title(text)} 指定一个在 BRR 结果表上方显示的标题；默认标题为“BRR 结果”。

{phang}
{it:eform_option}; 请参见 {manhelpi eform_option R}。
如果 {it:{help exp_list_zh}} 不是 {cmd:_b}，则此选项将被忽略。

{dlgtab:Advanced}

{phang}
{opt nodrop} 防止在重新抽样之前删除 {cmd:e(sample)} 和 {cmd:if} 及 {cmd:in} 限定符之外的观测值。

{phang}
{opth reject(exp)} 识别一个表达式，指示何时应拒绝结果。当 {it:exp} 为真时，结果值将重置为缺失值。

{phang}
{opt dof(#)} 指定设计自由度，覆盖默认计算， df = N_psu - N_strata。


{marker examples}{...}
{title:示例}

{phang}
{cmd:. webuse nhanes2brr}
{p_end}
{phang}
{cmd:. svyset}
{p_end}
{phang}
{cmd:. svy brr WtoH = (_b[weight]/_b[height]) : total weight height}
{p_end}
{phang}
{cmd:. svy brr WtoH = (_b[weight]/_b[height]), mse : total weight height}
{p_end}

{pstd}
Hadamard 矩阵
{p_end}

{phang}
{cmd:. matrix h2 = (-1, 1 \ 1, 1)}
{p_end}
{phang}
{cmd:. matrix h4 = h2 # h2}
{p_end}
{phang}
{cmd:. matrix h8 = h2 # h4}
{p_end}
{phang}
{cmd:. matrix h16 = h2 # h8}
{p_end}
{phang}
{cmd:. matrix h32 = h2 # h16}
{p_end}
{phang}
{cmd:. webuse nhanes2}
{p_end}
{phang}
{cmd:. svy brr, hadamard(h32) : ratio (WtoH: weight/height)}
{p_end}



{marker results}{...}
{title:存储结果}

{pstd}
除了在 {manhelp svy SVY} 中记录的结果之外，{cmd:svy brr} 在 {cmd:e()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N_reps)}}重复次数{p_end}
{synopt:{cmd:e(N_misreps)}}具有缺失值的重复次数{p_end}
{synopt:{cmd:e(k_exp)}}标准表达式数量{p_end}
{synopt:{cmd:e(k_eexp)}} {cmd:_b}/{cmd:_se} 表达式的数量{p_end}
{synopt:{cmd:e(k_extra)}} 添加到 {cmd:_b} 的额外估计数量{p_end}
{synopt:{cmd:e(fay)}} Fay 的调整{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmdname)}}来自 {it:command} 的命令名称{p_end}
{synopt:{cmd:e(cmd)}}与 {cmd:e(cmdname)} 或 {cmd:brr} 相同{p_end}
{synopt:{cmd:e(vce)}}{cmd:brr}{p_end}
{synopt:{cmd:e(brrweight)}}{cmd:brrweight()} 变量列表{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b_brr)}}BRR 均值{p_end}
{synopt:{cmd:e(V)}}BRR 方差估计{p_end}

{pstd}
当 {it:exp_list} 为 {cmd:_b} 时，{cmd:svy brr} 还会将大部分结果从 {it:command} 转发到 {cmd:e()} 中。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svy_brr.sthlp>}