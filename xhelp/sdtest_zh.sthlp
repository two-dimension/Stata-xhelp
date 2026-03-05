{smcl}
{* *! version 1.1.18  19oct2017}{...}
{viewerdialog "sdtest" "dialog sdtest"}{...}
{viewerdialog "sdtesti" "dialog sdtesti"}{...}
{viewerdialog robvar "dialog robvar"}{...}
{vieweralsosee "[R] sdtest" "mansection R sdtest"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ttest" "help ttest_zh"}{...}
{viewerjumpto "Syntax" "sdtest_zh##syntax"}{...}
{viewerjumpto "Menu" "sdtest_zh##menu"}{...}
{viewerjumpto "Description" "sdtest_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sdtest_zh##linkspdf"}{...}
{viewerjumpto "Options" "sdtest_zh##options"}{...}
{viewerjumpto "Examples" "sdtest_zh##examples"}{...}
{viewerjumpto "Stored results" "sdtest_zh##results"}{...}
{viewerjumpto "References" "sdtest_zh##references"}
{help sdtest:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] sdtest} {hline 2}}方差比较检验{p_end}
{p2col:}({mansection R sdtest:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
单样本方差比较检验

{p 8 16 2}
{opt sdtest}{space 2}{varname}
{cmd:==}
{it:#}
{ifin}
[{cmd:,} {opt l:evel(#)}]


{phang}
使用组的双样本方差比较检验

{p 8 16 2}
{opt sdtest}{space 2}{varname}
{ifin}
{cmd:,} {opth by:(varlist:groupvar)}
[{opt l:evel(#)}]


{phang}
使用变量的双样本方差比较检验

{p 8 16 2}
{opt sdtest}{space 2}{varname:1}
{cmd:==}
{varname:2}
{ifin}
[{cmd:,} {opt l:evel(#)}]


{phang}
单样本方差比较检验的即时形式

{p 8 16 2}
{cmd:sdtesti}
{it:#obs}
{c -(}{it:#mean} | {cmd:.} {c )-}
{it:#sd}
{it:#val}
[{cmd:,} {opt l:evel(#)}]


{phang}
双样本方差比较检验的即时形式

{p 8 16 2}
{cmd:sdtesti}
{it:#obs1}
{c -(}{it:#mean1} | {cmd:.} {c )-}
{it:#sd1}
{it:#obs2}
{c -(}{it:#mean2} | {cmd:.} {c )-}
{it:#sd2}
[{cmd:,} {opt l:evel(#)}]


{phang}
适用于方差相等的稳健检验

{p 8 16 2}
{cmd:robvar}{space 2}{varname}
{ifin}
{cmd:,} {opth by:(varlist:groupvar)}


{pmore}
{cmd:by} 可以与 {opt sdtest} 和 {opt robvar} 一起使用；参见 {manhelp by D}。


{marker menu}{...}
{title:菜单}

    {title:sdtest}

{phang2}
{bf:统计 > 摘要、表格和检验 >}
       {bf:经典假设检验 > 方差比较检验}

    {title:sdtesti}

{phang2}
{bf:统计 > 摘要、表格和检验 >}
        {bf:经典假设检验 >}
        {bf:方差比较检验计算器}

    {title:robvar}

{phang2}
{bf:统计 > 摘要、表格和检验 >}
     {bf:经典假设检验 > 稳健方差相等检验}


{marker description}{...}
{title:描述}

{pstd}
{opt sdtest} 对标准差（方差）的相等性进行检验。在第一种形式中，{opt sdtest} 检验 {varname} 的标准差是否为 {it:#}。在第二种形式中，{opt sdtest} 使用由 {it:{help varlist_zh:groupvar}} 定义的两个组的标准差进行相同的检验。在第三种形式中，{opt sdtest} 检验 {it:varname1} 和 {it:varname2} 的标准差是否相同。

{pstd}
{opt sdtesti} 是 {opt sdtest} 的即时形式；见 {help immed_zh}。

{pstd}
传统的F检验对方差的齐性和 Bartlett 对 K 个样本的此检验的一般化对数据来自潜在高斯分布的假设较为敏感。有关示例，请参见 {help sdtest##MM1990:Markowski 和 Markowski (1990)}。
{help sdtest##L1960:Levene (1960)} 提出了方差相等的检验统计量，该统计量在非正态性下被发现是稳健的。然后
{help sdtest##BF1974:Brown 和 Forsythe (1974)} 提出了 Levene 检验统计量的替代形式，这些形式使用比均值更稳健的中央趋势估计量。证明这些重新公式化比 Levene 的检验在处理偏斜分布时更稳健。

{pstd}
{opt robvar} 报告方差相等的 Levene 稳健检验统计量 (W_0) 在由 {it:groupvar} 定义的组之间，以及两种提议的统计量，这些统计量在 Levene 的公式中用替代位置估计量替代均值。第一个替代 (W_50) 用中位数替代均值。第二个替代用 10% 裁剪均值替代均值 (W_10)。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R sdtestQuickstart:快速入门}

        {mansection R sdtestRemarksandexamples:备注和示例}

        {mansection R sdtestMethodsandformulas:方法与公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt level(#)} 指定平均数的置信区间的置信水平，以百分比表示。默认值为 {cmd:level(95)}，或由 {helpb set level} 设置。

{phang}
{opth by:(varlist:groupvar)} 指定定义要比较的组的 {it:groupvar}。对于 {opt sdtest}，应有两个组；但对于 {opt robvar}，可以有多个组。请不要混淆 {opt by()} 选项与 {opt by} 前缀；两者都可以指定。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}

{pstd}
检验 {cmd:mpg} 的标准差是否为 5{p_end}
{phang2}{cmd:. sdtest mpg == 5}

    {hline}
    设置
{phang2}{cmd:. webuse fuel}

{pstd} 检验 {cmd:mpg1} 和 {cmd:mpg2} 的标准差是否相同{p_end}
{phang2}{cmd:. sdtest mpg1 == mpg2}

    {hline}
    设置
{phang2}{cmd:. webuse fuel2}{p_end}

{pstd}
检验 {cmd:treat} 的两个组的标准差是否相同{p_end}
{phang2}{cmd:. sdtest mpg, by(treat)}

{pstd}
检验 sd=6 时观察到的 sd=6.5，n=75{p_end}
{phang2}{cmd:. sdtesti 75 . 6.5 6}

{pstd}
检验 sd1=sd2 时观察到 n1=75，sd1=6.5，n2=65，和 sd2= 7.5{p_end}
{phang2}{cmd:. sdtesti 75 . 6.5 65 . 7.5}

    {hline}
    设置
{phang2}{cmd:. webuse stay}

{pstd}
检验住院时长是否因性别而异{p_end}
{phang2}{cmd:. robvar lengthstay, by(sex)}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:sdtest} 和 {cmd:sdtesti} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察值数量{p_end}
{synopt:{cmd:r(p_l)}}下侧单边p值{p_end}
{synopt:{cmd:r(p_u)}}上侧单边p值{p_end}
{synopt:{cmd:r(p)}}双侧p值{p_end}
{synopt:{cmd:r(F)}}F统计量{p_end}
{synopt:{cmd:r(sd)}}标准差{p_end}
{synopt:{cmd:r(sd_1)}}第一个变量的标准差{p_end}
{synopt:{cmd:r(sd_2)}}第二个变量的标准差{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}
{synopt:{cmd:r(df_1)}}分子自由度{p_end}
{synopt:{cmd:r(df_2)}}分母自由度{p_end}
{synopt:{cmd:r(chi2)}}卡方{p_end}

{pstd}
{cmd:robvar} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察值数量{p_end}
{synopt:{cmd:r(w50)}}Brown 和 Forsythe 的 F 统计量 (中位数){p_end}
{synopt:{cmd:r(p_w50)}}Brown 和 Forsythe 的 p 值{p_end}
{synopt:{cmd:r(w0)}}Levene 的 F 统计量{p_end}
{synopt:{cmd:r(p_w0)}}Levene 的 p 值{p_end}
{synopt:{cmd:r(w10)}}Brown 和 Forsythe 的 F 统计量 (裁剪均值){p_end}
{synopt:{cmd:r(p_w10)}}Brown 和 Forsythe 的 p 值 (裁剪均值){p_end}
{synopt:{cmd:r(df_1)}}分子自由度{p_end}
{synopt:{cmd:r(df_2)}}分母自由度{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker BF1974}{...}
{phang}
Brown, M. B. 和 A. B. Forsythe. 1974. 方差相等的稳健检验。 {it:美国统计协会杂志} 69: 364-367。

{marker L1960}{...}
{phang}
Levene, H. 1960. 方差相等的稳健检验。在 {it:概率与统计的贡献：致哈尔德·霍丁的论文集}，编：I. Olkin, S. G. Ghurye, W. Hoeffding, W. G. Madow, 和 H. B. Mann, 278-292。加利福尼亚州门洛帕克：斯坦福大学出版社。

{marker MM1990}{...}
{phang}
Markowski, C. A. 和 E. P. Markowski. 1990.
初步方差检验的有效性条件。
{it:美国统计学家} 44: 322-326。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sdtest.sthlp>}