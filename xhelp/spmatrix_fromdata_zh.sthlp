{smcl}
{* *! version 1.0.5  23jun2019}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spmatrix fromdata" "mansection SP spmatrixfromdata"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "[SP] spmatrix" "help spmatrix_zh"}{...}
{vieweralsosee "[SP] spmatrix spfrommata" "help spmatrix spfrommata"}{...}
{vieweralsosee "[SP] spmatrix userdefined" "help spmatrix userdefined"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M] mata" "mansection M-0 Mata"}{...}
{viewerjumpto "Syntax" "spmatrix_fromdata_zh##syntax"}{...}
{viewerjumpto "Menu" "spmatrix_fromdata_zh##menu"}{...}
{viewerjumpto "Description" "spmatrix_fromdata_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "spmatrix_fromdata_zh##linkspdf"}{...}
{viewerjumpto "Options" "spmatrix_fromdata_zh##options"}{...}
{viewerjumpto "Example" "spmatrix_fromdata_zh##example"}
{help spmatrix_fromdata:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[SP] spmatrix fromdata} {hline 2}}从数据创建自定义权重矩阵{p_end}
{p2col:}({mansection SP spmatrixfromdata:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:spmatrix} {cmd:fromdata}
{it:spmatname} {cmd:=} {varlist}
[{cmd:,} {it:选项}]

{phang}
{it:spmatname} 是要创建的空间权重矩阵的名称。

{marker spmatrix_fromdata_options}{...}
{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt :{opt idist:ance}}存储元素的倒数{p_end}
{synopt :{opth norm:alize(spmatrix_fromdata##normalize:normalize)}}规范化类型；默认值为 {cmd:normalized(spectral)}{p_end}
{synopt :{opt replace}}替换现有权重矩阵{p_end}
{synoptline}
{p2colreset}{...}


包含 help menu_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spmatrix} {cmd:fromdata} 从 Sp 数据创建自定义空间权重矩阵。

{pstd}
还有两种其他创建自定义权重矩阵的方法：
{helpb spmatrix userdefined} 和
{helpb spmatrix spfrommata}。这些
方法可能需要更少的工作，但它们需要对 Mata 的了解。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SP spmatrixfromdataQuickstart:快速入门}

        {mansection SP spmatrixfromdataRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt idistance} 通过存储元素的倒数将距离转换为逆距离。

包含 help sp_normalize_des

{phang}
{opt replace} 指定如果矩阵 {it:spmatname} 已经存在，则覆盖它。


{marker example}{...}
{title:示例}

{phang2}{cmd:. spmatrix fromdata Wnew = x1 -xn}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spmatrix_fromdata.sthlp>}