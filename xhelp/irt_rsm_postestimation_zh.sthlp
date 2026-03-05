{smcl}
{* *! version 1.0.4  07jan2019}{...}
{viewerdialog predict "dialog irt_p"}{...}
{vieweralsosee "[IRT] irt rsm postestimation" "mansection IRT irtrsmpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt rsm" "help irt rsm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] estat greport" "help estat greport"}{...}
{vieweralsosee "[IRT] estat report" "help estat report"}{...}
{vieweralsosee "[IRT] irtgraph icc" "help irtgraph icc"}{...}
{vieweralsosee "[IRT] irtgraph iif" "help irtgraph iif"}{...}
{vieweralsosee "[IRT] irtgraph tcc" "help irtgraph tcc"}{...}
{vieweralsosee "[IRT] irtgraph tif" "help irtgraph tif"}{...}
{viewerjumpto "后估计命令" "irt rsm postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "irt_rsm_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "irt rsm postestimation##syntax_predict"}{...}
{viewerjumpto "示例" "irt rsm postestimation##examples"}
{help irt_rsm_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[IRT] irt rsm postestimation} {hline 2}}irt rsm 的后估计工具 {p_end}
{p2col:}({mansection IRT irtrsmpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在执行 {cmd:irt rsm} 后特别关注：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_irt_special
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可以使用：

{synoptset 20 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_irt_common1
{synopt :{helpb irt rsm postestimation##predict:预测}}预测{p_end}
包含 help post_irt_common2
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。

 
{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection IRT irtrsmpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{pstd}
获取项目概率和其他统计信息预测的语法

{p 8 16 2}
{cmd:predict} {dtype} {it:newvarsspec} {ifin} 
[{cmd:,} {it:{help irt_rsm_postestimation##statistic:统计量}}
{it:{help irt_rsm_postestimation##ioptions:项目选项}}]


{p 4 4 2}
获取估计潜变量及其标准误的语法

{p 8 16 2}
{cmd:predict} {dtype} {it:newvarsspec} {ifin}{cmd:,} {opt latent}
[{it:{help irt_rsm_postestimation##loptions:潜变量选项}}]


{pstd}
获取参数水平分数的语法

{p 8 16 2}
{cmd:predict} {dtype} {it:newvarsspec} {ifin}{cmd:,} {opt sc:ores}


{pstd}
{it:newvarsspec} 是 {it:stub}{cmd:*} 或 {it:{help newvarlist_zh}}。


包含 help syntax_irt_predict_stats

{marker ioptions}{...}
{synoptset 20 tabbed}{...}
{synopthdr:项目选项}
{synoptline}
{syntab:主}
{p2coldent:* {cmd:outcome(}{it:item} [{it:#}]{cmd:)}}指定项目变量；默认是所有变量{p_end}
{synopt :{cmdab:cond:itional(}{help irt_rsm_postestimation##ctype:{it:ctype}}{cmd:)}}在估计的潜变量基础上计算 {it:statistic}；默认值是 {cmd:conditional(ebmeans)}{p_end}
{synopt :{opt marginal}}在潜变量的基础上边际计算 {it:statistic}{p_end}

{syntab:积分}
{synopt :{help irt_rsm_postestimation##int_options:{it:int_options}}}积分选项{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* {cmd:outcome(}{it:item #}{cmd:)} 也可以指定为
{cmd:outcome(}{it:#.item}{cmd:)} 或 {cmd:outcome(}{it:item}
{cmd:#}{it:#}{cmd:)}。
{cmd:outcome(}{it:item} {cmd:#3)} 表示第三个结果值。
{cmd:outcome(}{it:item} {cmd:#3)} 意味着与
{cmd:outcome(}{it:item} {cmd:4)} 相同，如果结果为 1、3 和 4。

包含 help syntax_irt_predict_ctype

{marker loptions}{...}
{synoptset 20 tabbed}{...}
{synopthdr:潜变量选项}
{synoptline}
{syntab:主}
{synopt :{opt ebmean:s}}使用潜变量的经验贝叶斯均值；默认值{p_end}
{synopt :{opt ebmode:s}}使用潜变量的经验贝叶斯模式{p_end}
{synopt :{opth se(newvar)}}计算标准误{p_end}

{syntab:积分}
{synopt :{help irt_rsm_postestimation##int_options:{it:int_options}}}积分选项{p_end}
{synoptline}
{p2colreset}{...}

包含 help syntax_irt_predict_int


包含 help menu_predict


{marker des_predict}{...}
{title:预测的说明}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，如概率、线性预测和参数水平分数。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

包含 help des_irt_predict_pr

包含 help des_irt_predict_xb

包含 help des_irt_predict_outcome2

包含 help des_irt_predict_item

包含 help des_irt_predict_latent

包含 help des_irt_predict_se

包含 help des_irt_predict_scores

包含 help des_irt_predict_int


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse charity}

{pstd}拟合 RSM{p_end}
{phang2}{cmd:. irt rsm ta1-ta5}

{pstd}使用 RSM 参数绘制 {cmd:ta1} 的类别特征曲线图{p_end}
{phang2}{cmd:. irtgraph icc ta1, xlabel(-4 -1.26 -.16 .90 4, grid)}

{pstd}使用 RSM 参数绘制所有项目第一个类别的类别特征曲线图{p_end}
{phang2}{cmd:. irtgraph icc 0.ta*}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irt_rsm_postestimation.sthlp>}