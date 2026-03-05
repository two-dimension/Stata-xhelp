{smcl}
{* *! version 1.0.6  24jan2019}{...}
{viewerdialog irt "dialog irt"}{...}
{viewerdialog "svy: irt" "dialog irt, message(-svy-) name(svy_irt)"}{...}
{vieweralsosee "[IRT] irt 1pl" "mansection IRT irt1pl"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt 1pl postestimation" "help irt 1pl postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt" "help irt_zh"}{...}
{vieweralsosee "[IRT] irt 2pl" "help irt 2pl"}{...}
{vieweralsosee "[IRT] irt 3pl" "help irt 3pl"}{...}
{vieweralsosee "[IRT] irt constraints" "help irt constraints"}{...}
{vieweralsosee "" "--"}{...}
{findalias asgsemoirt}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "irt 1pl##syntax"}{...}
{viewerjumpto "Menu" "irt 1pl##menu_irt"}{...}
{viewerjumpto "Description" "irt 1pl##description"}{...}
{viewerjumpto "Links to PDF documentation" "irt_1pl_zh##linkspdf"}{...}
{viewerjumpto "Options" "irt 1pl##options"}{...}
{viewerjumpto "Examples" "irt 1pl##examples"}{...}
{viewerjumpto "Video example" "irt 1pl##video"}{...}
{viewerjumpto "Stored results" "irt 1pl##results"}
{help irt_1pl:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[IRT] irt 1pl} {hline 2}}单参数逻辑模型{p_end}
{p2col:}({mansection IRT irt1pl:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:irt 1pl}
{varlist}
{ifin}
[{help irt 1pl##weight:{it:weight}}]
[{cmd:,} {it:options}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
包含 help opt_irt_model

{syntab:SE/鲁棒}
包含 help opt_irt_vce

{syntab:报告}
包含 help opt_irt_report
{synopt :{help irt_1pl##display_options:{it:display_options}}} 控制
包含 help opt_irt_display

{syntab:积分}
{synopt :{cmdab:intm:ethod(}{help irt_1pl##intmethod:{it:intmethod}}{cmd:)}}积分方法{p_end}
包含 help opt_irt_int

{syntab:最大化}
{synopt :{it:{help irt_1pl##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt :{cmdab:startv:alues(}{it:{help irt_1pl##startvalues:svmethod}}{cmd:)}}获取起始值的方法{p_end}
包含 help opt_irt_nodb
{synoptline}
{p2colreset}{...}

包含 help irt_intmethod_table

包含 help irt_syntax_notes
{p 4 6 2}
请参阅 {manhelp irt_1pl_postestimation IRT:irt 1pl postestimation} 了解估计后可用的特性。


包含 help menu_irt


{marker description}{...}
{title:描述}

{pstd}
{cmd:irt 1pl} 对二元项目拟合单参数逻辑（1PL）模型。在1PL模型中，项目的难度各不相同，但共享相同的区分参数。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection IRT irt1plQuickstart:快速入门}

        {mansection IRT irt1plRemarksandexamples:备注和示例}

        {mansection IRT irt1plMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

包含 help irt_model_opts

{dlgtab:SE/鲁棒}

包含 help irt_vce_opt

{dlgtab:报告}

包含 help irt_display_opts

{dlgtab:积分}

包含 help irt_int_opts

{dlgtab:最大化}

包含 help irt_max_opts

包含 help irt_nodlg_opts


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse masc1}

{pstd}将1PL模型拟合到二元项目 {cmd:q1-q9}{p_end}
{phang2}{cmd:. irt 1pl q1-q9}

{pstd}重放估计的IRT参数表，按参数而非项目排序，并按难度升序排列{p_end}
{phang2}{cmd:. estat report, byparm sort(b)}

{pstd}使用1PL参数绘制项目特征曲线{p_end}
{phang2}{cmd:. irtgraph icc, blocation legend(pos(3) col(1)}
         {cmd:ring(1) size(small)) xlabel(, alt)}

{pstd}使用1PL参数绘制测试特征曲线{p_end}
{phang2}{cmd:. irtgraph tcc, thetalines(-1.96 0 1.96)}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=-qsvteo18K4":使用Stata进行项目反应理论：单参数逻辑（1PL）模型}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:irt 1pl} 将以下内容存储在 {cmd:e()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2:标量}{p_end}
{synopt:{cmd:e(N)}}观察的数量{p_end}
{synopt:{cmd:e(k)}}参数的数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差的数量{p_end}
{synopt:{cmd:e(k_rs)}}方差的数量{p_end}
{synopt:{cmd:e(irt_k_eq)}} IRT 方程的数量{p_end}
{synopt:{cmd:e(k_items1)}} 第一个IRT方程中的项目数量{p_end}
{synopt:{cmd:e(ll)}} 对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类的数量{p_end}
{synopt:{cmd:e(N_groups)}}组的数量{p_end}
{synopt:{cmd:e(n_quad)}}积分点的数量{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示目标模型收敛，{cmd:0} 否则{p_end}

{p2col 5 25 29 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:gsem}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:irt}{p_end}
{synopt:{cmd:e(cmdline)}}键入的命令{p_end}
{synopt:{cmd:e(model1)}}{cmd:1pl}{p_end}
{synopt:{cmd:e(items1)}}第一个IRT方程中项目的名称{p_end}
{synopt:{cmd:e(depvar)}}所有项目变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(groupvar)}}组变量的名称{p_end}
{synopt:{cmd:e(family}{it:#}{cmd:)}}第 {it:#} 个项目的族{p_end}
{synopt:{cmd:e(link}{it:#}{cmd:)}}第 {it:#} 个项目的链接{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是执行最大化还是最小化{p_end}
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

{p2col 5 20 24 2:矩阵}{p_end}
{synopt:{cmd:e(_N)}}每个项目的样本大小{p_end}
{synopt:{cmd:e(b)}}系数向量，斜率-截距参数化{p_end}
{synopt:{cmd:e(b_pclass)}}参数类{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}
{synopt:{cmd:e(groupvalue)}}在 {cmd:e(groupvar)} 中组值的向量{p_end}
{synopt:{cmd:e(nobs)}}每组观察数量的向量{p_end}

{p2col 5 20 24 2:函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irt_1pl.sthlp>}