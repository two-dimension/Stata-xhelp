{smcl}
{* *! version 1.0.4  07jan2019}{...}
{viewerdialog predict "dialog irt_p"}{...}
{vieweralsosee "[IRT] irt grm postestimation" "mansection IRT irtgrmpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt grm" "help irt grm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] estat greport" "help estat greport"}{...}
{vieweralsosee "[IRT] estat report" "help estat report"}{...}
{vieweralsosee "[IRT] irtgraph icc" "help irtgraph icc"}{...}
{vieweralsosee "[IRT] irtgraph iif" "help irtgraph iif"}{...}
{vieweralsosee "[IRT] irtgraph tcc" "help irtgraph tcc"}{...}
{vieweralsosee "[IRT] irtgraph tif" "help irtgraph tif"}{...}
{viewerjumpto "后置估计命令" "irt grm postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "irt_grm_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "irt grm postestimation##syntax_predict"}{...}
{viewerjumpto "示例" "irt grm postestimation##examples"}
{help irt_grm_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[IRT] irt grm postestimation} {hline 2}}irt grm 的后置估计工具 {p_end}
{p2col:}({mansection IRT irtgrmpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后置估计命令}

{pstd}
以下是 {cmd:irt grm} 之后特别感兴趣的后置估计命令：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_irt_special
{synoptline}
{p2colreset}{...}

{pstd}
还可用以下标准后置估计命令：

{synoptset 20 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_irt_common1
{synopt :{helpb irt grm postestimation##predict:预测}}预测{p_end}
INCLUDE help post_irt_common2
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。

 
{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection IRT irtgrmpostestimation方法和公式:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{pstd}
获取项目概率和其他统计数据预测的语法

{p 8 16 2}
{cmd:predict} {dtype} {it:newvarsspec} {ifin} 
[{cmd:,} {it:{help irt_grm_postestimation##statistic:统计量}}
{it:{help irt_grm_postestimation##ioptions:item_options}}]


{p 4 4 2}
获取已估计潜变量及其标准误差的语法

{p 8 16 2}
{cmd:predict} {dtype} {it:newvarsspec} {ifin}{cmd:,} {opt latent}
[{it:{help irt_grm_postestimation##loptions:latent_options}}]


{pstd}
获取参数级得分的语法

{p 8 16 2}
{cmd:predict} {dtype} {it:newvarsspec} {ifin}{cmd:,} {opt sc:ores}


{pstd}
{it:newvarsspec} 是 {it:stub}{cmd:*} 或 {it:{help newvarlist_zh}}。


INCLUDE help syntax_irt_predict_stats

{marker ioptions}{...}
{synoptset 20 tabbed}{...}
{synopthdr:item_options}
{synoptline}
{syntab:主}
{p2coldent:* {cmd:outcome(}{it:item} [{it:#}]{cmd:)}}指定项目变量；默认是所有变量{p_end}
{synopt :{cmdab:cond:itional(}{help irt_grm_postestimation##ctype:{it:ctype}}{cmd:)}}计算 {it:statistic} 条件于估计的潜变量；默认是 {cmd:conditional(ebmeans)}{p_end}
{synopt :{opt marginal}}相对于潜变量边际计算 {it:statistic}{p_end}

{syntab:积分}
{synopt :{help irt_grm_postestimation##int_options:{it:int_options}}}积分选项{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* {cmd:outcome(}{it:item #}{cmd:)} 也可以指定为
{cmd:outcome(}{it:#.item}{cmd:)} 或 {cmd:outcome(}{it:item}
{cmd:#}{it:#}{cmd:)}。
{cmd:outcome(}{it:item} {cmd:#3)} 表示第三个结果值。
{cmd:outcome(}{it:item} {cmd:#3)} 在结果为 1, 3, 和 4 时，将与
{cmd:outcome(}{it:item} {cmd:4)} 意思相同。

INCLUDE help syntax_irt_predict_ctype

{marker loptions}{...}
{synoptset 20 tabbed}{...}
{synopthdr:latent_options}
{synoptline}
{syntab:主}
{synopt :{opt ebmean:s}}使用潜在特征的经验贝叶斯均值；默认值{p_end}
{synopt :{opt ebmode:s}}使用潜在特征的经验贝叶斯模式{p_end}
{synopt :{opth se(newvar)}}计算标准误差{p_end}

{syntab:积分}
{synopt :{help irt_grm_postestimation##int_options:{it:int_options}}}积分
    选项{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help syntax_irt_predict_int


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测（如概率、线性预测和参数级得分）的新变量。


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
{phang2}{cmd:. webuse charity}

{pstd}拟合 GRM{p_end}
{phang2}{cmd:. irt grm ta1-ta5}

{pstd}使用 GRM 参数绘制边界特征曲线作为 {cmd:ta1} 的函数{p_end}
{phang2}{cmd:. irtgraph icc ta1, blocation}

{pstd}与上述相同，但绘制类别特征曲线{p_end}
{phang2}{cmd:. irtgraph icc ta1, xlabel(-4 -1.35 1.55 2.9 4, grid)}

{pstd}使用 GRM 参数绘制测试特征曲线{p_end}
{phang2}{cmd:. irtgraph tcc, thetalines(-1.96 0 1.96)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irt_grm_postestimation.sthlp>}