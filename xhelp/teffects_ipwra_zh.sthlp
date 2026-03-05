{smcl}
{* *! version 1.0.16  12dec2018}{...}
{viewerdialog teffects "dialog teffects"}{...}
{vieweralsosee "[TE] teffects ipwra" "mansection TE teffectsipwra"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teffects postestimation" "help teffects postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teffects" "help teffects_zh"}{...}
{vieweralsosee "[TE] teffects aipw" "help teffects aipw"}{...}
{viewerjumpto "Syntax" "teffects ipwra##syntax"}{...}
{viewerjumpto "Menu" "teffects ipwra##menu"}{...}
{viewerjumpto "Description" "teffects ipwra##description"}{...}
{viewerjumpto "Links to PDF documentation" "teffects_ipwra_zh##linkspdf"}{...}
{viewerjumpto "Options" "teffects ipwra##options"}{...}
{viewerjumpto "Examples" "teffects ipwra##examples"}{...}
{viewerjumpto "Video example" "teffects ipwra##video"}{...}
{viewerjumpto "Stored results" "teffects ipwra##results"}
{help teffects_ipwra:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[TE] teffects ipwra} {hline 2}}逆概率加权回归调整{p_end}
{p2col:}({mansection TE teffectsipwra:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:teffects} {cmd:ipwra}
   {cmd:(}{it:{help varname_zh:ovar}} {it:{help varlist_zh:omvarlist}}
	[{cmd:,} {it:{help teffects ipwra##omodel:模型}}
	{opt nocons:tant}]{cmd:)}
   {cmd:(}{it:{help varname_zh:tvar}} {it:{help varlist_zh:tmvarlist}}
    [{cmd:,} {it:{help teffects ipwra##tmodel:模型}}
        {opt nocons:tant}]{cmd:)}
	{ifin}
        [{it:{help teffects ipwra##weight:权重}}]
    [{cmd:,}
	{it:{help teffects ipwra##stat:统计量}}
	{it:{help teffects ipwra##options_table:选项}}]

{phang}
{it:ovar} 是感兴趣的二元、计数、连续、分数或非负结果变量。

{phang}
{it:omvarlist} 指定结果模型中的协变量。

{phang}
{it:tvar} 必须包含表示处理水平的整数值。

{phang}
{it:tmvarlist} 指定处理分配模型中的协变量。

{synoptset 22 tabbed}{...}
{marker omodel}{...}
{synopthdr:模型}
{synoptline}
{syntab:模型}
{synopt :{opt linear}}线性结果模型；默认值{p_end}
{synopt :{opt logit}}逻辑结果模型{p_end}
{synopt :{opt probit}}Probit结果模型{p_end}
{synopt :{opth hetprobit(varlist)}}异方差Probit结果模型{p_end}
{synopt :{opt poisson}}指数结果模型{p_end}
{synopt :{opt flogit}}分数逻辑结果模型{p_end}
{synopt :{opt fprobit}}分数Probit结果模型{p_end}
{synopt :{opth fhetprobit(varlist)}}分数异方差Probit结果模型{p_end}
{synoptline}
{p 4 6 2}
{it:omodel} 指定结果变量的模型。{p_end}

{marker tmodel}{...}
{synopthdr:模型}
{synoptline}
{syntab:模型}
{synopt :{opt logit}}逻辑处理模型；默认值{p_end}
{synopt :{opt probit}}Probit处理模型{p_end}
{synopt :{opth hetprobit(varlist)}}异方差Probit处理模型{p_end}
{synoptline}
{p 4 6 2}
{it:tmodel} 指定处理变量的模型。{p_end}
{p 4 6 2}
对于多值处理，仅允许使用 {cmd:logit}，且使用多项逻辑。

{marker stat}{...}
{synopthdr:统计量}
{synoptline}
{syntab:统计}
{synopt :{opt ate}}估计总体平均处理效应；默认值{p_end}
{synopt :{opt atet}}估计对处理组的平均处理效应{p_end}
{synopt :{opt pom:eans}}估计潜在结果均值{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可为 {opt r:obust}、 
	{opt cl:uster} {it:clustvar}、 
	{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt aeq:uations}}显示辅助方程结果{p_end}
{synopt :{it:{help teffects ipwra##display_options:显示选项}}}控制
包含帮助短描述 - 显示选项

{syntab:最大化}
{synopt :{it:{help teffects ipwra##maximize_options:最大化选项}}}控制
最大化过程；很少使用{p_end}

{syntab:高级}
{synopt :{opt pstol:erance(#)}}设定重叠假设的容忍度{p_end}
{synopt :{opth os:ample(newvar)}}{it:newvar} 识别违反重叠假设的观测值{p_end}
{synopt :{opt con:trol(# | label)}}指定 {it:tvar} 的控制级别{p_end}
{synopt :{opt tle:vel(# | label)}}指定 {it:tvar} 的处理级别{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}

{p 4 6 2}
{it:omvarlist} 和 {it:tmvarlist} 可以包含因子变量；见
{help fvvarlists}。{p_end}
{p 4 6 2}
{opt bootstrap}、{opt by}、{opt jackknife} 和 {opt statsby} 被允许；见 {help prefix_zh}。{p_end}
{p 4 6 2}不允许与 {help bootstrap_zh} 前缀一起使用权重。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}、{opt iweight} 和 {opt pweight} 被允许；见 {help weight_zh}。{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用的功能，请参阅 {manhelp teffects_postestimation TE:teffects postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 处理效应 > 连续结果 >}
    {bf:使用 IPW 的回归调整}

{phang}
{bf:统计 > 处理效应 > 二元结果 >}
    {bf:使用 IPW 的回归调整}

{phang}
{bf:统计 > 处理效应 > 计数结果 >}
    {bf:使用 IPW 的回归调整}

{phang}
{bf:统计 > 处理效应 > 分数结果 >}
    {bf:使用 IPW 的回归调整}

{phang}
{bf:统计 > 处理效应 > 非负结果 >}
    {bf:使用 IPW 的回归调整}


{marker description}{...}
{title:描述}

{pstd}
{cmd:teffects} {cmd:ipwra} 通过逆概率加权回归调整（IPWRA）从观察数据中估计平均处理效应、对处理组的平均处理效应和潜在结果均值。IPWRA 估计量使用加权回归系数来计算处理水平预测结果的均值，权重是估计的处理的逆概率。这些均值的对比估计处理效应。IPWRA 估计量具有双重稳健性。{cmd:teffects} {cmd:ipwra} 接受连续的、二元的、计数的、分数的或非负的结果，并允许多值处理。

{pstd}
参见
{bf:{mansection TE teeffectsintro:[TE] teffects 介绍}}或
{bf:{mansection TE teeffectsintroadvanced:[TE] teffects 介绍 高级}}
以获取有关如何从观察数据中估计处理效应的更多信息。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TE teffectsipwraQuickstart:快速入门}

        {mansection TE teffectsipwraRemarksandexamples:备注和示例}

        {mansection TE teeffectsipwraMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}；见
    {helpb estimation options:[R] 估计选项}。

{dlgtab:统计}

{phang}
{it:stat} 是三种统计量之一：{opt ate}、{opt atet} 或 {opt pomeans}。
{opt ate} 是默认值。

{pmore}
{opt ate} 指定估计平均处理效应。

{pmore}
{opt atet} 指定估计对处理组的平均处理效应。

{pmore}
{opt pomeans} 指定估计每个处理水平的潜在结果均值。

{dlgtab:标准误/稳健性}

INCLUDE help vce_rcbj

{dlgtab:报告}

{phang}
{opt level(#)}；见
    {helpb estimation options:[R] 估计选项}。

{phang}
{opt aequations} 指定显示结果为结果模型或处理模型参数。默认情况下，不显示这些辅助参数的结果。

INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt iter:ate(#)}、
[{cmd:no}]{opt log}，
和
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
{it:init_specs} 为

{pmore2}
{it:matname} [{cmd:,} {cmd:skip} {cmd:copy}]

{pmore2}
{it:#} [{cmd:,} {it:#} ...]{cmd:,} {cmd:copy}

{dlgtab:高级}

{phang}
{opt pstolerance(#)} 指定用于检查重叠假设的容忍度。默认值为 {cmd:pstolerance(1e-5)}。如果观测值的估计倾向得分小于 {cmd:pstolerance()} 指定的值，{cmd:teffects} 将退出并报错。

{phang}
{opth osample(newvar)} 指定创建指示变量 {it:newvar} 以识别违反重叠假设的观测值。

{phang}
{opt control(# | label)} 指定 {it:tvar} 的控制水平。默认值为第一个处理水平。可以指定数字级别 {it:#}（非负整数）或与数字级别相关联的标签。{cmd:control()} 不能与统计量 {cmd:pomeans} 一起指定。{cmd:control()} 和 {cmd:tlevel()} 不能指定相同的处理级别。

{phang}
{opt tlevel(# | label)} 指定统计量 {opt atet} 的 {it:tvar} 处理水平。默认值为第二个处理水平。可以指定数字级别 {it:#}（非负整数）或与数字级别相关联的标签。{opt tlevel()} 只能与统计量 {opt atet} 一起指定。{opt tlevel()} 和 {opt control()} 不能指定相同的处理水平。

{pstd}
以下选项与 {cmd:teffects} {cmd:ipwra} 一起使用，但在对话框中未显示：

{phang}
{cmd:coeflegend}；见
    {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse cattaneo2}

{pstd}
估计吸烟对出生体重的平均处理效应，使用 Probit 模型预测处理状态{p_end}
{phang2}{cmd:. teffects ipwra (bweight prenatal1 mmarried mage fbaby)}
        {cmd:(mbsmoke mmarried c.mage##c.mage fbaby medu, probit)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse cattaneo2}

{pstd}显示潜在结果均值和方程{p_end}
{phang2}{cmd:. teffects ipwra (bweight prenatal1 mmarried mage fbaby)}
        {cmd:(mbsmoke mmarried c.mage##c.mage fbaby medu, probit),}
	{cmd:pomeans aequations}

{pstd}
重新拟合上述模型，但使用异方差 Probit 来建模处理变量{p_end}
{phang2}{cmd:. teffects ipwra (bweight prenatal1 mmarried fbaby c.mage)}
      {cmd:(mbsmoke mmarried c.mage##c.mage fbaby medu,}
      {cmd:hetprobit(c.mage##c.mage)), aequations}

    {hline}


{marker video}{...}
{title:视频示例}

{phang2}{browse "http://www.youtube.com/watch?v=dmZCSbpL-W4":处理效应：逆概率加权回归调整}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:teffects} {cmd:ipwra} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt :{cmd:e(N)}}观测值数量{p_end}
{synopt :{cmd:e(n}{it:j}{cmd:)}}处理水平 {it:j} 的观测值数量{p_end}
{synopt :{cmd:e(N_clust)}}聚类数量{p_end}
{synopt :{cmd:e(k_eq)}}{cmd:e(b)} 中的方程数量{p_end}
{synopt :{cmd:e(k_levels)}}处理变量中的水平数量{p_end}
{synopt :{cmd:e(treated)}}定义为处理的处理变量级别{p_end}
{synopt :{cmd:e(control)}}定义为控制的处理变量级别{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:teffects}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(depvar)}}结果变量名称{p_end}
{synopt :{cmd:e(tvar)}}处理变量名称{p_end}
{synopt :{cmd:e(subcmd)}}{cmd:ipwra}{p_end}
{synopt :{cmd:e(tmodel)}}{cmd:logit}、{cmd:probit} 或 {cmd:hetprobit}{p_end}
{synopt :{cmd:e(omodel)}}{cmd:linear}、{cmd:logit}、{cmd:probit}、
{cmd:hetprobit}、{cmd:poisson}、{cmd:flogit}、{cmd:fprobit} 或
{cmd:fhetprobit}{p_end}
{synopt :{cmd:e(stat)}}估计的统计量，{cmd:ate}、{cmd:atet} 或 {cmd:pomeans}{p_end}
{synopt :{cmd:e(wtype)}}权重类型{p_end}
{synopt :{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt :{cmd:e(tlevels)}}处理变量的水平{p_end}
{synopt :{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt :{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为
{cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为
{cmd:asobserved}{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{p2col 5 20 24 2:函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <teffects_ipwra.sthlp>}