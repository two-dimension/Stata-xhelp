{smcl}
{* *! version 1.1.16  19oct2017}{...}
{viewerdialog lrtest "dialog lrtest"}{...}
{vieweralsosee "[R] lrtest" "mansection R lrtest"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{vieweralsosee "[R] testnl" "help testnl_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] nestreg" "help nestreg_zh"}{...}
{viewerjumpto "Syntax" "lrtest_zh##syntax"}{...}
{viewerjumpto "Menu" "lrtest_zh##menu"}{...}
{viewerjumpto "Description" "lrtest_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "lrtest_zh##linkspdf"}{...}
{viewerjumpto "Options" "lrtest_zh##options"}{...}
{viewerjumpto "Remarks" "lrtest_zh##remarks"}{...}
{viewerjumpto "Examples" "lrtest_zh##examples"}{...}
{viewerjumpto "Stored results" "lrtest_zh##results"}
{help lrtest:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] lrtest} {hline 2}}似然比检验{p_end}
{p2col:}({mansection R lrtest:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}{cmd:lrtest} {it:modelspec1} [{it:modelspec2}] [{cmd:,} {it:options}]

{phang}
{it:modelspec1} 和 {it:modelspec2} 指定受限模型和不受限模型，可以任意顺序。 {it:modelspec#} 是

                {it:name}{c |}{cmd:.}{c |} {cmd:(}{it:namelist}{cmd:)}

{pmore}
{it:name} 是使用 {helpb estimates store:estimates store} 存储的估计结果的名称，而 "{cmd:.}" 则指最后的估计结果，无论这些结果是否已被存储。
如果未指定 {it:modelspec2}，则使用最后一个估计结果；这相当于指定 {it:modelspec2} 为 "{cmd:.}"。

{pmore}
如果为复合模型指定了 {it:namelist}，则 {it:modelspec1} 和 {it:modelspec2} 不能有共同的名称；例如，
{cmd:lrtest {bind:(A B C)} {bind:(C D E)}} 是不允许的，因为两个模型规格都包括 {cmd:C}。


{synoptset 11}{...}
{synopthdr}
{synoptline}
{synopt :{opt st:ats}}显示两个模型的统计信息{p_end}
{synopt :{opt di:r}}显示两个模型的描述信息{p_end}
{synopt :{opt d:f(#)}}覆盖自动的自由度计算；很少使用{p_end}
{synopt :{opt force}}即使在明显无效的情况下也强制测试{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计分析}


{marker description}{...}
{title:描述}

{pstd}
{cmd:lrtest} 执行似然比检验，用于检验统计模型的参数向量是否满足某些平滑约束。
要进行此检验，必须使用最大似然方法（或类似方法）拟合受限模型和不受限模型，
并且至少要使用 {helpb estimates store:estimates store} 存储其中一个模型的结果。

{pstd}
{cmd:lrtest} 还支持复合模型。
在复合模型中，我们假设完整模型的对数似然和维度（自由参数的数量）是构成模型的对数似然值和维度的总和。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R lrtestQuickstart:快速入门}

        {mansection R lrtestRemarksandexamples:备注和示例}

        {mansection R lrtestMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt stats} 显示有关不受限模型和受限模型的统计信息，包括阿卡伊克信息准则和施瓦茨信息准则的值。

{phang}
{opt dir} 显示有关不受限模型和受限模型的描述信息；请参见 {cmd:estimates dir} 在 
{helpb estimates store:[R] estimates store}中。

{phang}
{opt df(#)} 很少指定；它覆盖自动的自由度计算。

{phang}
{opt force} 强制进行似然比检验计算，即使在 {cmd:lrtest} 通常拒绝执行并发出错误信息的情况下。这种情况发生在违反了检验的一个或多个假设时，例如如果模型使用 {cmd:vce(robust)}、{cmd:vce(cluster} {it:clustvar}{cmd:)} 或 {help weight_zh:pweight} 拟合；当两个模型中的因变量不同；当零假设下的对数似然不同；当样本不同；或当估计命令不同。如果使用 {opt force} 选项，则无法保证结果检验的有效性或可解释性。


{marker remarks}{...}
{title:备注}

{pstd}
在弱常规条件下，LR 检验统计量的分布大致为卡方分布，自由度等于不受限模型和受限模型的维度差（即不受限参数数量和受限参数数量的差）如果真实参数向量确实满足受限模型，并且我们不在参数空间的边界上。后一条件不满足，例如，当我们检验一个混合分布的方差是否等于零时（{help j_chibar_zh:点击这里} 获取更多信息）。{cmd:lrtest} 无法辨别是否在这样的条件下被调用，并且它始终假设标准常规条件是满足的来产生 p 值。

{pstd}
{cmd:lrtest} 提供了一个对比于 {help test_zh:Wald 检验} 的重要替代方案，适用于通过最大似然法拟合的模型。Wald 检验只需拟合一个模型（不受限模型）。因此，从计算上来说，它比似然比检验更具吸引力。然而，大多数统计学家更倾向于在可行时使用似然比检验，因为 LR 检验统计量的零分布通常比 Wald 检验统计量更接近于卡方分布。


{marker examples}{...}
{title:带有嵌套模型的示例}

{phang}{cmd:. webuse lbw}{p_end}
{phang}{cmd:. logit low age lwt i.race smoke ptl ht ui}{p_end}
{phang}{cmd:. estimates store A}{p_end}
{phang}{cmd:. logit low lwt i.race smoke ht ui}{p_end}
{phang}{cmd:. estimates store B}{p_end}
{phang}{cmd:. lrtest A .}{p_end}
{phang}{cmd:. lrtest A}{space 6}(等价于上述命令){p_end}
{phang}{cmd:. lrtest A B}{space 4}(等价于上述命令){p_end}
{phang}{cmd:. logit low lwt smoke ht ui}{p_end}
{phang}{cmd:. estimates store C}{p_end}
{phang}{cmd:. lrtest B}{p_end}
{phang}{cmd:. lrtest C A, stats}{p_end}


{title:带有复合模型的示例}

{pstd}
我们希望在 {help heckman_zh} 中检验参与决策是否与结果（工资率）随机独立。如果这个相关性为0，Heckman模型相当于由结果的 {cmd:regress} 和参与的 {cmd:probit} 模型的组合。

{phang}{cmd:. webuse womenwk}{p_end}
{phang}{cmd:. heckman wage educ age, select(married children educ age)}{p_end}
{phang}{cmd:. estimates store H}{p_end}
{phang}{cmd:. regress wage educ age}{p_end}
{phang}{cmd:. estimates store R}{p_end}
{phang}{cmd:. generate dinc = !missing(wage)}{p_end}
{phang}{cmd:. probit dinc married children educ age}{p_end}
{phang}{cmd:. estimates store P}{p_end}
{phang}{cmd:. lrtest H (R P), df(1)}{p_end}

{pstd}
Chow 类型的检验适用于那些指定所有模型系数在不相交的数据子集之间不变的假设。

{phang}{cmd:. webuse vote, clear}{p_end}
{phang}{cmd:. logit vote age moinc dependents}{p_end}
{phang}{cmd:. estimates store All}{p_end}
{phang}{cmd:. logit vote age moinc dependents if county==1}{p_end}
{phang}{cmd:. estimates store A1}{p_end}
{phang}{cmd:. logit vote age moinc dependents if county==2}{p_end}
{phang}{cmd:. estimates store A2}{p_end}
{phang}{cmd:. logit vote age moinc dependents if county==3}{p_end}
{phang}{cmd:. estimates store A3}{p_end}
{phang}{cmd:. lrtest (All) (A1 A2 A3), df(7)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:lrtest} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(p)}}似然比检验的 p 值{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}
{synopt:{cmd:r(chi2)}}LR 检验统计量{p_end}

{pstd}
希望他们的估计命令与 {cmd:lrtest} 兼容的程序员需注意，{cmd:lrtest} 要求返回以下结果：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: }{p_end}
{synopt:{cmd:e(cmd)}}估计命令的名称{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}

{pstd}
{cmd:lrtest} 还验证 {cmd:e(N)}、{cmd:e(ll_0)} 和 {cmd:e(depvar)} 在两个非复合模型之间的一致性。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lrtest.sthlp>}