{smcl}
{* *! version 1.4.6  13may2019}{...}
{viewerdialog anova "dialog anova"}{...}
{vieweralsosee "[R] anova" "mansection R anova"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] anova postestimation" "help anova postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] contrast" "help contrast_zh"}{...}
{vieweralsosee "[R] icc" "help icc_zh"}{...}
{vieweralsosee "[R] loneway" "help loneway_zh"}{...}
{vieweralsosee "[MV] manova" "help manova_zh"}{...}
{vieweralsosee "[R] oneway" "help oneway_zh"}{...}
{vieweralsosee "[PSS-2] power oneway" "help power oneway"}{...}
{vieweralsosee "[PSS-2] power repeated" "help power repeated"}{...}
{vieweralsosee "[PSS-2] power twoway" "help power twoway"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[SEM] sem" "help sem_zh"}{...}
{viewerjumpto "Syntax" "anova_zh##syntax"}{...}
{viewerjumpto "Menu" "anova_zh##menu"}{...}
{viewerjumpto "Description" "anova_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "anova_zh##linkspdf"}{...}
{viewerjumpto "Options" "anova_zh##options"}{...}
{viewerjumpto "Remarks" "anova_zh##remarks"}{...}
{viewerjumpto "Examples" "anova_zh##examples"}{...}
{viewerjumpto "Video examples" "anova_zh##video"}{...}
{viewerjumpto "Stored results" "anova_zh##results"}
{help anova:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] anova} {hline 2}}方差分析与协方差分析
{p_end}
{p2col:}({mansection R anova:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:anova}
{varname}
[{it:termlist}]
{ifin}
[{it:{help anova##weight:权重}}]
[{cmd:,} {it:options}]

{pstd}
其中 {it:termlist} 是一个 {help fvvarlist_zh:因子变量列表}，具有以下附加功能：

{phang2}
o  变量被假定为分类变量；使用 {cmd:c.} 因子变量运算符可以重写此假定。
{p_end}
{phang2}
o  {cmd:|} 符号（表示嵌套）可以用在 {cmd:#} 符号（表示交互作用） 的位置。
{p_end}
{phang2}
o  {cmd:/} 符号允许出现在一个术语之后，表示后面的术语是前面术语的误差项。

{synoptset 23 tabbed}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt:{opth rep:eated(varlist)}}{it:term}中作为重复测量变量的变量{p_end}
{synopt:{opt p:artial}}使用部分（或边际）平方和{p_end}
{synopt:{opt se:quential}}使用顺序平方和{p_end}
{synopt:{opt nocons:tant}}抑制常数项{p_end}
{synopt:{opt dropemp:tycells}}从设计矩阵中去掉空单元{p_end}

{syntab:高级模型}
{synopt:{opt bse(term)}}重复测量ANOVA中的被试间误差项{p_end}
{synopt:{opth bseunit(varname)}}表示被试间误差项中最低单位的变量{p_end}
{synopt:{opth group:ing(varname)}}用于计算合并协方差矩阵的分组变量{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt bootstrap}、{opt by}、{opt fp}、{opt jackknife} 和 {opt statsby} 可以使用；参见 {help prefix_zh}。
{p_end}
{p 4 6 2} 权重不允许与 {help bootstrap_zh} 前缀一起使用。{p_end}
{p 4 6 2}{cmd:aweight}s 不允许与 {help jackknife_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt aweight}s 和 {opt fweight}s 是允许的；见 {help weight_zh}。
{p_end}
{p 4 6 2}
参见 {manhelp anova_postestimation R:anova postestimation} 获取估计后可用的特性。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型及相关 > ANOVA/MANOVA >}
      {bf:方差分析与协方差分析}


{marker description}{...}
{title:描述}

{pstd}
{opt anova} 命令用于拟合方差分析（ANOVA）和协方差分析（ANCOVA）模型，适用于平衡与不平衡设计，包括缺失单元的设计；用于重复测量ANOVA；以及用于因子型、嵌套或混合设计。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R anovaQuickstart:快速开始}

        {mansection R anovaRemarksandexamples:备注与示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth repeated(varlist)} 指定在 {it:term} 中的分类变量名，这些变量将在重复测量ANOVA或ANCOVA中处理为重复测量变量。

{phang}
{opt partial} 使用部分（或边际）平方和显示ANOVA表。此设置是默认值。另见 {opt sequential} 选项。

{phang}
{opt sequential} 使用顺序平方和显示ANOVA表。

{phang}
{opt noconstant} 在ANOVA或回归模型中抑制常数项（截距）。

{phang}
{opt dropemptycells} 从设计矩阵中去掉空单元。如果 {cmd:c(emptycells)} 设置为 {cmd:keep}（参见 {helpb set emptycells}），此选项在运行ANOVA模型之前暂时将其重置为 {cmd:drop}。如果 {cmd:c(emptycells)} 已经设置为 {cmd:drop}，此选项不执行任何操作。

{dlgtab:高级模型}

{phang}
{opt bse(term)} 指定重复测量ANOVA中的被试间误差项。仅在少数情况需要此选项，当 {opt anova} 命令无法自动确定被试间误差项时需要此选项。

{phang}
{opth bseunit(varname)} 指定重复测量ANOVA中的被试间误差项中最低单位的变量。由于 {opt anova} 命令会自动选择被试间误差项中列出的第一个变量，因此此选项在很少需要。

{phang}
{opth grouping(varname)} 指定一个变量，用于确定哪些观测值在计算合并协方差矩阵时被归为一组。因为 {opt anova} 命令会自动选择除了第一个变量（或在 {opt bseunit()} 选项中指定的变量）之外的所有变量的组合作为默认的分组合观测值，因此此选项很少需要。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:anova} 使用最小二乘法拟合被称为ANOVA或ANCOVA的线性模型（下文简称ANOVA模型）。

{pstd}
如果您想拟合单因素ANOVA模型，可以找到 {help oneway_zh} 或 {help loneway_zh} 命令更为便利。如果您对MANOVA或MANCOVA感兴趣，请参见 {help manova_zh}。

{pstd}
{help regress_zh} 命令用于拟合与使用 {cmd:anova} 命令拟合的ANOVA模型对应的基础回归模型。 在 {cmd:anova} 之后输入 {cmd:regress} 可以查看上一轮 {cmd:anova} 的回归模型的系数、标准误差等。

{pstd}
结构方程模型提供了一种更通用的框架来拟合ANOVA模型；参见
{mansection SEM sem:{it:Stata 结构方程模型参考手册}}。


{marker examples}{...}
{title:示例}

{pstd}单因素ANOVA{p_end}
{phang2}{cmd:. webuse systolic}{p_end}
{phang2}{cmd:. anova systolic drug}{p_end}

{pstd}双因素ANOVA{p_end}
{phang2}{cmd:. anova systolic drug disease}{p_end}

{pstd}双因素因子ANOVA{p_end}
{phang2}{cmd:. anova systolic drug disease drug#disease}{p_end}

{pstd}或者更简单{p_end}
{phang2}{cmd:. anova systolic drug##disease}{p_end}

{pstd}三因素因子ANOVA{p_end}
{phang2}{cmd:. webuse manuf}{p_end}
{phang2}{cmd:. anova yield temp chem temp#chem meth temp#meth chem#meth temp#chem#meth}{p_end}

{pstd}或者更简单{p_end}
{phang2}{cmd:. anova yield temp##chem##meth}{p_end}

{pstd}ANCOVA{p_end}
{phang2}{cmd:. webuse census2}{p_end}
{phang2}{cmd:. quietly summarize age}{p_end}
{phang2}{cmd:. generate mage = age - r(mean)}{p_end}
{phang2}{cmd:. anova drate region c.mage region#c.mage}{p_end}

{pstd}嵌套ANOVA{p_end}
{phang2}{cmd:. webuse machine, clear}{p_end}
{phang2}{cmd:. anova output machine / operator|machine /, dropemptycells}{p_end}

{pstd}分割区 ANOVA{p_end}
{phang2}{cmd:. webuse reading}{p_end}
{phang2}{cmd:. anova score prog / class|prog skill prog#skill / class#skill|prog / group|class#skill|prog /, dropemptycells}{p_end}

{pstd}重复测量ANOVA{p_end}
{phang2}{cmd:. webuse t43}{p_end}
{phang2}{cmd:. anova score person drug, repeated(drug)}{p_end}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=Kb9WG4o9zLk":Stata中的协方差分析}

{phang}
{browse "http://www.youtube.com/watch?v=3g1Yj7Vd0mE":Stata中的双因素ANOVA}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:anova} 存储以下内容在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(mss)}}模型平方和{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(rss)}}残差平方和{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(r2)}}R平方{p_end}
{synopt:{cmd:e(r2_a)}}调整后的R平方{p_end}
{synopt:{cmd:e(F)}}F统计量{p_end}
{synopt:{cmd:e(rmse)}}均方根误差{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}对数似然，只有常数模型{p_end}
{synopt:{cmd:e(ss_}{it:#}{cmd:)}}术语 {it:#} 的平方和{p_end}
{synopt:{cmd:e(df_}{it:#}{cmd:)}}术语 {it:#} 的分子自由度{p_end}
{synopt:{cmd:e(ssdenom_}{it:#}{cmd:)}}术语 {it:#} 的分母平方和（当使用非残差误差时）{p_end}
{synopt:{cmd:e(dfdenom_}{it:#}{cmd:)}}术语 {it:#} 的分母自由度（当使用非残差误差时）{p_end}
{synopt:{cmd:e(F_}{it:#}{cmd:)}}术语 {it:#} 的F统计量（如果计算过）{p_end}
{synopt:{cmd:e(N_bse)}}被试间误差项的水平数量{p_end}
{synopt:{cmd:e(df_bse)}}被试间误差项的自由度{p_end}
{synopt:{cmd:e(box}{it:#}{cmd:)}}重复变量的特定组合的Box的保守epsilon（仅限于 {cmd:repeated()}）{p_end}
{synopt:{cmd:e(gg}{it:#}{cmd:)}}重复变量的特定组合的Greenhouse-Geisser epsilon（仅限于 {cmd:repeated()}）{p_end}
{synopt:{cmd:e(hf}{it:#}{cmd:)}}重复变量的特定组合的Huynh-Feldt epsilon（仅限于 {cmd:repeated()}）{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:anova}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(varnames)}}右侧变量的名称{p_end}
{synopt:{cmd:e(term_}{it:#}{cmd:)}}术语 {it:#}{p_end}
{synopt:{cmd:e(errorterm_}{it:#}{cmd:)}}术语 {it:#} 的误差项（当使用非残差误差时）{p_end}
{synopt:{cmd:e(sstype)}}平方和类型； {cmd:sequential} 或 {cmd:partial}{p_end}
{synopt:{cmd:e(repvars)}}重复变量的名称（仅限于 {cmd:repeated()}）{p_end}
{synopt:{cmd:e(repvar}{it:#}{cmd:)}}特定组合的重复变量名称（仅限于 {cmd:repeated()}）{p_end}
{synopt:{cmd:e(model)}}{cmd:ols}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(Srep)}}基于重复测量的协方差矩阵（仅限于 {cmd:repeated()}）{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <anova.sthlp>}