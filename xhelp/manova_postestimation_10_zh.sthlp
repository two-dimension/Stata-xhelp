
{smcl}
{* *! version 1.0.11  15jun2010}{...}
{* 基于版本 1.0.8  22may2007 的 manova_postestimation.sthlp}{...}
{* 本帮助文件不出现在手册中}{...}
{help manova_postestimation_10:English Version}
{hline}
{cmd:help manova_postestimation_10}{right:另见:  {help manova_10_zh}{space 12}}
{right:{help previously documented}}
{hline}

{title:标题}

{p 4 36 2}
{hi:[MV] manova 后估计} {hline 2} {cmd:manova} 11 版之前的后估计

{p 12 12 8}
{it}[{bf:manova} 语法在 11 版时发生了变化。 本帮助文件记录了旧版 {cmd:manova} 的后估计功能，因此可能对您没有兴趣。 如果您在旧的 do 文件中将 {help version_zh} 设置为小于 11，则无需将 {cmd:manova} 的后估计命令转换为现代语法。 本帮助文件旨在为希望调试或理解旧代码的用户提供支持。 点击 {help manova_zh:这里} 查看现代 {cmd:manova} 命令的帮助文件，点击 {help manova_postestimation_zh:这里} 获取现代 {cmd:manova} 后估计的帮助。]{rm}

{title:描述}

{pstd}
以下后估计命令在 {cmd:manova} 后特别重要：

{synoptset 14 tabbed}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb manova_postestimation_10##manovatest:manovatest}}多元
	测试 {cmd:manova} 之后的结果{p_end}
{synopt:{help screeplot_zh}}绘制特征值图{p_end}
{synoptline}

{pstd}
以下标准后估计命令也可用：

