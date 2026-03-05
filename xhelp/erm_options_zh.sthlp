{smcl}
{* *! version 1.0.7  14may2019}{...}
{vieweralsosee "[ERM] ERM 选项" "mansection ERM ERMoptions"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eintreg" "help eintreg_zh"}{...}
{vieweralsosee "[ERM] eoprobit" "help eoprobit_zh"}{...}
{vieweralsosee "[ERM] eprobit" "help eprobit_zh"}{...}
{vieweralsosee "[ERM] eregress" "help eregress_zh"}{...}
{viewerjumpto "语法" "erm options##syntax"}{...}
{viewerjumpto "描述" "erm options##description"}{...}
{viewerjumpto "选项" "erm options##options"}
{help erm_options:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[ERM] ERM 选项} {hline 2}}扩展回归模型选项{p_end}
{p2col:}({mansection ERM ERMoptions:查看完整 PDF 手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{it:erm_cmd} ... [{cmd:,} {it:extensions}
{help erm_options##synoptions:{it:options}}]

{pstd}
{it:erm_cmd} 是以下命令之一：
{help eregress_zh},
{help eprobit_zh},
{help eoprobit_zh},
{help eintreg_zh},
{helpb xteregress},
{helpb xteprobit},
{helpb xteoprobit}, 或
{helpb xteintreg}。

{marker extensions}{...}
{synoptset 25 tabbed}{...}
{synopthdr:extensions}
{synoptline}
{syntab:模型}
{synopt :{opth endog:enous(erm_options##enspec:enspec)}}内生协变量的模型；可以重复使用{p_end}
{synopt :{opth entr:eat(erm_options##entrspec:entrspec)}}内生处理分配模型{p_end}
{synopt :{opth extr:eat(erm_options##extrspec:extrspec)}}外生处理{p_end}
{synopt :{opth sel:ect(erm_options##selspec:selspec)}}选择的概率模型{p_end}
{synopt :{opth tobitsel:ect(erm_options##tselspec:tselspec)}}选择的 tobit 模型{p_end}
{synoptline}

{marker synoptions}{...}
{synopthdr}
{synoptline}
{syntab:模型}
包含帮助 erm_model_tab

{syntab:标准误/稳健}
包含帮助 erm_vce_tab

{syntab:报告}
包含帮助 erm_report_tab
{synopt :{it:{help erm_options##display_options:display_options}}}控制
包含帮助 shortdes-displayoptall

{syntab:积分}
包含帮助 erm_integration_tab

{syntab:最大化}
{synopt :{help erm_options##maximize_options:{it:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt :{opt col:linear}}保留共线性变量{p_end}
包含帮助 shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt reintpoints()} 和 {opt reintmethod()} 仅在 {opt xteregress}、{opt xteintreg}、{opt xteprobit} 和 {opt xteoprobit} 中可用。{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。


{marker enspec}{...}
{phang}
{it:enspec} 为 {depvars}_en {cmd:=} {varlist}_en
    [{cmd:,} {help erm_options##enopts:{it:enopts}}]

{pmore}
其中 {it:depvars}_en 是一组内生协变量的列表。每个变量在
{it:depvars}_en 中指定一个使用共同 {it:varlist}_en 和选项的内生协变量模型。

{marker entrspec}{...}
{phang}
{it:entrspec} 为 {depvar}_tr [{cmd:=} {varlist}_tr]
    [{cmd:,} {help erm_options##entropts:{it:entropts}}]

{pmore}
其中 {it:depvar}_tr 是指示处理分配的变量。
{it:varlist}_tr 是预测处理分配的协变量列表。

{marker extrspec}{...}
{phang}
{it:extrspec} 为 {it:tvar}
    [{cmd:,} {help erm_options##extropts:{it:extropts}}]

{pmore}
其中 {it:tvar} 是指示处理分配的变量。

{marker selspec}{...}
{phang}
{it:selspec} 为 {depvar}_s {cmd:=} {varlist}_s
    [{cmd:,} {help erm_options##selopts:{it:selopts}}]

{pmore}
其中 {it:depvar}_s 是指示选择状态的变量。
{it:depvar}_s 必须编码为 0，表示观察值未被选择，或 1，表示观察值被选择。{it:varlist}_s 是预测选择的协变量列表。

{marker tselspec}{...}
{phang}
{it:tselspec} 为 {depvar}_s {cmd:=} {varlist}_s
    [{cmd:,} {help erm_options##tselopts:{it:tselopts}}]

{pmore}
其中 {it:depvar}_s 是一个连续变量。
{it:varlist}_s 是预测 {it:depvar}_s 的协变量列表。
{it:depvar}_s 的截断状态指示选择，其中截断的
{it:depvar}_s 表示观察值未被选择，而非截断的 {it:depvar}_s 表示观察值被选择。

{synoptset 26 tabbed}{...}
包含帮助 erm_reg_enopts_table
{p 4 6 2}
{opt povariance} 仅在 {cmd:eregress}、{cmd:eintreg}、{cmd:xteregress} 和 {cmd:xteintreg} 中可用。{p_end}
{p 4 6 2}
{opt nore} 仅在 {cmd:xteregress}、{cmd:xteintreg}、{cmd:xteprobit} 和 {cmd:xteoprobit} 中可用。

{marker entropts}{...}
{synopthdr:entropts}
{synoptline}
{syntab :模型}
{synopt :{opt povar:iance}}估计每个潜在结果的不同方差{p_end}
{synopt :{opt pocorr:elation}}估计每个潜在结果的不同相关性{p_end}
{synopt :{opt nom:ain}}不将处理指示添加到主方程{p_end}
{synopt :{opt nocutsint:eract}}不与切点交互处理{p_end}
{synopt :{opt noint:eract}}不与主方程中的协变量交互处理{p_end}
{synopt :{opt nore}}不在内生处理模型中包含随机效应{p_end}
{synopt :{opt nocons:tant}}禁止常数项{p_end}
{synopt :{opth off:set(varname:varname_o)}}将 {it:varname_o} 包含在模型中，并将系数约束为 1{p_end}
{synoptline}
{p 4 6 2}
{opt povariance} 仅在 {cmd:eregress}、{cmd:eintreg}、{cmd:xteregress} 和 {cmd:xteintreg} 中可用。{p_end}
{p 4 6 2}
{opt nocutsinteract} 仅在 {cmd:eoprobit} 中可用。{p_end}
{p 4 6 2}
{opt nore} 仅在 {cmd:xteregress}、{cmd:xteintreg}、{cmd:xteprobit} 和 {cmd:xteoprobit} 中可用。

{marker extropts}{...}
{synopthdr:extropts}
{synoptline}
{syntab :模型}
{synopt :{opt povar:iance}}估计每个潜在结果的不同方差{p_end}
{synopt :{opt pocorr:elation}}估计每个潜在结果的不同相关性{p_end}
{synopt :{opt nom:ain}}不将处理指示添加到主方程{p_end}
{synopt :{opt nocutsint:eract}}不与切点交互处理{p_end}
{synopt :{opt noint:eract}}不与主方程中的协变量交互处理{p_end}
{synoptline}
{p 4 6 2}
{opt povariance} 仅在 {cmd:eregress}、{cmd:eintreg}、{cmd:xteregress} 和 {cmd:xteintreg} 中可用。{p_end}
{p 4 6 2}
{opt nocutsinteract} 仅在 {cmd:eoprobit} 中可用。

包含帮助 erm_selopts_table
{p2colreset}{...}
{p 4 6 2}
{opt nore} 仅在 {cmd:xteregress}、{cmd:xteintreg}、{cmd:xteprobit} 和 {cmd:xteoprobit} 中可用。

包含帮助 erm_tselopts_table
{p2colreset}{...}
{p 4 6 2}
{opt nore} 仅在 {cmd:xteregress}、{cmd:xteintreg}、{cmd:xteprobit} 和 {cmd:xteoprobit} 中可用。


{marker description}{...}
{title:描述}

{pstd}
此条目描述常见于扩展回归命令的选项；见 {manhelp eregress ERM}、{manhelp eprobit ERM}、
{manhelp eoprobit ERM} 和 {manhelp eintreg ERM}。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:endogenous(}{depvars}_en {cmd:=} {varlist}_en [{cmd:,} {it:enopts}]{cmd:)}
指定内生协变量的模型。{it:depvars}_en 是用 {it:varlist}_en 模型化的一个或多个内生协变量的列表。此选项可以重复使用，以允许每个内生协变量的模型规范不同。默认情况下，假定内生协变量为连续型，并使用线性高斯模型。除非指定了 {cmd:nomain} 子选项，否则 {it:depvars}_en 中指定的变量将自动包含在主方程中。可用的以下 {it:enopts}：

{phang2}
{cmd:probit} 指定使用 probit 模型用于内生协变量。
{cmd:probit} 不能与 {cmd:oprobit} 一起指定；但是，
您可以指定 {cmd:endogenous(}...{cmd:, probit)} 和 
{cmd:endogenous(}...{cmd:, oprobit)}。

{phang2}
{cmd:oprobit}
指定使用有序 probit 模型用于内生协变量。
{cmd:oprobit} 不能与 {cmd:probit} 一起指定；但是，
您可以指定 {cmd:endogenous(}...{cmd:, probit)} 和 
{cmd:endogenous(}...{cmd:, oprobit)}。

{phang2}
{cmd:povariance}
指定为每个内生协变量的级别估计不同的方差参数。在处理效应框架中，我们把内生协变量的级别称为潜在结果，{cmd:povariance} 指定为每个潜在结果单独估计方差。{cmd:povariance} 仅可与 {cmd:eregress} 和 {cmd:eintreg} 以及一个二元或有序的内生协变量一起指定。

{phang2}
{cmd:pocorrelation} 指定为每个内生协变量的级别估计不同的相关参数。在处理效应框架中，我们把内生协变量的级别称为潜在结果，而 {cmd:pocorrelation} 指定为每个潜在结果单独估计相关性。{cmd:pocorrelation} 仅可与一个二元或有序的内生协变量一起指定。

{phang2}
{cmd:nomain}
指定内生协变量从主模型中排除，从而移除影响。此选项适用于那些希望以自己方式手动构建影响的人。

{phang2}
{cmd:nore}
指定在内生协变量的方程中不包含随机效应。

{phang2}
{cmd:noconstant}
抑制内生协变量模型中的常数项（截距）。

{phang}
{opt entreat()} 和 {opt extreat()} 指定处理分配的模型。
您只能指定一个。

{phang2}
{cmd:entreat(}{depvar}_tr [{cmd:=} {varlist}_tr]
[{cmd:,} {it:trtopts modopts}]{cmd:)}
指定内生处理分配的模型，其中 
{it:depvar}_tr = 1 表示处理，而 {it:depvar}_tr = 0 
表示没有处理。{it:varlist}_tr 是处理模型的协变量；它们是可选的。

{phang2}
{cmd:extreat(}{depvar}_tr [{cmd:,} {it:trtopts}]{cmd:)} 
指定一个信号外生处理的变量。
{it:depvar}_tr = 1 表示处理，而 {it:depvar}_tr = 0 
表示没有处理。

{phang2}
{it:trtopts} 是

{phang3}
{cmd:povariance}
指定为每个潜在结果估计不同的方差参数（对于每个处理水平）。{cmd:povariance} 仅可与 
{cmd:eregress} 和 {cmd:eintreg} 一起指定。

{phang3}
{cmd:pocorrelation} 指定为每个潜在结果（对于每个处理水平）估计不同的相关参数。

{phang3}
{opt nomain}、{opt nocutsinteract} 和 {opt nointeract}
影响处理在主方程中的进入方式。

{p 16 20 2}
{opt nomain} 指定主方程中排除处理的主效应。因此，没有针对每个处理水平估计单独的截距。在 {opt eoprobit} 的情况下，这意味着不添加单独的切点。

{p 16 20 2}
{opt nocutsinteract} 指定您获得一组切点，这些切点由每个处理水平的常数值移动，而不是默认的为每个处理水平具有单独的切点。这通过在主方程中为每个处理水平放置单独的常数来实现。{opt nocutsinteract} 仅可与 {opt eoprobit} 一起使用。

{p 16 20 2}
{opt nointeract} 指定处理变量不与主方程中的其他协变量交互。

{pmore2}
这些选项允许您自定义处理如何进入主方程。当 {opt nomain} 和 {opt nointeract} 一起指定时，
它们完全移除处理的影响，您将需要明确重新引入处理效果。

{phang2}
{it:modopts} 是

{phang3}
{opt nore}
指定在处理方程中不包含随机效应。

{phang3}
{opt noconstant}
抑制处理模型中的常数项（截距）。

{phang3}
{cmdab:offset(}{varname}_o{cmd:)}
指定 {it:varname}_o 应该包含在处理模型中，并将系数约束为 1。

{phang}
{opt select()} 和 {opt tobitselect()} 指定内生样本选择的模型。
您只能指定一个。

{phang2}
{cmd:select(}{depvar}_s {cmd:=} {varlist}_s [{cmd:,} {it:modopts}]{cmd:)}
指定一个样本选择的概率模型，{it:varlist}_s 作为选择模型的协变量。当 {it:depvar}_s = 1 时，模型的因变量被视为观察（已选择）；当 {it:depvar}_s = 0 时，
它被视为未观察（未选择）。

{phang2}
{cmd:tobitselect(}{depvar}_s {cmd:=} {varlist}_s
[{cmd:,} {cmd:ll(}{varname}{c |}{it:#}{cmd:)} 
{cmd:ul(}{varname}{c |}{it:#}{cmd:)} {opt main} {it:modopts}]{cmd:)}
指定样本选择的 tobit 模型，{it:depvar}_s 是一个截断选择变量，{it:varlist}_s 是选择模型的协变量。

{phang3}
{cmd:ll(}{it:arg}{cmd:)} 指定当 {it:depvar}_s {ul:<} {it:arg} 时，选择变量被视为截断，且模型的因变量未观察（未选择）。

{phang3}
{opt ul(arg)} 指定当 {it:depvar}_s {ul:>} {it:arg} 时，选择变量被视为截断，且模型的因变量未观察（未选择）。

{phang3}
{opt main} 指定将截断选择变量作为协变量包含在主方程中。默认情况下，它被排除在主方程之外。

{pmore3}
只有选择变量的非截断值通过主方程对似然作出贡献。因此，选择变量的参与方式就像它是非截断的。

{pmore}
{it:modopts} 是

{phang3}
{opt nore}
指定在选择方程中不包含随机效应。

{phang3}
{opt noconstant} 抑制选择模型中的常数项（截距）。

{phang3}
{cmdab:offset(}{varname}_o{cmd:)}
指定 {it:varname}_o 应该包含在选择 
模型中，并将系数约束为 1。

{phang}
{opt noconstant}、{cmdab:offset(}{varname}_o{cmd:)}、
{opth constraints:(numlist)}；见
{helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健}

包含帮助 vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}, {opt nocnsreport}；见
{helpb estimation options:[R] 估计选项}。

包含帮助 displayopts_list

{dlgtab:积分}

{phang} 
{opt intpoints(#)} 和 {opt triintpoints(#)} 控制用于近似多元正态
概率的积分（求积）点的数量。

{phang2}
{opt intpoints()} 设置用于四个或更多维度的积分（求积）点的数量。积分点的数量必须在 3 到 5000 之间。默认值为 {cmd:intpoints(128)}。

{phang2}
{opt triintpoints()} 设置用于三维的积分（求积）点的数量。积分点的数量必须在 3 到 5000 之间。
默认值为 {cmd:triintpoints(10)}。

{pmore}
当在似然中使用四个维度的积分时，将在得分中使用三个。四个或更多维度的积分算法与三维的积分算法不同。
 
{phang}
{opt reintpoints(#)} 和 {opt reintmethod(intmethod)} 控制随机效应的积分数值计算。

{phang2}
{opt reintpoints()} 设置用于随机效应积分的积分（求积）点的数量。默认值为 {cmd:intpoints(7)}。
增加此数字会提高准确性，但也会增加计算时间。计算时间大致与指定数量成正比。
有关更多详细信息，请参见 {mansection ERM eprobitMethodsandformulaslikelihood:{it:多方程模型的似然}} 。
 
{phang2}
{opt reintmethod()} 指定积分方法。默认方法是均值-方差自适应高斯-赫尔米特求积，
{cmd:reintmethod(mvaghermite)}。我们推荐这种方法。
{cmd:reintmethod(ghermite)} 指定使用非自适应高斯-赫尔米特求积。此方法计算强度较低且准确性较低。 有时尝试 {cmd:reintmethod(ghermite)} 来使模型收敛，然后可以将结果作为初始值在
使用更准确的 {cmd:intmethod(mvaghermite)} 拟合模型时指定。
有关更多详细信息，请参见 {mansection ERM eprobitMethodsandformulaslikelihood:{it:多方程模型的似然}} 。

{marker maximize_options}{...}
{dlgtab:最大化}

包含帮助 erm_max_optdes

{pmore}
{cmd:eintreg}、{cmd:eoprobit}、{cmd:eprobit} 和
{cmd:eregress} 的默认技术是 {cmd:technique(nr)}。{cmd:xteintreg}、{cmd:xteoprobit}、{cmd:xteprobit} 和 {cmd:xteregress} 的默认技术为
{cmd:technique(bhhh 10 nr 2)}。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会重置默认的 
{it:vcetype} 为 {cmd:vce(opg)}。

{pstd}
以下选项适用于 {it:erm_cmd}，但在对话框中未显示：

{phang}
{cmd:collinear}、{cmd:coeflegend}；见
{help estimation_options_zh:[R] 估计选项}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <erm_options.sthlp>}