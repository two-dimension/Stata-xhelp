{smcl}
{* *! version 1.1.5  23jun2019}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spmatrix spfrommata" "mansection SP spmatrixspfrommata"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "[SP] spmatrix" "help spmatrix_zh"}{...}
{vieweralsosee "[SP] spmatrix create" "help spmatrix create"}{...}
{vieweralsosee "[SP] spmatrix matafromsp" "help spmatrix matafromsp"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M] mata" "mansection M-0 Mata"}{...}
{viewerjumpto "Syntax" "spmatrix_spfrommata_zh##syntax"}{...}
{viewerjumpto "Menu" "spmatrix_spfrommata_zh##menu"}{...}
{viewerjumpto "Description" "spmatrix_spfrommata_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "spmatrix_spfrommata_zh##linkspdf"}{...}
{viewerjumpto "Options" "spmatrix_spfrommata_zh##options"}{...}
{viewerjumpto "Example" "spmatrix_spfrommata_zh##example"}
{help spmatrix_spfrommata:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[SP] spmatrix spfrommata} {hline 2}}从 Mata 复制矩阵到 Sp{p_end}
{p2col:}({mansection SP spmatrixspfrommata:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:spmatrix} {cmd:spfrommata}
{it:spmatname} {cmd:=} {it:matamatrix} {it:matavec}
[{cmd:,} {it:选项}]

{marker spmatrix_spfrommata_options}{...}
{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt :{opth norm:alize(spmatrix_spfrommata##normalize:归一化)}}归一化类型；默认值为 {cmd:normalize(spectral)}{p_end}
{synopt :{opt replace}}替换现有加权矩阵{p_end}
{synoptline}
{p2colreset}{...}


包含 帮助菜单_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spmatrix} {cmd:spfrommata}
将权重矩阵和 ID 向量从 Mata 复制到 Sp 空间权重矩阵。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SP spmatrixspfrommataQuickstart:快速入门}

        {mansection SP spmatrixspfrommataRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

包含 帮助 sp_normalize_des

{phang}
{cmd:replace} 指定如果矩阵 {it:spmatname} 已经存在，则将其覆盖。
{p_end}


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/homicide1990.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/homicide1990_shp.dta .}
{p_end}
{phang2}{cmd:. use homicide1990}
{p_end}
{phang2}{cmd:. spset}
{p_end}
{phang2}{cmd:. spmatrix create contiguity C}

{pstd}从 Sp 获取 {cmd:C} 并将大于或等于 0.8 的值更改为 0.5{p_end}
{phang2}{cmd:. spmatrix matafromsp W id = C}{p_end}
        {cmd}. mata:
          for (i=1; i<=rows(W); i++) {
                  for (j=1; j<=cols(W); j++) {
                          if (W[i,j] >= 0.8) W[i,j] = 0.5
                  }
          }
          end{txt}

{pstd}将 {cmd:W} 存回 {cmd:C}{p_end} 
{phang2}{cmd:. spmatrix spfrommata C = W id, replace}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spmatrix_spfrommata.sthlp>}