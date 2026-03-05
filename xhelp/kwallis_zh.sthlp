{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog kwallis "dialog kwallis"}{...}
{vieweralsosee "[R] kwallis" "mansection R kwallis"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] nptrend" "help nptrend_zh"}{...}
{vieweralsosee "[R] oneway" "help oneway_zh"}{...}
{vieweralsosee "[R] ranksum" "help ranksum_zh"}{...}
{vieweralsosee "[R] sdtest" "help sdtest_zh"}{...}
{vieweralsosee "[R] signrank" "help signrank_zh"}{...}
{viewerjumpto "Syntax" "kwallis_zh##syntax"}{...}
{viewerjumpto "Menu" "kwallis_zh##menu"}{...}
{viewerjumpto "Description" "kwallis_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "kwallis_zh##linkspdf"}{...}
{viewerjumpto "Option" "kwallis_zh##option"}{...}
{viewerjumpto "Example" "kwallis_zh##example"}{...}
{viewerjumpto "Stored results" "kwallis_zh##results"}
{help kwallis:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] kwallis} {hline 2}}Kruskal-Wallis 等级检验{p_end}
{p2col:}({mansection R kwallis:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:kwallis} {varname} {ifin} {cmd:,} {opth "by(varlist:groupvar)"}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 非参数分析 > 假设检验 >}
      {bf:Kruskal-Wallis 等级检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:kwallis} 执行 Kruskal-Wallis 检验，该检验假设多个样本来自同一总体。此检验是双样本 Wilcoxon (Mann-Whitney) 排名和检验的多样本推广。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R kwallisQuickstart:快速入门}

        {mansection R kwallisRemarksandexamples:备注与示例}

        {mansection R kwallisMethodsandformulas:方法与公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opth "by(varlist:groupvar)"} 是必需的。它指定一个变量以识别组。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse census}{p_end}

{pstd}同时检验所有区域的中位年龄分布的相等性{p_end}
{phang2}{cmd:. kwallis medage, by(region)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:kwallis} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}
{synopt:{cmd:r(chi2)}}卡方{p_end}
{synopt:{cmd:r(chi2_adj)}}调整后的卡方（打平处理）{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <kwallis.sthlp>}