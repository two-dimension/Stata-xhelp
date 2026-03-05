{smcl}
{* *! version 1.1.4  15oct2018}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spmatrix summarize" "mansection SP spmatrixsummarize"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "[SP] spmatrix" "help spmatrix_zh"}{...}
{viewerjumpto "Syntax" "spmatrix_summarize_zh##syntax"}{...}
{viewerjumpto "Menu" "spmatrix_summarize_zh##menu"}{...}
{viewerjumpto "Description" "spmatrix_summarize_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "spmatrix_summarize_zh##linkspdf"}{...}
{viewerjumpto "Option" "spmatrix_summarize_zh##option"}{...}
{viewerjumpto "Examples" "spmatrix_summarize_zh##examples"}{...}
{viewerjumpto "Stored results" "spmatrix_summarize_zh##results"}
{help spmatrix_summarize:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[SP] spmatrix summarize} {hline 2}}总结存储在内存中的权重矩阵{p_end}
{p2col:}({mansection SP spmatrixsummarize:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:spmatrix} {cmd:summarize}
{it:spmatname} 
[{cmd:,} {opth gen:erate(newvar)}]

{phang}
{it:spmatname} 是权重矩阵的名称。


INCLUDE help menu_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spmatrix} {cmd:summarize} 报告权重矩阵元素的摘要值。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SP spmatrixsummarizeQuickstart:快速开始}

        {mansection SP spmatrixsummarizeRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opth generate(newvar)} 将新变量 {it:newvar} 添加到数据中。
它包含每个观测的邻居数量。 {cmd:generate()} 仅在 {cmd:spmatrix} {cmd:summarize} 或 {cmd:spmatrix} {cmd:dir} 报告矩阵为邻接矩阵时可以指定。有关 {help sp_glossary##contiguity_matrix:后验邻接矩阵} 的定义，请参见 {manhelp sp_glossary SP:词汇表}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge_shp.dta .}
{p_end}
{phang2}{cmd:. use texas_merge}

{pstd}创建谱归一化的邻接权重矩阵{p_end}
{phang2}{cmd:. spmatrix create contiguity W}

{pstd}创建谱归一化的逆距离权重矩阵{p_end}
{phang2}{cmd:. spmatrix create idistance Wd}

{pstd}显示谱归一化的邻接权重矩阵的摘要统计{p_end}
{phang2}{cmd:. spmatrix summarize W}

{pstd}显示逆距离权重矩阵的摘要统计{p_end}
{phang2}{cmd:. spmatrix summarize Wd}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:spmatrix} {cmd:summarize} 在 {cmd:r()} 中存储以下内容：

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 标量}{p_end}
{synopt :{cmd:r(n)}}行数（列数）{p_end}
{synopt :{cmd:r(min)}}元素：最小值{p_end}
{synopt :{cmd:r(mean)}}元素：平均值{p_end}
{synopt :{cmd:r(min0)}}元素：大于 0 的元素的最小值{p_end}
{synopt :{cmd:r(max)}}元素：最大值{p_end}

{p2col 5 18 22 2: 宏}{p_end}
{synopt :{cmd:r(type)}}矩阵类型： {cmd:contiguity}、{cmd:idistance} 或 {cmd:custom}{p_end}
{synopt :{cmd:r(normalization)}}归一化类型{p_end}

{pstd}
如果 {cmd:r(type)} = {cmd:contiguity}，还存储了 

{p2col 5 15 19 2: 标量}{p_end}
{synopt :{cmd:r(n_min)}}邻居：最小值{p_end}
{synopt :{cmd:r(n_mean)}}邻居：平均值{p_end}
{synopt :{cmd:r(n_max)}}邻居：最大值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spmatrix_summarize.sthlp>}