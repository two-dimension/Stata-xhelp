{smcl}
{* *! version 1.0.18  12dec2018}{...}
{viewerdialog stteffects "dialog stteffects, __message(-ipw_survival-)"}{...}
{vieweralsosee "[TE] stteffects ipw" "mansection TE stteffectsipw"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] stteffects postestimation" "help stteffects postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] stteffects intro" "help stteffects intro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] streg" "help streg_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{viewerjumpto "语法" "stteffects ipw##syntax"}{...}
{viewerjumpto "菜单" "stteffects ipw##menu"}{...}
{viewerjumpto "描述" "stteffects ipw##description"}{...}
{viewerjumpto "PDF 文档链接" "stteffects_ipw_zh##linkspdf"}{...}
{viewerjumpto "选项" "stteffects ipw##options"}{...}
{viewerjumpto "示例" "stteffects ipw##examples"}{...}
{viewerjumpto "存储结果" "stteffects ipw##results"}
{help stteffects_ipw:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[TE] stteffects ipw} {hline 2}}生存时间 逆概率加权{p_end}
{p2col:}({mansection TE stteffectsipw:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:stteffects} {cmd:ipw}
   {cmd:(}{it:tvar} {it:tmvarlist}
      [{cmd:,} {it:{help stteffects ipw##tmoptions:tmoptions}}]{cmd:)}
	{cmd:(}{it:cmvarlist}
	[{cmd:,} {it:{help stteffects ipw##cmoptions:cmoptions}}]{cmd:)}
	{ifin} 
     [{cmd:,}
          {it:{help stteffects ipw##stat:stat}}
          {it:{help stteffects ipw##options_table:options}}]


{phang}
{it:tvar} 必须包含表示处理水平的整数值。

{phang}
{it:tmvarlist} 指定在处理模型中预测处理分配的变量。

{phang}
{it:cmvarlist} 指定在审查模型中预测审查的变量。

{synoptset 34 tabbed}{...}
{marker tmoptions}{...}
{synopthdr:tmoptions}
{synoptline}
{syntab:模型}
{synopt :{opt logit}}逻辑回归处理模型; 默认{p_end}
{synopt :{opt probit}}Probit 处理模型{p_end}
{synopt :{opth hetprobit(varlist)}}异方差 Probit 处理模型{p_end}
{synopt :{opt nocons:tant}}从处理模型中抑制常数项{p_end}
{synoptline}

{marker cmoptions}{...}
{synopthdr:cmoptions}
{synoptline}
{syntab:模型}
{synopt :{opt weibull}}Weibull; 默认{p_end}
{synopt :{opt exponential}}指数分布{p_end}
{synopt :{opt gamma}}双参数 Gamma{p_end}
{synopt :{opt lognormal}}对数正态分布{p_end}
{synopt :{cmd:ancillary(}{it:avarlist}[{cmd:,} {opt nocons:tant}]{cmd:)}}指定用于模拟附加参数的变量{p_end}
{synopt :{opt nocons:tant}}从审查模型中抑制常数项{p_end}
{synoptline}

{marker stat}{...}
{synopthdr:stat}
{synoptline}
{syntab:统计}
{synopt :{opt ate}}估计总体平均处理效应; 默认{p_end}
{synopt :{opt atet}}估计对处理组的平均处理效应{p_end}
{synopt :{opt pomeans}}估计每个处理水平的潜在结果均值{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:SE/鲁棒性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt r:obust}, 
	{opt cl:uster} {it:clustvar},
	{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心水平; 默认是 {cmd:level(95)}{p_end}
{synopt :{opt aeq:uations}}显示辅助方程结果{p_end}
{synopt :{opt nosh:ow}}不显示设置信息{p_end}
{synopt :{it:{help stteffects ipw##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:最大化}
{synopt :{it:{help stteffects ipw##maximize_options:maximize_options}}}控制
最大化过程; 很少使用{p_end}
{synopt :{opt iterinit(#)}}指定初始值迭代的最大次数; 很少使用{p_end}

{syntab:高级}
{synopt :{opt pstol:erance(#)}}设定重叠假设的容忍度{p_end}
{synopt :{opth os:ample(newvar)}}标识违反重叠假设的观察值{p_end}
{synopt :{opt con:trol(#|label)}}指定 {it:tvar} 的控制水平{p_end}
{synopt :{opt tle:vel(#|label)}}指定 {it:tvar} 的处理水平{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{p 4 6 2}
在使用 {cmd:stteffects} 之前，必须 {cmd:stset} 数据; 见 {manhelp stset ST}.{p_end}
{p 4 6 2}
{it:tmvarlist},
{it:cmvarlist} 和
{it:avarlist}
可以包含因子变量; 见 {help fvvarlists}.{p_end}
{p 4 6 2}
{opt bootstrap}, {opt by}, {opt jackknife} 和 {opt statsby} 是允许的；
见 {help prefix_zh}.{p_end}
{p 4 6 2}在使用 {help bootstrap_zh} 前缀时不允许使用权重。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}s, {opt iweight}s 和 {opt pweight}s 可以通过 {cmd:stset} 指定; 见
{it:{mansection ST stsetRemarksandexamplesWeights:权重}} 下面的 {it:备注和示例} 在 {bf:[ST] stset} 中。
但是，如果您使用 {cmd:bootstrap} 前缀，则无法指定权重。{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
查看 {manhelp stteffects_postestimation TE:stteffects postestimation} 以获取
估计后可用的功能.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 处理效应 > 生存结果 >}
             {bf:逆概率加权 (IPW)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:stteffects ipw} 从具有随机审查时间的观察性生存时间数据中估计平均处理效应、对处理组的平均处理效应和潜在结果均值。估计是通过逆概率加权进行的。逆概率加权估计量使用观察到的结果的加权平均值。估计的权重对潜在结果的缺失数据和审查生存时间进行了修正。
{cmd:stteffects ipw} 提供了治疗模型和审查时间模型功能形式的多种选择。可以适应二元和多值处理。

{pstd}
有关如何从观察性生存时间数据中估计处理效应的概述，请参见 {manhelp stteffects_intro TE:stteffects intro}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TE stteffectsipwQuickstart:快速入门}

        {mansection TE stteffectsipwRemarksandexamples:备注和示例}

        {mansection TE stteffectsipwMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:ancillary(}{it:avarlist}[{cmd:, noconstant}]{cmd:)} 指定用于模拟附加参数的变量。默认情况下，附加参数不依赖于协变量。指定
{cmd:ancillary(}{it:avarlist}{cmd:,} {cmd:noconstant)} 会导致在附加参数的模型中抑制常数项。

{phang}
{opt noconstant}; 见 {helpb estimation options:[R] 估计选项}。

{dlgtab:统计}

{phang}
{it:stat} 是三种统计量之一： {cmd:ate}, {cmd:atet} 或 {cmd:pomeans}。
{cmd:ate} 是默认值。

{pmore}
{cmd:ate} 指定估计平均处理效应。

{pmore}
{cmd:atet} 指定估计对处理组的平均处理效应。

{pmore}
{cmd:pomeans} 指定估计每个处理水平的潜在结果均值。

{dlgtab:SE/鲁棒性}

INCLUDE help vce_rcbj

{dlgtab:报告}

{phang}
{opt level(#)}; 见
    {helpb estimation options:[R] 估计选项}。

{phang}
{cmd:aequations} 指定显示结果为结果模型或治疗模型参数。默认情况下，这些辅助参数的结果不显示。

{phang}
{cmd:noshow} 防止 {cmd:stteffects ipw} 显示关键 st 变量。这个选项很少使用，因为大多数人输入 {cmd:stset, show} 或
{cmd:stset, noshow} 来永久设定是否希望在每个 st 命令的输出顶部看到这些变量; 见 
{manhelp stset ST}。

INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt  iter:ate(#)},
[{cmd:no}]{opt log},
和
{opt from(init_specs)}; 见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
{it:init_specs} 是以下之一

{pmore2}
{it:matname} [{cmd:,} {cmd:skip} {cmd:copy}]

{pmore2}
{it:#} [{cmd:,} {it:#} ...]{cmd:,} {cmd:copy}

{phang}
{opt iterinit(#)} 指定用于计算初始值的最大迭代次数。这个选项很少使用。

{dlgtab:高级}

{phang}
{opt pstolerance(#)} 指定检查重叠假设的容忍度。默认值是 {cmd:pstolerance(1e-5)}。如果观察值的估计倾向得分低于 {cmd:pstolerance()} 指定的值，{cmd:stteffects} 将退出并返回错误。

{marker osample}{...}
{phang}
{opth osample(newvar)} 指定创建指标变量 {it:newvar} 以标识违反重叠假设的观察值。

{phang}
{opt control(#|label)} 指定 {it:tvar} 的控制水平。默认值是第一个处理水平。您可以指定数字级别 {it:#}（非负整数）或与数字级别相关的标签。{cmd:control()} 不能与统计量 {cmd:pomeans} 一起指定。
{cmd:control()} 和 {cmd:tlevel()} 不能指定相同的处理水平。

{phang}
{opt tlevel(#|label)} 指定对统计量 {cmd:atet} 的处理水平。默认值是第二个处理水平。您可以指定数字级别 {it:#}（非负整数）或与数字级别相关的标签。{cmd:tlevel()} 只能与统计量 {cmd:atet} 一起指定。{cmd:tlevel()} 和 {cmd:control()} 不能指定相同的处理水平。

{phang}
以下选项在 {cmd:stteffects} 中可用，但未显示在对话框中：

{phang}
{cmd:coeflegend};
{helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sheart}

{pstd}估计 ATE，使用默认的逻辑回归模型模拟处理分配{p_end}
{phang2}{cmd:. stteffects ipw (smoke age exercise education)}
          {cmd:(age exercise diet education)}

{pstd}估计 ATE，使用 Probit 模型处理分配，并使用 Gamma 模型处理审查时间{p_end}
{phang2}{cmd:. stteffects ipw (smoke age exercise education, probit)}
          {cmd:(age exercise diet education, gamma)}

{pstd}估计 ATET，使用默认的逻辑处理分配模型{p_end}
{phang2}{cmd:. stteffects ipw (smoke age exercise education)}
          {cmd:(age exercise diet education), atet}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:stteffects} {cmd:ipw} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt :{cmd:e(N)}}观察数量{p_end}
{synopt :{cmd:e(n}{it:j}{cmd:)}}治疗水平 {it:j} 的观察数量{p_end}
{synopt :{cmd:e(N_clust)}}聚类数量{p_end}
{synopt :{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt :{cmd:e(k_levels)}}处理变量中的水平数量{p_end}
{synopt :{cmd:e(treated)}}定义为处理的处理变量水平{p_end}
{synopt :{cmd:e(control)}}定义为控制的处理变量水平{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0}否则{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:stteffects}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(dead)}}{cmd:_d}{p_end}
{synopt :{cmd:e(depvar)}}{cmd:_t}{p_end}
{synopt :{cmd:e(tvar)}}治疗变量的名称{p_end}
{synopt :{cmd:e(subcmd)}}{cmd:ipw}{p_end}
{synopt :{cmd:e(tmodel)}}治疗模型: {cmd:logit}, {cmd:probit} 或 {cmd:hetprobit}{p_end}
{synopt :{cmd:e(cmodel)}}审查模型: {cmd:weibull}, {cmd:exponential}, {cmd:gamma} 或
 {cmd:lognormal}{p_end}
{synopt :{cmd:e(stat)}}估计的统计量: {cmd:ate}, {cmd:atet} 或
{cmd:pomeans}{p_end}
{synopt :{cmd:e(wtype)}}权重类型{p_end}
{synopt :{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt :{cmd:e(tlevels)}}处理变量的级别{p_end}
{synopt :{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt :{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{p2col 5 20 24 2:函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stteffects_ipw.sthlp>}