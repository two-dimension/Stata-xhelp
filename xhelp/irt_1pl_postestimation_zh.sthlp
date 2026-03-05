{smcl}
{* *! version 1.0.5  07jan2019}{...}
{viewerdialog predict "dialog irt_p"}{...}
{vieweralsosee "[IRT] irt 1pl postestimation" "mansection IRT irt1plpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt 1pl" "help irt 1pl"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] estat greport" "help estat greport"}{...}
{vieweralsosee "[IRT] estat report" "help estat report"}{...}
{vieweralsosee "[IRT] irtgraph icc" "help irtgraph icc"}{...}
{vieweralsosee "[IRT] irtgraph iif" "help irtgraph iif"}{...}
{vieweralsosee "[IRT] irtgraph tcc" "help irtgraph tcc"}{...}
{vieweralsosee "[IRT] irtgraph tif" "help irtgraph tif"}{...}
{viewerjumpto "Postestimation commands" "irt 1pl postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "irt_1pl_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "irt 1pl postestimation##syntax_predict"}{...}
{viewerjumpto "Examples" "irt 1pl postestimation##examples"}
{help irt_1pl_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[IRT] irt 1pl postestimation} {hline 2}}irt 1pl 的后估计工具{p_end}
{p2col:}({mansection IRT irt1plpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:irt 1pl} 之后，以下后估计命令特别重要：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_irt_special
{synoptline}
{p2colreset}{...}

{pstd}
以下标准的后估计命令也可用：

{synoptset 20 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_irt_common1
{synopt :{helpb irt 1pl postestimation##predict:预测}}预测{p_end}
INCLUDE help post_irt_common2
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。

 
{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection IRT irt1plpostestimation 方法与公式:方法与公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{pstd}
获取项目概率和其他统计数据的预测的语法

{p 8 16 2}
{cmd:predict} {dtype} {it:newvarsspec} {ifin} 
[{cmd:,} {it:{help irt_1pl_postestimation##statistic:统计量}}
{it:{help irt_1pl_postestimation##ioptions:项目选项}}]


{p 4 4 2}
获取估计的潜变量及其标准误差的语法

{p 8 16 2}
{cmd:predict} {dtype} {it:newvarsspec} {ifin}{cmd:,} {opt latent}
[{it:{help irt_1pl_postestimation##loptions:潜变量选项}}]


{pstd}
获取参数级分数的语法

{p 8 16 2}
{cmd:predict} {dtype} {it:newvarsspec} {ifin}{cmd:,} {opt sc:ores}


{pstd}
{it:newvarsspec} 是 {it:stub}{cmd:*} 或 {it:{help newvarlist_zh}}。


INCLUDE help syntax_irt_predict_stats

{marker ioptions}{...}
{synoptset 20 tabbed}{...}
{synopthdr:项目选项}
{synoptline}
{syntab:主}
{synopt :{opt outcome(item)}}指定项目变量；默认为所有变量{p_end}
{synopt :{opth cond:itional(irt_1pl_postestimation##ctype:条件类型)}}计算
     {it:statistic} 以估计的潜变量为条件；默认为 {cmd:conditional(ebmeans)}{p_end}
{synopt :{opt marginal}}计算 {it:statistic} 相对于潜变量的边际值{p_end}

{syntab:积分}
{synopt :{help irt_1pl_postestimation##int_options:{it:积分选项}}}积分
      选项{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help syntax_irt_predict_ctype

{marker loptions}{...}
{synoptset 20 tabbed}{...}
{synopthdr:潜变量选项}
{synoptline}
{syntab:主}
{synopt :{opt ebmean:s}}使用潜在特征的经验贝叶斯均值；默认为此{p_end}
{synopt :{opt ebmode:s}}使用潜在特征的经验贝叶斯模式{p_end}
{synopt :{opth se(newvar)}}计算标准误差{p_end}

{syntab:积分}
{synopt :{help irt_1pl_postestimation##int_options:{it:积分选项}}}积分
    选项{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help syntax_irt_predict_int


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的说明}

{pstd}
{cmd:predict} 创建一个新变量，包含例如概率、线性预测和参数级分数的预测。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

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

{pstd}拟合对二元项目 {cmd:q1-q9} 的 1PL 模型{p_end}
{phang2}{cmd:. irt 1pl q1-q9}

{pstd}重播估计的 IRT 参数表，将输出按参数而不是按项目排序，并按难度升序排列{p_end}
{phang2}{cmd:. estat report, byparm sort(b)}

{pstd}使用 1PL 参数绘制项目特征曲线{p_end}
{phang2}{cmd:. irtgraph icc, blocation legend(pos(3) col(1)}
         {cmd:ring(1) size(small)) xlabel(, alt) xsize(4)}

{pstd}使用 1PL 参数绘制测试特征曲线{p_end}
{phang2}{cmd:. irtgraph tcc, thetalines(-1.96 0 1.96)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irt_1pl_postestimation.sthlp>}