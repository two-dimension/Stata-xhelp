{smcl}
{* *! version 1.0.4  07jan2019}{...}
{viewerdialog predict "dialog irt_p"}{...}
{vieweralsosee "[IRT] irt pcm postestimation" "mansection IRT irtpcmpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt pcm" "help irt pcm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] estat greport" "help estat greport"}{...}
{vieweralsosee "[IRT] estat report" "help estat report"}{...}
{vieweralsosee "[IRT] irtgraph icc" "help irtgraph icc"}{...}
{vieweralsosee "[IRT] irtgraph iif" "help irtgraph iif"}{...}
{vieweralsosee "[IRT] irtgraph tcc" "help irtgraph tcc"}{...}
{vieweralsosee "[IRT] irtgraph tif" "help irtgraph tif"}{...}
{viewerjumpto "后验估计命令" "irt pcm postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "irt_pcm_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "irt pcm postestimation##syntax_predict"}{...}
{viewerjumpto "示例" "irt pcm postestimation##examples"}
{help irt_pcm_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[IRT] irt pcm 后验估计} {hline 2}}irt pcm 的后验估计工具 {p_end}
{p2col:}({mansection IRT irtpcmpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验估计命令}

{pstd}
以下后验估计命令在执行 {cmd:irt pcm} 和 {cmd:irt gpcm} 后特别重要：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_irt_special
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后验估计命令也可用：

{synoptset 20 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_irt_common1
{synopt :{helpb irt pcm postestimation##predict:预测}}预测{p_end}
INCLUDE help post_irt_common2
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。

 
{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection IRT irtpcmpostestimation方法与公式:方法与公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{pstd}
获取项目概率和其他统计的预测的语法

{p 8 16 2}
{cmd:predict} {dtype} {it:newvarsspec} {ifin} 
[{cmd:,} {it:{help irt_pcm_postestimation##statistic:统计量}}
{it:{help irt_pcm_postestimation##ioptions:项目选项}}]


{p 4 4 2}
获取估计的潜在变量及其标准误差的语法

{p 8 16 2}
{cmd:predict} {dtype} {it:newvarsspec} {ifin}{cmd:,} {opt latent}
[{it:{help irt_pcm_postestimation##loptions:潜在选项}}]


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
{syntab:主要}
{p2coldent:* {cmd:outcome(}{it:item} [{it:#}]{cmd:)}}指定项目变量；默认是所有变量{p_end}
{synopt :{cmdab:cond:itional(}{help irt_pcm_postestimation##ctype:{it:ctype}}{cmd:)}}在估计的潜在变量条件下计算 {it:statistic}；默认是 {cmd:conditional(ebmeans)}{p_end}
{synopt :{opt marginal}}边际计算 {it:statistic}，关于潜在变量{p_end}

{syntab:积分}
{synopt :{help irt_pcm_postestimation##int_options:{it:int_options}}}积分选项{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* {cmd:outcome(}{it:item #}{cmd:)} 也可以指定为
{cmd:outcome(}{it:#.item}{cmd:)} 或 {cmd:outcome(}{it:item}
{cmd:#}{it:#}{cmd:)}。
{cmd:outcome(}{it:item} {cmd:#3)} 表示第三个结果值。
{cmd:outcome(}{it:item} {cmd:#3)} 意味着与
{cmd:outcome(}{it:item} {cmd:4)} 相同，如果结果是 1、3 和 4。

INCLUDE help syntax_irt_predict_ctype

{marker loptions}{...}
{synoptset 20 tabbed}{...}
{synopthdr:潜在选项}
{synoptline}
{syntab:主要}
{synopt :{opt ebmean:s}}使用潜在特征的经验贝叶斯均值；默认{p_end}
{synopt :{opt ebmode:s}}使用潜在特征的经验贝叶斯模式{p_end}
{synopt :{opth se(newvar)}}计算标准误差{p_end}

{syntab:积分}
{synopt :{help irt_pcm_postestimation##int_options:{it:int_options}}}积分
    选项{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help syntax_irt_predict_int


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测的变量，例如概率、线性预测和参数级分数。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

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
{phang2}{cmd:. webuse alike}

{pstd}拟合一个 PCM{p_end}
{phang2}{cmd:. irt pcm v1-v8}

{pstd}使用 PCM 参数绘制 {cmd:v4} 的类别特征曲线与 θ 的函数{p_end}
{phang2}{cmd:. irtgraph icc v4, xlabel(-4 -.33 .71 4, grid)}

{pstd}使用 PCM 参数绘制 {cmd:v2} 的类别特征曲线与 θ 的函数，使用反转以指示被反转阈值的类别被其他两个类别所主导{p_end}
{phang2}{cmd:. irtgraph icc v2, xlabel(-4 -.51 -1.59 4, grid)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irt_pcm_postestimation.sthlp>}