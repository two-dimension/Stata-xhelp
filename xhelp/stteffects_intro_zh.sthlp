{smcl}
{* *! version 1.0.5  19oct2017}{...}
{viewerdialog stteffects "dialog stteffects"}{...}
{vieweralsosee "[TE] stteffects intro" "mansection TE stteffectsintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teeffects intro advanced" "mansection TE teffectsintroadvanced"}{...}
{vieweralsosee "[TE] stteffects postestimation" "help stteffects postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] streg" "help streg_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{viewerjumpto "Description" "stteffects intro##description"}{...}
{viewerjumpto "Links to PDF documentation" "stteffects_intro_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "stteffects intro##remarks"}{...}
{viewerjumpto "References" "stteffects intro##references"}
{help stteffects_intro:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[TE] stteffects intro} {hline 2}}观察性生存时间数据的处理效应介绍{p_end}
{p2col:}({mansection TE stteffectsintro:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
本条目提供使用观察性生存时间数据的处理效应估计量的概述，并在 {cmd:stteffects} 中实现。它还提供潜在结果框架及其在生存时间数据中的应用，以及对估计的处理效应参数的解释。

{pstd}
{cmd:stteffects} 命令估计平均处理效应、对处理组的平均处理效应和潜在结果均值。每个效应参数在本条目中都有讨论。{cmd:stteffects} 实现了多种估计量，用于平均处理效应、对处理组的平均处理效应和潜在结果均值。可以利用回归调整、逆概率加权、逆概率加权回归调整和加权回归调整来估计处理效应。本条目还提供了一些对估计量的直观理解，并讨论它们之间的权衡。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TE stteffectsintroRemarksandexamples:备注与示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注：估计量的快速概览}

{pstd}
{cmd:stteffects} 命令实现了五种处理效应的估计量。我们通过展示将其应用于常见示例数据集所用的基本语法来介绍每一种。有关详细信息，请参见每个命令的条目。


    {bf:回归调整}

{pstd}
结果变量的回归建模是解决处理效应估计中的缺失数据问题的一种古老方法。该方法被称为回归调整（RA）估计量，利用预测结果的均值来估计 ATE。如果结果模型得到了良好指定，这种方法出人意料地鲁棒。

{pstd}
我们使用 {cmd:stteffects ra} 通过 RA 来估计 ATE。我们将结果建模为 {cmd:age}、{cmd:exercise}、{cmd:diet} 和 {cmd:education} 的函数，并指定 {cmd:smoke} 为处理变量。

{phang2}{cmd:. webuse sheart}{p_end}
{phang2}{cmd:. stset atime, failure(fail)}{p_end}
{phang2}{cmd:. stteffects ra (age exercise diet education) (smoke)}


    {bf:逆概率加权}

{pstd}
逆概率加权（IPW）估计量使用观察结果的加权均值来估计 POM 和 ATE。权重用于修正缺失数据。当没有删失情况时，缺失的潜在结果是唯一的缺失数据，权重由治疗分配模型构建。当数据可能被删失时，权重必须同时控制删失和缺失的潜在结果。在这种情况下，IPW 估计量由两个模型构建权重，一个用于删失时间，一个用于治疗分配。

{pstd}
在这里，我们使用 {cmd:stteffects ipw} 来估计吸烟对第二次心脏病发作时间的影响。治疗 {cmd:smoke} 的分配模型依赖于 {cmd:age}、{cmd:exercise}、{cmd:diet} 和 {cmd:education}。删失时间模型也依赖于 {cmd:age}、{cmd:exercise}、{cmd:diet} 和 {cmd:education}。

{phang2}{cmd:. stteffects ipw (smoke age exercise diet education)}
        {cmd:(age exercise diet education)}


    {bf:RA 和 IPW 的组合}

{pstd}
由于 {help stteffects intro##W2007:Wooldridge (2007)} 和 {help stteffects intro##W2010:Wooldridge (2010, chap. 21)}，通过将 IPW 和 RA 结合获得更有效的估计量，称为 IPWRA。与 {help stteffects intro##W2010:Wooldridge (2010, chap. 21)} 中讨论的估计量不同，处理模型和结果模型都必须正确指定以估计 ATE。

{pstd}
IPWRA 估计量使用控制缺失数据的估计权重来获取缺失调整的回归系数，这些系数用于计算预测结果的均值以估计 POM。估计的 ATE 是估计的 POM 的对比。这些权重始终涉及治疗分配模型。您可以选择通过在对数似然函数中包含一个项来考虑删失，或者使用也考虑因删失而丢失的数据的权重。

{pstd}
我们将结果（第二次心脏病发作时间）建模为 {cmd:age}、{cmd:exercise}、{cmd:diet} 和 {cmd:education} 的函数。我们将治疗 {cmd:smoke} 的分配建模为相同协变量的函数。

{phang2}{cmd:. stteffects ipwra (age exercise diet education)}
        {cmd:(smoke age exercise diet education)}


    {bf:加权回归调整}

{pstd}
在估计结果模型参数时，加权回归调整（WRA）估计量使用权重而不是对数似然函数中的一项来进行删失调整。这些权重是从删失过程模型构建的。随后使用估计的参数来计算预测结果的均值，以估计 POM。估计 POM 的对比估计 ATE。

{pstd}
我们将第二次心脏病发作的时间建模为 {cmd:age}、{cmd:exercise}、{cmd:diet} 和 {cmd:education} 的函数；我们指定 {cmd:smoke} 为相同协变量的函数。

{phang2}{cmd:. stteffects wra (age exercise diet education)}
        {cmd:(smoke) (age exercise diet)}


{marker references}{...}
{title:参考文献}

{marker W2007}{...}
{phang}
Wooldridge, J. M. 2007. 逆概率加权估计用于一般缺失数据问题。 {it:经济计量学期刊} 141: 1281-1301。

{marker W2010}{...}
{phang}
------. 2010.
{browse "http://www.stata.com/bookstore/econometric-analysis-cross-section-panel-data/":{it:经济计量分析跨截面和面板数据}}。第二版。
剑桥，MA：麻省理工学院出版社。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stteffects_intro.sthlp>}