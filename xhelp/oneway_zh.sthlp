{smcl}
{* *! version 1.1.12  20aug2018}{...}
{viewerdialog oneway "dialog oneway"}{...}
{vieweralsosee "[R] oneway" "mansection R oneway"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] anova" "help anova_zh"}{...}
{vieweralsosee "[R] loneway" "help loneway_zh"}{...}
{vieweralsosee "[PSS-2] power oneway" "help power oneway"}{...}
{viewerjumpto "Syntax" "oneway_zh##syntax"}{...}
{viewerjumpto "Menu" "oneway_zh##menu"}{...}
{viewerjumpto "Description" "oneway_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "oneway_zh##linkspdf"}{...}
{viewerjumpto "Options" "oneway_zh##options"}{...}
{viewerjumpto "Examples" "oneway_zh##examples"}{...}
{viewerjumpto "Video example" "oneway_zh##video"}{...}
{viewerjumpto "Stored results" "oneway_zh##results"}
{help oneway:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] oneway} {hline 2 }}单因素方差分析{p_end}
{p2col:}({mansection R oneway:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmdab:on:eway}
{it:响应变量}
{it:因素变量}
{ifin}
[{it:{help oneway##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 16 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{synopt :{opt b:onferroni}}Bonferroni 多重比较检验{p_end}
{synopt :{opt sc:heffe}}Scheffe 多重比较检验{p_end}
{synopt :{opt si:dak}}Sidak 多重比较检验{p_end}
{synopt :{opt t:abulate}}生成汇总表{p_end}
{synopt :[{cmdab:no:}]{opt me:ans}}包含或抑制均值；
默认是 {opt means}{p_end}
{synopt :[{cmdab:no:}]{opt st:andard}}包含或抑制标准差；
默认是 {opt standard}{p_end}
{synopt :[{cmdab:no:}]{opt f:req}}包含或抑制频数；
默认是 {opt freq}{p_end}
{synopt :[{cmdab:no:}]{opt o:bs}}包含或抑制观察数；
如果数据加权则默认是 {opt obs}{p_end}
{synopt :{opt noa:nova}}抑制 ANOVA 表的显示{p_end}
{synopt :{opt nol:abel}}显示数字代码，而非标签{p_end}
{synopt :{opt w:rap}}不换行宽表{p_end}
{synopt :{opt mi:ssing}}将缺失值视为类别{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt by} 是允许的；请参阅 {manhelp by D}.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt aweight}s 和 {opt fweight}s 是允许的；请参阅 {help weight_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型及相关 > ANOVA/MANOVA > 单因素 ANOVA}


{marker description}{...}
{title:描述}

{pstd}
{opt oneway} 命令报告单因素方差分析 (ANOVA) 模型，并执行多重比较检验。

{pstd}
如果您希望拟合更复杂的 ANOVA 布局或想要拟合协方差分析 (ANOCOVA) 模型，请参阅 {manhelp anova R}。

{pstd}
有关在字符串变量上拟合 ANOVA 模型的示例，请参阅 {manhelp encode D}。

{pstd}
有关具有稍微不同功能的替代 {opt oneway} 命令，请参阅 {manhelp loneway R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R onewayQuickstart:快速入门}

        {mansection R onewayRemarksandexamples:备注和示例}

        {mansection R onewayMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}{opt bonferroni} 报告 Bonferroni 多重比较检验的结果。

{phang}{opt scheffe} 报告 Scheffe 多重比较检验的结果。

{phang}{opt sidak} 报告 Sidak 多重比较检验的结果。

{phang}{marker tabulate}{opt tabulate} 生成 {it:响应变量} 按 {it:因素变量} 水平的汇总统计表。该表包括均值、标准差、频数，且如果数据加权，还包括观察数。可以通过使用 [{opt no}]{opt means}、[{opt no}]{opt standard}、[{opt no}]{opt freq} 和 [{opt no}]{opt obs} 选项来包括或抑制该表的个别元素。例如，输入

{pin2}{cmd:oneway response factor, tabulate means standard}

{pmore}生成仅包含均值和标准差的汇总表。您还可以通过输入达到相同的结果

{pin2}{cmd:oneway response factor, tabulate nofreq}

{phang}
[{opt no}]{opt means} 仅包含或抑制由 {opt tabulate} 选项生成的表中的均值。
请参阅上面的 {helpb oneway##tabulate:tabulate}。

{phang}
[{opt no}]{opt standard} 仅包含或抑制由 {opt tabulate} 选项生成的表中的标准差。
请参阅上面的 {helpb oneway##tabulate:tabulate}。

{phang}
[{opt no}]{opt freq} 仅包含或抑制由 {opt tabulate} 选项生成的表中的频数。
请参阅上面的 {helpb oneway##tabulate:tabulate}。

{phang}
[{opt no}]{opt obs} 仅包含或抑制由 {opt tabulate} 选项生成的表中报告的观察数。
如果数据未加权，仅报告频数。如果数据已加权，则频数指的是权重的总和。
请参阅上面的 {helpb oneway##tabulate:tabulate}。

{phang}{opt noanova} 抑制 ANOVA 表的显示。

{phang}{opt nolabel} 使数字代码显示，而不是 ANOVA 和多重比较检验表中的值标签。

{phang}{opt wrap} 请求 Stata 不将宽表拆分以使其更具可读性。

{phang}{opt missing} 请求将 {it:因素变量} 的缺失值视为类别，而不是从分析中省略的观察值。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse apple}{p_end}
{phang2}{cmd:. oneway weight treatment}{p_end}

{phang}获取观察均值{p_end}
{phang2}{cmd:. oneway weight treatment, tabulate}{p_end}

{phang}Bonferroni 多重比较检验{p_end}
{phang2}{cmd:. oneway weight treatment, bonferroni}

{phang}Scheffe 多重比较检验{p_end}
{phang2}{cmd:. oneway weight treatment, scheffe}

    {hline}
    设置
{phang2}{cmd:. webuse census8}{p_end}

{phang}使用加权数据{p_end}
{phang2}{cmd:. oneway drate region [w=pop]}{p_end}
    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=XEFGGkFRdD4":Stata 中的单因素 ANOVA}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:oneway} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数{p_end}
{synopt:{cmd:r(F)}}F 统计量{p_end}
{synopt:{cmd:r(df_r)}}组内自由度{p_end}
{synopt:{cmd:r(mss)}}组间平方和{p_end}
{synopt:{cmd:r(df_m)}}组间自由度{p_end}
{synopt:{cmd:r(rss)}}组内平方和{p_end}
{synopt:{cmd:r(chi2bart)}}Bartlett 卡方{p_end}
{synopt:{cmd:r(df_bart)}}Bartlett 自由度{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <oneway.sthlp>}