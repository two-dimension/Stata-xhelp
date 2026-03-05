{smcl}
{* *! version 1.1.8  28feb2019}{...}
{viewerdialog menl "dialog menl"}{...}
{vieweralsosee "[ME] menl" "mansection ME menl"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] menl postestimation" "help menl postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] me" "help me_zh"}{...}
{vieweralsosee "[ME] meglm" "help meglm_zh"}{...}
{vieweralsosee "[ME] mixed" "help mixed_zh"}{...}
{vieweralsosee "[R] nl" "help nl_zh"}{...}
{viewerjumpto "语法" "menl_zh##syntax"}{...}
{viewerjumpto "菜单" "menl_zh##menu"}{...}
{viewerjumpto "描述" "menl_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "menl_zh##linkspdf"}{...}
{viewerjumpto "选项" "menl_zh##options"}{...}
{viewerjumpto "示例" "menl_zh##examples"}{...}
{viewerjumpto "存储结果" "menl_zh##results"}
{help menl:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[ME] menl} {hline 2}}非线性混合效应回归{p_end}
{p2col:}({mansection ME menl:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{opt menl} {depvar} {cmd:=} <{it:menlexpr}>
{ifin}
[{cmd:,} {it:{help menl##optstable:选项}}]

{marker menlexpr}{...}
{phang}
<{it:menlexpr}> 定义了一个非线性回归函数，作为一个可替代的表达式，包含在大括号 {cmd:{c -(}{c )-}} 中指定的模型参数和随机效应，如
{cmd:exp({c -(}b{c )-}+{c -(}U[id]{c )-})}; 有关详细信息，请参见 {mansection ME menlRemarksandexamplesRandom-effectssubstitutableexpressions:{it:随机效应可替代表达式}} 在 {bf:[ME] menl} 中。

{marker optstable}{...}
{synoptset 30 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt ml:e}}通过最大似然拟合模型；默认值{p_end}
{synopt :{opt reml}}通过限制最大似然拟合模型{p_end}
{synopt :{cmdab:def:ine(}{help menl##paramdef:{it:name}{bf::}<{it:resubexpr}>}{cmd:)}}定义模型参数的函数；此选项可以重复使用{p_end}
{synopt :{opth cov:ariance(menl##covspec:covspec)}}随机效应的方差-协方差结构；此选项可以重复使用{p_end}
{synopt :{opth init:ial(menl##initial_values:initial_values)}}参数的初始值{p_end}

{syntab:残差}
{synopt :{opth rescov:ariance(menl##rescovspec:rescovspec)}}组内误差的协方差结构{p_end}
{synopt :{opth resvar:iance(menl##resvarspec:resvarspec)}}组内误差的异方差方差结构{p_end}
{synopt :{opth rescorr:elation(menl##rescorrspec:rescorrspec)}}组内误差的相关结构{p_end}

{syntab:时间序列}
{synopt :{opth tsorder(varname)}}指定时间变量以确定时间序列运算符的排序{p_end}
{synopt :{cmd:tsinit(}{help menl##tsidef:{bf:{c -(}}{it:name}{bf::{c )-}=}<{it:resubexpr}>}{cmd:)}}指定与命名表达式一起使用的滞后运算符的初始条件；此选项可以重复使用{p_end}
{synopt :{opt tsmiss:ing}}在计算中保留 {it:depvar} 中缺失值的观察{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt var:iance}}按方差和协方差显示随机效应和组内误差参数估计；默认值{p_end}
{synopt :{opt stddev:iations}}以标准差和相关性显示随机效应和组内误差参数估计{p_end}
{synopt :{opt noret:able}}抑制随机效应表{p_end}
{synopt :{opt nofet:able}}抑制固定效应表{p_end}
{synopt :{opt estm:etric}}以存储在 {cmd:e(b)} 中的度量方式显示参数估计{p_end}
{synopt :{opt noleg:end}}抑制表格表达式图例{p_end}
{synopt :{opt nohead:er}}抑制输出标题{p_end}
{synopt :{opt nogr:oup}}抑制总结组的表格{p_end}
{synopt :{opt nostd:err}}不估计随机效应参数的标准误差{p_end}
{synopt :{opt lr:test}}进行似然比测试以比较非线性混合效应模型与普通非线性回归{p_end}
{synopt :{opt notsshow}}不显示 ts 设置信息{p_end}
{synopt :{it:{help menl##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:EM 选项}
{synopt :{opt emiter:ate(#)}}EM 迭代次数； 默认值为 {cmd:emiterate(25)}{p_end}
{synopt :{opt emtol:erance(#)}}EM 收敛容忍度； 默认值为 {cmd:emtolerance(1e-10)}{p_end}
{synopt :{opt emlog}}显示 EM 迭代日志{p_end}

{syntab:最大化}
{synopt :{it:{help menl##menlmaxopts:menlmaxopts}}}控制最大化的过程{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p 4 6 2}
{opt coeflegend} 在对话框中未出现。{p_end}
{p 4 6 2}有关估计后可用的功能，请参见 {manhelp menl_postestimation ME:menl postestimation}。{p_end}
{p2colreset}{...}


{marker covspec}{...}
{phang}
{it:covspec} 的语法是

{pmore2}
{mansection ME menlRemarksandexamplesrename:{it:rename1}} {it:rename2}
    [...]{cmd:,} {it:vartype}

{marker vartype}{...}
{synoptset 30}{...}
{synopthdr:vartype}
{synoptline}
{synopt :{opt ind:ependent}}每个随机效应一个独特的方差参数；所有协方差为 0；默认值{p_end}
{synopt :{opt exc:hangeable}}随机效应的方差相等，并有一个共同的成对协方差{p_end}
{synopt :{opt id:entity}}随机效应的方差相等；所有协方差为 0{p_end}
{synopt :{opt un:structured}}所有方差和协方差均需独立估计{p_end}
{synoptline}

{marker rescovspec}{...}
{phang}
{it:rescovspec} 的语法是

{pmore2}
{it:rescov} [{cmd:,} {help menl##rescovopts:{it:rescovopts}}] 

{marker rescov}{...}
{synopthdr:rescov}
{synoptline}
{synopt :{opt id:entity}}组内误差不相关，且有一个共同方差；默认为{p_end}
{synopt :{opt ind:ependent}}组内误差不相关，并具有不同方差{p_end}
{synopt :{opt exc:hangeable}}组内误差的方差相同，并有一个共同协方差{p_end}
{synopt :{cmd:ar} [{it:#}]}组内误差具有自回归 (AR) 结构，阶数为 {it:#}，AR({it:#})； {cmd:ar 1} 为 {cmd:ar} 的隐含假设{p_end}
{synopt :{cmd:ma} [{it:#}]}组内误差具有移动平均 (MA) 结构，阶数为 {it:#}，MA({it:#})； {cmd:ma 1} 为 {cmd:ma} 的隐含假设{p_end}
{synopt :{opt ctar1}}组内误差具有连续时间 AR(1) 结构{p_end}
{synopt :{opt to:eplitz} [{it:#}]}组内误差具有阶数为 {it:#} 的 Toeplitz 结构； {opt toeplitz} 隐含假设所有矩阵非对角线元素都被估计{p_end}
{synopt :{opt ba:nded} [{it:#}]}组内误差具有不同的方差和在前 {it:#} 条对角线上的协方差； {cmd:banded} 隐含假设所有矩阵带状（非结构化）{p_end}
{synopt :{opt un:structured}}组内误差具有不同的方差和协方差{p_end}
{synoptline}

{marker resvarspec}{...}
{phang}
{it:resvarspec} 的语法是

{pmore2}
{it:resvarfunc} [{cmd:,} {help menl##resvaropts:{it:resvaropts}}] 

{marker resvarfunc}{...}
{synopthdr:resvarfunc}
{synoptline}
{synopt :{opt id:entity}}组内误差方差相等；默认{p_end}
{synopt :{opt lin:ear} {varname}}组内误差方差随 {it:varname} 线性变化{p_end}
{synopt :{opt pow:er} {varname}|{cmd:_yhat}}方差函数是 {it:varname} 的幂或预测均值{p_end}
{synopt :{opt exp:onential} {varname}|{cmd:_yhat}}方差函数是 {it:varname} 或预测均值的指数{p_end}
{synopt :{opt dis:tinct}}独特的组内误差方差{p_end}
{synoptline}

{marker rescorrspec}{...}
{phang}
{it:rescorrspec} 的语法是

{pmore2}
{it:rescorr} [{cmd:,} {help menl##rescorropts:{it:rescorropts}}]

{marker rescorr}{...}
{synopthdr:rescorr}
{synoptline}
{synopt :{opt id:entity}}组内误差不相关；默认{p_end}
{synopt :{opt exc:hangeable}}组内误差具有一个共同相关性{p_end}
{synopt :{opt ar} [{it:#}]}组内误差具有 AR({it:#}) 结构； {cmd:ar 1} 为 {cmd:ar} 的隐含假设{p_end}
{synopt :{opt ma} [{it:#}]}组内误差具有 MA({it:#}) 结构； {cmd:ma 1} 为 {cmd:ma} 的隐含假设{p_end}
{synopt :{opt ctar1}}组内误差具有连续时间 AR(1) 结构{p_end}
{synopt :{opt to:eplitz} [{it:#}]}组内误差具有阶数为 {it:#} 的 Toeplitz 相关结构； {cmd:toeplitz} 隐含假设所有矩阵非对角线元素都被估计{p_end}
{synopt :{opt ba:ndad} [{it:#}]}组内误差在前 {it:#} 条对角线内具有不同相关性； {cmd:banded} 隐含假设所有矩阵带状（非结构化）{p_end}
{synopt :{opt un:structured}}组内误差具有不同相关性{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多级混合效应模型 > 非线性回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:menl} 拟合非线性混合效应模型，在这些模型中，一些或所有的固定和随机效应以非线性方式进入。这些模型也称为多层非线性模型或分层非线性模型。非线性混合效应模型的总体误差分布假定为高斯分布。提供不同的协方差结构以建模随机效应、异方差性和最低层组内的相关性。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ME menlQuickstart:快速入门}

        {mansection ME menlRemarksandexamples:备注和示例}

        {mansection ME menlMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:mle} 和 {cmd:reml} 指定拟合模型的统计方法。

{pmore}
{opt mle}（默认）指定使用最大似然（ML）拟合模型。

{pmore}
{opt reml} 指定使用限制最大似然（REML）拟合模型，也称为残差最大似然。

{marker paramdef}{...}
{phang}
{cmd:define(}{it:name}{cmd::}<{it:resubexpr}>{cmd:)} 定义模型参数的函数 <{it:resubexpr}>，并将其标记为 {it:name}。可以重复此选项以定义多个函数。 {opt define()} 选项对于主要非线性规范中多次出现的表达式很有用 {help menl##menlexpr:{it:menlexpr}}：你可以一次定义该表达式，然后在非线性规范中简单地通过使用 {cmd:{c -(}}{it:name}{cmd::{c )-}} 来引用它。可以出于记号方便而使用此选项。
有关如何指定 <{it:resubexpr}> 的详细信息，请参见 {mansection ME menlRemarksandexamplesRandom-effectssubstitutableexpressions:{it:随机效应可替代表达式}} 在 {bf:[ME] menl} 中。
在 {cmd:define()} 中的<{it:resubexpr}> 可能不包含滞后预测均值函数。

{phang}
{cmd:covariance(}{mansection ME menlRemarksandexamplesrename:{it:rename1}} {it:rename2} [...]{opt ,} {help menl##vartype:{it:vartype}}{cmd:)} 指定随机效应的协方差矩阵结构。
{it:rename1}、 {it:rename2} 等是要相关联的随机效应的名称（见 {mansection ME menlRemarksandexamplesRandomeffects:{it:随机效应}} 在 {bf:[ME] menl}），而 {it:vartype} 是以下之一： {opt independent}、 {opt exchangeable}、 {opt identity} 或 {opt unstructured}。
你可以用 {it:restub}{cmd:*} 来引用名称中共享相同 {it:restub} 的随机效应，而不是 {it:rename}s。

{phang2}
{opt independent} 允许每个随机效应的独特方差，并假设所有协方差为 0；默认值。

{phang2}
{opt exchangeable} 为所有随机效应指定一个共同方差和一个共同成对协方差。

{phang2}
{opt identity} 是 “身份的倍数”；即所有方差相等，所有协方差为 0。

{phang2}
{opt unstructured} 允许所有方差和协方差均独立估计。如果指定了 p 个随机效应，则非结构化协方差矩阵将有 p(p+1)/2 个独特参数。

{marker initial_values}{...}
{phang}
{opt initial(initial_values)} 指定模型参数的初始值。你可以指定一个 1 x k 矩阵，其中 k 是模型中参数的总数，或者你可以指定参数名、初始值、另一个参数名、其初始值，依此类推。例如，要将 {cmd:{c -(}alpha{c )-}} 初始化为 1.23 和 {cmd:{c -(}delta{c )-}} 初始化为 4.57，你会键入：

            . {cmd:menl} ...{cmd:, initial(alpha 1.23 delta 4.57)} ...

{pmore}
要初始化多个具有相同组名的参数，例如 {cmd:{c -(}y:x1{c )-}} 和 {cmd:{c -(}y:x2{c )-}}，并使用相同的初始值，你可以简单地键入：

            . {cmd:menl} ...{cmd:, initial({c -(}y:{c )-} 1)} ...

{pmore}
有关完整规范，请参见 {mansection ME menlRemarksandexamplesSpecifyinginitialvalues:{it:指定初始值}} 在 {bf:[ME] menl} 中。

{dlgtab:残差}

{pstd}
{opt menl} 提供两种方法来建模组内误差协方差结构，有时也称为文献中的残差协方差结构。你可以通过使用 {cmd:rescovariance()} 选项直接建模协方差或通过使用 {cmd:resvariance()} 和 {cmd:rescorrelation()} 选项间接建模协方差。

{phang}
{cmd:rescovariance(}{it:rescov} [{cmd:,} {help menl##rescovopts:{it:rescovopts}}]{cmd:)} 指定非线性混合效应模型中最低层组内的 {help me_glossary##withingrouperrors:组内误差} 协方差结构或残差的协方差结构。例如，如果你正在建模嵌套在学校内的班级的随机效应，那么 {cmd:rescovariance()} 指的是在班级内的观察的残差方差-协方差结构，低层组的残差方差-协方差结构。

{marker rescov}{...}
{phang2}
{it:rescov} 是以下之一：
{cmd:identity}、 {cmd:independent}、 {opt exchangeable}、 {cmd:ar} [{it:#}]、 {cmd:ma} [{it:#}]、 {cmd:ctar1}、 {cmd:toeplitz} [{it:#}]、 {cmd:banded} [{it:#}] 或 {opt unstructured}。下面，我们用其特定选项 {help menl##rescovopts:{it:rescovopts}} 描述每个 {it:rescov}：

{phang3}
{cmd:identity} [{cmd:,} {opt by(byvar)}]，默认值，指定所有组内误差相互独立且呈同分布 (i.i.d.)，具有一个共同误差方差 sigma^2_epsilon。当与 {opt by(byvar)} 结合使用时，仍然假设独立，但你会为 {it:byvar} 的每个类别估计一个独特的方差。

{phang3}
{cmd:independent,} {opt index(varname)} [{opt group(grpvar)}] 指定组内误差独立，并且每个 {it:varname} 的每个值（索引）具有不同方差。 {opt index(varname)} 是必需的。
如果模型中没有随机效应，则需要 {opt group(grpvar)}。

{phang3}
{cmd:exchangeable} [{cmd:,} {opt by(byvar)} {opt group(grpvar)}] 假设组内误差具有相等方差和共同协方差。

{phang3}
{cmd:ar} [{it:#}]{cmd:,} {opt t(timevar)} [{opt by(byvar)} {opt group(grpvar)}] 假设组内误差具有 AR({it:#}) 结构。如果省略 {it:#}，则假设为 {cmd:ar 1}。需要 {opt t(timevar)}。对于该结构，估计 {it:#} + 1 个参数： {it:#} 个 AR 系数和一个总体误差方差 sigma^2_epsilon。

{phang3}
{cmd:ma} [{it:#}]{cmd:,} {opt t(timevar)} [{opt by(byvar)} {opt group(grpvar)}] 假设组内误差具有 MA({it:#}) 结构。如果省略 {it:#}，则假设为 {cmd:ma 1}。需要 {opt t(timevar)}。对于该结构，估计 {it:#} + 1 个参数： {it:#} 个 MA 系数和一个总体误差方差 sigma^2_epsilon。

{phang3}
{cmd:ctar1,} {opt t(timevar)} [{opt by(byvar)} {opt group(grpvar)}] 假设组内误差具有连续时间 AR(1) 结构。这是 AR 协方差结构的一种推广，允许不等间隔和非整数时间值。需要 {opt t(timevar)}。对于该结构，估计两个参数：相关参数 rho 和一个总体误差方差 sigma^2_epsilon。两个误差项之间的相关性为参数 rho 提升为等于这两个误差的 {cmd:t()} 值差的绝对值。

{phang3}
{cmd:toeplitz} [{it:#}]{cmd:,} {opt t(timevar)} [{opt by(byvar)} {opt group(grpvar)}] 假设组内误差具有阶数为 {it:#} 的 Toeplitz 结构，对于此结构，相关性是相对于小于或等于 {it:#} 的时间滞后的常数，而对于大于 {it:#} 的滞后则为 0。 {it:#} 是一个介于 1 和观察到的最大滞之间的整数（默认值）。需要 {opt t(timevar)}。对于此结构，估计 {it:#} + 1 个参数： {it:#} 个相关性和一个总体误差方差 sigma^2_epsilon。

{phang3}
{cmd:banded} [{it:#}]{cmd:,} {opt index(varname)} [{opt group(grpvar)}] 是 {cmd:unstructured} 的特例，限制估计为前 {it:#} 条非对角线的协方差，并将此带之外的协方差设为 0。需要 {opt index(varname)}。 {it:#} 是一个介于 0 和 L - 1 的整数，其中 L 是 {cmd:index()} 的级别数。默认情况下， {it:#} 为 L - 1；即所有协方差矩阵的元素都被估计。当 {it:#} 为 0 时，仅估计协方差矩阵的对角线元素。 如果模型中没有随机效应，则需要 {opt group(grpvar)}。

{phang3}
{cmd:unstructured,} {opt index(varname)} [{opt group(grpvar)}] 假设组内误差具有不同的方差和协方差。 这是最通用的协方差结构，因为不对协方差参数施加任何结构。需要 {opt index(varname)}。当你有 L 级别的 {opt index()} 时，将估计 L(L + 1)/2 个参数。 如果模型中没有随机效应，则需要 {opt group(grpvar)}。

{marker rescovopts}{...}
{phang2}
{it:rescovopts} 包括 {opt index(varname)}、 {opt t(timevar)}、 {opt by(byvar)} 和 {opt group(grpvar)}。

{phang3}
{opt index(varname)} 在 {opt rescovariance()} 选项中与 {it:rescov} {cmd:independent}、 {cmd:banded} 或 {cmd:unstructured} 一起使用。 {it:varname} 是一个非负整数值变量，用于标识最低层组内的观察（例如， {cmd:obsid}）。这些组可能是不平衡的，因为不同组可能具有不同的 {cmd:index()} 值，但在任何特定组内你不能有重复的 {cmd:index()} 值。

{phang3}
{opt t(timevar)} 在 {cmd:rescovariance()} 选项中用于为 {cmd:ar}、 {cmd:ma}、 {cmd:ctar1} 和 {cmd:toeplitz} 结构指定时间变量。

{pmore3}
对于 {it:rescov} {cmd:ar}、 {cmd:ma} 和 {cmd:toeplitz}， {it:timevar} 是一个整数值时间变量，用于对最低层组内的观察进行排序并确定连续观察之间的滞后。任何不连续的时间值将被视为间隔。

{pmore3}
对于 {it:rescov} {cmd:ctar1}， {it:timevar} 是一个实值时间变量。

{phang3}
{opt by(byvar)} 在 {opt rescovariance()} 选项中使用，指定为 {it:byvar} 的每个类别估计一组不同的组内误差协方差参数。换句话说，你可以使用 {cmd:by()} 来建模异方差性。 {it:byvar} 必须是非负整数值，并且在最低层组内保持不变。

{phang3}
{opt group(grpvar)} 用于在建模组内误差协方差结构时识别最低层组（面板）。 {it:grpvar} 是一个非负整数值的组成员变量。此选项使你能在模型层次的最低层级建模组内误差协方差结构，而无需在模型中包含该层级的随机效应。这在拟合非线性边际或人口平均模型时是有用的，这些模型直接建模误差项之间的依赖关系，而不引入随机效应； 请参见 {mansection ME menlRemarksandexamplesmenlexdial:示例 19}。在模型的其他层次结构中存在随机效应的情况下，假定 {it:grpvar} 嵌套在这些层次内。

{phang}
{cmd:resvariance(}{it:resvarfunc} [{cmd:,} {help menl##resvaropts:{it:resvaropts}}]{cmd:)} 指定组内误差的异方差结构。它可以与 {opt rescorrelation()} 选项一起使用，以指定灵活的组内误差协方差结构。异方差方差结构被建模为 Var(epsilon_{ij})=sigma^2 g^2(delta,upsilon_{ij})，其中 sigma 是一个未知的尺度参数， g() 是一个建模异方差性（在文献中也称为方差函数）的函数， deltab 是方差函数的未知参数向量， upsilon_{ij} 是固定协变量或预测均值 hat{mu}_{ij} 的值。

{marker resvarfunc}{...}
{phang2}
{it:resvarfunc}，省略参数， 是以下之一： {cmd:identity}、 {cmd:linear}、 {cmd:power}、 {cmd:exponential} 或 {cmd:distinct}，{help menl##resvaropts:{it:resvaropts}} 是每个方差函数特定的选项。

{phang3}
{opt identity}，默认值，为组内误差指定同方差结构； g(delta,upsilon_{ij})=1，因此 Var(epsilon_{ij})=sigma^2=sigma^2_epsilon。

{phang3}
{opt linear} {varname} 指定组内误差方差随 {it:varname} 线性变化；即， g(delta,upsilon_{ij}) = sqrt{{it:varname}}_{ij}，因此 Var(epsilon_{ij})=sigma^2{it:varname}_{ij}。
{it:varname} 必须为正。

{phang3}
{opt power} {varname}|{cmd:_yhat} [{cmd:,} {opt strata(stratavar)} {opt nocons:tant}] 指定组内误差方差，或更确切地说，方差函数，以 {it:varname} 或预测均值 {cmd:_yhat} 的幂表现加上一个常数项； g(delta,upsilon_{ij}) = |v_{ij}|^{delta_1}+delta_2。如果指定了 {opt noconstant}，则常数项 delta_2 被抑制。一般来说，估计三个参数：一个规模参数 sigma，一个幂指数 delta_1，以及一个常数项 delta_2。当指定 {opt strata(stratavar)} 时，幂和常数参数（但不包括规模）将为每个层次单独估计。总共估计 2L+1 个参数（L 个幂参数，L 个常数参数，以及规模 sigma），其中 L 是由变量 {it:stratavar} 定义的层次数。

{phang3}
{opt exponential} {varname}|{cmd:_yhat} [{cmd:,} {opt strata(stratavar)}] 指定组内误差方差随 {it:varname} 或预测均值 {cmd:_yhat} 指数变化； g(gamma,upsilon_{ij}) = exp(gamma v_{ij})。估计两个参数：一个规模参数 sigma 和一个指数参数 gamma。当指定 {opt strata(stratavar)} 时，指数参数 gamma（但不包括规模 sigma）将为每个层次单独估计。总共估计 L+1 个参数（L 个指数参数和规模 sigma），其中 L 是由变量 {it:stratavar} 定义的层次数。

{phang3}
{cmd:distinct,} {opt index(varname)} [{opt group(grpvar)}] 指定组内误差具有不同方差 sigma^2_l，适用于 {it:varname} 的每个值（索引） l， v_{ij}； g(delta,v_{ij}) = delta_{v_{ij}}，且 delta_{v_{ij}}=sigma_{v_{ij}}/sigma_1（为可识别性 purposes，设定 delta_1=1），因此 Var(epsilon_{ij})=sigma^2_{v_{ij}}=sigma^2_1delta^2_{v_{ij}}，对于 l=1,2,...,L，且 v_{ij} 在 {c -(}1, 2, ..., L{c )-} 中。需要 {opt index(varname)}。
如果模型中没有随机效应，则需要 {opt group(grpvar)}。 {cmd:resvariance(distinct)} 结合 {cmd:rescorrelation(identity)} 等效于 {cmd:rescovariance(independent)}。

{marker resvaropts}{...}
{phang2}
{it:resvaropts} 是 {opt strata(stratavar)}、 {opt nocons:tant}、 {opt index()} 或 {opt group(grpvar)}。

{phang3}
{opt strata(stratavar)} 在 {cmd:resvariance()} 选项中与 {it:resvarfunc} {cmd:power} 和 {cmd:exponential} 一起使用。 {cmd:strata()} 指定将要为每个层次单独估计的方差函数 g() 的参数。规模参数 sigma 在层次之间保持不变。相反， {opt rescovariance()}` 的 {opt by(byvar)} 子选项指定所有协方差参数，包括 sigma（在适用的情况下），必须为 {it:byvar} 的每个类别单独估计。 {it:stratavar} 必须是非负整数值，并在最低层组内保持不变。

{phang3}
{opt noconstant} 在 {opt resvariance()} 选项中与 {it:resvarfunc} {cmd:power} 一起使用。 {cmd:noconstant} 指定方差函数 g() 的表达式中抑制常数参数。

{phang3}
{opt index(varname)} 在 {cmd:resvariance()} 选项中与 {it:resvarfunc} {cmd:distinct} 一起使用。 {it:varname} 是一个非负整数值变量，用于标识最低层组内的观察（例如， {cmd:obsid}）。这些组可能是不平衡的，因不同组可能具有不同的 {cmd:index()} 值，但在任何特定组内你不能有重复的 {cmd:index()} 值。

{phang3}
{opt group(grpvar)} 在 {cmd:resvariance()} 选项中与 {it:resvarfunc} {cmd:distinct} 一起使用。当模型规格中不包含随机效应时，它识别最低层组（面板），例如在非线性边际模型中。 {it:grpvar} 是一个非负整数值的组成员变量。

{phang}
{cmd:rescorrelation(}{it:rescorr} [{cmd:,} {help menl##rescorropts:{it:rescorropts}}]{cmd:)} 指定组内误差的相关结构。它可以与 {cmd:resvariance()} 选项一起使用，以指定灵活的组内误差协方差结构。

{marker rescorr}{...}
{phang2}
{it:rescorr} 是以下之一： {cmd:identity}、 {cmd:exchangeable}、 {cmd:ar} [{it:#}]、 {cmd:ma} [{it:#}]、 {cmd:ctar1}、 {cmd:toeplitz} [{it:#}]、 {cmd:banded} [{it:#}] 或 {cmd:unstructured}。

{phang3}
{cmd:identity}，默认值，指定所有组内误差的相关性为零。

{phang3}
{cmd:exchangeable} [{cmd:,} {opt by(byvar)} {opt group(grpvar)}] 假设组内误差具有共同相关性。

{phang3}
{cmd:ar} [{it:#}]{cmd:,} {opt t(timevar)} [{opt by(byvar)} {opt group(grpvar)}] 假设组内误差具有 AR({it:#}) 相关结构。如果省略 {it:#}，则假设为 {cmd:ar 1}。需要 {opt t(timevar)}。对于该结构，估计 {it:#} 个 AR 系数。

{phang3}
{cmd:ma} [{it:#}]{cmd:,} {opt t(timevar)} [{opt by(byvar)} {opt group(grpvar)}] 假设组内误差具有 MA({it:#}) 相关结构。如果省略 {it:#}，则假设为 {cmd:ma 1}。需要 {opt t(timevar)}。对于该结构，估计 {it:#} 个 MA 系数。

{phang3}
{opt ctar1,} {opt t(timevar)} [{opt by(byvar)} {opt group(grpvar)}] 假设组内误差具有连续时间 AR(1) 相关结构。需要 {opt t(timevar)}。两个误差之间的相关性是参数 rho 的幂，等于这两个误差的 {cmd:t()} 值之间的绝对差值。

{phang3}
{opt toeplitz} [{it:#}]{cmd:,} {opt t(timevar)} [{opt by(byvar)} {opt group(grpvar)}] 假设组内误差具有阶数为 {it:#} 的 Toeplitz 相关结构，对于此结构，相关性是相对于小于或等于 {it:#} 的时间滞后的常数，而对大于 {it:#} 的滞后则为 0。 {it:#} 是一个介于 1 和观察到的最大滞后（默认值）之间的整数。需要 {opt t(timevar)}。对于此结构，估计 {it:#} 个相关参数。

{phang3}
{opt banded} [{it:#}]{cmd:,} {opt index(varname)} [{opt group(grpvar)}] 是 {cmd:unstructured} 的特例，限制估计为前 {it:#} 条非对角线上的相关性，并将此带之外的相关性设为 0。需要 {opt index(varname)}。 {it:#} 是一个介于 0 和 L - 1 之间的整数，其中 L 是 {cmd:index()} 的级数。默认情况下， {it:#} 为 L - 1；即所有相关矩阵的元素都被估计。当 {it:#} 为 0 时，假设相关矩阵为身份。 如果模型中没有随机效应，则需要 {opt group(grpvar)}。

{phang3}
{cmd:unstructured,} {opt index(varname)} [{opt group(grpvar)}] 假设组内误差具有不同的相关性。这是最通用的相关结构，因为不对相关性参数施加任何结构。需要 {opt index(varname)}。如果模型中没有随机效应，则需要 {opt group(grpvar)}。

{marker rescorropts}{...}
{phang2}
{it:rescorropts} 是 {opt index(varname)}、 {opt t(timevar)}、 {opt by(byvar)} 和 {opt group(grpvar)}。

{phang3}
{opt index(varname)} 在 {cmd:rescorrelation()} 选项中与 {it:rescorr} {cmd:banded} 或 {cmd:unstructured} 一起使用。 {it:varname} 是一个非负整数值变量，用于标识最低层组内的观察（例如， {cmd:obsid}）。 这些组可能是不平衡的，因为不同组可能具有不同的 {cmd:index()} 值，但在任何特定组内你不能有重复的 {cmd:index()} 值。

{phang3}
{opt t(timevar)} 在 {opt rescorrelation()} 选项中用于为 {cmd:ar}、 {cmd:ma}、 {cmd:ctar1} 和 {cmd:toeplitz} 结构指定时间变量。

{pmore3}
对于 {it:rescorr} {cmd:ar}、 {cmd:ma} 和 {cmd:toeplitz}， {it:timevar} 是一个整数值时间变量，用于对最低层组内的观察进行排序并确定连续观察之间的滞后。任何不连续的时间值将被视为间隔。

{pmore3}
对于 {it:rescorr} {cmd:ctar1}， {it:timevar} 是一个实值时间变量。

{phang3}
{opt by(byvar)} 在 {opt rescorrelation()} 选项中使用，指定为 {it:byvar} 的每个类别估计一组不同的组内误差相关参数。{it:byvar} 必须是非负整数值，并在最低层组内保持不变。

{phang3}
{opt group(grpvar)} 用于在建模组内误差相关结构时识别最低层组（面板）。 {it:grpvar} 是一个非负整数值的组成员变量。该选项使你能够在模型层次的最低层级建模组内误差相关结构，而无需在模型中包含该层级的随机效应。当拟合非线性边际或人口平均模型直接建模误差项之间的依赖关系而不引入随机效应时，这很有用；请参见 {mansection ME menlRemarksandexamplesmenlexdial:示例 19}。在模型的其他层级中存在随机效应时，假定 {it:grpvar} 嵌套在这些层次内。

{dlgtab:时间序列}

{phang}
{opth tsorder(varname)} 指定确定用于表达式中的时间序列运算符的时间顺序的时间变量； 参见 {mansection ME menlRemarksandexamplesTime-seriesoperators:{it:时间序列运算符}}。当你使用时间序列运算符与 {cmd:menl} 时，必须在执行 {cmd:menl} 之前 {help tsset_zh} 数据，或指定选项 {cmd:tsorder()}。当你指定 {cmd:tsorder()} 时， {cmd:menl} 使用时间变量 {it:varname} 创建一个新的临时变量，其中包含连续整数，确定最低层组内观察的排序顺序。 {cmd:menl} 还会创建并使用适当的面板变量，这基于你的模型规格和估计样本；参见 {mansection ME menlRemarksandexamplesmenlphenobarb:示例 17} 和 {mansection ME menlRemarksandexamplesmenlquinidine:示例 18}。

{marker tsidef}{...}
{phang}
{cmd:tsinit({c -(}}{it:name}{cmd::{c )-}=}<{it:resubexpr}>{cmd:)} 为指定与一周期滞后运算符 {cmd:L.{c -(}}{it:name}{cmd::{c )-}} 或 {cmd:L1.{c -(}}{it:name}{cmd::{c )-}} 的命名表达式 {it:name} 指定初始条件。 {it:name} 可以是 {it:depvar} 或先前在选项 {cmd:define()} 中定义的模型参数的函数名称。如果你在模型中包括滞后预测均值函数 {cmd:L.{c )-}}{it:depvar}{cmd::{c )-}} 或等效地 {cmd:L._yhat}，则必须在 {cmd:tsinit({c -(}}{it:depvar}{cmd::{c )-}=}...{cmd:)} 中指定其初始条件。初始条件可以表示为随机效应可替代表达式，{mansection ME menlRemarksandexamplesRandom-effectssubstitutableexpressions:<{it:resubexpr}>。选项 {cmd:tsinit()} 可以重复使用。另请参阅 {mansection ME menlRemarksandexamplesTime-seriesoperators:{it:时间序列运算符}}、{mansection ME menlRemarksandexamplesmenlphenobarb:示例 17} 和 {mansection ME menlRemarksandexamplesmenlquinidine:示例 18}。

{phang}
{opt tsmissing} 指定在使用滞后命名表达式的模型规格时，包含在 {it:depvar} 中的系统缺失值（{cmd:.}）的观察在计算中保留。{it:depvar} 中的扩展缺失值被排除。用于评估预测的非线性均值函数的观察包括缺失和非缺失的观察，但仅非缺失的观察用于评估似然。包含在模型中的其他变量的缺失值的观察被排除。通常在受试对象拥有间歇性 {it:depvar} 测量并在模型规格中使用滞后预测均值函数时使用该选项。此类模型在药代动力学中很常见，请参见 {mansection ME menlRemarksandexamplesmenlphenobarb:示例 17} 和 {mansection ME menlRemarksandexamplesmenlquinidine:示例 18}。

{dlgtab:报告}

{phang}
{opt level(#)}; 参见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt variance}，默认情况下，将随机效应和组内误差参数估计显示为方差和协方差。

{phang}
{opt stddeviations} 将随机效应和组内误差参数估计显示为标准差和相关性。

{phang}
{opt noretable} 抑制输出中的随机效应表。

{phang}
{opt nofetable} 抑制输出中的固定效应表。

{phang}
{opt estmetric} 在一个表中显示所有参数估计，使用存储在 {cmd:e(b)} 中的度量。随机效应参数估计存储为对数标准差和相关性的双曲反正切。组内误差参数估计存储为对数标准差，并在适用时存储为相关性的双曲反正切。请注意，固定效应估计总是以相同的度量存储和显示。

{phang}
{opt nolegend} 抑制在主方程或 {opt define()} 选项中指定参数或命名可替代表达式的函数时，在固定效应估计表之前出现的表达式图例。

{phang}
{opt noheader} 在估计或重放时抑制输出标题。

{phang}
{opt nogroup} 抑制输出标题中组汇总信息（组数、平均组大小、最小值和最大值）的显示。

{phang}
{opt nostderr} 防止 {opt menl} 计算估计的随机效应参数的标准误差，尽管仍然为固定效应参数提供标准误差。指定此选项将加快计算时间。

{phang}
{opt lrtest} 指定拟合参考非线性回归模型，并使用该模型计算似然比测试，比较非线性混合效应模型与普通非线性回归。

{phang}
{opt notsshow} 阻止 {cmd:menl} 显示关键 {cmd:ts} 变量； 参见 {manhelp tsset TS}。

INCLUDE help displayopts_list

{dlgtab:EM 选项}

{pstd}
这些选项控制期望-最大化 (EM) 迭代，在估计切换到 Lindstrom-Bates 方法之前。 EM 用于获取起始值。

{phang}
{opt emiterate(#)} 指定要执行的 EM 迭代次数。默认值为 {cmd:emiterate(25)}。

{phang}
{opt emtolerance(#)} 指定 EM 算法的收敛容忍度。默认值为 {cmd:emtolerance(1e-10)}。当对数（限制）似然的变化相对量小于 {it:#} 时，将停止 EM 迭代。此时，优化切换到 Lindstrom-Bates 方法。

{phang}
{opt emlog} 指定显示 EM 迭代日志。默认情况下不显示 EM 迭代日志。

{dlgtab:最大化}

{marker menlmaxopts}{...}
{phang}
{it:menlmaxopts}：
{opt iter:ate(#)}、 {opt tol:erance(#)}、 {opt ltol:erance(#)}、
{opt nrtol:erance(#)}、 {opt nonrtol:erance}、 {opt pnlsopts()}、 {opt lmeopts()}、 [{cmd:no}]{opt log}。
当满足 {cmd:tolerance()} 或 {cmd:ltolerance()} 中的任何一个时， 收敛被声明； 参见 {mansection ME menlMethodsandformulasstopping_rules:{it:停止规则}} 在 {bf:[ME] menl} 中以获取详细信息。

{pmore}
{it:menlmaxopts} 控制 Lindstrom-Bates、广义非线性最小二乘 (GNLS) 和非线性最小二乘 (NLS) 算法的最大化过程。Lindstrom-Bates 算法是用于包含随机效应的非线性模型的主要优化算法。GNLS 算法用于没有随机效应但具有非独立同分布 (non-i.i.d.) 误差的模型。NLS 算法用于没有随机效应且具有独立同分布 (i.i.d.) 误差的模型。Lindstrom-Bates 和 GNLS 算法是交替算法--它们在两个优化步骤之间交替，因此支持控制整体优化以及每个步骤的优化的选项。Lindstrom-Bates 算法在惩罚最小二乘 (PNLS) 和线性混合效应 (LME) 优化步骤之间交替。 GNLS 算法在 GNLS 和最大似然 (ML) 或如果使用 {cmd:reml} 选项则为限制最大似然 (REML) 步骤之间进行交替。选项 {cmd:pnlsopts()} 控制 PNLS 和 GNLS 步骤，选项 {cmd:lmeopts()} 控制 LME 和 ML/REML 步骤。其他 {it:menlmaxopts} 控制交替算法的整体优化以及 NLS 优化。

{phang2}
{opt iterate(#)} 指定交替算法和 NLS 算法的最大迭代次数。Lindstrom-Bates 算法一个交替迭代涉及 {it:#}_pnls PNLS 迭代，按照 {opt pnlsopts()}` 中的 {opt iterate()} 子选项指定，以及 {it:#}_lme LME 迭代，按照 {opt lmeopts()}` 中的 {opt iterate()} 子选项指定。类似地，GNLS 算法一个交替迭代涉及 {it:#}_gnls GNLS 迭代和 {it:#}_ml ML/REML 迭代。默认值是当前 {opt set maxiter} 的值，默认为 {cmd:iterate(16000)}。

{phang2}
{opt tolerance(#)} 指定交替算法和 NLS 算法参数向量的容忍度。当相邻（交替）迭代之间的参数向量的相对变化小于或等于 {opt tolerance()} 时，满足参数收敛标准。默认值为 {cmd:tolerance(1e-6)}。

{phang2}
{opt ltolerance(#)} 指定 Lindstrom-Bates 算法线性化对数似然的容忍度以及 GNLS 和 NLS 算法的对数似然。线性化对数似然是最后迭代中的 LME 优化步骤的对数似然。当相邻（交替）迭代之间的对数似然相对变化小于或等于 {cmd:ltolerance()} 时，满足对数似然收敛。默认值为 {cmd:ltolerance(1e-7)}。

{phang2}
{opt nrtolerance(#)} 和 {opt nonrtolerance} 控制缩放梯度的容忍度。

{phang3}
{opt nrtolerance(#)} 指定缩放梯度的容忍度。当 g(-H^{-1})g' 小于 {opt nrtolerance(#)} 时宣告收敛，其中 g 是梯度行向量，H 是当前迭代的近似 Hessian 矩阵。默认值为 {cmd:nrtolerance(1e-5)}。

{phang3}
{opt nonrtolerance} 指定关闭默认的 {opt nrtolerance()} 标准。

{phang3}
{opt nrtolerance(#)} 和 {opt nonrtolerance} 仅与 NLS 算法一起使用。

{phang2}
{opt pnlsopts(pnlsopts)} 控制 Lindstrom-Bates 交替算法的 PNLS 优化步骤和 GNLS 交替算法的 GNLS 优化步骤。 {it:pnlsopts} 包括以下任一项：{opt iter:ate(#)}、 {opt ltol:erance(#)}、 {opt tol:erance(#)}、 {opt nrtol:erance(#)}和 {help menl##maximize_options_pnls:{it:最大化选项}}。在每个交替迭代内部，该步骤的收敛在满足 {opt nrtolerance()} 和 {opt tolerance()} 或 {opt ltolerance()} 中的任一项时声明。此选项不允许与 NLS 算法一起使用。

{phang3}
{opt iterate(#)} 指定 PNLS 和 GNLS 交替算法的最大迭代次数。 默认值为 {cmd:iterate(5)}。

{phang3}
{opt ltolerance(#)} 指定在 PNLS 和 GNLS 优化步骤中目标函数的容忍度。当目标函数在 PNLS 或 GNLS 迭代之间的相对变化小于或等于 {opt ltolerance()} 时，满足目标函数收敛的标准。 默认值为 {cmd:ltolerance(1e-7)}。

{phang3}
{opt tolerance(#)} 指定固定效应参数的容忍度。当 PNLS 或 GNLS 迭代之间系数向量的相对变化小于或等于 {cmd:tolerance()} 时，满足参数收敛标准。 默认值为 {cmd:tolerance(1e-6)}。

{phang3}
{opt nrtolerance(#)} 指定 PNLS 和 GNLS 优化步骤中缩放梯度的容忍度。收敛的声明是在 g(-H^{-1})g' 小于 {opt nrtolerance(#)} 时进行的，其中 g 是梯度行向量，H 是当前迭代的近似 Hessian 矩阵。默认值为 {cmd:nrtolerance(1e-5)}。

{marker maximize_options_pnls}{...}
{phang3}
{it:maximize_options} 包括
[{cmd:no}]{opt log}、 {opt tr:ace}、 {opt showtol:erance}、 {opt nonrtol:erance}；参见 {manhelp Maximize R}。

{phang2}
{opt lmeopts(lmeopts)} 控制 Lindstrom-Bates 交替算法的 LME 优化步骤和 GNLS 交替算法的 ML/REML 优化步骤。 {it:lmeopts} 列包括以下任一项：{opt iter:ate(#)}、 {opt ltol:erance(#)}、 {opt tol:erance(#)}、 {opt nrtol:erance(#)} 和 {help menl##maximize_options_lme:{it:最大化选项}}。在每个交替迭代内部，该步骤的收敛在满足 {opt nrtolerance()} 和 {opt tolerance()} 或 {opt ltolerance()} 中的任一项时Declaration。此选项不允许与 NLS 算法一起使用。

{phang3}
{opt iterate(#)} 指定 LME 和 ML/REML 优化步骤的最大迭代次数。默认值为 {cmd:iterate(5)}。

{phang3}
{opt ltolerance(#)} 指定 LME 和 ML/REML 优化步骤中的对数似然的容忍度。当 LME 或 ML/REML 迭代之间的对数似然相对变化小于或等于 {cmd:ltolerance()} 时，满足对数似然收敛的标准。默认值为 {cmd:ltolerance(1e-7)}。

{phang3}
{opt tolerance(#)} 指定随机效应和组内误差协方差参数的容忍度。当 LME 或 ML/REML 迭代之间参数向量的相对变化小于或等于 {opt tolerance()} 时，满足协方差参数的收敛标准。默认值为 {cmd:tolerance(1e-6)}。

{phang3}
{opt nrtolerance(#)} 指定 LME 和 ML/REML 优化步骤中的缩放梯度的容忍度。声明收敛是在 g(-H^{-1})g' 小于 {opt nrtolerance(#)} 时进行的，其中 g 是梯度行向量，H 是当前迭代的近似 Hessian 矩阵。默认值为 {cmd:nrtolerance(1e-5)}。

{marker maximize_options_lme}{...}
{phang3}
{it:maximize_options} 是
[{cmd:no}]{opt log}、 {opt tr:ace}、 {opt grad:ient}、 {opt showstep}、 {opt hess:ian}、 {opt showtol:erance}、 {opt nonrtol:erance}； 参见 {manhelp Maximize R}。

{pmore}
[{cmd:no}]{opt log}; 参见 {manhelp Maximize R}。

{pstd}
以下选项可与 {opt menl} 一起使用，但未显示在对话框中：

{phang}
{opt coeflegend}; 参见 {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse orange}{p_end}

{pstd}拟合一个不包含协变量的二层模型{p_end}
{phang2}{cmd:. menl circumf = ({b1}+{U1[tree]})/(1+exp(-(age-{b2})/{b3}))}

{pstd}同上，但使用 {cmd:define()} 简化模型规格并突出显示 2 阶段模型的公式{p_end}
{phang2}{cmd:. menl circumf = {phi1:}/(1+exp(-(age-{b2})/{b3})),}
        {cmd:define(phi1:{b1}+{U1[tree]})}    

{pstd}在指数中加入随机截距 {cmd: {U2[tree]}}, 并允许随机截距 {cmd:U1} 和 {cmd: U2} 之间的相关性{p_end}
{phang2}{cmd:. menl circumf = {phi1:}/(1+exp(-(age-{phi2:})/{b3})),}
        {cmd:define(phi1:{b1}+{U1[tree]})} {cmd:define(phi2:{b2}+{U2[tree]})}
        {cmd:covariance(U1 U2, unstructured)}    

{pstd}假设独立的随机截距 {cmd:U1} 和 {cmd:U2}，并指定一个异方差的组内误差方差，随预测均值 {cmd:_yhat} 的幂变化{p_end}
{phang2}{cmd:. menl circumf = {phi1:}/(1+exp(-(age-{phi2:})/{b3})),}
           {cmd:define(phi1:{b1}+{U1[tree]})} {cmd:define(phi2:{b2}+{U2[tree]})}
           {cmd:covariance(U1 U2, independent)}
       {cmd:resvariance(power _yhat, noconstant)} 

{pstd}同上，但执行限制最大似然估计，而不是默认的最大似然估计{p_end}
{phang2}{cmd:. menl circumf = {phi1:}/(1+exp(-(age-{phi2:})/{b3})),}
{cmd:define(phi1:{b1}+{U1[tree]})} {cmd:define(phi2:{b2}+{U2[tree]})}
{cmd:covariance(U1 U2, independent) resvariance(power _yhat, noconstant) reml} 
   
{pstd}显示标准差和相关性，而不是默认的方差和协方差{p_end}
{phang2}{cmd:. menl, stddeviations}

{pstd}拟合具有可交换组内误差协方差结构的非线性边际模型{p_end}
{phang2}{cmd:. menl circumf =}
        {cmd:{c -(}b1{c )-}/(1+exp(-(age-{c -(}b2{c )-})/{c -(}b3{c )-})),}
        {cmd:rescovariance(exchangeable, group(tree))}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse unicorn}{p_end}

{pstd}拟合包含协变量的二层模型{p_end}
{phang2}{cmd:. menl weight = {phi1:}+({phi2}-{phi1:})*exp(-{phi3:}*time),}
       {cmd:define(phi1:{b10}+{b11}*1.female+{U0[id]})}
       {cmd:define(phi3:{b30}+{b31}*cupcake)}

{pstd}同上，但使用有效的线性组合规格{p_end}
{phang2}{cmd:. menl weight = {phi1:}+({phi2}-{phi1:})*exp(-{phi3:}*time),}
       {cmd:define(phi1: i.female U0[id])}
       {cmd:define(phi3: cupcake, xb)}

{pstd}在连续变量 {cmd: cupcake} 上添加随机斜率，并在随机斜率 {cmd:U1} 和随机截距 {cmd:U0} 之间指定可交换协方差结构{p_end}
{phang2}{cmd:. menl weight = {phi1:}+({phi2}-{phi1:})*exp(-{phi3:}*time),}
       {cmd:define(phi1: i.female U0[id])}
       {cmd:define(phi3: cupcake c.cupcake#U1[id])}
       {cmd:covariance(U0 U1, exchangeable)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse ovary}{p_end}

{pstd}为固定效应指定自己的初始值{p_end}
{phang2}{cmd:. menl follicles = {phi1:}+{b1}*sin(2*_pi*stime*{b2})+{b3}*cos(2*_pi*stime*{b2}),}
{cmd:define(phi1: U1[mare], xb) initial(phi1:_cons 12.2 b1 -3.0 b2 1 b3 -.88, fixed)}

{pstd}同上，但为残差指定 AR(1) 协方差结构，而不是默认的身份结构{p_end}
{phang2}{cmd:. menl follicles = {phi1:}+{b1}*sin(2*_pi*stime*{b2})+{b3}*cos(2*_pi*stime*{b2}),}
     {cmd:define(phi1: U1[mare], xb)}
     {cmd:initial(phi1:_cons 12.2 b1 -3.0 b2 1 b3 -.88, fixed)}
     {cmd:rescovariance(ar 1, t(time))}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse glucose}{p_end}

{pstd}针对 {cmd:subject} 和 {cmd:guar} 层次的 {cmd:glucose} 关于 {cmd:time} 的三层模型，具有 {cmd:guar} 嵌套在 {cmd:subject} 中的随机截距 {cmd:U1} 和 {cmd:UU2}{p_end}
{phang2}{cmd:. menl glucose = {phi1:} + {phi2:}*c.time#c.time#c.time*exp(-{phi3:}*time),}
     {cmd:define(phi1: i.guar U1[subject])}
     {cmd:define(phi2: i.guar UU2[subject>guar])}
     {cmd:define(phi3: i.guar, xb)}

{pstd}同上，但为残差指定连续时间 AR(1) 相关结构{p_end}
{phang2}{cmd:. menl glucose = {phi1:} + {phi2:}*c.time#c.time#c.time*exp(-{phi3:}*time),}
     {cmd:define(phi1: i.guar U1[subject])}
     {cmd:define(phi2: i.guar UU2[subject>guar])}
     {cmd:define(phi3: i.guar) rescorrelation(ctar1, t(time))}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{opt menl} 在 {opt e()} 中存储以下内容：

{synoptset 23 tabbed}{...}
{p2col 5 23 25 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_nonmiss)}}非缺失 {it:depvar} 观察数量（如果指定了 {cmd:tsmissing}）{p_end}
{synopt:{cmd:e(N_miss)}}缺失 {it:depvar} 观察数量（如果指定了 {cmd:tsmissing}）{p_end}
{synopt:{cmd:e(N_ic)}}在指定 {cmd:tsmissing} 时，用于 BIC 计算的非缺失 {it:depvar} 观察的数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_f)}}固定效应参数数量{p_end}
{synopt:{cmd:e(k_r)}}随机效应参数数量{p_end}
{synopt:{cmd:e(k_rs)}}方差数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差数量{p_end}
{synopt:{cmd:e(k_res)}}组内误差参数数量{p_end}
{synopt:{cmd:e(k_eq)}}方程数量{p_end}
{synopt:{cmd:e(k_feq)}}固定效应方程数量{p_end}
{synopt:{cmd:e(k_req)}}随机效应方程数量{p_end}
{synopt:{cmd:e(k_reseq)}}组内误差方程数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_c)}}比较测试的自由度{p_end}
{synopt:{cmd:e(ll)}}线性化对数（限制）似然{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较测试的卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(p_c)}}比较测试的 p 值{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示收敛， {cmd:0} 否则{p_end}

{p2col 5 23 25 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:menl}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名{p_end}
{synopt:{cmd:e(ivars)}}分组变量{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(varlist)}}在指定方程中使用的变量{p_end}
{synopt:{cmd:e(key_N_ic)}}{cmd:nonmissing obs}，如果指定了 {cmd:tsmissing} {p_end}
{synopt:{cmd:e(tsmissing)}}{cmd:tsmissing}，如有指定{p_end}
{synopt:{cmd:e(tsorder)}}{cmd:tsorder()} 规格{p_end}
{synopt:{cmd:e(eq_}{it:depvar}{cmd:)}}用户指定的方程{p_end}
{synopt:{cmd:e(tsinit_}{it:depvar}{cmd:)}}{cmd:tsinit()} 规格用于 {cmd:L.{c -(}}{it:depvar}{cmd::{c )-}}{p_end}
{synopt:{cmd:e(expressions)}}已定义表达式的名称 {it:expr_1}、 {it:expr_2}、...、 {it:expr_k}{p_end}
{synopt:{cmd:e(expr_}{it:expr_i}{cmd:)}}已定义表达式 {it:expr_i}，i=1,...,k{p_end}
{synopt:{cmd:e(tsinit_}{it:expr}{cmd:)}}{cmd:tsinit()} 规格用于 {cmd:L.{c -(}}{it:expr}{cmd::{c )-}}{p_end}
{synopt:{cmd:e(hierarchy)}}随机效应的层次结构，
{cmd:(}{it:path}{cmd::}{it:covtype}{cmd::}{it:REs}{cmd:) (}...{cmd:)}{p_end}
{synopt:{cmd:e(revars)}}随机效应的名称{p_end}
{synopt:{cmd:e(rstructlab)}}组内误差协方差的输出标签{p_end}
{synopt:{cmd:e(timevar)}}组内误差协方差 {cmd:t()} 变量，如果指定{p_end}
{synopt:{cmd:e(indexvar)}}组内误差协方差 {cmd:index()} 变量，如果指定{p_end}
{synopt:{cmd:e(covbyvar)}}组内误差协方差 {cmd:by()} 变量，如果指定{p_end}
{synopt:{cmd:e(stratavar)}}组内误差方差 {cmd:strata()} 变量，如果指定{p_end}
{synopt:{cmd:e(corrbyvar)}}组内误差相关性 {cmd:by()} 变量，如果指定{p_end}
{synopt:{cmd:e(rescovopt)}}组内误差协方差选项，如果指定了 {cmd:rescovariance()}{p_end}
{synopt:{cmd:e(resvaropt)}}组内误差方差选项，如果指定了 {cmd:resvariance()}{p_end}
{synopt:{cmd:e(rescorropt)}}组内误差相关选项，如果指定了 {cmd:rescorrelation()}{p_end}
{synopt:{cmd:e(groupvar)}}最低层 {cmd:group()} 变量，如果指定{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方测试类型{p_end}
{synopt:{cmd:e(vce)}}{cmd:conventional}{p_end}
{synopt:{cmd:e(method)}}{cmd:MLE} 或 {cmd:REML}{p_end}
{synopt:{cmd:e(opt)}}优化类型， {cmd:lbates}{p_end}
{synopt:{cmd:e(crittype)}}优化标准{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}允许 {cmd:margins} 的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}不允许 {cmd:margins} 的预测{p_end}
{synopt:{cmd:e(marginsdefault)}} {cmd:margins} 的默认 {cmd:predict()} 规格{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 23 25 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}因子变量约束矩阵{p_end}
{synopt:{cmd:e(V)}}估计值的方差

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <menl.sthlp>}