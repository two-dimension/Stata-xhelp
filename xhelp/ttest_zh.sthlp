{smcl}
{* *! version 1.1.26  19oct2017}{...}
{viewerdialog "ttest" "dialog ttest"}{...}
{viewerdialog "ttesti" "dialog ttesti"}{...}
{vieweralsosee "[R] ttest" "mansection R ttest"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bitest" "help bitest_zh"}{...}
{vieweralsosee "[R] ci" "help ci_zh"}{...}
{vieweralsosee "[R] esize" "help esize_zh"}{...}
{vieweralsosee "[MV] hotelling" "help hotelling"}{...}
{vieweralsosee "[R] mean" "help mean_zh"}{...}
{vieweralsosee "[R] oneway" "help oneway_zh"}{...}
{vieweralsosee "[R] prtest" "help prtest_zh"}{...}
{vieweralsosee "[R] sdtest" "help sdtest_zh"}{...}
{vieweralsosee "[R] ztest" "help ztest_zh"}{...}
{viewerjumpto "Syntax" "ttest_zh##syntax"}{...}
{viewerjumpto "Menu" "ttest_zh##menu"}{...}
{viewerjumpto "Description" "ttest_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ttest_zh##linkspdf"}{...}
{viewerjumpto "Options" "ttest_zh##options"}{...}
{viewerjumpto "Examples" "ttest_zh##examples"}{...}
{viewerjumpto "Video examples" "ttest_zh##video"}{...}
{viewerjumpto "Stored results" "ttest_zh##results"}{...}
{viewerjumpto "References" "ttest_zh##references"}
{help ttest:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] ttest} {hline 2}}t 检验（均值比较检验）{p_end}
{p2col:}({mansection R ttest:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
单样本 t 检验

{p 8 14 2}
{cmd:ttest}
{varname}
{cmd:==}
{it:#}
{ifin}
[{cmd:,} {opt l:evel(#)}]


{pstd}
双样本 t 检验 使用组别

{p 8 14 2}
{cmd:ttest}
{varname}
{ifin}
{cmd:,}
{opth by:(varlist:groupvar)}
[{it:{help ttest##options1:选项1}}]


{pstd}
双样本 t 检验 使用变量

{p 8 14 2}
{cmd:ttest}
{varname:1}
{cmd:==}
{varname:2}
{ifin}{cmd:,}
{opt unp:aired}
[{opt une:qual}
{opt w:elch}
{opt l:evel(#)}]


{pstd}
配对 t 检验

{p 8 14 2}
{cmd:ttest}
{varname:1}
{cmd:==}
{varname:2}
{ifin}
[{cmd:,} {opt l:evel(#)}]


{pstd}
单样本 t 检验的即时形式

{p 8 14 2}
{cmd:ttesti}
{it:#obs}
{it:#mean}
{it:#sd}
{it:#val}
[{cmd:,}
{opt l:evel(#)}]


{pstd}
双样本 t 检验的即时形式

{p 8 14 2}
{cmd:ttesti}
{it:#obs1}
{it:#mean1}
{it:#sd1}
{it:#obs2}
{it:#mean2}
{it:#sd2}
[{cmd:,}
{it:{help ttest##options2:选项2}}]


{synoptset 16 tabbed}{...}
{marker options1}{...}
{synopthdr:选项1}
{synoptline}
{syntab:主}
{p2coldent:* {opth by:(varlist:groupvar)}}定义组的变量{p_end}
{synopt:{opt une:qual}}非配对数据具有不等方差{p_end}
{synopt:{opt w:elch}}使用 Welch 的近似方法{p_end}
{synopt:{opt l:evel(#)}}设置信心水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}* {opt by(groupvar)} 是必需的。{p_end}

{marker options2}{...}
{synopthdr:选项2}
{synoptline}
{syntab:主}
{synopt:{opt une:qual}}非配对数据具有不等方差{p_end}
{synopt:{opt w:elch}}使用 Welch 的近似方法{p_end}
{synopt:{opt l:evel(#)}}设置信心水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}

{phang}
{opt by} 允许与 {cmd:ttest} 一起使用；请参阅 {manhelp by D}。


{marker menu}{...}
{title:菜单}

    {title:ttest}

{phang2}
{bf:统计 > 摘要、表格和检验 > 经典假设检验}
       {bf:> t 检验（均值比较检验）}

    {title:ttesti}

{phang2}
{bf:统计 > 摘要、表格和检验 > 经典假设检验}
       {bf:> t 检验计算器}


{marker description}{...}
{title:描述}

{pstd}
{opt ttest} 执行均值相等的 t 检验。
此检验可以针对假设的总体均值进行单样本检验。可以对成对和非成对数据进行双样本检验。在非成对的双样本情况下，可以选择放宽方差相等的假设。

{pstd}
{opt ttesti} 是 {opt ttest} 的即时形式；参见 {help immed_zh}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R ttestQuickstart:快速开始}

        {mansection R ttestRemarksandexamples:备注和示例}

        {mansection R ttestMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{opth by:(varlist:groupvar)} 指定 {it:groupvar}，它定义了 {opt ttest} 将用于检验均值相等的两个组。指定 {opt by(groupvar)} 意味着进行非配对 (双样本) t 检验。不要将 {opt by()} 选项与 {cmd:by} 前缀混淆；可以同时指定两者。

{phang}
{opt unpaired} 指定数据被视为非配对。{opt unpaired} 选项用于比较的两个值集在不同变量中时。

{phang}
{opt unequal} 指定非配对数据不被假定为具有相等的方差。

{phang}
{opt welch} 指定检验的近似自由度通过 Welch 公式
（{help ttest##W1947:1947}）获得，而不是采用默认的 Satterthwaite 近似公式
（{help ttest##S1946:1946），在指定了 {opt unequal} 时。指定 {opt welch} 意味着 {opt unequal}。

{phang}
{opt level(#)} 指定置信区间的置信水平，作为百分比。默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置的值。


{marker examples}{...}
{title:示例}

    {cmd:. sysuse auto}             (设置)
    {cmd:. ttest mpg==20}           (单样本 t 检验)

    {cmd:. webuse fuel3}            (设置)
    {cmd:. ttest mpg, by(treated)}  (使用组的双样本 t 检验)

    {cmd:. webuse fuel}             (设置)
    {cmd:. ttest mpg1==mpg2}        (使用变量的双样本 t 检验)

                              (不需要设置)
    {cmd:. ttesti 24 62.6 15.8 75}  (即时形式；n=24，m=62.6，sd=15.8；
                                    检验 m=75)

{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=HwzCyqW-0dc":Stata中的单样本 t 检验}

{phang}
{browse "http://www.youtube.com/watch?v=by4c3h3WXQc":Stata中的两个独立样本的 t 检验}

{phang}
{browse "http://www.youtube.com/watch?v=GiDSnufmZgI":Stata中的两个配对样本的 t 检验}

{phang}
{browse "http://www.youtube.com/watch?v=BfLw-AhXH-8":单样本 t 检验计算器}

{phang}
{browse "http://www.youtube.com/watch?v=6cQwbvvkFO8":双样本 t 检验计算器}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:ttest} 和 {cmd:ttesti} 在 {cmd:r()} 中存储以下结果：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N_1)}}样本大小 n_1{p_end}
{synopt:{cmd:r(N_2)}}样本大小 n_2{p_end}
{synopt:{cmd:r(p_l)}}下限单边 p 值{p_end}
{synopt:{cmd:r(p_u)}}上限单边 p 值{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}
{synopt:{cmd:r(se)}}标准误差估计{p_end}
{synopt:{cmd:r(t)}}t 统计量{p_end}
{synopt:{cmd:r(sd_1)}}第一个变量的标准差{p_end}
{synopt:{cmd:r(sd_2)}}第二个变量的标准差{p_end}
{synopt:{cmd:r(sd)}}合并标准差{p_end}
{synopt:{cmd:r(mu_1)}}x_1 平均值，即总体 1 的均值{p_end}
{synopt:{cmd:r(mu_2)}}x_2 平均值，即总体 2 的均值{p_end}
{synopt:{cmd:r(df_t)}}自由度{p_end}
{synopt:{cmd:r(level)}}置信水平{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker S1946}{...}
{phang}
Satterthwaite, F. E. 1946.
方差成分估计的近似分布。
{it:生物统计学公报} 2: 110-114。

{marker W1947}{...}
{phang}
Welch, B. L. 1947.
在涉及多个不同总体方差的情况下对“学生”问题的推广。{it:生物统计学} 34: 28-35。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ttest.sthlp>}