{smcl}
{* *! version 1.2.7  21may2018}{...}
{viewerdialog predict "dialog discrim_lda_p"}{...}
{viewerdialog estat "dialog discrim_lda_estat"}{...}
{viewerdialog screeplot "dialog screeplot"}{...}
{viewerdialog loadingplot "dialog loadingplot"}{...}
{viewerdialog scoreplot "dialog scoreplot"}{...}
{vieweralsosee "[MV] discrim lda postestimation" "mansection MV discrimldapostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim lda" "help discrim lda"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim estat" "help discrim estat"}{...}
{vieweralsosee "[MV] scoreplot" "help scoreplot_zh"}{...}
{vieweralsosee "[MV] screeplot" "help screeplot_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] candisc" "help candisc_zh"}{...}
{vieweralsosee "[MV] canon" "help canon_zh"}{...}
{vieweralsosee "[MV] discrim" "help discrim_zh"}{...}
{vieweralsosee "[MV] manova" "help manova_zh"}{...}
{viewerjumpto "Postestimation commands" "discrim lda postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "discrim_lda_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "discrim lda postestimation##syntax_predict"}{...}
{viewerjumpto "estat" "discrim lda postestimation##syntax_estat"}{...}
{viewerjumpto "Examples" "discrim lda postestimation##examples"}{...}
{viewerjumpto "Stored results" "discrim lda postestimation##results"}
{help discrim_lda_postestimation:English Version}
{hline}{...}
{p2colset 1 36 38 2}{...}
{p2col:{bf:[MV] discrim lda postestimation} {hline 2}}后验估计工具
        用于 discrim lda
{p_end}
{p2col:}({mansection MV discrimldapostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验估计命令}

{pstd}
以下后验估计命令在 {cmd:discrim lda} 之后特别重要：

{synoptset 23}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb discrim lda postestimation##syntax_estat:estat anova}}方差分析
	汇总表{p_end}
{synopt:{helpb discrim lda postestimation##syntax_estat:estat canontest}}典型判别函数的
	检验{p_end}
{synopt:{helpb discrim lda postestimation##syntax_estat:estat classfunctions}}分类
	函数{p_end}
{synopt:{helpb discrim estat##syntax_estat:estat classtable}}分类
	表{p_end}
{synopt:{helpb discrim lda postestimation##syntax_estat:estat correlations}}相关
	矩阵和 p 值{p_end}
{synopt:{helpb discrim lda postestimation##syntax_estat:estat covariance}}协方差
	矩阵{p_end}
{synopt:{helpb discrim estat##syntax_estat:estat errorrate}}分类
	错误率估计{p_end}
{synopt:{helpb discrim lda postestimation##syntax_estat:estat grdistances}}马氏
	距离和组均值之间的广义平方距离{p_end}
{synopt:{helpb discrim lda postestimation##syntax_estat:estat grmeans}}组
	均值及各种标准化或变换均值{p_end}
{synopt:{helpb discrim estat##syntax_estat:estat grsummarize}}组
	汇总{p_end}
{synopt:{helpb discrim estat##syntax_estat:estat list}}分类
	列表{p_end}
{synopt:{helpb discrim lda postestimation##syntax_estat:estat loadings}}典型
	判别函数系数（载荷）{p_end}
{synopt:{helpb discrim lda postestimation##syntax_estat:estat manova}}MANOVA
	表{p_end}
{synopt:{helpb discrim lda postestimation##syntax_estat:estat structure}}典型
结构矩阵{p_end}
{synopt:{helpb discrim estat##syntax_estat:estat summarize}}估计
样本汇总{p_end}
{synopt:{help scoreplot_zh:loadingplot}}绘制标准化判别函数
载荷图{p_end}
{synopt:{help scoreplot_zh}}绘制判别函数得分图{p_end}
{synopt:{help screeplot_zh}}绘制特征值图{p_end}
{synoptline}

{pstd}
以下标准后验估计命令也可用：

{synoptset 23 tabbed}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{p2coldent:* {help estimates_zh}} cataloging estimation results{p_end}
{synopt:{helpb discrim lda postestimation##predict:predict}}组
	分类和后验概率{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 所有 {cmd:estimates} 子命令，除了 {opt table} 和 {opt stats} 均可用。
{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV discrimldapostestimationRemarksandexamples:备注和示例}

        {mansection MV discrimldapostestimationMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


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
{syntab:主}
{synopt:{opt c:lassification}}组成员资格分类；指定一个变量时默认值
	为此选项且未指定 {cmd:group()}时{p_end}
{synopt:{opt pr}}组成员资格的概率；当指定了 {cmd:group()} 选项或当指定多个变量时默认为此选项{p_end}
{synopt:{opt mah:alanobis}}观察值与组之间的马氏平方距离{p_end}
{synopt:{opt dsc:ore}}判别函数得分{p_end}
{synopt:{opt clsc:ore}}组分类函数得分{p_end}
{p2coldent:* {opt looc:lass}} 留一交叉验证组成员资格分类；仅在指定一个新变量时可以使用{p_end}
{p2coldent:* {opt loop:r}}留一交叉验证组成员资格的概率{p_end}
{p2coldent:* {opt loom:ahal}}留一交叉验证观察值与组之间的马氏平方距离{p_end}
{synoptline}

{synopthdr}
{synoptline}
{syntab:主}
{synopt:{opt g:roup(group)}}计算该统计量的组{p_end}

{syntab:选项}
{synopt:{opth pri:ors(discrim_lda_postestimation##priors:priors)}}组的先验
        概率；默认为 {cmd:e(grouppriors)}{p_end}
{synopt:{opth tie:s(discrim_lda_postestimation##ties:ties)}}如何处理分类中的平局；默认为 {cmd:e(ties)}{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
您必须使用 {opt classification} 或 {opt looclass} 指定一个新变量；使用 {opt pr}、{opt loopr}、{opt mahalanobis}、{opt loomahal} 或 {opt clscore} 要指定一个或 {cmd:e(N_groups)} 个新变量；而 {opt dscore} 则要指定 {cmd:e(f)} 个新变量。
{p_end}
{p 4 6 2}
未加星号的统计量在样本内和样本外均可用；如果仅想要估计样本的结果，请输入 {cmd:predict ... if e(sample) ...}。即使未指定 {cmd:if e(sample)}，加星号的统计量仅在估计样本中计算。
{p_end}
{p 4 6 2}
{opt group()} 不允许与 {opt classification}、{opt dscore} 或 {opt looclass} 一起使用。
{p_end}


INCLUDE help menu_predict


{marker desc_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含诸如组分类、概率、马氏平方距离、判别函数得分、留一交叉验证概率、留一交叉验证组分类和留一交叉验证马氏平方距离的预测值。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主}

{phang}
{opt classification}，默认情况下，计算组分类。只允许指定一个新变量。

{phang}
{opt pr}计算组成员资格的后验概率。如果您指定了 {opt group()} 选项，则指定一个新变量。否则，您必须指定 {cmd:e(N_groups)} 个新变量。

{phang}
{opt mahalanobis}计算观察值与组均值之间的平方马氏距离。如果您指定了 {opt group()} 选项，则指定一个新变量。否则，您必须指定 {cmd:e(N_groups)} 个新变量。

{phang}
{opt dscore}生成判别函数得分。您希望对其进行评分的主要判别函数数量取决于您想要评估的变量数。最多不能超过 {cmd:e(f)} 个变量。

{phang}
{opt clscore}生成组分类函数得分。如果您指定了 {opt group()} 选项，则指定一个新变量。否则，您必须指定 {cmd:e(N_groups)} 个新变量。

{phang}
{opt looclass}计算留一交叉验证组分类。只允许指定一个新变量。留一交叉验证计算仅限于 {cmd:e(sample)} 中的观察值。

{phang}
{opt loopr}计算留一交叉验证组成员资格的后验概率。如果您指定了 {opt group()} 选项，则指定一个新变量。否则，您必须指定 {cmd:e(N_groups)} 个新变量。留一交叉验证计算仅限于 {cmd:e(sample)} 中的观察值。

{phang}
{opt loomahal}计算留一交叉验证观察值与组均值之间的平方马氏距离。如果您指定了 {opt group()} 选项，则指定一个新变量。否则，您必须指定 {cmd:e(N_groups)} 个新变量。留一交叉验证计算仅限于 {cmd:e(sample)} 中的观察值。

{phang}
{opt group(group)}指定将计算该统计量的组，可以使用

{pin2}
{cmd:#1}、{cmd:#2}、...，其中 {cmd:#1} 表示 {cmd:e(groupvar)} 变量的第一个类别，{cmd:#2}表示第二个类别，依此类推； 

{pin2}
{cmd:e(groupvar)} 变量的值；或者 

{pin2}
{cmd:e(groupvar)} 变量的值标签（如果存在）。

{pmore}
{cmd:group()} 不允许与 {cmd:classification}、{cmd:dscore} 或 {cmd:looclass} 一起使用。

{marker priorsdesc}{...}
{dlgtab:选项}

INCLUDE help discrim_priorsp


{marker syntax_estat}{...}
{title:estat 的语法}

{pstd}方差分析汇总表

	{cmd:estat} {opt an:ova}


{pstd}典型判别函数检验

	{cmd:estat} {opt can:ontest}


{pstd}分类函数

{p 8 25 2}
	{cmd:estat} {opt classf:unctions} [{cmd:,}
     {it:{help discrim_lda_postestimation##classfunctions_options:classfunctions_options}}]


{pstd}相关矩阵和 p 值

{p 8 25 2}
	{cmd:estat} {opt cor:relations} [{cmd:,}
     {it:{help discrim_lda_postestimation##correlations_options:correlations_options}}]


{pstd}协方差矩阵

{p 8 25 2}
	{cmd:estat} {opt cov:ariance} [{cmd:,}
      {it:{help discrim_lda_postestimation##covariance_options:covariance_options}}]


{pstd}组均值之间的马氏距离和广义平方距离

{p 8 25 2}
	{cmd:estat} {opt grd:istances} [{cmd:,}
      {it:{help discrim_lda_postestimation##grdistances_options:grdistances_options}}]


{pstd}组均值及各种标准化或变换均值

{p 8 25 2}
	{cmd:estat} {opt grm:eans} [{cmd:,}
      {it:{help discrim_lda_postestimation##grmeans_options:grmeans_options}}]


{pstd}典型判别函数系数（载荷）

{p 8 25 2}
	{cmd:estat} {opt loa:dings} [{cmd:,}
     {it:{help discrim_lda_postestimation##loadings_options:loadings_options}}]


{pstd}MANOVA 表

	{cmd:estat} {opt man:ova}


{pstd}典型结构矩阵

{p 8 25 2}
	{cmd:estat} {opt str:ucture} [{cmd:,} {opth for:mat(%fmt)}]



{marker classfunctions_options}{...}
{synoptset 23 tabbed}{...}
{synopthdr:classfunctions_options}
{synoptline}
{syntab:主}
{synopt:{opt adjusteq:ual}}即使先验相等也调整常数{p_end}
{synopt:{opth for:mat(%fmt)}}数字显示格式；默认为
	{cmd:%9.0g}{p_end}

{syntab:选项}
{synopt:{opth pri:ors(discrim_lda_postestimation##priors:priors)}}组先验
概率；默认为 {cmd:e(grouppriors)}{p_end}
{synopt:{opt nopri:ors}}抑制显示先验概率{p_end}
{synoptline}


{marker correlations_options}{...}
{synoptset 23 tabbed}{...}
{synopthdr:correlations_options}
{synoptline}
{syntab:主}
{synopt:{opt w:ithin}}显示 pooled within-group 相关矩阵；
          默认值{p_end}
{synopt:{opt b:etween}}显示 between-groups 相关矩阵{p_end}
{synopt:{opt t:otal}}显示总样本相关矩阵{p_end}
{synopt:{opt g:roups}}显示每组的相关矩阵{p_end}
{synopt:{opt all}}显示上述所有内容{p_end}
{synopt:{opt p}}为请求的相关性显示双侧 p 值{p_end}
{synopt:{opth for:mat(%fmt)}}数字显示格式；默认为
	{cmd:%9.0g}{p_end}
{synopt:{opt noha:lf}}即使是对称的，也显示完整矩阵{p_end}
{synoptline}


{marker covariance_options}{...}
{synoptset 23 tabbed}{...}
{synopthdr:covariance_options}
{synoptline}
{syntab:主}
{synopt:{opt w:ithin}}显示 pooled within-group 协方差矩阵；默认值{p_end}
{synopt:{opt b:etween}}显示 between-groups 协方差矩阵{p_end}
{synopt:{opt t:otal}}显示总样本协方差矩阵{p_end}
{synopt:{opt g:roups}}显示每组的协方差矩阵{p_end}
{synopt:{opt all}}显示上述所有内容{p_end}
{synopt:{opth for:mat(%fmt)}}数字显示格式；默认为
	{cmd:%9.0g}{p_end}
{synopt:{opt noha:lf}}即使是对称的，也显示完整矩阵{p_end}
{synoptline}


{marker grdistances_options}{...}
{synoptset 23 tabbed}{...}
{synopthdr:grdistances_options}
{synoptline}
{syntab:主}
{synopt:{opt mah:alanobis}[{cmd:(f p)}]}显示组均值之间的马氏平方距离；默认值{p_end}
{synopt:{opt gen:eralized}}显示组均值之间的广义马氏平方距离{p_end}
{synopt:{opt all}}相当于 {cmd:mahalanobis(f p) generalized}{p_end}
{synopt:{opth for:mat(%fmt)}}数字显示格式；默认为
	{cmd:%9.0g}{p_end}

{syntab:选项}
{synopt:{opth pri:ors(discrim_lda_postestimation##priors:priors)}}组先验
概率；仅影响 {opt generalized} 选项的输出。
默认为 {it:priors} 根据 {cmd:e(grouppriors)} 确定。
参见 {it:{help discrim_lda_postestimation##priorsdesc:Options for predict}} 获取
{it:priors} 规格说明。


{marker grmeans_options}{...}
{synoptset 23 tabbed}{...}
{synopthdr:grmeans_options}
{synoptline}
{syntab:主}
{synopt:{opt r:aw}}显示未经变换和未标准化组均值{p_end}
{synopt:{opt t:otalstd}}显示总样本标准化组均值{p_end}
{synopt:{opt w:ithinstd}}显示 pooled within-group 标准化组均值{p_end}
{synopt:{opt c:anonical}}显示在组均值处评估的典型函数{p_end}
{synopt:{opt all}}显示所有均值表{p_end}
{synoptline}


{marker loadings_options}{...}
{synoptset 23 tabbed}{...}
{synopthdr:loadings_options}
{synoptline}
{syntab:主}
{synopt:{opt st:andardized}}显示 pooled within-group 标准化的典型
判别函数系数；默认值{p_end}
{synopt:{opt tot:alstandardized}}显示总样本标准化典型
判别函数系数{p_end}
{synopt:{opt unst:andardized}}显示未标准化的典型判别函数
系数{p_end}
{synopt:{opt all}}相当于指定 {opt standardized}、{opt totalstandardized} 和 {opt unstandardized}。

{phang}
{opth format(%fmt)}指定矩阵显示格式。默认为 
{cmd:format(%9.0g)}。

{marker option_estat_structure}{...}
{title:estat 结构的选择}

{dlgtab:主要}

{phang}
{opth format(%fmt)}指定矩阵显示格式。默认为 
{cmd:format(%9.0g)}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rootstock}{p_end}

{pstd}使用相等的先验概率为六个根茎组拟合线性判别分析 (LDA) 模型并显示分类矩阵{p_end}
{phang2}{cmd:. discrim lda y1 y2 y3 y4, group(rootstock)}{p_end}

{pstd}列出误分类观察值的真实组、预测组和后验概率{p_end}
{phang2}{cmd:. estat list, misclassified}{p_end}

{pstd}预测留一交叉验证后的概率{p_end}
{phang2}{cmd:. predict pp1 pp2 pp3 pp4 pp5 pp6, loopr}{p_end}

{pstd}显示留一交叉验证分类表{p_end}
{phang2}{cmd:. estat classtable, loo}{p_end}

{pstd}显示典型相关性、特征值和典型判别函数的似然比检验{p_end}
{phang2}{cmd:. estat canontest}{p_end}

{pstd}显示分类函数{p_end}
{phang2}{cmd:. estat classfunctions}{p_end}

{pstd}显示典型系数（载荷）{p_end}
{phang2}{cmd:. estat loadings}{p_end}

{pstd}显示典型结构矩阵{p_end}
{phang2}{cmd:. estat structure}{p_end}

{pstd}显示在组均值处评估的典型函数{p_end}
{phang2}{cmd:. estat grmeans, canonical}{p_end}

{pstd}显示组均值之间的马氏平方距离以及相应的 F 检验和 p 值{p_end}
{phang2}{cmd:. estat grdistances, mahalanobis(f p)}{p_end}

{pstd}显示与此判别分析相关的 MANOVA 表{p_end}
{phang2}{cmd:. estat manova}{p_end}

{pstd}显示与此判别分析相关的 ANOVA 汇总{p_end}
{phang2}{cmd:. estat anova}{p_end}

{pstd}显示 pooled within-group 协方差矩阵{p_end}
{phang2}{cmd:. estat covariance}{p_end}

{pstd}显示 pooled within-group 相关矩阵及每组的相关矩阵；为每个相关性呈现双侧 p 值{p_end}
{phang2}{cmd:. estat correlations, within groups p}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat anova} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数{p_end}
{synopt:{cmd:r(df_m)}}模型自由度{p_end}
{synopt:{cmd:r(df_r)}}残差自由度{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(anova_stats)}}模型的 ANOVA 统计量{p_end}


{pstd}
{cmd:estat canontest} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数{p_end}
{synopt:{cmd:r(N_groups)}}组数{p_end}
{synopt:{cmd:r(k)}}变量数{p_end}
{synopt:{cmd:r(f)}}典型判别函数数{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(stat)}}典型判别统计量{p_end}


{pstd}
{cmd:estat classfunction} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(C)}}分类函数矩阵{p_end}
{synopt:{cmd:r(priors)}}组先验概率{p_end}


{pstd}
{cmd:estat correlations} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(Rho)}}pooled within-group 相关矩阵（仅适用于 {opt within}
	）{p_end}
{synopt:{cmd:r(P)}}pooled within-group 相关性对应的双侧 p 值
	（仅适用于 {opt within} 和 {opt p}）{p_end}
{synopt:{cmd:r(Rho_between)}}between-groups 相关矩阵（仅适用于 {opt between}
	）{p_end}
{synopt:{cmd:r(P_between)}}between-groups 相关性对应的双侧 p 值
	（仅适用于 {opt between} 和 {opt p}）{p_end}
{synopt:{cmd:r(Rho_total)}}总样本相关矩阵（仅适用于 {opt total}
	）{p_end}
{synopt:{cmd:r(P_total)}}总样本相关性对应的双侧 p 值
	（仅适用于 {opt total} 和 {opt p}）{p_end}
{synopt:{cmd:r(Rho_}{it:#}{cmd:)}}组 {it:#} 相关矩阵
	（仅适用于 {opt groups}）{p_end}
{synopt:{cmd:r(P_}{it:#}{cmd:)}}组 {it:#} 相关性对应的双侧 p 值
	（仅适用于 {opt groups} 和 {opt p}）{p_end}


{pstd}
{cmd:estat covariance} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(S)}}pooled within-group 协方差矩阵（仅适用于 {opt within}
	）{p_end}
{synopt:{cmd:r(S_between)}}between-groups 协方差矩阵（仅适用于 {opt between}
	）{p_end}
{synopt:{cmd:r(S_total)}}总样本协方差矩阵（仅适用于 {opt total}
	）{p_end}
{synopt:{cmd:r(S_}{it:#}{cmd:)}}组 {it:#} 协方差矩阵（仅适用于 {opt groups}
	）{p_end}


{pstd}
{cmd:estat grdistances} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(df1)}}分子自由度（仅适用于 {opt mahalanobis}
	）{p_end}
{synopt:{cmd:r(df2)}}分母自由度（仅适用于 {opt mahalanobis}
	）{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(sqdist)}}组均值之间的马氏平方距离
	（仅适用于 {opt mahalanobis}）{p_end}
{synopt:{cmd:r(F_sqdist)}}用于检验马氏平方距离是否为零的 F 统计量（仅适用于 {opt mahalanobis}）{p_end}
{synopt:{cmd:r(P_sqdist)}}用于检验马氏平方距离是否为零的 p 值（仅适用于 {opt mahalanobis}）{p_end}
{synopt:{cmd:r(gsqdist)}}组均值之间的广义平方距离
	（仅适用于 {opt generalized}）{p_end}


{pstd}
{cmd:estat grmeans} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(means)}}组均值
	（仅适用于 {opt raw}）{p_end}
{synopt:{cmd:r(stdmeans)}}总样本标准化的组均值
	（仅适用于 {opt totalstd}）{p_end}
{synopt:{cmd:r(wstdmeans)}}pooled within-group 标准化的组均值
	（仅适用于 {opt withinstd}）{p_end}
{synopt:{cmd:r(cmeans)}}在典型变量上的组均值
	（仅适用于 {opt canonical}）{p_end}


{pstd}
{cmd:estat loadings} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(L_std)}}within-group 标准化的典型判别
	function coefficients （仅适用于 {opt standardized}）{p_end}
{synopt:{cmd:r(L_totalstd)}}总样本标准化的典型判别函数系数（仅适用于 {opt totalstandardized}）{p_end}
{synopt:{cmd:r(L_unstd)}}未标准化的典型判别函数系数（仅适用于 {opt unstandardized}）{p_end}


{pstd}
{cmd:estat manova} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数{p_end}
{synopt:{cmd:r(df_m)}}模型自由度{p_end}
{synopt:{cmd:r(df_r)}}残差自由度{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(stat_m)}}模型的多元统计量{p_end}


{pstd}
{cmd:estat structure} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(canstruct)}}典型结构矩阵{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <discrim_lda_postestimation.sthlp>}