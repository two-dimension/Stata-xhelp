{smcl}
{* *! version 1.0.17  05oct2018}{...}
{viewerdialog teffects "dialog teffects"}{...}
{vieweralsosee "[TE] teffects nnmatch" "mansection TE teffectsnnmatch"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teffects postestimation" "help teffects postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teffects" "help teffects_zh"}{...}
{vieweralsosee "[TE] teffects psmatch" "help teffects psmatch"}{...}
{viewerjumpto "Syntax" "teffects nnmatch##syntax"}{...}
{viewerjumpto "Menu" "teffects nnmatch##menu"}{...}
{viewerjumpto "Description" "teffects nnmatch##description"}{...}
{viewerjumpto "Links to PDF documentation" "teffects_nnmatch_zh##linkspdf"}{...}
{viewerjumpto "Options" "teffects nnmatch##options"}{...}
{viewerjumpto "Examples" "teffects nnmatch##examples"}{...}
{viewerjumpto "Video example" "teffects nnmatch##video"}{...}
{viewerjumpto "Stored results" "teffects nnmatch##results"}{...}
{viewerjumpto "References" "teffects nnmatch##references"}
{help teffects_nnmatch:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[TE] teffects nnmatch} {hline 2}}最近邻匹配{p_end}
{p2col:}({mansection TE teffectsnnmatch:查看完整 PDF 手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:teffects} {cmd:nnmatch}
   {cmd:(}{it:{help varname_zh:ovar}} {it:{help varlist_zh:omvarlist}}{cmd:)}
   {cmd:(}{it:{help varname_zh:tvar}}{cmd:)}
      {ifin}
      [{it:{help teffects nnmatch##weight:weight}}]
   [{cmd:,}
	 {it:{help teffects nnmatch##stat:stat}}
         {it:{help teffects nnmatch##options_table:options}}]

{phang}
{it:ovar} 是一个二元、计数、连续、分数或非负结果变量。

{phang}
{it:omvarlist} 指定结果模型中的协变量。

{phang}
{it:tvar} 必须包含表示处理水平的整数值。仅允许有两个处理水平。

{synoptset 22 tabbed}{...}
{marker stat}{...}
{synopthdr:stat}
{synoptline}
{syntab:Stat}
{synopt :{opt ate}}估计总体的平均处理效应；默认值{p_end}
{synopt :{opt atet}}估计接受处理者的平均处理效应{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nn:eighbor(#)}}指定每个观察值的匹配数量；默认值为 {cmd:nneighbor(1)}{p_end}
{synopt :{opth bias:adj(varlist)}}使用指定变量修正大样本偏差{p_end}
{synopt :{opth e:match(varlist)}}在指定变量上进行精确匹配{p_end}

{syntab:标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype}可以是{p_end}
{p2col 5 31 33 2:}{cmd:vce(}{cmdab:r:obust} [{cmd:,} {opt nn(#)}]{cmd:)}；使用
      具有{it:#}个匹配的稳健 Abadie-Imbens 标准误{p_end}
{p2col 5 31 33 2:}{cmd:vce(iid)}；使用默认的 Abadie-Imbens 标准误{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt dmv:ariables}}显示匹配变量的名称{p_end}
{synopt :{it:{help teffects nnmatch##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:高级}
{synopt :{opt cal:iper(#)}}指定两个观察值为潜在邻居的最大距离{p_end}
{synopt :{opt dtol:erance(#)}}设置被视为相等的个体之间的最大距离{p_end}
{synopt :{opth os:ample(newvar)}}{it:newvar}标识违反重叠假设的观察值{p_end}
{synopt :{opt con:trol(# | label)}}指定 {it:tvar} 的控制水平{p_end}
{synopt :{opt tle:vel(# | label)}}指定 {it:tvar} 的处理水平{p_end}
{synopt :{opt gen:erate(stub)}}生成包含最近邻观察编号的变量{p_end}
{synopt :{opth m:etric(teffects nnmatch##metric:metric)}}为协变量选择距离度量{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{synoptset 22 }{...}
{marker metric}{...}
{synopthdr:metric}
{synoptline}
{synopt :{opt maha:lanobis}}逆样本协变量协方差；默认值{p_end}
{synopt :{opt ivar:iance}}逆对角样本协变量协方差{p_end}
{synopt :{opt eucl:idean}}单位矩阵{p_end}
{synopt :{opt mat:rix} {it:matname}}用户提供的尺度矩阵{p_end}
{synoptline}

{p 4 6 2}
{it:omvarlist} 可以包含因子变量；请参见 {help fvvarlists}.{p_end}
{p 4 6 2}
{opt by} 和 {opt statsby} 是允许的；请参见 {help prefix_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight} 是允许的；请参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
请参见 {manhelp teffects_postestimation TE:teffects 后估计} 以获取估计后可用的功能.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 处理效应 > 连续结果 >}
    {bf:最近邻匹配}

{phang}
{bf:统计 > 处理效应 > 二元结果 >}
    {bf:最近邻匹配}

{phang}
{bf:统计 > 处理效应 > 计数结果 >}
    {bf:最近邻匹配}

{phang}
{bf:统计 > 处理效应 > 分数结果 >}
    {bf:最近邻匹配}

{phang}
{bf:统计 > 处理效应 > 非负结果 >}
    {bf:最近邻匹配}


{marker description}{...}
{title:描述}

{pstd}
{cmd:teffects} {cmd:nnmatch} 通过最近邻匹配从观察数据中估计平均处理效应和对接受处理者的平均处理效应。最近邻匹配估计量通过使用获得另一处理水平的类似受试者的结果的平均值来填补每个受试者的缺失潜在结果。受试者之间的相似性基于每个观察值的协变量的加权函数。处理效应是通过计算每个受试者观察到的结果与估计潜在结果之间的差的平均值来计算的。{cmd:teffects nnmatch} 可以接受连续、二元、计数、分数或非负结果。


{pstd}
请参见
{bf:{mansection TE teffectsintro:[TE] teffects 介绍}} 或
{bf:{mansection TE teeffectsintroadvanced:[TE] teffects 介绍高级}}
以获取有关从观察数据中估计处理效应的更多信息。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TE teffectsnnmatchQuickstart:快速开始}

        {mansection TE teffectsnnmatchRemarksandexamples:备注和示例}

        {mansection TE teffectsnnmatchMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt nneighbor(#)} 指定每个观察值的匹配数量。默认值为 {cmd:nneighbor(1)}。每个观察值至少与来自另一处理水平的指定数量的观察值匹配。 {cmd:nneighbor()} 必须指定大于或等于 1 的整数，但不大于最小处理组中的观察数量。

{phang}
{opth biasadj(varlist)} 指定使用指定协变量的线性函数来修正在多个连续协变量上进行匹配时存在的大样本偏差。默认情况下，不进行修正。

{pmore}
Abadie 和 Imbens ({help teffects nnmatch##AI2006:2006},
{help teffects nnmatch##AI2011:2011}) 表明，当在两个或多个连续协变量上进行匹配时，最近邻匹配估计量不一致，并提出了一种一致的偏差修正估计量。修正项使用在 {cmd:biasadj()} 中指定的变量的线性函数；请参见
{mansection TE teffectsnnmatchRemarksandexamplesex3:例子 3}。

{phang}
{opth ematch(varlist)} 指定 {it:varlist} 中的变量进行精确匹配。 {it:varlist} 中的所有变量必须是数值型，并可以指定为因子。如果任何观察值没有请求的精确匹配，{cmd:teffects} {cmd:nnmatch} 将会以错误退出。

{dlgtab:统计}

{phang}
{it:stat} 是两个统计量之一：{cmd:ate} 或 {cmd:atet}。
{cmd:ate} 是默认值。

{pmore}
{cmd:ate} 指定估计平均处理效应。

{pmore}
{cmd:atet} 指定估计对接受处理者的平均处理效应。

{dlgtab:标准误/稳健}

{phang}
{opt vce(vcetype)} 指定报告的标准误。默认情况下，{cmd:teffects} {cmd:nnmatch} 在估计稳健标准误时使用两个匹配。

{pmore}
{cmd:vce(robust} [{cmd:,} {opt nn(#)}]{cmd:)} 指定报告稳健标准误，并可以选择使用请求的匹配数量。

{pmore}
{cmd:vce(iid)} 指定报告独立同分布数据的标准误。

{pmore}
标准导数基础的标准误估计量无法被 {cmd:teffects} {cmd:nnmatch} 使用，因为这些匹配估计量不可微分。实施的方法由 Abadie 和 Imbens ({help teffects nnmatch##AI2006:2006},
{help teffects nnmatch##AI2011:2011},
{help teffects nnmatch##AI2012:2012}) 推导；请参见
{mansection TE teffectsnnmatchMethodsandformulas:{it:方法和公式}}。

{pmore}
正如在 {help teffects nnmatch##AI2008:Abadie 和 Imbens (2008)} 中讨论的那样，bootstrap 估计量未能为 {cmd:teffects} {cmd:nnmatch} 实施的估计器提供可靠的标准误。

{dlgtab:报告}

{phang}
{opt level(#)}; 参考
    {helpb estimation options:[R] 估计选项}。

{phang}
{opt dmvariables} 指定要显示匹配变量。

INCLUDE help displayopts_list

{dlgtab:高级}

{phang}
{opt caliper(#)} 指定两观察值为潜在匹配的最大距离。 默认情况下，所有观察值都是潜在匹配，无论它们的差异有多大。

{pmore}
距离基于 {it:omvarlist} 。 如果某观察值至少没有 {opt nneighbor(#)} 个匹配，{cmd:teffects} {cmd:nnmatch} 将以错误消息退出。 使用选项 {opt osample(newvar)} 来识别所有匹配不足的观察值。

{phang}
{opt dtolerance(#)} 指定用于确定精确匹配的容差。默认值为 {cmd:dtolerance(sqrt(c(epsdouble)))}。

{pmore}
通常使用整数值变量进行精确匹配。
{cmd:dtolerance()} 选项在使用连续变量进行精确匹配时非常有用。

{marker osample}{...}
{phang}
{opth osample(newvar)} 指定创建指示变量 {it:newvar} 来识别违反重叠假设的观察值。该变量将标识所有在 {opt caliper(#)}（对于 {opt metric()} 距离匹配）或 {opt dtolerance(#)}（对于 {opt ematch(varlist)} 精确匹配）内没有至少 {opt nneighbor(#)} 个匹配的观察值。

{pmore}
选项 {cmd:vce(robust, nn(}{it:#}{cmd:))} 也要求在指定的距离内至少在相同处理组中有 {it:#} 个匹配，这个距离由 {opt caliper(#)} 指定或由 {opt dtolerance(#)} 指定。

{pmore}
对接受处理者的平均处理效应，选项 {cmd:atet}，使用 {cmd:vce(iid)} 只需要 {opt nneighbor(#)} 个对照组匹配。

{phang}
{opt control(# | label)} 指定 {it:tvar} 的控制水平。 默认值为第一个处理水平。 可以指定数值水平 {it:#}（非负整数）或与该数值水平相关的标签。 {opt control()} 和 {opt tlevel()} 不能指定相同的处理水平。

{phang}
{opt tlevel(# | label)} 指定统计量 {cmd:atet} 的处理水平 {it:tvar} 。 默认值为第二个处理水平。 可以指定数值水平 {it:#}（非负整数）或与该数值水平相关的标签。 选项 {cmd:tlevel()} 只能与统计量 {cmd:atet} 一起指定。选项 {cmd:tlevel()} 和 {cmd:control()} 不能指定相同的处理水平。

{phang}
{opt generate(stub)} 指定将最近邻的观察编号存储在新变量 {it:stub}{cmd:1}、{it:stub}{cmd:2} 等中。 如果您希望根据匹配结果执行后估计，则此选项是必需的。生成的变量数量可能会因为距离相等而超过 {opt nneighbor(#)} 。这些变量可能不存在。

{phang}
{opth metric:(teffects nnmatch##metric:metric)} 指定用作权重矩阵的距离矩阵，以二次形式将多个距离转换为单个距离度量；请参见
{mansection TE teffectsnnmatchMethodsandformulasNearest-neighbormatchingestimator:{it:最近邻匹配估计量}}
在 {bf:[TE] teffects nnmatch} 的 {it:方法和公式} 中了解详细信息。

{pstd}
以下选项在 {cmd:teffects} {cmd:nnmatch} 中可用，但未在对话框中显示：

{phang}
{opt coeflegend}; 参考
    {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse cattaneo2}

{pstd}
估计 {cmd:mbsmoke} 对 {cmd:bweight} 的平均处理效应{p_end}
{phang2}{cmd:. teffects nnmatch (bweight mage prenatal1 mmarried fbaby)}
   {cmd:(mbsmoke)}

{pstd}
重新拟合上述模型，但要求在二元变量上进行精确匹配{p_end}
{phang2}{cmd:. teffects nnmatch (bweight mage) (mbsmoke),}
   {cmd:ematch(prenatal1 mmarried fbaby) metric(euclidean)}

{pstd}
匹配两个连续变量 {cmd:mage} 和 {cmd:fage}，并使用偏差调整估计器{p_end}
{phang2}{cmd:. teffects nnmatch (bweight mage fage) (mbsmoke),}
   {cmd:ematch(prenatal1 mmarried fbaby) biasadj(mage fage)}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=mEqwQ0FI2Vg":Stata中的处理效应：最近邻匹配}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:teffects} {cmd:nnmatch} 在 {cmd:e()} 中存储以下内容：

{synoptset 24 tabbed}{...}
{p2col 5 24 28 2:标量}{p_end}
{synopt :{cmd:e(N)}}观察数量{p_end}
{synopt :{cmd:e(n}{it:j}{cmd:)}}处理水平 {it:j} 的观察数量{p_end}
{synopt :{cmd:e(k_levels)}}处理变量中的级别数{p_end}
{synopt :{cmd:e(treated)}}定义为处理的处理变量水平{p_end}
{synopt :{cmd:e(control)}}定义为对照的处理变量水平{p_end}
{synopt :{cmd:e(k_nneighbor)}}请求的匹配数量{p_end}
{synopt :{cmd:e(k_nnmin)}}最小匹配数量{p_end}
{synopt :{cmd:e(k_nnmax)}}最大匹配数量{p_end}
{synopt :{cmd:e(k_robust)}}用于稳健 VCE 的匹配{p_end}

{p2col 5 24 28 2:宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:teffects}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(depvar)}}结果变量的名称{p_end}
{synopt :{cmd:e(tvar)}}处理变量的名称{p_end}
{synopt :{cmd:e(emvarlist)}}精确匹配变量{p_end}
{synopt :{cmd:e(bavarlist)}}用于偏差调整的变量{p_end}
{synopt :{cmd:e(mvarlist)}}匹配变量{p_end}
{synopt :{cmd:e(subcmd)}}{cmd:nnmatch}{p_end}
{synopt :{cmd:e(metric)}}{cmd:mahalanobis}、{cmd:ivariance}、{cmd:euclidean} 或 {cmd:matrix} {it:matname}{p_end}
{synopt :{cmd:e(stat)}}估计的统计量，{cmd:ate} 或 {cmd:atet}{p_end}
{synopt :{cmd:e(wtype)}}权重类型{p_end}
{synopt :{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(title)}}估计输出的标题{p_end}
{synopt :{cmd:e(tlevels)}}处理变量的级别{p_end}
{synopt :{cmd:e(vce)}}{it:vcetype} 是在 {cmd:vce()} 中指定的{p_end}
{synopt :{cmd:e(vcetype)}}标签用于标识标准误{p_end}
{synopt :{cmd:e(datasignature)}}校验和{p_end}
{synopt :{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实施 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实施 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsnotok)}}被 {cmd:margins} 阻止的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 24 28 2:矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{p2col 5 24 28 2:函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}


{marker references}{...}
{title:参考文献}

{marker AI2006}{...}
{phang}
Abadie, A., 和 G. W. Imbens.  2006.  平均处理效应匹配估计量的大样本性质。
{it:Econometrica} 74: 235-267.

{marker AI2008}{...}
{phang}
--------. 2008. 关于匹配估计量中 bootstrap 的失效。
{it:Econometrica} 76: 1537-1557.

{marker AI2011}{...}
{phang}
------.  2011.  偏差修正的平均处理效应匹配估计量。  {it:Journal of Business and Economic Statistics} 29: 1-11.

{marker AI2012}{...}
{phang}
------. 2012. 基于估计倾向分数的匹配。哈佛大学和国家经济研究局。
{browse "http://www.hks.harvard.edu/fs/aabadie/pscore.pdf"}.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <teffects_nnmatch.sthlp>}