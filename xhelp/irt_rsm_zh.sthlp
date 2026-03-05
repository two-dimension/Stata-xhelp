{smcl}
{* *! version 1.0.6  24jan2019}{...}
{viewerdialog irt "dialog irt"}{...}
{viewerdialog "svy: irt" "dialog irt, message(-svy-) name(svy_irt)"}{...}
{vieweralsosee "[IRT] irt rsm" "mansection IRT irtrsm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt rsm postestimation" "help irt rsm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt" "help irt_zh"}{...}
{vieweralsosee "[IRT] irt constraints" "help irt constraints"}{...}
{vieweralsosee "[IRT] irt pcm" "help irt pcm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "irt rsm##syntax"}{...}
{viewerjumpto "Menu" "irt rsm##menu_irt"}{...}
{viewerjumpto "Description" "irt rsm##description"}{...}
{viewerjumpto "Links to PDF documentation" "irt_rsm_zh##linkspdf"}{...}
{viewerjumpto "Options" "irt rsm##options"}{...}
{viewerjumpto "Examples" "irt rsm##examples"}{...}
{viewerjumpto "Video example" "irt rsm##video"}{...}
{viewerjumpto "Stored results" "irt rsm##results"}
{help irt_rsm:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[IRT] irt rsm} {hline 2}}评分量表模型{p_end}
{p2col:}({mansection IRT irtrsm:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:irt rsm}
{varlist}
{ifin}
[{help irt rsm##weight:{it:权重}}]
[{cmd:,} {it:选项}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
INCLUDE help opt_irt_model

{syntab:SE/稳健性}
INCLUDE help opt_irt_vce

{syntab:报告}
INCLUDE help opt_irt_report
{synopt :{help irt_rsm##display_options:{it:显示选项}}}控制
INCLUDE help opt_irt_display

{syntab:集成}
{synopt :{cmdab:intm:ethod(}{help irt_rsm##intmethod:{it:集成方法}}{cmd:)}}集成方法{p_end}
INCLUDE help opt_irt_int

{syntab:最大化}
{synopt :{it:{help irt_rsm##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt :{cmdab:startv:alues(}{it:{help irt_rsm##startvalues:svmethod}}{cmd:)}}获取起始值的方法{p_end}
INCLUDE help opt_irt_nodb
{synoptline}
{p2colreset}{...}

INCLUDE help irt_intmethod_table

INCLUDE help irt_syntax_notes
{p 4 6 2}
有关估计后可用特性的更多信息，请参见 {manhelp irt_rsm_postestimation IRT:irt rsm postestimation}。


INCLUDE help menu_irt


{marker description}{...}
{title:描述}

{pstd}
{cmd:irt rsm} 适用于有序项目的评分量表模型。在评分量表模型中，项目的难度不同，但共享相同的区分参数。相邻结果之间的难度距离在所有项目中是相等的。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection IRT irtrsmQuickstart:快速开始}

        {mansection IRT irtrsmRemarksandexamples:备注和示例}

        {mansection IRT irtrsmMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

INCLUDE help irt_model_opts

{dlgtab:SE/稳健性}

INCLUDE help irt_vce_opt

{dlgtab:报告}

INCLUDE help irt_display_opts

{dlgtab:集成}

INCLUDE help irt_int_opts

{dlgtab:最大化}

INCLUDE help irt_max_opts

INCLUDE help irt_nodlg_opts


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse charity}

{pstd}拟合 RSM{p_end}
{phang2}{cmd:. irt rsm ta1-ta5}

{pstd}使用 RSM 参数绘制 {cmd:ta1} 的分类特征曲线随θ变化的图{p_end}
{phang2}{cmd:. irtgraph icc ta1, xlabel(-4 -.993 1.05 2.18 4, grid)}

{pstd}使用 RSM 参数绘制所有项目第一类的分类特征曲线{p_end}
{phang2}{cmd:. irtgraph icc 0.ta*}{p_end}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=q5trE0r2sv4":使用 Stata 的项目反应理论：评分量表模型 (RSMs)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:irt rsm} 在 {cmd:e()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)}中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差数量{p_end}
{synopt:{cmd:e(k_rs)}}方差数量{p_end}
{synopt:{cmd:e(irt_k_eq)}}IRT 方程数量{p_end}
{synopt:{cmd:e(k_items1)}}第一个 IRT 方程中的项目数量{p_end}
{synopt:{cmd:e(k_out}{it:#}{cmd:)}}第 {it:#} 项的类别数量，有序{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数{p_end}
{synopt:{cmd:e(N_groups)}}组数{p_end}
{synopt:{cmd:e(n_quad)}}积分点数量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果目标模型收敛则为 {cmd:1}，否则为 {cmd:0}{p_end}

{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:gsem}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:irt}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(model1)}}{cmd:rsm}{p_end}
{synopt:{cmd:e(items1)}}第一个 IRT 方程中的项目名称{p_end}
{synopt:{cmd:e(depvar)}}所有项目变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(groupvar)}}组变量的名称{p_end}
{synopt:{cmd:e(family}{it:#}{cmd:)}}第 {it:#} 个{it:item}的家族{p_end}
{synopt:{cmd:e(link}{it:#}{cmd:)}}第 {it:#} 个{it:item}的链接{p_end}
{synopt:{cmd:e(intmethod)}}集成方法{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的{it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是执行
最大化还是最小化{p_end}
{synopt:{cmd:e(method)}}估计方法： {cmd:ml}{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算
校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(footnote)}}用于实现脚注
显示的程序{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(_N)}}每个项目的样本大小{p_end}
{synopt:{cmd:e(b)}}系数向量，斜截距参数化{p_end}
{synopt:{cmd:e(b_pclass)}}参数类别{p_end}
{synopt:{cmd:e(out}{it:#}{cmd:)}}第 {it:#} 个项目的类别，有序{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}
{synopt:{cmd:e(groupvalue)}}在 {cmd:e(groupvar)} 中的组值向量{p_end}
{synopt:{cmd:e(nobs)}}每组观测数量的向量{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irt_rsm.sthlp>}