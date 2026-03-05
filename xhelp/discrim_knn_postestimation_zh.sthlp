{smcl}
{* *! version 1.2.5  21may2018}{...}
{viewerdialog predict "dialog discrim_knn_p"}{...}
{viewerdialog estat "dialog discrim_knn_estat"}{...}
{vieweralsosee "[MV] discrim knn postestimation" "mansection MV discrimknnpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim knn" "help discrim_knn_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim estat" "help discrim_estat_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim" "help discrim_zh"}{...}
{viewerjumpto "Postestimation commands" "discrim knn postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "discrim_knn_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "discrim knn postestimation##syntax_predict"}{...}
{viewerjumpto "Examples" "discrim knn postestimation##examples"}
{help discrim_knn_postestimation:English Version}
{hline}{...}
{p2colset 1 36 38 2}{...}
{p2col:{bf:[MV] discrim knn postestimation} {hline 2}}后验估计工具
        对于 discrim knn
{p_end}
{p2col:}({mansection MV discrimknnpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验估计命令}

{pstd}
以下后验估计命令在执行 {cmd:discrim} {cmd:knn} 后特别重要：

{synoptset 19}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb discrim estat##estatclasstable:estat classtable}}分类
	表{p_end}
{synopt:{helpb discrim estat##estaterrorrate:estat errorrate}}分类
	错误率估计{p_end}
{synopt:{helpb discrim estat##estatgrsummarize:estat grsummarize}}组
	摘要{p_end}
{synopt:{helpb discrim estat##estatlist:estat list}}分类
	列表{p_end}
{synopt:{helpb discrim estat##estatsummarize:estat summarize}}估计
	样本摘要{p_end}
{synoptline}

{pstd}
以下标准后验估计命令也可用：

{synoptset 19 tabbed}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{p2coldent:* {help estimates_zh}}编目估计结果{p_end}
{synopt:{helpb discrim knn postestimation##predict:predict}}组
	分类和后验概率{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 所有 {cmd:estimates} 子命令（除 {opt table} 和 {opt stats} 外）均可用。
{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV discrimknnpostestimationRemarksandexamples:备注和示例}

        {mansection MV discrimknnpostestimationMethodsandformulas:方法和公式}

{pstd}
上述章节未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:predict 语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar}
	{ifin} [{cmd:,} {it:statistic} {it:options}]

{p 8 16 2}
{cmd:predict} {dtype} {c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-}
	{ifin} [{cmd:,} {it:statistic} {it:options}]

{synoptset 18 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主要}
{synopt:{opt c:lassification}}组成员分类；当指定一个变量且未指定 {cmd:group()} 时默认为此{p_end}
{synopt:{opt pr}}组成员概率；当指定 {cmd:group()} 或多个变量时默认为此{p_end}
{p2coldent:* {opt looc:lass}}留一法组成员分类；仅在指定一个新变量时可用{p_end}
{p2coldent:* {opt loop:r}}留一法组成员概率{p_end}
{synoptline}

{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opt g:roup(group)}}要计算统计量的组{p_end}

{syntab:选项}
{synopt:{opth pri:ors(discrim_knn_postestimation##priors:priors)}}组先验
        概率；默认为 {cmd:e(grouppriors)}{p_end}
{synopt:{opth tie:s(discrim_knn_postestimation##ties:ties)}}分类中如何处理平局；默认为 {cmd:e(ties)}{p_end}

{synopt:{opt noup:date}}不使用留一法预测更新组内协方差矩阵{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 20}{...}
{marker priors}{...}
{synopthdr:先验}
{synoptline}
{synopt:{opt eq:ual}}相等的先验概率{p_end}
{synopt:{opt prop:ortional}}组规模比例的先验概率{p_end}
{synopt:{it:matname}}包含组先验概率的行或列向量{p_end}
{synopt:{it:matrix_exp}}提供组先验概率的行或列向量的矩阵表达式{p_end}
{synoptline}

{marker ties}{...}
{synopthdr:平局}
{synoptline}
{synopt:{opt m:issing}}组分类中的平局产生缺失值{p_end}
{synopt:{opt r:andom}}组分类中的平局随机打破{p_end}
{synopt:{opt f:irst}}组分类中的平局设置为第一个平局组{p_end}
{synopt:{opt n:earest}}组分类中的平局基于最近观察进行分配，若仍产生平局则为缺失值{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
您使用 {opt classification} 或 {opt looclass} 指定一个新变量，使用 {opt pr} 或 {opt loopr} 指定一个或 {cmd:e(N_groups)} 个新变量。
{p_end}
{p 4 6 2}
未带星号的统计在样本内和样本外均可用；如果只需估计样本内的结果，输入 {cmd:predict ... if e(sample) ...}。带星号的统计仅在估计样本中计算，即使未指定 {cmd:if e(sample)}。
{p_end}
{p 4 6 2}
{opt group()} 不允许与 {opt classification} 或 {opt looclass} 一起使用。
{p_end}
{p 4 6 2}
{opt noupdate} 是一个高级选项，在对话框中不显示。
{p_end}


INCLUDE help menu_predict


{marker desc_predict}{...}
{title:predict 的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测结果，如组分类、概率、留一法组分类和留一法概率。


{marker options_predict}{...}
{title:predict 的选项}

{dlgtab:主要}

{phang}
{opt classification}，默认情况，计算组分类。仅可指定一个新变量。

{phang}
{opt pr} 计算组成员后验概率。如果您指定了 {opt group()} 选项，请指定一个新变量。否则，必须指定 {cmd:e(N_groups)} 个新变量。

{phang}
{opt looclass} 计算留一法组分类。仅可指定一个新变量。留一法计算仅限于 {cmd:e(sample)} 观察值。

{phang}
{opt loopr} 计算留一法组成员后验概率。如果您指定了 {opt group()} 选项，请指定一个新变量。否则，必须指定 {cmd:e(N_groups)} 个新变量。留一法计算仅限于 {cmd:e(sample)} 观察值。

{phang}
{opt group(group)} 指定要计算统计量的组，可以使用
 
{pin2}
{cmd:#1}, {cmd:#2}, ...，其中 {cmd:#1} 表示 {cmd:e(groupvar)} 变量的第一类，{cmd:#2} 表示第二类，依此类推； 

{pin2}
{cmd:e(groupvar)} 变量的值；或 

{pin2}
{cmd:e(groupvar)} 变量的值标签（如果存在）。

{pmore}
{cmd:group()} 不允许与 {cmd:classification} 或 {cmd:looclass} 一起使用。

{dlgtab:选项}

INCLUDE help discrim_priorsp

{phang2}
{cmd:ties(}{opt n:earest}{cmd:)} 指定组分类中的平局根据最近观察进行分配，若仍产生平局则为缺失值。

{pstd}
以下选项在执行 {cmd:discrim knn} 后可用，但在对话框中未显示：

{phang}
{opt noupdate} 不使用留一法预测更新组内协方差矩阵。{opt noupdate} 是一个高级且少用的选项，仅在指定了马哈拉诺比斯变换时有效。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rootstock}{p_end}

{pstd}使用三个最近邻和六个根砧木组的相等先验概率拟合 {it:k} 最近邻（KNN）判别分析模型，并显示随机打破平局的分类矩阵{p_end}
{phang2}{cmd:. discrim knn y1 y2 y3 y4, group(rootstock) k(3)}
	{cmd:ties(random)}{p_end}

{pstd}列出误分类观察的真实组、预测组和后验概率{p_end}
{phang2}{cmd:. estat list, misclassified}{p_end}

{pstd}预测留一法后验概率{p_end}
{phang2}{cmd:. predict pp1 pp2 pp3 pp4 pp5 pp6, loopr}{p_end}

{pstd}显示留一法分类表{p_end}
{phang2}{cmd:. estat classtable, loo}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <discrim_knn_postestimation.sthlp>}