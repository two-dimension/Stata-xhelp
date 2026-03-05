{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog dsregress "dialog dsregress"}{...}
{vieweralsosee "[LASSO] dsregress" "mansection lasso dsregress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso inference postestimation" "help lasso inference postestimation"}{...}
{vieweralsosee "[LASSO] poregress" "help poregress_zh"}{...}
{vieweralsosee "[LASSO] xporegress" "help xporegress_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "Syntax" "dsregress_zh##syntax"}{...}
{viewerjumpto "Menu" "dsregress_zh##menu"}{...}
{viewerjumpto "Description" "dsregress_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "dsregress_zh##linkspdf"}{...}
{viewerjumpto "Options" "dsregress_zh##options"}{...}
{viewerjumpto "Examples" "dsregress_zh##examples"}{...}
{viewerjumpto "Stored results" "dsregress_zh##results"}
{help dsregress:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[LASSO] dsregress} {hline 2}}双重选择lasso线性回归{p_end}
{p2col:}({mansection LASSO dsregress:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{opt dsregress}
{depvar}
{it:varsofinterest}
{ifin}
[{cmd:,} {it:options}]

{pstd}
{it:varsofinterest} 是需要估计系数及其标准误的变量。

{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
INCLUDE help controls_short
INCLUDE help selection_short
{synopt :{opt sqrt:lasso}}使用平方根lassos{p_end}
INCLUDE help missingok_short

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype}可以是 {opt r:obust}（默认）， 
{cmd:ols}，{cmd:hc2}或 {cmd:hc3}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{it:{help dsregress##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:优化}
{synopt :[{opt no}]{cmd:log}}显示或抑制迭代日志{p_end}
{synopt :{opt verbose}}显示详细的迭代日志{p_end}
{synopt :{opt rseed(#)}}设置随机数种子{p_end}

{syntab:高级}
{synopt :{cmd:lasso(}{varlist}{cmd:,} {it:{help dsregress##lasso_options:lasso_options}}{cmd:)}}为
{it:varlist}中的变量指定lasso选项；可以重复使用{p_end}
{synopt :{cmd:sqrtlasso(}{varlist}{cmd:,} {it:{help dsregress##sqrtlasso_options:lasso_options}}{cmd:)}}为
{it:varlist}中的变量指定平方根lasso选项；可以重复使用{p_end}

INCLUDE help reestimate_short
{synopt :{opt nohead:er}}不显示系数表头{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
INCLUDE help footnotes_inference


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > Lasso > Lasso推断模型 > 连续结果 > 双重选择模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:dsregress} 拟合一个lasso线性回归模型，并报告指定协变量的系数、标准误、检验统计量和置信区间。使用双重选择方法估计这些变量的效应，并从潜在的控制变量中选择要包含在模型中的变量。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection LASSO dsregressQuickstart:快速入门}

        {mansection LASSO dsregressRemarksandexamples:备注和示例}

        {mansection LASSO dsregressMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:controls(}[{cmd:(}{it:alwaysvars}{cmd:)}] {it:othervars}{cmd:)} 指定控制变量集，用于控制遗漏变量。控制变量也称为混杂变量。{cmd:dsregress} 为 {it:depvar} 和每个 {it:varsofinterest} 拟合lassos。{it:alwaysvars} 是在这些lassos中始终包含的变量。{it:alwaysvars} 是可选的。{it:othervars} 是每个lasso将选择包含或排除的变量。也就是说，每个lasso将选择 {it:othervars} 的一个子集。所选的 {it:othervars} 的子集可能在不同的lassos中有所不同。如果指定了 {it:alwaysvars}，则需要 {it:othervars}。如果未指定 {cmd:controls()}，则拟合一个标准线性回归。

INCLUDE help selection_long

{phang}
{cmd:sqrtlasso} 指定使用平方根lassos而不是常规lassos。可以使用 {cmd:lasso()} 与 {cmd:sqrtlasso} 配合，指定某些变量为常规lasso，覆盖这些变量的全局 {cmd:sqrtlasso} 设置。请参见 {manhelp lasso_options LASSO:lasso options}。

INCLUDE help missingok_long

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型。默认是 {cmd:vce(robust)}，对某些类型的模型错误具有稳健性。还可以使用 {cmd:vce(ols)}，即普通最小二乘回归的标准方差估计，以及 {cmd:vce(hc2)} 和 {cmd:vce(hc3)}，用以指定稳健方差计算的替代偏差校正。请参见 {help vce_option_zh:[R] {it:vce_option}} 和 {helpb regress##options:[R] regress}。

{dlgtab:报告}

{phang}
{opt level(#)}；参见 {helpb estimation options##level():[R] 估计选项}。

INCLUDE help displayopts_list

{dlgtab:优化}

INCLUDE help log_long

{phang}
{opt rseed(#)} 设置随机数种子。该选项可用于重现 {cmd:selection(cv)} 和 {cmd:selection(adaptive)} 的结果。默认的选择方法 {cmd:selection(plugin)} 不使用随机数。{opt rseed(#)} 相当于在运行 {cmd:dsregress} 之前输入 {cmd:set} {cmd:seed} {it:#}。请参见 {manhelp set_seed R:set seed}。

{dlgtab:高级}

INCLUDE help lasso_opt_long

INCLUDE help sqrtlasso_opt_linear_long

{pstd}
以下选项可与 {cmd:dsregress} 一起使用，但未在对话框中显示：

{phang}
{cmd:reestimate} 是一个高级选项，根据使用 {help lassoselect_zh} 对底层lassos所做的更改重新拟合 {cmd:dsregress} 模型。在运行 {cmd:dsregress} 后，可以为 {cmd:dsregress} 所估计的一个或多个lassos选择不同的lambda*。选择了lambda*后，输入 {cmd:dsregress,} {cmd:reestimate} 以基于新选择的lambda重新拟合 {cmd:dsregress} 模型。

{pmore}
{cmd:reestimate} 只能与报告选项结合使用。

{phang}
{cmd:noheader} 防止显示系数表头。

{phang}
{cmd:coeflegend}；参见
{helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse breathe}

{pstd}对反应时间结果进行双重选择lasso线性回归，并推断课堂和家庭氮氧化物{p_end}
{phang2}{cmd:. dsregress react no2_class no2_home,}
	{cmd:controls(i.(meducation overweight msmoke sex) noise sev* age)}

{pstd}使用交叉验证选择控制变量的反应时间结果的双重选择lasso线性回归{p_end}
{phang2}{cmd:. dsregress react no2_class no2_home,}
    {cmd:controls(i.(meducation overweight msmoke sex) noise sev* age)}
    {cmd:selection(cv)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:dsregress} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt:{cmd:e(N)}}观测数{p_end}
{synopt:{cmd:e(k_varsofinterest)}}兴趣变量数量{p_end}
{synopt:{cmd:e(k_controls)}}潜在控制变量数量{p_end}
{synopt:{cmd:e(k_controls_sel)}}选定控制变量数量{p_end}
{synopt:{cmd:e(df)}}兴趣变量检验的自由度{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}兴趣变量检验的p值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:dsregress}{p_end}   
{synopt:{cmd:e(cmdline)}}键入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(lasso_depvars)}}所有lassos的因变量名称{p_end}
{synopt:{cmd:e(varsofinterest)}}兴趣变量{p_end}
{synopt:{cmd:e(controls)}}潜在控制变量{p_end}
{synopt:{cmd:e(controls_sel)}}选定控制变量{p_end}
{synopt:{cmd:e(model)}}{cmd:linear}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(select_cmd)}}用于实现 {cmd:lassoselect} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dsregress.sthlp>}