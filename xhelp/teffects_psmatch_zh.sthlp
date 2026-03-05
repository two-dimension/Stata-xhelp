{smcl}
{* *! version 1.0.20  11oct2018}{...}
{viewerdialog teffects "dialog teffects"}{...}
{vieweralsosee "[TE] teffects psmatch" "mansection TE teffectspsmatch"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teffects postestimation" "help teffects postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teffects" "help teffects_zh"}{...}
{vieweralsosee "[TE] teffects nnmatch" "help teffects nnmatch"}{...}
{viewerjumpto "Syntax" "teffects psmatch##syntax"}{...}
{viewerjumpto "Menu" "teffects psmatch##menu"}{...}
{viewerjumpto "Description" "teffects psmatch##description"}{...}
{viewerjumpto "Links to PDF documentation" "teffects_psmatch_zh##linkspdf"}{...}
{viewerjumpto "Options" "teffects psmatch##options"}{...}
{viewerjumpto "Examples" "teffects psmatch##examples"}{...}
{viewerjumpto "Video example" "teffects psmatch##video"}{...}
{viewerjumpto "Stored results" "teffects psmatch##results"}{...}
{viewerjumpto "References" "teffects psmatch##references"}
{help teffects_psmatch:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[TE] teffects psmatch} {hline 2}}倾向评分配对{p_end}
{p2col:}({mansection TE teffectspsmatch:查看完整PDF手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:teffects} {cmd:psmatch}
    {cmd:(}{it:{help varname_zh:ovar}}{cmd:)}
    {cmd:(}{it:{help varname_zh:tvar}} {it:{help varlist_zh:tmvarlist}}
          [{cmd:,} {it:{help teffects psmatch##tmodel:tmodel}}]{cmd:)}  
    {ifin}
    [{it:{help teffects psmatch##weight:weight}}]
    [{cmd:,}
         {it:{help teffects psmatch##stat:stat}}
         {it:{help teffects psmatch##options_table:options}}]

{phang}
{it:ovar} 是感兴趣的二元、计数、连续、分数或非负结果。

{phang}
{it:tvar} 必须包含表示处理水平的整数值。

{phang}
{it:tmvarlist} 指定在处理模型中预测处理分配的变量。允许只有两个处理水平。

{synoptset 22 tabbed}{...}
{marker tmodel}{...}
{synopthdr:tmodel}
{synoptline}
{syntab:模型}
{synopt :{opt logit}}逻辑处理模型；默认{p_end}
{synopt :{opt probit}}概率处理模型{p_end}
{synopt :{opth hetprobit(varlist)}}异方差概率处理模型{p_end}
{synoptline}
{p 4 6 2}
{it:tmodel} 指定处理变量的模型.{p_end}

{marker stat}{...}
{synopthdr:stat}
{synoptline}
{syntab:统计}
{synopt :{opt ate}}估计总体的平均处理效应；默认{p_end}
{synopt :{opt atet}}估计对处理对象的平均处理效应{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nn:eighbor(#)}}指定每个观察的匹配数量；默认是 {cmd:nneighbor(1)}{p_end}

{syntab:标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可能是{p_end}
{p2col 5 31 33 2:}{cmd:vce(}{cmdab:r:obust} [{cmd:,} {opt nn(#)}]{cmd:)}; 使用
      稳健的 Abadie-Imbens 标准误与 {it:#} 次匹配{p_end}
{p2col 5 31 33 2:}{cmd:vce(iid)}; 使用独立同分布的
      Abadie-Imbens 标准误{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认是 {cmd:level(95)}{p_end}
{synopt :{it:{help teffects psmatch##display_options:display_options}}}控制
包括 help shortdes-displayoptall

{syntab:高级}
{synopt :{opt cal:iper(#)}}指定两个观察为潜在邻居的最大距离{p_end}
{synopt :{opt pstol:erance(#)}}设定重叠假设的容忍度{p_end}
{synopt :{opth os:ample(newvar)}}{it:newvar} 标识违反重叠假设的观察{p_end}
{synopt :{opt con:trol(# | label)}}指定作为控制的 {it:tvar} 的水平{p_end}
{synopt :{opt tle:vel(# | label)}}指定作为处理的 {it:tvar} 的水平{p_end}
{synopt :{opt gen:erate(stub)}}生成包含最近邻观察号码的变量{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}

{p 4 6 2}
{it:tmvarlist} 可以包含因子变量；见 {help fvvarlists}.{p_end}
{p 4 6 2}
{opt by} 和 {opt statsby} 被允许；见 {help prefix_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight} 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
请参见 {manhelp teffects_postestimation TE:teffects postestimation} 以获取估计后可用的功能.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 处理效应 > 连续结果 >}
        {bf:倾向评分配对}

{phang}
{bf:统计 > 处理效应 > 二元结果 >}
        {bf:倾向评分配对}

{phang}
{bf:统计 > 处理效应 > 计数结果 >}
        {bf:倾向评分配对}

{phang}
{bf:统计 > 处理效应 > 分数结果 >}
        {bf:倾向评分配对}

{phang}
{bf:统计 > 处理效应 > 非负结果 >}
        {bf:倾向评分配对}


{marker description}{...}
{title:描述}

{pstd}
{cmd:teffects} {cmd:psmatch} 从观察数据中通过倾向评分配对估计平均处理效应和对处理对象的平均处理效应。倾向评分配对估计器通过使用接收其他处理水平的相似对象的结果的平均值来推断每个对象缺失的潜在结果。对象间的相似性基于估计的处理概率，称为倾向评分。处理效应通过对每个对象观察到的结果与潜在结果之间的差异取平均值来计算。{cmd:teffects psmatch} 接受连续的、二元的、计数的、分数的或非负的结果。

{pstd}
请参见 
{mansection TE teffectsintro:{bf:[TE] teffects intro}} 或
{mansection TE teffectsintroadvanced:{bf:[TE] teffects intro advanced}}
以获取有关从观察数据中估计处理效应的更多信息。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TE teffectspsmatchQuickstart:快速入门}

        {mansection TE teffectspsmatchRemarksandexamples:备注和示例}

        {mansection TE teffectspsmatchMethodsandformulas:方法和公式}

{pstd}
以上各部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt nneighbor(#)} 指定每个观察的匹配数量。默认是 {cmd:nneighbor(1)}。每个个体至少与来自其他处理水平的指定数量的个体匹配。 {cmd:nneighbor()} 必须指定一个大于或等于1的整数，但不能大于最小组中的观察数量。

{dlgtab:统计}

{phang}
{it:stat} 是两种统计之一： {cmd:ate} 或 {cmd:atet}。
{cmd:ate} 是默认值。

{pmore}
{cmd:ate} 指定估计平均处理效应。

{pmore}
{cmd:atet} 指定估计对处理对象的平均处理效应。

{dlgtab:标准误/稳健}

{phang}
{opt vce(vcetype)} 指定报告的标准误。默认情况下，{cmd:teffects psmatch} 在估计稳健标准误时使用两个匹配。

{pmore}
{cmd:vce(robust} [{cmd:,} {opt nn(#)}]{cmd:)}
指定报告稳健标准误并可选地使用请求的匹配数量。

{pmore}
{cmd:vce(iid)} 指定报告独立同分布数据的标准误。

{pmore}
标准导数标准误估计器不能用于 {cmd:teffects} {cmd:psmatch}，因为这些匹配估计器不可微。实施的方法由
Abadie 和 Imbens 衍生 ({help teffects nnmatch##AI2006:2006},
{help teffects nnmatch##AI2011:2011},
{help teffects nnmatch##AI2012:2012}); 参见
{mansection TE teffectsnnmatchMethodsandformulas:{it:方法和公式}}。

{pmore}
如 {help teffects nnmatch##AI2008:Abadie and Imbens (2008)} 中讨论，
自助估计器不提供可靠的标准误，无法实现 {cmd:teffects} {cmd:psmatch} 的估计器。

{dlgtab:报告}

{phang}
{opt level(#)}; 见
    {helpb estimation options:[R] 估计选项}。

INCLUDE help displayopts_list

{dlgtab:高级}

{phang}
{opt caliper(#)} 指定两个观察为潜在匹配的最大距离。默认情况下，所有观察都是潜在匹配，无论它们的相似性如何。

{pmore}
在 {cmd:teffects} {cmd:psmatch} 中，距离由估计的倾向评分来测量。如果一个观察没有匹配，{cmd:teffects}
{cmd:psmatch} 将返回错误。

{phang}
{opt pstolerance(#)} 指定用于检查重叠假设的容忍度。默认值为 {cmd:pstolerance(1e-5)}。 如果一个观察的估计倾向评分小于 {cmd:pstolerance()} 指定的值，{cmd:teffects} 将返回错误。

{marker osample}{...}
{phang}
{opth osample(newvar)} 指定创建指示变量 {it:newvar} 以识别违反重叠假设的观察。进行两个检查以验证该假设。第一个确保倾向评分大于 {opt pstolerance(#)} 并小于 1-{opt pstolerance(#)}。第二个确保每个观察在指定距离 {opt caliper(#)} 内在相对处理组中至少具有 {opt nneighbor(#)} 个匹配。

{pmore}
选项 {cmd:vce(robust, nn(}{it:#}{cmd:))} 也要求在给定的距离 {opt caliper(#)} 内在同一处理组中至少有 {it:#} 个匹配。

{pmore}
使用 {cmd:vce(iid)} 的对处理对象的平均处理效应选项 {cmd:atet} 仅要求对处理组有 {opt nneighbor(#)} 个控制组匹配。

{phang}
{opt control(# | label)} 指定作为控制的 {it:tvar} 的水平。默认是第一个处理水平。您可以指定数字水平 {it:#}（非负整数）或与数字水平相关的标签。{cmd:control()} 和 {cmd:tlevel()} 不能指定相同的处理水平。

{phang}
{opt tlevel(# | label)} 指定 {cmd:atet} 统计的处理水平 {it:tvar}。默认是第二个处理水平。您可以指定数字水平 {it:#}（非负整数）或与数字水平相关的标签。{cmd:tlevel()} 仅可与统计 {cmd:atet} 一起指定。{cmd:tlevel()} 和 {cmd:control()} 不能指定相同的处理水平。

{phang}
{opt generate(stub)} 指定将最近邻的观察号码存储在新的变量 {it:stub}{cmd:1}, {it:stub}{cmd:2}, .... 如果您希望根据匹配结果执行估计后操作，则该选项是必需的。由于发生平局，生成的变量数量可能多于 {opt nneighbor(#)}。这些变量可能尚不存在。

{pstd}
以下选项与 {cmd:teffects} {cmd:psmatch} 可用，但未显示在对话框中：

{phang}
{cmd:coeflegend}; 见
    {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse cattaneo2}

{pstd}
估计 {cmd:mbsmoke} 对 {cmd:bweight} 的平均处理效应，使用逻辑模型（默认）来预测每个对象的倾向评分{p_end}
{phang2}{cmd:. teffects psmatch (bweight) (mbsmoke mmarried c.mage##c.mage}
           {cmd:fbaby medu)}

{pstd}
重新拟合先前的模型，但仅当倾向评分的绝对差异小于 0.1 时，才将一对观察视为匹配{p_end}
{phang2}{cmd:. teffects psmatch (bweight) (mbsmoke mmarried c.mage##c.mage}
    {cmd:fbaby medu), caliper(0.1)}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=hnyh1cUFiOE":治疗效应在 Stata 中：倾向评分匹配}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:teffects} {cmd:psmatch} 将以下内容存储在 {cmd:e()}：

{synoptset 24 tabbed}{...}
{p2col 5 24 28 2:标量}{p_end}
{synopt :{cmd:e(N)}}观察数量{p_end}
{synopt :{cmd:e(n}{it:j}{cmd:)}}处理水平 {it:j} 的观察数量{p_end}
{synopt :{cmd:e(k_levels)}}处理变量的水平数量{p_end}
{synopt :{cmd:e(caliper)}}匹配之间的最大距离{p_end}
{synopt :{cmd:e(treated)}}定义为处理的处理变量水平{p_end}
{synopt :{cmd:e(control)}}定义为控制的处理变量水平{p_end}
{synopt :{cmd:e(k_nneighbor)}}请求的匹配数量{p_end}
{synopt :{cmd:e(k_nnmin)}}最少匹配数量{p_end}
{synopt :{cmd:e(k_nnmax)}}最大匹配数量{p_end}
{synopt :{cmd:e(k_robust)}}稳健 VCE 的匹配{p_end}

{p2col 5 24 28 2:宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:teffects}{p_end}
{synopt :{cmd:e(cmdline)}}以输入的命令{p_end}
{synopt :{cmd:e(depvar)}}结果变量的名称{p_end}
{synopt :{cmd:e(tvar)}}处理变量的名称{p_end}
{synopt :{cmd:e(subcmd)}}{cmd:psmatch}{p_end}
{synopt :{cmd:e(tmodel)}}{cmd:logit}, {cmd:probit} 或 {cmd:hetprobit}{p_end}
{synopt :{cmd:e(stat)}}估计的统计量，{cmd:ate} 或 {cmd:atet}{p_end}
{synopt :{cmd:e(wtype)}}权重类型{p_end}
{synopt :{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(tlevels)}}处理变量的水平{p_end}
{synopt :{cmd:e(psvarlist)}}倾向评分模型中的变量{p_end}
{synopt :{cmd:e(hvarlist)}}方差的变量，仅在 {cmd:hetprobit} 时{p_end}
{synopt :{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt :{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt :{cmd:e(datasignature)}}校验和{p_end}
{synopt :{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 24 28 2:矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(V)}}估计值的方差协方差矩阵{p_end}
{synopt :{cmd:e(bps)}}倾向评分模型的系数向量{p_end}
{synopt :{cmd:e(Vps)}}倾向评分模型的估计值的方差协方差矩阵{p_end}
{p2col 5 24 28 2:函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker AI2006}{...}
{phang}
Abadie, A., 和 G. W. Imbens。 2006。 用于平均处理效应的匹配估计器的大样本属性。
{it:Econometrica} 74: 235-267。

{marker AI2008}{...}
{phang}
--------。 2008。 关于匹配估计器自助法失败。
{it:Econometrica} 76: 1537-1557。

{marker AI2011}{...}
{phang}
------。 2011。 用于平均处理效应的偏差校正匹配估计器。 {it:Journal of Business and Economic Statistics} 29: 1-11。

{marker AI2012}{...}
{phang}
------。2012。 在估计的倾向评分上进行匹配。哈佛大学和国家经济研究局。
{browse "http://www.hks.harvard.edu/fs/aabadie/pscore.pdf"}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <teffects_psmatch.sthlp>}