{smcl}
{* *! version 1.4.20  12dec2018}{...}
{vieweralsosee "[R] 估计选项" "mansection R Estimationoptions"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "help 估计命令" "help estimation_commands_zh"}{...}
{viewerjumpto "语法" "estimation options##syntax"}{...}
{viewerjumpto "描述" "estimation options##description"}{...}
{viewerjumpto "选项" "estimation options##options"}{...}
{viewerjumpto "示例" "estimation options##examples"}
{help estimation_options:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[R] 估计选项} {hline 2}}估计选项{p_end}
{p2col:}({mansection R Estimationoptions:查看完整 PDF 手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{it:estimation_cmd} ... [{cmd:,} {it:options}]

{synoptset 27 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:tant}}抑制模型中的常数项{p_end}
{synopt :{opth off:set(varname:varname_o)}}将 {it:varname_o} 包含在模型中，系数约束为 1{p_end}
{synopt :{opth exp:osure(varname:varname_o)}}将 ln({it:varname_e}) 包含在模型中，系数约束为 1{p_end}
{synopt:{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平，默认值为 {cmd:level(95)}{p_end}
{synopt :{opt lrmodel}}执行似然比模型测试，而不是默认的 Wald 测试{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{opt noci}}抑制置信区间{p_end}
{synopt :{opt nopv:alues}}抑制 p 值及其测试统计量{p_end}
{synopt :{opt noomit:ted}}不显示省略的共线性变量{p_end}
{synopt :{opt vsquish}}抑制因子变量或时间序列变量与其他变量之间的空白{p_end}
{synopt :{opt noempty:cells}}不显示因子变量的空交互单元{p_end}
{synopt :{opt base:levels}}报告因子变量和交互的基线{p_end}
{synopt :{opt allbase:levels}}显示因子变量和交互的所有基线{p_end}
{synopt :{opt nofvlab:el}}显示因子变量级别值，而不是值标签{p_end}
{synopt :{opt fvwrap(#)}}允许 {it:#} 行以换行长值标签{p_end}
{synopt :{opt fvwrapon(style)}}对长值标签应用 {it:style} 换行; {it:style} 可以是 {cmd:word} 或 {cmd:width}{p_end}
{synopt :{opth cformat(%fmt)}}系数、标准误和置信区间的格式{p_end}
{synopt :{opth pformat(%fmt)}}p 值的格式{p_end}
{synopt :{opth sformat(%fmt)}}测试统计量的格式{p_end}
{synopt :{opt nolstretch}}不自动扩展系数表以适应长变量名称{p_end}

{syntab :积分}
{synopt :{opth intm:ethod(estimation_options##intmethod:intmethod)}}随机效应模型的积分方法{p_end}
{synopt :{opt intp:oints(#)}}使用 {it:#} 积分（求积）点{p_end}

{synopt:{opt col:linear}}保留共线性变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
此条目描述了许多估计命令共有的选项。
并非所有在此记录的选项都适用于所有估计命令。
请参阅特定估计命令的文档；如果该处列出了某个选项，则适用。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{marker noconstant}{...}
{opt noconstant}
抑制模型中的常数项（截距）。

{phang}
{marker offset()}{...}
{opth offset:(varname:varname_o)} 指定将 {it:varname_o} 包含在模型中，系数约束为 1。

{phang}
{marker exposure()}{...}
{opth exposure:(varname:varname_e)}
指定一个变量，反映 {depvar} 事件在每个观察值上观察到的暴露量；
ln({it:varname_e}) 的系数约束为 1 被输入到对数链接函数中。

{phang}
{marker constraints()}
{cmd:constraints(}{it:{help numlist_zh}}{c |}{it:matname}{cmd:)}
指定在估计过程中应用的线性约束。
默认情况下进行无约束估计。
有关在多个方程上下文中使用约束的说明，请参见 {manhelp reg3 R}。

{pmore}
{opt constraints(numlist)} 在使用 {cmd:constraint} 命令定义约束后，通过编号指定约束；请参见 {help constraint_zh:[R] constraint}。某些命令（例如 {cmd:slogit}）仅允许 {opt constraints(numlist)}。

{pmore}
{opt constraints(matname)} 指定一个包含约束的矩阵；请参见 {manhelp makecns P}。

{dlgtab:报告}

{phang}
{marker level()}{...}
{opt level(#)}
指定置信区间的置信水平，以百分比表示。
默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置。

{marker lrmodel}{...}
{phang}
{opt lrmodel} 指定进行全最大似然模型与仅包括常数项的限制模型的似然比测试，而不是进行默认的 Wald 测试，验证所有系数都为零。此选项可能会显著增加估计时间。

{pmore}
{opt lrmodel} 不能与 {cmd:vce(robust)},
{cmd:vce(cluster} {it:clustvar}{cmd:)}, {cmd:vce(jackknife)},
{cmd:vce(bootstrap)}, 或 {opt noconstant} 选项一起指定。

{pmore}
{opt lrmodel} 不能与约束组合；请参见 {help estimation options##constraints():{bf:constraints(}{it:constraints}{bf:)}}。
在某些情况下，适用于有约束模型的似然比测试是有效的。
在估计过程中应用了约束后，可以使用 {cmd:lrtest} 计算似然比测试；请参见 {manhelp lrtest R}。

{pmore}
{opt lrmodel} 不能与 {opt jackknife}, {opt bootstrap},
 {opt svy}, 或 {opt mi estimate} 前缀一起指定。

{marker nocnsreport}{...}
{phang}
{opt nocnsreport} 指定不报告约束。
默认情况下，在系数表上方显示用户指定的约束。

{marker display_options}{...}
{phang}
{opt noci} 抑制在系数表中报告置信区间。

{phang}
{opt nopvalues} 抑制在系数表中报告 p 值及其测试统计量。

{phang}
{opt noomitted} 指定不显示由于共线性而被省略的变量。
默认情况下，包括表中任何由于共线性而被省略的变量，并标为“（省略）”。

{phang}
{opt vsquish} 指定抑制因子变量项或时间序列操作变量与模型中其他变量之间的空白。

{phang}
{opt noemptycells} 指定不显示因子变量交互的空单元。
默认情况下，在表中包括在估计样本中未出现的交互单元，并标为“（空）”。

{phang}
{opt baselevels} 和 {opt allbaselevels} 控制是否显示因子变量和交互的基线。
默认情况下，从表中排除所有基线类别。 

{phang2}
        {opt baselevels} 指定报告因子变量和由于无法从其组成因子变量推断的交互的基线。

{phang2}
        {opt allbaselevels} 指定报告因子变量和交互的所有基线。

{phang}
{opt nofvlabel} 显示因子变量级别值，而不是附加值标签。该选项覆盖 {cmd:fvlabel} 设置；请参见 
{helpb set showbaselevels:[R] set showbaselevels}。

{phang}
{opt fvwrap(#)} 指定在必须换行的长值标签时允许多少行。
需要多于 {it:#} 行的标签会被截断。该选项覆盖 {cmd:fvwrap} 设置；请参见
{helpb set showbaselevels:[R] set showbaselevels}。

{phang}
{opt fvwrapon(style)} 指定换行的值标签是否在单词边界处换行或根据可用空间换行。

{phang2}
{cmd:fvwrapon(word)}，默认情况下，指定值标签在单词边界处换行。

{phang2}
{cmd:fvwrapon(width)} 指定值标签根据可用空间换行。

{pmore}
该选项覆盖 {cmd:fvwrapon} 设置；请参见
{helpb set showbaselevels:[R] set showbaselevels}。

{marker cformat}{...}
{phang}
{opth cformat(%fmt)} 指定如何格式化系数、标准误和系数表中的置信区间。最大格式宽度为 9。
请参阅 {manhelp set_cformat R:set cformat}。

{marker pformat}{...}
{phang}
{opth pformat(%fmt)} 指定如何格式化系数表中的 p 值。最大格式宽度为 5。
请参阅 {manhelp set_cformat R:set cformat}。

{marker sformat}{...}
{phang}
{opth sformat(%fmt)} 指定如何格式化系数表中的测试统计量。最大格式宽度为 8。
请参阅 {manhelp set_cformat R:set cformat}。

{marker nolstretch}{...}
{phang}
{opt nolstretch} 指定系数表的宽度不自动扩展以适应较长的变量名称。默认值 {cmd:lstretch} 是自动将系数表宽度扩展至结果窗口的宽度。要更改默认设置，请使用
{help lstretch_zh:set lstretch off}。{opt nolstretch} 不会在对话框中显示。
{p_end}

{marker intmethod}{...}
INCLUDE help intpts3

{pstd}
以下选项不在对话框中显示：

{phang}
{marker collinear}
{opt collinear} 指定估计命令不省略共线性变量。此选项很少使用，因为共线性变量使模型无法定义。
然而，你可以向模型添加约束，以便即使有共线性变量也能识别它。例如，如果变量 {cmd:x1} 和 {cmd:x2} 是共线的，但你约束 {cmd:x2} 的系数为 {cmd:x1} 的倍数，那么即使有共线性变量，你的模型也是被识别的。在这种情况下，你指定 {cmd:collinear} 以保留模型中的 {cmd:x1} 和 {cmd:x2}。

{marker coeflegend}{...}
{phang}
{opt coeflegend} 指定显示系数的图例以及如何在表达式中指定它们，而不是显示系数的统计信息。
{p_end}


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse dollhill3}{p_end}
{phang2}{cmd:. generate double lnpyears = ln(pyears)}{p_end}
{phang2}{cmd:. constraint 1 smokes#3.agecat = smokes#4.agecat}

{pstd}拟合 Poisson 回归，指定暴露为 {cmd:pyears}{p_end}
{phang2}{cmd:. poisson deaths smokes i.agecat, exposure(pyears)}

{pstd}与上面相同{p_end}
{phang2}{cmd:. poisson deaths smokes i.agecat, offset(lnpyears)}

{pstd}重播结果，但置信区间为 99%{p_end}
{phang2}{cmd:. poisson, level(99)}

{pstd}重播结果，抑制因子变量项与其他变量之间的空白{p_end}
{phang2}{cmd:. poisson, vsquish}

{pstd}重播结果，显示系数、标准误和置信区间到小数点后 4 位{p_end}
{phang2}{cmd:. poisson, cformat(%8.4f)}

{pstd}显示系数图例，展示如何在表达式中指定系数{p_end}
{phang2}{cmd:. poisson, coeflegend}

{pstd}拟合 Poisson 回归，约束对年龄类别 3 和 4 的吸烟效应相等{p_end}
{phang2}{cmd:. poisson deaths c.smokes#agecat i.agecat, exposure(pyears)}
 {cmd:constraints(1)}

{pstd}与上面相同，但抑制在系数表上方显示约束{p_end}
{phang2}{cmd:. poisson deaths c.smokes#agecat i.agecat, exposure(pyears)}
 {cmd:constraints(1) nocnsreport}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse union, clear}

{pstd}拟合随机效应 Probit 模型，使用 20 积分点而不是默认的 12{p_end}
{phang2}{cmd:. xtprobit union age grade i.not_smsa south##c.year, intpoints(20)}

{pstd}拟合随机效应 Probit 模型，指定使用 {cmd:ghermite} 积分方法{p_end}
{phang2}{cmd:. xtprobit union age grade i.not_smsa south##c.year,}
    {cmd:intmethod(ghermite)}

{pstd}重播结果，表中显示 {cmd:not_smsa} 和 {cmd:south} 的基线{p_end}
{phang2}{cmd:. xtprobit, baselevels}

{pstd}与上面相同，但也显示 {cmd:south#c.year} 的基线{p_end}
{phang2}{cmd:. xtprobit, allbaselevels}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estimation_options.sthlp>}