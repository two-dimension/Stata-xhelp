{smcl}
{* *! version 1.2.4  11dec2018}{...}
{viewerdialog boxcox "dialog boxcox"}{...}
{vieweralsosee "[R] boxcox" "mansection R boxcox"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] boxcox postestimation" "help boxcox postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] lnskew0" "help lnskew0_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "Syntax" "boxcox_zh##syntax"}{...}
{viewerjumpto "Menu" "boxcox_zh##menu"}{...}
{viewerjumpto "Description" "boxcox_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "boxcox_zh##linkspdf"}{...}
{viewerjumpto "Options" "boxcox_zh##options"}{...}
{viewerjumpto "Examples" "boxcox_zh##examples"}{...}
{viewerjumpto "Stored results" "boxcox_zh##results"}
{help boxcox:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] boxcox} {hline 2}}Box-Cox 回归模型{p_end}
{p2col:}({mansection R boxcox:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:boxcox} {depvar} [{indepvars}] {ifin}
[{it:{help boxcox##weight:权重}}]
[{cmd:,}
{it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:常数项}}抑制常数项{p_end}
{synopt :{opt model}{cmd:(}{opt lhs:only}{cmd:)}}左侧 Box-Cox 模型；默认值{p_end}
{synopt :{opt model}{cmd:(}{opt rhs:only}{cmd:)}}右侧 Box-Cox 模型{p_end}
{synopt :{opt model}{cmd:(}{opt lam:bda}{cmd:)}}两侧 Box-Cox 模型，使用相同参数{p_end}
{synopt :{opt model}{cmd:(}{opt theta}{cmd:)}}两侧 Box-Cox 模型，使用不同参数{p_end}
{synopt :{opth notr:ans(varlist)}}不转换指定的自变量{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt lrtest}}执行似然比检验{p_end}

{syntab:最大化}
{synopt :[{cmd:no}]{cmd:log}}抑制所有迭代日志{p_end}
{synopt :{opt nologlr}}抑制限制模型 {opt lrtest} 迭代日志{p_end}
{synopt :{it:{help boxcox##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bootstrap}, {cmd:by}, {cmd:jackknife}, {cmd:rolling}, 
{cmd:statsby}, 和 {cmd:xi} 是允许的；请参见 {help prefix_zh}.{p_end}
{p 4 6 2}不允许在 {help bootstrap_zh} 前缀中使用权重.{p_end}
{marker weight}{...}
{p 4 6 2}{opt fweight}s 和 {opt iweight}s 是允许的；请参见 {help weight_zh}.{p_end}
{p 4 6 2}有关估计后可用功能，请参见 {manhelp boxcox_postestimation R:boxcox postestimation}.


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型和相关 > Box-Cox 回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:boxcox} 查找 Box-Cox 变换参数的最大似然估计、独立变量的系数以及正态分布误差的标准差。任何被转换的 {depvar} 或 {indepvars} 必须严格为正。可以使用选项控制哪些变量保持不变。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R boxcoxQuickstart:快速入门}

        {mansection R boxcoxRemarksandexamples:备注和示例}

        {mansection R boxcoxMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 请参见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt model}{cmd:(}{opt lhsonly}|{opt rhsonly}|{opt lambda}|{opt theta}{cmd:)}
指定要拟合的四种模型中的哪一种。

{pmore}
{cmd:model(lhsonly)} 仅对 {depvar} 应用 Box-Cox 变换。
{cmd:model(lhsonly)} 是默认值。

{pmore}
{cmd:model(rhsonly)} 将变换应用于 {indepvars}。

{pmore}
{cmd:model(lambda)} 同时将变换应用于 {it:depvar} 和 {it:indepvars}，并且它们由相同参数转换。

{pmore}
{cmd:model(theta)} 同时将变换应用于 {it:depvar} 和 {it:indepvars}，但这次，双方由不同参数转换。

{marker notrans()}{...}
{phang}
{opth notrans(varlist)} 指定在包含在模型中时，不转换 {it:varlist} 中的变量。您可以使用 {opt notrans(varlist)} 与 {cmd:model(lhsonly)}，但结果将与在 {it:indepvars} 中指定变量 {it:varlist} 一致。

{dlgtab:报告}

{phang}
{opt level(#)}; 请参见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt lrtest} 指定执行似然比显著性检验并报告每个自变量。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
包括帮助 lognolog
这些选项控制完整模型生成的迭代日志，如果指定了选项 {cmd:lrtest}，则也包括拟合的限制模型。

{phang}
{opt nologlr} 在拟合 {opt lrtest} 选项所需的限制模型时抑制迭代日志。

{phang}
{it: maximize_options}: {opt iter:ate(#)} 和 {opt from(init_specs)}；请参见 {help maximize_zh:[R] 最大化}。

            模型{col 25}初始值规范
            {hline 39}
            {opt lhsonly}{col 25}{cmd:from(}{it:#_t}{cmd:, copy)}
            {opt rhsonly}{col 25}{cmd:from(}{it:#_l}{cmd:, copy)}
            {opt lambda}{col 25}{cmd:from(}{it:#_l}{cmd:, copy)}
            {opt theta}{col 25}{cmd:from(}{it:#_l #_t}{cmd:, copy)}
            {hline 39}


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}对 {cmd:mpg} 应用 Box-Cox 变换{p_end}
{phang2}{cmd:. boxcox mpg weight price}{p_end}

{pstd}与上述相同，但将 {cmd:foreign} 作为未转换的自变量包含{p_end}
{phang2}{cmd:. boxcox mpg weight price, notrans(foreign)}{p_end}

{pstd}对 {cmd:weight} 和 {cmd:price} 应用 Box-Cox 变换{p_end}
{phang2}{cmd:. boxcox mpg weight price, model(rhsonly)}{p_end}

{pstd}使用相同参数变换 {cmd:mpg}、{cmd:weight} 和 {cmd:price}{p_end}
{phang2}{cmd:. boxcox mpg weight price, model(lambda)}

{pstd}使用不同的参数变换 {cmd:mpg} 和转换 {cmd:weight} 及 {cmd:price} 时所使用的不同参数{p_end}
{phang2}{cmd:. boxcox mpg weight price, model(theta)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:boxcox} 将以下内容存储在 {cmd:e()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2)}}完整模型与比较模型的 LR 统计量{p_end}
{synopt:{cmd:e(df_m)}}完整模型的自由度{p_end}
{synopt:{cmd:e(ll0)}}限制模型的对数似然{p_end}
{synopt:{cmd:e(df_r)}}限制模型的自由度{p_end}
{synopt:{cmd:e(ll_t1)}}模型 λ = θ = 1 的对数似然{p_end}
{synopt:{cmd:e(chi2_t1)}}λ = θ = 1 与完整模型的 LR{p_end}
{synopt:{cmd:e(p_t1)}}λ = θ = 1 与完整模型的 p 值{p_end}
{synopt:{cmd:e(ll_tm1)}}模型 λ = θ = -1 的对数似然{p_end}
{synopt:{cmd:e(chi2_tm1)}}λ = θ = -1 与完整模型的 LR{p_end}
{synopt:{cmd:e(p_tm1)}}λ = θ = -1 与完整模型的 p 值{p_end}
{synopt:{cmd:e(ll_t0)}}模型 λ = θ = 0 的对数似然{p_end}
{synopt:{cmd:e(chi2_t0)}}λ = θ = 0 与完整模型的 LR{p_end}
{synopt:{cmd:e(p_t0)}}λ = θ = 0 与完整模型的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:boxcox}{p_end}
{synopt:{cmd:e(cmdline)}}命令输入的形式{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(model)}}{cmd:lhsonly}, {cmd:rhsonly}, {cmd:lambda}，或 {cmd:theta}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(ntrans)}}如果未转换 {it:indepvars} 则为 {cmd:yes}{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(lrtest)}}{cmd:lrtest}，如果请求{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵（见下文注释）{p_end}
{synopt:{cmd:e(pm)}}对{it:indepvars}的 LR 检验的 p 值{p_end}
{synopt:{cmd:e(df)}}对{it:indepvars}的 LR 检验的自由度{p_end}
{synopt:{cmd:e(chi2m)}}对{it:indepvars}的 LR 统计量{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{pstd}
{cmd:e(V)} 除了与 Box-Cox 变换的参数相对应的元素外，其他均为零.{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <boxcox.sthlp>}