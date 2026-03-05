{smcl}
{* *! version 1.1.4  22jun2018}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}
{help whatsnew14to15:English Version}
{hline}{...}
{title:第15.0版的新功能（与第14版相比）}

{pstd}
该文件列出了与Stata 15.0版本发布相关的更改：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件          内容                        年份           {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatsnew_zh}         Stata 16.0                   2019至今 {c |}
    {c |} {help whatsnew15to16_zh}   Stata 16.0新版本             2019            {c |}
    {c |} {help whatsnew15_zh}       Stata 15.0和15.1              2017至2019    {c |}
    {c |} {bf:此文件}            Stata 15.0新版本             2017            {c |}
    {c |} {help whatsnew14_zh}       Stata 14.0, 14.1及14.2        2015至2017    {c |}
    {c |} {help whatsnew13to14_zh}   Stata 14.0新版本             2015            {c |}
    {c |} {help whatsnew13_zh}       Stata 13.0和13.1              2013至2015    {c |}
    {c |} {help whatsnew12to13_zh}   Stata 13.0新版本             2013            {c |}
    {c |} {help whatsnew12_zh}       Stata 12.0和12.1              2011至2013    {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0新版本             2011            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0, 11.1和11.2        2009至2011    {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0新版本             2009            {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0和10.1              2007至2009    {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0新版本             2007            {c |}
    {c |} {help whatsnew9_zh}        Stata 9.0, 9.1和9.2          2005至2007    {c |}
    {c |} {help whatsnew8to9_zh}     Stata 9.0新版本              2005            {c |}
    {c |} {help whatsnew8_zh}        Stata 8.0, 8.1和8.2          2003至2005    {c |}
    {c |} {help whatsnew7to8_zh}     Stata 8.0新版本              2003            {c |}
    {c |} {help whatsnew7_zh}        Stata 7.0                     2001至2002    {c |}
    {c |} {help whatsnew6to7_zh}     Stata 7.0新版本              2000            {c |}
    {c |} {help whatsnew6_zh}        Stata 6.0                     1999至2000    {c |}
    {c BLC}{hline 63}{c BRC}

{pstd}
最新的更改列在最前面。

{hline 3} {hi:更近期更新} {hline}

{pstd}
查看 {help whatsnew15_zh}。

{hline 3} {hi:Stata 15.0 发布于2017年6月6日} {hline}

      {bf:目录}
{p 11 12 2}1.3  新功能{p_end}
{p 9 12 2}{help whatsnew14to15##highlights:1.3.1  亮点}{p_end}
{p 9 12 2}{help whatsnew14to15##NewStat:1.3.2  新统计功能}{p_end}
{p 9 12 2}{help whatsnew14to15##NewME:1.3.3  新多级统计}{p_end}
{p 9 12 2}{help whatsnew14to15##NewBAYES:1.3.4  新贝叶斯统计}{p_end}
{p 9 12 2}{help whatsnew14to15##NewPSS:1.3.5  新功效与样本量统计}{p_end}
{p 9 12 2}{help whatsnew14to15##NewST:1.3.6  新生存分析统计}{p_end}
{p 9 12 2}{help whatsnew14to15##NewSVY:1.3.7  新调查数据统计}{p_end}
{p 9 12 2}{help whatsnew14to15##NewSEM:1.3.8  新结构方程模型}{p_end}
{p 9 12 2}{help whatsnew14to15##NewXT:1.3.9  新面板数据统计}{p_end}
{phang2}{help whatsnew14to15##NewTS:1.3.10  新时间序列统计}{p_end}
{phang2}{help whatsnew14to15##NewMV:1.3.11  新多变量统计}{p_end}
{phang2}{help whatsnew14to15##NewFN:1.3.12  新函数}{p_end}
{phang2}{help whatsnew14to15##NewG:1.3.13  新图形}{p_end}
{phang2}{help whatsnew14to15##NewD:1.3.14  新数据管理}{p_end}
{phang2}{help whatsnew14to15##NewP:1.3.15  新编程功能}{p_end}
{phang2}{help whatsnew14to15##NewM:1.3.16  新Mata功能}{p_end}
{phang2}{help whatsnew14to15##NewGUI:1.3.17  新界面功能}{p_end}
{phang2}{help whatsnew14to15##NewMore:1.3.18  其他更新}{p_end}

{pstd}
本节旨在为之前版本的Stata用户提供信息。如果您是Stata新用户，可以直接跳到以下部分{it:{help whatsnew14to15##NewMore:其他更新}}。

{pstd}
与以前的版本一样，Stata 15与之前的版本完全兼容，但我们提醒程序员在旧的do和ado文件顶部添加{cmd:version 15}、{cmd:version} {cmd:14.1}或{cmd:version 12}等，以确保它们能够如您所期望的那样运行。您在编写这些文件时应该这样做，但如果没有，请现在就做。

{pstd}
我们将逐项列出所有更改，但首先，这里是亮点。

{marker highlights}{...}
{title:1.3.1  亮点}

{pstd}
本次发布的亮点如下：

{p 5 9 2}
1.  潜在类分析（LCA）

{p 5 9 2}
2.  一个可以用于许多最大似然估计命令前面的{cmd:bayes}前缀命令

{p 5 9 2}
3.  线性化动态随机一般均衡（DSGE）模型

{p 5 9 2}
4.  扩展回归模型（ERMs），可以拟合连续、二元、有序响应，处理1）内生性，2）赫克曼风格的选择，和3）处理效果

{p 5 9 2}
5.  动态文档将Markdown与Stata代码结合生成HTML文件

{p 5 9 2}
6.  非线性混合效应模型

{p 5 9 2}
7.  空间自回归（SAR）模型

{p 5 9 2}
8.  区间检验参数生存时间模型

{p 5 9 2}
9.  有限混合模型（FMMs）

{p 5 9 2}
10.  混合logit模型

{p 5 9 2}
11.  使用核方法进行非参数回归

{p 5 9 2}
12.  群体随机试验和回归模型的功效分析

{p 5 9 2}
13.  生成PDF和Word文档

{p 5 9 2}
14.  图形颜色透明度或不透明度

{p 5 9 2}
15.  ICD-10-CM和ICD-10-PCS支持

{p 5 9 2}
16.  联邦储备经济数据支持  

{pstd}
这还不是全部。以下功能也可以算作亮点。

        o   多级tobit和区间回归
        o   异方差回归
        o   面板数据协整检验
        o   阈值回归
        o   零膨胀有序probit模型
        o   泊松与赫克曼风格样本选择
        o   时间序列的多重断裂检验
        o   流生成随机数

{pstd}
更有意思的是，上述及其他更改在此都有详细的说明。

{marker wnlatent}{...}
{pstd}
{bf:亮点1. 潜在类分析（LCA）}

{pmore}
Stata的{cmd:gsem}命令现在支持LCA，具体取决于您使用的术语，包括潜在剖面分析（LPA）和有限混合模型（FMMs）。

{pmore}
所有这些模型使用分类潜在变量。分类意味着分组。潜在意味着未观察到的。分类潜在变量可以用于表示具有不同购买偏好的消费者、处于不同风险组的患者，或提供不同兴趣学生的学校。未观察到的是购买偏好、风险组和兴趣。这些未观察类别称为潜在类，LCA用于识别它们，同时考虑到恢复结果的不确定性，并计算它们的效应。

{pmore}
LPA是LCA的一个变体，当结果变量是连续时使用。

{pmore}
FMM在某些人眼中是LCA的同义词，在其他人眼中是子集，又在其他人眼中是超集。在任何情况下，{cmd:gsem}现在具有这些功能。

{pmore}
我们认为FMM是LCA的一个子集。如果您只想拟合有限混合的泊松或线性回归模型等，您可以使用我们的新{cmd:gsem}功能，但我们还有另一个新功能供您使用：{cmd:fmm:}前缀命令，即下面提到的{help whatsnew14to15##wnfmm:{it:亮点9}}。

{pmore}
LCA、LPA和FMM现在是Stata的{cmd:gsem}命令的一部分，这意味着您可以拟合回归模型和多结果路径模型，从而允许参数在潜在类之间变化。

{pmore}
例如，您可能有四个二元变量，表示潜在消费者群体的指标。如果您认为有三个这样的群体，您可以输入

            {cmd:. gsem (y1 y2 y3 y4 <- _cons), lclass(Consum 3) logit}

{pmore}
{cmd:y1}、{cmd:y2}、{cmd:y3}和{cmd:y4}是观察到的结果变量。{cmd:Consum}是我们指定为拥有三个值的潜在类变量。结果是拟合一个模型，其中{cmd:y1}、{cmd:y2}、{cmd:y3}和{cmd:y4}由未观察类别决定。

{pmore}
该命令拟合四个逻辑回归，每个{cmd:y}变量一个。这将拟合四个截距。然后由于新{cmd:lclass(Consum 3)}选项，每个4个模型将有不同的截距与{cmd:Consum}的每个值共同拟合，这意味着将拟合12个截距用于逻辑回归，且并非如此。还将使用多项逻辑回归来预测{cmd:Consum}。

{pmore}
拟合模型后，您可以

{phang2}
o{space 3}使用新命令{cmd:estat lcprob}估计属于每个类的消费者比例；

{phang2}
o{space 3}使用新命令{cmd:estat lcmean}估计每个类中{cmd:y1}、{cmd:y2}、{cmd:y3}和{cmd:y4}的边际均值（在这种情况下，均值是概率）；

{phang2}
o{space 3}使用新命令{cmd:estat lcgof}评估拟合优度；

{phang2}
o{space 3}使用现有的{cmd:predict}命令获取潜在类别归属的预测概率和观察到的结果变量的预测值。

{pmore}
见 {manlink SEM Intro 2},
{manhelp gsem_lclass_options SEM:gsem lclass options},
{manhelp sem_estat_lcprob SEM:estat lcprob},
{manhelp sem_estat_lcmean SEM:estat lcmean},
{manhelp sem_estat_lcgof SEM:estat lcgof}，以及
{manhelp predict_after_gsem SEM:predict after gsem}。

{marker wnbayes}{...}
{pstd}
{bf:亮点2. bayes前缀}

{pmore}
新的{cmd:bayes:}前缀命令让您更轻松地拟合贝叶斯回归模型，并拟合更多模型。您一直可以拟合贝叶斯线性回归。现在您可以通过输入

            {cmd:. bayes: regress y x1 x2}

{pmore}
这很方便。您之前无法做到的是拟合一个贝叶斯生存模型。现在您可以。

           {cmd:. bayes: streg x1 x2, distribution(weibull)}

{pmore}
您甚至可以拟合贝叶斯多级生存模型。

           {cmd:. bayes: mestreg x1 x2 || id:, distribution(weibull)}

{pmore}
在该模型中，为每个{cmd:id}的值添加了随机截距。

{pmore}
您可以将{cmd:bayes:}前缀与以下估计命令结合使用：

{p2colset 7 35 37 2}{...}
{p2coldent:命令}目的{p_end}
{p2line}
{p2coldent :{helpb bayes betareg:bayes: betareg}}Beta回归{p_end}
{p2coldent :{helpb bayes binreg:bayes: binreg}}二项回归{p_end}
{p2coldent :{helpb bayes biprobit:bayes: biprobit}}双变量probit回归{p_end}
{p2coldent :{helpb bayes clogit:bayes: clogit}}条件逻辑回归{p_end}
{p2coldent :{helpb bayes cloglog:bayes: cloglog}}条件对数-对数回归{p_end}
{p2coldent :{helpb bayes fracreg:bayes: fracreg}}分数响应回归{p_end}
{p2coldent :{helpb bayes glm:bayes: glm}}广义线性模型{p_end}
{p2coldent :{helpb bayes gnbreg:bayes: gnbreg}}负二项回归{p_end}
{p2coldent :{helpb bayes heckman:bayes: heckman}}赫克曼选择模型{p_end}
{p2coldent :{helpb bayes heckoprobit:bayes: heckoprobit}}具有样本选择的有序probit{p_end}
{p2coldent :{helpb bayes heckprobit:bayes: heckprobit}}具有样本选择的probit{p_end}
{p2coldent :{helpb bayes hetprobit:bayes: hetprobit}}异方差probit{p_end}
{p2coldent :{helpb bayes hetregress:bayes: hetregress}}异方差线性回归{p_end}
{p2coldent :{helpb bayes intreg:bayes: intreg}}区间回归{p_end}
{p2coldent :{helpb bayes logistic:bayes: logistic}}逻辑回归（赔率比）{p_end}
{p2coldent :{helpb bayes logit:bayes: logit}}逻辑回归（系数）{p_end}

{p2coldent :}多层混合效应 ...{p_end}
{p2coldent :{helpb bayes mecloglog:bayes: mecloglog}}{space 2}互补对数-对数回归{p_end}
{p2coldent :{helpb bayes meglm:bayes: meglm}}{space 2}广义线性模型{p_end}
{p2coldent :{helpb bayes meintreg:bayes: meintreg}}{space 2}区间回归{p_end}
{p2coldent :{helpb bayes melogit:bayes: melogit}}{space 2}逻辑回归 {p_end}
{p2coldent :{helpb bayes menbreg:bayes: menbreg}}{space 2}负二项回归{p_end}
{p2coldent :{helpb bayes meologit:bayes: meologit}}{space 2}有序逻辑回归{p_end}
{p2coldent :{helpb bayes meoprobit:bayes: meoprobit}}{space 2}有序probit回归{p_end}
{p2coldent :{helpb bayes mepoisson:bayes: mepoisson}}{space 2}泊松回归{p_end}
{p2coldent :{helpb bayes meprobit:bayes: meprobit}}{space 2}probit回归{p_end}
{p2coldent :{helpb bayes mestreg:bayes: mestreg}}{space 2}参数生存回归{p_end}
{p2coldent :{helpb bayes metobit:bayes: metobit}}{space 2}tobit回归{p_end}
{p2coldent :{helpb bayes mixed:bayes: mixed}}{space 2}线性回归{p_end}

{p2coldent :{helpb bayes mlogit:bayes: mlogit}}多项式（多类）逻辑回归{p_end}
{p2coldent :{helpb bayes mprobit:bayes: mprobit}}多项式probit回归{p_end}
{p2coldent :{helpb bayes mvreg:bayes: mvreg}}多变量线性回归{p_end}
{p2coldent :{helpb bayes nbreg:bayes: nbreg}}负二项回归{p_end}
{p2coldent :{helpb bayes ologit:bayes: ologit}}有序逻辑回归{p_end}
{p2coldent :{helpb bayes oprobit:bayes: oprobit}}有序probit回归{p_end}
{p2coldent :{helpb bayes poisson:bayes: poisson}}泊松回归{p_end}
{p2coldent :{helpb bayes probit:bayes: probit}}probit回归{p_end}
{p2coldent :{helpb bayes regress:bayes: regress}}线性回归{p_end}
{p2coldent :{helpb bayes streg:bayes: streg}}参数生存回归{p_end}
{p2coldent :{helpb bayes tnbreg:bayes: tnbreg}}截断负二项回归{p_end}
{p2coldent :{helpb bayes tobit:bayes: tobit}}tobit回归{p_end}
{p2coldent :{helpb bayes tpoisson:bayes: tpoisson}}截断泊松回归{p_end}
{p2coldent :{helpb bayes truncreg:bayes: truncreg}}截断线性回归{p_end}
{p2coldent :{helpb bayes zinb:bayes: zinb}}零膨胀负二项回归{p_end}
{p2coldent :{helpb bayes zioprobit:bayes: zioprobit}}零膨胀有序probit回归{p_end}
{p2coldent :{helpb bayes zip:bayes: zip}}零膨胀泊松回归{p_end}
{p2line}
{p2colreset}{...}

{pmore}
Stata的所有贝叶斯功能都受到新的{cmd:bayes:}前缀命令的支持。您可以为模型参数选择许多先验分布，或者使用默认先验。您可以使用默认的自适应Metropolis-Hastings抽样，或Gibbs抽样，或根据可用情况两者的组合。同时，您可以使用{cmd:bayesmh}中包含的任何其他功能。例如，您可以更改回归系数的默认先验分布：

            {cmd:. bayes, prior({y: x1 x2}, normal(0,4)): regress y x1 x2}

{pmore}
估计后，您可以使用Stata的标准贝叶斯后估计工具如{cmd:bayesgraph}检查收敛性，使用{cmd:bayesstats} {cmd:summary}估计模型参数的函数，使用{cmd:bayesstats} {cmd:ic}和{cmd:bayestest} {cmd:model}计算贝叶斯因子并比较贝叶斯模型，使用{cmd:bayestest} {cmd:interval}进行区间假设检验。

{pmore}
见 {manhelp bayes BAYES} 和
{manhelp bayesian_estimation BAYES:bayesian estimation}。

{marker wnerm}{...}
{pstd}
{bf:亮点3. 扩展回归模型（ERMs）}

{pmore}
ERMs是我们为可以处理以下问题的回归模型命名的：

{p 12 16 2}
1.  内生协变量

{p 12 16 2}
2.  非随机处理分配

{p 12 16 2}
3.  赫克曼风格的内生样本选择

{pmore}
这些特性可以以任何组合使用。它还有另一个特性：

{p 12 16 2}
4.  禁止回归

{pmore}
您可以拟合与其他协变量的内生协变量的交互的模型，无论是外生的还是内生的，无论是连续的还是虚拟的，这包括包含内生变量本身交互的模型——换句话说，内生变量的多项式！

{pmore}
过去，您可能使用{cmd:heckman}拟合具有内生样本选择的线性模型或使用{cmd:ivregress}拟合具有内生协变量的线性模型，如果您在一个数据集中遇到这两种问题，那么就会遇到麻烦。现在，您可以使用新的{cmd:eregress}命令拟合一个模型，以同时解决这两者：

            {cmd:. eregress y x, select(selvar = x z1 y2) endogenous(y2 = x z2)}

{pmore}
如果您还有内生处理分配和内生协变量，请输入

            {cmd:. eregress y x, entreat(trtvar = x z1 y2) endogenous(y2 = x z2)}

{pmore}
有四个ERM命令。

{p2colset 7 35 37 2}{...}
{p2coldent:新命令}拟合{p_end}
{p2line}
{p2coldent :{help eregress_zh}}线性回归{p_end}
{p2coldent :{help eintreg_zh}}区间回归，包括tobit{p_end}
{p2coldent :{help eprobit_zh}}probit二元结果{p_end}
{p2coldent :{help eoprobit_zh}}有序probit有序分类结果{p_end}
{p2line}
{p2colreset}{...}

{pmore}
注意事项：

{p 12 16 2}
1.
如果您使用处理效应功能，在模型拟合后使用{cmd:estat} {cmd:teffects}获取处理效应和潜在结果均值。

{p 12 16 2}
2.
所有标准后估计命令均可用。{cmd:predict}提供预测值。{cmd:margins}计算边际效应和边际及条件均值。

{pmore}
回归分析的自变量可以是外生的或内生的。

{pmore}
内生回归变量可以是连续的、二元的或有序的。

{pmore}
处理可以是内生的或外生的。处理变量可以是二元的或有序的，这意味着处理可以是多值的。

{pmore}
内生选择可以使用probit或tobit建模。

{pmore}
您现在可以拟合以前无法获得的模型，即使您只需要其中某一个新特性，比如

            o   带内生协变量的区间回归
            o   带二元内生协变量的probit回归
            o   带内生有序处理的probit回归
            o   带内生处理的有序probit回归
            o   具有tobit内生样本选择的线性回归

{pmore}
查看 {manlink ERM Intro 8} 以获取概述，并查看
{manhelp eregress ERM}，
{manhelp eprobit ERM}，
{manhelp eoprobit ERM}，和
{manhelp eintreg ERM}。

{marker wndynamicdocs}{...}
{pstd}
{bf:亮点5. 使用Markdown的动态文档}

{pmore}
Markdown是一种标准标记语言，可以将纯文本输入格式化。它旨在轻松转换为HTML，这是Web语言。Stata现在支持它。

{pmore}
您可以从Stata输出创建HTML文件，包括图形。您将首先使用包含Markdown格式文本和动态标签的纯文本文件，标签指定指示Stata执行的命令，比如运行这个回归或生成那个图。然后您将使用新的{cmd:dyndoc}命令将此文件转换为HTML，

{pmore}
想要生成TeX文档吗？使用新的{cmd:dyntext}命令，您可以生成任何基于文本的文档！

{pmore}
见 {manhelp dyndoc P}，{manhelp dyntext P}，{manhelp markdown P}，和
{manhelp dynamic_tags P:dynamic tags}。

{marker wnnonlinearme}{...}
{pstd}
{bf:亮点6. 非线性混合效应模型}

{pmore}
Stata现在拟合非线性混合效应模型，也称为非线性多级模型和非线性层次模型。这些模型可以有两种方式看待。您可以将它们视为包含随机效应的非线性模型。或者您可以将它们视为某些或所有固定和随机效应以非线性方式进入的线性混合效应模型。无论您如何看待，整体误差分布假定为高斯分布。

{pmore}
这些模型很受欢迎，因为某些问题不是，在其科学中，参数上是线性的。这些模型在种群药物动力学、生物测定以及生物和农业生长过程的研究中很流行。例如，非线性混合效应模型已被用于建模体内药物吸收、地震强度和植物生长。

{pmore}
新的估计命令是{cmd:menl}。它实施了广泛实践中的Lindstrom-Bates算法，该算法基于固定和随机效应对非线性均值函数的线性化。支持最大似然和限制最大似然估计方法。

{pmore}
{cmd:menl}使用起来很简单。单个方程可以直接输入，例如

{phang3}
{cmd:. menl weight = ({b1}+{U[plant]})/(1+exp(-(age-{b2})/{b3}))}

{pmore}
这将拟合

                 b_1 + U_plant
             weight =  ----------------------------- + epsilon
		       1 + exp{-({cmd:age}-b_2)/b_3}

{pmore}
待估计的是b_1、b_2和b_3。U_plant是每个植物的随机截距。

{pmore}
{cmd:menl}还允许多阶段或层次规格，其中感兴趣的参数可以在每个层次的其他模型参数和随机效应的函数上定义，例如

{phang3}
{cmd:. menl weight = {phi1:}/(1+exp(-(age-{phi2:})/{phi3:})),}
{cmd:define(phi1:{b1}+{U1[plant]}) define(phi2:{b2}+{U2[plant]})}
{cmd:define(phi3:{b3}+{U3[plant]})}

{pmore}
这是同一模型，只是b_2和b_3允许在植物之间变化。

{pmore}
有几种方差-协方差结构可用于建模同一层次间随机效应的依赖性。如果我们愿意，可以在上述示例中添加{cmd:U1}、{cmd:U2}和{cmd:U3}之间的依赖性。

{pmore}
模型中存在组内误差，epsilon。灵活的方差-协方差结构可用于建模其异方差性及其组内依赖性。例如，异方差性可以建模为协变量或甚至预测均值的幂函数，依赖性可以使用任意顺序的自回归模型进行建模。

{pmore}
除了标准功能，后估计功能也包括预测随机效应及其标准误差，预测模型中定义为其他模型参数和随机效应函数的感兴趣参数，估计整体组内相关矩阵等。

{pmore}
见 {manhelp menl ME} 和 {manhelp menl_postestimation ME:menl postestimation}。

{marker wnsp}{...}
{pstd}
{bf:亮点7. 空间自回归（SAR）模型}

{pmore}
Stata现在拟合SAR模型，也称为同时自回归模型。新的{cmd:spregress}、{cmd:spivregress}和{cmd:spxtregress}命令允许因变量的空间滞后、独立变量的空间滞后和空间自回归误差。空间滞后是时间序列滞后的空间类比。时间序列滞后是来自近期的变量值。空间滞后是来自邻近地区的变量值。

{pmore}
这些模型适用于区（也称为区域）数据。观察项称为空间单元，可能是国家、州、区、县、市、邮政编码或城市街区。它们也可能根本不基于地理位置。它们可能是社交网络的节点。空间模型估计直接效应——地区对自身的影响——和间接或溢出效应——来自邻近地区的影响。

{pmore}
Stata提供了一套用于处理空间数据的命令以及一份新的{mansection SP spSpatialAutoregressiveModels:{bf:[SP]}}手册来配合它们。
当空间单元基于地理时，您可以从Web下载定义地图的标准格式形状文件。使用一个命令，您可以使溢出效应与地区之间的逆距离成正比或限制它们仅来自邻近地区。您还可以创建自己的自定义接近定义。

{pmore}
提供以下模型拟合：

{p2colset 7 33 35 2}{...}
{p2coldent:命令}描述{space 19}等效于{p_end}
{p2line}
{p2coldent :{help spregress_zh:spregress, gs2sls}}GS2SLS{space 24}{help regress_zh}{p_end}
{p2coldent :{help spregress_zh:spregress, ml}}最大似然{space 12}{help regress_zh}{p_end}

{p2coldent :{help spivregress_zh}}内生回归变量{space 9}{help ivregress_zh}{p_end}

{p2coldent :{help spxtregress_zh:spxtregress, fe}}面板数据固定效应{space 6}{help xtreg_zh:xtreg, fe}{p_end}
{p2coldent :{help spxtregress_zh:spxtregress, re}}面板数据随机效应{space 5}{help xtreg_zh:xtreg, re}{p_end}
{p2line}
{p2colreset}{...}

{pmore}
见 {manlink SP Intro}。

{marker wnintcensparam}{...}
{pstd}
{bf:亮点8. 区间检验参数生存时间模型}

{pmore}
Stata的新{cmd:stintreg}命令加入了{cmd:streg}以拟合参数生存模型。{cmd:stintreg}适用于区间检验数据。在区间检验数据中，失败时间并不是完全已知。每个受试者可能知道一个时间，在此时间之前该受试者尚未失败，以及在该时间之后该受试者已失败。

{pmore}
{cmd:stintreg}可以拟合指数、威布尔、Gompertz、对数正态、对数逻辑和广义伽马生存时间模型。支持比例风险和加速失效时间度量。功能包括

{phang3}
o{space 3}分层估计

{phang3}
o{space 3}对辅助参数的灵活建模

{phang3}
o{space 3}稳健、聚类稳健、引导和杰克刀标准误差

{pmore}
通过{cmd:svy}前缀支持调查数据估计。

{pmore}
除了常用功能外，后估计功能还包括生存者、风险和累积风险函数的图表，预测均值和中位数时间，Cox-Snell和类似马丁格尔的残差等等。

{pmore}
见 {manhelp stintreg ST}。

{marker wnfmm}{...}
{pstd}
{bf:亮点9. 有限混合模型（FMMs）}

{pmore}
新的{cmd:fmm:}前缀命令可以与17个Stata估计命令一起使用以进行FMMs。相关命令如下：

{p2colset 7 35 37 2}{...}
{p2coldent:命令}拟合{p_end}
{p2line}
{p2coldent :{helpb fmm betareg:fmm: betareg}}Beta回归{p_end}
{p2coldent :{helpb fmm cloglog:fmm: cloglog}}互补对数-对数回归{p_end}
{p2coldent :{helpb fmm glm:fmm: glm}}广义线性模型{p_end}
{p2coldent :{helpb fmm intreg:fmm: intreg}}区间检验回归{p_end}
{p2coldent :{helpb fmm ivregress:fmm: ivregress}}工具变量回归{p_end}
{p2coldent :{helpb fmm logit:fmm: logit}}逻辑回归{p_end}
{p2coldent :{helpb fmm mlogit:fmm: mlogit}}多项式逻辑回归{p_end}
{p2coldent :{helpb fmm nbreg:fmm: nbreg}}负二项回归{p_end}
{p2coldent :{helpb fmm ologit:fmm: ologit}}有序逻辑回归{p_end}
{p2coldent :{helpb fmm oprobit:fmm: oprobit}}有序probit回归{p_end}
{p2coldent :{helpb fmm poisson:fmm: poisson}}泊松回归{p_end}
{p2coldent :{helpb fmm probit:fmm: probit}}probit回归{p_end}
{p2coldent :{helpb fmm regress:fmm: regress}}线性回归{p_end}
{p2coldent :{helpb fmm streg:fmm: streg}}参数生存时间回归{p_end}
{p2coldent :{helpb fmm tobit:fmm: tobit}}tobit回归{p_end}
{p2coldent :{helpb fmm tpoisson:fmm: tpoisson}}截断泊松回归{p_end}
{p2coldent :{helpb fmm truncreg:fmm: truncreg}}截断线性回归{p_end}
{p2line}
{p2colreset}{...}

{pmore}
{cmd:fmm}在数据来自未观察到的子人群时可拟合模型。那是一个广泛的声明，{cmd:fmm:}可以支持它。

{pmore}
{cmd:fmm:}的最典型用法是拟合一个模型，允许参数（系数、位置、方差、尺度等）在子人群中变化。我们将这些未观察到的子人群称为类。假设我们要研究

            {cmd:. regress y x1 x2}

{pmore}
但我们相信有三个类，模型的参数可能会有所不同。即使我们没有记录类归属的变量，我们仍然可以拟合

            {cmd:. fmm 3:  regress y x1 x2}

{pmore}
将分别报告每个类别的模型以及预测归属的模型。

{pmore}
{cmd:fmm:}可以与多个估计命令同时使用，当类可能遵循不同模型时，例如

            {cmd:. fmm: (regress y x1 x2) (poisson y x1 x2 x3)}

{pmore}
在这个双类示例中，将报告对第一类的线性回归模型，对第二类的泊松回归模型，以及一个模型用于预测类归属。

{pmore}
提供了后估计命令：1）估计每个类别在总体中的比例 ({manhelp fmm_estat_lcprob FMM:estat lcprob})；
2）报告类别内结果变量的边际均值 ({manhelp fmm_estat_lcmean FMM:estat lcmean});
3）预测类归属概率和预测结果 ({manhelp fmm_postestimation FMM:fmm postestimation})。

{pmore}
见 {manlink FMM fmm intro}。

{marker wnmixedlogit}{...}
{pstd}
{bf:亮点10. 混合logit模型}

{pmore}
Stata拟合离散选择模型。Stata 15将其与随机系数相结合。离散选择是指多项式或条件逻辑回归的另一种说法。“混合”一词是由统计学家用于某些系数是随机的，而其他是固定的。因此，Stata 15拟合混合logit模型。

{pmore}
随机系数产生的原因有很多，但数据选择的研究人员对它们可能感兴趣的一个特殊原因是。随机系数是绕过IIA假设的一种方法。如果您在步行、公共交通或乘车中有选择，并且您选择了步行，则另外两个选择无关。去掉其中一个，您仍然会选择步行。根据他们的行为，人类有时会违背这一假设。

{pmore}
从数学上讲，IIA使替代品在条件协变量后独立。如果IIA被违背，则替代品将是相关的。随机系数允许这种情况发生。

{pmore}
拟合随机系数的要求是变量在各个替代品之间变化。因此，混合logit模型通常被认为包含替代特定变量。

{pmore}
使其拟合的Stata 15新命令名为{cmd:asmixlogit}。

{pmore}
新命令还允许从不同分布中抽取随机系数。一个可能是正态的，另一个是对数正态的。还支持多元正态、截断正态、均匀和三角分布。

{pmore}
见 {manhelp asmixlogit R}。

{marker wnnonparamreg}{...}
{pstd}
{bf:亮点11. 非参数回归，核方法}

{pmore}
Stata现在拟合非参数回归。在这些模型中，您不指定函数形式。您指定

            y = g(x_1, x_2, ..., x_k) + epsilon

{pmore}
而g(.)被拟合。该方法不假设g(.)是线性的；它也可以是

            y = beta_1 x_1 + beta_2 x_2^2 + beta_3 x_1 x_2 + ...

{pmore}
而它甚至不假设它在线性参数中。它也可以是

           y = beta_1 x_1^{beta_2} + beta_3 cos(x_2+x_3) + ...

{pmore}
或其他任何东西。结果不会以代数形式返还给您，但可以计算预测值和导数。

{pmore}
新的{cmd:npregress}命令使用局部线性或局部常数核回归拟合模型。请注意，拟合准确的非参数回归需要大量观察数据。Stata没有限制k，但实际问题会有所限制。

{pmore}
您可以输入

            {cmd:. npregress kernel y x1 x2 x3, vce(bootstrap)}

{pmore}
将报告{cmd:y}对于{cmd:x1}、{cmd:x2}和{cmd:x3}的部分导数的平均值及其标准误差，采用引导法获得。这些平均值是在数据上计算的。拟合模型后，您可以使用{cmd:predict}获取预测值。

{pmore}
平均导数类似于系数，或者至少在模型是线性的情况下是这样。然而，非线性模型中的平均导数并不是在平均水平的导数。您可能希望知道{cmd:y}对{cmd:x1}、{cmd:x2}和{cmd:x3}在它们平均值处的导数。您可以使用{cmd:margins}获取：

            {cmd:. margins, dydx(x1 x2 x3) atmeans}

{pmore}
或者，您可能想要在特定关心点评估预测值，

            {cmd:. margins, at(x1=2 x2=3 x3=1) at(x1=2 x2=3 x3=2)}

{pmore}
如果您想将{cmd:x3}设为1、2、...、10，可以输入

            {cmd:. margins, at(x1=2 x2=3 x3=1(1)10)}

{pmore}
然后，您可以输入

            {cmd:. marginsplot}

{pmore}
来绘制该函数的这一切。

{pmore}
顺便说一句，{cmd:margins}不仅进行计算，还可以为这些计算产生引导标准误差。

{pmore}
见 {manhelp npregress R}。

{marker wnpowerclustrand}{...}
{pstd}
{bf:亮点12. 线性回归、群体随机设计和您自己的方法的功效分析}

{pmore}
Stata的{cmd:power}命令执行功效与样本量分析（PSS）。其功能现在包括线性回归和群体随机设计（CRDs）的PSS。此外，您现在可以将自己的功效与样本量方法添加到{cmd:power}命令中。

{pmore}
线性回归的新PSS方法包括以下内容：

{phang2}
o{space 3}{cmd:power oneslope}执行简单线性回归中斜率检验的PSS。它计算样本量、功效或给定其他研究参数的目标斜率。见 {manhelp power_oneslope PSS:power oneslope}。

{phang2}
o{space 3}{cmd:power rsquared}执行多项线性回归中R^2检验的PSS。R^2检验是判定系数（R^2）的F检验。该检验可以用来检验所有系数的显著性，或者用来检验它们的子集。

{pmore2}
在这两种情况下，{cmd:power rsquared}计算样本量、功效或给定其他研究参数的目标R^2。见 {manhelp power_rsquared PSS:power rsquared}。

{phang2}
o{space 3}{cmd:power pcorr}在多项线性回归中进行偏相关检验的PSS。偏相关检验是平方偏多重相关系数的F检验。该命令计算样本量、功效或给定其他研究参数的目标平方偏相关系数。见 {manhelp power_pcorr PSS:power pcorr}。

{pmore}
群体随机设计的新PSS方法包括以下内容：

{pmore2}
五个现有的{cmd:power}方法，列在下面，扩展以支持CRDs或聚类数据，您可以在指定新选项{cmd:cluster}时使用。

{p2colset 13 46 48 2}{...}
{p2coldent:命令}标题{p_end}
{p2line}
{p2coldent :{helpb power onemean, cluster}}CRD中的单样本均值检验{p_end}
{p2coldent :{helpb power oneproportion, cluster}}CRD中的单样本比例检验{p_end}
{p2coldent :{helpb power twomeans, cluster}}CRD中的两个样本均值检验{p_end}
{p2coldent :{helpb power twoproportions, cluster}}CRD中的两个样本比例检验{p_end}
{p2coldent :{helpb power logrank, cluster}}CRD中的log-rank检验{p_end}
{p2line}
{p2colreset}{...}

{pmore2}
在CRD中，样本的群体（集群）被随机化而不是单个受试者，因此样本量由集群数和集群大小确定。样本量确定包括在给定集群大小的情况下确定集群数，或在给定集群数的情况下确定集群大小。这些命令计算集群数、集群大小、功效或最小可检测效果大小，给定其他参数，并提供选项以调整不等集群大小。

{pmore2}
对于双样本方法，您还可以调整两组中集群数的不均等。

{pmore}
与所有其他职能一样，新方法允许您指定多个参数值并自动生成表格和图表结果。

{pmore}
最后一个新特性是，您可以添加自己的PSS方法。如何做到这一点现在在{manhelpi power_usermethod PSS:power usermethod}文档中提供。它非常简单。您编写一个程序来计算样本量、功效或效果大小。{cmd:power}命令将处理其余部分。它将处理选项中多个值的支持以及结果的图表和表格的自动生成。

{marker wnpdfword}{...}
{pstd}
{bf:亮点13. 生成PDF和Word文档}

{pmore}
现在在Stata中生成PDF和Word文档与生成Excel工作表一样简单。每个人都喜欢Stata 14中的{cmd:putexcel}。如果您是其中之一，您会喜欢{cmd:putpdf}和{cmd:putdocx}。

{pmore}
它们的工作方式与{cmd:putexcel}相同。这意味着您可以编写do文件，以创建包含最新结果、表格和图的完整PDF或Word报告。您可以自动生成可重现的报告。

{pmore}
新的{cmd:putpdf}命令将段落、图像和表格写入PDF文件。图像包括Stata图形和其他图像，例如您组织的徽标。您还可以格式化对象——粗体、斜体、大小、自定义表格等。

{pmore}
新的{cmd:putdocx}命令将段落、图像和表格写入Word文件，或者准确地说，写入Office Open XML（{cmd:.docx}）文件。与{cmd:putpdf}一样，图像也包括Stata图形，并且您可以格式化对象。

{pmore}
见 {manhelp putpdf P} 和 {manhelp putdocx P}。

{marker wngraphcolor}{...}
{pstd}
{bf:亮点14. 图形颜色透明度或不透明度}

{pmore}
直到现在，图形概念是将一项内容叠加到任何其他内容上，而位于顶部的对象遮盖底部的对象。用术语来说，Stata的颜色是完全不透明的，或者如果您更喜欢，不透明度为零。Stata 15仍然默认以这种方式工作。然而，Stata 15允许您控制颜色的不透明度（透明度）。

{pmore}
不透明度以百分比表示。默认情况下，Stata的颜色是100%不透明的。

{pmore}
您可以在指定颜色时指定不透明度，例如在{cmd:mcolor()}选项中，该选项控制标记的颜色。现在，您可以指定{cmd:green%50}，而不是指定{cmd:green}。您可以指定{cmd:"0 255 0%50"}而不是指定{cmd:"0 255 0"}（相当于绿色）。你甚至可以简单地指定{cmd:%50}，使默认颜色变为50%不透明。

{pmore}
通常情况下，您不想指定{cmd:%0}。是的，它是完全透明的，但也是不可见的。

{pmore}
这里有一个图形，我们使用{cmd:%70}：

{phang3}
{cmd:. twoway rarea high open date in 1/15, color(red%70) ||}
{cmd:rarea low close date in 1/15, color(green%70)}

{marker wnicd10}{...}
{pstd}
{bf:亮点15. ICD-10-CM和ICD-10-PCS支持}

{pmore}
Stata 15现在支持ICD-10-CM和ICD-10-PCS，这是美国国家健康统计中心（NCHS）和医疗保险与医疗补助服务中心（CMS）提供的ICD-10代码。这些是美国所有医疗账单中强制规定的代码。

{pmore}
Stata一向支持ICD代码以报告医疗诊断、程序和死亡率。ICD代表国际统计分类疾病及相关健康问题。Stata于1998年开始支持这一编码，最初是ICD-9-CM版本16，并支持之后所有的修订版。

{pmore}
Stata自2003年以来支持ICD-10代码的修订。

{pmore}
见 {manhelp icd D}，{manhelp icd10cm D} 和 {manhelp icd10pcs D}。

{marker wnfred}{...}
{pstd}
{bf:亮点16. 联邦储备经济数据支持}

{pmore}
圣路易斯联邦储备银行向注册用户提供超过470,000个美国和国际经济与金融时间序列数据。注册是免费的，过程也很简单。该服务称为FRED。FRED包括来自84个来源的数据，包括联邦储备、宾夕法尼亚世界表、欧洲统计局和世界银行。

{pmore}
在Stata 15中，您可以使用Stata的GUI访问和下载FRED数据。您可以按类别、版本或来源进行搜索或浏览。您可以单击选择感兴趣的系列。选择1个或选择100个。当您单击{bf:导入}时，Stata将下载它们并合并成一个单独的自定义数据集在内存中。

{pmore}
这些相同的功能也可以通过Stata的命令行界面访问。命令是{cmd:import fred}。当您想要自动更新为每月报告跟踪的27个系列时，该命令非常方便。

{pmore}
Stata可以访问FRED，并且可以访问ALFRED。ALFRED是FRED的历史档案数据。

{pmore}
见 {manhelp import_fred D:import fred}。

{marker NewStat}{...}
{title:1.3.2  新统计功能（一般）}

{pstd}
有限混合模型是本次发布的{help whatsnew14to15##wnfmm:{it:亮点9}}，混合logit模型是{help whatsnew14to15##wnmixedlogit:{it:亮点10}}，非参数回归是{help whatsnew14to15##wnnonparamreg:{it:亮点11}}。

{pstd}
还有以下新功能：

{p 5 9 2}
1.  {bf:bayes: 前缀与通用估计命令结合使用}

{p 9 9 2}
新的{cmd:bayes:}前缀（本次发布的{help whatsnew14to15##wnbayes:{it:亮点2}}）可以与许多通用估计命令结合使用：

{p2colset 13 35 37 2}{...}
{p2coldent:命令}目的{p_end}
{p2line}
{p2coldent :{helpb bayes betareg:betareg}}Beta回归{p_end}
{p2coldent :{helpb bayes binreg:binreg}}二项回归{p_end}
{p2coldent :{helpb bayes biprobit:biprobit}}双变量probit回归{p_end}
{p2coldent :{helpb bayes clogit:clogit}}条件逻辑回归{p_end}
{p2coldent :{helpb bayes cloglog:cloglog}}对数-对数对数回归{p_end}
{p2coldent :{helpb bayes fracreg:fracreg}}分数响应回归{p_end}
{p2coldent :{helpb bayes glm:glm}}广义线性模型{p_end}
{p2coldent :{helpb bayes gnbreg:gnbreg}}负二项回归{p_end}
{p2coldent :{helpb bayes heckman:heckman}}赫克曼选择模型{p_end}
{p2coldent :{helpb bayes heckoprobit:heckoprobit}}赫克曼有序probit与样本选择{p_end}
{p2coldent :{helpb bayes heckprobit:heckprobit}}赫克曼probit与样本选择{p_end}
{p2coldent :{helpb bayes hetprobit:hetprobit}}异方差probit回归{p_end}
{p2coldent :{helpb bayes hetregress:hetregress}}异方差线性回归{p_end}
{p2coldent :{helpb bayes intreg:intreg}}区间线性回归{p_end}
{p2coldent :{helpb bayes logistic:logistic}}逻辑回归（默认赔率比）{p_end}
{p2coldent :{helpb bayes logit:logit}}逻辑回归（默认系数）{p_end}
{p2coldent :{helpb bayes mlogit:mlogit}}多项逻辑回归{p_end}
{p2coldent :{helpb bayes mprobit:mprobit}}多项probit回归{p_end}
{p2coldent :{helpb bayes mvreg:mvreg}}多元线性回归{p_end}
{p2coldent :{helpb bayes nbreg:nbreg}}负二项回归{p_end}
{p2coldent :{helpb bayes ologit:ologit}}有序逻辑回归{p_end}
{p2coldent :{helpb bayes oprobit:oprobit}}有序probit回归{p_end}
{p2coldent :{helpb bayes poisson:poisson}}泊松回归{p_end}
{p2coldent :{helpb bayes probit:probit}}probit回归{p_end}
{p2coldent :{helpb bayes regress:regress}}线性回归{p_end}
{p2coldent :{helpb bayes tnbreg:tnbreg}}截断负二项回归{p_end}
{p2coldent :{helpb bayes tobit:tobit}}tobit回归{p_end}
{p2coldent :{helpb bayes tpoisson:tpoisson}}截断泊松回归{p_end}
{p2coldent :{helpb bayes truncreg:truncreg}}截断线性回归{p_end}
{p2coldent :{helpb bayes zinb:zinb}}零膨胀负二项回归{p_end}
{p2coldent :{helpb bayes zioprobit:zioprobit}}零膨胀有序probit回归{p_end}
{p2coldent :{helpb bayes zip:zip}}零膨胀泊松回归{p_end}
{p2line}
{p2colreset}{...}

{p 9 9 2}
        上述列表是通用估计命令的概述。
        {cmd:bayes:}前缀也可以与多级估计命令一起使用。

{p 9 9 2}
        见 {manhelp bayes BAYES} 和
	{manhelp bayesian_estimation BAYES:bayesian estimation}。

{p 5 9 2}
2.  {bf:新命令拟合异方差回归}

{p 9 9 2}
新的估计命令{cmd:hetregress}通过将方差建模为您指定的协变量的指数函数来拟合异方差回归。提供了两种估计方法，最大似然和Harvey的两步广义最小二乘法。支持稳健、聚类稳健、引导和杰克刀标准误差。通过{cmd:svy}前缀支持调查数据估计。

{p 9 9 2}
详见 {manhelp hetregress R}。

{p 5 9 2}
3.  {bf:新命令拟合带赫克曼风格选择的poisson回归}

{p 9 9 2}
新的估计命令{cmd:heckpoisson}拟合带内生样本选择的poisson回归模型。
提供所有标准后估计特性。

{p 9 9 2}
详见 {manhelp heckpoisson R}。

{p 5 9 2}
4.  {bf:新命令拟合零膨胀有序probit回归}

{p 9 9 2}
新的估计命令{cmd:zioprobit}拟合零膨胀有序probit模型。当数据展现出比标准有序probit模型所期望的更高的零比例时，使用此模型。

{p 9 9 2}
我们说0，想象依赖变量包含0、1、2，但我们的意思是结果变量的最低值，因为它也可能包含2、5、9等。

{p 9 9 2}
零膨胀通过假设零来自于probit模型和有序probit模型的组合来解释。每个模型可以有不同的协变量。

{p 9 9 2}
详见 {manhelp zioprobit R}。

{p 5 9 2}
5.  {bf:tobit现在接受限制和约束}

{p 9 9 2}
一些人认为tobit是被零限制的。Stata的{cmd:tobit}估计命令允许您指定限制点的下限，并且也允许您指定上限。所有这些都没有改变。您现在可以指定限制点——上限、下限或两者——在观察之间变化。限制点可以存储在变量中。

{p 9 9 2}
{cmd:tobit}现在允许约束。

{p 9 9 2}
{cmd:tobit}现在具有其应有的其他标准功能，但这些只是为了完整性。您可以，例如，指定初始值。

{p 9 9 2}
详见 {manhelp tobit R}。

{p 5 9 2}
6.  {bf:tpoisson, ul()}

{p 9 9 2}
现有的估计命令{cmd:tpoisson}拟合截断泊松模型。它以前仅拟合左截断模型。
现在可以拟合左、右和双截断模型。新选项{cmd:ul()}指定上截断限制。

{p 9 9 2}
详见 {manhelp tpoisson R}。

{p 5 9 2}
7.  {bf:因子变量现在更像您希望它们那样工作}

{p 9 9 2}
考虑拟合一个模型，其条款为

            {cmd:.} {it:est_command} ... {cmd:i.a i(2 3).a#i.b} ...

{p 9 9 2}
应该发生什么？现在发生的事情应该更符合您的期望。{cmd:i.a}为每个{cmd:a}水平增加主效应系数，而交互{cmd:i(2 3).a#i.b}被限制在{cmd:a}的水平2和3。

{p 9 9 2}
过去发生的情况让人感到相当惊讶。模型的整个RHS被限制在{cmd:a}的2和3的水平。

{p 5 9 2}
8.  {bf:带有聚类数据的一样和两个样本均值检验}

{p 9 9 2}
现有命令{cmd:ztest}具有新选项{cmd:cluster()}和其他新选项，以考虑聚类。

{p 9 9 2}
详见 {manhelp ztest R}。

{p 5 9 2}
9.  {bf:带有聚类数据的一个样本和两个样本比例检验}

{p 9 9 2}
现有命令{cmd:prtest}具有新选项{cmd:cluster()}和其他新选项，以考虑聚类。

{p 9 9 2}
详见 {manhelp prtest R}。

{p 4 9 2}
10.  {bf:说明解释指数化系数报告时截距的注释}

{p 9 9 2}
许多估计命令报告指数化系数，无论是默认还是因为您指定了请求赔率比、发生率比、风险比等的选项。
在这些情况下，Stata还报告指数化的截距。这使一些人困惑，尤其是学生。现在Stata在输出的末尾添加了一条说明，解释指数化截距的解释。

{p 9 9 2}
这些注释还清楚说明了哪些参数是指数化的。

{p 4 9 2}
11.  {bf:ivtobit具有改进的收敛性}

{p 9 9 2}
现有估计命令{cmd:ivtobit}拟合工具变量tobit模型。现在当存在两个或更多内生变量时，其收敛性更可靠。

{p 4 9 2}
12.  {bf:具有重复方法的新dots()选项}

{p 9 9 2}
现有前缀命令{cmd:bootstrap}、{cmd:jackknife}、{cmd:permute}和{cmd:simulate}具有新的选项{opt dots(#)}，该选项每{it:#}次复制时显示点。这提供了娱乐和确认，表明命令在长时间运行期间仍在工作。

{p 9 9 2}
见 {manhelp bootstrap R}，{manhelp jackknife R}，
{manhelp permute R}，和 {manhelp simulate R}。

{p 4 9 2}
13.  {bf:重命名为lrmodel的noskip选项}

{p 9 9 2}
现有的估计命令{cmd:biprobit}、{cmd:heckman}、{cmd:heckprobit}、{cmd:hetprobit}和{cmd:truncreg}具有选项{cmd:noskip}，该选项以似然比而不是默认的Wald检验呈现模型检验。该选项已重命名为{cmd:lrmodel}。旧的选项名称仍然有效。（旧名称是有理由的。计算似然比检验需要拟合仅包含常数的模型。{cmd:noskip}规定不跳过该模型的拟合！）

{p 4 9 2}
14.  {bf:hetprobit，waldhet（选项重命名）}

{p 9 9 2}
现有估计命令{cmd:hetprobit}拟合异方差probit模型。现有选项{cmd:nolrtest}已重命名为{cmd:waldhet}。它检验方差是否异方差。旧选项{cmd:nolrtest}在版本控制下继续有效。

{p 9 9 2}
见 {manhelp hetprobit R}。

{p 4 9 2}
15.  {bf:Stata以不同方式命名拟合模型中的自由参数}

{p 9 9 2}
自由参数是标量参数、方差、协方差及类似的内容，部分构成正在拟合的模型。一个自由参数可能是ln(sigma)。

{p 9 9 2}
我们对Stata的内部进行了深入更改。这对您意味着什么？没什么。如果一个模型拟合自由参数{cmd:/lnsigma}，您不能再将其值作为{cmd:_b[lnsigma:_cons]}引用。您必须将其作为{cmd:_b[/lnsigma]}引用。您可能一直都这样做。这样做少了一些输入。

{p 9 9 2}
重命名可能在您编写的程序中很重要；见下一项。

{p 9 9 2}
旧语法在版本控制下被保留。

{p 9 9 2}
见 {manhelp ml R} 和见下一项。

{p 4 9 2}
16.  {bf:想要编程自己的模型？ml使用新的自由参数语法}

{p 9 9 2}
{cmd:ml}现在允许并更喜欢将自由参数指定为{cmd:/}{it:name}。您不能再将它们视为仅包含常数的方程，也就是说，{it:name}{cmd::}{cmd:_cons}，除了在版本控制下。

{p 9 9 2}
如上一项所述，{cmd:_b[/lnsigma]}不再是{cmd:_b[lnsigma:_cons]}的简写。
{cmd:_b[/lnsigma]}是它自己的东西。它是名称为{cmd:/lnsigma}的自由参数，而不是方程{cmd:lnsigma}的常数项。

{p 9 9 2}
如果您使用{cmd:ml}来拟合自己的最大似然模型，您可能会创建{cmd:/lnsigma}，以为是在创建名为{cmd:lnsigma}的方程。您并没有。您实际上是在创建一个单独的自由参数。如果要创建一个仅包含常数的方程，您必须使用{cmd:(lnsigma:)}，这始终意味着创建一个名为{cmd:lnsigma}的“方程”。

{p 9 9 2}
编写高级代码的程序员还有其他影响。矩阵行和列名称已更改，现在易于使用。这在{help whatsnew14to15##NewP:{it:编程中的新功能}}中提到。

{p 9 9 2}
见 {manhelp ml R}。

{p 4 9 2}
17.  {bf:更多存储结果}

常规命令在{cmd:r()}中存储其结果，估计命令存储在{cmd:e()}中。它们现在有更多。如果报告了某些内容，即使从其他存储的结果中可以计算出所报告的内容，也会存储结果。


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew14to15.sthlp>}