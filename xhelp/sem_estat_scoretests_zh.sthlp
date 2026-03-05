{smcl}
{* *! version 1.0.9  25sep2018}{...}
{viewerdialog estat "dialog sem_estat, message(-scoretests-) name(sem_estat_scoretests)"}{...}
{vieweralsosee "[SEM] estat scoretests " "mansection SEM estatscoretests"}{...}
{findalias assembequal}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] sem postestimation" "help sem_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] estat ginvariant" "help sem_estat_ginvariant_zh"}{...}
{vieweralsosee "[SEM] estat mindices" "help sem_estat_mindices_zh"}{...}
{viewerjumpto "Syntax" "sem_estat_scoretests_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_estat_scoretests_zh##menu"}{...}
{viewerjumpto "Description" "sem_estat_scoretests_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_estat_scoretests_zh##linkspdf"}{...}
{viewerjumpto "Option" "sem_estat_scoretests_zh##option"}{...}
{viewerjumpto "Remarks" "sem_estat_scoretests_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_estat_scoretests_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_estat_scoretests_zh##results"}{...}
{viewerjumpto "References" "sem_estat_scoretests_zh##references"}
{help sem_estat_scoretests:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[SEM] estat scoretests} {hline 2}}得分检验{p_end}
{p2col:}({mansection SEM estatscoretests:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmdab:score:tests} [{cmd:,} {opt min:chi2(#)}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程模型） > 测试与置信区间 > 线性约束的得分检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat scoretests} 用于 {cmd:sem} 之后，但不适用于 {cmd:gsem}。

{pstd}
{cmd:estat scoretests} 显示为模型拟合时施加的每个用户指定的线性约束的得分检验（拉格朗日乘数检验）。请参见 {help sem_estat scoretests##Sorbom1989:索博姆 (1989)} 和 {help sem_estat scoretests##Wooldridge2010:伍尔德里奇 (2010}, 421-428)。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM estatscoretestsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker option}{...}
{title:选项}

{phang}{opt minchi2(#)}
抑制输出 chi2(1) < {it:#} 的检验结果。默认情况下，{cmd:estat mindices} 列出在 0.05 级别上显著的值，对应于卡方值 {cmd:minchi2(3.8414588)}。 如果希望查看所有检验，请指定 {cmd:minchi2(0)}。


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {findalias sembequal}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_sm1}{p_end}
{phang2}{cmd:. sem (r_occasp <- f_occasp@b1 r_intel@b2 r_ses@b3 f_ses@b4)}{break}
	{cmd: (f_occasp <- r_occasp@b1 f_intel@b2 f_ses@b3 r_ses@b4),}{break}
	{cmd: cov(e.r_occasp*e.f_occasp)}{p_end}

{pstd}计算得分检验{p_end}
{phang2}{cmd:. estat scoretests}{p_end}

{pstd}显示所有得分检验{p_end}
{phang2}{cmd:. estat scoretests, minchi2(0)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat scoretests} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N_groups)}}组数{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(nobs)}}每组的样本大小{p_end}
{synopt:{cmd:r(Cns_sctest)}}包含显示表值的矩阵{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker Sorbom1989}{...}
{phang}
索博姆，D. 1989。模型修改。《心理计量学》54: 371-384。

{marker Wooldridge2010}{...}
{phang}
伍尔德里奇，J. M.  2010。  
{browse "http://www.stata.com/bookstore/cspd.html":《跨截面和面板数据的计量经济分析》}。第二版。
麻省理工学院出版社，马萨诸塞州剑桥。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estat_scoretests.sthlp>}