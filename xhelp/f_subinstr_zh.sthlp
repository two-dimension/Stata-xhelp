{smcl}
{* *! version 1.2.4  19oct2017}{...}
{vieweralsosee "[FN] 字符串函数" "mansection FN Stringfunctions"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "help 函数" "help functions_zh"}{...}
{vieweralsosee "help 字符串函数" "help string_functions_zh"}{...}
{vieweralsosee "help substr()" "help f_substr_zh"}{...}
{vieweralsosee "help usubinstr()" "help f_usubinstr_zh"}{...}
{vieweralsosee "help usubstr()" "help f_usubstr_zh"}{...}
{viewerjumpto "函数" "f_subinstr_zh##functions"}{...}
{viewerjumpto "备注" "f_subinstr_zh##remarks"}
{help f_subinstr:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[FN] 字符串函数}}
{p_end}
{p2col:({mansection FN Stringfunctions:查看完整的PDF手册条目})}{p_end}
{p2colreset}{...}


{marker functions}{...}
{title:函数}

INCLUDE help f_subinstr

INCLUDE help f_subinword


{marker remarks}{...}
{title:备注}

{pstd}
如果您的字符串包含Unicode字符，请使用函数 {helpb usubinstr()}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <f_subinstr.sthlp>}