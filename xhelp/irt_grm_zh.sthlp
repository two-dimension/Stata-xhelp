{smcl}
{* *! version 1.0.5  24jan2019}{...}
{viewerdialog irt "dialog irt"}{...}
{viewerdialog "svy: irt" "dialog irt, message(-svy-) name(svy_irt)"}{...}
{vieweralsosee "[IRT] irt grm" "mansection IRT irtgrm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt grm postestimation" "help irt grm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt" "help irt_zh"}{...}
{vieweralsosee "[IRT] irt constraints" "help irt constraints"}{...}
{vieweralsosee "[IRT] irt rsm" "help irt rsm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "irt grm##syntax"}{...}
{viewerjumpto "Menu" "irt grm##menu_irt"}{...}
{viewerjumpto "Description" "irt grm##description"}{...}
{viewerjumpto "Links to PDF documentation" "irt_grm_zh##linkspdf"}{...}
{viewerjumpto "Options" "irt grm##options"}{...}
{viewerjumpto "Examples" "irt grm##examples"}{...}
{viewerjumpto "Video example" "irt grm##video"}{...}
{viewerjumpto "Stored results" "irt grm##results"}
{help irt_grm:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[IRT] irt grm} {hline 2}}等级响应模型{p_end}
{p2col:}({mansection IRT irtgrm:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:irt grm}
{varlist}
{ifin}
[{help irt grm##weight:{it:weight}}]
[{cmd:,} {it:options}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
包括 help opt_irt_model

{syntab:SE/Robust}
包括 help opt_irt_vce

{syntab:报告}
包括 help opt_irt_report
{synopt :{help irt_grm##display_options:{it:display_options}}}控制
包括 help opt_irt_display

{syntab:整合}
{synopt :{cmdab:intm:ethod(}{help irt_grm##intmethod:{it:intmethod}}{cmd:)}}整合方法{p_end}
包括 help opt_irt_int

{syntab:最大化}
{synopt :{it:{help irt_grm##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt :{cmdab:startv:alues(}{it:{help irt_grm##startvalues:svmethod}}{cmd:)}}获得起始值的方法{p_end}
包括 help opt_irt_nodb
{synoptline}
{p2colreset}{...}

包括 help irt_intmethod_table

包括 help irt_syntax_notes
{p 4 6 2}
有关估计后可用功能，请参见 {manhelp irt_grm_postestimation IRT:irt grm postestimation}。


包括 help menu_irt


{marker description}{...}
{title:描述}

{pstd}
{cmd:irt grm} 适用于顺序项目的等级响应模型。在等级响应模型中，项目的难度和区分度各不相同。该模型是对有序分类项目的 2PL 模型的扩展。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection IRT irtgrmQuickstart:快速入门}

        {mansection IRT irtgrmRemarksandexamples:备注和示例}

        {mansection IRT irtgrmMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

包括 help irt_model_opts

{dlgtab:SE/Robust}

包括 help irt_vce_opt

{dlgtab:报告}

包括 help irt_display_opts

{dlgtab:整合}

包括 help irt_int_opts

{dlgtab:最大化}

包括 help irt_max_opts

包括 help irt_nodlg_opts


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse charity}

{pstd}拟合 GRM{p_end}
{phang2}{cmd:. irt grm ta1-ta5}

{pstd}使用 GRM 参数绘制边界特征曲线作为 {cmd:ta1} 的 theta 函数{p_end}
{phang2}{cmd:. irtgraph icc ta1, blocation}

{pstd}与上述相同，但绘制类别特征曲线{p_end}
{phang2}{cmd:. irtgraph icc ta1, xlabel(-4 -1.35 1.55 2.9 4, grid)}

{pstd}使用 GRM 参数绘制测试特征曲线{p_end}
{phang2}{cmd:. irtgraph tcc, thetalines(-1.96 0 1.96)}{p_end}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=I_2BBUqa9cY":使用 Stata 的项目响应理论：等级响应模型（GRM）}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:irt grm} 在 {cmd:e()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差的数量{p_end}
{synopt:{cmd:e(k_rs)}}方差的数量{p_end}
{synopt:{cmd:e(irt_k_eq)}}IRT 方程的数量{p_end}
{synopt:{cmd:e(k_items1)}}第一个 IRT 方程中的项目数量{p_end}
{synopt:{cmd:e(k_cat}{it:#}{cmd:)}}第 {it:#} 个项目的类别数量，顺序{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(N_groups)}}组的数量{p_end}
{synopt:{cmd:e(n_quad)}}积分点的数量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果目标模型收敛则为 {cmd:1}，否则为 {cmd:0}{p_end}

{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:gsem}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:irt}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(model1)}}{cmd:grm}{p_end}
{synopt:{cmd:e(items1)}}第一个 IRT 方程中项目的名称{p_end}
{synopt:{cmd:e(depvar)}}所有项目变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(groupvar)}}组变量的名称{p_end}
{synopt:{cmd:e(family}{it:#}{cmd:)}}第 {it:#} 个 {it:item} 的族{p_end}
{synopt:{cmd:e(link}{it:#}{cmd:)}}第 {it:#} 个 {it:item} 的链接{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是执行最大化还是最小化{p_end}
{synopt:{cmd:e(method)}}估计方法： {cmd:ml}{p_end}
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
{synopt:{cmd:e(b)}}系数向量，斜率-截距参数化{p_end}
{synopt:{cmd:e(b_pclass)}}参数类{p_end}
{synopt:{cmd:e(cat}{it:#}{cmd:)}}第 {it:#} 个项目的类别，顺序{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}
{synopt:{cmd:e(groupvalue)}}在 {cmd:e(groupvar)} 中的组值向量{p_end}
{synopt:{cmd:e(nobs)}}每组的观察数量向量{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irt_grm.sthlp>}