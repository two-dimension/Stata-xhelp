{smcl}
{* *! version 1.0.17  12dec2018}{...}
{viewerdialog teffects "dialog teffects"}{...}
{vieweralsosee "[TE] teffects ra" "mansection TE teffectsra"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teffects postestimation" "help teffects postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eregress" "help eregress_zh"}{...}
{vieweralsosee "[TE] teffects" "help teffects_zh"}{...}
{viewerjumpto "Syntax" "teffects ra##syntax"}{...}
{viewerjumpto "Menu" "teffects ra##menu"}{...}
{viewerjumpto "Description" "teffects ra##description"}{...}
{viewerjumpto "Links to PDF documentation" "teffects_ra_zh##linkspdf"}{...}
{viewerjumpto "Options" "teffects ra##options"}{...}
{viewerjumpto "Examples" "teffects ra##examples"}{...}
{viewerjumpto "Video example" "teffects ra##video"}{...}
{viewerjumpto "Stored results" "teffects ra##results"}
{help teffects_ra:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[TE] teffects ra} {hline 2}}回归调整{p_end}
{p2col:}({mansection TE teffectsra:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:teffects} {cmd:ra}
   {cmd:(}{it:{help varname_zh:ovar}} {it:{help varlist_zh:omvarlist}}
      [{cmd:,} {it:{help teffects ra##omodel:omodel}}
      {opt nocons:tant}]{cmd:)}
   {cmd:(}{it:{help varname_zh:tvar}}{cmd:)}
     {ifin}
     [{it:{help teffects ra##weight:weight}}]
   [{cmd:,}
      {it:{help teffects ra##stat:stat}}
      {it:{help teffects ra##options:options}}]

{phang}
{it:ovar} 是一个二元、计数、连续、分数或非负结果变量。

{phang}
{it:omvarlist} 指定结果模型中的协变量。

{phang}
{it:tvar} 必须包含表示处理水平的整数值。

{synoptset 22 tabbed}{...}
{marker omodel}{...}
{synopthdr:omodel}
{synoptline}
{syntab:模型}
{synopt :{opt linear}}线性结果模型; 默认值{p_end}
{synopt :{opt logit}}逻辑回归结果模型{p_end}
{synopt :{opt probit}}概率单位结果模型{p_end}
{synopt :{opth hetprobit(varlist)}}异方差概率单位结果模型{p_end}
{synopt :{opt poisson}}指数结果模型{p_end}
{synopt :{opt flogit}}分数逻辑结果模型{p_end}
{synopt :{opt fprobit}}分数概率单位结果模型{p_end}
{synopt :{opth fhetprobit(varlist)}}分数异方差概率单位结果模型{p_end}
{synoptline}
{p 4 6 2}
{it:omodel} 指定结果变量的模型。

{marker stat}{...}
{synopthdr:stat}
{synoptline}
{syntab:统计}
{synopt :{opt ate}}估计总体平均处理效应; 默认值{p_end}
{synopt :{opt atet}}估计对已处理的平均处理效应{p_end}
{synopt :{opt pom:eans}}估计潜在结果均值{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt r:obust}, 
	{opt cl:uster} {it:clustvar},
	{opt boot:strap}, 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平; 默认值是
{cmd:level(95)}{p_end}
{synopt :{opt aeq:uations}}显示辅助方程的结果{p_end}
{synopt :{it:{help teffects ra##display_options:display_options}}}控制
包含帮助短描述-显示选项

{syntab:最大化}
{synopt :{it:{help teffects ra##maximize_options:maximize_options}}}控制
最大化过程; 很少使用{p_end}

{syntab:高级}
{synopt :{opt con:trol(# | label)}}指定{it:tvar}中的控制水平{p_end}
{synopt :{opt tle:vel(# | label)}}指定{it:tvar}中的处理水平{p_end}

包含帮助短描述-系数图例
{synoptline}

{p 4 6 2}
{it:omvarlist} 可以包含因子变量; 参见 {help fvvarlists}.{p_end}
{p 4 6 2}
{opt bootstrap}, {opt by}, {opt jackknife}, 和 {opt statsby} 是允许的;
参见 {help prefix_zh}.{p_end}
{p 4 6 2} 权重与 {help bootstrap_zh} 前缀不允许使用.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}s, {opt iweight}s, 和 {opt pweight}s 是允许的; 参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
参见 {manhelp teffects_postestimation TE:teffects 后处理} 获取估算后的功能信息.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 处理效应 > 连续结果 >}
             {bf:回归调整}

{phang}
{bf:统计 > 处理效应 > 二元结果 >}
             {bf:回归调整}

{phang}
{bf:统计 > 处理效应 > 计数结果 >}
             {bf:回归调整}

{phang}
{bf:统计 > 处理效应 > 分数结果 >}
             {bf:回归调整}

{phang}
{bf:统计 > 处理效应 > 非负结果 >}
             {bf:回归调整}


{marker description}{...}
{title:描述}

{pstd}
{cmd:teffects} {cmd:ra} 通过回归调整从观察数据中估算平均处理效应、对已处理的平均处理效应和潜在结果均值。 回归调整估计器使用处理特定预测结果的平均对比来估计处理效应。 {cmd:teffects} {cmd:ra} 接受连续、二元、计数、分数或非负结果，并允许多值处理。

{pstd}
参见 
{mansection TE teffectsintro:{bf:[TE] teffects 介绍}} 或
{mansection TE teffectsintroadvanced:{bf:[TE] teffects 进阶介绍}}
以获取关于从观察数据中估算处理效应的更多信息。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TE teffectsraQuickstart:快速入门}

        {mansection TE teffectsraRemarksandexamples:备注和示例}

        {mansection TE teffectsraMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}；参见
    {helpb estimation options:[R] 估计选项}。

{dlgtab:统计}

{phang}
{it:stat} 是三种统计之一： {cmd:ate}, {cmd:atet}, 或 {cmd:pomeans}。
{cmd:ate} 是默认值。

{pmore}
{cmd:ate} 指定估算平均处理效应。

{pmore}
{cmd:atet} 指定估算对已处理的平均处理效应。

{pmore}
{cmd:pomeans} 指定估算每个处理水平的潜在结果均值。

{dlgtab:标准误/稳健}

包含帮助 vce_rcbj

{dlgtab:报告}

{phang}
{opt level(#)}；参见
    {helpb estimation options:[R] 估计选项}。

{phang}
{opt aequations} 指定显示结果模型或处理模型参数。 默认情况下，这些辅助参数的结果不显示。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt iter:ate(#)},
[{cmd:no}]{opt log},
和
{opt from(init_specs)}; 参见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
{it:init_specs} 是以下之一

{pmore2}
{it:matname} [{cmd:,} {cmd:skip} {cmd:copy}]

{pmore2}
{it:#} [{cmd:,} {it:#} ...]{cmd:,} {cmd:copy}

{dlgtab:高级}

{phang}
{opt control(# | label)} 指定{it:tvar}中的控制水平。 默认值是第一个处理水平。您可以指定数值级别 {it:#} （一个非负整数）或与数值级别相关的标签。 {opt control()} 不能与统计 {opt pomeans} 一起指定。 {opt control()} 和 {opt tlevel()} 不能指定相同的处理水平。

{phang}
{opt tlevel(# | label)} 指定{opt atet} 统计的处理水平。 默认值是第二个处理水平。您可以指定数值级别 {it:#} （一个非负整数）或与数值级别相关的标签。 {opt tlevel()} 只能与统计 {opt atet} 一起指定。 {opt tlevel()} 和 {opt control()} 不能指定相同的处理水平。

{pstd}
以下选项适用于 {cmd:teffects} {cmd:ra} 但未显示在对话框中：

{phang}
{cmd:coeflegend}; 参见
    {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse cattaneo2}

{pstd}
估算吸烟的平均处理效应，控制妊娠第一季度检查状态、婚姻状态、母亲年龄和初生状态{p_end}
{phang2}{cmd:. teffects ra (bweight prenatal1 mmarried mage fbaby) (mbsmoke)}

{pstd}
重新拟合上述模型，但获得对已处理的平均处理效应，而不是平均处理效应{p_end}
{phang2}{cmd:. teffects ra (bweight prenatal1 mmarried mage fbaby) (mbsmoke),}
         {cmd:atet}

{pstd}
重新拟合上述模型，但为处理组和对照组显示潜在结果均值和估算的回归系数{p_end}
{phang2}{cmd:. teffects ra (bweight prenatal1 mmarried mage fbaby) (mbsmoke),}
          {cmd:pomeans aequations}


{marker video}{...}
{title:视频示例}

{phang2}{browse "http://www.youtube.com/watch?v=TYFbOjWZ7lE":处理效应：回归调整}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:teffects} {cmd:ra} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt :{cmd:e(N)}}观察数{p_end}
{synopt :{cmd:e(n}{it:j}{cmd:)}}处理水平 {it:j} 的观察数{p_end}
{synopt :{cmd:e(N_clust)}}聚类数{p_end}
{synopt :{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数{p_end}
{synopt :{cmd:e(k_levels)}} 处理变量中的水平数{p_end}
{synopt :{cmd:e(treated)}} 被定义为处理的处理变量水平{p_end}
{synopt :{cmd:e(control)}} 被定义为控制的处理变量水平{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 如果收敛，则为真{cmd:0} 否则{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:teffects}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(depvar)}}结果变量的名称{p_end}
{synopt :{cmd:e(tvar)}}处理变量的名称{p_end}
{synopt :{cmd:e(subcmd)}}{cmd:ra}{p_end}
{synopt :{cmd:e(omodel)}}{cmd:linear}, {cmd:logit}, {cmd:probit},
{cmd:hetprobit}, {cmd:poisson}, {cmd:flogit}, {cmd:fprobit}, 或
{cmd:fhetprobit}{p_end}
{synopt :{cmd:e(stat)}}估算的统计量，{cmd:ate}, {cmd:atet}, 或 {cmd:pomeans}{p_end}
{synopt :{cmd:e(wtype)}}权重类型{p_end}
{synopt :{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt :{cmd:e(tlevels)}}处理变量的水平{p_end}
{synopt :{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt :{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsnotok)}} 被 {cmd:margins} 禁止的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为
{cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为
{cmd:asobserved}{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(V)}}估算量的方差-协方差矩阵{p_end}

{p2col 5 20 24 2:函数}{p_end}
{synopt :{cmd:e(sample)}}标记估算样本{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <teffects_ra.sthlp>}