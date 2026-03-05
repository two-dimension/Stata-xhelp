{smcl}
{* *! version 1.0.9  25sep2018}{...}
{viewerdialog estat "dialog sem_estat, message(-stable-) name(sem_estat_stable)"}{...}
{vieweralsosee "[SEM] estat stable" "mansection SEM estatstable"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] sem postestimation" "help sem_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] estat teffects" "help sem_estat_teffects_zh"}{...}
{viewerjumpto "Syntax" "sem_estat_stable_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_estat_stable_zh##menu"}{...}
{viewerjumpto "Description" "sem_estat_stable_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_estat_stable_zh##linkspdf"}{...}
{viewerjumpto "Option" "sem_estat_stable_zh##option"}{...}
{viewerjumpto "Remarks" "sem_estat_stable_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_estat_stable_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_estat_stable_zh##results"}{...}
{viewerjumpto "Reference" "sem_estat_stable_zh##reference"}
{help sem_estat_stable:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[SEM] estat stable} {hline 2}}检查非递归系统的稳定性{p_end}
{p2col:}({mansection SEM estatstable:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmdab:sta:ble} [{cmd:,}
{cmdab:d:etail}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程建模） > 其他 > 评估非递归系统的稳定性}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat stable} 在 {cmd:sem} 之后使用，但不适用于 {cmd:gsem}。

{pstd}
{cmd:estat stable} 报告非递归模型的特征值稳定性指数。稳定性指数是通过
对预测其他内生变量的内生变量系数矩阵的特征值的最大模进行计算的。如果该模型是通过 {cmd:sem} 使用 {cmd:group()} 选项拟合的，则 {cmd:estat stable} 对每个组分别报告指数。

{pstd}
有两种常用的公式来计算该指数。{cmd:estat stable} 使用
{help sem_estat_stable##Bentler1983: Bentler 和 Freeman（1983）} 提出的公式。 


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM estatstableRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}{opt detail}
显示预测其他内生变量的内生变量系数矩阵，也称为 Beta 矩阵。


{marker remarks}{...}
{title:备注}

{pstd} 
请参见 {help sem_glossary##nonrecursive_models:非递归（结构）模型（系统）} 在 
{bf:[SEM] 术语表} 中。稳定性问题在这里有描述。同时请参见
{it:{mansection SEM estatteffectsRemarksandexamples:备注和示例}} 的
{bf:[SEM] estat teffects}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_sm1}{p_end}
{phang2}{cmd:. sem (r_occasp <- f_occasp r_intel r_ses f_ses)}{break}
	{cmd: (f_occasp <- r_occasp f_intel f_ses r_ses),}{break}
	{cmd: cov(e.r_occasp*e.f_occasp)}{p_end}

{pstd}检查稳定性条件{p_end}
{phang2}{cmd:. estat stable}{p_end}

{pstd}同时显示 Beta 矩阵{p_end}
{phang2}{cmd:. estat stable, detail}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat stable} 将以下内容存储在 {cmd:r()} 中：

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 标量}{p_end}
{synopt:{cmd:r(N_groups)}}组数{p_end}
{synopt:{cmd:r(stindex}[{cmd:_}{it:#}]{cmd:)}}稳定性指数（对于组
{it:#}）{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 矩阵}{p_end}
{synopt:{cmd:r(nobs)}}每组的样本量{p_end}
{synopt:{cmd:r(Beta}[{cmd:_}{it:#}]{cmd:)}}内生变量对内生变量的系数（对于组 {it:#}）{p_end}
{synopt:{cmd:r(Re}[{cmd:_}{it:#}]{cmd:)}}A 的特征值的实部（对于组 {it:#}）{p_end}
{synopt:{cmd:r(Im}[{cmd:_}{it:#}]{cmd:)}}A 的特征值的虚部（对于组 {it:#}）{p_end}
{synopt:{cmd:r(Modulus}[{cmd:_}{it:#}]{cmd:)}}A 的特征值的模（对于组 {it:#}）{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker Bentler1983}{...}
{phang}
Bentler, P. M., 和 E. H. Freeman. 1983. 线性结构方程系统的稳定性测试。 {it:Psychometrika} 48: 143-145。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estat_stable.sthlp>}