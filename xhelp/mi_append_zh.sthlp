{smcl}
{* *! version 1.0.15  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi append" "mansection MI miappend"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] append" "help append_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi add" "help mi_add_zh"}{...}
{vieweralsosee "[MI] mi merge" "help mi_merge_zh"}{...}
{viewerjumpto "Syntax" "mi append##syntax"}{...}
{viewerjumpto "Menu" "mi append##menu"}{...}
{viewerjumpto "Description" "mi append##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_append_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi append##options"}{...}
{viewerjumpto "Remarks" "mi append##remarks"}{...}
{viewerjumpto "Stored results" "mi append##results"}
{help mi_append:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[MI] mi append} {hline 2}}追加 mi 数据{p_end}
{p2col:}({mansection MI miappend:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi} {cmd:append} 
{cmd:using} {it:{help filename_zh}}
[{cmd:,} {it:选项}]

{synoptset 16}{...}
{synopthdr}
{synoptline}
{synopt:{opth gen:erate(newvar)}}创建 {it:newvar}; 0=主数据,
     1=使用数据{p_end}
{synopt:{cmdab:nol:abel}}不从使用数据复制值标签{p_end}
{synopt:{cmdab:nonote:s}}不从使用数据复制备注{p_end}
{synopt:{cmd:force}}字符串与数字间不类型不匹配错误{p_end}

{synopt:{cmdab:noup:date}}见 {bf:{help mi_noupdate_option_zh:[MI] noupdate option}}{p_end}
{synoptline}
{p2colreset}{...}

{p 4 8 2}
注意：

{p 8 14 2}
    1.  行话：{break}
        master = 内存中的数据{break}
        {bind: }using = 磁盘上的数据 ({it:filename})

{p 8 12 2}
    2.  主数据必须是 {cmd:mi} {cmd:set};
        使用数据可以是 {cmd:mi} {cmd:set}.

{p 8 12 2}
    3.  {cmd:mi} {cmd:append} 在逻辑上
        等同于 {bf:{help append_zh:append}}.
        结果数据的 {it:M} = max({it:M_master}, {it:M_using)}，
        不是它们的总和。请见 {bf:{help mi_add_zh:[MI] mi add}} 以在保持 {it:m}=0 常数的情况下追加
        插补。

{p 8 12 2}
    4.  {cmd:mi} {cmd:append} 与 {cmd:append} 的语法不同，
        不允许指定多个使用文件，并且
        不允许使用 {cmd:keep(}{it:varlist}{cmd:)} 选项。

{p 8 12 2}
    5.  如果 {it:filename} 包含空格或其他特殊字符，则必须用双引号括起来。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:append} 是用于 {cmd:mi} 数据的 {cmd:append}；
请参见 {bf:{help append_zh:[D] append}} 以了解合并数据集的描述。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MI miappendRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{p 4 8 2}
{opth generate(newvar)}
    指定创建新变量 {it:newvar}，其中主数据为 0，
    使用数据为 1。

{p 4 8 2}
{cmd:nolabel}
    防止从使用数据复制值标签定义到主数据。
    即使您不指定此选项，使用数据中的标签定义也永远不会替换主数据中的。

{p 4 8 2}
{cmd:nonotes}
    防止将使用数据中的任何备注并入主数据；见 {bf:{help notes_zh:[D] notes}}。

{p 4 8 2}
{cmd:force}
    允许将字符串变量追加到数字变量，反之亦然。
    这种类型不匹配的结果当然是缺失值。
    默认行为是发出错误信息，而不是合并具有如此严重类型差异的数据集。

{p 4 8 2}
{cmd:noupdate}
    在某些情况下抑制该命令可能执行的自动 {cmd:mi} {cmd:update}；
    见 {bf:{help mi_noupdate_option_zh:[MI] noupdate option}}。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
在数据为 {cmd:mi} 时，当您打算使用 {cmd:append} 时，请使用 {cmd:mi} {cmd:append}。

