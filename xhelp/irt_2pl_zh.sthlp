{smcl}
{* *! version 1.0.6  24jan2019}{...}
{viewerdialog irt "dialog irt"}{...}
{viewerdialog "svy: irt" "dialog irt, message(-svy-) name(svy_irt)"}{...}
{vieweralsosee "[IRT] irt 2pl" "mansection IRT irt2pl"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt 2pl postestimation" "help irt 2pl postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt" "help irt_zh"}{...}
{vieweralsosee "[IRT] irt 1pl" "help irt 1pl"}{...}
{vieweralsosee "[IRT] irt 3pl" "help irt 3pl"}{...}
{vieweralsosee "[IRT] irt constraints" "help irt constraints"}{...}
{vieweralsosee "" "--"}{...}
{findalias asgsemtirt}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "irt 2pl##syntax"}{...}
{viewerjumpto "Menu" "irt 2pl##menu_irt"}{...}
{viewerjumpto "Description" "irt 2pl##description"}{...}
{viewerjumpto "Links to PDF documentation" "irt_2pl_zh##linkspdf"}{...}
{viewerjumpto "Options" "irt 2pl##options"}{...}
{viewerjumpto "Examples" "irt 2pl##examples"}{...}
{viewerjumpto "Video example" "irt 2pl##video"}{...}
{viewerjumpto "Stored results" "irt 2pl##results"}
{help irt_2pl:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[IRT] irt 2pl} {hline 2}}双参数逻辑模型{p_end}
{p2col:}({mansection IRT irt2pl:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:irt 2pl}
{varlist}
{ifin}
[{help irt 2pl##weight:{it:权重}}]
[{cmd:,} {it:选项}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
包含 帮助 选项_IRT模型

{syntab:SE/稳健}
包含 帮助 选项_IRT_方差估计

{syntab:报告}
包含 帮助 选项_IRT_报告
{synopt :{help irt_2pl##display_options:{it:显示选项}}}控制
包含 帮助 选项_IRT_显示

{syntab:集成}
{synopt :{cmdab:intm:ethod(}{help irt_2pl##intmethod:{it:集成方法}}{cmd:)}}集成方法{p_end}
包含 帮助 选项_IRT_集成

{syntab:最大化}
{synopt :{it:{help irt_2pl##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt :{cmdab:startv:alues(}{it:{help irt_2pl##startvalues:svmethod}}{cmd:)}}获取起始值的方法{p_end}
包含 帮助 选项_IRT_不对话框
{synoptline}
{p2colreset}{...}

包含 帮助 IRT_集成方法表

包含 帮助 IRT_语法说明
{p 4 6 2}
有关估计后可用功能，请参见 {manhelp irt_2pl_postestimation IRT:irt 2pl 后估计}。


包含 帮助 menu_irt


{marker description}{...}
{title:描述}

{pstd}
{cmd:irt 2pl} 将双参数逻辑（2PL）模型拟合到二元项目中。在
2PL模型中，项目在其难度和区分度上有所不同。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection IRT irt2plQuickstart:快速入门}

        {mansection IRT irt2plRemarksandexamples:备注和示例}

        {mansection IRT irt2plMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

包含 帮助 IRT_模型选项

{dlgtab:SE/稳健}

包含 帮助 IRT_方差选项

{dlgtab:报告}

包含 帮助 IRT_显示选项

{dlgtab:集成}

包含 帮助 IRT_集成选项

{dlgtab:最大化}

包含 帮助 IRT_最大化选项

包含 帮助 IRT_不对话框选项


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse masc1}

{pstd}将2PL模型拟合到二元项目 {cmd:q1-q9}{p_end}
{phang2}{cmd:. irt 2pl q1-q9}

{pstd}重放估计的IRT参数的表，按参数而不是按项目排序，并以
区分度的升序排列{p_end}
{phang2}{cmd:. estat report, byparm sort(a)}

{pstd}使用2PL参数绘制最高和最低项目的项目特征曲线{p_end}
{phang2}{cmd:. irtgraph icc q7 q1, blocation}

{pstd}使用2PL参数绘制测试特征曲线{p_end}
{phang2}{cmd:. irtgraph tcc, thetalines(-1.96 0 1.96)}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=0S94pvirTLE":使用Stata进行项目反应理论：双参数逻辑（2PL）模型}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:irt 2pl} 在 {cmd:e()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差的数量{p_end}
{synopt:{cmd:e(k_rs)}}方差的数量{p_end}
{synopt:{cmd:e(irt_k_eq)}} IRT 方程的数量{p_end}
{synopt:{cmd:e(k_items1)}} 第一个IRT方程中的项目数量{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(N_groups)}}组数量{p_end}
{synopt:{cmd:e(n_quad)}}积分点数量{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果目标模型收敛则为{cmd:1}，否则为{cmd:0}{p_end}

{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:gsem}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:irt}{p_end}
{synopt:{cmd:e(cmdline)}}命令如所输入{p_end}
{synopt:{cmd:e(model1)}}{cmd:2pl}{p_end}
{synopt:{cmd:e(items1)}}第一个IRT方程中项目的名称{p_end}
{synopt:{cmd:e(depvar)}}所有项目变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(groupvar)}}组变量的名称{p_end}
{synopt:{cmd:e(family}{it:#}{cmd:)}}第 {it:#} 个 {it:项目} 的族{p_end}
{synopt:{cmd:e(link}{it:#}{cmd:)}}第 {it:#} 个 {it:项目} 的链接{p_end}
{synopt:{cmd:e(intmethod)}}集成方法{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype} {p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是否执行
最大化或最小化{p_end}
{synopt:{cmd:e(method)}}估计方法： {cmd:ml}{p_end}
{synopt:{cmd:e(ml_method)}} {cmd:ml} 方法的类型{p_end}
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
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础方差{p_end}
{synopt:{cmd:e(groupvalue)}} {cmd:e(groupvar)} 中的组值向量{p_end}
{synopt:{cmd:e(nobs)}}每组的观察值数量向量{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irt_2pl.sthlp>}