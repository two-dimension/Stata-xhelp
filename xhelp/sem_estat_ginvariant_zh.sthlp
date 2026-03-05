{smcl}
{* *! version 1.1.4  25sep2018}{...}
{viewerdialog estat "dialog sem_estat, message(-ginvariant-) name(sem_estat_ginvariant)"}{...}
{vieweralsosee "[SEM] estat ginvariant " "mansection SEM estatginvariant"}{...}
{findalias assemginv}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] sem postestimation" "help sem_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] estat mindices" "help sem_estat_mindices_zh"}{...}
{vieweralsosee "[SEM] estat scoretests" "help sem_estat_scoretests_zh"}{...}
{viewerjumpto "Syntax" "sem_estat_ginvariant_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_estat_ginvariant_zh##menu"}{...}
{viewerjumpto "Description" "sem_estat_ginvariant_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_estat_ginvariant_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_estat_ginvariant_zh##options"}{...}
{viewerjumpto "Remarks" "sem_estat_ginvariant_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_estat_ginvariant_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_estat_ginvariant_zh##results"}{...}
{viewerjumpto "References" "sem_estat_ginvariant_zh##references"}
{help sem_estat_ginvariant:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[SEM] estat ginvariant} {hline 2}}检验各组间参数的恒定性{p_end}
{p2col:}({mansection SEM estatginvariant:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmdab:gin:variant} [{cmd:,} {it:选项}]

{synoptset 24}{...}
{synopthdr}
{synoptline}
{synopt:{opt showp:class(pclassname)}}限制输出为指定参数类中的参数{p_end}
{synopt:{opt cla:ss}}包括参数类的联合检验{p_end}
{synopt:{opt leg:end}}包含描述参数类的图例{p_end}
{synoptline}
{p2colreset}{...}

{marker pclassname}{...}
{synoptset 24}{...}
包含帮助文档 sem_classnames
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程模型） > 组统计 > 检验各组间参数的恒定性}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat ginvariant} 用于在与 {cmd:sem,} {opt group()} 一起估计之后使用；
详见 {help sem_group_options_zh:[SEM] sem 组选项}。

{pstd}
{cmd:estat ginvariant} 执行得分检验（拉格朗日乘数检验）和
瓦尔德检验，以确定约束在组间相等的参数是否应解除约束，以及允许在组间变化的参数是否可以被约束。

{pstd}
参见 {help sem_estat_ginvariant##Sorbom1989:S{c o:}rbom (1989)} 和
{help sem_estat_ginvariant##Wooldridge2010:Wooldridge (2010}, 421-428。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM estatginvariantRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt showpclass:(sem_estat_ginvariant##pclassname:pclassname)} 显示为指定类进行的检验。{cmd:showpclass(all)} 为默认选项。

{phang}
{opt class} 显示每个九个参数类的组恒定性的联合检验表。

{phang}
{opt legend} 显示描述参数类的图例。此选项只能与 {opt class} 选项一起使用。


{marker remarks}{...}
{title:备注}

{pstd}
参见 {findalias semginv}。

{pstd}
在使用 {cmd:gsem} 之后，不提供得分检验；因此，
{cmd:estat ginvariant} 不能在与 {cmd:gsem, group()} 估计后使用。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_2fmmby}{p_end}
{phang2}{cmd:. sem (Peer -> peerrel1 peerrel2 peerrel3 peerrel4)}{break}
	{cmd: (Par -> parrel1 parrel2 parrel3 parrel4), group(grade)}{p_end}

{pstd}检验各组间参数的恒定性{p_end}
{phang2}{cmd:. estat ginvariant}{p_end}

{pstd}包含参数类的联合检验{p_end}
{phang2}{cmd:. estat ginvariant, class}{p_end}

{pstd}仅显示测量系数{p_end}
{phang2}{cmd:. estat ginvariant, showpclass(mcoef)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat ginvariant} 将以下内容存储在 {cmd:r()} 中：

{synoptset 24 tabbed}{...}
{p2col 5 24 28 2: 标量}{p_end}
{synopt:{cmd:r(N_groups)}}组的数量{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 24 28 2: 矩阵}{p_end}
{synopt:{cmd:r(nobs)}}每组的样本大小{p_end}
{synopt:{cmd:r(test)}}瓦尔德和得分检验{p_end}
{synopt:{cmd:r(test_pclass)}}与 {cmd:r(test)} 相对应的参数类{p_end}
{synopt:{cmd:r(test_class)}}每个类的联合瓦尔德和得分检验{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker Sorbom1989}{...}
{phang}
S{c o:}rbom, D. 1989.  模型修正.  {it:Psychometrika} 54: 371-384.

{marker Wooldridge2010}{...}
{phang}
Wooldridge, J. M.  2010.  
{browse "http://www.stata.com/bookstore/cspd.html":{it:Cross Section and Panel Data的计量分析}}. 第2版.
剑桥，MA: 麻省理工学院出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estat_ginvariant.sthlp>}