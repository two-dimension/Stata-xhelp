{smcl}
{* *! version 1.1.5  19oct2017}{...}
{viewerdialog discrim "dialog discrim"}{...}
{vieweralsosee "[MV] discrim" "mansection MV discrim"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim estat" "help discrim estat"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] candisc" "help candisc_zh"}{...}
{vieweralsosee "[MV] cluster" "help cluster_zh"}{...}
{viewerjumpto "Syntax" "discrim_zh##syntax"}{...}
{viewerjumpto "Description" "discrim_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "discrim_zh##linkspdf"}{...}
{viewerjumpto "Examples" "discrim_zh##examples"}
{help discrim:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[MV] discrim} {hline 2}}判别分析{p_end}
{p2col:}({mansection MV discrim:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:discrim} {it:subcommand} ... [{cmd:,} ...]

{synoptset 15}{...}
{synopthdr:子命令}
{synoptline}
{synopt:{help discrim_knn_zh:knn}}{it:k}最近邻判别分析{p_end}
{synopt:{help discrim_lda_zh:lda}}线性判别分析{p_end}
{synopt:{help discrim_logistic_zh:logistic}}逻辑判别分析{p_end}
{synopt:{help discrim_qda_zh:qda}}二次判别分析{p_end}
{synoptline}


{marker description}{...}
{title:描述}

{pstd}
{cmd:discrim} 执行判别分析，也称为分类。可用的分析方法包括
{k}最近邻（KNN）判别分析、线性判别分析（LDA）、二次判别分析（QDA）
和逻辑判别分析。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV discrimRemarksandexamples:备注和示例}

        {mansection MV discrimMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rootstock}{p_end}

{pstd}拟合一个{k}最近邻判别分析模型{p_end}
{phang2}{cmd:. discrim knn y*, k(5) group(rootstock)}{p_end}

{pstd}拟合一个线性判别分析（LDA）模型，针对六个根茎组设置相等的先验概率{p_end}
{phang2}{cmd:. discrim lda y1 y2 y3 y4, group(rootstock)}{p_end}

{pstd}拟合一个二次判别分析（QDA）模型，前四个根茎的先验概率为0.2，后两个根茎的先验概率为0.1{p_end}
{phang2}
{cmd:. discrim qda y*, group(rootstock) priors(.2,.2,.2,.2,.1,.1)}
{p_end}

{pstd}拟合一个逻辑判别分析模型{p_end}
{phang2}{cmd:. discrim logistic y*, group(rootstock)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <discrim.sthlp>}