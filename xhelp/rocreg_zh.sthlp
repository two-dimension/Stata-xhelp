{smcl}
{* *! version 1.3.1  12dec2018}{...}
{viewerdialog rocreg "dialog rocreg"}{...}
{vieweralsosee "[R] rocreg" "mansection R rocreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] rocreg postestimation" "help rocreg postestimation"}{...}
{vieweralsosee "[R] rocregplot" "help rocregplot_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] roc" "help roc_zh"}{...}
{vieweralsosee "[R] rocfit" "help rocfit_zh"}{...}
{viewerjumpto "Syntax" "rocreg_zh##syntax"}{...}
{viewerjumpto "Menu" "rocreg_zh##menu"}{...}
{viewerjumpto "Description" "rocreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "rocreg_zh##linkspdf"}{...}
{viewerjumpto "Options for nonparametric ROC estimation, using bootstrap" "rocreg_zh##options_np"}{...}
{viewerjumpto "Options for parametric ROC estimation, using bootstrap" "rocreg_zh##options_probit"}{...}
{viewerjumpto "Options for parametric ROC using maximum likelihood" "rocreg_zh##options_probit_ml"}{...}
{viewerjumpto "Examples" "rocreg_zh##examples"}{...}
{viewerjumpto "Stored results" "rocreg_zh##results"}
{help rocreg:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] rocreg} {hline 2}}接收者操作特征（ROC）回归{p_end}
{p2col:}({mansection R rocreg:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
执行在协变量下的ROC曲线的非参数分析，使用自助法

{p 8 16 2}
{cmd:rocreg}
{it:refvar}
{it:classvar}
[{it:classvars}]
{ifin}
[{cmd:,}
{it:{help rocreg##np_options:np_options}}]


{phang}
执行在协变量下的ROC曲线的参数分析，使用自助法

{p 8 16 2}
{cmd:rocreg}
{it:refvar}
{it:classvar}
[{it:classvars}]
{ifin}
{cmd:, probit}
[{it:{help rocreg##probit_options:probit_options}}]


{phang}
执行在协变量下的ROC曲线的参数分析，使用最大似然

{p 8 16 2}
{cmd:rocreg}
{it:refvar}
{it:classvar}
[{it:classvars}]
{ifin}
[{it:{help rocreg##weight:weight}}]
{cmd:, probit ml}
[{it:{help rocreg##probit_ml_options:probit_ml_options}}]


{marker np_options}{...}
{synoptset 30 tabbed}{...}
{synopthdr:np_options}
{synoptline}
{syntab:模型}
{synopt:{opt auc}}估计ROC曲线下的总面积；默认为此{p_end}
{synopt:{cmd:roc(}{it:{help numlist_zh}}{cmd:)}}估计给定假阳性率的ROC{p_end}
{synopt:{cmd:invroc(}{it:{help numlist_zh}}{cmd:)}}估计给定ROC值的假阳性率{p_end}
{synopt:{cmd:pauc(}{it:{help numlist_zh}}{cmd:)}}估计每个假阳性率的部分ROC曲线面积（pAUC）{p_end}
{synopt:{opth cl:uster(varname)}}识别重采样簇的变量{p_end}
{synopt:{opth ctrlcov(varlist)}}为{it:varlist}中的协变量调整控制分布{p_end}
{synopt:{opt ctrlmod:el}({opt s:trata} | {opt l:inear})}对协变量进行分层或回归；默认是{cmd:ctrlmodel(strata)}{p_end}
{synopt:{cmd:pvc(}{opt e:mpirical} | {opt n:ormal}{cmd:)}}使用经验或正态分布百分位值估计；默认是{cmd:pvc(empirical)}{p_end}
{synopt:{opt tiec:orrected}}对此观测值相同的情况进行调整；在使用{cmd:pvc(normal)}时不允许{p_end}

{syntab:自助法}
{synopt:{opt noboot:strap}}不执行自助法，仅输出点估计{p_end}
{synopt:{opt bseed(#)}}自助法的随机数种子{p_end}
{synopt:{opt brep:s(#)}}自助法重复的次数；默认是{cmd:breps(1000)}{p_end}
{synopt:{opt bootcc}}执行病例对照（在{it:refvar}上分层）取样，而不是队列取样{p_end}
{synopt:{opt nobstr:ata}}在自助法采样中忽略协变量的分层{p_end}
{synopt:{opt nodots}}抑制自助法重复点{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是{cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}


{marker probit_options}{...}
{synoptset 30 tabbed}{...}
{synopthdr:probit_options}
{synoptline}
{syntab:模型}
{p2coldent:* {opt probit}}拟合probit模型{p_end}
{synopt:{opth roccov(varlist)}}影响ROC曲线的协变量{p_end}
{synopt:{opt fprpts(#)}}用于拟合ROC曲线的假阳性率点数；默认是{cmd:fprpts(10)}{p_end}
{synopt:{opt ctrlfpr:all}}在控制群体中在每个假阳性率处拟合ROC曲线{p_end}
{synopt:{opth cl:uster(varname)}}识别重采样簇的变量{p_end}
{synopt:{opth ctrlcov(varlist)}}为{it:varlist}中的协变量调整控制分布{p_end}
{synopt:{opt ctrlmod:el}({opt s:trata} | {opt l:inear})}对协变量进行分层或回归；默认是{cmd:ctrlmodel(strata)}{p_end}
{synopt:{cmd:pvc(}{opt e:mpirical} | {opt n:ormal}{cmd:)}}使用经验或正态分布百分位值估计；默认是{cmd:pvc(empirical)}{p_end}
{synopt:{opt tiec:orrected}}对此观测值相同的情况进行调整；在使用{cmd:pvc(normal)}时不允许{p_end}

{syntab:自助法}
{synopt:{opt noboot:strap}}不执行自助法，仅输出点估计{p_end}
{synopt:{opt bseed(#)}}自助法的随机数种子{p_end}
{synopt:{opt brep:s(#)}}自助法重复的次数；默认是{cmd:breps(1000)}{p_end}
{synopt:{opt bootcc}}执行病例对照（在{it:refvar}上分层）取样，而不是队列取样{p_end}
{synopt:{opt nobstr:ata}}在自助法采样中忽略协变量的分层{p_end}
{synopt:{opt nodots}}抑制自助法重复点{p_end}
{synopt: {cmd:bsave(}{it:{help filename_zh}}{cmd:,} ...{cmd:)}}从参数估计中保存自助法重复{p_end}
{synopt: {opth bfile(filename)}}指定用于估计重播的自助法重复数据集{p_end}

{syntab:报告}
{phang}
{opt level(#)}; 见
{helpb estimation options##level():[R] 估计选项}。


{marker options_probit_ml}{...}
{title:使用最大似然的参数ROC选项}

{dlgtab:模型}

{phang}
{opt probit} 拟合probit模型。此选项为必需，意味着参数估计。

{phang}
{opt ml} 通过最大似然估计拟合probit模型。此选项也为必需，必须与{opt probit}一起指定。

{phang}
{opth roccov(varlist)} 指定影响ROC曲线的协变量。

{phang}
{opth cluster(varname)} 指定用于聚类的变量。

{phang}
{opth ctrlcov(varlist)} 指定用来调整控制群体的协变量。

{dlgtab:报告}

{phang}
{opt level(#)}; 见 
{helpb estimation options##level():[R] 估计选项}。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt noomit:ted},
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}，和
{opt nolstretch}；
    见 {helpb estimation options##display_options:[R] 估计选项}。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
{opt iter:ate(#)}, [{cmd:no}]{opt log}, {opt tr:ace}, 
{opt grad:ient}, {opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)},
{opt nonrtol:erance}, 和
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。{cmd:technique(bhhh)}选项不允许使用。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse hanley}{p_end}

{pstd}假定双正态模型拟合平滑的ROC曲线{p_end}
{phang2}{cmd:. rocreg disease rating, probit ml}{p_end}
{phang2}{cmd:. rocregplot}{p_end}

{pstd}拟合非参数ROC曲线{p_end}
{phang2}{cmd:. rocreg disease rating, bseed(32)}{p_end}
{phang2}{cmd:. rocregplot}{p_end}

    {hline}
{pstd}具有多个协变量的数据集设置{p_end}
{phang2}{cmd:. webuse nnhs, clear}{p_end}

{pstd}拟合带有ROC（控制）协变量和自助推断的数据的双正态ROC曲线{p_end}
{phang2}{cmd:. rocreg d y1, ctrlcov(currage male) ctrlmodel(linear)}
        {cmd:roccov(currage) cluster(id) bseed(56930) breps(50) bsave(nnhs2y1)}
        {cmd:probit}{p_end}
{phang2}{cmd:. rocregplot, at1(currage=50) at2(currage=40) at3(currage=30)}
        {cmd:roc(.5) bfile(nnhs2y1)}{p_end}

{pstd}带有ROC协变量和最大似然推断的双正态ROC曲线拟合数据{p_end}
{phang2}{cmd:. rocreg d y1, ctrlcov(currage male) ctrlmodel(linear)}
        {cmd:roccov(currage) cluster(id) probit ml}{p_end}
{phang2}{cmd:. rocregplot, at1(currage=50) at2(currage=40) at3(currage=30)}
        {cmd:roc(.5)}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
非参数{cmd:rocreg}在{cmd:e()}中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测数{p_end}
{synopt:{cmd:e(N_strata)}}协变量分层数{p_end}
{synopt:{cmd:e(N_clust)}}簇的数量{p_end}
{synopt:{cmd:e(level)}}自助法置信区间的置信水平{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:rocreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(classvars)}}分类变量列表{p_end}
{synopt:{cmd:e(refvar)}}状态变量，参考变量{p_end}
{synopt:{cmd:e(ctrlmodel)}}协变量调整规范{p_end}
{synopt:{cmd:e(ctrlcov)}}协变量调整变量{p_end}
{synopt:{cmd:e(pvc)}}百分位值计算方法{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(tiecorrected)}}如果指定，{cmd:tiecorrected}{p_end}
{synopt:{cmd:e(nobootstrap)}}如果指定，{cmd:nobootstrap}{p_end}
{synopt:{cmd:e(rngstate)}}如果执行了自助法，使用的随机数状态{p_end}
{synopt:{cmd:e(breps)}}如果执行了自助法，的自助法重抽样数{p_end}
{synopt:{cmd:e(bootcc)}}如果指定，{cmd:bootcc}{p_end}
{synopt:{cmd:e(nobstrata)}}如果指定，{cmd:nobstrata}{p_end}
{synopt:{cmd:e(clustvar)}}簇变量名称{p_end}
{synopt:{cmd:e(exp}{it:#}{cmd:)}}第{it:#}个统计量的表达式{p_end}
{synopt:{cmd:e(roc)}}估计ROC的假阳性率{p_end}
{synopt:{cmd:e(invroc)}}估计假阳性率的ROC值{p_end}
{synopt:{cmd:e(pauc)}}估计pAUC的假阳性率{p_end}
{synopt:{cmd:e(auc)}}指示计算了AUC{p_end}
{synopt:{cmd:e(vce)}}{cmd:bootstrap}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}（或{cmd:b}如果未执行自助法）{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计值的方差-协方差矩阵{p_end}
{synopt:{cmd:e(b_bs)}}自助法估计{p_end}
{synopt:{cmd:e(reps)}}非缺失结果的数量{p_end}
{synopt:{cmd:e(bias)}}估计偏倚{p_end}
{synopt:{cmd:e(se)}}估计标准误差{p_end}
{synopt:{cmd:e(z0)}}中位数偏倚{p_end}
{synopt:{cmd:e(ci_normal)}}正态近似置信区间{p_end}
{synopt:{cmd:e(ci_percentile)}}百分位置信区间{p_end}
{synopt:{cmd:e(ci_bc)}}偏差修正的置信区间{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{pstd}
参数化，自助法{cmd:rocreg}在{cmd:e()}中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测数{p_end}
{synopt:{cmd:e(N_strata)}}协变量分层数{p_end}
{synopt:{cmd:e(N_clust)}}簇的数量{p_end}
{synopt:{cmd:e(level)}}自助法置信区间的置信水平{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:rocreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(classvars)}}分类变量列表{p_end}
{synopt:{cmd:e(refvar)}}状态变量，参考变量{p_end}
{synopt:{cmd:e(ctrlmodel)}}协变量调整规范{p_end}
{synopt:{cmd:e(ctrlcov)}}协变量调整变量{p_end}
{synopt:{cmd:e(pvc)}}百分位值计算方法{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(tiecorrected)}}如果指定，{cmd:tiecorrected}{p_end}
{synopt:{cmd:e(probit)}}如果指定，{cmd:probit}{p_end}
{synopt:{cmd:e(roccov)}}ROC协变量{p_end}
{synopt:{cmd:e(fprpts)}}用作假阳性率拟合点的点数{p_end}
{synopt:{cmd:e(ctrlfprall)}}指示是否所有观察到的假阳性率都被用作拟合点{p_end}
{synopt:{cmd:e(nobootstrap)}}如果指定，{cmd:nobootstrap}{p_end}
{synopt:{cmd:e(rngstate)}}自助法使用的随机数状态{p_end}
{synopt:{cmd:e(breps)}}自助法重抽样的数量{p_end}
{synopt:{cmd:e(bootcc)}}如果指定，{cmd:bootcc}{p_end}
{synopt:{cmd:e(nobstrata)}}如果指定，{cmd:nobstrata}{p_end}
{synopt:{cmd:e(clustvar)}}簇变量名称{p_end}
{synopt:{cmd:e(exp}{it:#}{cmd:)}}第{it:#}个统计量的表达式{p_end}
{synopt:{cmd:e(vce)}}{cmd:bootstrap}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}（或{cmd:b}如果{opt nobootstrap}被指定）{p_end}
{synopt:{cmd:e(predict)}}用于实现{cmd:predict}的程序{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计值的方差-协方差矩阵{p_end}
{synopt:{cmd:e(b_bs)}}自助法估计{p_end}
{synopt:{cmd:e(reps)}}非缺失结果的数量{p_end}
{synopt:{cmd:e(bias)}}估计偏倚{p_end}
{synopt:{cmd:e(se)}}估计标准误差{p_end}
{synopt:{cmd:e(z0)}}中位数偏倚{p_end}
{synopt:{cmd:e(ci_normal)}}正态近似置信区间{p_end}
{synopt:{cmd:e(ci_percentile)}}百分位置信区间{p_end}
{synopt:{cmd:e(ci_bc)}}偏差修正的置信区间{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{pstd}
参数化，最大似然{cmd:rocreg}在{cmd:e()}中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测数{p_end}
{synopt:{cmd:e(N_clust)}}簇的数量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:rocreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(classvars)}}分类变量列表{p_end}
{synopt:{cmd:e(refvar)}}状态变量{p_end}
{synopt:{cmd:e(ctrlmodel)}}{cmd:linear}{p_end}
{synopt:{cmd:e(ctrlcov)}}控制群体协变量{p_end}
{synopt:{cmd:e(roccov)}}ROC协变量{p_end}
{synopt:{cmd:e(probit)}}如果指定，{cmd:probit}{p_end}
{synopt:{cmd:e(pvc)}}{cmd:normal}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}簇变量名称{p_end}
{synopt:{cmd:e(vce)}}如果使用了聚类则为{cmd:cluster}{p_end}
{synopt:{cmd:e(vcetype)}}如果使用了多个分类器或聚类则为{cmd:robust}{p_end}
{synopt:{cmd:e(ml)}}如果指定，{cmd:ml}{p_end}
{synopt:{cmd:e(predict)}}用于实现{cmd:predict}的程序{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计值的方差-协方差矩阵{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rocreg.sthlp>}