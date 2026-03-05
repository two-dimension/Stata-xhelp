{smcl}
{* *! version 1.1.9  19oct2017}{...}
{vieweralsosee "[D] recast" "mansection D recast"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] compress" "help compress_zh"}{...}
{vieweralsosee "[D] destring" "help destring_zh"}{...}
{viewerjumpto "语法" "recast_zh##syntax"}{...}
{viewerjumpto "描述" "recast_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "recast_zh##linkspdf"}{...}
{viewerjumpto "选项" "recast_zh##options"}{...}
{viewerjumpto "示例" "recast_zh##examples"}
{help recast:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] recast} {hline 2}}更改变量的存储类型{p_end}
{p2col:}({mansection D recast:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}{cmd:recast} {it:{help data types:type}} {varlist}
           [{cmd:,} {opt force}]

{p 4 6 2}
其中 {it:type} 是 {cmd:byte}, {cmd:int}, {cmd:long}, {cmd:float},
{cmd:double}, {cmd:str1}, {cmd:str2}, ..., {cmd:str2045}, 或 {cmd:strL}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:recast} 将 {varlist} 中指定变量的存储类型更改为 {it:{help data types:type}}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D recastQuickstart:快速入门}

        {mansection D recastRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:force} 会使 {cmd:recast} 变得不安全，因为即使会导致精度丢失、引入缺失值或对字符串变量导致字符串被截断，也会将变量赋予新的存储类型。

{pmore}
使用 {cmd:force} 时需谨慎。 {cmd:force} 适用于您有一个保存为 {cmd:double} 的变量，但希望将其存储为 {cmd:float} 的情况，即使这将导致其值略微四舍五入。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}描述变量 {cmd:mpg}{p_end}
{phang2}{cmd:. describe mpg}

{pstd}将 {cmd:mpg} 的存储类型从 {cmd:int} 更改为 {cmd:byte}{p_end}
{phang2}{cmd:. recast byte mpg}

{pstd}描述变量 {cmd:mpg}{p_end}
{phang2}{cmd:. describe mpg}

{pstd}描述变量 {cmd:headroom}{p_end}
{phang2}{cmd:. describe headroom}

{pstd}尝试将 {cmd:headroom} 的存储类型从 {cmd:float} 更改为 {cmd:int}{p_end}
{phang2}{cmd:. recast int headroom}

{pstd}描述变量 {cmd:headroom}{p_end}
{phang2}{cmd:. describe headroom}

{pstd}描述变量 {cmd:make}{p_end}
{phang2}{cmd:. describe make}

{pstd}尝试将 {cmd:make} 的存储类型从 {cmd:str18} 更改为 {cmd:str16}{p_end}
{phang2}{cmd:. recast str16 make}

{pstd}将 {cmd:make} 的存储类型从 {cmd:str18} 更改为 {cmd:str20}{p_end}
{phang2}{cmd:. recast str20 make}

{pstd}描述变量 {cmd:make}{p_end}
{phang2}{cmd:. describe make}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <recast.sthlp>}