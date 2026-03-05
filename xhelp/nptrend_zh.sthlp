{smcl}
{* *! version 1.2.6  15may2018}{...}
{viewerdialog nptrend "dialog nptrend"}{...}
{vieweralsosee "[R] nptrend" "mansection R nptrend"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] Epitab" "help epitab_zh"}{...}
{vieweralsosee "[R] kwallis" "help kwallis_zh"}{...}
{vieweralsosee "[R] signrank" "help signrank_zh"}{...}
{vieweralsosee "[R] spearman" "help spearman_zh"}{...}
{vieweralsosee "[ST] strate" "help strate_zh"}{...}
{vieweralsosee "[R] symmetry" "help symmetry_zh"}{...}
{viewerjumpto "Syntax" "nptrend_zh##syntax"}{...}
{viewerjumpto "Menu" "nptrend_zh##menu"}{...}
{viewerjumpto "Description" "nptrend_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "nptrend_zh##linkspdf"}{...}
{viewerjumpto "Options" "nptrend_zh##options"}{...}
{viewerjumpto "Example" "nptrend_zh##example"}{...}
{viewerjumpto "Stored results" "nptrend_zh##results"}{...}
{viewerjumpto "References" "nptrend_zh##references"}
{help nptrend:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] nptrend} {hline 2}}测试有序组间的趋势{p_end}
{p2col:}({mansection R nptrend:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:nptrend} {varname} {ifin} {cmd:,} {opth by:(varlist:groupvar)}
[{opt nod:etail} {opt nol:abel} {opt s:core(scorevar)}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 非参数分析 > 假设检验 >}
     {bf:有序组间的趋势检验}


{marker description}{...}
{title:描述}

{pstd}
{opt nptrend} 执行有序组间的非参数趋势检验。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R nptrendQuickstart:快速入门}

        {mansection R nptrendRemarksandexamples:备注和示例}

        {mansection R nptrendMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth by:(varlist:groupvar)} 是必需的；它指定数据排序的组。

{phang}
{opt nodetail} 抑制组排名和的列出。

{phang}
{opt nolabel} 指定显示 {cmd:group()} 值而不是值标签。

{phang}
{opt score(scorevar)} 定义组的得分。当未指定时，将使用 {it:{help varlist_zh:groupvar}} 的值作为得分。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sg}{p_end}

{pstd}检验3组中暴露的趋势{p_end}
{phang2}{cmd:. nptrend exposure, by(group)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:nptrend} 将以下内容存储在 {cmd:r()} 中：

{synoptset 10 tabbed}{...}
{p2col 5 10 14 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数量{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}
{synopt:{cmd:r(z)}}z 统计量{p_end}
{synopt:{cmd:r(T)}}检验统计量{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker C1999}{...}
{phang}
Conover, W. J. 1999.
{it:实用非参数统计学}, 第3版.
纽约：Wiley。

{marker C1985}{...}
{phang}
Cuzick, J. 1985. 一种威尔科克森类型的趋势检验。
{it:医学中的统计} 4: 87-90。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <nptrend.sthlp>}