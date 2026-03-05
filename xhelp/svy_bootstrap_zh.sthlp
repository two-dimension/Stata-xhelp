{smcl}
{* *! version 1.1.7  23jan2019}{...}
{viewerdialog "svy bootstrap" "dialog svy_bootstrap"}{...}
{vieweralsosee "[SVY] svy bootstrap" "mansection SVY svybootstrap"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy postestimation" "help svy_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bootstrap" "help bootstrap_zh"}{...}
{vieweralsosee "[SVY] svy brr" "help svy_brr_zh"}{...}
{vieweralsosee "[SVY] svy jackknife" "help svy_jackknife_zh"}{...}
{vieweralsosee "[SVY] svy sdr" "help svy_sdr_zh"}{...}
{viewerjumpto "Syntax" "svy_bootstrap_zh##syntax"}{...}
{viewerjumpto "Menu" "svy_bootstrap_zh##menu"}{...}
{viewerjumpto "Description" "svy_bootstrap_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "svy_bootstrap_zh##linkspdf"}{...}
{viewerjumpto "Options" "svy_bootstrap_zh##options"}{...}
{viewerjumpto "Examples" "svy_bootstrap_zh##examples"}{...}
{viewerjumpto "Stored results" "svy_bootstrap_zh##results"}
{help svy_bootstrap:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[SVY] svy bootstrap} {hline 2}}对调查数据进行自助法估计{p_end}
{p2col:}({mansection SVY svybootstrap:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:svy} {cmd:bootstrap}
	{it:{help exp_list_zh}}
	[{cmd:,}
		{help svy bootstrap##svy_options:{it:svy_options}}
		{help svy bootstrap##bootstrap_options:{it:bootstrap_options}}
		{it:{help eform_option_zh}}]
	{cmd::} {it:command}

{phang}
{it:{help exp_list_zh}}指示要从执行{it:command}所收集的统计数据。除非{it:command}具备{cmd:svyb}程序属性，否则{it:exp_list}是必需的，此时{it:exp_list}默认为{cmd:_b}；请参见 {manhelp program_properties P:程序属性}。

{marker svy_options}{...}
{synoptset 25 tabbed}{...}
{synopthdr:svy_options}
{synoptline}
{syntab:if/in}
{synopt :{opt sub:pop}{cmd:(}[{varname}] [{it:{help if_zh}}]{cmd:)}}识别子群体{p_end}

{syntab:Reporting}
{synopt :{opt l:evel(#)}}设置信赖区间；默认值为{cmd:level(95)}{p_end}
{synopt :{opt noh:eader}}抑制表头{p_end}
{synopt :{opt nol:egend}}抑制表图例{p_end}
{synopt :{opt noadj:ust}}不调整模型的Wald统计量{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help svy##display_options:display_options}}}控制
包含帮助短说明-显示选项全部

包含帮助短说明-系数图例
{synoptline}
{p 4 6 2}
{opt coeflegend}未在估计命令的对话框中显示。
{p_end}

{marker bootstrap_options}{...}
{synopthdr:bootstrap_options}
{synoptline}
{syntab:Main}
{synopt :{opt bsn(#)}}自助法均值加权调整{p_end}

{syntab:Options}
{synopt :{help prefix_saving_option_zh:{bf:{ul:sa}ving(}{it:filename}[{bf:,} ...]{bf:)}}}将结果保存到{it:filename}；以双精度保存统计量；每{it:#}次重复保存结果到{it:filename}{p_end}
{synopt :{opt mse}}使用均方误差公式计算方差{p_end}

{syntab:Reporting}
{synopt :{opt v:erbose}}显示完整的表图例{p_end}
{synopt :{opt nodots}}抑制重复点{p_end}
{synopt :{opt dots(#)}}每{it:#}次重复显示点{p_end}
{synopt :{opt noi:sily}}显示来自{it:command}的任何输出{p_end}
{synopt :{opt tr:ace}}跟踪{it:command}{p_end}
{synopt :{opt ti:tle(text)}}使用{it:text}作为自助法结果的标题{p_end}

{syntab:Advanced}
{synopt :{opt nodrop}}不删除观察值{p_end}
{synopt :{opth reject(exp)}}识别无效结果{p_end}
{synopt :{opt dof(#)}}设计自由度{p_end}
{synoptline}
{p2colreset}{...}
包含帮助 svy_notes_common
{phang}
{cmd:svy} {cmd:bootstrap}要求通过{help svyset_zh}识别自助法复制权重。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 调查数据分析 > 重新抽样 > 自助法估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:svy} {cmd:bootstrap}对指定统计量（或表达式）进行非参数自助法估计，以用于Stata命令或用户自编程序。每次使用根据自助法方法调整的采样权重执行一次命令。{manhelp svy_estimation SVY:svy估计}列表中的任何Stata估计命令都可与{cmd:svy} {cmd:bootstrap}结合使用。同时满足{manhelp program_properties P:程序属性}要求的用户编写程序也可使用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SVY svybootstrapQuickstart:快速开始}

        {mansection SVY svybootstrapRemarksandexamples:备注和示例}

        {mansection SVY svybootstrapMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:svy_options}; 参见 {manhelp svy SVY}。

{dlgtab:Main}

{phang}
{opt bsn(#)}指示用于生成{help svyset_zh}中{opt bsrweight()}选项所指定的每个自助法均值变量的{it:#}个自助法复制权重变量。默认值为{cmd:bsn(1)}。{cmd:svy bootstrap}的{opt bsn()}选项会覆盖{help svyset_zh}的{opt bsn(#)}选项。

{dlgtab:Options}

包含帮助 prefix_saving_option

{pmore}
有关{it:suboptions}的详细信息，请参见{it:{help prefix_saving_option_zh}}。

{phang}
{opt mse}指定{cmd:svy} {cmd:bootstrap}通过使用基于整个数据集的观察值与复制值之间的偏差来计算方差。默认情况下，{cmd:svy} {cmd:bootstrap}通过使用复制值与其均值之间的偏差来计算方差。

{dlgtab:Reporting}

{phang}
{opt verbose}请求显示完整的表图例。

包含帮助 svy_dots

{phang}
{opt noisily}请求显示来自{it:command}的任何输出。此选项意味着{opt nodots}选项。

{phang}
{opt trace}导致显示{it:command}执行的跟踪。此选项意味着{opt noisily}选项。

{phang}
{opt title(text)}指定在自助法结果表格上方显示的标题；默认标题为“自助法结果”。

{phang}
{it:eform_option}; 参见 {manhelpi eform_option R}。如果{it:{help exp_list_zh}}不是{cmd:_b}，则忽略此选项。

{dlgtab:Advanced}

{phang}
{opt nodrop}防止数据在重新抽样之前，从{cmd:e(sample)}和{cmd:if}及{cmd:in}限定条件中剔除观察值。

{phang}
{opth reject(exp)}识别一个表达式，用以指示何时应拒绝结果。当{it:exp}为真时，结果值将重置为缺失值。

{phang}
{opt dof(#)}指定设计自由度，覆盖默认计算，df = N_psu - N_strata。


{marker examples}{...}
{title:示例}

{phang}
{cmd:. webuse nmihs_bs}
{p_end}
{phang}
{cmd:. svyset}
{p_end}
{phang}
{cmd:. svy, nodots: mean birthwgt}
{p_end}

{phang}
{cmd:. webuse nmihs_mbs}
{p_end}
{phang}
{cmd:. svyset}
{p_end}
{phang}
{cmd:. svy, nodots: mean birthwgt}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
除{manhelp svy SVY}中记录的结果外，{cmd:svy bootstrap}在{cmd:e()}中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N_reps)}}复制次数{p_end}
{synopt:{cmd:e(N_misreps)}}含缺失值的复制次数{p_end}
{synopt:{cmd:e(k_exp)}}标准表达式的数量{p_end}
{synopt:{cmd:e(k_eexp)}}{cmd:_b}/{cmd:_se}表达式的数量{p_end}
{synopt:{cmd:e(k_extra)}}添加到{cmd:_b}的额外估计数量{p_end}
{synopt:{cmd:e(bsn)}}自助法均值加权调整{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmdname)}}来自{it:command}的命令名称{p_end}
{synopt:{cmd:e(cmd)}}与{cmd:e(cmdname)}或{cmd:bootstrap}相同{p_end}
{synopt:{cmd:e(vce)}}{cmd:bootstrap}{p_end}
{synopt:{cmd:e(exp}{it:#}{cmd:)}}第{it:#}个表达式{p_end}
{synopt:{cmd:e(bsrweight)}}{cmd:bsrweight()}变量列表{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b_bs)}}自助法均值{p_end}
{synopt:{cmd:e(V)}}自助法方差估计{p_end}

{pstd}
当{it:exp_list}为{cmd:_b}时，{cmd:svy bootstrap}还将继续携带{it:command}中{cmd:e()}中大多数已存在的结果。
{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svy_bootstrap.sthlp>}