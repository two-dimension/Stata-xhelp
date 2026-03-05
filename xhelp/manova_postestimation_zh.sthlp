{smcl}
{* *! version 1.2.6  19oct2017}{...}
{viewerdialog predict "dialog manova_p"}{...}
{viewerdialog manovatest "dialog manovatest"}{...}
{viewerdialog screeplot "dialog screeplot"}{...}
{viewerdialog test "dialog testmanova"}{...}
{vieweralsosee "[MV] manova postestimation" "mansection MV manovapostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] manova" "help manova_zh"}{...}
{vieweralsosee "[MV] screeplot" "help screeplot_zh"}{...}
{viewerjumpto "Postestimation commands" "manova postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "manova_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "manova postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "manova postestimation##syntax_margins"}{...}
{viewerjumpto "manovatest" "manova postestimation##syntax_manovatest"}{...}
{viewerjumpto "test" "manova postestimation##syntax_test"}{...}
{viewerjumpto "Examples" "manova postestimation##examples"}{...}
{viewerjumpto "Stored results" "manova postestimation##results"}
{help manova_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[MV] manova postestimation} {hline 2}}manova 的后续估计工具
{p_end}
{p2col:}({mansection MV manovapostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后续估计命令}

{pstd}
以下后续估计命令在 {cmd:manova} 之后特别重要：

{synoptset 17}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb manova postestimation##manovatest:manovatest}}多变量
	检验在 {cmd:manova} 之后{p_end}
{synopt:{help screeplot_zh}}绘制特征根图{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后续估计命令也可用：

{synoptset 17}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_lincom
{synopt:{helpb manova_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt:{helpb manova postestimation##predict:predict}}预测、残差和
	标准误差{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
{synopt:{helpb manova postestimation##test:test}}简单和
	复合线性假设的沃尔德检验{p_end}
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection MV manovapostestimationRemarksandexamples:备注和示例}

        {mansection MV manovapostestimationMethodsandformulas:方法和公式}

{pstd}
以上各节未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}{cmd:predict} {dtype} {newvar} {ifin}
[{cmd:,} {opt eq:uation(eqno[, eqno])}
{it:statistic}]

{synoptset 17 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab:主}
{synopt:{opt xb}}xb，拟合值；默认值{p_end}
{synopt:{opt stdp}}拟合值的标准误差{p_end}
{synopt:{opt r:esiduals}}残差{p_end}
{synopt:{opt d:ifference}}两个
	方程线性预测之间的差{p_end}
{synopt:{opt stdd:p}}差异的拟合值的标准误差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker desc_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，例如拟合值、标准误差、残差和线性预测之间的差异。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt equation(eqno [, eqno])}指定参考的方程。

{pmore}
{opt equation()} 为 {cmd:xb}、{cmd:stdp} 和 {cmd:residuals} 选项填写一个 {it:eqno}。  {cmd:equation(#1)} 意味着 
	计算为第一个方程（即第一个因变量）， {cmd:equation(#2)}
	意为第二个，依此类推。  你也可以通过它们的名称来引用方程。  {cmd:equation(income)} 意味着引用名为 income 的
	方程，{cmd:equation(hours)} 则引用名为 hours 的方程。

{pmore}
如果未指定 {cmd:equation()}，结果将与指定 {cmd:equation(#1)} 时相同。

{pmore}
{opt difference} 和 {opt stddp} 指两个方程之间的概念。  使用这些选项时，你必须指定两个方程，例如 {cmd:equation(#1,#2)} 或 {cmd:equation(income,hours)}。 当必须指定两个方程时，{cmd:equation()} 是必需的。 使用
	{cmd:equation(#1,#2)}，{opt difference} 计算 {cmd:equation(#1)} 的预测值减去 {cmd:equation(#2)} 的预测值。

{phang}
{cmd:xb}，默认值，计算拟合值——即针对指定方程的 xb 预测值。

{phang}
{cmd:stdp} 计算指定方程的预测标准误差（观察值的协变量模式的估计期望值或均值的标准误差）。 预测的标准误差也称为拟合值的标准误差。

{phang}
{cmd:residuals} 计算残差。

{phang}
{cmd:difference} 在系统中计算两个方程的线性预测之间的差异。

{phang}
{cmd:stddp} 计算方程 1 和 2 的线性预测之间的差异的标准误差 (x_{1j}b - x_{2j}b)。

{pstd}
有关在多方程估计命令之后使用 {cmd:predict} 的更多信息，请参见 {manhelp predict R}。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :default}每个方程的线性预测{p_end}
{synopt :{cmd:xb}}指定方程的线性预测{p_end}
{synopt :{opt d:ifference}}两个方程的线性预测之间的差异{p_end}
{synopt :{opt r:esiduals}}与 {cmd:margins} 不兼容{p_end}
{synopt :{cmd:stdp}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt stdd:p}}与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt xb} 默认值为第一个方程。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker desc_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计线性预测的响应的边际，拟合值，以及线性预测之间的差异。


{marker syntax_manovatest}{...}
{marker manovatest}{...}
{title:manovatest 的语法}

{p 8 19 2}
{cmd:manovatest} {it:term} [{it:term ...}] [{cmd:/} {it:term} [{it:term ...}]]
[{cmd:,} {opt ytr:ansform(matname)}]

{p 8 19 2}
{cmd:manovatest}{cmd:,} {opt test(matname)}
[{opt ytr:ansform(matname)}]

{p 8 19 2}
{cmd:manovatest} {cmd:,} {opt showord:er}

{pstd}
其中 {it:term} 是在之前运行的 {cmd:manova} 中的 {it:termlist} 中的术语。


{marker menu_manovatest}{...}
{title:manovatest 的菜单}

{phang}
{bf:统计 > 多变量分析 >}
     {bf:MANOVA、多变量回归及相关 >}
     {bf:MANOVA 后的多变量检验}


{marker desc_manovatest}{...}
{title:manovatest 的描述}

{pstd}
{cmd:manovatest} 提供涉及 {it:term} 或底层设计矩阵的线性组合的多变量检验
来自最近拟合的 {cmd:manova}。 四个多变量检验统计量分别为 Wilks 的 λ、Pillai 的迹、Lawley-Hotelling 迹和
Roy 的最大根。 输出的格式与 {help manova_zh} 显示的相似。


{marker options_manovatest}{...}
{title:manovatest 的选项}

{phang}
{cmd:ytransform(}{it:matname}{cmd:)} 指定用于变换 y
变量（{cmd:manova} 的 {depvarlist}）作为检验的一部分的矩阵。 多变量检验基于
inv(A*E*A')*(A*H*A')。 默认情况下，A 是单位矩阵。 {cmd:ytransform()} 是你指定要在多变量检验中使用的 A 矩阵的方式。 指定 {cmd:ytransform()} 的结果与首先用 Y*A' 变换 y 变量相同，Y 是通过列绑定 y 变量形成的矩阵，A 是存储在 {it:matname} 中的矩阵；然后在转换后的 y 上执行 {cmd:manova}；最后运行不带 {cmd:ytransform()} 的 {cmd:manovatest}。

{pmore}
{it:matname} 的列数必须等于 {cmd:manova} 中 {it:depvarlist} 的变量个数。 行数必须小于或等于 {cmd:manova} 中 {it:depvarlist} 的变量个数。 {it:matname} 的列顺序应与 {cmd:manova} 中的 {it:depvarlist} 相同。 {it:matname} 的列和行名称会被忽略。

{pmore}
当指定 {cmd:ytransform()} 时，变换的列表会在包含多变量检验的表之前呈现。 你应该检查此表，以验证你已应用所需的变换。

{phang}
{cmd:test(}{it:matname}{cmd:)} 在 {cmd:manovatest} 的第二种语法中是必需的。 {it:matname} 的行指定要共同检验的底层设计矩阵的线性组合。 列对应于底层设计矩阵（包括常数，如果未被抑制）。 {it:matname} 的列和行名称会被忽略。

{pmore}
在包含多变量检验的表之前，会出现 {cmd:test()} 选项施加的约束的列表。 你应该检查此表，以验证你已应用所需的线性组合。 输入 {cmd:manovatest, showorder} 使你能够检查来自 MANOVA 的设计矩阵的列顺序。

{phang}
{cmd:showorder} 会导致 {cmd:manovatest} 列出设计矩阵中每列的定义。 {cmd:showorder} 不允许与任何其他选项一起使用或在指定了 {it:term} 的情况下使用。


{marker syntax_test}{...}
{marker test}{...}
{title:test 的语法}

{pstd}
除了 {help test_zh} 的标准语法，{cmd:test} 在 {cmd:manova} 之后还允许以下内容。

    {opt te:st,} {opt test(matname)} [{opt m:test}[{opt (opt)}] {opt matvlc(matname)}] {right:语法 A  }

    {opt te:st,} {opt showord:er} {right:语法 B  }


{p2colset 5 17 19 2}{...}
{p2col :语法 A}测试涉及底层多变量回归模型的系数的表达式；你提供的信息作为矩阵{p_end}
{p2col :语法 B}展示设计矩阵的基本顺序，在构建 {it:matname} 参数时很有用{p_end}
{p2colreset}{...}


{marker menu_test}{...}
{title:test 的菜单}

{phang}
{bf:统计 > 多变量分析 >}
    {bf:MANOVA、多变量回归及相关 > MANOVA 之后的沃尔德检验}


{marker desc_test}{...}
{title:test 的描述}

{pstd}
除了 {help test_zh} 的标准语法，{cmd:test} 在 {cmd:manova} 之后还具有两种额外允许的语法；见下文。
{cmd:test} 执行涉及底层回归模型的系数的表达式的沃尔德检验。 可以进行简单和复合线性假设的检验。


{marker options_test}{...}
{title:test 的选项}

{dlgtab:主}

{p 4 8 2}
{cmd:test(}{it:matname}{cmd:)} 在 
{cmd:test} 的语法 A 中是必需的。 {it:matname} 的行指定要共同检验的底层设计矩阵的线性组合。 列对应于底层设计矩阵（包括常数，如果未被抑制）。 {it:matname} 的列和行名称会被忽略。

{p 8 8 2}
在包含测试的表之前，会出现 {cmd:test()} 选项施加的约束的列表。 你应该检查此表，以验证你已应用所需的线性组合。 输入 {cmd:test, showorder} 使你能够检查来自 MANOVA 的设计矩阵的列顺序。

{p 8 8 2}
{it:matname} 的列数应为因变量数量与基本设计矩阵中列数量的乘积。 设计矩阵会为每个因变量重复。

{p 4 8 2}
{cmd:showorder} 会导致 {cmd:test} 列出设计矩阵中每列的定义。 {cmd:showorder} 不允许与任何其他选项一起使用。

{dlgtab:选项}

{p 4 8 2}{cmd:mtest}[{cmd:(}{it:opt}{cmd:)}]
指定为每个条件单独执行测试。 {it:opt} 指定调整多个测试的 p 值的方法。 {it:opt} 的有效值为

{p 12 12 2}{cmdab:b:onferroni}{space 4}Bonferroni 方法{p_end}
{p 12 12 2}{cmdab:h:olm}{space      10}Holm 方法{p_end}
{p 12 12 2}{cmdab:s:idak}{space      9}Sidak 方法{p_end}
{p 12 12 2}{cmdab:noadj:ust}{space   6}不进行调整{p_end}

{p 8 8 2}
指定 {cmd:mtest} 而不带参数等同于指定 {cmd:mtest(noadjust)}。

{pstd}
以下选项可与 {opt test} 一起在 {cmd:manova} 后使用，但未显示在对话框中：

{p 4 8 2}
{cmd:matvlc(}{it:matname}{cmd:)}, 一种程序员选项，保存在线性组合相关的测试中涉及的方差-协方差矩阵。 对于 H_0: L*b = c 的检验，返回的 {it:matname} 是 L*V*L'，其中 V 是 b 的估计方差-协方差矩阵。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse metabolic}{p_end}
{phang2}{cmd:. manova y1 y2 = group}

{pstd}检验组 1 与组 2、3 和 4 的差异{p_end}
{phang2}{cmd:. manovatest, showorder}{p_end}
{phang2}{cmd:. matrix c1 = (3,-1,-1,-1,0)}{p_end}
{phang2}{cmd:. manovatest, test(c1)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse sorghum}{p_end}
{phang2}{cmd:. manova time1 time2 time3 time4 time5 = variety block}{p_end}
{phang2}{cmd:. matrix m1 = J(1,5,1)}{p_end}
{phang2}{cmd:. matrix m2 = (1,-1,0,0,0 \ 1,0,-1,0,0 \ 1,0,0,-1,0 \}
           {cmd:1,0,0,0,-1)}{p_end}
{phang2}{cmd:. manovatest, showorder}{p_end}
{phang2}{cmd:. mat c1 = (1,-1,0,0,0,0,0,0,0,0\1,0,-1,0,0,0,0,0,0,0\1,0,0,-1,0,0,0,0,0,0)}{p_end}
{phang2}{cmd:. matrix c2 = (.25,.25,.25,.25,.2,.2,.2,.2,.2,1)}{p_end}

{pstd}检验不同品种的边际均值是否相等{p_end}
{phang2}{cmd:. manovatest, test(c1) ytransform(m1)}{p_end}

{pstd}检验不同时间的边际均值是否相等{p_end}
{phang2}{cmd:. manovatest, test(c2) ytransform(m2)}{p_end}

{pstd}检验品种与时间的交互作用{p_end}
{phang2}{cmd:. manovatest, test(c1) ytransform(m2)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse biochemical}{p_end}
{phang2}{cmd:. manova y1 y2 y3 = group c.x1 c.x2}{p_end}

{pstd}检验连续协变量是否联合为零{p_end}
{phang2}{cmd:. manovatest c.x1 c.x2}{p_end}
 
     {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse biochemical}{p_end}
{phang2}{cmd:. manova y1 y2 y3 = group c.x1 c.x2 group#c.x1 group#c.x2}{p_end}

{pstd}检验连续协变量在各组之间是否联合为零{p_end}
{phang2}{cmd:. manovatest group#c.x1 group#c.x2}{p_end}
    {hline}

{pstd}设置{p_end}
{phang2}{cmd:. webuse jaw}{p_end}
{phang2}{cmd:. manova y1 y2 y3 = gender fracture gender#fracture}{p_end}

{pstd}计算 {cmd:y1} 对于每种 {cmd:fracture} 和 {cmd:gender} 组合的预测均值（边际均值）、标准误差、z 统计量、
p 值和置信区间{p_end}
{phang2}{cmd:. margins gender#fracture, predict(equation(y1))}{p_end}

{pstd}对于每种骨折类型和每个因变量，比较女性和男性{p_end}
{phang2}{cmd:. contrast gender@fracture#_eqns, mcompare(scheffe)}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:manovatest} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(df)}}假设自由度{p_end}
{synopt:{cmd:r(df_r)}}残差自由度{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(H)}}假设 SSCP 矩阵{p_end}
{synopt:{cmd:r(E)}}残差-误差 SSCP 矩阵{p_end}
{synopt:{cmd:r(stat)}}多变量统计量{p_end}
{synopt:{cmd:r(eigvals)}}{cmd:E^-1H} 的特征值{p_end}
{synopt:{cmd:r(aux)}}{cmd:s}、{cmd:m} 和 {cmd:n} 值{p_end}

{pstd}
{cmd:test} 在 {cmd:manova} 之后存储以下内容在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}
{synopt:{cmd:r(F)}}F 统计量{p_end}
{synopt:{cmd:r(df)}}假设自由度{p_end}
{synopt:{cmd:r(df_r)}}残差自由度{p_end}
{synopt:{cmd:r(drop)}}{cmd:0} 表示未丢弃任何约束，{cmd:1} 表示丢弃{p_end}
{synopt:{cmd:r(dropped_}{it:#}{cmd:)}}第 {it:#} 个丢弃约束的索引{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(mtmethod)}}多重测试调整方法{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(mtest)}}多重测试结果{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <manova_postestimation.sthlp>}