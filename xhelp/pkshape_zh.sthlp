{smcl}
{* *! version 1.1.7  11may2019}{...}
{viewerdialog pkshape "dialog pkshape"}{...}
{vieweralsosee "[R] pkshape" "mansection R pkshape"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] pk" "help pk_zh"}{...}
{viewerjumpto "语法" "pkshape_zh##syntax"}{...}
{viewerjumpto "菜单" "pkshape_zh##menu"}{...}
{viewerjumpto "描述" "pkshape_zh##description"}{...}
{viewerjumpto "PDF文档链接" "pkshape_zh##linkspdf"}{...}
{viewerjumpto "选项" "pkshape_zh##options"}{...}
{viewerjumpto "备注" "pkshape_zh##remarks"}{...}
{viewerjumpto "示例" "pkshape_zh##examples"}
{help pkshape:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] pkshape} {hline 2}}重塑（药代动力学）拉丁方数据{p_end}
{p2col:}({mansection R pkshape:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:pkshape} {it:id sequence period1 period2} [{it:periodlist}]
[{cmd:,} {it:options}]

{pstd}
变量 {it:id} 指定唯一的受试者标识符。变量 {it:sequence} 指定治疗施用的顺序（数字或字符串）。变量 {it:period1}、{it:period2} 等指定相应周期的药代动力学测量，如AUC。

{synoptset 19}{...}
{synopthdr}
{synoptline}
{synopt :{opth o:rder(strings:string)}} 按指定顺序应用治疗；当 {it:sequence} 为数字时必需 {p_end}
{synopt :{opth out:come(newvar)}} 结果变量名称；默认是 {cmd:outcome(outcome)} {p_end}
{synopt :{opth tr:eatment(newvar)}} 治疗变量名称；默认是 {cmd:treatment(treat)} {p_end}
{synopt :{opth car:ryover(newvar)}} 续效变量名称；默认是 {cmd:carryover(carry)} {p_end}
{synopt :{opth seq:uence(newvar)}} 序列变量名称；默认是 {cmd:sequence(sequence)} {p_end}
{synopt :{opth per:iod(newvar)}} 周期变量名称；默认是 {cmd:period(period)} {p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 流行病学及相关 > 其他 >}
     {bf:重塑药代动力学拉丁方数据}


{marker description}{...}
{title:描述}

{pstd}
{cmd:pkshape} 重塑数据以供 {help anova_zh}、{help pkcross_zh} 和 {help pkequiv_zh} 使用。拉丁方和交叉数据通常以 Stata 难以轻松分析的方式组织。{cmd:pkshape} 重新组织内存中的数据，以便在 Stata 中使用。

{pstd}
{cmd:pkshape} 是 pk 命令之一。请在阅读本条目之前阅读 {help pk_zh}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R pkshapeQuickstart:快速入门}

        {mansection R pkshapeRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在本帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth order:(strings:string)} 指定应用治疗的顺序，当生成重组数据中的序列、治疗和续效变量时使用。若输入序列变量 {it:sequence} 为数字，此选项是必需的。如果 {it:sequence} 是字符串变量，则不允许使用。对于交叉设计，可以用数字0表示任何洗脱期。

{phang}
{opth outcome(newvar)} 指定重组数据中结果变量的名称。默认使用 {cmd:outcome(outcome)}。

{phang}
{opth treatment(newvar)} 指定重组数据中治疗变量的名称。默认使用 {cmd:treatment(treat)}。

{phang}
{opth carryover(newvar)} 指定重组数据中续效变量的名称。默认使用 {cmd:carryover(carry)}。

{phang}
{opth sequence(newvar)} 指定重组数据中序列变量的名称。默认使用 {cmd:sequence(sequence)}。

{phang}
{opth period(newvar)} 指定重组数据中周期变量的名称。默认使用 {cmd:period(period)}。


{marker remarks}{...}
{title:备注}

{pstd}
拉丁方实验的数据通常以 Stata 难以轻松处理的方式自然组织。{cmd:pkshape} 重新组织拉丁方数据，以便可以与 {help anova_zh} 或任何 {help pk_zh} 命令一起使用。这种重新组织包括在制药研究中常用的经典2 x 2交叉设计，以及许多其他拉丁方设计。


{marker examples}{...}
{title:示例}

    {hline}
{phang}{cmd:. webuse chowliu}{p_end}
{phang}{cmd:. pkshape id seq period1 period2, order(RT TR)}{p_end}
    {hline}
{phang}{cmd:. webuse music, clear}{p_end}
{phang}{cmd:. pkshape id seq day1 day2 day3 day4 day5}{p_end}
{phang}{cmd:. anova outcome seq period treat}{p_end}
    {hline}
{phang}{cmd:. webuse applesales, clear}{p_end}
{phang}{cmd:. pkshape id seq p1 p2 p3, order(bca abc cab) seq(pattern) treat(displays)}{p_end}
{phang}{cmd:. anova outcome pattern displays id|pattern}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pkshape.sthlp>}