{smcl}
{* *! version 1.1.4  14may2018}{...}
{viewerdialog estat "dialog sem_estat, message(-summarize-) name(sem_estat_summarize)"}{...}
{vieweralsosee "[SEM] estat summarize" "mansection SEM estatsummarize"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estat summarize" "help estat summarize"}{...}
{vieweralsosee "[SEM] gsem postestimation" "help gsem_postestimation_zh"}{...}
{vieweralsosee "[SEM] sem postestimation" "help sem_postestimation_zh"}{...}
{viewerjumpto "Syntax" "sem_estat_summarize_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_estat_summarize_zh##menu"}{...}
{viewerjumpto "Description" "sem_estat_summarize_zh##description"}{...}
{viewerjumpto "Options" "sem_estat_summarize_zh##options"}{...}
{viewerjumpto "Examples" "sem_estat_summarize_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_estat_summarize_zh##results"}
{help sem_estat_summarize:English Version}
{hline}{...}
{p2colset 1 26 27 2}{...}
{p2col:{bf:[SEM] estat summarize} {hline 2}}报告估计样本的摘要统计{p_end}
{p2col:}({mansection SEM estatsummarize:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmdab:su:mmarize} [{it:eqlist}]
[{cmd:,} {opt group}
{it:{help estat_summarize##estat_summ_options:estat_summ_options}}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程模型） > 其他 >}
         {bf:估计样本摘要统计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat summarize} 是 Stata 的标准后估计命令。
该条目涉及在 {cmd:sem} 或 {cmd:gsem} 之后使用 {cmd:estat summarize}。

{pstd}
{cmd:estat summarize} 报告模型中观察变量的估计样本摘要统计。
提到 {cmd:estat summarize} 是因为 

{phang}
1.  如果 {cmd:sem} 是在摘要统计数据上运行的，{cmd:estat summarize} 
            则无法使用；请参见
	    {manlink SEM Intro 11}。

{phang}
2.  {cmd:estat summarize} 允许在 {cmd:sem} 和 {cmd:gsem} 估计后使用额外选项 {cmd:group}。 


{marker options}{...}
{title:选项}

{phang}
{opt group} 可以在模型拟合时与 {cmd:sem} 或 {cmd:gsem} 一起指定 {opt group(varname)}。它请求按组报告摘要统计。 

{phang}
{it:estat_summ_options} 是 {cmd:estat summarize} 允许的标准选项，具体列在
         {it:{help estat summarize##options_estat_summarize:选项}}中的
	 {bf:[R] estat summarize}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. sem (mpg <- turn trunk length), group(foreign)}{p_end}

{pstd}获取估计样本摘要{p_end}
{phang2}{cmd:. estat summarize}{p_end}

{pstd}获取每个组的摘要{p_end}
{phang2}{cmd:. estat summarize, group}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {it:{help estat summarize##results:存储结果}} 中的内容
{bf:[R] estat summarize}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estat_summarize.sthlp>}