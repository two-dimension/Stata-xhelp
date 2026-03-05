{smcl}
{* *! version 1.3.6  19oct2017}{...}
{viewerdialog predict "dialog regres_p"}{...}
{viewerdialog test "dialog testanova"}{...}
{viewerdialog dfbeta "dialog dfbeta"}{...}
{viewerdialog estat "dialog anova_estat"}{...}
{viewerdialog acprplot "dialog acprplot"}{...}
{viewerdialog avplots "dialog avplot"}{...}
{viewerdialog cprplot "dialog cprplot"}{...}
{viewerdialog lvr2plot "dialog lvr2plot"}{...}
{viewerdialog rvfplot "dialog rvfplot"}{...}
{viewerdialog rvpplot "dialog rvpplot"}{...}
{vieweralsosee "[R] anova postestimation" "mansection R anovapostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] anova" "help anova_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress postestimation" "help regress_postestimation_zh"}{...}
{vieweralsosee "[R] regress postestimation diagnostic plots" "help regress_postestimation_plots_zh"}{...}
{viewerjumpto "Postestimation commands" "anova postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "anova_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "anova postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "anova postestimation##syntax_margins"}{...}
{viewerjumpto "test" "anova postestimation##syntax_test"}{...}
{viewerjumpto "Examples" "anova postestimation##examples"}{...}
{viewerjumpto "Video example" "anova postestimation##video"}
{help anova_postestimation:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[R] anova postestimation} {hline 2}}ANOVA 的事后估计工具
{p_end}
{p2col:}({mansection R anovapostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:事后估计命令}

{pstd}
在 {opt anova} 之后，以下事后估计命令特别值得关注：

{synoptset 17}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt :{helpb regress postestimation##syntax_dfbeta:dfbeta}}DFBETA 影响
	统计{p_end}
{synopt:{helpb regress_postestimation##estathett:estat hettest}}异方差性检验{p_end}
{synopt :{helpb regress postestimation##estatimtest:estat imtest}}信息
	矩阵检验{p_end}
{synopt:{helpb regress_postestimation##estatovt:estat ovtest}}Ramsey 回归
	规范错误检验以检验遗漏变量{p_end}
{synopt :{helpb regress postestimation##estatszroeter:estat szroeter}}Szroeter 的
	异方差性检验{p_end}
{synopt :{helpb regress postestimation##estatvif:estat vif}}自变量的方差膨胀
	因子{p_end}
{synopt :{helpb regress postestimation##syntax_estat_esize:estat esize}}eta 平方
	和 omega 平方效应大小{p_end}
{synopt :{helpb regress postestimation plots##rvfplot:rvfplot}}残差与拟合图{p_end}
{synopt :{helpb regress postestimation plots##avplot:avplot}}添加变量图{p_end}
{synopt :{helpb regress postestimation plots##avplots:avplots}}一张图中所有添加变量图{p_end}
{synopt :{helpb regress postestimation plots##cprplot:cprplot}}成分加残差图{p_end}
{synopt :{helpb regress postestimation plots##acprplot:acprplot}}增强成分加残差图{p_end}
{synopt :{helpb regress postestimation plots##rvpplot:rvpplot}}残差与预测变量图{p_end}
{synopt :{helpb regress postestimation plots##lvr2plot:lvr2plot}}杠杆与平方残差图{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准的事后估计命令也可以使用：

{synoptset 17}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_linktest
INCLUDE help post_lrtest
{synopt:{helpb regress_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt:{helpb regress postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
{synopt:{helpb anova postestimation##test:test}}Wald 测试简单和复合线性假设{p_end}
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R anovapostestimationRemarksandexamples:备注和示例}

{pstd}
上面的部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{title:预测}

{pstd}
在 {opt anova} 后的 {cmd:predict} 遵循与 {opt predict}
在 {opt regress} 后相同的语法，可以提供预测、残差、标准化残差、Studentized 残差、残差的标准误、预测的标准误、投影（帽子）矩阵的对角元素以及库克's D。详情见
{manhelp regress_postestimation R:regress postestimation}。


{marker syntax_margins}{...}
{title:margins}

{pstd}
在 {opt anova} 后的 {cmd:margins} 遵循与 {opt margins}
在 {opt regress} 后相同的语法。
见 {manhelp regress_postestimation R:regress postestimation} 了解详情。


{marker syntax_test}{...}
{marker test}{...}
{title:test}

    {title:测试的语法}

    {opt te:st,} {opt test(matname)} [{opt m:test}[{opt (opt)}] {opt matvlc(matname)}] {right:语法 a  }

    {opt te:st,} {opt showord:er} {right:语法 b  }

    {opt te:st} [{it:term} [{it:term ...}]] [{cmd:/} {it:term} [{it:term ...}]] [{cmd:,} {opt s:ymbolic}] {right:语法 c  }


{p2colset 5 17 19 2}{...}
{p2col :语法 a}涉及基本回归模型系数的测试表达式；你提供信息作为矩阵{p_end}
{p2col :语法 b}显示设计矩阵的基础顺序，这在构造 {it:matname} 参数的 {cmd:test()} 选项时非常有用{p_end}
{p2col :语法 c}测试效应并显示符号形式{p_end}
{p2colreset}{...}


{marker menu_test}{...}
    {title:测试的菜单}

{phang}
{bf:统计 > 线性模型及相关 > ANOVA/MANOVA >}
   {bf:在 ANOVA 之后测试线性假设}


    {title:测试的描述}

{pstd}
除了 {help test_zh} 的标准语法，{cmd:test} 在 {cmd:anova} 之后有三种额外允许的语法；见上文。{cmd:test} 执行涉及基本回归模型系数的表达式的 Wald 测试。可以进行简单和复合线性假设的测试。


{marker options_test}{...}
    {title:测试的选项}

{phang}
{opt test(matname)} 在语法 a 中是必需的。 {it:matname} 的行指定要联合测试的 ANOVA 设计矩阵的线性组合。列对应于基础设计矩阵（包括常数，如果没有被抑制）。 {it:matname} 的列和行名将被忽略。

{pmore}
{opt test()} 选项所施加的约束列在包含测试的表之前。你应该检查此表以验证你所应用的线性组合。输入 {cmd:test, showorder} 可以让你检查 ANOVA 设计矩阵中列的顺序。

{phang}
{opt mtest}[{opt (opt)}] 指定对每个条件分别进行测试。 {it:opt} 指定调整检验 p 值的方法。有效的 {it:opt} 值有：

{p2colset 20 34 37 2}{...}
{p2col :{opt b:onferroni}}Bonferroni 方法{p_end}
{p2col :{opt h:olm}}Holm 方法{p_end}
{p2col :{opt s:idak}}Sidak 方法{p_end}
{p2col :{opt noadj:ust}}不进行调整{p_end}
{p2colreset}{...}

{pmore}
不带参数指定 {opt mtest} 等同于 {cmd:mtest(noadjust)}。

{phang}
{opt matvlc(matname)}，程序员选项，将涉及测试的线性组合的方差-协方差矩阵保存到 {it:matname} 中。对于测试 Lb = c，在 {it:matname} 中返回的是 LVL'，其中 V 是估计的 b 的方差-协方差矩阵。

{phang}
{opt showorder} 使 {opt test} 列出设计矩阵中每一列的定义。 {opt showorder} 与任何其他选项不允许同时使用。

{phang}
{opt symbolic} 请求测试的符号形式而不是测试统计量。当此选项在没有术语时指定（{opt test, symbolic}），将显示可估计函数的符号形式。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse sewage}{p_end}
{phang2}{cmd:. anova particulate s / m|s / f|m|s / w|f|m|s /, dropemptycells}
{p_end}

{pstd}测试 {cmd:s} 与合并的 {cmd:m|s} 和 {cmd:f|m|s} 项{p_end}
{phang2}{cmd:. test s / m|s f|m|s}

{pstd}使用 {cmd:w|f|m|s} 测试合并的 {cmd:m|s} 和 {cmd:f|m|s} 项{p_end}
{phang2}{cmd:. test m|s f|m|s / w|f|m|s}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse systolic}{p_end}
{phang2}{cmd:. anova systolic drug disease drug#disease}{p_end}

{pstd}对 {cmd:drug} 的主要效应测试的符号形式{p_end}
{phang2}{cmd:. test drug, symbolic}

{pstd}测试第一个药物的系数是否等于第二个药物的系数{p_end}
{phang2}{cmd:. test 1.drug = 2.drug}

{pstd}计算线性预测{p_end}
{phang2}{cmd:. predict yhat}{p_end}

{pstd}计算 {cmd:drug} 的调整边际均值{p_end}
{phang2}{cmd:. margins drug, asbalanced}

{pstd}与上述相同，但考虑到细胞的不等样本量{p_end}
{phang2}{cmd:. margins drug}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse manuf, clear}

{pstd}进行三因素方差分析{p_end}
{phang2}{cmd:. anova yield temp##chem##method}

{pstd}计算 {cmd:temperature#method} 和 {cmd:method} 的预测边际{p_end}
{phang2}{cmd:. margins temperature#method method}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse t43}{p_end}
{phang2}{cmd:. tabdisp person drug, cellvar(score)}

{pstd}进行重复测量方差分析{p_end}
{phang2}{cmd:. anova score person drug, repeated(drug)}

{pstd}计算每种药物的预测边际平均响应时间{p_end}
{phang2}{cmd:. margins drug}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse bpchange}{p_end}
{phang2}{cmd:. anova bpchange dose##gender}{p_end}

{pstd}为每个 {cmd:dose} 和 {cmd:gender} 的组合估计血压的变化{p_end}
{phang2}{cmd:. margins dose#gender}{p_end}

{pstd}绘制 {cmd:margins} 的结果{p_end}
{phang2}{cmd:. marginsplot}{p_end}

{pstd}将交互效应分解为对比{p_end}
{phang2}{cmd:. contrast ar.dose#r.gender}{p_end}

{pstd}配对比较，使用 Tukey 方法调整多重比较{p_end}
{phang2}{cmd:. pwcompare dose#gender, mcompare(tukey) group sort}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse depression}{p_end}

{pstd}线性模型的效应大小在 {cmd:anova} 之后{p_end}
{phang2}{cmd:. anova qu1 c.age sex##race}{p_end}
{phang2}{cmd:. estat esize}{p_end}
{phang2}{cmd:. estat esize, level(90)}{p_end}
{phang2}{cmd:. estat esize, omega}{p_end}

    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=XaeStjh6n-A":Stata 中对比的介绍：单因素方差分析}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <anova_postestimation.sthlp>}