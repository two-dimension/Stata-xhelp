{smcl}
{* *! version 1.0.16  12dec2018}{...}
{viewerdialog teffects "dialog teffects"}{...}
{vieweralsosee "[TE] teffects aipw" "mansection TE teffectsaipw"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teffects postestimation" "help teffects postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teffects" "help teffects_zh"}{...}
{vieweralsosee "[TE] teffects ipwra" "help teffects ipwra"}{...}
{viewerjumpto "Syntax" "teffects aipw##syntax"}{...}
{viewerjumpto "Menu" "teffects aipw##menu"}{...}
{viewerjumpto "Description" "teffects aipw##description"}{...}
{viewerjumpto "Links to PDF documentation" "teffects_aipw_zh##linkspdf"}{...}
{viewerjumpto "Options" "teffects aipw##options"}{...}
{viewerjumpto "Examples" "teffects aipw##examples"}{...}
{viewerjumpto "Video example" "teffects aipw##video"}{...}
{viewerjumpto "Stored results" "teffects aipw##results"}
{help teffects_aipw:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[TE] teffects aipw} {hline 2}}增强逆概率权重{p_end}
{p2col:}({mansection TE teffectsaipw:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:teffects} {cmd:aipw}
    {cmd:(}{it:{help varname_zh:ovar}} {it:{help varlist_zh:omvarlist}}
      [{cmd:,} {it:{help teffects aipw##omodel:omodel}}
      {opt nocons:tant}]{cmd:)}
    {cmd:(}{it:{help varname_zh:tvar}} {it:{help varlist_zh:tmvarlist}}
      [{cmd:,} {it:{help teffects aipw##tmodel:tmodel}}
      {opt nocons:tant}]{cmd:)}
	{ifin}
        [{it:{help teffects aipw##weight:weight}}]
    [{cmd:,}
	{it:{help teffects aipw##stat:stat}}
	{it:{help teffects aipw##options_table:options}}]

{phang}
{it:ovar} 是一个二进制、计数、连续、分数或非负结果变量。

{phang}
{it:omvarlist} 指定结果模型中的协变量。

{phang}
{it:tvar} 必须包含表示处理水平的整数值。

{phang}
{it:tmvarlist} 指定处理分配模型中的协变量。

{synoptset 22 tabbed}{...}
{marker omodel}{...}
{synopthdr:omodel}
{synoptline}
{syntab:模型}
{synopt :{opt linear}}线性结果模型；默认值{p_end}
{synopt :{opt logit}}逻辑结果模型{p_end}
{synopt :{opt probit}}概率结果模型{p_end}
{synopt :{opth hetprobit(varlist)}}异方差概率结果模型{p_end}
{synopt :{opt poisson}}指数结果模型{p_end}
{synopt :{opt flogit}}分数逻辑结果模型{p_end}
{synopt :{opt fprobit}}分数概率结果模型{p_end}
{synopt :{opth fhetprobit(varlist)}}分数异方差概率结果模型{p_end}
{synoptline}
{p 4 6 2}
{it:omodel} 指定结果变量的模型。{p_end}

{marker tmodel}{...}
{synopthdr:tmodel}
{synoptline}
{syntab:模型}
{synopt :{opt logit}}逻辑处理模型；默认值{p_end}
{synopt :{opt probit}}概率处理模型{p_end}
{synopt :{opth hetprobit(varlist)}}异方差概率处理模型{p_end}
{synoptline}
{p 4 6 2}
{it:tmodel} 指定处理变量的模型。{p_end}
{p 4 6 2}
对于多值处理，只有 {cmd:logit} 可用，使用的是多项逻辑回归模型。{p_end}

{marker stat}{...}
{synopthdr:stat}
{synoptline}
{syntab:统计}
{synopt :{opt ate}}估计总体的平均处理效果；默认值{p_end}
{synopt :{opt pom:eans}}估计潜在结果均值{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nls}}通过非线性最小二乘法估计条件均值{p_end}
{synopt :{opt wnls}}通过加权非线性最小二乘法估计条件均值{p_end}

{syntab:标准误/鲁棒性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt r:obust}, 
	{opt cl:uster} {it:clustvar},
	{opt boot:strap}，或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt aeq:uations}}显示辅助方程结果{p_end}
{synopt :{it:{help teffects aipw##display_options:display_options}}}控制
包含帮助短描述-显示选项

{syntab:最大化}
{synopt :{it:{help teffects aipw##maximize_options:maximize_options}}}控制
最大化过程；很少使用{p_end}

{syntab:高级}
{synopt :{opt pstol:erance(#)}}设置重叠假设的容忍度{p_end}
{synopt :{opth os:ample(newvar)}}{it:newvar} 标识违反重叠假设的观察{p_end}
{synopt :{opt con:trol(# | label)}}指定作为控制的 {it:tvar} 水平{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}

{p 4 6 2}
{it:omvarlist} 和 {it:tmvarlist} 可以包含
因子变量；见 {help fvvarlists}.{p_end}
{p 4 6 2}
{opt bootstrap}，{opt by}，{opt jackknife} 和 {opt statsby} 被允许；
见 {help prefix_zh}.{p_end}
{p 4 6 2} 权重与 {help bootstrap_zh} 前缀不允许。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight} 和 {opt iweight} 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参阅 {manhelp teffects_postestimation TE:teffects postestimation} 以获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 处理效果 > 连续结果>}
    {bf:增强逆概率权重}

{phang}
{bf:统计 > 处理效果 > 二元结果>}
    {bf:增强逆概率权重}

{phang}
{bf:统计 > 处理效果 > 计数结果>}
    {bf:增强逆概率权重}

{phang}
{bf:统计 > 处理效果 > 分数结果>}
    {bf:增强逆概率权重}

{phang}
{bf:统计 > 处理效果 > 非负结果>}
    {bf:增强逆概率权重}


{marker description}{...}
{title:描述}

{pstd}
{cmd:teffects} {cmd:aipw} 通过增强逆概率加权 (AIPW) 从观察数据中估计平均处理效果和潜在结果均值。AIPW 估计量结合了回归调整和逆概率加权方法的各个方面。AIPW 估计量具有双重鲁棒性。{cmd:teffects} {cmd:aipw} 接受连续、二元、计数、分数或非负结果，并允许多值处理。

{pstd}
请参阅
{bf:{mansection TE teffectsintro:[TE] teffects 介绍}} 或
{bf:{mansection TE teffectsintroadvanced:[TE] teffects 介绍高级}}
以获取有关从观察数据中估计处理效果的更多信息。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TE teffectsaipwQuickstart:快速入门}

        {mansection TE teffectsaipwRemarksandexamples:备注和示例}

        {mansection TE teffectsaipwMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 见
    {helpb estimation options:[R] 估计选项}。

{phang}
{cmd:nls} 指定结果模型的参数通过非线性最小二乘法估计，而不是默认的最大似然。

{phang}
{cmd:wnls} 指定结果模型的参数通过加权非线性最小二乘法估计，而不是默认的最大似然。权重使得效果参数的估计器对模型误设更加鲁棒。

{dlgtab:统计}

{phang}
{it:stat} 是两种统计量之一： {cmd:ate} 或 {cmd:pomeans}。
{cmd:ate} 是默认值。

{pmore}
{cmd:ate} 指定估计平均处理效果。

{pmore}
{cmd:pomeans} 指定估计每个处理水平的潜在结果均值。

{dlgtab:标准误/鲁棒性}

INCLUDE help vce_rcbj

{dlgtab:报告}

{phang}
{opt level(#)}; 见
    {helpb estimation options:[R] 估计选项}。

{phang}
{cmd:aequations} 指定显示结果为结果模型或处理模型参数的结果。默认情况下，这些辅助参数的结果不会显示。

INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt iter:ate(#)},
[{cmd:no}]{opt log},
和
{opt from(init_specs)}; 见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
{it:init_specs} 是以下之一：

{pmore2}
{it:matname} [{cmd:,} {cmd:skip} {cmd:copy}]

{pmore2}
{it:#} [{cmd:,} {it:#} ...]{cmd:,} {cmd:copy}

{dlgtab:高级}

{phang}
{opt pstolerance(#)} 指定用于检查重叠假设的容忍度。默认值为 {cmd:pstolerance(1e-5)}。如果观察的估计倾向得分小于 {cmd:pstolerance()} 指定的值，{cmd:teffects} 将出现错误并退出。

{phang}
{opth osample(newvar)} 指定创建指示变量 {it:newvar} 以标识违反重叠假设的观察。

{phang}
{opt control(# | label)} 指定作为控制的 {it:tvar} 水平。默认值是第一个处理水平。您可以指定数字水平 {it:#} （非负整数）或与数字水平相关联的标签。{cmd:control()} 不能与统计量 {cmd:pomeans} 一起指定。

{pstd}
以下选项可与 {cmd:teffects} {cmd:aipw} 一起使用，但不会显示在对话框中：

{phang}
{cmd:coeflegend}; 见
{helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse cattaneo2}

{pstd}
估计 {cmd:mbsmoke} 对 {cmd:bweight} 的平均处理效果，使用概率模型预测处理状态{p_end}
{phang2}{cmd:. teffects aipw (bweight prenatal1 mmarried mage fbaby)}
     {cmd:(mbsmoke mmarried c.mage##c.mage fbaby medu, probit)}

{pstd}
使用 {cmd:pomeans} 和 {cmd:aequations} 获取潜在结果均值的估计，并查看所有与我们估计相关的拟合方程{p_end}
{phang2}{cmd:. teffects aipw (bweight prenatal1 mmarried mage fbaby)}
    {cmd:(mbsmoke mmarried c.mage##c.mage fbaby medu, probit),}
    {cmd:pomeans aequations}

{pstd}
重新拟合上述模型，但使用异方差概率模型对处理变量建模{p_end}
{phang2}{cmd:. teffects aipw (bweight prenatal1 mmarried fbaby)}
    {cmd:(mbsmoke mmarried c.mage##c.mage fbaby medu, hetprobit(c.mage)),}
    {cmd:aequations}

    {hline}
{pstd}
设置{p_end}
{phang2}{cmd:. webuse cattaneo2}

{pstd}
使用 WNLS 拟合上述结果模型{p_end}
{phang2}{cmd:. teffects aipw (bweight prenatal1 mmarried mage fbaby)}
    {cmd:(mbsmoke mmarried c.mage##c.mage fbaby medu, probit), wnls}

    {hline}


{marker video}{...}
{title:视频示例}

{phang2}{browse "http://www.youtube.com/watch?v=HqShQ1RcP5s&feature=c4-overview&list=UUVk4G4nEtBS4tLOyHqustDA":处理效果：增强逆概率权重}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:teffects} {cmd:aipw} 存储以下内容在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt :{cmd:e(N)}}观测数量{p_end}
{synopt :{cmd:e(n}{it:j}{cmd:)}}处理水平 {it:j} 的观测数量{p_end}
{synopt :{cmd:e(N_clust)}}集群数量{p_end}
{synopt :{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt :{cmd:e(k_levels)}}处理变量中的水平数量{p_end}
{synopt :{cmd:e(treated)}}定义为处理的处理变量水平{p_end}
{synopt :{cmd:e(control)}}定义为控制的处理变量水平{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:teffects}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(depvar)}}结果变量的名称{p_end}
{synopt :{cmd:e(tvar)}}处理变量的名称{p_end}
{synopt :{cmd:e(subcmd)}}{cmd:aipw}{p_end}
{synopt :{cmd:e(tmodel)}}{cmd:logit}, {cmd:probit}, 或 {cmd:hetprobit}{p_end}
{synopt :{cmd:e(omodel)}}{cmd:linear}, {cmd:logit}, {cmd:probit},
{cmd:hetprobit}, {cmd:poisson}, {cmd:flogit}, {cmd:fprobit}, 或
{cmd:fhetprobit}{p_end}
{synopt :{cmd:e(stat)}}估计的统计量，{cmd:ate} 或 {cmd:pomeans}{p_end}
{synopt :{cmd:e(wtype)}}权重类型{p_end}
{synopt :{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(clustvar)}}集群变量的名称{p_end}
{synopt :{cmd:e(tlevels)}}处理变量的水平{p_end}
{synopt :{cmd:e(cme)}}{cmd:ml}, {cmd:nls}, 或 {cmd:wnls}{p_end}
{synopt :{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt :{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为
{cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为
{cmd:asobserved}{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{p2col 5 20 24 2:函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <teffects_aipw.sthlp>}