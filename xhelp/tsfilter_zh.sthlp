{smcl}
{* *! version 1.0.12  19sep2018}{...}
{vieweralsosee "[TS] tsfilter" "mansection TS tsfilter"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] tssmooth" "help tssmooth_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "tsfilter_zh##syntax"}{...}
{viewerjumpto "Description" "tsfilter_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "tsfilter_zh##linkspdf"}
{help tsfilter:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[TS] tsfilter} {hline 2}}过滤时间序列的周期成分{p_end}
{p2col:}({mansection TS tsfilter:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
过滤一个变量

{p 8 18 2}
{cmd:tsfilter}
{it:filter} {dtype}
{newvar} {cmd:=} {help varname_zh:{it:varname}}
{ifin} [{cmd:,} {it:options}]


{pstd}
过滤多个变量，唯一名称

{p 8 18 2}
{cmd:tsfilter}
{it:filter} {dtype}
{help newvarlist_zh:{it:newvarlist}} {cmd:=} {help varlist_zh:{it:varlist}}
{ifin} [{cmd:,} {it:options}]


{pstd}
过滤多个变量，共同名称前缀

{p 8 18 2}
{cmd:tsfilter}
{it:filter} {dtype}
{it:{help newvarlist##stub*:stub}}{cmd:*} {cmd:=} {help varlist_zh:{it:varlist}}
{ifin} [{cmd:,} {it:options}]
{p_end}


{synoptset 9}{...}
{synopt:{it:filter}}名称{space 20}参见帮助{p_end}
{synoptline}
{synopt:{cmd:bk}}巴克斯特-金{space 13}{helpb tsfilter bk:tsfilter bk}{p_end}
{synopt:{cmd:bw}}巴特沃斯{space 13}{helpb tsfilter bw:tsfilter bw}{p_end}
{synopt:{cmd:cf}}克里斯蒂亚诺-菲茨杰拉德{space 3}{helpb tsfilter cf:tsfilter cf}{p_end}
{synopt:{cmd:hp}}霍德里克-普雷斯科特{space 8}{helpb tsfilter hp:tsfilter hp}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用 {opt tsfilter} 之前必须 {opt tsset} 或 {opt xtset} 您的数据；
请参见 {manhelp tsset TS} 和 {manhelp xtset XT}.{p_end}
{p 4 6 2}
{it:varname} 和 {it:varlist} 可以包含时间序列运算符；参见 {help tsvarlist_zh}。
{p_end}
{p 4 6 2}
{it:options} 在不同过滤器之间有所不同，并在每个 {it:filter} 的手册条目中进行了记录。
{p_end}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tsfilter} 将时间序列分离为趋势和周期成分。
趋势成分可以包含一个确定性或随机趋势。稳定的周期成分由在指定周期内的随机周期驱动。{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS tsfilterRemarksandexamples:备注和示例}

        {mansection TS tsfilterMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。




{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tsfilter.sthlp>}