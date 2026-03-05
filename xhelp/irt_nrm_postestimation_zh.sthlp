{smcl}
{* *! version 1.0.4  07jan2019}{...}
{viewerdialog predict "dialog irt_p"}{...}
{vieweralsosee "[IRT] irt nrm postestimation" "mansection IRT irtnrmpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt nrm" "help irt nrm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] estat greport" "help estat greport"}{...}
{vieweralsosee "[IRT] estat report" "help estat report"}{...}
{vieweralsosee "[IRT] irtgraph icc" "help irtgraph icc"}{...}
{vieweralsosee "[IRT] irtgraph iif" "help irtgraph iif"}{...}
{vieweralsosee "[IRT] irtgraph tcc" "help irtgraph tcc"}{...}
{vieweralsosee "[IRT] irtgraph tif" "help irtgraph tif"}{...}
{viewerjumpto "后估计命令" "irt nrm postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "irt_nrm_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "irt nrm postestimation##syntax_predict"}{...}
{viewerjumpto "示例" "irt nrm postestimation##examples"}
{help irt_nrm_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[IRT] irt nrm postestimation} {hline 2}}irt nrm 的后估计工具 {p_end}
{p2col:}({mansection IRT irtnrmpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在 {cmd:irt nrm} 之后特别重要：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_irt_special
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 20 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_irt_common1
{synopt :{helpb irt nrm postestimation##predict:预测}}预测{p_end}
INCLUDE help post_irt_common2
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。

 
{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection IRT irtnrmpostestimation方法和公式:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{pstd}
获取项目概率和其他统计数据的预测的语法

{p 8 16 2}
{cmd:predict} {dtype} {it:newvarsspec} {ifin} 
[{cmd:,} {it:{help irt_nrm_postestimation##statistic:统计量}}
{it:{help irt_nrm_postestimation##ioptions:项目选项}}]


{p 4 4 2}
获取估计的潜在变量及其标准误的语法

{p 8 16 2}
{cmd:predict} {dtype} {it:newvarsspec} {ifin}{cmd:,} {opt latent}
[{it:{help irt_nrm_postestimation##loptions:潜在选项}}]


{pstd}
获取参数级评分的语法

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
{synopt :{cmdab:cond:itional(}{help irt_nrm_postestimation##ctype:{it:ctype}}{cmd:)}}在估计的潜在变量条件下计算 {it:statistic}；默认是 {cmd:conditional(ebmeans)}{p_end}
{synopt :{opt marginal}}在潜在变量下边际计算 {it:statistic}{p_end}

{syntab:积分}
{synopt :{help irt_nrm_postestimation##int_options:{it:int_options}}}积分选项{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* {cmd:outcome(}{it:item #}{cmd:)} 也可以指定为
{cmd:outcome(}{it:#.item}{cmd:)} 或 {cmd:outcome(}{it:item}
{cmd:#}{it:#}{cmd:)}。
{cmd:outcome(}{it:item} {cmd:#3)} 意味着第三个结果值。
{cmd:outcome(}{it:item} {cmd:#3)} 如果结果为 1、3 和 4，将意味着与
{cmd:outcome(}{it:item} {cmd:4)} 相同。

INCLUDE help syntax_irt_predict_ctype

{marker loptions}{...}
{synoptset 20 tabbed}{...}
{synopthdr:潜在选项}
{synoptline}
{syntab:主}
{synopt :{opt ebmean:s}}使用潜在特征的经验贝叶斯均值；默认选项{p_end}
{synopt :{opt ebmode:s}}使用潜在特征的经验贝叶斯模式{p_end}
{synopt :{opth se(newvar)}}计算标准误{p_end}

{syntab:积分}
{synopt :{help irt_nrm_postestimation##int_options:{it:int_options}}}积分选项{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help syntax_irt_predict_int


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测值的新变量，例如概率、线性预测和参数级评分。


{marker options_predict}{...}
{title:预测的选项}

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
{phang2}{cmd:. webuse science}

{pstd}拟合一个 NRM{p_end}
{phang2}{cmd:. irt nrm q1-q4}

{pstd}使用 NRM 参数绘制 {cmd:q1} 的类别特征曲线与 theta 的关系{p_end}
{phang2}{cmd:. irtgraph icc q1, xlabel(-4 -.85 -1.35 -.56 4, grid alt)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irt_nrm_postestimation.sthlp>}