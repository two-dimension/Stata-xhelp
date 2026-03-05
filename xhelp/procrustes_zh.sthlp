{smcl}
{* *! version 1.2.2  19oct2017}{...}
{viewerdialog procrustes "dialog procrustes"}{...}
{vieweralsosee "[MV] procrustes" "mansection MV procrustes"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] procrustes postestimation" "help procrustes postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] ca" "help ca_zh"}{...}
{vieweralsosee "[MV] mvreg" "help mvreg_zh"}{...}
{vieweralsosee "[MV] pca" "help pca_zh"}{...}
{vieweralsosee "[MV] rotate" "help rotate_zh"}{...}
{viewerjumpto "Syntax" "procrustes_zh##syntax"}{...}
{viewerjumpto "Menu" "procrustes_zh##menu"}{...}
{viewerjumpto "Description" "procrustes_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "procrustes_zh##linkspdf"}{...}
{viewerjumpto "Options" "procrustes_zh##options"}{...}
{viewerjumpto "Remarks" "procrustes_zh##remarks"}{...}
{viewerjumpto "Examples" "procrustes_zh##examples"}{...}
{viewerjumpto "Stored results" "procrustes_zh##results"}
{help procrustes:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[MV] procrustes} {hline 2}}Procrustes 变换
{p_end}
{p2col:}({mansection MV procrustes:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 24 2}{cmd:procrustes}
{cmd:(}{it:{help varlist_zh:varlist_y}}{cmd:)}
{cmd:(}{it:{help varlist_zh:varlist_x}}{cmd:)}
{ifin}
[{it:{help procrustes##weight:weight}}]
[{cmd:,} {it:options}]

{synoptset 27 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt:{cmdab:tr:ansform:(}{cmdab:or:thogonal}{cmd:)}}正交旋转和
	反射变换；默认为此{p_end}
{synopt:{cmdab:tr:ansform:(}{cmdab:ob:lique}{cmd:)}}倾斜旋转
	变换{p_end}
{synopt:{cmdab:tr:ansform:(}{cmdab:un:restricted}{cmd:)}}无约束
	变换{p_end}
{synopt:{opt nocons:tant}}抑制常数项{p_end}
{synopt:{opt norh:o}}抑制扩张因子 rho（设置 rho=1）{p_end}
{synopt:{opt force}}允许目标变量 {it:{help varlist_zh:varlist_y}} 和源变量 {it:varlist_x} 中的重叠和重复（高级）{p_end}

{syntab:报告}
{synopt:{opt nofi:t}}抑制每个目标变量的拟合统计量表{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{cmd:bootstrap}, {cmd:by}, {cmd:jackknife}, 和 {cmd:statsby} 被允许；参见 {help prefix_zh}。
{p_end}
{p 4 6 2}与 {help bootstrap_zh} 前缀不允许使用权重.{p_end}
{p 4 6 2}{cmd:aweight} 不允许与 {help jackknife_zh} 前缀配合使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:aweight} 和 {cmd:fweight}；见 {help weights}。
{p_end}
{p 4 6 2}
参见 {manhelp procrustes_postestimation MV:procrustes postestimation} 以获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量分析 > Procrustes 变换}


{marker description}{...}
{title:描述}

{pstd}
{cmd:procrustes} 执行 Procrustes 分析，一种标准的多维尺度法，其目标是将源变量列表尽可能地转变为目标变量列表。接近度通过残差平方和来衡量。允许的变换包括扩张（均匀缩放）、旋转和反射（即正交或倾斜变换）以及平移。{cmd:procrustes} 仅处理完整案例。{cmd:procrustes} 假定各维度的权重或缩放相等。在使用 {cmd:procrustes} 之前，不同尺度测量的变量应标准化。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV procrustesQuickstart:快速启动}

        {mansection MV procrustesRemarksandexamples:备注和示例}

        {mansection MV procrustesMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}{opt transform(transform)}
指定变换方法。允许的变换方法如下：

{phang2}{opt orthogonal}
指定线性变换矩阵 {bf:A} 应该是正交的，
{bf:A}'{bf:A} = {bf:A}{bf:A}' = {bf:I}。这是默认设置。

{phang2}{opt oblique}
指定线性变换矩阵 {bf:A} 应该是倾斜的，
diag({bf:A}{bf:A}') = {bf:1}。

{phang2}{opt unrestricted}
对 {bf:A} 不施加任何限制，使得 {cmd:procrustes} 变换等同于具有不相关误差的多变量回归；参见 {manhelp mvreg MV}。

{phang}{opt noconstant}
指定平移分量 {bf:c} 固定为 {bf:0}
（零向量）。

{phang}{opt norho}
指定扩张（缩放）常数 rho 固定为 1。
此选项在 {cmd:transform(unrestricted)} 下无效；
在这种情况下，rho 始终固定为 1。

{phang}{opt force}，一个高级选项，
允许目标变量 
{it:{help varlist_zh:varlist_y}} 和源变量 {it:varlist_x} 中的重叠和重复。

{dlgtab:报告}

{phang}{opt nofit}
抑制每个目标变量的拟合统计量表。此选项可以在估计和重播时指定。


{marker remarks}{...}
{title:备注}

{pstd}
正式地，{cmd:procrustes} 解决最小化问题

{pin2}
最小化 {space 1}  | {bf:Y} - ({bf:1} {bf:c}' + rho {bf:X} {bf:A}) |

{pstd}
其中 {bf:c} 是表示平移的行向量；rho 是标量“扩张因子”；{bf:A} 是旋转和反射矩阵（正交、倾斜或无约束）；|.| 表示 L2 范数。

{pstd}
源变量 ({bf:X}) 的数量不得超过目标变量 ({bf:Y}) 的数量以进行正交变换。{cmd:procrustes} 仅处理完整案例。对于某些目标变量缺失的“部分 Procrustes 问题”的高效算法仍在开发中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse speed_survey}

{pstd}Procrustes 变换{p_end}
{phang2}{cmd:. procrustes (survey_x survey_y) (speed_x speed_y)}

{pstd}与上述相同，但省略扩张因子{p_end}
{phang2}{cmd:. procrustes (survey_x survey_y) (speed_x speed_y)， norho}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:procrustes} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察的数量{p_end}
{synopt:{cmd:e(rho)}}扩张因子{p_end}
{synopt:{cmd:e(P)}}Procrustes 统计量{p_end}
{synopt:{cmd:e(ss)}}所有 y 变量的平方和{p_end}
{synopt:{cmd:e(rss)}}所有 y 变量的残差平方和{p_end}
{synopt:{cmd:e(rmse)}}均方根误差{p_end}
{synopt:{cmd:e(urmse)}}均方根误差（未调整估计参数数量）{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(ny)}}y 变量数量（目标变量）{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:procrustes}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(ylist)}}y 变量（目标变量）{p_end}
{synopt:{cmd:e(xlist)}}x 变量（源变量）{p_end}
{synopt:{cmd:e(transform)}}{cmd:orthogonal}、{cmd:oblique} 或
{cmd:unrestricted}{p_end}
{synopt:{cmd:e(uniqueA)}}{cmd:1} 如果旋转是唯一的，{cmd:0} 则不是{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(properties)}}{cmd:nob noV}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}由于 {cmd:margins} 而不允许的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(c)}}平移向量{p_end}
{synopt:{cmd:e(A)}}正交变换矩阵{p_end}
{synopt:{cmd:e(ystats)}}包含拟合统计量的矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <procrustes.sthlp>}