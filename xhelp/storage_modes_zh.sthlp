{smcl}
{* *! version 1.0.6  11feb2011}{...}
{vieweralsosee "[D] corr2data" "help corr2data_zh"}{...}
{vieweralsosee "[D] drawnorm" "help drawnorm_zh"}{...}
{vieweralsosee "[MV] factor" "help factormat"}{...}
{vieweralsosee "[P] matrix define" "help matrix_define_zh"}{...}
{vieweralsosee "[MV] pca" "help pcamat"}
{help storage_modes:English Version}
{hline}{...}
{title:标题}

{p2colset 5 22 24 2}{...}
{p2col :{hi:存储模式} {hline 2}}相关性和协方差矩阵的存储模式{p_end}
{p2colreset}{...}


{title:描述}

{pstd}
{help corr2data_zh} 和 {help drawnorm_zh} 中指定相关性或协方差矩阵的三种存储模式将通过一个包含4个变量的相关结构 {cmd:C} 来说明。在 {cmd:full} 存储模式下，该结构可以作为一个 {bind:4x4} 的 Stata 矩阵输入：

{space 8}{cmd:. matrix C = ( 1.0000,  0.3232,  0.1112,  0.0066 \ ///}
{space 23}{cmd:0.3232,  1.0000,  0.6608, -0.1572 \ ///}
{space 23}{cmd:0.1112,  0.6608,  1.0000, -0.1480 \ ///}
{space 23}{cmd:0.0066, -0.1572, -0.1480,  1.0000 )}

{pstd}
一行中的元素用逗号分隔，行与行之间用反斜杠 {cmd:\} 分隔。我们使用输入续行操作符 {cmd:///} 方便多行输入；请参见 {manhelp comments P}。在这种存储模式下，您可能希望为变量设置行名和列名：

{p 8 23 2}{cmd:. matrix rownames C = price trunk headroom rep78}{p_end}
{p 8 23 2}{cmd:. matrix colnames C = price trunk headroom rep78}{p_end}

{pstd}
这个相关结构可以在两种向量化存储模式中更方便地输入。在这些模式中，您以行序方式输入 {cmd:C} 的下三角或上三角；这两种存储模式仅在记录 k(k+1)/2 矩阵元素的顺序上有所不同。{cmd:lower} 存储模式对应于 {cmd:C}，它由一个包含 4(4+1)/2=10 个元素的向量组成，即一个 1x10 或 10x1 的 Stata 矩阵，只有一行或一列，

{space 8}{cmd:. matrix C = ( 1.0000,  ///}
{space 23}{cmd:0.3232,  1.0000,  ///}
{space 23}{cmd:0.1112,  0.6608,  1.0000, ///}
{space 23}{cmd:0.0066, -0.1572, -0.1480,  1.0000 )}

{pstd}
或者更紧凑地写作

{p 8 23 2}
{cmd:. matrix C = ( 1, 0.3232, 1, 0.1112, 0.6608, 1, 0.0066, -0.1572, -0.1480, 1 )}

{pstd}
作为一种替代向量化，{cmd:C} 可以在 {cmd:upper} 存储模式下输入，作为一个包含 4(4+1)/2=10 个元素的向量，即一个 1x10 或 10x1 的 Stata 矩阵，

{space 8}{cmd:. matrix C = ( 1.0000,  0.3232,  0.1112,  0.0066, ///}
{space 23}{cmd:         1.0000,  0.6608, -0.1572, ///}
{space 23}{cmd:                  1.0000, -0.1480, ///}
{space 23}{cmd:                           1.0000 )}

{pstd}
或者更紧凑地写作

{p 8 23 2}
{cmd:. matrix C = ( 1, 0.3232, 0.1112, 0.0066, 1, 0.6608, -0.1572, 1, -0.1480, 1 )}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <storage_modes.sthlp>}