{smcl}
{* *! version 1.2.21  22mar2019}{...}
{viewerdialog ucm "dialog ucm"}{...}
{vieweralsosee "[TS] ucm" "mansection TS ucm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] ucm postestimation" "help ucm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arima" "help arima_zh"}{...}
{vieweralsosee "[TS] sspace" "help sspace_zh"}{...}
{vieweralsosee "[TS] tsfilter" "help tsfilter_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] tssmooth" "help tssmooth_zh"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{viewerjumpto "Syntax" "ucm_zh##syntax"}{...}
{viewerjumpto "Menu" "ucm_zh##menu"}{...}
{viewerjumpto "Description" "ucm_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ucm_zh##linkspdf"}{...}
{viewerjumpto "Options" "ucm_zh##options"}{...}
{viewerjumpto "Examples" "ucm_zh##examples"}{...}
{viewerjumpto "Stored results" "ucm_zh##results"}{...}
{viewerjumpto "Reference" "ucm_zh##reference"}
{help ucm:English Version}
{hline}{...}
{p2colset 1 13 21 2}{...}
{p2col:{bf:[TS] ucm} {hline 2}}未观测成分模型{p_end}
{p2col:}({mansection TS ucm:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:ucm} {depvar} [{indepvars}]
{ifin}
[{cmd:,} {it:options}]

{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth mod:el(ucm##model:模型)}}指定趋势和特质成分{p_end}
{synopt :{cmdab:sea:sonal(}{it:#}{cmd:)}}包括周期为{it:#}时间单位的季节成分{p_end}
{synopt :{cmdab:cyc:le(}{it:#} [{cmd:,} {opt f:requency(#f)}]{cmd:)}}包括顺序为{it:#}的周期成分，并可选地将初始频率设置为{it:#f}， {bind:0 < {it:#f} < pi}; {opt cycle()}最多可指定三次{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim} 或 {opt r:obust}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help ucm##display_options:显示选项}}}控制
INCLUDE help shortdes-displayopt

{syntab:最大化}
{synopt :{it:{help ucm##maximize_options:最大化选项}}}控制
           最大化过程{p_end}

{synopt :{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{marker model}{...}
{synoptset 23}{...}
{synopthdr:模型}
{synoptline}
{synopt:{opt rwalk}}随机游走模型；默认值{p_end}
{synopt:{opt none}}无趋势或特质成分{p_end}
{synopt:{opt ntrend}}无趋势成分，但包括特质成分{p_end}
{synopt:{opt dconstant}}具有特质成分的确定性常数{p_end}
{synopt:{opt llevel}}局部水平模型{p_end}
{synopt:{opt dtrend}}具有特质成分的确定性趋势模型{p_end}
{synopt:{opt lldtrend}}具有确定性趋势的局部水平模型{p_end}
{synopt:{opt rwdrift}}随机游走漂移模型{p_end}
{synopt:{opt lltrend}}局部线性趋势模型{p_end}
{synopt:{opt strend}}平滑趋势模型{p_end}
{synopt:{opt rtrend}}随机趋势模型{p_end}
{synoptline}

{p 4 6 2}您必须在使用 {opt ucm} 之前使用 {opt tsset} 设置数据；请参见
{manhelp tsset TS}.{p_end}
{p 4 6 2}{it:indepvars} 可能包含因子变量；请参见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}{it:indepvars} 和 {it:depvar} 可能包含时间序列运算符；
      请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:by}、{cmd:fp}、{cmd:rolling} 和 {cmd:statsby} 是允许的；请参见
      {help prefix_zh}.{p_end}
{p 4 6 2}{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}请参见 {manhelp ucm_postestimation TS:ucm 后估计} 获取
      估计后可用的功能 .{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 未观测成分模型}


{marker description}{...}
{title:描述}

{pstd}
未观测成分模型（UCMs）将时间序列分解为趋势、季节、循环和特质成分，并允许外生变量。 {cmd:ucm} 通过最大似然方法估计 UCM 的参数。

{pstd}
所有成分都是可选的。趋势成分可以是一级确定性的，也可以是一阶或二阶随机的。季节成分是随机的；每个时间段的季节效应总和为零均值有限方差的随机变量。循环成分由由 {help ucm##H1989:Harvey (1989)} 导出的随机周期模型进行建模。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS ucmQuickstart:快速入门}

        {mansection TS ucmRemarksandexamples:备注和示例}

        {mansection TS ucmMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:model(}{it:model}{cmd:)} 指定趋势和特质成分。
默认值为 {cmd:model(rwalk)}。 可用的 {it:model} 列表已在
{help ucm##model:{it:语法}}中列出，并在
{mansection TS ucmRemarksandexamplesModelsforthetrendandidiosyncraticcomponents:{it:趋势和特质成分的模型}}中详细讨论
在 {bf:[TS] ucm}。

{phang}
{cmd:seasonal(}{it:#}{cmd:)} 向模型添加随机季节成分。
{it:#} 是季节的周期，即完成周期所需的时间序列观察数。

{phang}
{cmd:cycle(}{it:#}{cmd:)} 向模型添加顺序为 {it:#} 的随机循环成分。顺序 {it:#} 必须为 1、2 或 3。通过重复 {cmd:cycle(}{it:#}{cmd:)} 选项添加多个循环，最多允许三次循环。

{pmore}
{cmd:cycle(}{it:#}{cmd:,} {cmd:frequency(}{it:#f}{cmd:))} 将 {it:#f} 指定为顺序 {it:#} 的随机循环成分的中央频率参数的初始值。 {it:#f} 必须在 (0, pi) 范围内。

{phang}
{opt constraints(constraints)}；请参见 
{helpb estimation options##constraints():[R] 估计选项}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定估计器的方差-协方差矩阵的估计器。

{phang2}
{cmd:vce(oim)}，默认情况下，导致 {cmd:ucm} 使用观察信息矩阵估计器。

{phang2}
{cmd:vce(robust)} 导致 {cmd:ucm} 使用 Huber/White/三明治估计器。

{dlgtab:报告}

{phang}
{opt level(#)}、{opt nocnsreport}；请参见
{helpb estimation options##level():[R] 估计选项}。

INCLUDE help displayopts_listb

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、 
{opth tech:nique(maximize##algorithm_spec:算法描述)},
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tr:ace}、 
{opt grad:ient}、
{opt showstep}、
{opt hess:ian}、 
{opt showtol:erance}、
{opt tol:erance(#)}、
{opt ltol:erance(#)}、
{opt nrtol:erance(#)}，和
{opt from(matname)}； 
请参见 {help maximize_zh:[R] 最大化}，以了解除 {opt from()} 以外的所有选项，并参见下文获取有关 {opt from()} 的信息。

{phang2}
{opt from(matname)} 指定最大化过程的初始值。 {cmd:from(b0)} 使 {cmd:ucm} 使用 {cmd:b0} 中的值开始最大化算法。 {cmd:b0} 必须是一个行向量；列数必须等于模型中的参数数量；并且 {cmd:b0} 中的值必须与 {cmd:e(b)} 中的参数顺序相同。

{pmore}
如果模型未能收敛，请尝试使用 {cmd:difficult} 选项。
另请参见 {mansection TS ucmRemarksandexamplestechnote:技术说明} 以获取关于 {bf:[TS] ucm} 中第5个示例的更多信息。

{pstd}
以下选项可与 {cmd:ucm} 一起使用，但未在对话框中显示：

{phang}
{opt collinear}，{opt coeflegend}；请参见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse unrate}{p_end}

{pstd}在文职失业率上拟合随机游走模型{p_end}
{phang2}{cmd:. ucm unrate}{p_end}

{pstd}在之前模型上添加周期{p_end}
{phang2}{cmd:. ucm unrate, cycle(1)}{p_end}

{pstd}添加第二个周期并提供循环频率的初始值{p_end}
{phang2}{cmd:. ucm unrate, cycle(1,frequency(2.9)) cycle(2,frequency(0.9))}
	{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse icsa1}{p_end}

{pstd}为美国每周新失业保险索赔系列拟合局部水平模型{p_end}
{phang2}{cmd:. ucm icsa, model(llevel)}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
由于 {cmd:ucm} 使用 {cmd:sspace} 进行估计，因此大多数在 {cmd:sspace} 中存储的结果出现在 {cmd:ucm} 之后。并非所有这些结果都与 {cmd:ucm} 相关；希望将 {cmd:ucm} 结果视为 {cmd:sspace} 结果的程序员应参见 {it:{help sspace##results:存储结果}} 的 {help sspace_zh:[TS] sspace}。请参见 {mansection TS ucmMethodsandformulas:{it:方法和公式}} 在 {bf:[TS] ucm} 中获取 UCMs 的状态空间表示，并查看 {manlink TS sspace} 以获取与所有存储结果相关的更多文档。

{pstd}
{cmd:ucm} 在 {cmd:e()} 中存储以下内容：

{synoptset 23 tabbed}{...}
{p2col 5 23 27 2:标量}{p_end}
{synopt :{cmd:e(N)}}观察数量{p_end}
{synopt :{cmd:e(k)}}参数数量{p_end}
{synopt :{cmd:e(k_eq)}}{cmd:e(b)} 中方程的数量{p_end}
{synopt :{cmd:e(k_dv)}}因变量数量{p_end}
{synopt :{cmd:e(k_cycles)}}随机循环数量{p_end}
{synopt :{cmd:e(df_m)}}模型的自由度{p_end}
{synopt :{cmd:e(ll)}}对数似然{p_end}
{synopt :{cmd:e(chi2)}}卡方{p_end}
{synopt :{cmd:e(p)}}模型检验的p值{p_end}
{synopt :{cmd:e(tmin)}}样本中最小时间{p_end}
{synopt :{cmd:e(tmax)}}样本中最大时间{p_end}
{synopt :{cmd:e(stationary)}}{cmd:1} 如果估计参数指示一个平稳模型，{cmd:0} 则相反{p_end}
{synopt :{cmd:e(rank)}}VCE的秩{p_end}
{synopt :{cmd:e(ic)}}迭代次数{p_end}
{synopt :{cmd:e(rc)}}返回代码{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 则相反{p_end}

{p2col 5 23 27 2:宏}{p_end}
{synopt :{cmd:e(cmd)}}{opt ucm}{p_end}
{synopt :{cmd:e(cmdline)}}按输入的命令{p_end}
{synopt :{cmd:e(depvar)}}观察方程中因变量的未处理名称{p_end}
{synopt :{cmd:e(covariates)}}协变量列表{p_end}
{synopt :{cmd:e(tvar)}}表示组内时间的变量{p_end}
{synopt :{cmd:e(eqnames)}}方程名称{p_end}
{synopt:{cmd:e(model)}}模型类型{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(tmins)}}格式化的最小时间{p_end}
{synopt :{cmd:e(tmaxs)}}格式化的最大时间{p_end}
{synopt :{cmd:e(chi2type)}}{opt Wald}；模型卡方检验的类型{p_end}
{synopt :{cmd:e(vce)}}在 {opt vce()} 中指定的 {it:vcetype}{p_end}
{synopt :{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt :{cmd:e(opt)}}优化类型{p_end}
{synopt :{cmd:e(initial_values)}}初始值类型{p_end}
{synopt :{cmd:e(technique)}}最大化技术{p_end}
{synopt :{cmd:e(tech_steps)}}最大化技术中的迭代次数{p_end}
{synopt :{cmd:e(properties)}}{opt b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {opt estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {opt predict} 的程序{p_end}
{synopt :{cmd:e(marginsnotok)}}被 {opt margins} 禁止的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 23 27 2:矩阵}{p_end}
{synopt :{cmd:e(b)}}参数向量{p_end}
{synopt :{cmd:e(Cns)}}约束矩阵{p_end}
{synopt :{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
{synopt :{cmd:e(gradient)}}梯度向量{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt :{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{p2col 5 23 27 2:函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考}

{marker H1989}{...}
{phang}
Harvey, A. C. 1989.
{it:预测、结构时间序列模型和卡尔曼滤波}。
剑桥大学出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ucm.sthlp>}