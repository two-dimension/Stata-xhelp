{smcl}
{* *! version 1.0.5  24jan2019}{...}
{viewerdialog irt "dialog irt"}{...}
{viewerdialog "svy: irt" "dialog irt, message(-svy-) name(svy_irt)"}{...}
{vieweralsosee "[IRT] irt nrm" "mansection IRT irtnrm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt nrm postestimation" "help irt nrm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt" "help irt_zh"}{...}
{vieweralsosee "[IRT] irt constraints" "help irt constraints"}{...}
{vieweralsosee "[IRT] irt grm" "help irt grm"}{...}
{vieweralsosee "[IRT] irt pcm" "help irt pcm"}{...}
{vieweralsosee "[IRT] irt rsm" "help irt rsm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "irt nrm##syntax"}{...}
{viewerjumpto "Menu" "irt nrm##menu_irt"}{...}
{viewerjumpto "Description" "irt nrm##description"}{...}
{viewerjumpto "Links to PDF documentation" "irt_nrm_zh##linkspdf"}{...}
{viewerjumpto "Options" "irt nrm##options"}{...}
{viewerjumpto "Examples" "irt nrm##examples"}{...}
{viewerjumpto "Video example" "irt nrm##video"}{...}
{viewerjumpto "Stored results" "irt nrm##results"}
{help irt_nrm:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[IRT] irt nrm} {hline 2}}名义响应模型{p_end}
{p2col:}({mansection IRT irtnrm:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:irt nrm}
{varlist}
{ifin}
[{help irt nrm##weight:{it:weight}}]
[{cmd:,} {it:options}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
包含帮助选项 opt_irt_model

{syntab:SE/稳健性}
包含帮助选项 opt_irt_vce

{syntab:报告}
包含帮助选项 opt_irt_report
{synopt :{help irt_nrm##display_options:{it:display_options}}}控制
包含帮助选项 opt_irt_display

{syntab:积分}
{synopt :{cmdab:intm:ethod(}{help irt_nrm##intmethod:{it:intmethod}}{cmd:)}}积分方法{p_end}
包含帮助选项 opt_irt_int

{syntab:最大化}
{synopt :{it:{help irt_nrm##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt :{cmdab:startv:alues(}{it:{help irt_nrm##startvalues:svmethod}}{cmd:)}}获取起始值的方法{p_end}
包含帮助选项 opt_irt_nodb
{synoptline}
{p2colreset}{...}

包含帮助 irt_intmethod_table

包含帮助 irt_syntax_notes
{p 4 6 2}
有关估算后可用的功能，请参见 {manhelp irt_nrm_postestimation IRT:irt nrm postestimation}。

包含帮助 menu_irt


{marker description}{...}
{title:描述}

{pstd}
{cmd:irt nrm} 为分类项目拟合名义响应模型。在名义响应模型中，项目在难度和区分度上有所不同。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection IRT irtnrmQuickstart:快速开始}

        {mansection IRT irtnrmRemarksandexamples:注释和示例}

        {mansection IRT irtnrmMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

包含帮助 irt_model_opts

{dlgtab:SE/稳健性}

包含帮助 irt_vce_opt

{dlgtab:报告}

包含帮助 irt_display_opts

{dlgtab:积分}

包含帮助 irt_int_opts

{dlgtab:最大化}

包含帮助 irt_max_opts

包含帮助 irt_nodlg_opts


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse science}

{pstd}拟合 NRM{p_end}
{phang2}{cmd:. irt nrm q1-q4}

{pstd}使用 NRM 参数绘制 {cmd:q1} 的类别特征曲线与 theta 的关系{p_end}
{phang2}{cmd:. irtgraph icc q1, xlabel(-4 -.85 -1.35 -.56 4, grid alt)}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=05a5aqee_po":使用 Stata 的项目响应理论：名义响应模型 (NRMs)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:irt nrm} 在 {cmd:e()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差数量{p_end}
{synopt:{cmd:e(k_rs)}}方差数量{p_end}
{synopt:{cmd:e(irt_k_eq)}}IRT 方程数量{p_end}
{synopt:{cmd:e(k_items1)}}第一个 IRT 方程中的项目数量{p_end}
{synopt:{cmd:e(k_out}{it:#}{cmd:)}}第 {it:#} 项的结果数量，名义{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(N_groups)}}组数量{p_end}
{synopt:{cmd:e(n_quad)}}积分点数量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果目标模型收敛则为 {cmd:1}，否则为 {cmd:0}{p_end}

{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:gsem}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:irt}{p_end}
{synopt:{cmd:e(cmdline)}}命令按原样输入{p_end}
{synopt:{cmd:e(model1)}}{cmd:nrm}{p_end}
{synopt:{cmd:e(items1)}}第一个 IRT 方程中项目的名称{p_end}
{synopt:{cmd:e(depvar)}}所有项目变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估算输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量的名称{p_end}
{synopt:{cmd:e(groupvar)}}组变量的名称{p_end}
{synopt:{cmd:e(family}{it:#}{cmd:)}}第 {it:#} 项的家族{p_end}
{synopt:{cmd:e(link}{it:#}{cmd:)}}第 {it:#} 项的链接{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是执行最大化还是最小化{p_end}
{synopt:{cmd:e(method)}}估算方法： {cmd:ml}{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(footnote)}}用于实现脚注显示的程序{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(_N)}}每个项目的样本大小{p_end}
{synopt:{cmd:e(b)}}系数向量，斜截距参数化{p_end}
{synopt:{cmd:e(b_pclass)}}参数类{p_end}
{synopt:{cmd:e(out}{it:#}{cmd:)}}第 {it:#} 项的结果，名义{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础方差{p_end}
{synopt:{cmd:e(groupvalue)}}在 {cmd:e(groupvar)} 中的组值向量{p_end}
{synopt:{cmd:e(nobs)}}每组的观察数量向量{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估算样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irt_nrm.sthlp>}