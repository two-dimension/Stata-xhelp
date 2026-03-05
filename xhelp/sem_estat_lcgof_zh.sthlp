{smcl}
{* *! version 1.0.4  25sep2018}{...}
{viewerdialog estat "dialog gsem_estat, message(-lcgof-) name(gsem_estat_lcgof)"}{...}
{vieweralsosee "[SEM] estat lcgof" "mansection SEM estatlcgof"}{...}
{findalias asgsemlcagof}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SEM] gsem postestimation" "help gsem_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estat ic" "help estat_ic_zh"}{...}
{viewerjumpto "Syntax" "sem_estat_lcgof_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_estat_lcgof_zh##menu"}{...}
{viewerjumpto "Description" "sem_estat_lcgof_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_estat_lcgof_zh##linkspdf"}{...}
{viewerjumpto "Option" "sem_estat_lcgof_zh##option"}{...}
{viewerjumpto "Remarks" "sem_estat_lcgof_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_estat_lcgof_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_estat_lcgof_zh##results"}
{help sem_estat_lcgof:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[SEM] estat lcgof} {hline 2}}潜在类别拟合优度统计量{p_end}
{p2col:}({mansection SEM estatlcgof:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmd:lcgof} [{cmd:,} {cmdab:nodes:cribe}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > LCA（潜在类别分析） > 拟合优度}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat lcgof} 仅在 {cmd:gsem} 之后使用，不适用于 {cmd:sem}。

{pstd}
{cmd:estat lcgof} 显示多种整体拟合优度统计量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM estatlcgofRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt nodescribe} 抑制拟合优度度量的描述。


{marker remarks}{...}
{title:备注}

{pstd}
参见 {findalias gsemlcagof}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_lca1}{p_end}
{phang2}{cmd:. gsem (accident play insurance stock <- ), logit}{break}
	{cmd:lclass(C 2)}{p_end}

{pstd}潜在类别拟合优度统计量{p_end}
{phang2}{cmd:. estat lcgof}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat lcgof} 在 {cmd:r()} 中存储以下内容：

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 标量}{p_end}
{synopt:{cmd:r(chi2_ms)}}目标模型与饱和模型的检验{p_end}
{synopt:{cmd:r(df_ms)}}{cmd:r(chi2_ms)} 的自由度{p_end}
{synopt:{cmd:r(p_ms)}}{cmd:r(chi2_ms)} 的 p 值{p_end}
{synopt:{cmd:r(aic)}}赤池信息量准则{p_end}
{synopt:{cmd:r(bic)}}贝叶斯信息量准则{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estat_lcgof.sthlp>}