{smcl}
{* *! version 1.0.4  24jan2019}{...}
{viewerdialog irt "dialog irt"}{...}
{viewerdialog "svy: irt" "dialog irt, message(-svy-) name(svy_irt)"}{...}
{vieweralsosee "[IRT] irt pcm" "mansection IRT irtpcm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt pcm postestimation" "help irt pcm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt" "help irt_zh"}{...}
{vieweralsosee "[IRT] irt constraints" "help irt constraints"}{...}
{vieweralsosee "[IRT] irt grm" "help irt grm"}{...}
{vieweralsosee "[IRT] irt rsm" "help irt rsm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "irt pcm##syntax"}{...}
{viewerjumpto "Menu" "irt pcm##menu_irt"}{...}
{viewerjumpto "Description" "irt pcm##description"}{...}
{viewerjumpto "Links to PDF documentation" "irt_pcm_zh##linkspdf"}{...}
{viewerjumpto "Options" "irt pcm##options"}{...}
{viewerjumpto "Examples" "irt pcm##examples"}{...}
{viewerjumpto "Stored results" "irt pcm##results"}
{help irt_pcm:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[IRT] irt pcm} {hline 2}}部分信用模型{p_end}
{p2col:}({mansection IRT irtpcm:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
部分信用模型

{p 8 15 2}
{cmd:irt pcm}
{varlist}
{ifin}
[{help irt pcm##weight:{it:weight}}]
[{cmd:,} {it:options}]


{pstd}
广义部分信用模型

{p 8 15 2}
{cmd:irt gpcm}
{varlist}
{ifin}
[{help irt pcm##weight:{it:weight}}]
[{cmd:,} {it:options}]


{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
包含 帮助 选项_irt_model

{syntab:SE/稳健性}
包含 帮助 选项_irt_vce

{syntab:报告}
包含 帮助 选项_irt_report
{synopt :{help irt_pcm##display_options:{it:display_options}}}控制
包含 帮助 选项_irt_display

{syntab:积分}
{synopt :{cmdab:intm:ethod(}{help irt_pcm##intmethod:{it:intmethod}}{cmd:)}}积分方法{p_end}
包含 帮助 选项_irt_int

{syntab:最大化}
{synopt :{it:{help irt_pcm##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt :{cmdab:startv:alues(}{it:{help irt_pcm##startvalues:svmethod}}{cmd:)}}获取起始值的方法{p_end}
包含 帮助 选项_irt_nodb
{synoptline}
{p2colreset}{...}

包含 帮助 irt_intmethod_table

包含 帮助 irt_syntax_notes
{p 4 6 2}
请参见 {manhelp irt_pcm_postestimation IRT:irt pcm postestimation} 获取估计后可用的功能。


包含 帮助 menu_irt


{marker description}{...}
{title:描述}

{pstd}
{cmd:irt pcm} 为有序项目拟合部分信用模型。在部分信用模型中，项目的难度不同，但共享相同的区分参数。

{pstd}
{cmd:irt gpcm} 为有序项目拟合广义部分信用模型 (GPCM)。在 GPCM 中，项目的难度和区分度各不相同。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection IRT irtpcmQuickstart:快速入门}

        {mansection IRT irtpcmRemarksandexamples:备注和示例}

        {mansection IRT irtpcmMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

包含 帮助 irt_model_opts

{dlgtab:SE/稳健性}

包含 帮助 irt_vce_opt

{dlgtab:报告}

包含 帮助 irt_display_opts

{dlgtab:积分}

包含 帮助 irt_int_opts

{dlgtab:最大化}

包含 帮助 irt_max_opts

包含 帮助 irt_nodlg_opts


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse alike}

{pstd}拟合一个 PCM{p_end}
{phang2}{cmd:. irt pcm v1-v8}

{pstd}使用 PCM 参数绘制类别特征曲线相对于 {cmd:v4} 的情况下{p_end}
{phang2}{cmd:. irtgraph icc v4, xlabel(-4 -.33 .71 4, grid)}

{pstd}使用 PCM 参数绘制类别特征曲线相对于 {cmd:v2} 的情况下，使用反转来表明具有反转阈值的类别被其它两个类别所支配{p_end}
{phang2}{cmd:. irtgraph icc v2, xlabel(-4 -.51 -1.59 4, grid)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:irt pcm} 和 {cmd:irt gpcm} 在 {cmd:e()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差数量{p_end}
{synopt:{cmd:e(k_rs)}}方差数量{p_end}
{synopt:{cmd:e(irt_k_eq)}}IRT 方程数量{p_end}
{synopt:{cmd:e(k_items1)}}第一个 IRT 方程中的项目数量{p_end}
{synopt:{cmd:e(k_out}{it:#}{cmd:)}}第 {it:#} 个项目的类别数量，有序{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(N_groups)}}组数量{p_end}
{synopt:{cmd:e(n_quad)}}积分点数量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果目标模型收敛，{cmd:0} 否则{p_end}

{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:gsem}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:irt}{p_end}
{synopt:{cmd:e(cmdline)}}输入时的命令{p_end}
{synopt:{cmd:e(model1)}}{cmd:pcm} 或 {cmd:gpcm}{p_end}
{synopt:{cmd:e(items1)}}第一个 IRT 方程中项目的名称{p_end}
{synopt:{cmd:e(depvar)}}所有项目变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名{p_end}
{synopt:{cmd:e(groupvar)}}组变量名{p_end}
{synopt:{cmd:e(family}{it:#}{cmd:)}}第 {it:#} 个 {it:item} 的分布家族{p_end}
{synopt:{cmd:e(link}{it:#}{cmd:)}}第 {it:#} 个 {it:item} 的链接{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的{it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；是否执行最大化或最小化{p_end}
{synopt:{cmd:e(method)}}估计方法： {cmd:ml}{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于执行 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于执行 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(footnote)}}用于显示脚注的程序{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(_N)}}每个项目的样本大小{p_end}
{synopt:{cmd:e(b)}}系数向量，斜率-截距参数化{p_end}
{synopt:{cmd:e(b_pclass)}}参数类{p_end}
{synopt:{cmd:e(out}{it:#}{cmd:)}}第 {it:#} 个项目的类别，有序{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}
{synopt:{cmd:e(groupvalue)}}{cmd:e(groupvar)} 中的组值向量{p_end}
{synopt:{cmd:e(nobs)}}每组观察数的向量{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irt_pcm.sthlp>}