{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{help adjust_zh}}调整预测值的 xb{p_end}
{p2coldent:* {help estat_zh}}VCE 和估计样本摘要{p_end}
包含帮助 post_estimates
包含帮助 post_lincom
{synopt:{helpb manova_postestimation_10##predict:predict}}预测,
残差和标准误差{p_end}
{synopt:{helpb manova_postestimation_10##test:test}}简单和
	复合线性假设的 Wald 测试{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:estat ic} 在 {cmd:manova} 之后不可用。
{p_end}


{title:特别关注的后估计命令}

{pstd}
{cmd:manovatest} 提供与 {it:term}s
或来自最近拟合的 {cmd:manova} 的基础设计矩阵的线性组合的多元测试。 四个多元测试统计量为 Wilks' λ、Pillai's 跟踪、Lawley-Hotelling 跟踪和 Roy 的最大根。 输出格式与 {help manova_10_zh} 所示的类似。

{pstd}
{cmd:test} 在 {cmd:manova} 后具有专门的语法；见下文。
{cmd:test} 执行涉及基础回归模型系数的表达式的 Wald 测试。 可能存在简单和复合线性假设。


{marker predict}{...}
{title:预测语法}

{p 8 16 2}{cmd:predict} {dtype} {newvar:name} {ifin}
[{cmd:,} {opt eq:uation(eqno[, eqno])}
{it:statistic}]

{synoptset 14 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab:主要}
{synopt:{opt xb}}xb 拟合值；默认值{p_end}
{synopt:{opt stdp}}拟合值的标准误差{p_end}
{synopt:{opt r:esiduals}}残差{p_end}
{synopt:{opt d:ifference}}两个方程的线性预测之间的差{p_end}
{synopt:{opt stdd:p}}差异的拟合值的标准误差{p_end}
{synoptline}
{p2colreset}{...}
包含帮助 esample


{title:预测选项}

{dlgtab:主要}

{phang}
{opt equation(eqno [, eqno])} 指定您所指的方程。

{pmore}
{opt equation()} 用于选项
    {cmd:xb}、{cmd:stdp} 和 {cmd:residuals} 填入一个 {it:eqno}。 {cmd:equation(#1)} 意味着
    将为第一个方程进行计算，{cmd:equation(#2)} 意味着第二个，依此类推。 您也可以通过其名称引用方程。 {cmd:equation(income)} 将引用命名为 income 的方程，{cmd:equation(hours)} 则引用命名为 hours 的方程。

{pmore}
如果您未指定 {cmd:equation()}，结果与您指定 {cmd:equation(#1)} 的结果相同。

{pmore}
{opt difference} 和 {opt stddp} 涉及两个方程之间的概念。 要使用这些选项，您必须指定两个方程，例如 {cmd:equation(#1,#2)} 或 {cmd:equation(income,hours)}。 当必须指定两个方程时，{cmd:equation()} 是必需的。 使用 {cmd:equation(#1,#2)} 时，{opt difference} 计算 {cmd:equation(#1)} 的预测减去 {cmd:equation(#2)} 的预测。

{phang}
{cmd:xb}，默认值，计算拟合值，即所指定方程的 xb 预测。

{phang}
{cmd:stdp} 计算指定方程的预测标准误差（与观察的协变量模式的期望值或均值相关的标准误差）。 预测的标准误差也称为拟合值的标准误差。

{phang}
{cmd:residuals} 计算残差。

{phang}
{cmd:difference} 计算系统中两个方程的线性预测之间的差异。

{phang}
{cmd:stddp} 计算方程 1 和 2 之间线性预测的差异的标准误差 (x_{1j}b - x_{2j}b)。

{pstd}
有关在多个方程命令后使用 {cmd:predict} 的详细信息，请参见 {manhelp predict R}。


{marker manovatest}{...}
{title:manovatest 语法}

{p 8 19 2}
{cmd:manovatest} {it:term} [{it:term ...}] [{cmd:/} {it:term} [{it:term ...}]]
[{cmd:,} {opt ytr:ansform(matname)}]

{p 8 19 2}
{cmd:manovatest} {cmd:,} {opt test(matname)}
[{opt ytr:ansform(matname)}]

{p 8 19 2}
{cmd:manovatest} {cmd:,} {opt showord:er}

{pstd}
其中 {it:term} 的形式为
{it:varname}[{c -(}{cmd:*}|{cmd:|}{c )-}{it:varname}[{it:...}]]


{title:manovatest 选项}

{phang}
{cmd:ytransform(}{it:matname}{cmd:)} 指定用于测试的 y
变量的转换矩阵（来自 {help manova_10_zh} 的 {it:depvarlist}）。 多元测试基于 inv(A*E*A')*(A*H*A')。 默认情况下，A 是单位矩阵。 {cmd:ytransform()} 是您指定用于多元测试的 A 矩阵的方式。 指定 {cmd:ytransform()} 的结果与先使用 Y*A' 转换 y 变量（其中 Y 是通过列绑定 y 变量形成的矩阵，A 是存储在 {it:matname} 中的矩阵）、对转换后的 y 执行 {cmd:manova} 以及随后运行不带 {cmd:ytransform()} 的 {cmd:manovatest} 的结果相同。

{pmore}
{it:matname} 的列数必须等于来自 {cmd:manova} 的 {it:depvarlist} 中的变量数。 行数必须小于或等于来自 {cmd:manova} 的 {it:depvarlist} 中的变量数。 {it:matname} 应具有与来自 {cmd:manova} 的 {it:depvarlist} 中的变量相同的列顺序。 {it:matname} 的列名和行名将被忽略。

{pmore}
当指定 {cmd:ytransform()} 时，将在包含多元测试的表之前呈现转换的列表。 您应检查此表以确认您已应用所需的转换。

{phang}
{cmd:test(}{it:matname}{cmd:)} 在 {cmd:manovatest} 的第二种语法中是必需的。 {it:matname} 的行指定要联合测试的 MANOVA 的基础设计矩阵的线性组合。 列对应于基础设计矩阵（如果未被抑制，则包括常数项）。 {it:matname} 的列名和行名将被忽略。

{pmore}
{cmd:test()} 选项施加的约束列表将在包含多元测试的表之前呈现。 您应检查此表以确认您已经应用了所需的线性组合。 输入 {cmd:manovatest , showorder} 允许您检查来自 MANOVA 的设计矩阵的列的顺序。

{phang}
{cmd:showorder} 使 {cmd:manovatest} 列出设计矩阵中每列的定义。 与任何其他选项或当指定 {it:term}s 时，{cmd:showorder} 不被允许。


{marker test}{...}
{title:在 manova 后的 test 语法}

{p 8 13 2}
{cmdab:te:st}
{cmd:,}
{opt test(matname)}
[{cmdab:m:test}[{cmd:(}{it:opt}{cmd:)}]
{opt matvlc(matname2)}]

{p 8 13 2}
{cmdab:te:st} [{it:exp} {cmd:=} {it:exp}]
[{cmd:,} {opt a:ccumulate}
{opt not:est}
{opt matvlc(matname2)}]

{p 8 13 2}
{cmdab:te:st} {cmd:,} {opt showord:er}

{p 4 6 2}
其中 {it:exp} 必须引用包含在
{cmd:[}{it:eqno}{cmd:]_coef[]}（或同义词 {cmd:[}{it:eqno}{cmd:]_b[]}）中的系数。 {it:eqno} 可以是 {cmd:#}{it:#} 或 {it:name}。 省略 {cmd:[}{it:eqno}{cmd:]} 相当于指定 {cmd:[#1]}。


{title:test 在 manova 后的选项}

{p 4 8 2}
{cmd:test(}{it:matname}{cmd:)} 在 {cmd:test} 的第一种语法中是必需的。 {it:matname} 的行指定要联合测试的 MANOVA 的基础设计矩阵的线性组合。 列对应于基础设计矩阵（如果未被抑制，则包括常数项）。 {it:matname} 的列名和行名将被忽略。

{p 8 8 2}
{cmd:test()} 选项施加的约束列表将在包含测试的表之前呈现。 您应检查此表以确认您已应用所需的线性组合。 输入 {cmd:test , showorder} 允许您检查来自 MANOVA 的设计矩阵的列的顺序。

{p 8 8 2}
{it:matname} 应具有的列数等于因变量的数量乘以基础设计矩阵中列的数量。 基础设计矩阵在每个因变量上重复。

{p 4 8 2}{cmd:mtest}[{cmd:(}{it:opt}{cmd:)}]
表示分别对每个条件执行测试。 {it:opt} 指定用于调整多重测试的 p 值的方法。 {it:opt} 的有效值为

{p 12 12 2}{cmdab:b:onferroni}{space 4}Bonferroni 方法{p_end}
{p 12 12 2}{cmdab:h:olm}{space      10}Holm 方法{p_end}
{p 12 12 2}{cmdab:s:idak}{space      9}Sidak 方法{p_end}
{p 12 12 2}{cmdab:noadj:ust}{space   6}无需调整{p_end}

{p 8 8 2}
不带参数指定 {cmd:mtest} 相当于指定 {cmd:mtest(noadjust)}。

{p 4 8 2}
{cmd:accumulate} 允许一个假设与之前测试的假设联合进行测试。

{p 4 8 2}
{cmd:notest} 抑制输出。 当您仅对后续 {cmd:test, accumulate} 的联合测试感兴趣时，此选项很有用。

{p 4 8 2}
{cmd:matvlc(}{it:matname}{cmd:)}，程序员选项，保存参与测试的线性组合的方差-协方差矩阵。 对于 H_0: L*b = c 的测试，返回的 {it:matname} 为 L*V*L'，其中 V 是 b 的估计方差-协方差矩阵。

{p 4 8 2}
{cmd:showorder} 使 {cmd:test} 列出设计矩阵中每列的定义。 与任何其他选项不允许使用 {cmd:showorder}。


{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. use http://www.stata-press.com/data/r10/metabolic}{p_end}
{phang2}{cmd:. version 10.1: manova y1 y2 = group}

{pstd}测试组 1 与组 2、3 和 4{p_end}
{phang2}{cmd:. manovatest, showorder}{p_end}
{phang2}{cmd:. matrix c1 = (0,3,-1,-1,-1)}{p_end}
{phang2}{cmd:. manovatest, test(c1)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. use http://www.stata-press.com/data/r10/sorghum}{p_end}
{phang2}{cmd:. version 10.1: manova time1 time2 time3 time4 time5 = variety block}{p_end}
{phang2}{cmd:. matrix m1 = J(1,5,1)}{p_end}
{phang2}{cmd:. matrix m2 = (1,-1,0,0,0 \ 1,0,-1,0,0 \ 1,0,0,-1,0 \}
           {cmd:1,0,0,0,-1)}{p_end}
{phang2}{cmd:. manovatest, showorder}{p_end}
{phang2}{cmd:. mat c1 = (0,1,-1,0,0,0,0,0,0,0\0,1,0,-1,0,0,0,0,0,0\0,1,0,0,-1,0,0,0,0,0)}{p_end}
{phang2}{cmd:. matrix c2 = (1,.25,.25,.25,.25,.2,.2,.2,.2,.2)}{p_end}

{pstd}测试均匀品种边际均值{p_end}
{phang2}{cmd:. manovatest, test(c1) ytransform(m1)}{p_end}

{pstd}测试均匀时间边际均值{p_end}
{phang2}{cmd:. manovatest, test(c2) ytransform(m2)}{p_end}

{pstd}测试品种与时间的交互作用{p_end}
{phang2}{cmd:. manovatest, test(c1) ytransform(m2)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. use http://www.stata-press.com/data/r10/biochemical}{p_end}
{phang2}{cmd:. version 10.1: manova y1 y2 y3 = group x1 x2, continuous(x1 x2)}{p_end}

{pstd}测试连续协变量是否联合等于零{p_end}
{phang2}{cmd:. manovatest x1 x2}{p_end}
 
     {hline}
{pstd}设置{p_end}
{phang2}{cmd:. use http://www.stata-press.com/data/r10/biochemical}{p_end}
{phang2}{cmd:. version 10.1: manova y1 y2 y3 = group x1 x2 group*x1 group*x2,}
         {cmd:continuous(x1 x2)}{p_end}

{pstd}测试跨组的连续协变量是否联合等于零{p_end}
{phang2}{cmd:. manovatest group*x1 group*x2}{p_end}
    {hline}


{title:保存的结果}

{pstd}
{cmd:manovatest} 将以下内容保存在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(df)}}假设自由度{p_end}
{synopt:{cmd:r(df_r)}}残差自由度{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(H)}}假设 SSCP 矩阵{p_end}
{synopt:{cmd:r(E)}}残差误差 SSCP 矩阵{p_end}
{synopt:{cmd:r(stat)}}多元统计量{p_end}
{synopt:{cmd:r(eigvals)}} {cmd:E^-1H} 的特征值{p_end}
{synopt:{cmd:r(aux)}}s、m 和 n 值{p_end}

{pstd}
{cmd:test} 在 {cmd:manova} 后将以下内容保存在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}
{synopt:{cmd:r(F)}}F 统计量{p_end}
{synopt:{cmd:r(df)}}假设自由度{p_end}
{synopt:{cmd:r(df_r)}}残差自由度{p_end}
{synopt:{cmd:r(drop)}}如果没有约束被删除，则返回 0，否则返回 1{p_end}
{synopt:{cmd:r(dropped_#)}}第 # 个约束被删除的索引{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(mtmethod)}}多重测试调整的方法{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(mtest)}}多重测试结果{p_end}
{p2colreset}{...}


{title:另见}

{psee}
手册:  {help previously documented}

{psee}
{space 2}帮助:  {manhelp manova_postestimation MV:manova 后估计}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <manova_postestimation_10.sthlp>}