{smcl}
{* *! version 1.1.19  19jun2019}{...}
{viewerdialog stepwise "dialog stepwise"}{...}
{vieweralsosee "[R] stepwise" "mansection R stepwise"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] nestreg" "help nestreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] Lasso intro" "help lasso intro"}{...}
{viewerjumpto "语法" "stepwise_zh##syntax"}{...}
{viewerjumpto "菜单" "stepwise_zh##menu"}{...}
{viewerjumpto "描述" "stepwise_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "stepwise_zh##linkspdf"}{...}
{viewerjumpto "选项" "stepwise_zh##options"}{...}
{viewerjumpto "示例" "stepwise_zh##examples"}{...}
{viewerjumpto "步进编程" "stepwise_zh##programming"}{...}
{viewerjumpto "存储结果" "stepwise_zh##results"}
{help stepwise:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] stepwise} {hline 2}}逐步估计{p_end}
{p2col:}({mansection R stepwise:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:stepwise}
	[{cmd:,}
		{it:options}]
	{cmd::} {it:{help stepwise##command:command}}

{synoptset 18 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent:* {opt pr(#)}}从模型中移除的显著性水平{p_end}
{p2coldent:* {opt pe(#)}}加入模型的显著性水平{p_end}

{syntab:模型2}
{synopt:{opt forw:ard}}执行前向逐步选择{p_end}
{synopt:{opt hier:archical}}执行分层选择{p_end}
{synopt:{opt loc:kterm1}}保留第一个项{p_end}
{synopt:{opt lr}}执行似然比检验而不是 Wald 检验{p_end}

{syntab:报告}
{synopt :{it:{help stepwise##display_options:display_options}}}控制列和列格式以及行宽{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 必须指定 {opt pr(#)} 或 {opt pe(#)} 中的至少一个。{p_end}
{p 4 6 2}
允许使用 {cmd:by} 和 {cmd:xi}；请参见 {help prefix_zh}。{p_end}
{p 4 6 2}
如果 {it:command} 允许，则允许使用权重；请参见 {help weight_zh}。{p_end}
{p 4 6 2}
所有后估计命令的行为与在无 {opt stepwise} 前缀的情况下相同；请参见 {it:command} 的后估计手册条目。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 其他 > 逐步估计}


{marker description}{...}
{title:描述}

{pstd}
{opt stepwise} 执行逐步估计。输入

{pin}
{cmd:. stepwise,} {opt pr(#)}{cmd::} {it:command}

{pstd}
对 {it:command} 执行向后选择估计。逐步选择方法由以下选项组合确定：

{synoptset 24}{...}
{synopthdr}
{synoptline}
{synopt:{opt pr(#)}}向后选择{p_end}
{synopt:{opt pr(#)} {opt hierarchical}}向后分层选择{p_end}
{synopt:{opt pr(#)} {opt pe(#)}}向后逐步{p_end}

{synopt:{opt pe(#)}}向前选择{p_end}
{synopt:{opt pe(#)} {opt hierarchical}}向前分层选择{p_end}
{synopt:{opt pr(#)} {opt pe(#)} {opt forward}}向前逐步{p_end}
{synoptline}
{p2colreset}{...}

{marker command}{...}
{pstd}
{it:command} 定义要执行的估计命令。{cmd:stepwise} 支持以下 Stata 命令。

{pmore}
{help betareg_zh},
{help clogit_zh},
{help cloglog_zh},
{help glm_zh},
{help intreg_zh},
{help logistic_zh},
{help logit_zh},
{help nbreg_zh},
{help ologit_zh},
{help oprobit_zh},
{help poisson_zh},
{help probit_zh},
{help qreg_zh},
{help regress_zh},
{help scobit_zh},
{help stcox_zh},
{help stcrreg_zh},
{help stintreg_zh},
{help streg_zh},
{help tobit_zh}

{pstd}
{cmd:stepwise} 期望 {it:command} 具有以下形式：

{p 8 21 2}
{it:command_name} [{depvar}] {it:term} [{it:term} ...] {ifin} {weight}
[{cmd:,} {it:command_options}]

{pstd}
其中 {it:term} 是 {varname} 或 {opth (varlist)} （括号中的 {it:varlist} 表示这组变量将一起包含或排除）。当 {it:command_name} 为 {help stcox_zh}、{help stcrreg_zh}、{help stintreg_zh} 或 {help streg_zh} 时，{it:depvar} 不存在；否则，假定存在 {it:depvar}。对于 {help intreg_zh}，{it:depvar} 实际上是两个因变量名（{it:depvar1} 和 {it:depvar2}）。

{pstd}
{cmd:sw} 是 {cmd:stepwise} 的同义词。

{pstd}
有关使用lasso进行模型选择和估计的信息，请参见 {mansection LASSO lassoLasso:{it:Stata Lasso Reference Manual}}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R stepwiseQuickstart:快速开始}

        {mansection R stepwiseRemarksandexamples:备注和示例}

        {mansection R stepwiseMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt pr(#)} 指定从模型中移除的显著性水平；p>={opt pr()} 的项有资格被移除。

{phang}
{opt pe(#)} 指定添加到模型的显著性水平；p<{opt pe()} 的项有资格被添加。

{dlgtab:模型2}

{phang}
{opt forward} 指定前向逐步方法，仅在同时指定 {opt pr()} 和 {opt pe()} 时才能被指定。指定 {opt pr()} 和 {opt pe()} 而不指定 {opt forward} 的结果是向后逐步选择。仅指定 {opt pr()} 的结果是向后选择，仅指定 {opt pe()} 的结果是向前选择。

{phang}
{opt hierarchical} 指定分层选择。

{phang}
{opt lockterm1} 指定第一个项应包含在模型中，并且不受选择标准的限制。

{phang}
{opt lr} 指定使用似然比检验作为项显著性的检验。默认使用计算量较少的 Wald 检验；即，检验基于估计的方差-协方差矩阵。

{dlgtab:报告}

{marker display_options}{...}
{phang}
{it:display_options}：
{opt noci},
{opt nopv:alues},
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}，以及
{opt nolstretch}；
    参见 {helpb estimation options##display_options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. generate weight2 = weight^2}

{pstd}向后选择{p_end}
{phang2}{cmd:. stepwise, pr(.2): regress mpg weight weight2 displ gear turn}
          {cmd:headroom foreign price}{p_end}

{pstd}向后选择；一起考虑发动机排量和挡位比{p_end}
{phang2}{cmd:. stepwise, pr(.2): regress mpg weight weight2 (displ gear) turn}
          {cmd:headroom foreign price}{p_end}

{pstd}向后选择；强制 {cmd:weight} 包含在模型中{p_end}
{phang2}{cmd:. stepwise, pr(.2) lockterm1: regress mpg weight weight2 displ}
          {cmd:gear turn headroom foreign price}{p_end}

{pstd}向后选择；强制 {cmd:weight} 和 {cmd:weight2} 包含在模型中{p_end}
{phang2}{cmd:. stepwise, pr(.2) lockterm1: regress mpg (weight weight2) displ}
         {cmd:gear turn headroom foreign price}{p_end}

{pstd}向后分层选择{p_end}
{phang2}{cmd:. stepwise, pr(.2) hierarchical: regress mpg weight weight2}
         {cmd:displ gear turn headroom foreign}{p_end}

{pstd}向前选择{p_end}
{phang2}{cmd:. stepwise, pe(.2): regress mpg weight weight2 displ gear turn}
         {cmd:headroom foreign price}{p_end}

{pstd}向前分层选择{p_end}
{phang2}{cmd:. stepwise, pe(.2) hierarchical: regress mpg weight weight2 displ}
        {cmd:gear turn headroom foreign price}{p_end}


{marker programming}{...}
{title:步进编程}

{pstd}
{cmd:stepwise} 要求 {it:command_name} 遵循 {help language_zh:standard Stata syntax} 语法并允许 {help if_zh} 限定符。此外，{it:command_name} 必须有 {opt sw} 或 {opt swml} 作为程序属性；参见 {manhelp program_properties P:程序属性}。如果 {it:command_name} 具有 {opt swml} 作为属性，则 {it:command_name} 必须将对数似然值存储在 {cmd:e(ll)} 中，模型自由度存储在 {cmd:e(df_m)} 中。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:stepwise} 存储由基础估计命令存储的所有内容。

{pstd}
此外，{cmd:stepwise} 会将 {cmd:stepwise} 存储在 {cmd:e(stepwise)} 中。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stepwise.sthlp>}