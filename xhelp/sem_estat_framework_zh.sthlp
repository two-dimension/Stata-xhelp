{smcl}
{* *! version 1.0.9  14may2018}{...}
{viewerdialog estat "dialog sem_estat, message(-framework-) name(sem_estat_framework)"}{...}
{vieweralsosee "[SEM] estat framework " "mansection SEM estatframework"}{...}
{findalias assemframework}{...}
{vieweralsosee "[SEM] Intro 7" "mansection SEM Intro7"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] sem postestimation" "help sem postestimation"}{...}
{viewerjumpto "Syntax" "sem_estat_framework_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_estat_framework_zh##menu"}{...}
{viewerjumpto "Description" "sem_estat_framework_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_estat_framework_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_estat_framework_zh##options"}{...}
{viewerjumpto "Remarks" "sem_estat_framework_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_estat_framework_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_estat_framework_zh##results"}{...}
{viewerjumpto "Reference" "sem_estat_framework_zh##reference"}
{help sem_estat_framework:English Version}
{hline}{...}
{p2colset 1 26 24 2}{...}
{p2col:{bf:[SEM] estat framework} {hline 2}}显示模型框架中的估计结果{p_end}
{p2col:}({mansection SEM estatframework:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmdab:fra:mework} [{cmd:,} {it:选项}]

{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt:{opt stand:ardized}}报告标准化结果{p_end}
{synopt:{opt com:pact}}以紧凑形式显示矩阵{p_end}
{synopt:{opt fit:ted}}包括拟合的均值、方差和协方差{p_end}
{synopt:{opth for:mat(%fmt)}}使用的显示格式{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程建模） > 其他 > 报告模型框架}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat framework} 是一个在使用 {cmd:sem} 之后的后期估计命令，但不能用于 {cmd:gsem}。

{pstd}
{cmd:estat framework} 显示来自 Bentler-Weeks 形式的估计结果，作为一系列矩阵；参见
{help sem_estat_framework##Bentler1980: Bentler 和 Weeks (1980)}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM estatframeworkRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}{opt standardized}
以标准化形式报告结果。 

{phang}{opt compact}
以紧凑形式显示矩阵。零矩阵以描述的方式显示，对角矩阵显示为行向量。

{phang}{opt fitted}
显示拟合的均值和协方差值。

{phang}{opth format(%fmt)}
指定要使用的显示格式。默认格式为 {cmd:format(%9.0g)}。


{marker remarks}{...}
{title:备注}

{pstd}
参见 {findalias semframework}。

{pstd}
如果在拟合模型时指定了 {cmd:sem} 的 {opt nm1} 选项，则所有协方差矩阵将使用 N-1 作为分母，而不是 N。 


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_mimic1}{p_end}
{phang2}{cmd:. sem (SubjSES -> s_income s_occpres s_socstat)}{break}
	{cmd: (SubjSES <- income occpres)}{p_end}

{pstd}显示建模框架{p_end}
{phang2}{cmd:. estat framework}{p_end}

{pstd}包括拟合均值、方差和协方差{p_end}
{phang2}{cmd:. estat framework, fitted}{p_end}

{pstd}报告标准化结果{p_end}
{phang2}{cmd:. estat framework, standardized}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:estat framework} 在 {cmd:r()} 中存储以下内容：

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 标量}{p_end}
{synopt:{cmd:r(N_groups)}}组的数量{p_end}
{synopt:{cmd:r(standardized)}}标准化结果的指示符 (+){p_end}

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 矩阵}{p_end}
{synopt:{cmd:r(nobs)}}每组的样本大小{p_end}
{synopt:{cmd:r(Beta}[{cmd:_}{it:#}]{cmd:)}}内生变量对内生变量的系数（对于组 {it:#}）{p_end}
{synopt:{cmd:r(Gamma}[{cmd:_}{it:#}]{cmd:)}}内生变量对外生变量的系数（对于组 {it:#}）{p_end}
{synopt:{cmd:r(alpha}[{cmd:_}{it:#}]{cmd:)}}截距（对于组 {it:#}） (*){p_end}
{synopt:{cmd:r(Psi}[{cmd:_}{it:#}]{cmd:)}}错误的协方差（对于组 {it:#}）{p_end}
{synopt:{cmd:r(Phi}[{cmd:_}{it:#}]{cmd:)}}外生变量的协方差（对于组 {it:#}）{p_end}
{synopt:{cmd:r(kappa}[{cmd:_}{it:#}]{cmd:)}}外生变量的均值（对于组 {it:#}） (*){p_end}
{synopt:{cmd:r(Sigma}[{cmd:_}{it:#}]{cmd:)}}拟合的协方差（对于组 {it:#}）{p_end}
{synopt:{cmd:r(mu}[{cmd:_}{it:#}]{cmd:)}}拟合的均值（对于组 {it:#}） (*){p_end}

{p 4 8 2}
(+) 如果 {cmd:r(standardized)}=1，则返回的矩阵包含标准化值。 

{p 4 8 2}
(*) 如果 {cmd:sem} 模型中没有估计的均值或截距，则这些矩阵不会被返回。  
{p_end}


{marker reference}{...}
{title:参考文献}

{marker Bentler1980}{...}
{phang}
Bentler, P. M., 和 D. G. Weeks. 1980.  具有潜在变量的线性结构方程.  {it:Psychometrika} 45: 289-308.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estat_framework.sthlp>}