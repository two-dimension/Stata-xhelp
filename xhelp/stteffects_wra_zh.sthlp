{smcl}
{* *! version 1.0.18  12dec2018}{...}
{viewerdialog stteffects "dialog stteffects, __message(-wra_survival-)"}{...}
{vieweralsosee "[TE] stteffects wra" "mansection TE stteffectswra"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] stteffects postestimation" "help stteffects postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] stteffects intro" "help stteffects intro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] streg" "help streg_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{viewerjumpto "Syntax" "stteffects wra##syntax"}{...}
{viewerjumpto "Menu" "stteffects wra##menu"}{...}
{viewerjumpto "Description" "stteffects wra##description"}{...}
{viewerjumpto "Links to PDF documentation" "stteffects_wra_zh##linkspdf"}{...}
{viewerjumpto "Options" "stteffects wra##options"}{...}
{viewerjumpto "Examples" "stteffects wra##examples"}{...}
{viewerjumpto "Stored results" "stteffects wra##results"}
{help stteffects_wra:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[TE] stteffects wra} {hline 2}}生存时间加权回归调整{p_end}
{p2col:}({mansection TE stteffectswra:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:stteffects} {cmd:wra}
   {cmd:(}{it:omvarlist}
      [{cmd:,} {it:{help stteffects wra##omoptions:omoptions}}]{cmd:)}
      {cmd:(}{it:tvar}{cmd:)}
	{cmd:(}{it:cmvarlist}
	[{cmd:,} {it:{help stteffects wra##cmoptions:cmoptions}}]{cmd:)}
	{ifin} 
     [{cmd:,}
          {it:{help stteffects wra##stat:stat}}
          {it:{help stteffects wra##options_table:options}}]


{phang}
{it:omvarlist} 指定在结果模型中用于预测生存时间变量的变量。

{phang}
{it:tvar} 必须包含表示处理水平的整数值。

{phang}
{it:cmvarlist} 指定在审查模型中用于预测审查的变量。

{synoptset 34 tabbed}{...}
{marker omoptions}{...}
{synopthdr:omoptions}
{synoptline}
{syntab:模型}
{synopt :{opt weib:ull}} Weibull；默认值{p_end}
{synopt :{opt exp:onential}} 指数{p_end}
{synopt :{opt gam:ma}} 双参数伽玛{p_end}
{synopt :{opt ln:ormal}} 对数正态{p_end}
{synopt :{cmd:ancillary(}{it:avarlist}[{cmd:,} {opt nocons:tant}]{cmd:)}} 指定用于建模附属参数的变量{p_end}
{synopt :{opt nocons:tant}} 从结果模型中抑制常数项{p_end}
{synoptline}

{marker cmoptions}{...}
{synopthdr:cmoptions}
{synoptline}
{syntab:模型}
{synopt :{opt weib:ull}} Weibull；默认值{p_end}
{synopt :{opt exp:onential}} 指数{p_end}
{synopt :{opt gam:ma}} 双参数伽玛{p_end}
{synopt :{opt ln:ormal}} 对数正态{p_end}
{synopt :{cmd:ancillary(}{it:avarlist}[{cmd:,} {opt nocons:tant}]{cmd:)}} 指定用于建模附属参数的变量{p_end}
{synopt :{opt nocons:tant}} 从审查模型中抑制常数项{p_end}
{synoptline}

{marker stat}{...}
{synopthdr:stat}
{synoptline}
{syntab:统计}
{synopt :{opt ate}} 估计总体的平均处理效应；默认值{p_end}
{synopt :{opt atet}} 估计对受处理者的平均处理效应{p_end}
{synopt :{opt pom:eans}} 估计潜在结果均值{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}} {it:vcetype} 可以是 {opt r:obust}， 
	{opt cl:uster} {it:clustvar},
	{opt boot:strap}，或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}} 设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt aeq:uations}} 显示辅助方程结果{p_end}
{synopt :{opt nosh:ow}} 不显示 Stata 设置信息{p_end}
{synopt :{it:{help stteffects wra##display_options:display_options}}} 控制
INCLUDE help shortdes-displayoptall

{syntab:最大化}
{synopt :{it:{help stteffects wra##maximize_options:maximize_options}}} 控制
最大化过程；鲜少使用{p_end}
{synopt :{opt iterinit(#)}} 指定起始值迭代的最大数量；鲜少使用{p_end}

{syntab:高级}
{synopt :{opt pstol:erance(#)}} 设置重叠假设的容忍度{p_end}
{synopt :{opth os:ample(newvar)}} 识别违反重叠假设的观察值{p_end}
{synopt :{opt con:trol(#|label)}} 指定作为控制的 {it:tvar} 的水平{p_end}
{synopt :{opt tle:vel(#|label)}} 指定作为处理的 {it:tvar} 的水平{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{p 4 6 2}
在使用 {cmd:stteffects} 之前，必须 {cmd:stset} 数据；请参阅 {manhelp stset ST}。{p_end}
{p 4 6 2}
{it:omvarlist}，{it:cmvarlist}，和 {it:avarlist} 
可以包含因子变量；请参阅 {help fvvarlists}。{p_end}
{p 4 6 2}
{opt bootstrap}，{opt by}，{opt jackknife}，和 {opt statsby} 是允许的；请参阅 {help prefix_zh}。{p_end}
{p 4 6 2} 使用 {help bootstrap_zh} 前缀不允许使用权重。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}、{opt iweight}，和 {opt pweight} 可通过 {cmd:stset} 指定；请参阅 {it:{mansection ST stsetRemarksandexamplesWeights:权重}}
在 {it:Remarks and examples} 下的 {bf:[ST] stset}。但是，如果使用 {cmd:bootstrap} 前缀，则无法指定权重。{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参阅 {manhelp stteffects_postestimation TE:stteffects postestimation} 以获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 处理效应 > 生存结果 >}
             {bf:加权回归调整}


{marker description}{...}
{title:描述}

{pstd}
{cmd:stteffects wra} 从具有随机审查时间的观察生存时间数据中估计平均处理效应、处理过的平均处理效应和潜在结果均值。估计是通过加权回归调整（WRA）进行的。WRA 估计器使用逆审查概率调整回归系数来计算处理水平预测结果的均值。这些平均值的对比估计处理效应。WRA 使用来自生存时间模型的估计权重来考虑审查的生存时间，而不是在似然函数中包含一个项。{cmd:stteffects wra} 提供了对结果模型和审查模型功能形式的多种选择。双变量和多值处理都可以处理。

{pstd}
请参阅 {manhelp stteffects_intro TE:stteffects intro} 以获取从观察生存时间数据中估计治疗效果的概述。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TE stteffectswraQuickstart:快速开始}

        {mansection TE stteffectswraRemarksandexamples:备注和示例}

        {mansection TE stteffectswraMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:ancillary(}{it:avarlist}[{cmd:, noconstant}]{cmd:)} 指定用于建模附属参数的变量。 默认情况下，附属参数不依赖于协变量。指定
{cmd:ancillary(}{it:avarlist}{cmd:,} {cmd:noconstant)} 将导致模型中的常数被抑制。

{pmore}
{cmd:ancillary()} 可以为生存时间结果模型、审查变量模型或两者之一指定。如果为两者都指定 {cmd:ancillary()}，则用于每个模型的变量列表可以不同。

{phang}
{opt noconstant}；请参阅
{helpb estimation options:[R] 估计选项}。

{dlgtab:统计}

{phang}
{it:stat} 是三种统计之一： {cmd:ate}， {cmd:atet}，或 {cmd:pomeans}。
{cmd:ate} 是默认值。

{pmore}
{cmd:ate} 指定估计平均处理效应。

{pmore}
{cmd:atet} 指定估计对处理的平均处理效应。

{pmore}
{cmd:pomeans} 指定估计每个处理水平的潜在结果均值。

{dlgtab:标准误/稳健性}

INCLUDE help vce_rcbj

{dlgtab:报告}

{phang}
{opt level(#)}；请参阅
    {helpb estimation options:[R] 估计选项}。

{phang}
{cmd:aequations} 指定结果模型或处理模型参数的结果被显示。 默认情况下，不会显示这些辅助参数的结果。

{phang}
{cmd:noshow} 防止 {cmd:stteffects wra} 显示关键 st 变量。此选项很少使用，因为大多数人会输入 {cmd:stset, show} 或 {cmd:stset, noshow} 来永久性地设置他们希望在每个 st 命令的输出顶部提及这些变量；请参阅
{manhelp stset ST}。

INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt  iter:ate(#)},
[{cmd:no}]{opt log}，
和
{opt from(init_specs)}；请参阅 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
{it:init_specs} 是以下之一

{pmore2}
{it:matname} [{cmd:,} {cmd:skip} {cmd:copy}]

{pmore2}
{it:#} [{cmd:,} {it:#} ...]{cmd:,} {cmd:copy}

{phang}
{opt iterinit(#)} 指定用于计算起始值的最大迭代次数。此选项很少使用。

{dlgtab:高级}

{phang}
{opt pstolerance(#)} 指定用于检查重叠假设的容忍度。默认值为 {cmd:pstolerance(1e-5)}。如果观察值的估计倾向得分小于 {cmd:pstolerance()} 指定的值，{cmd:stteffects} 将以错误退出。

{marker osample}{...}
{phang}
{opth osample(newvar)} 指定创建指示变量 {it:newvar} 来识别违反重叠假设的观察值。

{phang}
{opt control(#|label)} 指定作为控制的 {it:tvar} 的水平。默认值为第一个处理水平。您可以指定数值级别 {it:#}（非负整数）或与数值级别关联的标签。
{cmd:control()} 不能与统计量 {cmd:pomeans} 一起指定。
{cmd:control()} 和 {cmd:tlevel()} 不能指定相同的处理水平。

{phang}
{opt tlevel(#|label)} 指定统计量 {cmd:atet} 的处理 {it:tvar} 的水平。默认值为第二个处理水平。您可以指定数值级别 {it:#}（非负整数）或与数值级别关联的标签。{cmd:tlevel()} 只能与统计量 {cmd:atet} 一起指定。 {cmd:tlevel()} 和 {cmd:control()} 不能指定相同的处理水平。

{phang}
以下选项可与 {cmd:stteffects} 一起使用，但不会在对话框中显示：

{phang}
{cmd:coeflegend}；
{helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sheart}

{pstd}估计 ATE，使用默认 Weibull 结果模型建模均值生存时间{p_end}
{phang2}{cmd:. stteffects wra (age exercise diet education) (smoke)}
          {cmd:(age c.age#c.age exercise diet education)}

{pstd}估计 ATET，使用默认 Weibull 结果模型建模均值生存时间{p_end}
{phang2}{cmd:. stteffects wra (age exercise diet education) (smoke)}
          {cmd:(age c.age#c.age exercise diet education), atet}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:stteffects} {cmd:wra} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt :{cmd:e(N)}} 观察值数量{p_end}
{synopt :{cmd:e(n}{it:j}{cmd:)}} 处理水平 {it:j} 的观察值数量{p_end}
{synopt :{cmd:e(N_clust)}} 聚类的数量{p_end}
{synopt :{cmd:e(k_eq)}} {cmd:e(b)} 中方程的数量{p_end}
{synopt :{cmd:e(k_levels)}} 处理变量中的水平数量{p_end}
{synopt :{cmd:e(treated)}} 定义为“处理”的处理变量水平{p_end}
{synopt :{cmd:e(control)}} 定义为“控制”的处理变量水平{p_end}
{synopt :{cmd:e(converged)}} {cmd:1} 表示已收敛，{cmd:0} 表示未收敛{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt :{cmd:e(cmd)}} {cmd:stteffects}{p_end}
{synopt :{cmd:e(cmdline)}} 输入的命令{p_end}
{synopt :{cmd:e(dead)}} {cmd:_d}{p_end}
{synopt :{cmd:e(depvar)}} {cmd:_t}{p_end}
{synopt :{cmd:e(tvar)}} 处理变量名称{p_end}
{synopt :{cmd:e(subcmd)}} {cmd:wra}{p_end}
{synopt :{cmd:e(omodel)}} 结果模型： {cmd:weibull}， {cmd:exponential}， {cmd:gamma}，或 {cmd:lognormal}{p_end}
{synopt :{cmd:e(cmodel)}} 审查模型： {cmd:weibull}， {cmd:exponential}， {cmd:gamma}，或 {cmd:lognormal}{p_end}
{synopt :{cmd:e(stat)}} 估计的统计量： {cmd:ate}， {cmd:atet}，或 {cmd:pomeans}{p_end}
{synopt :{cmd:e(wtype)}} 权重类型{p_end}
{synopt :{cmd:e(wexp)}} 权重表达式{p_end}
{synopt :{cmd:e(title)}} 估计输出中的标题{p_end}
{synopt :{cmd:e(clustvar)}} 聚类变量名称{p_end}
{synopt :{cmd:e(tlevels)}} 处理变量的水平{p_end}
{synopt :{cmd:e(vce)}} {it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt :{cmd:e(vcetype)}} 用于标记标准误的标题{p_end}
{synopt :{cmd:e(properties)}} {cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}} 用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}} 用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsnotok)}} 被 {cmd:margins} 禁止的预测{p_end}
{synopt:{cmd:e(asbalanced)}} 作为 {cmd:asbalanced} 的因子变量 {cmd:fvset}{p_end}
{synopt:{cmd:e(asobserved)}} 作为 {cmd:asobserved} 的因子变量 {cmd:fvset}{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt :{cmd:e(b)}} 系数向量{p_end}
{synopt :{cmd:e(V)}} 估计量的方差协方差矩阵{p_end}

{p2col 5 20 24 2:函数}{p_end}
{synopt :{cmd:e(sample)}} 标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stteffects_wra.sthlp>}