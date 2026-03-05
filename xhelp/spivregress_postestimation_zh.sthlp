{smcl}
{* *! version 1.1.3  15oct2018}{...}
{viewerdialog predict "dialog spivregress_p"}{...}
{viewerdialog estat "dialog spivregress_estat"}{...}
{vieweralsosee "[SP] spivregress postestimation" "mansection SP spivregresspostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] spivregress" "help spivregress_zh"}{...}
{viewerjumpto "后期估计命令" "spivregress postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "spivregress_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "spivregress postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "spivregress postestimation##syntax_margins"}{...}
{viewerjumpto "estat" "spivregress postestimation##syntax_estat"}{...}
{viewerjumpto "示例" "spivregress postestimation##examples"}{...}
{viewerjumpto "存储结果" "spivregress postestimation##results"}
{help spivregress_postestimation:English Version}
{hline}{...}
{p2colset 1 36 38 2}{...}
{p2col:{bf:[SP] spivregress postestimation} {hline 2}}后期估计工具
用于 spivregress{p_end}
{p2col:}({mansection SP spivregresspostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后期估计命令}

{pstd}
以下后期估计命令在 {cmd:spivregress} 后特别重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb spivregress postestimation##estat_impact:estat impact}}直接、间接和总的影响{p_end}
{synoptline}

{pstd}
以下后期估计命令也可以使用：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_lincom
{synopt:{helpb spivregress postestimation##margins:margins}}边际
        均值、预测边际、边际效应和平均边际
	effects{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb spivregress postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SP spivregresspostestimationMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic}]

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主}
{synopt :{opt rf:orm}}简约形式均值；默认值{p_end}
{synopt :{opt direct}}直接均值{p_end}
{synopt :{opt indirect}}间接均值{p_end}
{synopt :{opt li:mited}}有限信息均值{p_end}
{synopt :{opt full}}完全信息均值{p_end}
{synopt :{opt na:ive}}朴素形式预测{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
{synopt :{opt ucr:esiduals}}不相关残差{p_end}
{synoptline}
{p 4 6 2}
这些统计量仅在估计样本的子集内可用。
{p_end}


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新的变量，包含如
简约形式均值、直接均值、间接均值、
有限信息均值、完全信息均值、 
朴素形式预测、线性预测、
残差或不相关残差等预测结果。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt rform}，默认值，计算简约形式均值。它是依赖变量在独立变量和任何独立变量的空间滞后条件下的预测均值。请参见
{mansection SP spivregresspostestimationMethodsandformulas:{it:方法和公式}}。

{phang}
{opt direct} 计算直接均值。
它是单位对其自身简约形式均值的预测贡献。  
直接均值和间接均值之和为简约形式均值。

{phang}
{opt indirect} 计算间接均值。
它是其他单位对一个单位简约形式均值的预测贡献的总和。  

{phang}
{opt limited} 计算有限信息均值。 
它是依赖变量在独立变量、任何独立变量空间滞后以及任何依赖变量空间滞后的条件下的预测均值。
当使用 {opt heteroskedastic} 选项与 {cmd:spivregress} 时，{opt limited} 不可用。

{phang}
{opt full} 计算完全信息均值。它是依赖变量在独立变量、任何独立变量的空间滞后以及其他单位的依赖变量值的条件下的预测均值。
当使用 {opt heteroskedastic} 选项与 {cmd:spivregress} 时，{opt full} 不可用。

{phang}
{opt naive} 计算朴素形式预测。
它是独立变量、任何独立变量的空间滞后，以及任何依赖变量的空间滞后的预测线性组合。
它不是期望的一致估计量。请参见
{mansection SP spivregresspostestimationMethodsandformulas:{it:方法和公式}}。

{phang}
{opt xb} 计算独立变量的预测线性组合。

{phang}
{opt residuals} 计算残差，
包括任何自回归误差项。

{phang}
{opt ucresiduals} 计算不相关残差， 
这些是对不相关误差项的估计。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt rf:orm}}简约形式均值；默认值{p_end}
{synopt :{opt direct}}直接均值{p_end}
{synopt :{opt indirect}}间接均值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt li:mited}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt full}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt na:ive}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt r:esiduals}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt ucr:esiduals}}与 {cmd:margins} 不允许使用{p_end}
{synoptline}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计简约形式均值、直接均值、间接均值和线性预测的响应边际。


