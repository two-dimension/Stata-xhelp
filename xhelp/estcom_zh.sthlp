{smcl}
{* *! version 1.1.15  16may2019}{...}
{findalias asfrestimate}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "help estimation commands" "help estimation_commands_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 20 Estimation and postestimation commands (postestimation)" "help postest_zh"}{...}
{viewerjumpto "Description" "estcom_zh##description"}{...}
{viewerjumpto "Remarks" "estcom_zh##remarks"}
{help estcom:English Version}
{hline}{...}
{title:标题}

{p 4 13 2}
{findalias frestimate}


{marker description}{...}
{title:描述}

{pstd}有关 Stata 的估计命令的列表，请参见
{help estimation commands}。有关后估计命令的讨论，请参见 {help postest_zh}。

{pstd}
所有估计命令共享的属性列出了。


{marker remarks}{...}
{title:备注}

{pstd}
拟合统计模型的 Stata 命令 -- 如 {help logit_zh}、{help regress_zh}、{help logistic_zh} 和
{help sureg_zh} -- 工作方式相似。

{pstd}
备注内容按以下标题呈现：

        {help estcom##remarks1: 1. 常见语法}
        {help estcom##remarks2: 2. 子样本的估计}
        {help estcom##remarks3: 3. 鲁棒方差估计}
        {help estcom##remarks4: 4. 前缀命令}
        {help estcom##remarks5: 5. 参数的置信区间}
        {help estcom##remarks6: 6. 系数表的格式}
        {help estcom##remarks7: 7. 参数检验}
        {help estcom##remarks8: 8. 线性和非线性组合的点估计及置信区间}
        {help estcom##remarks9: 9. 预测}
        {help estcom##remarks_forecast:10. 预测}
        {help estcom##remarks10:11. 广义预测}
{phang2}{help estcom##remarks11:12. 边际均值、预测边际、边际效应和平均边际效应}{p_end}
        {help estcom##remarks12:13. 边际图}
        {help estcom##remarks13:14. 对比}
        {help estcom##remarks14:15. 配对比较}
        {help estcom##remarks15:16. 估计统计量}
        {help estcom##remarks16:17. 估计量的方差-协方差矩阵 (VCE)}
        {help estcom##remarks17:18. 表达式中的系数和标准误}
        {help estcom##remarks18:19. 管理和组合估计}
        {help estcom##remarks19:20. 重新显示估计}
        {help estcom##remarks20:21. 因子旋转}
        {help estcom##remarks21:22. 专用图形}
        {help estcom##remarks23:23. 后估计选择器}


{marker remarks1}{...}
{title:1. 常见语法}

{pstd}
单方程估计命令的语法通常为

{p 8 16 2}
{it:command} {varlist} {ifin} {weight} [{cmd:,} {it:options}]

{pstd}
而多方程估计命令的语法通常为

{p 8 16 2}
{it:command} {cmd:(}{varlist}{cmd:)} {it:...}
{cmd:(}{varlist}{cmd:)} {ifin} {weight}
[{cmd:,} {it:options}]

{pstd}
在单方程命令中，{it:varlist} 中的第一个变量是因变量，其余为自变量，尽管可能会有变动。例如，{help anova_zh} 允许您将变量和项同时指定为自变量。


{marker remarks2}{...}
{title:2. 子样本的估计}

{pstd}
您可以使用 Stata 的标准语法 ({it:{help if_zh}} 和 {it:{help in_zh}})
来限制样本；您不必创建一个特殊的数据集。


{marker remarks3}{...}
{title:3. 鲁棒方差估计}

{pstd}
大多数估计命令允许选项 {cmd:vce(robust)}，它提供 Huber/White/三明治 方差估计器。那些也提供选项
{cmd:vce(cluster} {it:clustvar}{cmd:)},  它放宽了独立性假设。参见 {findalias frrobust}。


{marker remarks4}{...}
{title:4. 前缀命令}

{pstd}
可以使用前缀命令来修改或扩展估计命令的功能。语法为

{p 8 16 2}
{it:prefix} {cmd::} {it:command} {it:...}

{pstd}
有关前缀命令的完整列表，请参见 {help prefix_zh}。要查找某个估计命令可用的前缀命令，请参见该命令的语法部分。

{pstd}
然而，在使用 {cmd:bootstrap:} 或 {cmd:jackknife:} 前缀之前，请检查该估计命令是否允许选项 
{cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)}。如果允许，使用选项而不是前缀更好。该选项是在前缀命令的基础上实现的，但选项会自动知道传递所有适合于您所使用的特定估计器的子选项。


{marker remarks5}{...}
{title:5. 参数的置信区间}

{pstd}
估计命令显示系数的置信区间。估计命令选项 {cmd:level()} 指定区间的宽度。默认值为 {cmd:level(95)}，表示 95% 的置信区间。

{pstd}
您可以使用 {help level_zh:set level} 重置默认值。


{marker remarks6}{...}
{title:6. 系数表的格式}

{pstd}
您可以更改系数表中检验统计量、p 值、系数、标准误和置信限的格式。有关详细信息，请参见 {findalias frcoeftable}。


{marker remarks7}{...}
{title:7. 参数检验}

{pstd}
您可以通过使用 

{p 8 12 2}
o{space 2}{help test_zh} -- Wald 线性假设检验 

{p 8 12 2}
o{space 2}{help testnl_zh} -- Wald 非线性假设检验

{p 8 12 2}
o{space 2}{help lrtest_zh} -- 似然比检验 

{p 8 12 2}
o{space 2}{help hausman_zh} -- Hausman 规范检验

{p 8 12 2}
o{space 2}{help suest_zh} -- Hausman 检验的一般化


{marker remarks8}{...}
{title:8. 线性和非线性组合的点估计及置信区间}

{pstd}
您可以使用 {help lincom_zh} 获取线性组合的点估计和置信区间，而使用 {help nlcom_zh} 获取非线性组合的点估计和置信区间。


{marker remarks9}{...}
{title:9. 预测}

{pstd}
您可以使用 {cmd:predict} 获取预测值、残差、影响统计量等，无论是针对您刚刚估计的数据还是其他数据。

{pstd}
{cmd:predict} 的帮助可以在两个地方找到：

{p 8 12 2}
1.
帮助 {help predict_zh} -- 一般信息

{p 8 12 2}
2.  帮助 {it:estimation_command} {cmd:postestimation} -- 有关通过 
{it:estimation_command} 后的特定信息和特殊功能。
例如，帮助 {helpb regress postestimation}
会告诉您 {cmd:predict} 在 {cmd:regress} 后的用法。

{pstd}
访问后估计帮助的简单方法是查看 {manhelp regress R} （或您正在使用的任何估计命令） 
然后选择 {it:postestimation}。


{marker remarks_forecast}{...}
{title:10. 预测}

{pstd}
您可以结合多个估计结果和其他方程以获取时间序列预测；请参见 {help forecast_zh:[TS] forecast}。


{marker remarks10}{...}
{title:11. 广义预测}

{pstd}
您可以使用 {help predictnl_zh} 获取非线性预测、标准误、Wald 检验统计量、显著性水平和置信区间，无论是针对您刚刚估计的数据还是其他数据。

{pstd}
{cmd:predictnl} 的一个特别有用的功能是您可以获取大多数通过 {cmd:predict} 提供的预测的标准误，并且您可以获得这些预测的函数和组合的标准误。


{marker remarks11}{...}
{p 0 4 2}{ul:{bf:12. 边际均值、预测边际、边际效应和平均边际效应}}

{pstd}
命令 {help margins_zh} 估计边际均值、调整后的预测、边际效应、部分效应或其他在回归变量固定值下的表达式；或者它基于一些协变量的固定值估计均值、调整后的预测、边际效应、部分效应或其他表达式，并在其余值上取均值。均值基于当前内存中的数据。


{marker remarks12}{...}
{p 0 4 2}{ul:{bf:13. 边际图}}

{pstd}
命令 {help marginsplot_zh} 绘制紧接在前的 {cmd:margins} 命令的结果图形。


{marker remarks13}{...}
{p 0 4 2}{ul:{bf:14. 对比}}

{pstd}
后估计命令 {help contrast_zh} 估计和检验对比。包括主效应、简单效应、交互效应和嵌套效应的 ANOVA 风格检验。您可以使用内置的对比运算符，也可以定义自己的自定义对比。

{pstd}
命令 {helpb margins contrast:margins, contrast} 将 {cmd:contrast}
扩展到线性和非线性响应的边际。


{marker remarks14}{...}
{p 0 4 2}{ul:{bf:15. 配对比较}}

{pstd}
后估计命令 {help pwcompare_zh} 在因子变量的水平之间进行配对比较。结果检验和置信区间可能会调整为多重比较。

{pstd}
命令 {helpb margins pwcompare:margins, pwcompare} 将
{cmd:pwcompare} 扩展到线性和非线性响应的边际。

{pstd}
要执行均值的配对比较，请使用 {help pwmean_zh}。


{marker remarks15}{...}
{title:16. 估计统计量}

{pstd}
命令 {helpb estat ic} 显示
标量和矩阵值的后估计统计量，如 AIC 和 BIC。


{marker remarks16}{...}
{title:17. 估计量的方差-协方差矩阵 (VCE)}

{pstd}
命令 {helpb estat vce} 显示 VCE -- 可以是协方差矩阵或相关矩阵。

{pstd}
估计命令将系数存储在矩阵 {cmd:e(b)} 中，将 VCE 存储在 {cmd:e(V)} 中。

{pstd}
您可以通过使用 
{cmd:st_matrix("e(b)")}
和
{cmd:st_matrix("e(V)")} 获取系数和 VCE 到 Mata 矩阵中；参见 {helpb mata st_matrix():[M-5] st_matrix()}。


{marker remarks17}{...}
{title:18. 表达式中的系数和标准误}

{pstd}
您可以通过使用 {cmd:_b[}{it:name}{cmd:]} 和 {cmd:_se[}{it:name}{cmd:]} 来引用 {help expressions} 中的系数和标准误，例如

	. {cmd:generate contribution = _b[mpg]*mpg}

{pstd}
参见 
{findalias frcoefficients} 和 {help _b}。


{marker remarks18}{...}
{title:19. 管理和组合估计}

{pstd}
您可以使用命令 
{help estimates_zh:estimates store} 存储估计结果。
这些估计结果可以稍后恢复和重放，可以将一个或多个系数组合成表格等；请参见 {manhelp estimates R}。

{pstd}
程序员还应查看命令 {manhelp _estimates P}，这是一个管理存储估计结果的低级工具。


{marker remarks19}{...}
{title:20. 重新显示估计}

{pstd}
您可以随时通过输入没有参数的估计命令来查看您最近的估计结果。


{marker remarks20}{...}
{title:21. 因子旋转}

{pstd}
您可以在因子类命令后旋转加载；  
请参见 {manhelp rotate MV}。


{marker remarks21}{...}
{title:22. 专用图形}

{pstd}
在某些估计命令后可以使用专用图形命令。

{pstd}
例如，命令 {help lroc_zh} 将在 {cmd:logistic}、{cmd:logit}、{cmd:probit} 或 {cmd:ivprobit} 后绘制 ROC 曲线。命令 
{help screeplot_zh} 会在 {cmd:factor} 或 {cmd:pca} 后生成碎石图，以及其他各种多变量命令。命令 {help stcurve_zh} 将在 {cmd:stcox}、{cmd:stintreg}、{cmd:streg}、{cmd:mestreg} 或 {cmd:xtstreg} 后绘制生存、风险或累积风险函数，并将在 {cmd:stcrreg} 后绘制累积子风险或累积发生率函数。

{pstd}
可用的内容可以在文档中的后估计部分找到，紧随估计器之后。


{marker remarks23}{...}
{title:23. 后估计选择器}

{pstd}
启动后估计选择器窗口以查看当前活动估计结果的所有后估计功能的列表。您可以启动列表中某一项的对话框。列表在运行估计命令或从内存或磁盘恢复估计时会自动更新。请参见 {manhelp postest R}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estcom.sthlp>}