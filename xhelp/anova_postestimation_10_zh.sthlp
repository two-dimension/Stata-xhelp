
{smcl}
{* *! version 1.0.14  29mar2013}{...}
{* 基于版本 1.0.10  15oct2008 的 anova_postestimation.sthlp}{...}
{* 本帮助文件未包含在手册中}{...}
{help anova_postestimation_10:English Version}
{hline}
{cmd:help anova_postestimation_10}{right:另见:  {help anova_10_zh}{space 13}}
{right:{help 已经记录的内容}}
{hline}

{title:标题}

{p2colset 5 33 35 2}{...}
{p2col:{hi:[R] anova 后估计} {hline 2}}{cmd:anova} 的后估计
	在版本 11之前
{p_end}
{p2colreset}{...}

{p 12 12 8}
{it}[{bf:anova} 语法自版本 11 起有所变化。 本帮助文件记录了旧版本 {cmd:anova} 的后估计特征，因此可能对你没有什么兴趣。 如果你在旧的 do 文件中将 {help version_zh} 设置为小于 11，则不需要将 {cmd:anova} 的后估计命令转换为现代语法。 本帮助文件为希望调试或理解旧代码的人提供。 点击 {help anova_zh:这里} 以获取现代 {cmd:anova} 命令的帮助文件，并点击 {help anova_postestimation_zh:这里} 以获取现代 {cmd:anova} 后估计的帮助。]{rm}

{title:描述}

{pstd}
以下后估计命令在 {opt anova} 之后特别重要：

