
{smcl}
{* *! version 1.0.3  16apr2009}{...}
{cmd:help matrix makeCns}, {cmd:help matrix dispCns}{...}
{right:{help prdocumented_zh:之前已记录}}
{help matrix_makecns:English Version}
{hline}
{hline}

{title:标题}

{pstd}
{hi:[P] matrix makeCns} {hline 2} 约束估计


{title:语法}

	{cmdab:mat:rix} {cmd:makeCns} [{it:clist} | {it:matname}]

	{cmdab:mat:rix} {cmd:dispCns} [{cmd:,} {cmd:r} ]

{pstd}
其中 {it:clist} 是约束编号的列表，由逗号或连字符分隔。

{pstd}
{it:matname} 是一个现有的矩阵，表示约束，必须比 {hi:e(b)} 和 {hi:e(V)} 矩阵多出一列。


{title:描述}

{pstd}
{cmd:matrix makeCns} 创建一个约束矩阵；该矩阵可以通过 {cmd:matrix get(Cns)} 函数获得 (见 {hi:[P] matrix get} 或 {helpb get()} )。
{cmd:matrix dispCns} 以可读形式显示系统存储的约束矩阵。

{pstd}
请见 {help makecns_zh}，了解 {cmd:matrix makeCns} 和 {cmd:matrix dispCns} 的较新替代方案，以及有关 {cmd:matcproc} 命令的信息。

{pstd}
如果您只对在支持约束估计的命令中使用约束感兴趣，请参阅 {hi:[R] constraint} 和 {help constraint_zh}。


{title:选项}

{phang}
{cmd:r} 抑制 {cmd:matrix dispCns} 的输出，改为填充宏 {cmd:r(cns}{it:#}{cmd:)} 以及标量 {cmd:r(k)}。


{title:另见}

{psee}
手册:  {help prdocumented_zh:之前已记录}

{psee}
{space 2}帮助:  {manhelp makecns P};
{manhelp constraint R};
{manhelp get() P:matrix get}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matrix_makecns.sthlp>}