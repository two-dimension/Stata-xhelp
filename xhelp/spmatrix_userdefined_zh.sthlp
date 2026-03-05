{smcl}
{* *! version 1.1.5  23jun2019}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spmatrix userdefined" "mansection SP spmatrixuserdefined"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "[SP] spmatrix" "help spmatrix_zh"}{...}
{vieweralsosee "[SP] spmatrix spfrommata" "help spmatrix spfrommata"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M] mata" "mansection M-0 Mata"}{...}
{viewerjumpto "Syntax" "spmatrix_userdefined_zh##syntax"}{...}
{viewerjumpto "Menu" "spmatrix_userdefined_zh##menu"}{...}
{viewerjumpto "Description" "spmatrix_userdefined_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "spmatrix_userdefined_zh##linkspdf"}{...}
{viewerjumpto "Options" "spmatrix_userdefined_zh##options"}{...}
{viewerjumpto "Example" "spmatrix_userdefined_zh##example"}
{help spmatrix_userdefined:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[SP] spmatrix userdefined} {hline 2}}创建自定义加权矩阵{p_end}
{p2col:}({mansection SP spmatrixuserdefined:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:spmatrix} {cmd:userdefined}
{it:Wmatname} {cmd:=} {it:fcnname}{cmd:(}{varlist}{cmd:)}
{ifin}
[{cmd:,} {it:options}]

{phang}
{it:Wmatname} 是加权矩阵名称，例如 {cmd:W}。

{phang}
{it:fcnname} 是您编写的 Mata 函数的名称，例如 {cmd:SinvD} 或 {cmd:Awind}。

{phang2}
1.  {it:fcnname} 必须以字母 {cmd:S} 或 {cmd:A} 开头，这指示函数生成对称或非对称结果。

{phang2}
2.  {it:fcnname} 接受两个行向量参数并返回一个标量结果。例如，

                function SinvD(v1, v2)
                {
                     return(1/sqrt((v1-v2)*(v1-v2)'))
                }

{pmore2}
函数 {cmd:SinvD()} 以 {cmd:S} 开头，因为对于所有 {it:x} 和 {it:y}，有 {cmd:SinvD(}{it:x}{cmd:,} {it:y}{cmd:)} =
{cmd:SinvD(}{it:y}{cmd:,} {it:x}{cmd:)}。

{marker spmatrix_export_options}{...}
{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt :{opth norm:alize(spmatrix_userdefined##normalize:标准化)}}标准化类型；默认值为 {cmd:normalize(spectral)}{p_end}
{synopt :{opt replace}}替换现有的加权矩阵{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spmatrix} {cmd:userdefined} 是创建自定义空间加权矩阵的一种方式。您编写的函数不需要基于坐标位置。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SP spmatrixuserdefinedQuickstart:快速开始}

        {mansection SP spmatrixuserdefinedRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

INCLUDE help sp_normalize_des

{phang}
{opt replace} 指定如果矩阵 {it:spmatname} 已存在，则覆盖它。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge_shp.dta .}
{p_end}
{phang2}{cmd:. use texas_merge}

{pstd}编写一个 Mata 函数{p_end}
        {cmd}. mata:
          function SinvD(vi, vj)
	  {
                  return (1/sqrt( (vi-vj)*(vi-vj)' ) )
          }
          end{txt}

{pstd}创建一个自定义加权矩阵{p_end}
{phang2}{cmd:. spmatrix userdefined W = SinvD(_CX _CY)} 
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spmatrix_userdefined.sthlp>}