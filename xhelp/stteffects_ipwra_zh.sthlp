{smcl}
{* *! version 1.0.20  12dec2018}{...}
{viewerdialog stteffects "dialog stteffects, __message(-ipwra_survival-)"}{...}
{vieweralsosee "[TE] stteffects ipwra" "mansection TE stteffectsipwra"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] stteffects postestimation" "help stteffects postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] stteffects intro" "help stteffects intro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] streg" "help streg_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{viewerjumpto "语法" "stteffects ipwra##syntax"}{...}
{viewerjumpto "菜单" "stteffects ipwra##menu"}{...}
{viewerjumpto "描述" "stteffects ipwra##description"}{...}
{viewerjumpto "PDF 文档链接" "stteffects_ipwra_zh##linkspdf"}{...}
{viewerjumpto "选项" "stteffects ipwra##options"}{...}
{viewerjumpto "示例" "stteffects ipwra##examples"}{...}
{viewerjumpto "存储结果" "stteffects ipwra##results"}
{help stteffects_ipwra:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[TE] stteffects ipwra} {hline 2}}生存时间反向概率加权回归调整{p_end}
{p2col:}({mansection TE stteffectsipwra:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:stteffects} {cmd:ipwra}
   {cmd:(}{it:omvarlist}
      [{cmd:,} {it:{help stteffects ipwra##omoptions:omoptions}}]{cmd:)}
	{cmd:(}{it:tvar} {it:tmvarlist}
	[{cmd:,} {it:{help stteffects ipwra##tmoptions:tmoptions}}]{cmd:)}
	[{cmd:(}{it:cmvarlist}
	      [{cmd:,} {it:{help stteffects ipwra##cmoptions:cmoptions}}]{cmd:)}]
	{ifin} 
     [{cmd:,}
          {it:{help stteffects ipwra##stat:stat}}
          {it:{help stteffects ipwra##options_table:options}}]

{phang}
{it:omvarlist} 指定在结果模型中预测生存时间变量的变量。

{phang}
{it:tvar} 必须包含表示处理水平的整数值。

{phang}
{it:tmvarlist} 指定在处理模型中预测处理分配的变量。

{phang}
{it:cmvarlist} 指定在审查模型中预测审查的变量。

{synoptset 34 tabbed}{...}
{marker omoptions}{...}
{synopthdr:omoptions}
{synoptline}
{syntab:模型}
{synopt :{opt weib:ull}}威布尔；默认{p_end}
{synopt :{opt exp:onential}}指数{p_end}
{synopt :{opt gam:ma}}两参数伽玛{p_end}
{synopt :{opt ln:ormal}}对数正态{p_end}
{synopt :{cmd:ancillary(}{it:avarlist}[{cmd:,} {opt nocons:tant}]{cmd:)}}指定用于建模辅助参数的变量{p_end}
{synopt :{opt nocons:tant}}从结果模型中抑制常数项{p_end}
{synoptline}

{marker tmoptions}{...}
{synopthdr:tmoptions}
{synoptline}
{syntab:模型}
{synopt :{opt logit}}逻辑处理模型；默认{p_end}
{synopt :{opt probit}}概率处理模型{p_end}
{synopt :{opth hetprobit(varlist)}}异方差概率处理模型{p_end}
{synopt :{opt nocons:tant}}抑制处理模型中的常数项{p_end}
{synoptline}

{marker cmoptions}{...}
{synopthdr:cmoptions}
{synoptline}
{syntab:模型}
{synopt :{opt weib:ull}}威布尔；默认{p_end}
{synopt :{opt exp:onential}}指数{p_end}
{synopt :{opt gam:ma}}两参数伽玛{p_end}
{synopt :{opt ln:ormal}}对数正态{p_end}
{synopt :{cmd:ancillary(}{it:avarlist}[{cmd:,} {opt nocons:tant}]{cmd:)}}指定用于建模辅助参数的变量{p_end}
{synopt :{opt nocons:tant}}抑制审查模型中的常数项{p_end}
{synoptline}

{marker stat}{...}
{synopthdr:stat}
{synoptline}
{syntab:统计}
{synopt :{opt ate}}估计总体中的平均处理效应；默认{p_end}
{synopt :{opt atet}}估计对受处理者的平均处理效应{p_end}
{synopt :{opt pom:eans}}估计潜在结果均值{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype}可以是 {opt r:obust}, 
	{opt cl:uster} {it:clustvar},
	{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:汇报}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt aeq:uations}}显示辅助方程结果{p_end}
{synopt :{opt nosh:ow}}不显示 st 设置信息{p_end}
{synopt :{it:{help stteffects ipwra##display_options:display_options}}}控制
包含帮助短描述-显示选项

{syntab:最大化}
{synopt :{it:{help stteffects ipwra##maximize_options:maximize_options}}}控制
最大化过程；很少使用{p_end}
{synopt :{opt iterinit(#)}}指定起始值迭代次数；很少使用{p_end}

{syntab:高级}
{synopt :{opt pstol:erance(#)}}设置重叠假设的容差{p_end}
{synopt :{opth os:ample(newvar)}}识别违反重叠假设的观察值{p_end}
{synopt :{opt con:trol(#|label)}}指定被控制的 {it:tvar} 的水平{p_end}
{synopt :{opt tle:vel(#|label)}}指定治疗 {it:tvar} 的水平{p_end}

包含帮助短描述-系数图例
{synoptline}
{p2colreset}{...}

{p 4 6 2}
在使用 {cmd:stteffects} 之前，您必须 {cmd:stset} 您的数据；请参见
{manhelp stset ST}.{p_end}
{p 4 6 2}
{it:omvarlist},
{it:tmvarlist}, 
{it:cmvarlist} 和
{it:avarlist}
可以包含因子变量；参见 {help fvvarlists}.{p_end}
{p 4 6 2}
允许使用 {opt bootstrap}, {opt by}, {opt jackknife} 和 {opt statsby}；
参见 {help prefix_zh}.{p_end}
{p 4 6 2}不允许与 {help bootstrap_zh} 前缀一起使用权重。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}s, {opt iweight}s 和 {opt pweight}s 可以使用
{cmd:stset} 指定；请参见 {it:{mansection ST stsetRemarksandexamplesWeights:权重}}
在 {it:备注和示例} 中的 {bf:[ST] stset}。但是，如果您使用 {cmd:bootstrap} 前缀，则不能指定权重。{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp stteffects_postestimation TE:stteffects postestimation} 以了解估计后可用的特性。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 处理效应 > 生存结果 >}
             {bf:使用IPW进行回归调整}


{marker description}{...}
{title:描述}

{pstd}
{cmd:stteffects ipwra} 通过反向概率加权回归调整 (IPWRA) 从观察生存时间数据中估计平均处理效应、对受处理者的平均处理效应和潜在结果均值。IPWRA 估计量使用缺失性调整的回归系数来计算处理水平预测结果的均值。这些均值的差异估计处理效应。{cmd:stteffects ipwra} 提供了多个选择用于结果模型、处理模型和可选的审查时长模型的函数形式。支持二元和多值处理。

{pstd}
请参见 {manhelp stteffects_intro TE:stteffects intro} 了解从观察生存时间数据估计处理效应的概述。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TE stteffectsipwraQuickstart:快速入门}

        {mansection TE stteffectsipwraRemarksandexamples:备注和示例}

        {mansection TE stteffectsipwraMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:ancillary(}{it:avarlist}[{cmd:, noconstant}]{cmd:)} 指定用于建模辅助参数的变量。默认情况下，辅助参数不依赖于协变量。指定
{cmd:ancillary(}{it:avarlist}{cmd:,} {cmd:noconstant)} 会在辅助参数模型中抑制常数项。

{pmore}
{cmd:ancillary()} 可以为生存期结果模型、审查变量模型或两者指定。如果同时为两者指定 {cmd:ancillary()}，则每个模型使用的变量列表可能不同。

{phang}
{opt noconstant}; 参见
{helpb estimation options:[R] 估计选项}。

{dlgtab:统计}

{phang}
{it:stat} 是三种统计之一：{cmd:ate}、{cmd:atet} 或 {cmd:pomeans}。
{cmd:ate} 是默认值。

{pmore}
{cmd:ate} 指定估计平均处理效应。

{pmore}
{cmd:atet} 指定估计受处理者的平均处理效应。

{pmore}
{cmd:pomeans} 指定估计每个处理水平的潜在结果均值。

{dlgtab:标准误/稳健}

包含帮助 vce_rcbj

{dlgtab:汇报}

{phang}
{opt level(#)}; 参见
    {helpb estimation options:[R] 估计选项}。

{phang}
{cmd:aequations} 指定是否显示结果为结果模型或处理模型参数的结果。默认情况下，这些辅助参数的结果不显示。

{phang}
{cmd:noshow} 防止 {cmd:stteffects ipwra} 显示关键 st 变量。此选项很少使用，因为大多数人输入 {cmd:stset, show} 或 {cmd:stset, noshow} 来永久设置他们是否希望在每个 st 命令输出顶部看到这些变量；请参见 
{manhelp stset ST}。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt  iter:ate(#)},
[{cmd:no}]{opt log},
和
{opt from(init_specs)}; 参见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
{it:init_specs} 是下面之一

{pmore2}
{it:matname} [{cmd:,} {cmd:skip} {cmd:copy}]

{pmore2}
{it:#} [{cmd:,} {it:#} ...]{cmd:,} {cmd:copy}

{phang}
{opt iterinit(#)} 指定用于计算起始值的最大迭代次数。此选项很少使用。

{dlgtab:高级}

{phang}
{opt pstolerance(#)} 指定用于检查重叠假设的容差。默认值是 {cmd:pstolerance(1e-5)}。 如果观察值的估计倾向得分小于 {cmd:pstolerance()} 指定的值，{cmd:stteffects} 将以错误退出。

{marker osample}{...}
{phang}
{opth osample(newvar)} 指定创建指示变量 {it:newvar} 以识别违反重叠假设的观察值。

{phang}
{opt control(#|label)} 指定 {it:tvar} 的控制水平。默认是第一个处理水平。可以指定数值水平 {it:#} （非负整数）或与数值水平关联的标签。
{cmd:control()} 不能与统计量 {cmd:pomeans} 一起指定。
{cmd:control()} 和 {cmd:tlevel()} 不能指定相同的处理水平。

{phang}
{opt tlevel(#|label)} 指定统计 {cmd:atet} 的处理水平。默认是第二个处理水平。可以指定数值水平 {it:#} （非负整数）或与数值水平关联的标签。{cmd:tlevel()} 只能与统计 {cmd:atet} 一起指定。{cmd:tlevel()} 和 {cmd:control()} 不能指定相同的处理水平。

{phang}
以下选项与 {cmd:stteffects} 可用，但不在对话框中显示：

{phang}
{cmd:coeflegend};
{helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sheart}

{pstd}估计 ATE，使用默认威布尔模型对平均生存时间建模{p_end}
{phang2}{cmd:. stteffects ipwra (age exercise diet education)}
          {cmd:(smoke age exercise education)}

{pstd}估计 ATE，使用结果的伽玛模型和处理分配的 probit 模型{p_end}
{phang2}{cmd:. stteffects ipwra (age exercise diet education, gamma)}
          {cmd:(smoke age exercise education, probit)}

{pstd}通过似然调整审查 IPWRA 估计 ATE，使用默认威布尔模型{p_end}
{phang2}{cmd:. stteffects ipwra (age exercise diet education)}
          {cmd:(smoke age exercise education)}
          {cmd:(age exercise diet education)}

{pstd}估计 ATET，使用默认威布尔模型对平均生存时间建模{p_end}
{phang2}{cmd:. stteffects ipwra (age exercise diet education)}
          {cmd:(smoke age exercise education), atet}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:stteffects} {cmd:ipwra} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt :{cmd:e(N)}}观察数量{p_end}
{synopt :{cmd:e(n}{it:j}{cmd:)}}处理水平 {it:j} 的观察数量{p_end}
{synopt :{cmd:e(N_clust)}}集群数量{p_end}
{synopt :{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt :{cmd:e(k_levels)}}处理变量中的水平数量{p_end}
{synopt :{cmd:e(treated)}}定义为已处理的处理变量水平{p_end}
{synopt :{cmd:e(control)}}定义为控制的处理变量水平{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:stteffects}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(dead)}}{cmd:_d}{p_end}
{synopt :{cmd:e(depvar)}}{cmd:_t}{p_end}
{synopt :{cmd:e(tvar)}}治疗变量名称{p_end}
{synopt :{cmd:e(subcmd)}}{cmd:ipwra}{p_end}
{synopt :{cmd:e(omodel)}}结果模型：{cmd:weibull}, {cmd:exponential}, {cmd:gamma}, 或 {cmd:lognormal}{p_end}
{synopt :{cmd:e(tmodel)}}处理模型：{cmd:logit}, {cmd:probit}, 或 {cmd:hetprobit}{p_end}
{synopt :{cmd:e(cmodel)}}审查模型：{cmd:weibull}, {cmd:exponential}, {cmd:gamma}, 或
 {cmd:lognormal} （如果已指定）{p_end}
{synopt :{cmd:e(stat)}}估计的统计量：{cmd:ate}, {cmd:atet}, 或
{cmd:pomeans}{p_end}
{synopt :{cmd:e(wtype)}}权重类型{p_end}
{synopt :{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt :{cmd:e(tlevels)}}处理变量的水平{p_end}
{synopt :{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt :{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{p2col 5 20 24 2:函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stteffects_ipwra.sthlp>}