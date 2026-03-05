{smcl}
{* *! version 1.1.4  15oct2018}{...}
{viewerdialog predict "dialog spxtregress_p"}{...}
{viewerdialog estat "dialog spxtregress_estat"}{...}
{vieweralsosee "[SP] spxtregress postestimation" "mansection SP spxtregresspostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] spxtregress" "help spxtregress_zh"}{...}
{viewerjumpto "后估计命令" "spxtregress postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "spxtregress_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "spxtregress postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "spxtregress postestimation##syntax_margins"}{...}
{viewerjumpto "统计" "spxtregress postestimation##syntax_estat"}{...}
{viewerjumpto "示例" "spxtregress postestimation##examples"}{...}
{viewerjumpto "存储结果" "spxtregress postestimation##results"}
{help spxtregress_postestimation:English Version}
{hline}{...}
{p2colset 1 36 38 2}{...}
{p2col:{bf:[SP] spxtregress postestimation} {hline 2}}spxtregress的后估计工具{p_end}
{p2col:}({mansection SP spxtregresspostestimation:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:spxtregress} 后，以下后估计命令尤其重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb spxtregress postestimation##estat_impact:estat impact}}直接、间接和总影响{p_end}
{synoptline}

{pstd}
以下后估计命令也可用：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_contrast
包含 help post_estatic
包含 help post_estatsum
包含 help post_estatvce
包含 help post_estimates
包含 help post_lincom
包含 help post_lrtest
{synopt :{helpb spxtregress postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含 help post_marginsplot
包含 help post_nlcom
{synopt :{helpb spxtregress postestimation##predict:predict}}预测、残差、影响统计量和其他诊断措施{p_end}
包含 help post_predictnl
包含 help post_pwcompare
包含 help post_test
包含 help post_testnl
{synoptline}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SP spxtregresspostestimationMethodsandformulas:方法和公式}

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
{synopt :{opt rf:orm}}减少形式均值；默认值{p_end}
{synopt :{opt direct}}直接均值{p_end}
{synopt :{opt indirect}}间接均值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synoptline}
{p 4 6 2}
这些统计量仅在估计样本的子集可用。
{p_end}


包含 help menu_predict


{marker des_predict}{...}
{title:预测描述}

{pstd}
{cmd:predict} 创建一个新变量，其中包含预测结果，例如减少形式均值、直接均值、间接均值或线性预测。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{opt rform}，默认计算减少形式均值。它是取决于自变量和自变量的任何空间滞后的因变量的预测均值。请参见 {mansection SP spxtregresspostestimationMethodsandformulas:{it:方法和公式}}。

{phang}
{opt direct} 计算直接均值。
它是单位对自身减少形式均值的预测贡献。 
直接均值和间接均值之和等于减少形式均值。

{phang}
{opt indirect} 计算间接均值。
它是其他单位对单位减少形式均值的预测贡献的总和。  

{phang}
{opt xb} 计算自变量的预测线性组合。


包含 help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt rf:orm}}减少形式均值；默认值{p_end}
{synopt :{opt direct}}直接均值{p_end}
{synopt :{opt indirect}}间接均值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synoptline}

{pstd}
有关完整语法，请参见 {manhelp margins R}。


包含 help menu_margins


{marker des_margins}{...}
{title:边际描述}

{pstd}
{cmd:margins} 估计减少形式均值、直接均值、间接均值和线性预测的响应边际。


{marker syntax_estat}{...}
{marker estat_impact}{...}
{title:estat impact的语法}

{p 8 16 2}
{cmd:estat} {cmd:impact}
[{varlist}]
{ifin}
[{cmd:,} {cmd:nolog}]

{phang}
{varlist} 是一个自变量列表，包括从拟合模型中提取的 {help fvvarlist_zh:因子变量}。默认情况下，使用拟合模型中的所有自变量。


{marker des_estat}{...}
{title:estat impact的描述}

{pstd}
{cmd:estat impact} 估计自变量对因变量减少形式均值的直接、间接和总影响的均值。


{marker options_estat_impact}{...}
{title:estat impact的选项}

{dlgtab:主要}

{phang}
{cmd:nolog} 取消显示计算进程日志，该日志显示完成的百分比。默认情况下，日志被显示。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/homicide_1960_1990.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/homicide_1960_1990_shp.dta .}
{p_end}
{phang2}{cmd:. use homicide_1960_1990}
{p_end}
{phang2}{cmd:. xtset _ID year}
{p_end}
{phang2}{cmd:. spset}
{p_end}

{pstd}创建带有默认频谱归一化的邻接加权矩阵{p_end}
{phang2}{cmd:. spmatrix create contiguity W if year == 1990}

{pstd}拟合空间自回归随机效应模型{p_end}
{phang2}{cmd:. spxtregress hrate ln_population ln_pdensity gini i.year,}
                     {cmd:re dvarlag(W)}

{pstd}获取协变量的直接、间接和总效应{p_end}
{phang2}{cmd:. estat impact}

{pstd}获取 {cmd:gini} 的效应的均值{p_end}
{phang2}{cmd:. estat impact gini}

{pstd}创建带有默认频谱归一化的反距离加权矩阵{p_end}
{phang2}{cmd:. spmatrix create idistance M if year == 1990}

{pstd}重新拟合上述模型，但指定 {cmd:gini} 和 {cmd:year} 的交互{p_end}
{phang2}{cmd:. spxtregress hrate ln_population ln_pdensity c.gini##i.year,}
                     {cmd:re dvarlag(M) errorlag(M)}

{pstd}检验 {cmd:gini} 和 {cmd:year} 交互的显著性{p_end}
{phang2}{cmd:. contrasts c.gini#year} 

{pstd}获得基于1960年的 {cmd:gini} 的效应{p_end}
{phang2}{cmd:. estat impact gini if year == 1960}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat impact} 将以下结果存储在 {cmd:r()} 中：

{synoptset 24 tabbed}{...}
{p2col 5 24 28 2: 标量}{p_end}
{synopt :{cmd:r(N)}}观测数{p_end}

{p2col 5 24 28 2: 宏}{p_end}
{synopt :{cmd:r(xvars)}}自变量名称{p_end}

{p2col 5 24 28 2: 矩阵}{p_end}
{synopt :{cmd:r(b_direct)}}估计的直接影响向量{p_end}
{synopt :{cmd:r(Jacobian_direct)}}直接影响的雅可比矩阵{p_end}
{synopt :{cmd:r(V_direct)}}直接影响的估计方差-协方差矩阵{p_end}
{synopt :{cmd:r(b_indirect)}}估计的间接影响向量{p_end}
{synopt :{cmd:r(Jacobian_indirect)}}间接影响的雅可比矩阵{p_end}
{synopt :{cmd:r(V_indirect)}}间接影响的估计方差-协方差矩阵{p_end}
{synopt :{cmd:r(b_total)}}估计的总影响向量{p_end}
{synopt :{cmd:r(Jacobian_total)}}总影响的雅可比矩阵{p_end}
{synopt :{cmd:r(V_total)}}总影响的估计方差-协方差矩阵{p_end}
{p2colreset}{...}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spxtregress_postestimation.sthlp>}