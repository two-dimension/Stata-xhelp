{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog candisc "dialog candisc"}{...}
{vieweralsosee "[MV] candisc" "mansection MV candisc"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim lda" "help discrim lda"}{...}
{viewerjumpto "语法" "candisc_zh##syntax"}{...}
{viewerjumpto "菜单" "candisc_zh##menu"}{...}
{viewerjumpto "描述" "candisc_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "candisc_zh##linkspdf"}{...}
{viewerjumpto "选项" "candisc_zh##options"}{...}
{viewerjumpto "示例" "candisc_zh##examples"}{...}
{viewerjumpto "存储结果" "candisc_zh##results"}
{help candisc:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[MV] candisc} {hline 2}}典型线性判别分析
{p_end}
{p2col:}({mansection MV candisc:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:candisc} {varlist} {ifin} 
        [{it:{help candisc##weight:weight}}]{cmd:,}
	{opth g:roup(varlist:groupvar)}
	[{it:options}]

{synoptset 19 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent:* {opth g:roup(varlist:groupvar)}}指定组的变量{p_end}
{synopt:{opth pri:ors(candisc##priors:priors)}}组的先验概率{p_end}
{synopt:{opth tie:s(candisc##ties:ties)}}如何处理分类中的平局{p_end}

{syntab:报告}
{synopt:{opt not:able}}抑制重替代分类表{p_end}
{synopt:{opt loo:table}}显示逐一留出分类表{p_end}
{synopt:{opt nost:ats}}抑制显示典型统计量{p_end}
{synopt:{opt noco:ef}}抑制显示标准化的典型判别函数系数{p_end}
{synopt:{opt nostr:uct}}抑制显示典型结构矩阵{p_end}
{synopt:{opt nom:eans}}抑制显示典型变量的组均值{p_end}
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
{opt fweight} 是允许的；请参见 {help weight_zh}。
{p_end}
{p 4 6 2}
{* -candisc- 和 -discrim lda- 共享相同的后估计命令 / 帮助}
请查看 {manhelp discrim_lda_postestimation MV:discrim lda 后估计}以了解估计后可用的功能。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量分析 > 判别分析 >}
        {bf:典型线性判别分析}


{marker description}{...}
{title:描述}

{pstd}
{cmd:candisc} 执行典型线性判别分析 (LDA)。所计算的结果与 {manhelp discrim_lda MV:discrim lda} 是相同的。不同之处在于所呈现的结果。有关其他判别命令，请参见 {manhelp discrim MV}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV candiscQuickstart:快速入门}

        {mansection MV candiscRemarksandexamples:备注和示例}

        {mansection MV candiscMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth group:(varlist:groupvar)}
是必需的，并指定分组变量的名称。{it:groupvar} 必须是一个数值变量。

包含 help discrim_priors

{dlgtab:报告}

{phang}
{opt notable}
抑制重替代分类表的计算和显示。

{phang}
{opt lootable}
显示逐一留出分类表。

{phang}
{opt nostats}
抑制显示典型统计量表。

{phang}
{opt nocoef}
抑制显示标准化的典型判别函数系数。

{phang}
{opt nostruct}
抑制显示典型结构矩阵。

{phang}
{opt nomeans}
抑制显示典型变量的组均值。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rootstock}{p_end}

{pstd}为六个根茎组拟合先验概率相等的线性判别分析 (LDA) 模型，并显示典型结果{p_end}
{phang2}{cmd:. candisc y1 y2 y3 y4, group(rootstock)}{p_end}

{pstd}拟合相同的模型，但对于前四个根茎使用 0.2 的先验概率，对于最后两个根茎使用 0.1，仅显示典型判别检验统计量和逐一留出分类表{p_end}
{phang2}
{cmd:. candisc y*, group(rootstock) priors(.2,.2,.2,.2,.1,.1) lootable}
	{cmd:notable nocoef nostruct nomeans}
{p_end}

{pstd}重新播放结果，允许默认显示{p_end}
{phang2}{cmd:. candisc}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:candisc} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察次数{p_end}
{synopt:{cmd:e(N_groups)}}组的数量{p_end}
{synopt:{cmd:e(k)}}判别变量的数量{p_end}
{synopt:{cmd:e(f)}}非零特征值的数量{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:candisc}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(groupvar)}}分组变量的名称{p_end}
{synopt:{cmd:e(grouplabels)}}组的标签{p_end}
{synopt:{cmd:e(varlist)}}判别变量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(ties)}}如何处理平局{p_end}
{synopt:{cmd:e(properties)}}{cmd:nob noV eigen}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(groupcounts)}}每组的观察次数{p_end}
{synopt:{cmd:e(grouppriors)}}每组的先验概率{p_end}
{synopt:{cmd:e(groupvalues)}}每组的数值{p_end}
{synopt:{cmd:e(means)}}判别变量的组均值{p_end}
{synopt:{cmd:e(SSCP_W)}}组合组内 SSCP 矩阵{p_end}
{synopt:{cmd:e(SSCP_B)}}组间 SSCP 矩阵{p_end}
{synopt:{cmd:e(SSCP_T)}}总 SSCP 矩阵{p_end}
{synopt:{cmd:e(SSCP_W}{it:#}{cmd:)}}组 {it:#} 的组内 SSCP 矩阵{p_end}
{synopt:{cmd:e(W_eigvals)}}{cmd:e(SSCP_W)} 的特征值{p_end}
{synopt:{cmd:e(W_eigvecs)}}{cmd:e(SSCP_W)} 的特征向量{p_end}
{synopt:{cmd:e(S)}}组合组内协方差矩阵{p_end}
{synopt:{cmd:e(Sinv)}}{cmd:e(S)} 的逆{p_end}
{synopt:{cmd:e(sqrtSinv)}}{cmd:e(Sinv)} 的 Cholesky（平方根）{p_end}
{synopt:{cmd:e(Ev)}}{cmd:inv(W)*B} 的特征值{p_end}
{synopt:{cmd:e(L_raw)}}{cmd:inv(W)*B} 的特征向量{p_end}
{synopt:{cmd:e(L_unstd)}}未标准化的典型判别函数系数{p_end}
{synopt:{cmd:e(L_std)}}组内标准化的典型判别函数系数{p_end}
{synopt:{cmd:e(L_totalstd)}}全样本标准化的典型判别函数系数{p_end}
{synopt:{cmd:e(C)}}分类系数{p_end}
{synopt:{cmd:e(cmeans)}}在组均值下评估的未标准化典型判别函数{p_end}
{synopt:{cmd:e(canstruct)}}典型结构矩阵{p_end}
{synopt:{cmd:e(candisc_stat)}}典型判别分析统计量{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <candisc.sthlp>}