{smcl}
{* *! version 1.1.3  15oct2018}{...}
{viewerdialog predict "dialog spregress_p"}{...}
{viewerdialog estat "dialog spregress_estat"}{...}
{vieweralsosee "[SP] spregress postestimation" "mansection SP spregresspostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] spregress" "help spregress_zh"}{...}
{viewerjumpto "后验命令" "spregress postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "spregress_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "spregress postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "spregress postestimation##syntax_margins"}{...}
{viewerjumpto "estat" "spregress postestimation##syntax_estat"}{...}
{viewerjumpto "示例" "spregress postestimation##examples"}{...}
{viewerjumpto "存储结果" "spregress postestimation##results"}
{help spregress_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[SP] spregress postestimation} {hline 2}}后验工具
用于 spregress{p_end}
{p2col:}({mansection SP spregresspostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验命令}

{pstd}
以下后验命令在 {cmd:spregress} 之后特别重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb spregress postestimation##estat_impact:estat impact}}直接、间接和总影响{p_end}
{synoptline}

{pstd}
下列后验命令也可用：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_contrast
{p2coldent :* {helpb estat ic}}赤池信息量准则和施瓦茨贝叶斯信息量准则（AIC 和 BIC）{p_end}
包含 help post_estatsum
包含 help post_estatvce
包含 help post_estimates
包含 help post_lincom
{p2coldent :* {help lrtest_zh}}似然比检验{p_end}
{synopt:{helpb spregress postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含 help post_marginsplot
包含 help post_nlcom
{synopt :{helpb spregress postestimation##predict:predict}}预测、残差、影响统计量和其他诊断度量{p_end}
包含 help post_predictnl
包含 help post_pwcompare
包含 help post_test
包含 help post_testnl
{synoptline}
{p 4 6 2}
* {opt estat ic} 和 {opt lrtest} 不适用于 {opt gs2sls} 估计结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SP spregresspostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic}]

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{opt rf:orm}}简化形式均值；默认值{p_end}
{synopt :{opt direct}}直接均值{p_end}
{synopt :{opt indirect}}间接均值{p_end}
{synopt :{opt li:mited}}有限信息均值{p_end}
{synopt :{opt full}}完整信息均值{p_end}
{synopt :{opt na:ive}}朴素形式预测{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
{synopt :{opt ucr:esiduals}}不相关残差{p_end}
{synoptline}
{p 4 6 2}
这些统计量仅在估计样本的一个子集中可用。
{p_end}


包含 help menu_predict


{marker des_predict}{...}
{title:预测描述}

{pstd}
{cmd:predict} 创建一个新变量，包含诸如简化形式均值、直接均值、间接均值、有限信息均值、完整信息均值、朴素形式预测、线性预测、残差或不相关残差的预测值。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{opt rform}，默认情况下，计算简化形式均值。它是给定自变量及自变量的任何空间滞后条件下因变量的预测均值。请参阅 {mansection SP spregresspostestimationMethodsandformulas:{it:方法和公式}}。

{phang}
{opt direct} 计算直接均值。
它是单位对其自身简化形式均值的预测贡献。  
直接均值和间接均值之和为简化形式均值。

{phang}
{opt indirect} 计算间接均值。
它是预测其他单位对该单位简化形式均值的贡献总和。  

{phang}
{opt limited} 计算有限信息均值。 
它是在给定自变量、自变量的任何空间滞后，以及因变量的任何空间滞后的条件下，因变量的预测均值。
当与 {cmd:spregress, gs2sls} 一起使用 {opt heteroskedastic} 选项时，{opt limited} 不可用。

{phang}
{opt full} 计算完整信息均值。它是给定自变量、自变量的任何空间滞后以及其他单位的因变量值的条件下，因变量的预测均值。使用 {cmd:spregress, gs2sls} 时，如果使用了 {opt heteroskedastic} 选项，{opt full} 不可用。

{phang}
{opt naive} 计算朴素形式预测。
它是自变量、任何自变量的空间滞后以及因变量的任何空间滞后的线性组合的预测。
它不是期望的一致估计量。请参阅 {mansection SP spregresspostestimationMethodsandformulas:{it:方法和公式}}。

{phang}
{opt xb} 计算自变量的预测线性组合。

{phang}
{opt residuals} 计算残差，
包括任何自回归误差项。

{phang}
{opt ucresiduals} 计算不相关残差，
它们是对不相关误差项的估计。


包含 help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt rf:orm}}简化形式均值；默认值{p_end}
{synopt :{opt direct}}直接均值{p_end}
{synopt :{opt indirect}}间接均值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt li:mited}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt full}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt na:ive}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt r:esiduals}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt ucr:esiduals}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}

