{smcl}
{* *! version 1.0.3  11feb2011}{...}
{* 此帮助文件由 testmanova.dlg 调用}{...}
{vieweralsosee "[MV] manova" "help manova_zh"}{...}
{vieweralsosee "[MV] manova postestimation" "help manova_postestimation_zh"}
{help mat_manova_example:English Version}
{hline}{...}
{title:使用矩阵测试线性表达式的示例（参考 help manova）}

    在

	{cmd:. manova y1 y2 = a}

{pstd}
其中 {cmd:a} 有四个水平，你可以通过定义一个矩阵来测试{cmd:a}的第一和第二水平的系数是否相等，针对因变量 {cmd:y2}，使用命令

	{cmd:. matrix c = (0,0,0,0,0,0,1,-1,0,0)}

{pstd}
然后将矩阵名称 {cmd:c}（在本例中）作为 {cmd:test()} 的 {cmd:test} 选项的参数提供。

{pstd}
请注意，该矩阵有十列。前五列与 {cmd:y1} 相关，后五列与 {cmd:y2} 相关。每个变量有五列而不是四列，因为每个因变量的模型中自动包含了一个常数。如果不确定列的数量或顺序，可以使用 {bind:{cmd:test , showorder}} 命令，通过在对话框中选择 "{cmd:Show order of columns in the design matrix}" 来检查列的顺序和定义。

{pstd}
矩阵

	{cmd:. matrix x = (0,3,-1,-1,-1,0,3,-1,-1,-1)}

{pstd}
可以用于测试 {cmd:a} 在水平 1 时是否等于 {cmd:a} 在水平 2、3 和 4 的平均值，针对 {cmd:y1} 和 {cmd:y2} 结合成一个单一的自由度测试。

{pstd}
矩阵

{phang2}
{cmd:. matrix z = (0,3,-1,-1,-1,0,0,0,0,0 \ 0,0,0,0,0,0,3,-1,-1,-1)}

{pstd}
可以用于测试 {cmd:a} 在水平 1 时是否等于 {cmd:a} 在水平 2、3 和 4 的平均值，针对 {cmd:y1} 联合以及 {cmd:a} 在水平 1 时等于 {cmd:a} 在水平 2、3 和 4 的平均值针对 {cmd:y2} -- 一个有两个自由度的测试。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mat_manova_example.sthlp>}