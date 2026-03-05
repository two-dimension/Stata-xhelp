{smcl}
{* *! version 1.0.17  14dec2018}{...}
{viewerdialog teffects "dialog teffects"}{...}
{vieweralsosee "[TE] teffects ipw" "mansection TE teffectsipw"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teffects postestimation" "help teffects postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teffects" "help teffects_zh"}{...}
{viewerjumpto "Syntax" "teffects ipw##syntax"}{...}
{viewerjumpto "Menu" "teffects ipw##menu"}{...}
{viewerjumpto "Description" "teffects ipw##description"}{...}
{viewerjumpto "Links to PDF documentation" "teffects_ipw_zh##linkspdf"}{...}
{viewerjumpto "Options" "teffects ipw##options"}{...}
{viewerjumpto "Examples" "teffects ipw##examples"}{...}
{viewerjumpto "Video example" "teffects ipw##video"}{...}
{viewerjumpto "Stored results" "teffects ipw##results"}
{help teffects_ipw:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[TE] teffects ipw} {hline 2}}反事实加权{p_end}
{p2col:}({mansection TE teffectsipw:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:teffects} {cmd:ipw}
   {cmd:(}{it:{help varname_zh:ovar}}{cmd:)}
   {cmd:(}{it:{help varname_zh:tvar}} {it:{help varlist_zh:tmvarlist}}
      [{cmd:,} {it:{help teffects ipw##tmodel:tmodel}}
	{opt nocons:tant}]{cmd:)}
	{ifin} 
        [{it:{help teffects ipw##weight:weight}}]
     [{cmd:,}
          {it:{help teffects ipw##stat:stat}}
          {it:{help teffects ipw##options_table:options}}]

{phang}
{it:ovar} 是二元、计数、连续、分数或非负的结果变量。

{phang}
{it:tvar} 必须包含代表处理水平的整数值。

{phang}
{it:tmvarlist} 指定在处理模型中预测处理分配的变量。

{synoptset 22 tabbed}{...}
{marker tmodel}{...}
{synopthdr:tmodel}
{synoptline}
{syntab:模型}
{synopt :{opt logit}}逻辑处理模型；默认选项{p_end}
{synopt :{opt probit}}Probit处理模型{p_end}
{synopt :{opth hetprobit(varlist)}}异方差Probit处理模型{p_end}
{synoptline}
{p 4 6 2}
{it:tmodel} 指定处理变量的模型。{p_end}
{p 4 6 2}
对于多值处理，仅提供 {cmd:logit}，并使用多项式逻辑模型。{p_end}

{marker stat}{...}
{synopthdr:stat}
{synoptline}
{syntab:统计}
{synopt :{opt ate}}估计总体平均治疗效果；默认选择{p_end}
{synopt :{opt atet}}估计对接受治疗者的平均治疗效果{p_end}
{synopt :{opt pom:eans}}估计潜在结果均值{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt r:obust}, 
	{opt cl:uster} {it:clustvar},
	{opt boot:strap}, 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt aeq:uations}}显示辅助方程结果{p_end}
{synopt :{it:{help teffects ipw##display_options:display_options}}}控制
包含帮助短描述-显示选项

{syntab:最大化}
{synopt :{it:{help teffects ipw##maximize_options:maximize_options}}}控制
最大化过程；很少使用{p_end}

{syntab:高级}
{synopt :{opt pstol:erance(#)}}设置重叠假设的容差{p_end}
{synopt :{opth os:ample(newvar)}}{it:newvar}确定违反重叠假设的观察值{p_end}
{synopt :{opt con:trol(# | label)}}指定被控水平 {it:tvar}{p_end}
{synopt :{opt tle:vel(# | label)}}指定治疗水平 {it:tvar} 的水平{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{p 4 6 2}
{it:tmvarlist} 可以包含因子变量；请参阅 {help fvvarlists}。{p_end}
{p 4 6 2}
{opt bootstrap}, {opt by}, {opt jackknife}, 和 {opt statsby} 是允许使用的；请参阅 {help prefix_zh}。{p_end}
{p 4 6 2}加权不允许与 {help bootstrap_zh} 前缀一起使用。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}s, {opt iweight}s, 和 {opt pweight}s 是允许的；请参阅 {help weight_zh}。{p_end}
{p 4 6 2}
{opt coeflegend} 不显示在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp teffects_postestimation TE:teffects postestimation}，了解估计后可用的特性。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 处理效应 > 连续结果 >}
             {bf:反事实加权 (IPW)}

{phang}
{bf:统计 > 处理效应 > 二元结果 >}
             {bf:反事实加权 (IPW)}

{phang}
{bf:统计 > 处理效应 > 计数结果 >}
             {bf:反事实加权 (IPW)}

{phang}
{bf:统计 > 处理效应 > 分数结果 >}
             {bf:反事实加权 (IPW)}

{phang}
{bf:统计 > 处理效应 > 非负结果 >}
             {bf:反事实加权 (IPW)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:teffects} {cmd:ipw} 通过反事实加权 (IPW) 从观察数据估计平均治疗效果、对接受治疗者的平均治疗效果和潜在结果均值。IPW 估计量使用估计的概率权重来纠正缺失潜在结果的数据。{cmd:teffects} {cmd:ipw} 接受连续、二元、计数、分数或非负的结果，并允许多值处理。

{pstd}
有关从观察数据估计处理效果的更多信息，请参见 {bf:{mansection TE teeffectsintro:[TE] teeffects intro}} 或 {bf:{mansection TE teffectsintroadvanced:[TE] teeffects intro advanced}}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TE teffectsipwQuickstart:快速入门}

        {mansection TE teffectsipwRemarksandexamples:备注和示例}

        {mansection TE teffectsipwMethodsandformulas:方法和公式}

{pstd}
上述章节不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}；请参见 {helpb estimation options:[R] 估计选项}。

{dlgtab:统计}

{phang}
{it:stat} 是三种统计中的一种： {cmd:ate}, {cmd:atet}, 或 {cmd:pomeans}。默认选择为 {cmd:ate}。

{pmore}
{cmd:ate} 指定估计平均治疗效果。

{pmore}
{cmd:atet} 指定估计对接受治疗者的平均治疗效果。

{pmore}
{cmd:pomeans} 指定估计每个处理水平的潜在结果均值。

{dlgtab:标准误/稳健性}

INCLUDE help vce_rcbj

{dlgtab:报告}

{phang}
{opt level(#)}；请参见 {helpb estimation options:[R] 估计选项}。

{phang}
{cmd:aequations} 指定显示结果的结果模型或处理模型参数。默认情况下，这些辅助参数的结果不会显示。

INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt  iter:ate(#)},
[{cmd:no}]{opt log}，
和
{opt from(init_specs)}；请参见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
{it:init_specs} 是其中之一

{pmore2}
{it:matname} [{cmd:,} {cmd:skip} {cmd:copy}]

{pmore2}
{it:#} [{cmd:,} {it:#} ...]{cmd:,} {cmd:copy}

{dlgtab:高级}

{phang}
{opt pstolerance(#)} 指定用于检查重叠假设的容差。默认值为 {cmd:pstolerance(1e-5)}。如果观察值的估计倾向得分小于 {cmd:pstolerance()} 指定的值，{cmd:teffects} 将退出并产生错误。

{marker osample}{...}
{phang}
{opth osample(newvar)} 指定创建指示变量 {it:newvar} 以识别违反重叠假设的观察值。

{phang}
{opt control(# | label)} 指定 {it:tvar} 的控制水平。默认值为第一个处理水平。可以指定数字级别 {it:#}（非负整数）或与数字级别相关联的标签。{cmd:control()} 不能与统计量 {cmd:pomeans} 一起指定。{cmd:control()} 和 {cmd:tlevel()} 不能指定相同的处理水平。

{phang}
{opt tlevel(# | label)} 指定对于统计量 {cmd:atet} 的治疗水平 {it:tvar}。默认值为第二个处理水平。可以指定数字级别 {it:#}（非负整数）或与数字级别相关联的标签。{cmd:tlevel()} 只能与统计量 {cmd:atet} 一起指定。{cmd:tlevel()} 和 {cmd:control()} 不能指定相同的处理水平。

{phang}
{cmd:coeflegend} 是与 {cmd:teffects} {cmd:ipw} 一起使用的选项，但不在对话框中显示：

{phang}
{cmd:coeflegend}; {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse cattaneo2}

{pstd}
使用 Probit 模型估计吸烟对出生体重的平均治疗效果，以预测治疗状态{p_end}
{phang2}{cmd:. teffects ipw (bweight) (mbsmoke mmarried c.mage##c.mage}
            {cmd:fbaby medu, probit)}

{pstd}估计对接受治疗者的平均治疗效果{p_end}
{phang2}{cmd:. teffects ipw (bweight) (mbsmoke mmarried c.mage##c.mage}
            {cmd:fbaby medu, probit), atet}

{pstd}以百分比估计平均治疗效果{p_end}
{phang2}{cmd:. teffects ipw (bweight) (mbsmoke mmarried c.mage##c.mage}
            {cmd:fbaby medu, probit), coeflegend}


{marker video}{...}
{title:视频示例}

{phang2}{browse "http://www.youtube.com/watch?v=fmnkEmlJPOU&feature=c4-overview&list=UUVk4G4nEtBS4tLOyHqustDA":处理效应：反事实加权}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:teffects} {cmd:ipw} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt :{cmd:e(N)}}观察值数量{p_end}
{synopt :{cmd:e(n}{it:j}{cmd:)}}治疗水平 {it:j} 的观察值数量{p_end}
{synopt :{cmd:e(N_clust)}}聚类数量{p_end}
{synopt :{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt :{cmd:e(k_levels)}}治疗变量中的水平数量{p_end}
{synopt :{cmd:e(treated)}}定义为接受治疗的处理变量水平{p_end}
{synopt :{cmd:e(control)}}定义为控制的处理变量水平{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 表示收敛，{cmd:0} 表示未收敛{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:teffects}{p_end}
{synopt :{cmd:e(cmdline)}}以输入的形式键入的命令{p_end}
{synopt :{cmd:e(depvar)}}结果变量的名称{p_end}
{synopt :{cmd:e(tvar)}}处理变量的名称{p_end}
{synopt :{cmd:e(subcmd)}}{cmd:ipw}{p_end}
{synopt :{cmd:e(tmodel)}}{cmd:logit}, {cmd:probit}, 或 {cmd:hetprobit}{p_end}
{synopt :{cmd:e(stat)}}估计的统计量， {cmd:ate}, {cmd:atet}, 或 {cmd:pomeans}{p_end}
{synopt :{cmd:e(wtype)}}权重类型{p_end}
{synopt :{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt :{cmd:e(tlevels)}}处理变量的水平{p_end}
{synopt :{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt :{cmd:e(vcetype)}}用于标识标准误的标题{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实施 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实施 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
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
{center:翻译自Stata官方帮助文档 <teffects_ipw.sthlp>}