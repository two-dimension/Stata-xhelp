{smcl}
{* *! version 1.2.10  12dec2018}{...}
{viewerdialog truncreg "dialog truncreg"}{...}
{viewerdialog "svy: truncreg" "dialog truncreg, message(-svy-) name(svy_truncreg)"}{...}
{vieweralsosee "[R] truncreg" "mansection R truncreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] truncreg postestimation" "help truncreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: truncreg" "help bayes truncreg"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[FMM] FMM: truncreg" "help fmm truncreg"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{vieweralsosee "[R] tobit" "help tobit_zh"}{...}
{viewerjumpto "Syntax" "truncreg_zh##syntax"}{...}
{viewerjumpto "Menu" "truncreg_zh##menu"}{...}
{viewerjumpto "Description" "truncreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "truncreg_zh##linkspdf"}{...}
{viewerjumpto "Options" "truncreg_zh##options"}{...}
{viewerjumpto "Examples" "truncreg_zh##examples"}{...}
{viewerjumpto "Stored results" "truncreg_zh##results"}
{help truncreg:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] truncreg} {hline 2}}截断回归{p_end}
{p2col:}({mansection R truncreg:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:truncreg}
{depvar}
[{indepvars}]
{ifin}
[{it:{help truncreg##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt:{opt nocons:不截断常数项}}压制常数项
{p_end}
{synopt:{cmd:ll(}{varname}|{it:#}{cmd:)}}左截断变量或限值{p_end}
{synopt:{cmd:ul(}{varname}|{it:#}{cmd:)}}右截断变量或限值{p_end}
{synopt:{opth off:set(varname)}}将{it:varname}包含在模型中，其系数约束为1
{p_end}
{synopt:{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束
{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、
   {opt r:obust}、{opt cl:uster} {it:clustvar}、{opt opg}、{opt boot:strap}、
   或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}
{p_end}
{synopt :{opt lrmodel}}执行似然比模型测试，而不是默认的Wald测试{p_end}
{synopt :{opt nocns:r:eport}}不显示约束{p_end}
{synopt :{it:{help truncreg##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab:优化}
{synopt:{it:{help truncreg##maximize_options:最大化选项}}}控制
最大化过程；很少使用
{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
INCLUDE help fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；见
	{help tsvarlist_zh}。
	{p_end}
{p 4 6 2}
{opt bayes}、{opt bootstrap}、{opt by}、{opt fmm}、{opt fp}、{opt jackknife}、
{opt mi estimate}、{opt rolling}、{opt statsby} 和 {opt svy} 是允许的；
见 {help prefix_zh}。
有关更多信息，请参见 {manhelp bayes_truncreg BAYES:bayes: truncreg} 和
{manhelp fmm_truncreg FMM:fmm: truncreg}。
{p_end}
INCLUDE help vce_mi
{p 4 6 2}权重不能与 {help bootstrap_zh} 前缀一起使用。{p_end}
{p 4 6 2}{cmd:aweight} 不能与 {help jackknife_zh} 前缀一起使用。
{p_end}
{p 4 6 2}
{opt vce()}、
{opt lrmodel} 和权重不能与 {help svy_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt aweight}、{opt fweight}、{opt iweight} 和 {opt pweight} 是允许的；见 {help weight_zh}。
	{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不出现在对话框中。{p_end}
{p 4 6 2}
请参阅 {manhelp truncreg_postestimation R:truncreg postestimation} 以了解估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型及相关 > 截断回归}


{marker description}{...}
{title:描述}

{pstd}
{opt truncreg} 从限制人群的样本中拟合{depvar}与{indepvars}的回归模型。
在对整个群体的正态性假设下，截断回归模型中的误差项具有截断的正态分布， 
这是一种已经被向上缩放的正态分布，使得该分布在限制范围内的积分为1。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R truncregQuickstart:快速入门}

        {mansection R truncregRemarksandexamples:备注和示例}

        {mansection R truncregMethodsandformulas:方法和公式}

{pstd}
上述部分未包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}；见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{cmd:ll(}{varname}|{it:#}{cmd:)} 和
{opt ul(varname|#)} 分别表示截断的下限和上限。 您可以指定一个或两个。
观察值中 {depvar} {ul:<} {opt ll()} 的为左截断，  
{it:depvar} {ul:>} {opt ul()} 的则为右截断，其余观察值则不被截断。
有关更详细的描述，请参见 {manhelp tobit R}。

{phang}
{opth offset(varname)}、{opt constraints(constraints)}；见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

INCLUDE help vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}、{opt lrmodel}、{opt nocnsreport}；见
     {helpb estimation options:[R] 估计选项}。

INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:优化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、
{opth tech:nique(maximize##algorithm_spec:算法规格)}、
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
{opt nonrtol:erance(#)} 和
{opt from(init_specs)}；
见 {help maximize_zh:[R] 最大化}。这些选项很少使用，但您可以
使用 {opt ltol(#)} 选项放宽收敛标准；默认值是在规范搜索中 {cmd:1e-6}。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会将默认
{it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
以下选项可与 {opt truncreg} 一起使用，但未在对话框中显示：

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}准备{p_end}
{phang2}{cmd:. webuse laborsub}{p_end}
{phang2}{cmd:. regress whrs kl6 k618 wa we if whrs > 0}{p_end}

{pstd}自下而上的截断回归{p_end}
{phang2}{cmd:. truncreg whrs kl6 k618 wa we, ll(0)}{p_end}

    {hline}
{pstd}准备{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. generate lowmpg = 20 if foreign == 0}{p_end}
{phang2}{cmd:. replace lowmpg = 25 if foreign == 1}

{pstd}截断回归，其中 {cmd:lowmpg} 包含截断的限制{p_end}
{phang2}{cmd:. truncreg mpg price length displacement, ll(lowmpg)}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:truncreg} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察的数量{p_end}
{synopt:{cmd:e(N_bf)}}截断前的观察数{p_end}
{synopt:{cmd:e(chi2)}}模型的卡方值{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}} 全部模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_aux)}} 辅助参数数量{p_end}
{synopt:{cmd:e(df_m)}} 模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅包含常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}簇的数量{p_end}
{synopt:{cmd:e(sigma)}} sigma 的估计值{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}} 迭代的数量{p_end}
{synopt:{cmd:e(rc)}} 返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，则为 {cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:truncreg}{p_end}
{synopt:{cmd:e(cmdline)}}作为输入的命令{p_end}
{synopt:{cmd:e(llopt)}} 如果指定，{cmd:ll()} 的内容{p_end}
{synopt:{cmd:e(ulopt)}} 如果指定，{cmd:ul()} 的内容{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}簇变量的名称{p_end}
{synopt:{cmd:e(offset1)}}偏移量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方的类型
测试{p_end}
{synopt:{cmd:e(vce)}} 在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器进行
                         最大化或最小化的方式{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}
{synopt:{cmd:e(means)}}自变量的均值{p_end}
{synopt:{cmd:e(dummy)}}虚拟变量的指示器{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <truncreg.sthlp>}