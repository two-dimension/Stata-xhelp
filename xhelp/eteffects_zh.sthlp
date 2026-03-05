{smcl}
{* *! version 1.0.12  12dec2018}{...}
{viewerdialog eteffects "dialog eteffects"}{...}
{vieweralsosee "[TE] eteffects" "mansection TE eteffects"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] eteffects postestimation" "help eteffects postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] etregress" "help etregress_zh"}{...}
{vieweralsosee "[R] gmm" "help gmm_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[TE] teffects" "help teffects_zh"}{...}
{viewerjumpto "Syntax" "eteffects_zh##syntax"}{...}
{viewerjumpto "Menu" "eteffects_zh##menu"}{...}
{viewerjumpto "Description" "eteffects_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "eteffects_zh##linkspdf"}{...}
{viewerjumpto "Options" "eteffects_zh##options"}{...}
{viewerjumpto "Examples" "eteffects_zh##examples"}{...}
{viewerjumpto "Stored results" "eteffects_zh##results"}
{help eteffects:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[TE] eteffects} {hline 2}}内生处理效应估计{p_end}
{p2col:}({mansection TE eteffects:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:eteffects} {cmd:(}{help varlist_zh:{it:ovar}}
{help varlist_zh:{it:omvarlist}}
[{cmd:,} {help eteffects##omodel:{it:omodel}}
        {opt nocons:tant}]{cmd:)}
        {cmd:(}{help varlist_zh:{it:tvar}} {help varlist_zh:{it:tmvarlist}}
        [{cmd:,} {opt nocons:tant}]{cmd:)}
        {ifin} 
        [{help eteffects##weight:{it:weight}}]
        [{cmd:,}
        {help eteffects##stat:{it:stat}}
        {help eteffects##opttable:{it:options}}]

{phang}
{it:ovar} 是结果模型的 {depvar}。

{phang}
{it:omvarlist} 是结果模型中外生 {indepvars} 的列表。

{phang}
{it:tvar} 是二元处理变量。

{phang}
{it:tmvarlist} 是预测处理分配的协变量列表。

{marker omodel}{...}
{synoptset 20 tabbed}{...}
{synopthdr:omodel}
{synoptline}
{syntab :模型}
{synopt :{opt linear}}线性结果模型；默认值{p_end}
{synopt :{opt fractional}}分数概率结果模型{p_end}
{synopt :{opt probit}}概率单位模型{p_end}
{synopt :{opt exponential}}指数均值结果模型{p_end}
{synoptline}

{marker stat}{...}
{synopthdr:stat}
{synoptline}
{syntab :模型}
{synopt :{opt ate}}估计总体中的平均处理效应；默认值{p_end}
{synopt :{opt atet}}估计对处理组的平均处理效应{p_end}
{synopt :{opt pom:eans}}估计潜在结果均值{p_end}
{synoptline}

{marker opttable}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}

{syntab :标准误/鲁棒}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以为
   {opt r:obust}, {opt cl:uster} {it:clustvar},
   {opt boot:strap}, 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设定置信水平；默认值为
{cmd:level(95)}{p_end}
{synopt :{opt aeq:uations}}显示辅助方程
结果{p_end}
{synopt :{it:{help eteffects##display_options:display_options}}}控制
包括帮助简短描述-显示选项

{syntab :最大化}
{synopt :{it:{help eteffects##maximize_options:maximize_options}}}控制
最大化过程；很少使用{p_end}

{syntab :高级}
{synopt :{opt pstol:erance(#)}}设定重叠假设的容忍度{p_end}
{synopt :{opth os:ample(newvar)}}生成 {it:newvar} 来标记违反重叠假设的观察值{p_end}

包括帮助简短描述-系数图例
{synoptline}
{p 4 6 2}{it:omvarlist} 和 {it:tmvarlist} 可以包含
因子变量；参见 {help fvvarlists}.{p_end}
{p 4 6 2}{cmd:bootstrap}, {cmd:by}, {cmd:jackknife}, 和 {cmd:statsby} 是
允许的；参见 {help prefix_zh}.{p_end}
{p 4 6 2}权重在 {help bootstrap_zh} 前缀下是不允许的。{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:fweight}s, {cmd:iweight}s, 和 {cmd:pweight}s 是允许的；参见
{help weight_zh}.{p_end}
{p 4 6 2}{cmd:coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}请参见 {manhelp eteffects_postestimation TE: eteffects 后估计}
以了解估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 处理效应 > 内生处理 >}
    {bf:控制函数估计器 > 连续结果}

{phang}
{bf:统计 > 处理效应 > 内生处理 >}
    {bf:控制函数估计器 > 二元结果}

{phang}
{bf:统计 > 处理效应 > 内生处理 >}
    {bf:控制函数估计器 > 计数结果}

{phang}
{bf:统计 > 处理效应 > 内生处理 >}
    {bf:控制函数估计器 > 分数结果}

{phang}
{bf:统计 > 处理效应 > 内生处理 >}
    {bf:控制函数估计器 > 非负结果}


{marker description}{...}
{title:描述}

{pstd}
{cmd:eteffects} 估计平均处理效应 (ATE)、对处理组的平均处理效应 (ATET) 和潜在结果均值 (POMs)，用于处理分配与潜在结果相关的观察数据。它允许连续的、二元的、计数的、分数的以及非负的结果，并且需要一个二元处理变量。为了控制处理分配的内生性，估计量在潜在结果模型中包括处理模型的残差，这种方法称为控制函数方法。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TE eteffectsQuickstart:快速入门}

        {mansection TE eteffectsRemarksandexamples:备注和示例}

        {mansection TE eteffectsMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:noconstant}; 参见
{helpb estimation options:[R] 估计选项}。

{phang}
{it:stat} 是三种统计量之一：{cmd:ate}、{cmd:atet} 或 {cmd:pomeans}。
{cmd:ate} 为默认值。

{phang2}
{cmd:ate} 指定估计平均处理效应。

{phang2}
{cmd:atet} 指定估计对处理组的平均处理效应。

{phang2}
{cmd:pomeans} 指定估计每个处理水平的潜在结果均值。

{dlgtab:标准误/鲁棒}

包括帮助 vce_rcbj

{dlgtab:报告}

{phang}
{opt level(#)}; 参见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{cmd:aequations} 指定显示结果的结果模型或处理模型参数。 默认情况下，这些辅助参数的结果不会显示。

{marker display_options}{...}
包括帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}: 
{opt iter:ate(#)},
[{cmd:no}]{opt log}, 
和
{opt from(init_specs)}; 参见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
{it:init_specs} 是下列之一：

{phang3}
{it:matname} [{cmd:, skip copy}]

{phang3}
{it:#} [{cmd:,} {it:#} ...]{cmd:, copy}

{dlgtab:高级}

{phang}
{opt pstolerance(#)} 指定用于检查重叠假设的容忍度。 默认值为 {cmd:pstolerance(1e-5)}。 如果观察值的估计倾向得分小于 {cmd:pstolerance()} 指定的值，{cmd:eteffects} 将以错误退出。

{phang}
{opth osample(newvar)} 指定创建指示变量 {it:newvar} 来识别违反重叠假设的观察值。

{pstd}
以下选项在 {opt eteffects} 中可用，但不显示在对话框中：

{phang}
{opt coeflegend}; 参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse cattaneo2}

{pstd}估计吸烟状态对婴儿出生体重的 ATE{p_end}
{phang2}{cmd:. eteffects (bweight i.prenatal1 i.mmarried mage i.fbaby)}
          {cmd:(mbsmoke i.mmarried mage i.fbaby medu fedu)}

{pstd}同上，但估计 ATET{p_end}
{phang2}{cmd:. eteffects (bweight i.prenatal1 i.mmarried mage i.fbaby)}
          {cmd:(mbsmoke i.mmarried mage i.fbaby medu fedu), atet}

{pstd}显示用于计算 ATET 的辅助参数{p_end}
{phang2}{cmd:. eteffects, aeq}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nlsy80}

{pstd}估计居住在城市地区对月收入的 ATE，
假设收入在协变量的条件下遵循指数均值{p_end}
{phang2}{cmd:. eteffects (wage exper iq i.college, exponential nocons)}
          {cmd:(urban i.college fcollege)}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{opt eteffects} 在 {opt e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(n}{it:j}{cmd:)}}处理水平 {it:j} 的观察数{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_levels)}} 处理变量的水平数{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:eteffects}{p_end}
{synopt:{cmd:e(cmdline)}}命令按原样输入{p_end}
{synopt:{cmd:e(depvar)}}结果变量名称{p_end}
{synopt:{cmd:e(tvar)}}处理变量名称{p_end}
{synopt:{cmd:e(omodel)}}{cmd:fractional}, {cmd:linear}, {cmd:probit}, 或 {cmd:exponential}{p_end}
{synopt:{cmd:e(stat)}}估计的统计量，{cmd:ate}, {cmd:atet}, 或 {cmd:pomeans}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(tlevels)}}处理变量的水平{p_end}
{synopt:{cmd:e(vce)}} {it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为
{cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为
{cmd:asobserved}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <eteffects.sthlp>}