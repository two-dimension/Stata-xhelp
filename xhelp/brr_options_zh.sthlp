{smcl}
{* *! version 1.1.12  23jan2019}{...}
{vieweralsosee "[SVY] brr_options" "mansection SVY brr_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy" "help svy_zh"}{...}
{vieweralsosee "[SVY] svy brr" "help svy_brr_zh"}{...}
{viewerjumpto "Syntax" "brr_options_zh##syntax"}{...}
{viewerjumpto "Description" "brr_options_zh##description"}{...}
{viewerjumpto "Options" "brr_options_zh##options"}{...}
{viewerjumpto "Examples" "brr_options_zh##examples"}
{help brr_options:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[SVY]} {it:brr_options} {hline 2}}更多的 BRR 方差估计选项{p_end}
{p2col:}({mansection SVY brr_options:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25 tabbed}{...}
{synopthdr:brr_options}
{synoptline}
{syntab:SE}
{synopt :{opt mse}}使用 MSE 公式计算方差{p_end}
{synopt :{opt nodots}}抑制复制点{p_end}
{synopt :{opt dots(#)}}每 {it:#} 次复制显示点{p_end}
{synopt :{opt h:adamard(matrix)}}Hadamard 矩阵{p_end}
{synopt :{opt fay(#)}}Fay 的调整{p_end}

{synopt :{help prefix_saving_option_zh:{bf:{ul:sa}ving(}{it:filename}{bf:, ...)}}}保存结果到 {it:filename}{p_end}
{synopt :{opt v:erbose}}显示完整的表图例{p_end}
{synopt :{opt noi:sily}}显示 {it:command} 的任何输出{p_end}
{synopt :{opt tr:ace}}追踪 {it:command}{p_end}
{synopt :{opt ti:tle(text)}}使用 {it:text} 作为结果的标题{p_end}
{synopt :{opt nodrop}}不删除观测值{p_end}
{synopt :{opth reject(exp)}}识别无效结果{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{cmd:saving()}, {cmd:verbose}, {cmd:noisily}, {cmd:trace}, {cmd:title()},
{cmd:nodrop}, 和 {cmd:reject()} 在估计命令的对话框中未显示。


{marker description}{...}
{title:描述}

{pstd}
{cmd:svy} 在进行 BRR 方差估计时接受更多选项。
请参见 {manhelp svy_brr SVY:svy brr} 以获取完整讨论。


{marker options}{...}
{title:选项}

{dlgtab:SE}

{phang}
{opt mse} 指定 {cmd:svy} 通过使用从整个数据集计算的统计值的观测值偏差来计算方差。 默认情况下， {cmd:svy} 通过使用从其均值计算的复制值的偏差来计算方差。

包含帮助 svy_dots

{phang}
{opt hadamard(matrix)} 指定用于确定每个复制选择的 PSUs 的 Hadamard 矩阵。

{phang}
{opt fay(#)} 指定 Fay 的调整。
此选项覆盖 {cmd:svyset} 的 {opt fay(#)} 选项; 见 {manhelp svyset SVY}。

{phang}
{opt saving()}, {opt verbose}, {opt noisily}, {opt trace}, {opt title()},
{opt nodrop}, {opt reject()}; 见 {manhelp svy_brr SVY:svy brr}。


{marker examples}{...}
{title:示例}

{phang}
设置{p_end}
{phang2}
{cmd:. webuse nhanes2brr}

{phang}
显示调查设置{p_end}
{phang2}
{cmd:. svyset}

{phang}
使用平衡重复复制拟合逻辑回归以估计标准误差，将每次复制的结果保存在文件 {cmd:newdata.dta} 中，并在已有文件时替换该文件{p_end}
{phang2}
{cmd:. svy brr,  saving(newdata, replace): logit highbp i.sex age}

{phang}
计算两个总和的比率，通过计算平衡重复复制的标准误差估计，并显示标题 "总和的比率"{p_end}
{phang2}
{cmd:. svy brr WtoH = (_b[weight]/_b[height]), title(总和的比率):}
       {cmd:total weight height}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <brr_options.sthlp>}