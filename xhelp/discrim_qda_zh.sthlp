{smcl}
{* *! version 1.1.12  19oct2017}{...}
{viewerdialog discrim "dialog discrim, message(-qda-) name(discrim_qda)"}{...}
{vieweralsosee "[MV] discrim qda" "mansection MV discrimqda"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim qda postestimation" "help discrim qda postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim" "help discrim_zh"}{...}
{viewerjumpto "Syntax" "discrim qda##syntax"}{...}
{viewerjumpto "Menu" "discrim qda##menu"}{...}
{viewerjumpto "Description" "discrim qda##description"}{...}
{viewerjumpto "Links to PDF documentation" "discrim_qda_zh##linkspdf"}{...}
{viewerjumpto "Options" "discrim qda##options"}{...}
{viewerjumpto "Examples" "discrim qda##examples"}{...}
{viewerjumpto "Stored results" "discrim qda##results"}
{help discrim_qda:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[MV] discrim qda} {hline 2}}二次判别分析{p_end}
{p2col:}({mansection MV discrimqda:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 20 2}
{cmd:discrim} {cmd:qda} {varlist} {ifin}
        [{it:{help discrim qda##weight:weight}}]{cmd:,}
	{opth g:roup(varlist:groupvar)}
	[{it:options}]

{synoptset 19 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent:* {opth g:roup(varlist:groupvar)}}指定组的变量{p_end}
{synopt:{opth pri:ors(discrim_qda##priors:priors)}}组的先验概率{p_end}
{synopt:{opth tie:s(discrim_qda##ties:ties)}}分类中应如何处理平局{p_end}

{syntab:报告}
{synopt:{opt not:able}}抑制重置分类表{p_end}
{synopt:{opt loo:table}}显示逐一留出分类表{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help discrim_opts

{p 4 6 2}
*{opt group()} 是必需的。{p_end}
{p 4 6 2}
{opt statsby} 和 {cmd:xi} 是允许的；见 {help prefix_zh}。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight} 是允许的；见 {help weight_zh}。
{p_end}
{p 4 6 2}
参见 {manhelp discrim_qda_postestimation MV:discrim qda postestimation} 以获取估计后可用的特性。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量分析 > 判别分析 > 二次（QDA）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:discrim qda} 执行二次判别分析。
有关其他判别命令，请参见 {manhelp discrim MV}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV discrimqdaQuickstart:快速开始}

        {mansection MV discrimqdaRemarksandexamples:备注和示例}

        {mansection MV discrimqdaMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth group:(varlist:groupvar)}
是必需的，指定分组变量的名称。 {it:groupvar} 必须是一个数值变量。

INCLUDE help discrim_priors

{dlgtab:报告}

{phang}
{opt notable}
抑制重置分类表的计算和显示。

{phang}
{opt lootable}
显示逐一留出分类表。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rootstock}{p_end}

{pstd}拟合一个具有相等先验概率的二次判别分析（QDA）模型，适用于六个根砧组，并显示分类矩阵{p_end}
{phang2}{cmd:. discrim qda y1 y2 y3 y4, group(rootstock)}{p_end}

{pstd}拟合相同模型，但前四个根砧的先验概率为0.2，后两个根砧的先验概率为0.1{p_end}
{phang2}
{cmd:. discrim qda y*, group(rootstock) priors(.2,.2,.2,.2,.1,.1)}
{p_end}

{pstd}重放结果，并显示逐一留出分类表以及重置分类表{p_end}
{phang2}{cmd:. discrim, lootable}{p_end}

{pstd}重放结果，恢复为各组的相等先验概率，仅显示逐一留出分类表{p_end}
{phang2}{cmd:. discrim, priors(equal) notable lootable}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:discrim qda} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_groups)}}组数{p_end}
{synopt:{cmd:e(k)}}判别变量的数量{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:discrim}{p_end}
{synopt:{cmd:e(subcmd)}}{cmd:qda}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(groupvar)}}组变量的名称{p_end}
{synopt:{cmd:e(grouplabels)}}组的标签{p_end}
{synopt:{cmd:e(varlist)}}判别变量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(ties)}}如何处理平局{p_end}
{synopt:{cmd:e(properties)}}{cmd:nob noV}{p_end}
{synopt:{cmd:e(estat_cmd)}}实施 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}实施 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(groupcounts)}}每组的观察数{p_end}
{synopt:{cmd:e(grouppriors)}}每组的先验概率{p_end}
{synopt:{cmd:e(groupvalues)}}每组的数值{p_end}
{synopt:{cmd:e(means)}}判别变量的组均值{p_end}
{synopt:{cmd:e(SSCP_W}{it:#}{cmd:)}}组 {it:#} 的组内 SSCP 矩阵{p_end}
{synopt:{cmd:e(W}{it:#}{cmd:_eigvals)}} {cmd:e(SSCP_W}{it:#}{cmd:)} 的特征值{p_end}
{synopt:{cmd:e(W}{it:#}{cmd:_eigvecs)}} {cmd:e(SSCP_W}{it:#}{cmd:)} 的特征向量{p_end}
{synopt:{cmd:e(sqrtS}{it:#}{cmd:inv)}}组 {it:#} 协方差矩阵的逆的 Cholesky（平方根）{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <discrim_qda.sthlp>}