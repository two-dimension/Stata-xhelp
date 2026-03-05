{smcl}
{* *! version 1.2.5  15may2018}{...}
{viewerdialog predict "dialog discrim_qda_p"}{...}
{viewerdialog estat "dialog discrim_qda_estat"}{...}
{vieweralsosee "[MV] discrim qda postestimation" "mansection MV discrimqdapostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim qda" "help discrim qda"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim estat" "help discrim_estat_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim" "help discrim_zh"}{...}
{viewerjumpto "Postestimation commands" "discrim qda postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "discrim_qda_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "discrim qda postestimation##syntax_predict"}{...}
{viewerjumpto "estat" "discrim qda postestimation##syntax_estat"}{...}
{viewerjumpto "Examples" "discrim qda postestimation##examples"}{...}
{viewerjumpto "Stored results" "discrim qda postestimation##results"}
{help discrim_qda_postestimation:English Version}
{hline}{...}
{p2colset 1 36 38 2}{...}
{p2col:{bf:[MV] discrim qda postestimation} {hline 2}}后验估计工具
        用于 discrim qda
{p_end}
{p2col:}({mansection MV discrimqdapostestimation:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验估计命令}

{pstd}
在执行 {cmd:discrim qda} 后，以下后验估计命令特别重要：

{synoptset 19}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb discrim estat##syntax_estat:estat classtable}}分类
	表{p_end}
{synopt:{helpb discrim qda postestimation##syntax_estat:estat correlations}}组
	相关矩阵及 p 值{p_end}
{synopt:{helpb discrim qda postestimation##syntax_estat:estat covariance}}组
	协方差矩阵{p_end}
{synopt:{helpb discrim estat##syntax_estat:estat errorrate}}分类
	错误率估计{p_end}
{synopt:{helpb discrim estat##syntax_estat:estat grdistances}}马哈拉诺比斯
	距离及组均值之间的广义平方距离{p_end}
{synopt:{helpb discrim estat##syntax_estat:estat grsummarize}}组
	汇总{p_end}
{synopt:{helpb discrim estat##syntax_estat:estat list}}分类
	列表{p_end}
{synopt:{helpb discrim estat##syntax_estat:estat summarize}}估计
	样本摘要{p_end}
{synoptline}

{pstd}
以下标准的后验估计命令也可用：

{synoptset 19 tabbed}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{p2coldent:* {help estimates_zh}}结果分类目录{p_end}
{synopt:{helpb discrim qda postestimation##predict:predict}}组
	分类和后验概率{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 所有 {cmd:estimates} 子命令（除 {opt table} 和 {opt stats} 外）均可用。
{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV discrimqdapostestimationRemarksandexamples:备注和示例}

        {mansection MV discrimqdapostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar}
	{ifin} [{cmd:,} {it:statistic} {it:options}]

{p 8 16 2}
{cmd:predict} {dtype} {c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-}
	{ifin} [{cmd:,} {it:statistic} {it:options}]

{synoptset 18 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:Main}
{synopt:{opt c:lassification}}组成员分类；默认是指定一个变量且未指定 {cmd:group()}{p_end}
{synopt:{opt pr}}组成员概率；在指定 {cmd:group()} 或多个变量时，默认值{p_end}
{synopt:{opt mah:alanobis}}观测值与组之间的马哈拉诺比斯平方距离{p_end}
{synopt:{opt clsc:ore}}组分类函数得分{p_end}
{p2coldent:* {opt looc:lass}}留一法组成员分类；仅在指定一个新变量时可用{p_end}
{p2coldent:* {opt loop:r}}留一法组成员概率{p_end}
{p2coldent:* {opt loom:ahal}}留一法马哈拉诺比斯平方距离{p_end}
{synoptline}

{synopthdr}
{synoptline}
{syntab:Main}
{synopt:{opt g:roup(group)}}要计算的统计量组{p_end}

{syntab:Options}
{synopt:{opth pri:ors(discrim_qda_postestimation##priors:priors)}}组先验概率；默认为{cmd:e(grouppriors)}{p_end}
{synopt:{opth tie:s(discrim_qda_postestimation##ties:ties)}}分类中的平局处理方式；默认为{cmd:e(ties)}{p_end}
{synoptline}
{p2colreset}{...}

包含 help discrim_optsp

{p 4 6 2}
您在 {opt classification} 或 {opt looclass} 中指定一个新变量，并在 {opt pr}、{opt loopr}、{opt mahalanobis}、{opt loomahal} 或 {opt clscore} 中指定一个或 {cmd:e(N_groups)} 个新变量。
{p_end}
{p 4 6 2}
未加星号的统计量在样本内和样本外都可用；如果仅想获得估计样本中的结果，请输入 {cmd:predict ... if e(sample) ...}。加星号的统计量仅针对估计样本计算，即使未指定 {cmd:if e(sample)}。
{p_end}
{p 4 6 2}
{opt group()} 不允许与 {opt classification} 或 {opt looclass} 配合使用。
{p_end}


包含 help menu_predict


{marker desc_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，例如组分类、概率、马哈拉诺比斯平方距离、留一法组分类、留一法概率以及留一法马哈拉诺比斯平方距离。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:Main}

{phang}
{opt classification}，默认情况下，计算组分类。只能指定一个新变量。

{phang}
{opt pr} 计算组成员后验概率。如果指定了 {opt group()} 选项，则需指定一个新变量。否则，需指定 {cmd:e(N_groups)} 个新变量。

{phang}
{opt mahalanobis} 计算观测值与组均值之间的平方马哈拉诺比斯距离。如果指定了 {opt group()} 选项，则需指定一个新变量。否则，需指定 {cmd:e(N_groups)} 个新变量。

{phang}
{opt clscore} 生成组分类函数得分。如果指定了 {opt group()} 选项，则需指定一个新变量。否则，需指定 {cmd:e(N_groups)} 个新变量。

{phang}
{opt looclass} 计算留一法组分类。只能指定一个新变量。留一法计算限于 {cmd:e(sample)} 观察值。

{phang}
{opt loopr} 计算留一法组成员后验概率。如果指定了 {opt group()} 选项，则需指定一个新变量。否则，需指定 {cmd:e(N_groups)} 个新变量。留一法计算限于 {cmd:e(sample)} 观察值。

{phang}
{opt loomahal} 计算观测值与组均值之间的留一法平方马哈拉诺比斯距离。如果指定了 {opt group()} 选项，则需指定一个新变量。否则，需指定 {cmd:e(N_groups)} 个新变量。留一法计算限于 {cmd:e(sample)} 观察值。

{phang}
{opt group(group)} 指定要计算统计量的组，可以使用

{pin2}
{cmd:#1}、{cmd:#2}、...，其中 {cmd:#1} 表示 {cmd:e(groupvar)} 变量的第一个类别，{cmd:#2} 表示第二个类别，依此类推； 

{pin2}
{cmd:e(groupvar)} 变量的值；或 

{pin2}
{cmd:e(groupvar)} 变量的值标签（如果存在）。

{pmore}
{cmd:group()} 不允许与 {cmd:classification} 或 {cmd:looclass} 配合使用。

{marker priorsdesc}{...}
{dlgtab:Options}

包含 help discrim_priorsp


{marker estatcorr}{marker estatcov}{marker estatgrdist}{...}
{marker syntax_estat}{...}
{title:estat 的语法}

{pstd}组相关矩阵及 p 值

{p 8 25 2}
	{cmd:estat} {opt cor:relations} [{cmd:,}
    {it:{help discrim_qda_postestimation##correlations_options:correlations_options}}]


{pstd}组协方差矩阵

{p 8 25 2}
	{cmd:estat} {opt cov:ariance} [{cmd:,}
    {it:{help discrim_qda_postestimation##covariance_options:covariance_options}}]


{pstd}组均值之间的马哈拉诺比斯和广义平方距离

{p 8 25 2}
	{cmd:estat} {opt grd:istances} [{cmd:,}
    {it:{help discrim_qda_postestimation##grdistances_options:grdistances_options}}]


{marker correlations_options}{...}
{synoptset 23 tabbed}{...}
{synopthdr:correlations_options}
{synoptline}
{syntab:Main}
{synopt:{opt p}}显示双尾 p 值{p_end}
{synopt:{opth for:mat(%fmt)}}数值显示格式；默认是
        {cmd:%9.0g}{p_end}
{synopt:{opt noha:lf}}即使对称也显示完整矩阵{p_end}
{synoptline}


{marker covariance_options}{...}
{synoptset 23 tabbed}{...}
{synopthdr:covariance_options}
{synoptline}
{syntab:Main}
{synopt:{opth for:mat(%fmt)}}数值显示格式；默认是
	{cmd:%9.0g}{p_end}
{synopt:{opt noha:lf}}即使对称也显示完整矩阵{p_end}
{synoptline}


{marker grdistances_options}{...}
{synoptset 23 tabbed}{...}
{synopthdr:grdistances_options}
{synoptline}
{syntab:Main}
{synopt:{opt mah:alanobis}}显示组均值之间的马哈拉诺比斯平方距离；默认值{p_end}
{synopt:{opt gen:eralized}}显示组均值之间的广义马哈拉诺比斯平方距离{p_end}
{synopt:{opt all}}等同于 {cmd:mahalanobis generalized}{p_end}
{synopt:{opth for:mat(%fmt)}}数值显示格式；默认是
        {cmd:%9.0g}{p_end}

{syntab:Options}
{synopt:{opth pri:ors(discrim_qda_postestimation##grdist_priors:priors)}}组
	先验概率；默认为 {cmd:e(grouppriors)}{p_end}
{synoptline}


包含 help menu_estat


{marker desc_estat}{...}
{title:estat 的描述}

{pstd}
{cmd:estat correlations} 显示组相关矩阵。相关性也有双尾 p 值可用。

{pstd}
{cmd:estat covariance} 显示组协方差矩阵。

{pstd}
{cmd:estat grdistances} 提供组均值之间的马哈拉诺比斯平方距离和广义平方距离。


{marker options_estat_correlations}{...}
{title:estat correlations 的选项}

{dlgtab:Main}

{phang}
{opt p} 指定应计算和显示相关性的双尾 p 值。

{phang}
{opth format(%fmt)} 指定矩阵显示格式。默认是
{cmd:format(%8.5f)}。

{phang}
{opt nohalf} 指定尽管矩阵是对称的，仍应打印完整矩阵。默认是仅打印下三角。


{marker options_estat_covariance}{...}
{title:estat covariance 的选项}

{dlgtab:Main}

{phang}
{opth format(%fmt)} 指定矩阵显示格式。默认是
{cmd:format(%9.0g)}。

{phang}
{opt nohalf} 指定尽管矩阵是对称的，仍应打印完整矩阵。默认是仅打印下三角。


{marker options_estat_grdistances}{...}
{title:estat grdistances 的选项}

{dlgtab:Main}

{phang}
{opt mahalanobis} 指定应显示组均值之间的马哈拉诺比斯平方距离的表。

{phang}
{opt generalized} 指定应显示组均值之间的广义马哈拉诺比斯平方距离的表。 {opt generalized} 从 {opt mahalanobis} 选项生成的内容开始，并添加与可能不等的协方差相关的项以及考虑先验概率的项。先验概率由 {opt priors()} 选项提供，如果未指定 {opt priors()}，则由 {cmd:e(grouppriors)} 中的值提供。根据常规约定，如果先验概率在各组之间相等，则省略先验概率项。

{phang}
{opt all} 等同于指定 {cmd:mahalanobis} 和 {opt generalized}。

{phang}
{opth format(%fmt)} 指定矩阵显示格式。默认是
{cmd:format(%9.0g)}。

{dlgtab:Options}

{marker grdist_priors}{...}
{phang}
{opt priors(priors)} 指定组先验概率，仅影响 {opt generalized} 选项的输出。
默认情况下，{it:priors} 是从 {cmd:e(grouppriors)} 中确定的。
有关 {it:priors} 规范，请参见 {it:{help discrim_qda_postestimation##priorsdesc:预测选项}}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rootstock}{p_end}

{pstd}拟合一个二次判别分析（QDA）模型，对六个根茎组使用相等的先验概率，并显示分类矩阵{p_end}
{phang2}{cmd:. discrim qda y1 y2 y3 y4, group(rootstock)}{p_end}

{pstd}列出错误分类观察值的真实组、预测组和后验概率{p_end}
{phang2}{cmd:. estat list, misclassified}{p_end}

{pstd}预测留一法后验概率{p_end}
{phang2}{cmd:. predict pp1 pp2 pp3 pp4 pp5 pp6, loopr}{p_end}

{pstd}显示留一法分类表{p_end}
{phang2}{cmd:. estat classtable, loo}{p_end}

{pstd}显示组均值之间的马哈拉诺比斯平方距离{p_end}
{phang2}{cmd:. estat grdistances}{p_end}

{pstd}显示组协方差矩阵{p_end}
{phang2}{cmd:. estat covariance}{p_end}

{pstd}显示组相关矩阵及相关的双尾 p 值{p_end}
{phang2}{cmd:. estat correlations, p}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat correlations} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(Rho_}{it:#}{cmd:)}}组 {it:#} 相关矩阵{p_end}
{synopt:{cmd:r(P_}{it:#}{cmd:)}}组 {it:#} 的双尾 p 值
        相关性{p_end}


{pstd}
{cmd:estat covariance} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(S_}{it:#}{cmd:)}}组 {it:#} 协方差矩阵{p_end}


{pstd}
{cmd:estat grdistances} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(sqdist)}}组均值之间的马哈拉诺比斯平方距离
	（{opt mahalanobis} 仅适用）{p_end}
{synopt:{cmd:r(gsqdist)}}组均值之间的广义平方距离
	（{opt generalized} 仅适用）{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <discrim_qda_postestimation.sthlp>}