{synoptset 17}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb regress_postestimation##estathett:estat hettest}}检验异方差性{p_end}
{synopt:{helpb regress_postestimation##estatovt:estat ovtest}}Ramsey 回归规范误差检验，用于检测遗漏变量{p_end}
{synopt :{helpb regress postestimation##acprplot:acprplot}}增强的分量加残差图{p_end}
{synopt :{helpb regress postestimation##avplot:avplot}}添加变量图{p_end}
{synopt :{helpb regress postestimation##avplots:avplots}}在一张图中显示所有添加变量图{p_end}
{synopt :{helpb regress postestimation##cprplot:cprplot}}分量加残差图{p_end}
{synopt :{helpb regress postestimation##lvr2plot:lvr2plot}}杠杆与平方残差图{p_end}
{synopt :{helpb regress postestimation##rvfplot:rvfplot}}残差与拟合值图{p_end}
{synopt :{helpb regress postestimation##rvpplot:rvpplot}}残差与预测变量图{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
还提供以下标准后估计命令：

{synoptset 17}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
INCLUDE help post_adjust2
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_lincom
INCLUDE help post_linktest
{synopt:{helpb regress postestimation##predict:predict}}预测，残差，影响统计量和其他诊断度量{p_end}
{synopt:{helpb anova postestimation 10##test:test}}关于简单和复合线性假设的 Wald 检验{p_end}
{synoptline}
{p2colreset}{...}

{title:特殊兴趣的后估计命令}

{pstd}
除了常见的 {help estat_zh} 命令之外，{opt estat hettest} 和 {opt estat ovtest} 也可用。 语法与 {opt regress} 后的相同，除了 {opt estat hettest} 不允许 {opt rhs} 选项；详见 {manhelp regress_postestimation R:regress postestimation}。

{title:预测的语法}

{pstd}
{help predict_zh} 在 {opt anova} 后遵循与 {opt predict} 在 {opt regress} 后相同的语法，并可以提供预测，残差，标准化残差，学生化残差，残差的标准误差，预测的标准误差，投影（帽）矩阵的对角元素以及 Cook 的 D。 详见 {manhelp regress_postestimation R:regress postestimation}。

{marker test}{...}
{title:anova 后的检验语法}

    {opt te:st,} {opt test(matname)} [{opt m:test}[{opt (opt)}] {opt matvlc(matname)}] {right:语法 1  }

    {opt te:st} [{it:exp} {cmd:=} {it:exp}] [{cmd:,} {opt a:ccumulate} {opt not:est} {opt matvlc(matname)}] {right:语法 2  }

    {opt te:st} [{it:term} [{it:term ...}]] [{cmd:/} {it:term} [{it:term ...}]] [{cmd:,} {opt s:ymbolic}] {right:语法 3  }

    {opt te:st,} {opt showord:er} {right:语法 4  }

{p 4 6 2}
其中 {it:exp} 必须引用包含在 {opt _coeff[]}（或同义词 {opt _b[]}）中的系数，并且 {it:term} 按 {opt anova} 的定义。

{p2colset 5 17 19 2}{...}
{p2col :语法 1}测试涉及基础回归模型系数的表达式；你提供矩阵信息{p_end}
{p2col :语法 2}测试涉及基础回归模型系数的表达式；你提供方程信息{p_end}
{p2col :语法 3}测试效应并显示符号形式{p_end}
{p2col :语法 4}显示设计矩阵的基本顺序，这在构造 {it:matname} 参数时很有用{p_end}
{p2colreset}{...}

{title:anova 后的检验选项}

{phang}
{opt test(matname)} 是 {opt test} 第一个语法的必需项。 {it:matname} 的行指定要联合检验的 ANOVA 基础设计矩阵的线性组合。 列对应基础设计矩阵（如果常数未被抑制，则包含常数）。 {it:matname} 的列和行名称被忽略。

{pmore}
在包含测试的表格之前，会呈现 {opt test()} 选项施加的约束列表。 你应检查该表以验证你所施加的线性组合。 输入 {cmd:test, showorder} 允许你检查 ANOVA 设计矩阵列的顺序。

{phang}
{opt mtest}[{opt (opt)}] 指定为每个条件单独执行检验。 {it:opt} 指定了用于调整多重检验 p 值的方法。 {it:opt} 的有效值为

{p2colset 20 34 37 2}{...}
{p2col :{opt b:onferroni}}Bonferroni 方法{p_end}
{p2col :{opt h:olm}}Holm 方法{p_end}
{p2col :{opt s:idak}}Sidak 方法{p_end}
{p2col :{opt noadj:ust}}不进行调整{p_end}
{p2colreset}{...}

{pmore}
指定 {opt mtest} 而不带参数等同于 {cmd:mtest(noadjust)}。

{phang}
{opt matvlc(matname)}，一个程序员选项，保存参与一系列测试的线性组合的方差{c -}协方差矩阵。 对于检验 Lb = c，在 {it:matname} 中返回的是 LVL'，其中 V 是 b 的估计方差{c -}协方差矩阵。

{phang}
{opt accumulate} 允许将一个假设与之前测试的假设联合检验。

{phang}
{opt notest} 抑制输出。 此选项在你只对随后调用 {opt test, accumulate} 中指定的附加假设的联合检验感兴趣时很有用。

{phang}
{opt symbolic} 请求测试的符号形式而不是测试统计量。 当该选项与没有术语一起指定时（{opt test, statistic}），将显示可估计函数的符号形式。

{phang}
{opt showorder} 会导致 {opt test} 列出设计矩阵中每列的定义。 {opt showorder} 不能与其他任何选项一起使用。

{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. use http://www.stata-press.com/data/r10/rash}{p_end}
{phang2}{cmd:. version 10.1: anova response t / c|t / d|c|t / p|d|c|t /}{p_end}

{pstd}使用合并的 {cmd:c|t} 和 {cmd:d|c|t} 项的检验 {cmd:t}{p_end}
{phang2}{cmd:. test t / c|t d|c|t}

{pstd}用 {cmd:p|d|c|t} 检验合并的 {cmd:c|t} 和 {cmd:d|c|t} 项{p_end}
{phang2}{cmd:. test c|t d|c|t / p|d|c|t}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. use http://www.stata-press.com/data/r10/systolic}{p_end}
{phang2}{cmd:. version 10.1: anova systolic drug disease drug*disease}{p_end}

{pstd}检验 {cmd:drug} 的主要效应的符号形式{p_end}
{phang2}{cmd:. test drug, symbolic}

{pstd}检验第一种药物的系数是否等于第二种药物的系数{p_end}
{phang2}{cmd:. test _coef[drug[1]]=_coef[drug[2]]}

{pstd}计算线性预测{p_end}
{phang2}{cmd:. predict yhat}


{title:另见}

{psee}
手册:  {help 已经记录的内容}

{psee}
{space 2}帮助:
{manhelp anova_postestimation R:anova 后估计}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <anova_postestimation_10.sthlp>}