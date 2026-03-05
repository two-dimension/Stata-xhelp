{smcl}
{* *! version 1.0.5  30oct2018}{...}
{viewerdialog estat "dialog gsem_estat, message(-sd-) name(gsem_estat_sd)"}{...}
{vieweralsosee "[SEM] estat sd" "mansection SEM estatsd"}{...}
{findalias asgsemtfmm}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SEM] gsem postestimation" "help gsem_postestimation_zh"}{...}
{viewerjumpto "Syntax" "sem_estat_sd_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_estat_sd_zh##menu"}{...}
{viewerjumpto "Description" "sem_estat_sd_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_estat_sd_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_estat_sd_zh##options"}{...}
{viewerjumpto "Remarks" "sem_estat_sd_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_estat_sd_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_estat_sd_zh##results"}
{help sem_estat_sd:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[SEM] estat sd} {hline 2}}显示方差成分的标准差和相关性{p_end}
{p2col:}({mansection SEM estatsd:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmd:sd}
[{cmd:,}
{cmd:verbose}
{cmd:post}
{cmdab:coefl:egend}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程建模） > 其他 > 显示标准差和相关性}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat} {cmd:sd} 仅在 {cmd:gsem} 后使用，而不在 {cmd:sem} 后使用。

{pstd}
{cmd:estat sd} 显示拟合的方差成分的标准差和相关性。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM estatsdRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt verbose} 指定显示完整的估计表。 默认情况下，仅显示方差成分。
当指定 {opt post} 时，此选项是隐含的。

{phang}
{opt post} 使得 {opt estat sd} 作为 Stata 估计（e类）命令进行处理。 {opt estat sd} 会将计算得到的标准差和相关参数的向量，以及相应的方差-协方差矩阵，发送到 {opt e()}，这样您可以像处理任何其他估计命令的结果那样处理这些估计参数。 例如，您可以使用 {opt test} 对这些参数进行假设的同时检验，或者使用 {opt lincom} 创建线性组合。

{pstd}
以下选项在对话框中未显示：

{phang}
{opt coeflegend} 指定显示系数的图例以及如何在表达式中指定它们，而不是显示系数的统计信息。


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {findalias gsemtfmm}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_cfa}{p_end}
{phang2}{cmd:. gsem (MathAb -> q1-q8, logit) (MathAtt -> att1-att5, ologit)}

{pstd}方差成分的拟合值作为标准差和相关性{p_end}
{phang2}{cmd:. estat sd}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat sd} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(level)}}置信水平{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(b)}}系数向量{p_end}
{synopt:{cmd:r(V)}}估计器的方差-协方差矩阵{p_end}
{synopt:{cmd:r(table)}}结果表{p_end}

{pstd}
如果指定了 {cmd:post}，{cmd:estat sd} 在 {cmd:e()} 中存储以下内容：

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计器的方差-协方差矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estat_sd.sthlp>}