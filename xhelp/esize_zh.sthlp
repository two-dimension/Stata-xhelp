{smcl}
{* *! version 1.0.11  22mar2018}{...}
{viewerdialog "esize" "dialog esize"}{...}
{viewerdialog "esizei" "dialog esizei"}{...}
{vieweralsosee "[R] esize" "mansection R esize"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bitest" "help bitest_zh"}{...}
{vieweralsosee "[R] ci" "help ci_zh"}{...}
{vieweralsosee "[R] mean" "help mean_zh"}{...}
{vieweralsosee "[R] oneway" "help oneway_zh"}{...}
{vieweralsosee "[R] prtest" "help prtest_zh"}{...}
{vieweralsosee "[R] sdtest" "help sdtest_zh"}{...}
{vieweralsosee "[R] ttest" "help ttest_zh"}{...}
{viewerjumpto "Syntax" "esize_zh##syntax"}{...}
{viewerjumpto "Menu" "esize_zh##menu"}{...}
{viewerjumpto "Description" "esize_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "esize_zh##linkspdf"}{...}
{viewerjumpto "Options" "esize_zh##options"}{...}
{viewerjumpto "Examples" "esize_zh##examples"}{...}
{viewerjumpto "Video example" "esize_zh##video"}{...}
{viewerjumpto "Stored results" "esize_zh##results"}{...}
{viewerjumpto "References" "esize_zh##references"}
{help esize:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] esize} {hline 2}}基于均值比较的效应大小{p_end}
{p2col:}({mansection R esize:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
对两个独立样本的效应大小使用组别

{p 8 14 2}
{cmd:esize} {opt two:sample}
{varname}
{ifin}{cmd:,}
{opth by:(varlist:groupvar)}
[{it:{help esize##options_tbl:选项}}]


{pstd}
对两个独立样本的效应大小使用变量

{p 8 14 2}
{cmd:esize} {opt unp:aired}
{varname:1}
{cmd:==}
{varname:2}
{ifin}{cmd:,}
[{it:{help esize##options_tbl:选项}}]


{pstd}
对两个独立样本的效应大小的即时形式

{p 8 14 2}
{cmd:esizei}
{it:#obs1}
{it:#mean1}
{it:#sd1}
{it:#obs2}
{it:#mean2}
{it:#sd2}
[{cmd:,}
{it:{help esize##options_tbl:选项}}]


{pstd}
对ANOVA后F检验的效应大小的即时形式

{p 8 14 2}
{cmd:esizei}
{it:#df1}
{it:#df2}
{it:#F}
[{cmd:,} {opt l:evel(#)}]


{synoptset 16 tabbed}{...}
{marker options_tbl}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt:{opt coh:ensd}}报告Cohen的d ({help esize##C1988:1988}){p_end}
{synopt:{opt hed:gesg}}报告Hedges的g ({help esize##H1981:1981}){p_end}
{synopt:{opt gla:ssdelta}}报告Glass的Delta (Smith和Glass {help esize##G1977:1977}) 
	使用每组的标准差{p_end}
{synopt:{opt pbc:orr}}报告点双列相关系数 
	(Pearson {help esize##P1909:1909}){p_end}
{synopt:{opt all:}}报告所有效应大小的估计{p_end}
{synopt:{opt une:qual}}使用不等方差{p_end}
{synopt:{opt w:elch}}使用Welch（{help esize##W1947:1947}）近似{p_end}
{synopt:{opt l:evel(#)}}设置信赖水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{opt by}允许与{cmd:esize}一起使用；参见 {help by_zh:[D] by}.{p_end}


{marker menu}{...}
{title:菜单}

    {title:esize} 

{phang2}
{bf:统计 > 摘要、表格和检验 > 经典假设检验}
       {bf:> 基于均值比较的效应大小}

    {title:esizei}

{phang2}
{bf:统计 > 摘要、表格和检验 > 经典假设检验}
       {bf:> 效应大小计算器}


{marker description}{...}
{title:描述}

{pstd}
{opt esize} 计算比较两组连续变量均值差异的效应大小。在第一种形式中，{opt esize} 计算由 {it:{help varname_zh:groupvar}} 定义的两组的 {varname} 的均值差异的效应大小。在第二种形式中，{opt esize} 计算 {it:varname1} 和 {it:varname2} 之间的差异的效应大小，假设数据是独立的。

{pstd}
{opt esizei} 是 {opt esize} 的即时形式；参见 {help immed_zh}。
在第一种形式中，{opt esizei} 计算比较两组均值差异的效应大小。在第二种形式中，{opt esizei} 计算ANOVA后的F检验的效应大小。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R esizeQuickstart:快速开始}

        {mansection R esizeRemarksandexamples:备注和示例}

        {mansection R esizeMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth by:(varlist:groupvar)} 指定定义两个组的 {it:groupvar}，{opt esize} 将使用它来估算效应大小。不要将 {opt by()} 选项与 {cmd:by} 前缀混淆；你可以同时指定两者。

{phang}
{opt cohensd} 指定报告Cohen的d ({help esize##C1988:1988})。

{phang}
{opt hedgesg} 指定报告Hedges的g ({help esize##H1981:1981})。

{phang}
{opt glassdelta} 指定报告Glass的Delta
(Smith和Glass {help esize##G1977:1977})。

{phang}
{opt pbcorr} 指定报告点双列相关系数 
	(Pearson {help esize##P1909:1909})。

{phang}
{opt all} 指定报告所有效应大小的估计。默认是Cohen的d和Hedges的g。

{phang}
{opt unequal} 指定数据不被假设为具有相等方差。

{phang}
{opt welch} 指定检验的近似自由度使用Welch的公式
   ({help ttest##W1947:1947})而不是Satterthwaite的近似
   公式 ({help ttest##S1946:1946})，当指定了 {opt unequal} 时为默认值。指定 {opt welch} 意味着 {opt unequal}。

{phang}
{opt level(#)} 指定信赖区间的置信水平，作为百分比。默认值为 {cmd:level(95)} 或通过 
	{help set level} 设置。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse depression}{p_end}

{pstd}使用 {cmd:by()} 的两个独立样本的效应大小{p_end}
{phang2}{cmd:. esize twosample qu1, by(sex)}{p_end}

{pstd}按种族分类的两个独立样本的效应大小使用 {cmd:by()}{p_end}
{phang2}{cmd:. by race, sort: esize twosample qu1, by(sex) all}{p_end}

{pstd}估算效应大小的自助法置信区间{p_end}
{phang2}{cmd:. bootstrap r(d) r(g), reps(1000) nodots nowarn:}
        {cmd:esize twosample qu1, by(sex)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse fuel}{p_end}

{pstd}使用未配对的两个独立样本的效应大小{p_end}
{phang2}{cmd:. esize unpaired mpg1==mpg2}{p_end}

{pstd}基于Kline ({help esize##K2013:2013}, 表格4.2和4.3)的两均值比较的即时形式；
obs1=30, mean1=13, sd1=2.74, obs2=30, mean2=11, sd2=2.24{p_end}
{phang2}{cmd:. esizei 30 13 2.74 30 11 2.24}       

{pstd}基于Smithson ({help esize##S2001:2001}, 623)的ANOVA结果的即时形式；
df_num=4, df_den=50, F=4.2317{p_end}
{phang2}{cmd:. esizei 4 50 4.2317, level(90)}   

    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=h95_wu-OFY8":效应大小简介}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:esize} 和 {cmd:esizei} 比较两均值存储以下结果在
{cmd:r()}:

{synoptset 16 tabbed}{...}
{p2col 5 16 20 2: 标量}{p_end}
{synopt:{cmd:r(d)}}Cohen's d{p_end}
{synopt:{cmd:r(lb_d)}}Cohen's d的下置信界限{p_end}
{synopt:{cmd:r(ub_d)}}Cohen's d的上置信界限{p_end}
{synopt:{cmd:r(g)}}Hedges's g{p_end}
{synopt:{cmd:r(lb_g)}}Hedges's g的下置信界限{p_end}
{synopt:{cmd:r(ub_g)}}Hedges's g的上置信界限{p_end}
{synopt:{cmd:r(delta1)}}组1的Glass's Delta{p_end}
{synopt:{cmd:r(lb_delta1)}}组1的Glass's Delta的下置信界限{p_end}
{synopt:{cmd:r(ub_delta1)}}组1的Glass's Delta的上置信界限{p_end}
{synopt:{cmd:r(delta2)}}组2的Glass's Delta{p_end}
{synopt:{cmd:r(lb_delta2)}}组2的Glass's Delta的下置信界限{p_end}
{synopt:{cmd:r(ub_delta2)}}组2的Glass's Delta的上置信界限{p_end}
{synopt:{cmd:r(r_pb)}}点双列相关系数{p_end}
{synopt:{cmd:r(lb_r_pb)}}点双列相关系数的下置信界限{p_end}
{synopt:{cmd:r(ub_r_pb)}}点双列相关系数的上置信界限{p_end}
{synopt:{cmd:r(N_1)}}样本量 n_1{p_end}
{synopt:{cmd:r(N_2)}}样本量 n_2{p_end}
{synopt:{cmd:r(df_t)}}自由度{p_end}
{synopt:{cmd:r(level)}}置信水平{p_end}
{p2colreset}{...}


{pstd}
{cmd:esizei} 为ANOVA后的F检验存储以下结果在 {cmd:r()}:

{synoptset 16 tabbed}{...}
{p2col 5 16 20 2: 标量}{p_end}
{synopt:{cmd:r(eta2)}}η平方{p_end}
{synopt:{cmd:r(lb_eta2)}}η平方的下置信界限{p_end}
{synopt:{cmd:r(ub_eta2)}}η平方的上置信界限{p_end}
{synopt:{cmd:r(epsilon2)}}ε平方{p_end}
{synopt:{cmd:r(omega2)}}ω平方{p_end}
{synopt:{cmd:r(level)}}置信水平{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker C1988}{...}
{phang}
Cohen, J. 1988.
{it:行为科学的统计功效分析}. 第2版。
新泽西州希尔斯代尔：Erlbaum。

{marker H1981}{...}
{phang}
Hedges, L. V. 1981.
Glass效应大小估计量及相关估计量的分布理论。
{it:教育统计学杂志} 6: 107-128。

{marker K2013}{...}
{phang}
Kline, R. B. 2013.
{it:超越显著性检验：行为科学中的统计改革}。
华盛顿特区：美国心理学协会。

{marker P1909}{...}
{phang}
Pearson, K. 1909.
关于确定测量特征A和特征B之间相关关系的新方法，仅记录每个A等级中B超出（或未达到）某一强度的案例百分比。
{it:生物统计学} 7: 96-105。

{marker S1946}{...}
{phang}
Satterthwaite, F. E. 1946.
方差分量估计值的近似分布。
{it:生物统计公报} 2: 110-114。

{marker G1977}{...}
{phang}
Smith, M. L. 和 G. V. Glass. 1977.
心理治疗效果研究的元分析。  
{it:美国心理学家} 32: 752-760。

{marker S2001}{...}
{phang}
Smithson, M. 2001.
各种回归效应大小和参数的正确置信区间：非中心分布在计算区间中的重要性。
{it:教育与心理测量} 61: 605-632。

{marker W1947}{...}
{phang}
Welch, B. L. 1947.
当涉及几个不同总体方差时“学生”问题的概括。 {it:生物统计学} 34: 28-35。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <esize.sthlp>}