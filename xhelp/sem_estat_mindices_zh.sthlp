{smcl}
{* *! version 1.1.3  25sep2018}{...}
{viewerdialog estat "dialog sem_estat, message(-mindices-) name(sem_estat_mindices)"}{...}
{vieweralsosee "[SEM] estat mindices" "mansection SEM estatmindices"}{...}
{findalias assemmindices}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] sem postestimation" "help sem_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] estat ginvariant" "help sem_estat_ginvariant_zh"}{...}
{vieweralsosee "[SEM] estat scoretests" "help sem_estat_scoretests_zh"}{...}
{viewerjumpto "Syntax" "sem_estat_mindices_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_estat_mindices_zh##menu"}{...}
{viewerjumpto "Description" "sem_estat_mindices_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_estat_mindices_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_estat_mindices_zh##options"}{...}
{viewerjumpto "Remarks" "sem_estat_mindices_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_estat_mindices_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_estat_mindices_zh##results"}{...}
{viewerjumpto "References" "sem_estat_mindices_zh##references"}
{help sem_estat_mindices:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[SEM] estat mindices} {hline 2}}修正指数{p_end}
{p2col:}({mansection SEM estatmindices:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmdab:mi:ndices} [{cmd:,} {it:options}]

{synoptset 24}{...}
{synopthdr}
{synoptline}
{synopt:{opt showp:class(pclassname)}}限制输出为指定参数类别中的参数{p_end}
{synopt:{opt min:chi2(#)}}仅显示修正指数
   {bind:(MI) {ul:>} {it:#}}的测试{p_end}
{synoptline} 
{p2colreset}{...}

{marker pclassname}{...}
{synoptset 24}{...}
包含帮助 sem_classnames
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程建模） > 测试和置信区间 > 修正指数}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat mindices} 仅在 {cmd:sem} 之后使用，但不适用于 {cmd:gsem}。

{pstd}
{cmd:estat mindices} 报告对路径系数和在拟合模型中被限制或省略的协方差的修正指数。修正指数是约束参数的统计显著性的评分测试（拉格朗日乘数测试）。参见 {help sem_estat_mindices##Sorbom1989:S{c o:}rbom (1989)} 和 {help sem_estat_mindices##Wooldridge2010:Wooldridge (2010}, 421-428。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SEM estatmindicesRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}{opth showpclass:(sem_estat_mindices##pclassname:pclassname)}
指定将结果限制为属于指定参数类别的参数。默认值为 {cmd:showpclass(all)}。

{phang}{opt minchi2(#)}
抑制列出修正指数（MIs）小于 {it:#} 的路径。默认情况下，{cmd:estat mindices} 列出在0.05水平上显著的值，对应于 {cmd:minchi2(3.8414588)} 的 chi2(1) 值。如果您希望看到所有测试，请指定 {cmd:minchi2(0)}。 


{marker remarks}{...}
{title:备注}

{pstd}
参见 {findalias semmindices}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_2fmm}{p_end}
{phang2}{cmd:. sem (Affective -> a1 a2 a3 a4 a5) (Cognitive -> c1 c2 c3 c4 c5),}{break}
	{cmd: cov(Affective*Cognitive@0)}{p_end}

{pstd}计算修正指数{p_end}
{phang2}{cmd:. estat mindices}{p_end}

{pstd}显示所有修正指数{p_end}
{phang2}{cmd:. estat mindices, minchi2(0)}{p_end}

{pstd}仅显示测量误差协方差的修正指数{p_end}
{phang2}{cmd:. estat mindices, showpclass(merrvar)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat mindices} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N_groups)}}组数{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(nobs)}}每组的样本大小{p_end}
{synopt:{cmd:r(mindices_pclass)}}修正指数的参数类别{p_end}
{synopt:{cmd:r(mindices)}}包含显示的表格值的矩阵{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker Sorbom1989}{...}
{phang}
S{c o:}rbom, D. 1989. 模型修正. {it:Psychometrika} 54: 371-384.

{marker Wooldridge2010}{...}
{phang}
Wooldridge, J. M. 2010.  
{browse "http://www.stata.com/bookstore/cspd.html":{it:计量经济学分析的横断面和面板数据}}. 第2版.
剑桥, MA: 麻省理工学院出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estat_mindices.sthlp>}