{marker syntax_estat}{...}
{marker estat_impact}{...}
{title:estat impact的语法}

{p 8 16 2}
{cmd:estat} {cmd:impact}
[{varlist}]
{ifin}
[{cmd:,} {cmd:nolog} {opth vce(vcetype)}]

{phang}
{varlist} 是一个由独立变量组成的列表，包括来自拟合模型的
{help fvvarlist_zh:因子变量}。默认情况下，使用拟合模型的所有独立变量。


{marker des_estat}{...}
{title:estat impact的描述}

{pstd}
{cmd:estat impact} 估计独立变量对依赖变量的简约形式均值的直接、间接和总影响的均值。


{marker options_estat_impact}{...}
{title:estat impact的选项}

{dlgtab:主}

{phang}
{cmd:nolog} 抑制显示计算进度日志，该日志显示已完成的百分比。默认情况下，日志会显示。

{dlgtab:VCE}

{phang}
{opt vce(vcetype)} 
指定影响的标准误是如何计算的。

{phang2}
{cmd:vce(delta)}，默认值，是美元方法，并将独立变量视为固定。

{phang2}
{cmd:vce(unconditional)} 指定标准误
考虑独立变量中的抽样方差。
当 {cmd:if} 或 {cmd:in} 与 {cmd:estat impact} 一起指定时，此选项不可用。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/dui_southern.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/dui_southern_shp.dta .}
{p_end}
{phang2}{cmd:. use dui_southern}
{p_end}
{phang2}{cmd:. spset}
{p_end}

{pstd}创建一个具有默认频谱归一化的邻接加权矩阵{p_end}
{phang2}{cmd:. spmatrix create contiguity W}

{pstd}拟合一个广义空间二阶段最小二乘回归{p_end}
{phang2}{cmd:. spivregress dui nondui vehicles i.dry (police = elect),}
                     {cmd:dvarlag(W) errorlag(W)}

{pstd}获得协变量的直接、间接和总效应{p_end}
{phang2}{cmd:. estat impact}

{pstd}与上面的估计相同，但添加了协变量
{cmd:dry}的空间滞后{p_end}
{phang2}{cmd:. spivregress dui nondui vehicles i.dry (police = elect),}
                     {cmd:dvarlag(W) errorlag(W) ivarlag(W: i.dry)}

{pstd}获得协变量的直接、间接和总效应{p_end}
{phang2}{cmd:. estat impact}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat impact} 将以下内容存储在 {cmd:r()} 中：

{synoptset 24 tabbed}{...}
{p2col 5 24 28 2: 标量}{p_end}
{synopt :{cmd:r(N)}}观测数量{p_end}

{p2col 5 24 28 2: 宏}{p_end}
{synopt :{cmd:r(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt :{cmd:r(xvars)}}独立变量的名称{p_end}

{p2col 5 24 28 2: 矩阵}{p_end}
{synopt :{cmd:r(b_direct)}}估计的直接影响向量{p_end}
{synopt :{cmd:r(Jacobian_direct)}}直接影响的雅可比矩阵{p_end}
{synopt :{cmd:r(V_direct)}}估计的直接影响的方差-协方差矩阵{p_end}
{synopt :{cmd:r(b_indirect)}}估计的间接影响向量{p_end}
{synopt :{cmd:r(Jacobian_indirect)}}间接影响的雅可比矩阵{p_end}
{synopt :{cmd:r(V_indirect)}}估计的间接影响的方差-协方差矩阵{p_end}
{synopt :{cmd:r(b_total)}}估计的总影响向量{p_end}
{synopt :{cmd:r(Jacobian_total)}}总影响的雅可比矩阵{p_end}
{synopt :{cmd:r(V_total)}}估计的总影响的方差-协方差矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spivregress_postestimation.sthlp>}