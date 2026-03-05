{smcl}
{* *! version 1.1.21  14feb2019}{...}
{viewerdialog ci "dialog ci"}{...}
{viewerdialog "cii (normal mean)" "dialog cii, message(-normal-)"}{...}
{viewerdialog "cii (Poisson mean)" "dialog cii, message(-poisson-)"}{...}
{viewerdialog "cii (proportion)" "dialog cii, message(-prop-)"}{...}
{viewerdialog "cii (variance)" "dialog cii, message(-variance-)"}{...}
{viewerdialog "cii (standard deviation)" "dialog cii, message(-sd-)"}{...}
{vieweralsosee "[R] ci" "mansection R ci"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ameans" "help ameans_zh"}{...}
{vieweralsosee "[R] bitest" "help bitest_zh"}{...}
{vieweralsosee "[R] centile" "help centile_zh"}{...}
{vieweralsosee "[D] pctile" "help pctile_zh"}{...}
{vieweralsosee "[R] prtest" "help prtest_zh"}{...}
{vieweralsosee "[R] sdtest" "help sdtest_zh"}{...}
{vieweralsosee "[R] summarize" "help summarize_zh"}{...}
{vieweralsosee "[R] ttest" "help ttest_zh"}{...}
{viewerjumpto "Syntax" "ci_zh##syntax"}{...}
{viewerjumpto "Menu" "ci_zh##menu"}{...}
{viewerjumpto "Description" "ci_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ci_zh##linkspdf"}{...}
{viewerjumpto "Options for ci and cii means" "ci_zh##options_means"}{...}
{viewerjumpto "Options for ci and cii proportions" "ci_zh##options_props"}{...}
{viewerjumpto "Options for ci and cii variances" "ci_zh##options_var"}{...}
{viewerjumpto "Examples" "ci_zh##examples"}{...}
{viewerjumpto "Stored results" "ci_zh##results"}{...}
{viewerjumpto "References" "ci_zh##references"}
{help ci:English Version}
{hline}{...}
{p2colset 1 11 13 2}{...}
{p2col:{bf:[R] ci} {hline 2}}均值、比例和方差的置信区间{p_end}
{p2col:}({mansection R ci:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}均值的置信区间，正态分布

{p 8 11 2}
{cmd:ci} {cmdab:mean:s} [{varlist}] 
{ifin}
[{it:{help ci##weight:权重}}]
[{cmd:,}  {it:{help ci##options:选项}}]

{p 8 12 2}
{cmd:cii} {cmdab:mean:s} {it:#obs} {it:#mean} {it:#sd}
[{cmd:,} {opt l:evel(#)}] 


{phang}均值的置信区间，Poisson分布

{p 8 11 2}
{cmd:ci} {cmdab:mean:s} [{varlist}] 
{ifin}
[{it:{help ci##weight:权重}}]{cmd:,}
{opt pois:son}
[{opth exp:osure(varname)} {it:{help ci##options:选项}}]

{p 8 12 2}
{cmd:cii}  {cmdab:mean:s} {it:#exposure} {it:#events}{cmd:,} 
{opt pois:son} [{opt l:evel(#)}] 


{phang}比例的置信区间

{p 8 11 2}
{cmd:ci } {cmdab:prop:ortions } [{varlist}] 
{ifin}
[{it:{help ci##weight:权重}}]
[{cmd:,}
{it:{help ci##prop_options:比例选项}}
{it:{help ci##options:选项}}]

{p 8 12 2}
{cmd:cii} {cmdab:prop:ortions} {it:#obs} {it:#succ}
[{cmd:,}
{it:{help ci##prop_options:比例选项}}
{opt l:evel(#)}] 


{phang}方差的置信区间  

{p 8 11 2}
{cmd:ci } {cmdab:var:iances}
[{varlist}] 
{ifin}
[{it:{help ci##weight:权重}}]
[{cmd:,}
{opt bon:ett}
{it:{help ci##options:选项}}]

{p 8 12 2}
{cmd:cii} {cmdab:var:iances} {it:#obs} {it:#variance}
[{cmd:,} {opt l:evel(#)}] 

{p 8 12 2}
{cmd:cii} {cmdab:var:iances} {it:#obs} {it:#variance} {it:#kurtosis}{cmd:,} 
{opt bon:ett}
[{opt l:evel(#)}] 


{phang}标准差的置信区间

{p 8 11 2}
{cmd:ci} {cmdab:var:iances}
[{varlist}] 
{ifin}
[{it:{help ci##weight:权重}}]{cmd:,}
{opt sd}
[{opt bon:ett} {it:{help ci##options:选项}}]

{p 8 12 2}
{cmd:cii} {cmdab:var:iances} {it:#obs} {it:#sd}{cmd:,}
{opt sd}
[{opt l:evel(#)}] 

{p 8 12 2}
{cmd:cii} {cmdab:var:iances} {it:#obs} {it:#sd} {it:#kurtosis}{cmd:,}
{opt sd}
{opt bon:ett}
[{opt l:evel(#)}] 


{phang}
{it:#obs} 必须是正整数。 {it:#exposure}、 {it:#sd} 和
{it:#variance} 必须是正数。 {it:#succ} 和 {it:#events} 必须是
非负整数或介于0和1之间。如果数字在0和1之间，
Stata将其解释为成功或事件的比例，并将其转换为
表示成功或事件数的整数。然后，计算将按照指定两个整数的方式进行。如果指定了选项
{opt bonett}，则必须额外指定{it:#kurtosis}与
{cmd:cii variances}。 

{synoptset 21}{...}
{marker prop_options}{...}
{synopthdr :比例选项}
{synoptline}
{synopt :{opt exact}}计算精确置信区间；默认值{p_end}
{synopt :{opt wald}}计算Wald置信区间{p_end}
{synopt :{opt wilson}}计算Wilson置信区间{p_end}
{synopt :{opt agres:ti}}计算Agresti-Coull置信区间{p_end}
{synopt :{opt jeff:reys}}计算Jeffreys置信区间{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 21}{...}
{marker options}{...}
{synopthdr:选项}
{synoptline}
{synopt :{opt l:evel(#)}}设置置信水平；默认值是 {cmd:level(95)}{p_end}
{synopt :{opt sep:arator(#)}}每 {it:#} 个变量后绘制分隔线；
默认值是 {cmd:separator(5)}{p_end}
{synopt :{opt total}}为所有组合组添加输出（仅适用于 {opt by}）{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
{opt by} 和 {opt statsby} 允许与 {cmd:ci} 一起使用；请参见 {help prefix_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt aweight} 允许与 {cmd:ci means} 一起用于正态数据，{opt fweight} 允许与所有 {cmd:ci} 子命令一起使用；请参见 {help weight_zh}。
{p_end}


{marker menu}{...}
{title:菜单}

    {title:ci} 

{phang2}
{bf:统计 > 汇总、表格与检验 >}
     {bf:汇总与描述性统计 > 置信区间}

    {title:cii 对于正态均值}

{phang2}
{bf:统计 > 汇总、表格与检验 >}
      {bf:汇总与描述性统计 > 正态均值CI计算器}

    {title:cii 对于Poisson均值}

{phang2}
{bf:统计 > 汇总、表格与检验 >}
        {bf:汇总与描述性统计 > Poisson均值CI计算器}

    {title:cii 对于比例}

{phang2}
{bf:统计 > 汇总、表格与检验 >}
       {bf:汇总与描述性统计 > 比例CI计算器}

    {title:cii 对于方差}

{phang2}
{bf:统计 > 汇总、表格与检验 >}
       {bf:汇总与描述性统计 > 方差CI计算器}

    {title:cii 对于标准差}

{phang2}
{bf:统计 > 汇总、表格与检验 >}
       {bf:汇总与描述性统计 > 标准差CI计算器}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ci} 计算总体均值、比例、方差和标准差的置信区间。

{pstd}
{cmd:cii} 是 {cmd:ci} 的即时形式；请参见 {help immed_zh} 以获取有关即时命令的一般讨论。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R ciQuickstart:快速开始}

        {mansection R ciRemarksandexamples:备注与示例}

        {mansection R ciMethodsandformulas:方法与公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options_means}{...}
{title:ci 和 cii 均值的选项}

{dlgtab:主}

{phang}
{opt poisson} 指定变量（或 {cmd:cii} 的数字为Poisson分布的计数；将计算精确的Poisson置信区间。默认情况下，均值的置信区间是基于正态分布计算的。

{phang}
{opth exposure(varname)} 仅与 {opt poisson} 一起使用。如果您指定了 {opt exposure()}，则不需要指定{opt poisson}；默认假定为{opt poisson}。{it:varname} 包含在 {varlist} 中记录事件的总暴露量（通常是时间或区域）。

包括 help ci_opt


{marker options_props}{...}
{title:ci 和 cii 比例的选项}

{dlgtab:主}

{phang}
{opt exact}、{opt wald}、{opt wilson}、{opt agresti} 和 {opt jeffreys} 指定如何计算二项置信区间。

{pmore}
{opt exact} 是默认值，指示计算精确（在文献中也称为Clopper-Pearson [{help ci##CP1934:1934}]) 二项置信区间。

{pmore}
{opt wald} 指定计算Wald置信区间。

{pmore}
{opt wilson} 指定计算Wilson置信区间。

{pmore}
{opt agresti} 指定计算Agresti-Coull置信区间。

{pmore}
{opt jeffreys} 指定计算Jeffreys置信区间。

{pmore}
请参见 {help ci##BCD2001:Brown, Cai, and DasGupta (2001)} 有关不同二项置信区间的讨论和比较。

包括 help ci_opt


{marker options_var}{...}
{title:ci 和 cii 方差的选项}

{dlgtab:主}

{phang}
{opt sd} 指定计算标准差的置信区间。 默认情况下，计算的是方差的置信区间。

{phang}
{opt bonett} 指定计算Bonett置信区间。 默认情况下，计算的是基于正态的置信区间，假定数据是正态分布的。

包括 help ci_opt


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}获取正态分布变量均值的90%置信区间{p_end}
{phang2}{cmd:. ci means mpg price, level(90)}

   {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse petri}

{pstd}获取计数变量的精确Poisson置信区间{p_end}
{phang2}{cmd:. ci means count, poisson}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse rm}{p_end}

{pstd}基于总暴露获取速率的置信区间{p_end}
{phang2}{cmd:. ci means deaths, exposure(pyears)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse promonone}

{pstd}获取比例的各种二项置信区间{p_end}
{phang2}{cmd:. ci proportions promoted}{p_end}
{phang2}{cmd:. ci proportions promoted, wilson}{p_end}
{phang2}{cmd:. ci proportions promoted, agresti}{p_end}
{phang2}{cmd:. ci proportions promoted, jeffreys}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse peas_normdist}{p_end}

{pstd}获取方差的置信区间{p_end}
{phang2}{cmd:. ci variances weight}

{pstd}获取基于样本的90% Bonett置信区间，样本包含15个观察值，标准差=0.7，峰度=5.2{p_end}
{phang2}{cmd:. ci variances weight, sd bonett level(90)}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:ci means} 和 {cmd:cii means} 将以下结果存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数量，或如果指定了 {bf:poisson}，则为暴露量{p_end}
{synopt:{cmd:r(mean)}}均值{p_end}
{synopt:{cmd:r(se)}}标准误差的估计值{p_end}
{synopt:{cmd:r(lb)}}置信区间的下限{p_end}
{synopt:{cmd:r(ub)}}置信区间的上限{p_end}
{synopt:{cmd:r(level)}}置信区间的置信水平{p_end}
{p2colreset}{...}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(citype)}}{bf:normal} 或 {bf:poisson}；置信区间的类型{p_end}
{synopt:{cmd:r(exposure)}}与 {bf:poisson} 的暴露变量名称{p_end}
{p2colreset}{...}

{pstd}
{cmd:ci proportions} 和 {cmd:cii proportions} 将以下结果存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数量{p_end}
{synopt:{cmd:r(proportion)}}比例{p_end}
{synopt:{cmd:r(se)}}标准误差的估计值{p_end}
{synopt:{cmd:r(lb)}}置信区间的下限{p_end}
{synopt:{cmd:r(ub)}}置信区间的上限{p_end}
{synopt:{cmd:r(level)}}置信区间的置信水平{p_end}
{p2colreset}{...}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(citype)}}{bf:exact}、{bf:wald}、{bf:wilson}、{bf:agresti} 或 {bf:jeffreys}；置信区间的类型{p_end}
{p2colreset}{...}

{pstd}
{cmd:ci variances} 和 {cmd:cii variances} 存储以下结果在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数量{p_end}
{synopt:{cmd:r(Var)}}方差{p_end}
{synopt:{cmd:r(sd)}}如果指定了 {opt sd}，则为标准差{p_end}
{synopt:{cmd:r(kurtosis)}}只有在指定了 {opt bonett} 时才有峰度{p_end}
{synopt:{cmd:r(lb)}}置信区间的下限{p_end}
{synopt:{cmd:r(ub)}}置信区间的上限{p_end}
{synopt:{cmd:r(level)}}置信区间的置信水平{p_end}
{p2colreset}{...}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(citype)}}{bf:normal} 或 {bf:bonett}，置信区间的类型{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker BCD2001}{...}
{phang}
Brown, L. D., T. T. Cai, and A. DasGupta. 2001.  
对二项比例的区间估计。 
{it:统计科学} 16: 101-133.

{marker CP1934}{...}
{phang}
Clopper, C. J., and E. S. Pearson. 1934.  
利用置信或可信限的案例分析二项分布的情况。  
{it:生物统计学} 26: 404-413.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ci.sthlp>}