{smcl}
{* *! version 1.0.18  12dec2018}{...}
{viewerdialog stteffects "dialog stteffects, __message(-ra_survival-)"}{...}
{vieweralsosee "[TE] stteffects ra" "mansection TE stteffectsra"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] stteffects postestimation" "help stteffects postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] stteffects intro" "help stteffects intro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] streg" "help streg_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{viewerjumpto "Syntax" "stteffects ra##syntax"}{...}
{viewerjumpto "Menu" "stteffects ra##menu"}{...}
{viewerjumpto "Description" "stteffects ra##description"}{...}
{viewerjumpto "Links to PDF documentation" "stteffects_ra_zh##linkspdf"}{...}
{viewerjumpto "Options" "stteffects ra##options"}{...}
{viewerjumpto "Examples" "stteffects ra##examples"}{...}
{viewerjumpto "Stored results" "stteffects ra##results"}
{help stteffects_ra:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[TE] stteffects ra} {hline 2}}生存时间回归调整{p_end}
{p2col:}({mansection TE stteffectsra:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:stteffects} {cmd:ra}
   {cmd:(}{it:omvarlist} 
      [{cmd:,} {it:{help stteffects ra##omoptions:omoptions}}]{cmd:)}
	{cmd:(}{it:tvar}{cmd:)} 
	{ifin} 
     [{cmd:,}
          {it:{help stteffects ra##stat:stat}}
          {it:{help stteffects ra##options_table:options}}]


{phang}
{it:omvarlist} 指定预测结果模型中生存时间变量的变量。

{phang}
{it:tvar} 必须包含表示处理水平的整数值。

{synoptset 34 tabbed}{...}
{marker omoptions}{...}
{synopthdr:omoptions}
{synoptline}
{syntab:模型}
{synopt :{opt weib:ull}}威布尔；默认选项{p_end}
{synopt :{opt exp:onential}}指数{p_end}
{synopt :{opt gam:ma}}两个参数的伽玛分布{p_end}
{synopt :{opt ln:ormal}}对数正态分布{p_end}
{synopt :{cmd:ancillary(}{it:avarlist}[{cmd:,} {opt nocons:tant}]{cmd:)}}指定用于建模附属参数的变量{p_end}
{synopt :{opt nocons:tant}}从结果模型中抑制常数项{p_end}
{synoptline}

{marker stat}{...}
{synopthdr:stat}
{synoptline}
{syntab:统计}
{synopt :{opt ate}}估计总体的平均处理效应；默认选项{p_end}
{synopt :{opt atet}}估计对受处理者的平均处理效应{p_end}
{synopt :{opt pom:eans}}估计潜在结果均值{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:标准误/鲁棒性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt r:obust}, 
	{opt cl:uster} {it:clustvar},
	{opt boot:strap}, 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认为 {cmd:level(95)}{p_end}
{synopt :{opt aeq:uations}}显示辅助方程的结果{p_end}
{synopt :{opt nosh:ow}}不显示 st 设置信息{p_end}
{synopt :{it:{help stteffects ra##display_options:display_options}}}控制
包含帮助简短描述-显示所有选项

{syntab:最大化}
{synopt :{it:{help stteffects ra##maximize_options:maximize_options}}}控制
最大化过程；很少使用{p_end}
{synopt :{opt iterinit(#)}}指定起始值迭代次数；很少使用{p_end}

{syntab:高级}
{synopt :{opt con:trol(#|label)}}指定 {it:tvar} 的控制水平{p_end}
{synopt :{opt tle:vel(#|label)}}指定 {it:tvar} 的处理水平{p_end}

包含帮助简短描述-系数说明
{synoptline}
{p2colreset}{...}

{p 4 6 2}
您必须在使用 {cmd:stteffects} 之前进行 {cmd:stset} 设置数据；请参阅
{manhelp stset ST}.{p_end}
{p 4 6 2}
{it:omvarlist} 和 {it:avarlist}
可以包含因子变量；请参阅 {help fvvarlists}.{p_end}
{p 4 6 2}
{opt bootstrap}, {opt by}, {opt jackknife}, 和 {opt statsby} 是被允许的；
请参阅 {help prefix_zh}.{p_end}
{p 4 6 2}不允许使用 {help bootstrap_zh} 前缀附加权重.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}s, {opt iweight}s, 和 {opt pweight}s 可以通过 
{cmd:stset} 指定；请参阅 {it:{mansection ST stsetRemarksandexamplesWeights:权重}}
在 {it:备注和示例} 中 {bf:[ST] stset}. 但是，如果您使用
{cmd:bootstrap} 前缀，则无法指定权重.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
请参阅 {manhelp stteffects_postestimation TE:stteffects postestimation} 以获取
估计后可用的功能.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 处理效应 > 生存结果 >}
             {bf:回归调整}


{marker description}{...}
{title:描述}

{pstd}
{cmd:stteffects ra} 通过回归调整估计平均处理效应、对受处理者的平均处理效应和潜在结果均值，基于观察生存时间数据。回归调整使用治疗特定的预测的均值生存时间的平均值来估计每个潜在结果的均值生存时间。这些预测均值生存时间的差异估计处理效应。
{cmd:stteffects ra} 提供几种选择用于预测均值生存时间的模型。可以处理二元和多值的处理。

{pstd}
请参阅 {manhelp stteffects_intro TE:stteffects intro} 以获取关于如何从观察生存时间数据中估计处理效应的概览。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TE stteffectsraQuickstart:快速开始}

        {mansection TE stteffectsraRemarksandexamples:备注和示例}

        {mansection TE stteffectsraMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:ancillary(}{it:avarlist}[{cmd:, noconstant}]{cmd:)} 指定用于建模附属参数的变量。默认情况下，附属参数不依赖于协变量。指定
{cmd:ancillary(}{it:avarlist}{cmd:,} {cmd:noconstant)} 会导致在附属参数的模型中抑制常数项。

{phang}
{opt noconstant}；请参阅
{helpb estimation options:[R] 估计选项}。

{dlgtab:统计}

{phang}
{it:stat} 是三种统计量之一： {cmd:ate}, {cmd:atet}, 或 {cmd:pomeans}。
{cmd:ate} 是默认选项。

{pmore}
{cmd:ate} 指定估计平均处理效应。

{pmore}
{cmd:atet} 指定估计对受处理者的平均处理效应。

{pmore}
{cmd:pomeans} 指定估计每个处理水平的潜在结果均值。

{dlgtab:标准误/鲁棒性}

包含帮助 vce_rcbj

{dlgtab:报告}

{phang}
{opt level(#)}；请参阅 
    {helpb estimation options:[R] 估计选项}。

{phang}
{cmd:aequations} 指定是否显示结果结果模型或处理模型参数的结果。默认情况下，这些辅助参数的结果不显示。

{phang}
{cmd:noshow} 防止 {cmd:stteffects ra} 显示关键的 st 变量。这个选项很少使用，因为大多数人输入 {cmd:stset, show} 或 
{cmd:stset, noshow} 来永久设置他们是否想在每个 st 命令的输出顶部查看这些变量; 请参阅
{manhelp stset ST}。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt  iter:ate(#)},
[{cmd:no}]{opt log},
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
{opt iterinit(#)} 指定用于计算起始值的最大迭代次数。这个选项很少使用。

{dlgtab:高级}

{phang}
{opt control(#|label)} 指定 {it:tvar} 的控制水平。默认是第一个处理水平。您可以指定数字级别 {it:#}（非负整数）或与数字级别相关联的标签。
{cmd:control()} 不能与统计量 {cmd:pomeans} 一起指定。
{cmd:control()} 和 {cmd:tlevel()} 不能指定相同的处理水平。

{phang}
{opt tlevel(#|label)} 指定统计量 {cmd:atet} 的 {it:tvar} 的处理水平。默认是第二个处理水平。您可以指定数字级别 {it:#}（非负整数）或与数字级别相关联的标签。{cmd:tlevel()} 仅可以与统计量 {cmd:atet} 结合使用。{cmd:tlevel()} 和 {cmd:control()} 不能指定相同的处理水平。

{phang}
以下选项在 {cmd:stteffects} 中可用，但不在对话框中显示：

{phang}
{cmd:coeflegend}；
{helpb estimation options##coeflegend:[R] 估计选项}。

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sheart}

{pstd}估计 ATE ，使用默认的威布尔模型建模均值生存时间{p_end}
{phang2}{cmd:. stteffects ra (age exercise diet education) (smoke)}

{pstd}估计 ATE ，使用伽玛模型建模均值生存时间{p_end}
{phang2}{cmd:. stteffects ra (age exercise diet education, gamma) (smoke)}

{pstd}估计 ATET ，使用默认的威布尔模型建模均值生存时间{p_end}
{phang2}{cmd:. stteffects ra (age exercise diet education) (smoke), atet}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:stteffects} {cmd:ra} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt :{cmd:e(N)}}观察数{p_end}
{synopt :{cmd:e(n}{it:j}{cmd:)}}处理水平 {it:j} 的观察数{p_end}
{synopt :{cmd:e(N_clust)}}簇数{p_end}
{synopt :{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数{p_end}
{synopt :{cmd:e(k_levels)}} 处理变量的水平数{p_end}
{synopt :{cmd:e(treated)}}被定义为处理的处理变量水平{p_end}
{synopt :{cmd:e(control)}}被定义为控制的处理变量水平{p_end}
{synopt :{cmd:e(converged)}}如果收敛则为{cmd:1}，否则为{cmd:0}{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:stteffects}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(dead)}}{cmd:_d}{p_end}
{synopt :{cmd:e(depvar)}}{cmd:_t}{p_end}
{synopt :{cmd:e(tvar)}}处理变量的名称{p_end}
{synopt :{cmd:e(subcmd)}}{cmd:ra}{p_end}
{synopt :{cmd:e(omodel)}}结果模型： {cmd:weibull}, {cmd:exponential}, {cmd:gamma}, 或
 {cmd:lognormal}{p_end}
{synopt :{cmd:e(stat)}}估计的统计量： {cmd:ate}, {cmd:atet}, 或
{cmd:pomeans}{p_end}
{synopt :{cmd:e(wtype)}}权重类型{p_end}
{synopt :{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(clustvar)}}簇变量名称{p_end}
{synopt :{cmd:e(tlevels)}}处理变量的水平{p_end}
{synopt :{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt :{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 被视为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 被视为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{p2col 5 20 24 2:函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stteffects_ra.sthlp>}