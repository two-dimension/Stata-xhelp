{smcl}
{* *! version 1.1.9  12dec2018}{...}
{viewerdialog betareg "dialog betareg"}{...}
{viewerdialog "svy: betareg" "dialog betareg, message(-svy-) name(svy_betareg)"}{...}
{vieweralsosee "[R] betareg" "mansection R betareg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] betareg postestimation" "help betareg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: betareg" "help bayes betareg"}{...}
{vieweralsosee "[FMM] fmm: betareg" "help fmm betareg"}{...}
{vieweralsosee "[R] fracreg" "help fracreg_zh"}{...}
{vieweralsosee "[R] glm" "help glm_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{viewerjumpto "Syntax" "betareg_zh##syntax"}{...}
{viewerjumpto "Menu" "betareg_zh##menu"}{...}
{viewerjumpto "Description" "betareg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "betareg_zh##linkspdf"}{...}
{viewerjumpto "Options" "betareg_zh##options"}{...}
{viewerjumpto "Examples" "betareg_zh##examples"}{...}
{viewerjumpto "Stored results" "betareg_zh##results"}
{help betareg:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] betareg} {hline 2}}Beta 回归{p_end}
{p2col:}({mansection R betareg:View complete PDF manual entry}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:betareg}
{depvar}
{indepvars}
{ifin}
[{it:{help betareg##weight:weight}}]
[{cmd:,} {it:options}]

{synoptset 29 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常量项{p_end}
{synopt :{cmdab:sca:le(}{varlist} [{cmd:,} {cmdab:nocons:tant}{cmd:)}}指定
独立变量的规模{p_end}
{synopt :{opt li:nk(linkname)}}指定条件均值的链接函数；
默认值为 {cmd:link(logit)}{p_end}
{synopt :{opt sli:nk(slinkname)}}指定条件规模的链接函数；默认值为 {cmd:slink(log)} {p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():constraints}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype}可以是 {opt oim}、
  {opt r:obust}、{opt cl:uster} {it:clustvar}，
  {opt boot:strap}或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为
        {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help betareg##display_options:display_options}}}控制
包含帮助短描述-显示选项

{syntab:最大化}
{synopt :{it:{help betareg##maximize_options:maximize_options}}}控制最大化过程；鲜少使用{p_end}

包含帮助短描述-系数说明
{synoptline}
{p2colreset}{...}

{marker linkname}{...}
{synoptset 29}{...}
{synopthdr :linkname}
{synoptline}
{synopt :{opt logit}}logit{p_end}
{synopt :{opt prob:it}}probit{p_end}
{synopt :{opt clog:log}}补充对数-对数{p_end}
{synopt :{opt logl:og}}对数-对数{p_end}
{synoptline}
{p2colreset}{...}

{marker slinkname}{...}
{synoptset 29}{...}
{synopthdr :slinkname}
{synoptline}
{synopt :{opt log}}对数{p_end}
{synopt :{opt root}}平方根{p_end}
{synopt :{opt iden:tity}}恒等{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
{it:indepvars} 和 {it:varlist} 在 {cmd:scale()} 中指定的可以包含
因子变量；请参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{cmd:bayes}、
{cmd:bootstrap}、
{cmd:by}、
{cmd:fmm}、
{cmd:fp}、
{cmd:jackknife}、
{cmd:nestreg}、 
{cmd:rolling}、
{cmd:statsby}、
{cmd:stepwise}和
{cmd:svy}
被允许；见 {help prefix_zh}。
更多细节，请参见 {manhelp bayes_betareg BAYES:bayes: betareg} 和
{manhelp fmm_betareg FMM:fmm: betareg}.{p_end}
{p 4 6 2}权重在 {help bootstrap_zh} 前缀下不允许使用.{p_end}
{p 4 6 2}
{cmd:vce()} 和权重在 {help svy_zh} 前缀下不允许使用.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s 是允许的；请参见
{help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
有关估计后可用功能，请参见 {manhelp betareg_postestimation R:betareg postestimation}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 分数结果 > Beta 回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:betareg} 估计 beta 回归模型的参数。该模型适应
大于 0 且小于 1 的因变量，例如比率、比例和分数数据。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R betaregQuickstart:快速入门}

        {mansection R betaregRemarksandexamples:备注和示例}

        {mansection R betaregMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在这个帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:noconstant}；见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{cmd:scale(}{varlist} [{cmd:, noconstant}]{cmd:)} 指定用于建模规模的独立变量。

{phang2}
{opt noconstant} 抑制规模模型中的常量项。
默认情况下包括常量项。

{phang}
{opt link(linkname)} 指定用于条件均值的链接函数。 {it:linkname} 可以是 {cmd:logit}、{cmd:probit}、
{cmd:cloglog} 或 {cmd:loglog}。默认值为 {cmd:link(logit)}。

{phang}
{opt slink(slinkname)} 指定用于条件规模的链接函数。 {it:slinkname} 可以是 {cmd:log}、{cmd:root} 或
{cmd:identity}。默认值为 {cmd:slink(log)}。

{phang}
{opt constraints(constraints)}；见
{helpb estimation options##constraints():[R] 估计选项}。

{dlgtab:SE/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误差类型，
包括从渐近理论派生的类型 ({cmd:oim})、
对某些类型的模型不当指定鲁棒的类型 ({cmd:robust})、允许
组内部相关 ({cmd:cluster} {it:clustvar})，以及
使用自助或切割方法的类型 ({cmd:bootstrap}, {cmd:jackknife})；见
{help vce_option_zh:[R] {it:vce_option}}。

{dlgtab:报告}

{phang}
{opt level(#)}、{cmd:nocnsreport}；见
{helpb estimation options:[R] 估计选项}。

包含帮助 显示选项列表

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、
{opt iter:ate(#)}、
[{cmd:no}]{opt log}、
{opt tr:ace}、
{opt grad:ient}、
{opt showstep}、
{opt hess:ian}、
{opt showtol:erance}、
{opt tol:erance(#)}、
{opt ltol:erance(#)}、
{opt nrtol:erance(#)}、
{opt nonrtol:erance}，和
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
{cmd:betareg} 可用的以下选项在对话框中未显示：

{phang}
{opt coeflegend}；见
{helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sprogram}{p_end}

{pstd}使用默认对数链接条件均值和对数链接条件规模的 Beta 回归{p_end}
{phang2}{cmd:. betareg prate i.summer freemeals pdonations}{p_end}

{pstd}与上述相同，但将规模参数作为 {cmd:freemeals} 的函数{p_end}
{phang2}{cmd:. betareg prate i.summer freemeals pdonations, scale(freemeals)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:betareg} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测数{p_end}
{synopt:{cmd:e(k)}}参数数{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)}中的方程数{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常量模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}集群数{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 P 值{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 如果没有收敛{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:betareg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(linkt)}}条件均值方程中的链接标题{p_end}
{synopt:{cmd:e(linkf)}}条件均值方程中的链接函数{p_end}
{synopt:{cmd:e(slinkt)}}条件规模方程中的链接标题{p_end}
{synopt:{cmd:e(slinkf)}}条件规模方程中的链接函数{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}或 {cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器执行最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}允许 {cmd:margins} 的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}不允许 {cmd:margins} 的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础方差{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <betareg.sthlp>}