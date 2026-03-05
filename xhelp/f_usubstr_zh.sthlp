{smcl}
{* *! version 1.0.4  19oct2017}{...}
{vieweralsosee "[FN] 字符串函数" "mansection FN Stringfunctions"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{vieweralsosee "help 函数" "help functions_zh"}{...}
{vieweralsosee "help 字符串函数" "help string_functions_zh"}{...}
{vieweralsosee "help substr()" "help f_substr_zh"}{...}
{vieweralsosee "help subinstr()" "help f_subinstr_zh"}{...}
{vieweralsosee "help udsubstr()" "help f_udsubstr_zh"}{...}
{viewerjumpto "函数" "f_usubstr_zh##functions"}{...}
{viewerjumpto "备注" "f_usubstr_zh##remarks"}
{help f_usubstr:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[FN] 字符串函数}}
{p_end}
{p2col:({mansection FN Stringfunctions:查看完整的 PDF 手册条目})}{p_end}
{p2colreset}{...}


{marker functions}{...}
{title:函数}

INCLUDE help f_usubstr

INCLUDE help f_ustrleft

INCLUDE help f_ustrright


{marker remarks}{...}
{title:备注}

{pstd}
使用函数 {helpb udsubstr()} 根据显示列提取子字符串。
使用函数 {helpb substr()} 根据字节提取子字符串。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <f_usubstr.sthlp>}