{p 4 4 2}
备注按以下标题呈现：

	{it:{help mi_append##ex1:添加新观察}}
        {it:{help mi_append##ex2:添加新观察和插补}}
	{it:{help mi_append##ex3:添加新观察和插补，M 不相等}}
	{it:{help mi_append##treatment:已登记变量的处理}}


{marker ex1}{...}
{title:添加新观察}

{p 4 4 2}
假设文件 {cmd:mymi.dta} 包含重症监护室（ICU）中三分之四患者的数据。
数据已 {cmd:mi} {cmd:set}，且 {it:M}=5。
文件 {cmd:remaining.dta} 包含剩余患者的数据。
数据未 {cmd:mi} {cmd:set}。要合并数据集，您键入 

	. {cmd:use mymi, clear}

	. {cmd:mi append using remaining}

{p 4 4 2}
原始的 {cmd:mi} 数据具有 {it:M}=5 次插补，结果数据也是如此。
如果新数据不包含插补变量的缺失值，您可以准备进行分析。否则，您将需要
对新数据进行插补值的补全。


{marker ex2}{...}
{title:添加新观察和插补}

{p 4 4 2}
假设文件 {cmd:westwing.dta} 包含重症监护室（ICU）西翼患者的数据。
文件 {cmd:eastwing.dta} 包含东翼患者的数据。
两个数据集均为 {cmd:mi} {cmd:set}，且 {it:M}=5。
您最初打算分开分析这些数据集，但现在希望
将它们合并。您键入 

        . {cmd:use westwing, clear}

	. {cmd:mi append using eastwing}

{p 4 4 2}
原始数据具有 {it:M}=5 次插补，结果数据也是如此。

{p 4 4 2}
对于 {it:m}=0 的数据是对两个 {it:m}=0 数据集进行普通 {cmd:append} 的结果。

{p 4 4 2}
对于 {it:m}=1 的数据同样是对两个 {it:m}=1 数据集进行普通 {cmd:append} 的结果。因此，结果是
将 {cmd:westwing.dta} 和 {cmd:eastwing.dta} 的观察数据在 {it:m}=0 的方式下组合而成。
之前存在的观察插补来自 {cmd:westwing.dta}，新追加观察的插补来自 {cmd:eastwing.dta}。


{marker ex3}{...}
{title:添加新观察和插补，M 不相等}

{p 4 4 2}
考虑与上述相同的情况，但这次假设 {it:M}=5 
在 {cmd:westwing.dta} 中，而 {it:M}=4 在 {cmd:eastwing.dta} 中。合并结果
仍将具有 {it:M}=5。来自 {cmd:westwing.dta} 的观察的插补值在 {it:m}=5 时将缺失值。


{marker treatment}{...}
{title:已登记变量的处理}

{p 4 4 2}
两个数据集中可能会以不一致的方式注册变量。

{p 4 4 2}
在任一数据集中注册为插补的变量将在最终结果中注册为插补，无论它们在其他数据集中是如何注册（或未注册）的。

{p 4 4 2}
除非有其他情况，否则在任一数据集中注册为被动的变量将在最终结果中注册为被动。

{p 4 4 2}
除非有其他情况，否则在任一数据集中注册为常规的变量将在最终结果中注册为常规。


{marker results}{...}
{title:存储的结果}

{p 4 4 2}
{cmd:mi append} 将以下内容存储在 {cmd:r()} 中：

	标量
	    {cmd:r(N_master)}  主数据中 {it:m}=0 的观察数
	    {cmd:r(N_using)}   使用数据中 {it:m}=0 的观察数
	    {cmd:r(M_master)}  主数据中的插补数 ({it:M})
	    {cmd:r(M_using)}   使用数据中的插补数 ({it:M}) 

	宏
	    {cmd:r(newvars)}   新添加的变量

{p 4 4 2}
因此，结果数据中的值为 

	{it:N} = {it:m}=0 中的观察数 
	  = {cmd:r(N_master) + r(N_using)}

	{it:k} = 变量数 
          = {it:k_master} {cmd:+ `:word count `r(newvars)''}

	{it:M} = 插补数 
          = {cmd:max(r(M_master), r(M_using))}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_append.sthlp>}