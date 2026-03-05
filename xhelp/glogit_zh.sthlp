{smcl}
{* *! version 1.2.1  15jan2015}{...}
{viewerdialog blogit "dialog blogit"}{...}
{viewerdialog bprobit "dialog bprobit"}{...}
{viewerdialog glogit "dialog glogit"}{...}
{viewerdialog gprobit "dialog gprobit"}{...}
{vieweralsosee "先前文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] glogit 后估计" "help glogit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "[R] scobit" "help scobit_zh"}{...}
{viewerjumpto "语法" "glogit_zh##syntax"}{...}
{viewerjumpto "菜单" "glogit_zh##menu"}{...}
{viewerjumpto "描述" "glogit_zh##description"}{...}
{viewerjumpto "blogit 和 bprobit 的选项" "glogit_zh##options_blogit"}{...}
{viewerjumpto "glogit 和 gprobit 的选项" "glogit_zh##options_glogit"}{...}
{viewerjumpto "示例" "glogit_zh##examples"}{...}
{viewerjumpto "存储的结果" "glogit_zh##results"}
{help glogit:English Version}
{hline}{...}
{pstd}
{cmd:blogit}, {cmd:bprobit}, {cmd:glogit} 和 {cmd:gprobit} 继续有效，但从 Stata 14 开始不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{pstd}
请参见 {help glm_zh} 以获取推荐的替代品。若指定 {it:pos_var} 作为因变量，并指定 {cmd:family(binomial} {it:pop_var}{cmd:)} 选项，可以通过最大似然估计来拟合分组数据的 Logistic 和 Probit 模型，其中 {it:pos_var} 和 {it:pop_var} 定义如下。对于 Logistic 模型，指定 {cmd:link(logit)} 选项；对于 Probit 模型，指定 {cmd:link(probit)} 选项。

{hline}

{title:标题}

{p2colset 5 19 21 2}{...}
{p2col :{hi:[R] glogit} {hline 2}}分组数据的 Logit 和 Probit 估计{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
分组数据的 Logistic 回归

{p 8 16 2}{cmd:blogit}{space 2}{it:pos_var} {it:pop_var} [{indepvars}]
		{ifin} [{cmd:,}
		{it:{help glogit##blogit_options:blogit_options}}]


{phang}
分组数据的 Probit 回归

{p 8 16 2}{cmd:bprobit} {it:pos_var} {it:pop_var} [{indepvars}]
		{ifin} [{cmd:,}
		{it:{help glogit##bprobit_options:bprobit_options}}]


{phang}
分组数据的加权最小二乘 Logistic 回归

{p 8 16 2}{cmd:glogit}{space 2}{it:pos_var} {it:pop_var} [{indepvars}]
	{ifin} [{cmd:,}
	{it:{help glogit##glogit_options:glogit_options}}]


{phang}
分组数据的加权最小二乘 Probit 回归

{p 8 16 2}{cmd:gprobit} {it:pos_var} {it:pop_var} [{indepvars}]
	{ifin} [{cmd:,}
	{it:{help glogit##gprobit_options:gprobit_options}}]
	

{synoptset 28 tabbed}{...}
{marker blogit_options}{...}
{synopthdr :blogit_options}
{synoptline}
{syntab :模型}
{synopt :{opt nocon:stant}}抑制常数项{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synopt :{opth off:set(varname)}}包含 {it:varname}，使系数限制为 1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():constraints}}{cmd:)}}应用指定的线性约束{p_end}
{synopt:{opt col:linear}}保留共线性变量{p_end}

{syntab :SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt or}}报告赔率比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help glogit##b_display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab :最大化}
{synopt :{it:{help glogit##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt :{opt nocoe:f}}不显示系数表；很少使用{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{synoptset 28 tabbed}{...}
{marker bprobit_options}{...}
{synopthdr :bprobit_options}
{synoptline}
{syntab :模型}
{synopt :{opt nocon:stant}}抑制常数项{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synopt :{opth off:set(varname)}}包含 {it:varname}，使系数限制为 1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():constraints}}{cmd:)}}应用指定的线性约束{p_end}
{synopt:{opt col:linear}}保留共线性变量{p_end}

{syntab :SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help glogit##b_display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab :最大化}
{synopt :{it:{help glogit##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}
	
{synopt :{opt nocoe:f}}不显示系数表；很少使用{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{synoptset 28 tabbed}{...}
{marker glogit_options}{...}
{synopthdr :glogit_options}
{synoptline}
{syntab :SE}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt ols}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt or}}（仅 {cmd:glogit}）报告经过变换的赔率比，即 e^b 而不是 b。标准误和置信区间同样会进行变换。此选项影响结果的显示方式，而不影响估计方式。{opt or} 可以在估计时指定，也可以在重放之前估计的结果时指定。

{marker g_display_options}{...}
INCLUDE help displayopts_list

{pstd}
以下选项适用于 {opt glogit} 和 {opt gprobit}，但在对话框中未显示：

{phang}
{opt coeflegend}; 见 
     {helpb estimation options##coeflegend:[R] estimation options}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse xmpl2}{p_end}

{pstd}分组数据的 Logistic 回归{p_end}
{phang2}{cmd:. blogit deaths pop agecat exposed}{p_end}

{pstd}与上述相同，但报告赔率而不是系数{p_end}
{phang2}{cmd:. blogit deaths pop agecat exposed, or}

{pstd}分组数据的加权最小二乘 Logistic 回归{p_end}
{phang2}{cmd:. glogit deaths pop agecat exposed}{p_end}

{pstd}与上述相同，但报告赔率而不是系数{p_end}
{phang2}{cmd:. glogit deaths pop agecat exposed, or}

{pstd}分组数据的 Probit 回归{p_end}
{phang2}{cmd:. bprobit deaths pop agecat exposed}

{pstd}重放，置信区间为 99%{p_end}
{phang2}{cmd:. bprobit, level(99)}

{pstd}分组数据的加权最小二乘 Probit 回归{p_end}
{phang2}{cmd:. gprobit deaths pop agecat exposed}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:blogit} 和 {cmd:bprobit} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_cds)}}完全确定的成功次数{p_end}
{synopt:{cmd:e(N_cdf)}}完全确定的失败次数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}显著性{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:blogit} 或 {cmd:bprobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}包含正响应数量和包含总体规模的变量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方
测试的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是执行
最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}{cmd:fvset} 的因子变量作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}{cmd:fvset} 的因子变量作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(mns)}}自变量的均值向量{p_end}
{synopt:{cmd:e(rules)}}关于完美预测变量的信息{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}


{pstd}
{cmd:glogit} 和 {cmd:gprobit} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(mss)}}模型平方和{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(rss)}}残差平方和{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(r2)}}R 平方{p_end}
{synopt:{cmd:e(r2_a)}}调整后的 R 平方{p_end}
{synopt:{cmd:e(F)}}F 统计量{p_end}
{synopt:{cmd:e(rmse)}}均方根误差{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:glogit} 或 {cmd:gprobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}包含正响应数量和包含总体规模的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:ols}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}{cmd:fvset} 的因子变量作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}{cmd:fvset} 的因子变量作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <glogit.sthlp>}