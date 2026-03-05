{smcl}
{* *! version 1.0.7  19oct2017}{...}
{vieweralsosee "[P] set locale_functions" "mansection P setlocale_functions"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] creturn" "help creturn_zh"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{viewerjumpto "Syntax" "set_locale_functions_zh##syntax"}{...}
{viewerjumpto "Description" "set_locale_functions_zh##description"}{...}
{viewerjumpto "Option" "set_locale_functions_zh##option"}
{help set_locale_functions:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[P] set locale_functions} {hline 2}}指定函数的默认区域设置
{p_end}
{p2col:}({mansection P setlocale_functions:查看完整的PDF手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{pstd}
使用系统区域设置用于Unicode函数

{p 8 16 2}
{cmd:set}
{cmd:locale_functions}
{cmd:default}
[{cmd:,} {cmdab:perm:anently}]


{pstd}
为Unicode函数指定区域设置

{p 8 16 2}
{cmd:set}
{cmd:locale_functions}
{it:locale}
[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set locale_functions} 设置将用于需要{it:locale}作为可选参数的函数的区域设置：{helpb ustrupper()}、{helpb ustrlower()}、{helpb ustrtitle()}、{helpb ustrword()}、{helpb ustrwordcount()}、{helpb ustrcompare()} 和 {helpb ustrsortkey()} 及其Mata等效函数。当未指定参数时，将使用{cmd:locale_functions}设置。如果未设置{cmd:locale_functions}，则使用默认的ICU区域设置。

{pstd}
例如，如果您的操作系统是英语版本的Microsoft Windows，则系统区域设置可能是{cmd:"en"}。如果您在安装操作系统时选择特定国家为美国，则系统区域设置很可能是{cmd:"en_US"}。如果未设置{cmd:locale_functions}或设置为默认值，则调用{cmd:ustrupper("istanbul")}相当于调用{cmd:ustrupper("istanbul", "en_US")}，返回值为{cmd:ISTANBUL}。然而，如果{cmd:locale_functions}设置为{cmd:"tr"}表示土耳其语，则调用{cmd:ustrupper("istanbul")}相当于调用{cmd:ustrupper("istanbul", "tr")}，返回值为{cmd:İSTANBUL}。有关区域设置的进一步讨论，请参见{findalias frlocales}。

{pstd}
请注意，尽管ICU不验证区域设置，但Stata验证{cmd:locale_functions}设置的语言子标签。它必须是有效的ISO-639-2语言代码。请参阅ISO-639-2列表，网址为{browse "http://www.loc.gov/standards/iso639-2/"}。

{pstd}
当前的{cmd:locale_functions}设置存储在{cmd:c(locale_functions)}中。当程序或do文件退出时，{cmd:c(locale_functions)}会重置为其原始值。


{marker option}{...}
{title:选项}

{phang}
{opt permanently} 指定除了立即更改外，设置还应被记住并在您调用Stata时成为默认设置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_locale_functions.sthlp>}