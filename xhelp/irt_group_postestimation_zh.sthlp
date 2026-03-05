{smcl}
{* *! version 1.0.0  19jun2019}{...}
{viewerdialog predict "dialog irt_p"}{...}
{vieweralsosee "[IRT] irt, group() postestimation" "mansection IRT irt,group()postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt, group()" "help irt group"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] estat greport" "help estat greport"}{...}
{vieweralsosee "[IRT] estat report" "help estat report"}{...}
{vieweralsosee "[IRT] irtgraph icc" "help irtgraph icc"}{...}
{vieweralsosee "[IRT] irtgraph iif" "help irtgraph iif"}{...}
{vieweralsosee "[IRT] irtgraph tcc" "help irtgraph tcc"}{...}
{vieweralsosee "[IRT] irtgraph tif" "help irtgraph tif"}{...}
{viewerjumpto "Postestimation commands" "irt group postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "irt_group_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "irt group postestimation##syntax_predict"}{...}
{viewerjumpto "Examples" "irt group postestimation##examples"}
{help irt_group_postestimation:English Version}
{hline}{...}
{p2colset 1 38 40 2}{...}
{p2col:{bf:[IRT] irt, group() postestimation} {hline 2}}后置估计工具 irt group {p_end}
{p2col:}({mansection IRT irt,group()postestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后置估计命令}

{pstd}
在执行 {cmd:irt, group()} 后，以下后置估计命令尤为重要：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_irt_special
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后置估计命令也可用：

{synoptset 20 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_irt_common1
{synopt :{helpb irt group postestimation##predict:预测}}预测{p_end}
INCLUDE help post_irt_common2
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。

 
{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection IRT irt,group()postestimation方法和公式:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{pstd}
获取项目概率和其他统计数据的预测语法

{p 8 16 2}
{cmd:predict} {dtype} {it:newvarsspec} {ifin} 
[{cmd:,} {it:{help irt_group_postestimation##statistic:统计}}
{it:{help irt_group_postestimation##ioptions:项目选项}}]


{p 4 4 2}
获取估计潜变量及其标准误的语法

{p 8 16 2}
{cmd:predict} {dtype} {it:newvarsspec} {ifin}{cmd:,} {opt latent}
[{it:{help irt_group_postestimation##loptions:潜变量选项}}]


{pstd}
获取参数水平分数的语法

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
{p2coldent:* {cmd:outcome(}{it:item} [{it:#}]{cmd:)}}指定项目变量；默认是所有变量{p_end}
{synopt :{cmdab:cond:ional(}{help irt_grm_postestimation##ctype:{it:ctype}}{cmd:)}}在估计的潜变量的条件下计算 {it:statistic}；默认是 {cmd:conditional(ebmeans)}{p_end}
{synopt :{opt marginal}}以潜变量为条件边际计算 {it:statistic}{p_end}

{syntab:积分}
{synopt :{help irt_grm_postestimation##int_options:{it:int_options}}}积分选项{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* {cmd:outcome(}{it:item #}{cmd:)} 也可以指定为
{cmd:outcome(}{it:#.item}{cmd:)} 或 {cmd:outcome(}{it:item}
{cmd:#}{it:#}{cmd:)}。
{cmd:outcome(}{it:item} {cmd:#3)}表示第三个结果值。
{cmd:outcome(}{it:item} {cmd:#3)}在结果为 1, 3 和 4 的情况下与
{cmd:outcome(}{it:item} {cmd:4)}相同。

INCLUDE help syntax_irt_predict_ctype

{marker loptions}{...}
{synoptset 20 tabbed}{...}
{synopthdr:潜变量选项}
{synoptline}
{syntab:主}
{synopt :{opt ebmean:s}}使用潜在特征的经验贝叶斯均值；默认{p_end}
{synopt :{opt ebmode:s}}使用潜在特征的经验贝叶斯模式{p_end}
{synopt :{opth se(newvar)}}计算标准误{p_end}

{syntab:积分}
{synopt :{help irt_group_postestimation##int_options:{it:int_options}}}积分选项{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help syntax_irt_predict_int


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含如概率、线性预测和参数水平分数的预测。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主}

INCLUDE help des_irt_predict_pr

INCLUDE help des_irt_predict_xb

INCLUDE help des_irt_predict_outcome2

INCLUDE help des_irt_predict_item

INCLUDE help des_irt_predict_latent

INCLUDE help des_irt_predict_se

INCLUDE help des_irt_predict_scores

INCLUDE help des_irt_predict_int


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse masc2}

{pstd}为项目 {cmd:q4} 适配两个组的2PL模型，分开识别区分度和难度参数{p_end}
{phang2}{cmd:. irt (0: 2pl q4) (1: 2pl q4) (2pl q1 q2 q3 q5), group(female)}

{pstd}显示估计的组IRT参数，按参数和难度升序排序{p_end}
{phang2}{cmd:. estat greport, byparm sort(b)}

{pstd}绘制项目 {cmd:q4} 的项目特征曲线{p_end}
{phang2}{cmd:. irtgraph icc q4}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irt_group_postestimation.sthlp>}