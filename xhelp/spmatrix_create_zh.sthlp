{smcl}
{* *! version 1.1.5  23jun2019}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spmatrix create" "mansection SP spmatrixcreate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "[SP] spmatrix" "help spmatrix_zh"}{...}
{vieweralsosee "[M] mata" "mansection M-0 Mata"}{...}
{viewerjumpto "语法" "spmatrix_create_zh##syntax"}{...}
{viewerjumpto "菜单" "spmatrix_create_zh##menu"}{...}
{viewerjumpto "描述" "spmatrix_create_zh##description"}{...}
{viewerjumpto "PDF文档链接" "spmatrix_create_zh##linkspdf"}{...}
{viewerjumpto "spmatrix create 邻接选项" "spmatrix_create_zh##options_contiguity"}{...}
{viewerjumpto "spmatrix create 逆距离选项" "spmatrix_create_zh##option_idistance"}{...}
{viewerjumpto "邻接和逆距离的选项" "spmatrix_create_zh##options_contiguity_idistance"}{...}
{viewerjumpto "示例" "spmatrix_create_zh##examples"}
{help spmatrix_create:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[SP] spmatrix create} {hline 2}}创建标准权重矩阵{p_end}
{p2col:}({mansection SP spmatrixcreate:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:spmatrix} {cmd:create}
{opt cont:iguity} {it:spmatname}
{ifin}
[{cmd:,} {help spmatrix_create##contoptions:{it:contoptions}}
{help spmatrix_create##stdoptions:{it:stdoptions}}]

{p 8 14 2}
{cmd:spmatrix} {cmd:create}
{opt idist:ance} {it:spmatname}
{ifin}
[{cmd:,} {help spmatrix_create##idistoption:{it:idistoption}}
{help spmatrix_create##stdoptions:{it:stdoptions}}]

{phang}
{it:spmatname} 是一个权重矩阵名称。

{marker contoptions}{...}
{synoptset 20}{...}
{synopthdr:邻接选项}
{synoptline}
{synopt :{opt rook}}共享边界而不仅仅是一个顶点{p_end}
{synopt :{opt first}}一阶邻居{p_end}
{synopt :{opt sec:ond}[{cmd:(}{it:#}{cmd:)}]}二阶邻居{p_end}
{synoptline}

{marker idistoption}{...}
{synopthdr:逆距离选项}
{synoptline}
{synopt :{opt vtrunc:ate(#)}}如果 1/距离 {ul:<} {it:#} 则将 (i,j) 元素设为 0{p_end}
{synoptline}

{marker stdoptions}{...}
{synopthdr:标准选项}
{synoptline}
{synopt :{opth norm:alize(spmatrix_create##normalize:normalize)}}规范化的类型；默认是 {cmd:normalize(spectral)}{p_end}
{synopt :{cmd:replace}}替换现有的权重矩阵{p_end}
{synoptline}


INCLUDE help menu_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spmatrix} {cmd:create} 创建标准格式的空间权重矩阵。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SP spmatrixcreateQuickstart:快速开始}

        {mansection SP spmatrixcreateRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker options_contiguity}{...}
{title:spmatrix create 邻接选项}

{phang}
{opt rook} 指定仅共享顶点的区域不视为邻居。例如，考虑以下地图：

                                  +-------+
                                  |       |
                       +----------+   C   |
                       |    B     |       |
                 +----------------+-------+
                 |          A     |
                 +----------------+

{pmore}
如果未指定 {opt rook}，A 和 C 被视为邻居，因为它们有一个公共的顶点（角落）。如果指定 {opt rook}，则 A 和 C 不被视为邻居。无论是否指定 {opt rook}，A 和 B 为邻居，B 和 C 为邻居，因为它们共享边界（线段）。

{phang}
{opt first} 指定一阶邻居被赋值为 1。如果区域 i 和 j 是邻居，则 {it:spmatname}_{i,j} =
{it:spmatname}_{j,i} = 1。 {cmd:first} 是默认值，除非指定 {cmd:second} 或
{opt second(#)}。

{phang}
{opt second}[{cmd:(}{it:#}{cmd:)}] 指定二阶邻居——邻居的邻居——被赋予非零值。
{cmd:second} 指定它们被赋值为 1。 {opt second(#)} 指定它们被赋值为 {it:#}。

{pmore}
如果您还指定了选项 {cmd:first}，则创建的矩阵将使一阶邻居包含 1。例如，如果您指定了 {cmd:first}
{cmd:second}，两种邻居都会被设为 1。如果您指定了 {cmd:first} {cmd:second(.5)}，则一阶邻居设为 1，二阶邻居设为 0.5。


{marker option_idistance}{...}
{title:spmatrix create 逆距离选项}

{marker vtruncate}{...}
{phang}
{opt vtruncate(#)} 指定远离 {it:#} 的区域设为 0。输入 {cmd:spset} 而不带参数以确定 {it:#} 的单位。 {opt spset} 输出的 {opt coordinates} 行将是以下之一：

            {cmd}coordinates:  _CX, _CY (平面)
            coordinates:  _CY, _CX (纬度和经度，公里)
            coordinates:  _CY, _CX (纬度和经度，英里){txt}

{pmore}
{it:#} 的单位将是平面单位、公里或英里。如果是平面单位，请参见 {manhelp spdistance SP} 获取有关确定单位的建议。

{pmore}
如果 {opt spset} 报告

            {cmd:coordinates:  none}

{pmore}
则无法使用 {cmd:spmatrix} {cmd:create}。


{marker options_contiguity_idistance}{...}
{title:邻接和逆距离的选项}

{marker normalize}{...}
{phang}
{opt normalize(normalize)} 指定结果矩阵应如何缩放。

{phang2}
{cmd:normalize(}{cmdab:spec:tral)} 是默认值。矩阵将被规范化，使其最大特征值为 1。

{phang2}
{cmd:normalize(minmax)} 指定矩阵元素按绝对值的最大行或列和中较小者进行划分。最小-最大计算比
谱计算快得多，并且在大多数情况下给出的结果与谱规范化类似。

{phang2}
{cmd:normalize(row)} 指定矩阵的每一行按该行的和（非绝对值）进行划分。这个调整的速度比最小-最大调整还快。

{phang2}
{cmd:normalize(none)} 指定不对矩阵进行再缩放。此选项有一个用途：以未调整的形式存储矩阵，以便您可以在之后检索它，在矩阵仍处于其原始单位时对其进行更改，然后重新发布矩阵，届时将进行重新缩放。请参阅  
{mansection SP spregressRemarksandexamplesChoosingweightingmatricesandtheirnormalization:{it:选择权重矩阵及其规范化}}
在 {bf:[SP] spregress} 中以了解有关规范化的详细信息。

{phang}
{opt replace} 指定如果矩阵 {it:spmatname} 已存在，则可以替换该矩阵。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge_shp.dta .}
{p_end}
{phang2}{cmd:. use texas_merge}

{pstd}使用默认谱规范化创建邻接权重矩阵{p_end}
{phang2}{cmd:. spmatrix create contiguity W}

{pstd}创建行标准化的邻接权重矩阵，二阶邻居设为 0.5 并进行行规范化{p_end}
{phang2}{cmd:. spmatrix create contiguity M, normalize(row) second(0.5)}

{pstd}创建带有最小-最大规范化的谱规范化逆距离权重矩阵{p_end}
{phang2}{cmd:. spmatrix create idistance W, normalize(minmax) replace}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spmatrix_create.sthlp>}