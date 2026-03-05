{smcl}
{* *! version 1.2.5  21may2018}{...}
{viewerdialog predict "dialog discrim_logistic_p"}{...}
{viewerdialog estat "dialog discrim_logistic_estat"}{...}
{vieweralsosee "[MV] discrim logistic postestimation" "mansection MV discrimlogisticpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim logistic" "help discrim logistic"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim estat" "help discrim_estat_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim" "help discrim_zh"}{...}
{viewerjumpto "后续估计命令" "discrim logistic postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "discrim_logistic_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "discrim logistic postestimation##syntax_predict"}{...}
{viewerjumpto "示例" "discrim logistic postestimation##examples"}
{help discrim_logistic_postestimation:English Version}
{hline}{...}
{p2colset 1 41 43 2}{...}
{p2col:{bf:[MV] discrim logistic postestimation} {hline 2}}后续估计
	工具用于 discrim logistic
{p_end}
{p2col:}({mansection MV discrimlogisticpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后续估计命令}

{pstd}
在 {cmd:discrim} {cmd:logistic} 之后，以下后续估计命令特别重要：

{synoptset 19}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb discrim estat##estatclasstable:estat classtable}}分类
	表{p_end}
{synopt:{helpb discrim estat##estaterrorrate:estat errorrate}}分类
	错误率估计{p_end}
{synopt:{helpb discrim estat##estatgrsummarize:estat grsummarize}}组
	汇总{p_end}
{synopt:{helpb discrim estat##estatlist:estat list}}分类
	列表{p_end}
{synopt:{helpb discrim estat##estatsummarize:estat summarize}}估计
	样本摘要{p_end}
{synoptline}

{pstd}
以下标准后续估计命令也可用：

{synoptset 19 tabbed}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{p2coldent:* {help estimates_zh}}编目估计结果{p_end}
{synopt:{helpb discrim logistic postestimation##predict:predict}}组
	分类和后验概率{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 除了 {opt table} 和 {opt stats} 外，所有 {cmd:estimates} 子命令均可用。
{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV discrimlogisticpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar}
	{ifin} [{cmd:,} {it:statistic} {it:options}]

{p 8 16 2}
{cmd:predict} {dtype} {c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-}
	{ifin} [{cmd:,} {it:statistic} {it:options}]

{synoptset 18 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab:主要}
{synopt:{opt c:lassification}}组成员资格分类；当指定一个变量且未指定 {cmd:group()} 时为默认值
	 {p_end}
{synopt:{opt pr}}组成员资格的概率；当指定 {cmd:group()} 或指定多个变量时为默认值{p_end}
{synoptline}

{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opt g:roup(group)}}用于计算统计量的组{p_end}

{syntab:选项}
{synopt:{opth pri:ors(discrim_logistic_postestimation##priors:priors)}}组先验
        概率；默认为 {cmd:e(grouppriors)}{p_end}
{synopt:{opth tie:s(discrim_logistic_postestimation##ties:ties)}}如何处理分类中的平局；默认为 {cmd:e(ties)}{p_end}
{synoptline}
{p2colreset}{...}

包含 help discrim_optsp

{p 4 6 2}
您使用 {opt classification} 指定一个新变量，并使用 {opt pr} 指定一个或 {cmd:e(N_groups)} 个新变量。
{p_end}
{p 4 6 2}
不允许在 {opt classification} 中使用 {opt group()}。
{p_end}


包含 help menu_predict


{marker desc_predict}{...}
{title:预测描述}

{pstd}
{cmd:predict} 创建一个包含诸如组分类和概率等预测的新变量。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{opt classification},
默认值，计算组分类。只能指定一个新变量。

{phang}
{opt pr}
计算组成员资格的后验概率。如果您指定了 {opt group()} 选项，必须指定一个新变量。否则，您必须指定 {cmd:e(N_groups)} 个新变量。

{phang}
{opt group(group)}
指定要计算统计量的组，可以使用 

{pin2}
{cmd:#1}, {cmd:#2}, ..., 其中 {cmd:#1} 表示 {cmd:e(groupvar)} 变量的第一类，{cmd:#2} 表示第二类，等等； 

{pin2}
{cmd:e(groupvar)} 变量的值；或者 

{pin2}
如果存在，{cmd:e(groupvar)} 变量的值标签。

{pmore}
不允许在 {cmd:classification} 中使用 {cmd:group()}。

{dlgtab:选项}

包含 help discrim_priorsp


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rootstock}{p_end}

{pstd}拟合逻辑判别分析模型{p_end}
{phang2}{cmd:. discrim logistic y1 y2 y3 y4, group(rootstock)}{p_end}

{pstd}显示重抽样分类表，前四个接穗的先验概率为 0.2，最后两个接穗的先验概率为 0.1{p_end}
{phang2}{cmd:. estat classtable, priors(.2,.2,.2,.2,.1,.1)}{p_end}

{pstd}预测组的后验概率{p_end}
{phang2}{cmd:. predict postpr*, pr}{p_end}

{pstd}列出真实和分类的组成员资格及错误分类观察值的后验概率{p_end}
{phang2}{cmd:. estat list, misclassified}

{pstd}对于每个组，显示基于后验概率估计的错误率{p_end}
{phang2}{cmd:. estat errorrate, pp}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <discrim_logistic_postestimation.sthlp>}