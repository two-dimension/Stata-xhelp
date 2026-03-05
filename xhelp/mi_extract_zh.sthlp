{smcl}
{* *! version 1.1.14  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi extract" "mansection MI miextract"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] mi replace0" "help mi replace0"}{...}
{viewerjumpto "Syntax" "mi_extract_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_extract_zh##menu"}{...}
{viewerjumpto "Description" "mi_extract_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_extract_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_extract_zh##options"}{...}
{viewerjumpto "Remarks" "mi_extract_zh##remarks"}
{help mi_extract:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[MI] mi extract} {hline 2}}从 mi 数据中提取原始或填补的数据{p_end}
{p2col:}({mansection MI miextract:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi extract} {it:#} [{cmd:,} {it:options}]{...}

{p 4 4 2}
其中 0 <= {it:#} <= {it:M}

{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt:{cmd:clear}}允许替换内存中未保存的数据{p_end}

{synopt:{cmdab:esamp:le(}...{cmd:)}}很少指定的选项{p_end}
{synopt:{cmdab:esamp:le(}{varname}{cmd:)}}...当 {it:#} > 0 时的语法{p_end}
{synopt:{cmdab:esamp:le(}{varname} {it:#_e}{cmd:)}}...当 {it:#} = 0 时的语法；
       1 <= {it:#_e} <= {it:M}{p_end}
{synoptline}
{p2colreset}{...}
	

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:extract} {it:#} 用数据替换内存中的数据，数据为 {it:m}={it:#}。数据没有被 {cmd:mi} {cmd:set}。  


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miextractRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{p 4 8 2}
{cmd:clear} 指定可以替换内存中的数据，即使当前数据尚未保存到磁盘。

{p 4 8 2}
{cmd:esample(}{varname} [{it:#_e}]{cmd:)}
    很少被指定。
    当使用 {bf:{help mi_estimate_zh:mi estimate}}
    的时候指定了 {cmd:esample(}{it:newvar}{cmd:)} 以存储
    在 {it:newvar} 中 
    的 {cmd:e(sample)}，针对 {it:m}=1, {it:m}=2, ..., {it:m}={it:M}。
    现在希望提取一个 {it:m} 对应的 数据，以及
    相应设置的 {cmd:e(sample)}。

{p 8 8 2}
    {cmd:mi} {cmd:extract} {it:#}{cmd:,}
    {cmd:esample(}{it:varname}{cmd:)}, {it:#}>0, 是
    在这种不太可能的情况下的常见例子。 
    提取一个插补数据集，并基于之前存储的 {cmd:e(sample)} 
    重新定义 {cmd:e(sample)}，对应 {it:m}={it:#}。

{p 8 8 2}
    罕见的情况是 {cmd:mi} {cmd:extract} {cmd:0,}
    {cmd:esample(}{it:varname} {it:#_e}{cmd:)}, 其中 {it:#_e}>0。
    提取原始数据，但基于之前存储的 {cmd:e(sample)} 定义 
    {cmd:e(sample)}，对应 {it:m}={it:#_e}。
    
{p 8 8 2}
    指定 {cmd:esample()} 选项会改变数据的排序顺序。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
如果您想放弃 {cmd:mi} 并仅仅返回原始数据， 
您可以输入 

	. {cmd:mi extract 0}

{p 4 4 2}
如果您想将原始数据发送给同事，或者尝试另一种处理缺失值的方法。 不论是什么原因，结果都是原始数据替换内存中的数据。 数据没有被 {cmd:mi} {cmd:set}。 您的原始 {cmd:mi} 数据保持不变。

{p 4 4 2}
如果您怀疑在 {it:m}=3 的插补中有些奇怪，您可以输入 

	. {cmd:mi extract 3}

{p 4 4 2}
然后，您将会在内存中得到一个数据集，它看起来就像您的原始数据，除了缺失值的插补和被动变量将 
被替换为来自 {it:m}=3 的插补和被动值。 数据没有被 {cmd:mi} {cmd:set}。 您的原始数据保持不变。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_extract.sthlp>}