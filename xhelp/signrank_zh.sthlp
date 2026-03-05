{smcl}
{* *! version 1.1.11  22may2019}{...}
{viewerdialog signrank "dialog signrank"}{...}
{viewerdialog signtest "dialog signtest"}{...}
{vieweralsosee "[R] signrank" "mansection R signrank"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ranksum" "help ranksum_zh"}{...}
{vieweralsosee "[R] ttest" "help ttest_zh"}{...}
{viewerjumpto "Syntax" "signrank_zh##syntax"}{...}
{viewerjumpto "Menu" "signrank_zh##menu"}{...}
{viewerjumpto "Description" "signrank_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "signrank_zh##linkspdf"}{...}
{viewerjumpto "Option for signrank" "signrank_zh##option_signrank"}{...}
{viewerjumpto "Examples" "signrank_zh##examples"}{...}
{viewerjumpto "Stored results" "signrank_zh##results"}{...}
{viewerjumpto "References" "signrank_zh##references"}
{help signrank:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] signrank} {hline 2}}配对数据的等同性检验{p_end}
{p2col:}({mansection R signrank:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
Wilcoxon 配对样本签名秩检验

{p 8 20 2} 
{cmd:signrank} {varname} {cmd:=} {it:{help exp_zh}} {ifin} [{cmd:,} {cmd:exact}]


{phang}
配对样本的符号检验

{p 8 20 2}
{cmd:signtest} {varname} {cmd:=} {it:{help exp_zh}} {ifin} 


{phang}
{cmd:by} 允许与 {cmd:signrank} 和 {cmd:signtest} 一起使用；请参见 {manhelp by D}。 


{marker menu}{...}
{title:菜单}

    {title:signrank}

{phang2}
{bf:统计 > 非参数分析 > 假设检验 >}
     {bf:Wilcoxon 配对样本签名秩检验}

     {title:signtest}

{phang2}
{bf:统计 > 非参数分析 > 假设检验 >}
       {bf:匹配对的等同性检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:signrank} 通过使用 Wilcoxon 配对样本签名秩检验来检验配对观察值的等同性
({help signrank##W1945:Wilcoxon 1945}).  零假设是两个分布是相同的。

{pstd}
{cmd:signtest} 也检验配对观察值的等同性
({help signrank##A1710:Arbuthnott [1710]}，但通过 {help signrank##SC1989:Snedecor 和 Cochran [1989]} 来进行更好的解释），
通过计算 {varname} 和表达式之间的差异。零假设是差异的中位数为零；没有进一步的关于分布的假设。这个假设等价于
真实的 正（负）符号比例为一半。

{pstd}
有关未匹配数据的等同性检验，请参见 {manhelp ranksum R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R signrankQuickstart:快速入门}

        {mansection R signrankRemarksandexamples:备注和示例}

        {mansection R signrankMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker option_signrank}{...}
{title:signrank 选项}

{dlgtab:主}

{phang}
{cmd:exact} 指定计算确切的 p 值，同时计算近似的 p 值。确切的 p 值基于检验统计量的实际随机化分布。近似的 p 值基于针对随机化分布的正态近似。默认情况下，对于样本大小 n {ul:<} 200，计算确切的 p 值，因为在小样本中，正态近似可能不精确。可以通过指定 {cmd:noexact} 来抑制确切计算。对于大于 200 的样本大小，必须指定 {cmd:exact} 以计算确切的 p 值。确切计算适用于样本大小 n {ul:<} 2000。


{marker examples}{...}
{title:示例}

{phang}{cmd:. webuse fuel}{p_end}
{phang}{cmd:. signrank mpg1 = mpg2}{p_end}
{phang}{cmd:. signtest mpg1 = mpg2}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:signrank} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}样本大小{p_end}
{synopt:{cmd:r(N_pos)}}正比较的数量{p_end}
{synopt:{cmd:r(N_neg)}}负比较的数量{p_end}
{synopt:{cmd:r(N_tie)}}平局比较的数量{p_end}
{synopt:{cmd:r(z)}}z 统计量{p_end}
{synopt:{cmd:r(Var_a)}}调整后的方差{p_end}
{synopt:{cmd:r(sum_pos)}}正秩的总和{p_end}
{synopt:{cmd:r(sum_neg)}}负秩的总和{p_end}
{synopt:{cmd:r(p)}}基于正态近似的双侧 p 值{p_end}
{synopt:{cmd:r(p_l)}}基于正态近似的下侧单侧 p 值{p_end}
{synopt:{cmd:r(p_u)}}基于正态近似的上侧单侧 p 值{p_end}
{synopt:{cmd:r(p_exact)}}双侧确切 p 值{p_end}
{synopt:{cmd:r(p_l_exact)}}下侧单侧确切 p 值{p_end}
{synopt:{cmd:r(p_u_exact)}}上侧单侧确切 p 值{p_end}

{pstd}
{cmd:signtest} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}样本大小{p_end}
{synopt:{cmd:r(N_pos)}}正比较的数量{p_end}
{synopt:{cmd:r(N_neg)}}负比较的数量{p_end}
{synopt:{cmd:r(N_tie)}}平局比较的数量{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}
{synopt:{cmd:r(p_l)}}下侧单侧 p 值{p_end}
{synopt:{cmd:r(p_u)}}上侧单侧 p 值{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker A1710}{...}
{phang}
Arbuthnott, J. 1710. 关于神圣预见的论点，取自于在两性出生中观察到的一致规律。
{it:伦敦皇家学会哲学汇刊} 27: 186-190.

{marker SC1989}{...}
{phang}
Snedecor, G. W., 和 W. G. Cochran. 1989. {it:统计方法}. 第8版。
艾姆斯，IA：爱荷华州立大学出版社。

{marker W1945}{...}
{phang}
Wilcoxon, F. 1945. 通过排名方法进行个体比较。
{it:生物统计} 1: 80-83.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <signrank.sthlp>}