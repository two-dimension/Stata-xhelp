{smcl}
{* *! version 1.0.5  07jan2019}{...}
{viewerdialog predict "dialog irt_p"}{...}
{vieweralsosee "[IRT] irt 2pl postestimation" "mansection IRT irt2plpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt 2pl" "help irt 2pl"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] estat greport" "help estat greport"}{...}
{vieweralsosee "[IRT] estat report" "help estat report"}{...}
{vieweralsosee "[IRT] irtgraph icc" "help irtgraph icc"}{...}
{vieweralsosee "[IRT] irtgraph iif" "help irtgraph iif"}{...}
{vieweralsosee "[IRT] irtgraph tcc" "help irtgraph tcc"}{...}
{vieweralsosee "[IRT] irtgraph tif" "help irtgraph tif"}{...}
{viewerjumpto "Postestimation commands" "irt 2pl postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "irt_2pl_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "irt 2pl postestimation##syntax_predict"}{...}
{viewerjumpto "Examples" "irt 2pl postestimation##examples"}
{help irt_2pl_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[IRT] irt 2pl postestimation} {hline 2}}irt 2pl 的后评估工具 {p_end}
{p2col:}({mansection IRT irt2plpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后评估命令}

{pstd}
在执行 {cmd:irt 2pl} 之后，以下后评估命令特别重要：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_irt_special
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后评估命令也可用：

{synoptset 20 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_irt_common1
{synopt :{helpb irt 2pl postestimation##predict:predict}}预测{p_end}
INCLUDE help post_irt_common2
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:lrtest} 与 {cmd:svy} 估计结果不适用。

 
{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection IRT irt2plpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{pstd}
获取项目概率和其他统计数据预测的语法

{p 8 16 2}
{cmd:predict} {dtype} {it:newvarsspec} {ifin} 
[{cmd:,} {it:{help irt_2pl_postestimation##statistic:统计}}
{it:{help irt_2pl_postestimation##ioptions:item_options}}]


{p 4 4 2}
获取估计潜在变量及其标准误差的语法

{p 8 16 2}
{cmd:predict} {dtype} {it:newvarsspec} {ifin}{cmd:,} {opt latent}
[{it:{help irt_2pl_postestimation##loptions:latent_options}}]


{pstd}
获取参数级分数的语法

{p 8 16 2}
{cmd:predict} {dtype} {it:newvarsspec} {ifin}{cmd:,} {opt sc:ores}


{pstd}
{it:newvarsspec} 为 {it:stub}{cmd:*} 或 {it:{help newvarlist_zh}}。


INCLUDE help syntax_irt_predict_stats

{marker ioptions}{...}
{synoptset 20 tabbed}{...}
{synopthdr:item_options}
{synoptline}
{syntab:Main}
{synopt :{opt outcome(item)}}指定项目变量；默认为所有变量{p_end}
{synopt :{opth cond:itional(irt_2pl_postestimation##ctype:ctype)}}计算
     {it:statistic} 条件于估计的潜在变量；默认为
     {cmd:conditional(ebmeans)}{p_end}
{synopt :{opt marginal}}以潜在变量的边际方式计算 {it:statistic}{p_end}

{syntab:Integration}
{synopt :{help irt_2pl_postestimation##int_options:{it:int_options}}}积分选项{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help syntax_irt_predict_ctype

{marker loptions}{...}
{synoptset 20 tabbed}{...}
{synopthdr:latent_options}
{synoptline}
{syntab:Main}
{synopt :{opt ebmean:s}}使用潜在特征的经验贝叶斯均值；默认值{p_end}
{synopt :{opt ebmode:s}}使用潜在特征的经验贝叶斯模式{p_end}
{synopt :{opth se(newvar)}}计算标准误差{p_end}

{syntab:Integration}
{synopt :{help irt_2pl_postestimation##int_options:{it:int_options}}}积分选项{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help syntax_irt_predict_int


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测值的新变量，例如概率、线性预测和参数级分数。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:Main}

INCLUDE help des_irt_predict_pr

INCLUDE help des_irt_predict_xb

INCLUDE help des_irt_predict_outcome

INCLUDE help des_irt_predict_item

INCLUDE help des_irt_predict_latent

INCLUDE help des_irt_predict_se

INCLUDE help des_irt_predict_scores

INCLUDE help des_irt_predict_int


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse masc1}

{pstd}为二元项目 {cmd:q1-q9} 拟合 2PL 模型{p_end}
{phang2}{cmd:. irt 2pl q1-q9}

{pstd}重放估计的 IRT 参数表，按参数而不是按项目排序，并以升序排列区分度{p_end}
{phang2}{cmd:. estat report, byparm sort(a)}

{pstd}使用 2PL 参数绘制最高和最低项目的项目特征曲线{p_end}
{phang2}{cmd:. irtgraph icc q7 q1, blocation}

{pstd}使用 2PL 参数绘制测试特征曲线{p_end}
{phang2}{cmd:. irtgraph tcc, thetalines(-1.96 0 1.96)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irt_2pl_postestimation.sthlp>}