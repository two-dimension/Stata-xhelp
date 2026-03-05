{smcl}
{* *! version 1.1.5  19oct2017}{...}
{vieweralsosee "[P] matrix score" "mansection P matrixscore"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{viewerjumpto "Syntax" "matrix_score_zh##syntax"}{...}
{viewerjumpto "Description" "matrix_score_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "matrix_score_zh##linkspdf"}{...}
{viewerjumpto "Options" "matrix_score_zh##options"}{...}
{viewerjumpto "Example" "matrix_score_zh##example"}
{help matrix_score:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[P] matrix score} {hline 2}}从系数向量评分数据{p_end}
{p2col:}({mansection P matrixscore:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}{cmdab:mat:rix} {cmdab:sco:re} {dtype} {newvar} {cmd:=} {it:b}
		{ifin} [{cmd:,}
		{cmdab:eq:uation:(}{cmd:#}{it:#}|{it:eqname}{cmd:)}
		{cmdab:m:issval:(}{it:#}{cmd:)} {cmd:replace} {cmd:forcezero}]

{pstd}
其中 {it:b} 是一个 1 x p 矩阵。


{marker description}{...}
{title:描述}

{pstd}
{cmd:matrix score} 创建 {newvar} = {it:x_j}{it:b}'({it:b} 为行向量)，
其中 {it:x_j} 是由 {it:b} 的列名指定的变量值的行向量。
名称 {hi:_cons} 被视为等于 1 的变量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P matrixscoreRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:equation(}{cmd:#}{it:#}|{it:eqname}{cmd:)} 指定方程——通过数字或名称——
用于选择系数从 {it:b} 中进行评分。有关矩阵方程标签的更多信息，请参见
{manhelp matrix_rownames P:matrix rownames}。

{phang}
{cmd:missval(}{it:#}{cmd:)} 指定如果从系数向量引用的变量缺少任何值时假设的值。
默认情况下，这个值被视为缺失（.），任何在变量中缺少的值将导致得分缺失。

{phang}
{cmd:replace} 指定 {newvar} 已经存在。此时不包括 {cmd:if} {it:exp}
和 {cmd:in} {it:range} 的观测值保持不变；即，它们不会变为缺失。
请注意，{cmd:replace} 不会提升现有变量的存储类型；如果变量的存储类型是
{cmd:int}，计算的得分在存储时将被截断为整数。

{phang}
{cmd:forcezero} 指定，如果 {it:b} 的列名描述的变量不存在，
则计算将缺失的变量视为存在，并且对所有观测值等于零。它对求和没有贡献。
默认情况下，缺失的变量将产生错误消息。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress price weight mpg}

{pstd}定义矩阵 {cmd:coefs} 等于 {cmd:e(b)}，即系数向量{p_end}
{phang2}{cmd:. matrix coefs = e(b)}

{pstd}列出 {cmd:coefs} 的内容{p_end}
{phang2}{cmd:. mat list coefs}

{pstd}创建包含线性预测的变量 {cmd:lc}{p_end}
{phang2}{cmd:. matrix score lc = coefs}

{pstd}汇总 {cmd:lc}{p_end}
{phang2}{cmd:. summarize lc}

{pstd}设置{p_end}
{phang2}{cmd:. sureg (price weight mpg) (displacement weight)}

{pstd}定义矩阵 {cmd:coefs} 等于 {cmd:e(b)}，即系数向量{p_end}
{phang2}{cmd:. matrix coefs = e(b)}

{pstd}列出 {cmd:coefs} 的内容{p_end}
{phang2}{cmd:. mat list coefs}

{pstd}为方程 {cmd:price} 创建包含线性预测的变量 {cmd:lca}{p_end}
{phang2}{cmd:. matrix score lca = coefs, eq(price)}

{pstd}与上述命令相同{p_end}
{phang2}{cmd:. matrix score lc1 = coefs, eq(#1)}

{pstd}与上述命令相同{p_end}
{phang2}{cmd:. matrix score lcnoeq = coefs}

{pstd}为方程 {cmd:displacement} 创建包含线性预测的变量 {cmd:lcb}{p_end}
{phang2}{cmd:. matrix score lcb = coefs, eq(displacement)}

{pstd}与上述命令相同{p_end}
{phang2}{cmd:. matrix score lc2 = coefs, eq(#2)}

{pstd}汇总新创建的变量{p_end}
{phang2}{cmd:. summarize lc*}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matrix_score.sthlp>}