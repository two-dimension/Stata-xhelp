{smcl}
{* *! version 1.0.7  25sep2018}{...}
{viewerdialog estat "dialog sem_estat, message(-stdize-) name(sem_estat_stdize)"}{...}
{vieweralsosee "[SEM] estat stdize" "mansection SEM estatstdize"}{...}
{findalias assemcorr}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] sem postestimation" "help sem_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] lincom" "help sem_lincom_zh"}{...}
{vieweralsosee "[SEM] nlcom" "help sem_nlcom_zh"}{...}
{vieweralsosee "[SEM] test" "help sem_test_zh"}{...}
{vieweralsosee "[SEM] testnl" "help sem_testnl_zh"}{...}
{viewerjumpto "Syntax" "sem_estat_stdize_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_estat_stdize_zh##menu"}{...}
{viewerjumpto "Description" "sem_estat_stdize_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_estat_stdize_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "sem_estat_stdize_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_estat_stdize_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_estat_stdize_zh##results"}
{help sem_estat_stdize:English Version}
{hline}{...}
{p2colset 1 23 27 2}{...}
{p2col:{bf:[SEM] estat stdize} {hline 2}}测试标准化参数{p_end}
{p2col:}({mansection SEM estatstdize:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmdab:std:ize}{cmd::} {cmd:test ...} 

{p 8 14 2}
{cmd:estat} {cmdab:std:ize}{cmd::} {cmd:lincom ...} 

{p 8 14 2}
{cmd:estat} {cmdab:std:ize}{cmd::} {cmd:testnl ...} 

{p 8 14 2}
{cmd:estat} {cmdab:std:ize}{cmd::} {cmd:nlcom ...} 


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程模型） > 测试和置信区间 > 测试标准化参数}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat stdize:} 用于 {cmd:sem} 之后，但不适用于 {cmd:gsem}。

{pstd}
{cmd:estat stdize:} 可以用于前缀 {cmd:test}、{cmd:lincom}、 
{cmd:testnl} 和 {cmd:nlcom}；请参见 {help sem_test_zh:[SEM] test}、 
{help sem_lincom_zh:[SEM] lincom}、 {help sem_testnl_zh:[SEM] testnl} 和 
{help sem_nlcom_zh:[SEM] nlcom}。

{pstd}
这些没有前缀的命令在SEM的基础度量下工作，
也就是说路径系数、方差和协方差。如果命令以 {cmd:estat stdize:} 为前缀，
它们将在标准化系数和相关系数的度量下工作。
标准化度量中没有与方差对应的指标，因为方差被标准化为1。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SEM estatstdizeRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
请参阅 {findalias semhcfa}。

{pstd}
在使用 {cmd:estat stdize:} 前缀对估计的二次矩（相关性）进行测试时要谨慎。
不要测试相关性是否为0。相反，省略 {cmd:estat stdize:} 前缀并测试
协方差是否为0。协方差更有可能呈正态分布，而不是相关性。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse census13}{p_end}
{phang2}{cmd:. sem ( <- mrgrate dvcrate medage)}{p_end}

{pstd}显示相关性{p_end}
{phang2}{cmd:. sem ( <- mrgrate dvcrate medage), standardized}{p_end}

{pstd}显示系数量表{p_end}
{phang2}{cmd:. sem, coeflegend}{p_end}

{pstd}测试中位数年龄与结婚率及中位数年龄与离婚率之间的相关性是否相等{p_end}
{phang2}{cmd:. estat stdize: test _b[/cov(medage,mrgrate)]}{break}
	{cmd: = _b[/cov(medage,dvcrate)]{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
存储的结果是与使用 {cmd:estat stdize:} 前缀的命令相关的结果。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estat_stdize.sthlp>}