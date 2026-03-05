{smcl}
{* *! version 1.0.7  19oct2017}{...}
{viewerdialog lincom "dialog lincom"}{...}
{vieweralsosee "[SEM] lincom " "mansection SEM lincom"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] estat stdize" "help sem_estat_stdize_zh"}{...}
{vieweralsosee "[SEM] nlcom" "help sem_nlcom_zh"}{...}
{vieweralsosee "[SEM] test" "help sem_test_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] lincom" "help lincom_zh"}{...}
{viewerjumpto "Syntax" "sem_lincom_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_lincom_zh##menu"}{...}
{viewerjumpto "Description" "sem_lincom_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_lincom_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_lincom_zh##options"}{...}
{viewerjumpto "Remarks" "sem_lincom_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_lincom_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_lincom_zh##results"}
{help sem_lincom:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[SEM] lincom} {hline 2}}参数的线性组合{p_end}
{p2col:}({mansection SEM lincom:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang2}{cmd:lincom} {it:{help exp_zh:exp}} [{cmd:,}
          {it:{help lincom_zh:options}}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程模型） > 测试和置信区间 > 参数的线性组合}


{marker description}{...}
{title:描述}

{pstd}    
{cmd:lincom} 是在 {cmd:sem}、{cmd:gsem} 及几乎所有 Stata 估计命令之后使用的后估计命令。

{pstd}    
{cmd:lincom} 计算线性组合的估计值、标准误、z 统计量、p 值和置信区间。

{pstd}
在使用 {cmd:sem} 和 {cmd:gsem} 后，必须使用 {cmd:_b[]} 系数符号；不能通过使用快捷方式引用变量来获得变量的系数。

{pstd}    
请参阅 {help lincom_zh:[R] lincom}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SEM lincomRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd}    
请见 {it:{help lincom##options:选项}} 在 {help lincom_zh:[R] lincom} 中。


{marker remarks}{...}
{title:备注}

{pstd}    
{cmd:lincom} 在 SEM 度量下工作，也就是说路径系数、方差和协方差。如果您希望将线性组合框定在标准化系数和相关性方面，并且您是用 {cmd:sem} 而不是 {cmd:gsem} 拟合模型，则在 {cmd:lincom} 前加上 {cmd:estat stdize:}；请参见 {help sem_estat_stdize_zh:[SEM] estat stdize}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_2fmm}{p_end}
{phang2}{cmd:. sem (Affective -> a1 a2 a3 a4 a5) (Cognitive -> c1 c2 c3 c4 c5)}{p_end}

{pstd}显示系数图例{p_end}
{phang2}{cmd:. sem, coeflegend}{p_end}

{pstd}估计系数的线性组合{p_end}
{phang2}{cmd:. lincom _b[a1:Affective]*2 - _b[a2:Affective]}{p_end}
{phang2}{cmd:. lincom _b[a5:Affective] - _b[a4:Affective]}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
请见 {it:{help lincom##results:存储的结果}} 在
{help lincom_zh:[R] lincom} 中。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_lincom.sthlp>}