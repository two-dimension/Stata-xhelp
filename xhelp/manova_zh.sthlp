{smcl}
{* *! version 1.3.4  04jun2018}{...}
{viewerdialog manova "dialog manova"}{...}
{vieweralsosee "[MV] manova" "mansection MV manova"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] manova postestimation" "help manova postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] anova" "help anova_zh"}{...}
{vieweralsosee "[P] anovadef" "help anovadef_zh"}{...}
{vieweralsosee "[D] encode" "help encode_zh"}{...}
{vieweralsosee "[MV] mvreg" "help mvreg_zh"}{...}
{vieweralsosee "[MV] mvtest" "help mvtest_zh"}{...}
{vieweralsosee "[D] reshape" "help reshape_zh"}{...}
{vieweralsosee "[SEM] sem" "help sem_zh"}{...}
{viewerjumpto "Syntax" "manova_zh##syntax"}{...}
{viewerjumpto "Menu" "manova_zh##menu"}{...}
{viewerjumpto "Description" "manova_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "manova_zh##linkspdf"}{...}
{viewerjumpto "Options" "manova_zh##options"}{...}
{viewerjumpto "Remarks" "manova_zh##remarks"}{...}
{viewerjumpto "Examples" "manova_zh##examples"}{...}
{viewerjumpto "Stored results" "manova_zh##results"}
{help manova:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[MV] manova} {hline 2}}多元方差分析与协方差分析
{p_end}
{p2col:}({mansection MV manova:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:manova} {depvarlist} {cmd:=} {it:termlist}
{ifin}
[{it:{help manova##weight:权重}}]
[{cmd:,} {it:选项}]

{pstd}
其中 {it:termlist} 是一个 {help fvvarlist_zh:因子变量列表}，具有以下附加功能：

{phang2}
o  变量被假定为类别型；使用 {cmd:c.} 因子变量操作符可覆盖此假定。
{p_end}
{phang2}
o  可以使用 {cmd:|} 符号（表示嵌套）代替 {cmd:#} 符号（表示交互作用）。
{p_end}
{phang2}
o  {cmd:/} 符号允许位于 {it:term} 之后，表示随后的 {it:term} 是前面的 {it:term} 的误差项。


{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt:{opt nocons:tant}}抑制常数项{p_end}
{synopt:{opt dropemp:tycells}}从设计矩阵中删除空单元格{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{cmd:bootstrap}，{cmd:by}，{cmd:jackknife} 和 {cmd:statsby} 是允许的；见
{help prefix_zh}。
{p_end}
{p 4 6 2}权重不允许与 {help bootstrap_zh} 前缀一起使用。{p_end}
{p 4 6 2}{cmd:aweight}s 不允许与 {help jackknife_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:aweight}s 和 {cmd:fweight}s 是允许的；见 {help weight_zh}。
{p_end}
{p 4 6 2}
见 {manhelp manova_postestimation MV:manova postestimation} 获取估计后的可用功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元分析 >}
     {bf:MANOVA，多元回归和相关分析 > MANOVA}


{marker description}{...}
{title:描述}

{pstd}
{cmd:manova} 命令拟合多元方差分析（MANOVA）和多元协方差分析（MANCOVA）模型，适用于平衡和不平衡设计，包括具有缺失单元格的设计，以及因子、嵌套或混合设计，或涉及重复测量的设计。

{pstd}
{help mvreg_zh} 命令将显示最后一次运行 {cmd:manova} 的多元回归模型的系数、标准误差等。

{pstd}
有关单元方差分析（ANOVA）和协方差分析（ANCOVA）模型，请参见 {manhelp anova R}。
有关 Box 测试（检验 MANOVA 的假设，即组的协方差矩阵相同），请参见 {manhelp mvtest_covariances MV:mvtest covariances}，有关不做此假设的多元均值检验，请参见 {manhelp mvtest_means MV:mvtest means}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV manovaQuickstart:快速入门}

        {mansection MV manovaRemarksandexamples:备注和示例}

        {mansection MV manovaMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant} 抑制模型中的常数项（截距）。

{phang}
{opt dropemptycells} 从设计矩阵中删除空单元格。如果 {cmd:c(emptycells)} 设置为 {cmd:keep}（见 {helpb set emptycells}），则在运行 MANOVA 模型之前，此选项会暂时将其重置为 {cmd:drop}。如果 {cmd:c(emptycells)} 已经设置为 {cmd:drop}，则此选项不执行任何操作。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:#} 符号表示交互作用。{cmd:|} 符号表示嵌套（{cmd:a|b} 被读作 "{cmd:a} 嵌套在 {cmd:b} 内"）。
在 {it:term}s 之间的 {cmd:/} 表示右侧的 {it:term} 是左侧 {it:term} 的误差项。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse metabolic}

{pstd}单因素 MANOVA{p_end}
{phang2}{cmd:. manova y1 y2 = group}

{pstd}查看基础多元回归模型{p_end}
{phang2}{cmd:. mvreg}

{pstd}查看基础多元回归模型，带有 90% 置信区间并显示基本类别{p_end}
{phang2}{cmd:. mvreg, level(90) base}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse jaw}

{pstd}双因素 MANOVA{p_end}
{phang2}{cmd:. manova y1 y2 y3 = gender fracture gender#fracture}

{pstd}相同模型，但减少输入{p_end}
{phang2}{cmd:. manova y* = gender##fracture}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse videotrainer}{p_end}

{pstd}带嵌套数据的 Manova{p_end}
{phang2}{cmd:. manova primary extra = video / store|video /}
			{cmd:associate|store|video /, dropemptycells}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse reading2}{p_end}

{pstd}分割图 MANOVA{p_end}
{phang2}{cmd:. manova score comp = pr / cl|pr sk pr#sk / cl#sk|pr /}
            {cmd:gr|cl#sk|pr /, dropemptycells}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse biochemical}

{pstd}MANCOVA{p_end}
{phang2}{cmd:. manova y1 y2 y3 = group c.x1 c.x2}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nobetween}{p_end}
{phang2}{cmd:. gen mycons = 1}

{pstd}具有重复测量数据的 MANOVA{p_end}
{phang2}{cmd:. manova test1 test2 test3 = mycons, noconstant}{p_end}
{phang2}{cmd:. mat c = (1,0,-1 \ 0,1,-1)}{p_end}
{phang2}{cmd:. manovatest mycons, ytransform(c)}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:manova} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)}中的方程数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(df_}{it:#}{cmd:)}}项 {it:#} 的自由度{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:manova}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(indepvars)}}右侧变量的名称{p_end}
{synopt:{cmd:e(term_}{it:#}{cmd:)}}项 {it:#}{p_end}
{synopt:{cmd:e(errorterm_}{it:#}{cmd:)}}项 {it:#} 的误差项（为使用非残差误差的项定义）{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(r2)}}每个方程的 R 平方{p_end}
{synopt:{cmd:e(rmse)}}每个方程的 RMSE{p_end}
{synopt:{cmd:e(F)}}每个方程的 F 统计量{p_end}
{synopt:{cmd:e(p_F)}}每个方程的 F 检验的 p 值{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实施 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实施 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}
{synopt:{cmd:e(marginsdefault)}}{cmd:margins} 的默认 {opt predict()} 规格{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量（{cmd:e(B)} 的堆叠版本）{p_end}
{synopt:{cmd:e(B)}}系数矩阵{p_end}
{synopt:{cmd:e(E)}}残差误差 SSCP 矩阵{p_end}
{synopt:{cmd:e(xpxinv)}}X'X 的广义逆{p_end}
{synopt:{cmd:e(H_m)}}整体模型的假设 SSCP 矩阵{p_end}
{synopt:{cmd:e(stat_m)}}整体模型的多元统计量{p_end}
{synopt:{cmd:e(eigvals_m)}}整体模型的 {cmd:E^-1H} 的特征值{p_end}
{synopt:{cmd:e(aux_m)}}整体模型的 {cmd:s}，{cmd:m} 和 {cmd:n} 值{p_end}
{synopt:{cmd:e(H_}{it:#}{cmd:)}}项 {it:#} 的假设 SSCP 矩阵{p_end}
{synopt:{cmd:e(stat_}{it:#}{cmd:)}}项 {it:#} 的多元统计量（如果计算了）{p_end}
{synopt:{cmd:e(eigvals_}{it:#}{cmd:)}}项 {it:#} 的 {cmd:E^-1H} 的特征值（如果计算了）{p_end}
{synopt:{cmd:e(aux_}{it:#}{cmd:)}}项 {it:#} 的 {cmd:s}，{cmd:m} 和 {cmd:n} 值（如果计算了）{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <manova.sthlp>}