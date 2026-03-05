{smcl}
{* *! version 1.0.3  11feb2011}{...}
{* 由 {cmd:mds}、{cmd:mdsmat} 和 {cmd:mdslong} 与 {cmd:protect()} 报告的返回代码}{...}
{vieweralsosee "[MV] mds" "help mds_zh"}{...}
{vieweralsosee "[MV] mdslong" "help mdslong_zh"}{...}
{vieweralsosee "[MV] mdsmat" "help mdsmat_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] mds postestimation" "help mds_postestimation_zh"}
{help mds_mrc:English Version}
{hline}{...}
{title:在 {cmd:protect()} 运行输出中报告的返回代码}
 
{p2colset 2 15 18 2}{...}
{p2coldent:{cmd:mrc}{space 3}{cmd:r()}}描述{p_end}
{p2line}
{p2coldent:0{space 6}0}已达成收敛{p_end}
{p2col:+ 1{space 4}430}未达成收敛；容限标准失败{p_end}
{p2col:+ 2{space 4}430}未达成收敛；ltolerance 标准失败{p_end}
{p2col:+ 3{space 4}430}未达成收敛；容限和 ltolerance 标准均失败{p_end}
{p2coldent:4{space 4}498}经典 MDS 失败：特征值过于接近；无法计算初始值{p_end}
{p2coldent:5{space 4}498}经典 MDS 失败：所有特征值过于接近于 0；无法计算初始值{p_end}
{p2coldent:6{space 4}498}损失无法计算或丢失{p_end}
{p2coldent:7{space 4}498}损失的梯度无法计算或丢失{p_end}
{p2coldent:8{space 4}498}步长确定失败{p_end}
{p2coldent:9{space 4}498}到差异的变换失败{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}{cmd:mrc} 是表格输出中报告的中间返回代码{p_end}
{p 4 6 2}
{cmd:r()} 是来自 {cmd:mds}、{cmd:mdslong} 或 {cmd:mdsmat} 的相应返回代码{p_end}
{p 4 6 2}+ 在未达成收敛的情况下，命令的输出中会显示错误信息，返回 {cmd:r(0)} 并将 {cmd:e(rc)} 设置为 430。 这是在未达成收敛时使用最大似然估计的命令所使用的过程。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mds_mrc.sthlp>}