包含 help notes_margins


包含 help menu_margins


{marker des_margins}{...}
{title:边际描述}

{pstd}
{cmd:margins} 估计简化形式均值、直接均值、间接均值和线性预测的反应边际。


{marker syntax_estat}{...}
{marker estat_impact}{...}
{title:estat impact 语法}

{p 8 16 2}
{cmd:estat} {cmd:impact}
[{varlist}]
{ifin}
[{cmd:,} {cmd:nolog} {opth vce(vcetype)}]

{phang}
{varlist} 是独立变量的列表，包括从拟合模型中提取的 {help fvvarlist_zh:因子变量}。默认情况下，使用拟合模型中的所有独立变量。


{marker des_estat}{...}
{title:estat impact 描述}

{pstd}
{cmd:estat impact} 估计独立变量对因变量简化形式均值的直接、间接和总影响的均值。


{marker options_estat_impact}{...}
{title:estat impact 选项}

{dlgtab:主要}

{phang}
{cmd:nolog} 抑制计算进度日志，显示完成的百分比。默认情况下，显示日志。

{dlgtab:VCE}

{phang}
{opt vce(vcetype)} 
指定影响的标准误差计算方式。

{phang2}
{cmd:vce(delta)}，默认使用 delta 方法，并将独立变量视为固定。

{phang2}
{cmd:vce(unconditional)} 指定标准误差
考虑独立变量的抽样方差。
当使用 {cmd:if} 或 {cmd:in} 与 {cmd:estat impact} 时，此选项不可用。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/homicide1990.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/homicide1990_shp.dta .}
{p_end}
{phang2}{cmd:. use homicide1990}
{p_end}
{phang2}{cmd:. spset}
{p_end}

{pstd}创建一个具有默认谱归一化的邻接加权矩阵{p_end}
{phang2}{cmd:. spmatrix create contiguity W}

{pstd}拟合一个广义空间两阶段最小二乘回归{p_end}
{phang2}{cmd:. spregress hrate ln_population ln_pdensity gini,}
                     {cmd:gs2sls dvarlag(W)}

{pstd}获得协变量的直接、间接和总效应{p_end}
{phang2}{cmd:. estat impact}

{pstd}与上述估计相同，但添加一个空间自回归误差项{p_end}
{phang2}{cmd:. spregress hrate ln_population ln_pdensity gini,}
                     {cmd:gs2sls dvarlag(W) errorlag(W)}

{pstd}获得协变量的直接、间接和总效应{p_end}
{phang2}{cmd:. estat impact}

{pstd}计算基尼系数的变化{p_end}
{phang2}{cmd:. margins, at(gini = generate(gini - 0.02)) at(gini = generate(gini))}
                      {cmd:at(gini = generate(gini + 0.02))}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat impact} 将以下内容存储在 {cmd:r()} 中：

{synoptset 24 tabbed}{...}
{p2col 5 24 28 2: 标量}{p_end}
{synopt :{cmd:r(N)}}观察数{p_end}

{p2col 5 24 28 2: 宏}{p_end}
{synopt :{cmd:r(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt :{cmd:r(xvars)}}独立变量的名称{p_end}

{p2col 5 24 28 2: 矩阵}{p_end}
{synopt :{cmd:r(b_direct)}}估计的直接影响的向量{p_end}
{synopt :{cmd:r(Jacobian_direct)}}直接影响的雅可比矩阵{p_end}
{synopt :{cmd:r(V_direct)}}直接影响的估计方差-协方差矩阵{p_end}
{synopt :{cmd:r(b_indirect)}}估计的间接影响的向量{p_end}
{synopt :{cmd:r(Jacobian_indirect)}}间接影响的雅可比矩阵{p_end}
{synopt :{cmd:r(V_indirect)}}间接影响的估计方差-协方差矩阵{p_end}
{synopt :{cmd:r(b_total)}}估计的总影响的向量{p_end}
{synopt :{cmd:r(Jacobian_total)}}总影响的雅可比矩阵{p_end}
{synopt :{cmd:r(V_total)}}总影响的估计方差-协方差矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spregress_postestimation.sthlp>}