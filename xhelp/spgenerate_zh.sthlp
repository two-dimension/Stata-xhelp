{smcl}
{* *! version 1.1.5  30nov2018}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spgenerate" "mansection SP spgenerate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "[SP] spmatrix create" "help spmatrix create"}{...}
{vieweralsosee "[SP] spregress" "help spregress_zh"}{...}
{viewerjumpto "Syntax" "spgenerate_zh##syntax"}{...}
{viewerjumpto "Menu" "spgenerate_zh##menu"}{...}
{viewerjumpto "Description" "spgenerate_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "spgenerate_zh##linkspdf"}{...}
{viewerjumpto "Example" "spgenerate_zh##example"}
{help spgenerate:English Version}
{hline}{...}
{p2colset 1 20 21 2}{...}
{p2col:{bf:[SP] spgenerate} {hline 2}}生成包含空间滞后的变量{p_end}
{p2col:}({mansection SP spgenerate:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法} 

{p 8 14 2}
{cmd:spgenerate} {dtype} {newvar} {cmd:=}
{it:spmatname}{cmd:*}{varname} {ifin}


INCLUDE help menu_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spgenerate} 创建包含 {bf:W}{bf:x} 的新变量。这些是您在使用 Sp 估计命令拟合模型时包含的相同空间滞后变量。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection SP spgenerateQuickstart:快速入门}

        {mansection SP spgenerateRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge_shp.dta .}
{p_end}
{phang2}{cmd:. use texas_merge}

{pstd}使用默认频谱归一化创建邻接加权矩阵{p_end}
{phang2}{cmd:. spmatrix create contiguity W}

{pstd}创建变量 {cmd:W*college}{p_end}
{phang2}{cmd:. spgenerate Wcollege = W*college}

{pstd}查看 {cmd:college} 和 {cmd:Wcollege} 的摘要统计{p_end}
{phang2}{cmd:. summarize unemployment college Wcollege}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spgenerate.sthlp>}