{smcl}
{* *! version 1.2.2  19oct2017}{...}
{viewerdialog discrim "dialog discrim, message(-lda-) name(discrim_lda)"}{...}
{vieweralsosee "[MV] discrim lda" "mansection MV discrimlda"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim lda postestimation" "help discrim lda postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim" "help discrim_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] candisc" "help candisc_zh"}{...}
{viewerjumpto "Syntax" "discrim lda##syntax"}{...}
{viewerjumpto "Menu" "discrim lda##menu"}{...}
{viewerjumpto "Description" "discrim lda##description"}{...}
{viewerjumpto "Links to PDF documentation" "discrim_lda_zh##linkspdf"}{...}
{viewerjumpto "Options" "discrim lda##options"}{...}
{viewerjumpto "Examples" "discrim lda##examples"}{...}
{viewerjumpto "Stored results" "discrim lda##results"}
{help discrim_lda:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[MV] discrim lda} {hline 2}}线性判别分析{p_end}
{p2col:}({mansection MV discrimlda:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 20 2}
{cmd:discrim} {cmd:lda} {varlist} {ifin} 
        [{it:{help discrim lda##weight:权重}}]{cmd:,}
	{opth g:roup(varlist:groupvar)}
	[{it:选项}]

{synoptset 19 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent:* {opth g:roup(varlist:groupvar)}}指定组的变量{p_end}
{synopt:{opth pri:ors(discrim_lda##priors:先验)}组的先验概率{p_end}
{synopt:{opth tie:s(discrim_lda##ties:平局)}}如何处理分类中的平局{p_end}

{syntab:报告}
{synopt:{opt not:able}}抑制重代入分类表{p_end}
{synopt:{opt loo:table}}显示逐一剔除分类表{p_end}
{synoptline}
{p2colreset}{...}

包含 help discrim_opts

{p 4 6 2}
*{opt group()} 是必需的。{p_end}
{p 4 6 2}
{opt statsby} 和 {cmd:xi} 是允许的；请参见 {help prefix_zh}。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight} 被允许；请参见 {help weight_zh}。
{p_end}
{p 4 6 2}
有关估计后可用的特性，请参见 {manhelp discrim_lda_postestimation MV:discrim lda postestimation}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量分析 > 判别分析 > 线性 (LDA)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:discrim lda} 执行线性判别分析。
有关其他判别命令，请参见 {manhelp discrim MV}。

{pstd}
如果您想显示典型的线性判别结果，请参见 {manhelp candisc MV}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV discrimldaQuickstart:快速入门}

        {mansection MV discrimldaRemarksandexamples:备注和示例}

        {mansection MV discrimldaMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth group:(varlist:groupvar)}
是必需的，指定分组变量的名称。 {it:groupvar} 必须是一个数值变量。

包含 help discrim_priors

{dlgtab:报告}

{phang}
{opt notable}
抑制重代入分类表的计算和显示。

{phang}
{opt lootable}
显示逐一剔除分类表。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rootstock}{p_end}

{pstd}拟合一个线性判别分析 (LDA) 模型，假设六个根砧组的先验概率相等，并显示分类矩阵{p_end}
{phang2}{cmd:. discrim lda y1 y2 y3 y4, group(rootstock)}{p_end}

{pstd}拟合相同模型，但前四个根砧的先验概率为 0.2，最后两个根砧的先验概率为 0.1{p_end}
{phang2}
{cmd:. discrim lda y*, group(rootstock) priors(.2,.2,.2,.2,.1,.1)}
{p_end}

{pstd}重放结果并显示逐一剔除分类表以及重代入分类表{p_end}
{phang2}{cmd:. discrim, lootable}{p_end}

{pstd}重放结果，切换回各组平等的先验概率，只显示逐一剔除分类表{p_end}
{phang2}{cmd:. discrim, priors(equal) notable lootable}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:discrim lda} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_groups)}}组的数量{p_end}
{synopt:{cmd:e(k)}}判别变量的数量{p_end}
{synopt:{cmd:e(f)}}非零特征值的数量{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:discrim}{p_end}
{synopt:{cmd:e(subcmd)}}{cmd:lda}{p_end}
{synopt:{cmd:e(cmdline)}}命令按原样输入{p_end}
{synopt:{cmd:e(groupvar)}}分组变量的名称{p_end}
{synopt:{cmd:e(grouplabels)}}组的标签{p_end}
{synopt:{cmd:e(varlist)}}判别变量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(ties)}}平局的处理方式{p_end}
{synopt:{cmd:e(properties)}}{cmd:nob noV eigen}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}不允许 {cmd:margins} 的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(groupcounts)}}每组的观察数量{p_end}
{synopt:{cmd:e(grouppriors)}}每组的先验概率{p_end}
{synopt:{cmd:e(groupvalues)}}每组的数值{p_end}
{synopt:{cmd:e(means)}}判别变量上的组均值{p_end}
{synopt:{cmd:e(SSCP_W)}}合并组内 SSCP 矩阵{p_end}
{synopt:{cmd:e(SSCP_B)}}组间 SSCP 矩阵{p_end}
{synopt:{cmd:e(SSCP_T)}}总 SSCP 矩阵{p_end}
{synopt:{cmd:e(SSCP_W}{it:#}{cmd:)}}组 {it:#} 的组内 SSCP 矩阵{p_end}
{synopt:{cmd:e(W_eigvals)}}{cmd:e(SSCP_W)} 的特征值{p_end}
{synopt:{cmd:e(W_eigvecs)}}{cmd:e(SSCP_W)} 的特征向量{p_end}
{synopt:{cmd:e(S)}}合并组内协方差矩阵{p_end}
{synopt:{cmd:e(Sinv)}}{cmd:e(S)} 的逆{p_end}
{synopt:{cmd:e(sqrtSinv)}}{cmd:e(Sinv)} 的 Cholesky (平方根){p_end}
{synopt:{cmd:e(Ev)}}{cmd:inv(W)*B} 的特征值{p_end}
{synopt:{cmd:e(L_raw)}}{cmd:inv(W)*B} 的特征向量{p_end}
{synopt:{cmd:e(L_unstd)}}未标准化典型判别函数系数{p_end}
{synopt:{cmd:e(L_std)}}组内标准化的典型判别函数系数{p_end}
{synopt:{cmd:e(L_totalstd)}}总样本标准化的典型判别函数系数{p_end}
{synopt:{cmd:e(C)}}分类系数{p_end}
{synopt:{cmd:e(cmeans)}}在组均值处评估的未标准化典型判别函数{p_end}
{synopt:{cmd:e(canstruct)}}典型结构矩阵{p_end}
{synopt:{cmd:e(candisc_stat)}}典型判别分析统计量{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <discrim_lda.sthlp>}