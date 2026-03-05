{smcl}
{* *! version 1.1.5  23jun2019}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spmatrix matafromsp" "mansection SP spmatrixmatafromsp"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "[SP] spmatrix" "help spmatrix_zh"}{...}
{vieweralsosee "[SP] spmatrix spfrommata" "help spmatrix spfrommata"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M] mata" "mansection M-0 Mata"}{...}
{viewerjumpto "Syntax" "spmatrix_matafromsp_zh##syntax"}{...}
{viewerjumpto "Menu" "spmatrix_matafromsp_zh##menu"}{...}
{viewerjumpto "Description" "spmatrix_matafromsp_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "spmatrix_matafromsp_zh##linkspdf"}{...}
{viewerjumpto "Example" "spmatrix_matafromsp_zh##example"}
{help spmatrix_matafromsp:English Version}
{hline}{...}
{p2colset 1 29 27 2}{...}
{p2col:{bf:[SP] spmatrix matafromsp} {hline 2}}将权重矩阵复制到 Mata{p_end}
{p2col:}({mansection SP spmatrixmatafromsp:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:spmatrix} {cmd:matafromsp}
{it:matamatrix} {it:matavec} {cmd:=} {it:spmatname}


INCLUDE help menu_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spmatrix matafromsp} 从 Sp 复制权重矩阵 {it:spmatname} 到 Mata。权重矩阵 {it:spmatname} 保持不变。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SP spmatrixmatafromspQuickstart:快速入门}

        {mansection SP spmatrixmatafromspRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在本帮助文件中。


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

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spmatrix_matafromsp.sthlp>}