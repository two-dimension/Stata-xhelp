{smcl}
{* *! version 1.0.5  06feb2019}{...}
{viewerdialog irt "dialog irt"}{...}
{viewerdialog "svy: irt" "dialog irt, message(-svy-) name(svy_irt)"}{...}
{vieweralsosee "[IRT] irt 3pl" "mansection IRT irt3pl"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt 3pl postestimation" "help irt 3pl postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt" "help irt_zh"}{...}
{vieweralsosee "[IRT] irt 1pl" "help irt 1pl"}{...}
{vieweralsosee "[IRT] irt 2pl" "help irt 2pl"}{...}
{vieweralsosee "[IRT] irt constraints" "help irt constraints"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "irt 3pl##syntax"}{...}
{viewerjumpto "Menu" "irt 3pl##menu_irt"}{...}
{viewerjumpto "Description" "irt 3pl##description"}{...}
{viewerjumpto "Links to PDF documentation" "irt_3pl_zh##linkspdf"}{...}
{viewerjumpto "Options" "irt 3pl##options"}{...}
{viewerjumpto "Examples" "irt 3pl##examples"}{...}
{viewerjumpto "Video example" "irt 3pl##video"}{...}
{viewerjumpto "Stored results" "irt 3pl##results"}
{help irt_3pl:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[IRT] irt 3pl} {hline 2}}三参数逻辑模型{p_end}
{p2col:}({mansection IRT irt3pl:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:irt 3pl}
{varlist}
{ifin}
[{help irt 3pl##weight:{it:weight}}]
[{cmd:,} {it:options}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
INCLUDE help opt_irt_model
{synopt :{opt sepg:uessing}}估计每个项目的单独伪猜测参数{p_end}
{synopt :{opt gsepg:uessing}}估计每组的单独伪猜测参数{p_end}

{syntab:SE/Robust}
INCLUDE help opt_irt_vce

{syntab:Reporting}
INCLUDE help opt_irt_report
{synopt :{help irt_3pl##display_options:{it:display_options}}}控制
INCLUDE help opt_irt_display

{syntab:Integration}
{synopt :{cmdab:intm:ethod(}{help irt_3pl##intmethod:{it:intmethod}}{cmd:)}}积分方法{p_end}
INCLUDE help opt_irt_int

{syntab:Maximization}
{synopt :{it:{help irt_3pl##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt :{cmdab:startv:alues(}{it:{help irt_3pl##startvalues:svmethod}}{cmd:)}}获取起始值的方法{p_end}
INCLUDE help opt_irt_nodb
{synoptline}
{p2colreset}{...}

INCLUDE help irt_intmethod_table

INCLUDE help irt_syntax_notes
{p 4 6 2}
请参见 {manhelp irt_3pl_postestimation IRT:irt 3pl 后估计}，以获取估计后可用的功能。

INCLUDE help menu_irt

{marker description}{...}
{title:描述}

{pstd}
{cmd:irt 3pl} 对二元项目拟合三参数逻辑 (3PL) 模型。
在 3PL 模型中，项目在其难度和区分度上各不相同，并允许猜测的可能性。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection IRT irt3plQuickstart:快速入门}

        {mansection IRT irt3plRemarksandexamples:备注和示例}

        {mansection IRT irt3plMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。

{marker options}{...}
{title:选项}

INCLUDE help irt_model_opts

{phang}
{cmd:sepguessing} 指定为每个项目估计一个单独的伪猜测参数。此选项很少使用；请参见
{mansection IRT irt3plRemarksandexamplessepguess:技术说明}，位于 {bf:[IRT] irt 3pl} 中。

{phang}
{cmd:gsepguessing} 指定为每组估计单独的伪猜测参数。此选项仅在
拟合组模型时允许使用。

{dlgtab:SE/Robust}

INCLUDE help irt_vce_opt

{dlgtab:Reporting}

INCLUDE help irt_display_opts

{dlgtab:Integration}

INCLUDE help irt_int_opts

{dlgtab:Maximization}

INCLUDE help irt_max_opts

INCLUDE help irt_nodlg_opts

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse masc1}

{pstd}拟合一个 3PL 模型到二元项目 {cmd:q1-q9}{p_end}
{phang2}{cmd:. irt 3pl q1-q9}

{pstd}重放估计的 IRT 参数表，按参数而非项目排序输出，并以困难程度升序排列{p_end}
{phang2}{cmd:. estat report, byparm sort(b)}

{pstd}使用 3PL 参数绘制最困难项目的项目特征曲线{p_end}
{phang2}{cmd:. irtgraph icc q7, blocation ylabel(0 0.09 0.545 1)}

{pstd}使用 3PL 参数绘制测试特征曲线{p_end}
{phang2}{cmd:. irtgraph tcc, thetalines(-1.96 0 1.96)}

{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=wOsgxpE_pEA":使用 Stata 进行项目反应理论：三参数逻辑 (3PL) 模型}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:irt 3pl} 将以下内容存储在 {cmd:e()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(k)}}参数个数{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中方程的数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差的数量{p_end}
{synopt:{cmd:e(k_rs)}}方差的数量{p_end}
{synopt:{cmd:e(irt_k_eq)}}IRT 方程的数量{p_end}
{synopt:{cmd:e(k_items1)}}第一个 IRT 方程中的项目数量{p_end}
{synopt:{cmd:e(sepguess1)}}{cmd:1} 如果模型包含单独的伪猜测参数{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数{p_end}
{synopt:{cmd:e(N_groups)}}组数{p_end}
{synopt:{cmd:e(n_quad)}}积分点数{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果目标模型收敛，{cmd:0} 否则{p_end}

{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:gsem}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:irt}{p_end}
{synopt:{cmd:e(cmdline)}}命令如输入{p_end}
{synopt:{cmd:e(model1)}}{cmd:3pl}{p_end}
{synopt:{cmd:e(items1)}}第一个 IRT 方程中的项目名称{p_end}
{synopt:{cmd:e(depvar)}}所有项目变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(groupvar)}}组变量的名称{p_end}
{synopt:{cmd:e(family}{it:#}{cmd:)}}第 {it:#} 个 {it:item} 的族{p_end}
{synopt:{cmd:e(link}{it:#}{cmd:)}}第 {it:#} 个 {it:item} 的连接{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是否执行最大化或最小化{p_end}
{synopt:{cmd:e(method)}}估计方法：{cmd:ml}{p_end}
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
{synopt:{cmd:e(b_pclass)}}参数类别{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}
{synopt:{cmd:e(groupvalue)}} {cmd:e(groupvar)} 中的组值向量{p_end}
{synopt:{cmd:e(nobs)}}每组观察数的向量{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irt_3pl.sthlp>}