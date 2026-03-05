{smcl}
{* *! version 1.0.9  17may2019}{...}
{vieweralsosee "[M-5] ustrupper()" "mansection M-5 ustrupper()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] strupper()" "help mf_strupper_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{viewerjumpto "Syntax" "mf_ustrupper_zh##syntax"}{...}
{viewerjumpto "Description" "mf_ustrupper_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_ustrupper_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_ustrupper_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_ustrupper_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_ustrupper_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_ustrupper_zh##source"}
{help mf_ustrupper:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] ustrupper()} {hline 2}}将 Unicode 字符串转换为大写、小写或标题格式
{p_end}
{p2col:}({mansection M-5 ustrupper():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string matrix} {cmd:ustrupper(}{it:string matrix s} [{cmd:,}{it:string scalar loc}]{cmd:)}

{p 8 12 2}
{it:string matrix} {cmd:ustrlower(}{it:string matrix s} [{cmd:,}{it:string scalar loc}]{cmd:)}

{p 8 12 2}
{it:string matrix} {cmd:ustrtitle(}{it:string matrix s} [{cmd:,}{it:string scalar loc}]{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:ustrupper(}{it:s} [{cmd:,}{it:loc}]{cmd:)} 将 Unicode 字符串 {it:s} 中的字符转换为大写，使用指定的区域设置 {it:loc}。
如果未指定 {it:loc}，则使用 {helpb set locale_functions:locale_functions} 设置。
结果的长度可能与输入字符串不同；例如，德文字符 ß（代码点 {bf:\u00df}）的大写形式是两个大写字母 "SS"。同样的 {it:s} 但不同的 {it:loc} 可能会产生不同的结果；例如，英语中字母 "i" 的大写是 "I"，但在土耳其语中则是带点的 "İ"。

{p 4 4 2}
{cmd:ustrlower(}{it:s} [{cmd:,}{it:loc}]{cmd:)} 将 Unicode 字符串 {it:s} 中的字符转换为小写，使用指定的区域设置 {it:loc}。
如果未指定 {it:loc}，则使用 {helpb set locale_functions:locale_functions} 设置。
结果的字节长度可能与输入 Unicode 字符串不同。同样的 {it:s} 但不同的 {it:loc} 可以产生不同的结果；例如，在英语中，"I" 的小写是 "i"，但在土耳其语中则是没有点的 "i"。相同的 Unicode 字符可以根据其周围的字符映射到不同的 Unicode 字符；例如，希腊字母 Σ 的小写有两种变体：σ 或如果它是单词的最后一个字符，则是 ς。

{p 4 4 2}
{cmd:ustrtitle(}{it:s} [{cmd:,}{it:loc}]{cmd:)} 将字符串 {it:s} 中的 Unicode 单词转换为 {help p_glossary##titlecase:titlecase}。请注意，Unicode 单词是标题格式。Unicode 单词不同于由 {helpb word()} 函数产生的空格分隔单词。Unicode 单词是基于一组 {browse "http://www.unicode.org/reports/tr29/#Word_Boundaries":单词边界规则} 或某些语言的字典（中文、日文和泰文）的语言单位。标题格式也依赖于区域设置且对上下文敏感；例如，荷兰语中小写 "ij" 的标题形式是 "IJ"，而英语中则是 "Ij"。
如果未指定 {it:loc}，则使用 {helpb set locale_functions:locale_functions} 设置。

{p 4 4 2}
当 {it:s} 不是标量时，这些函数返回逐个元素的结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 ustrupper()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
使用函数 {help mf_strupper_zh:strupper()} 和 {help mf_strupper_zh:strlower()} 仅将 ASCII 字母转换为大写和小写。
 

{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
{cmd:ustrupper(}{it:s}[{cmd:,}{it:loc}]{cmd:)},
{cmd:ustrlower(}{it:s}[{cmd:,}{it:loc}]{cmd:)},
{cmd:ustrtitle(}{it:s}[{cmd:,}{it:loc}]{cmd:)}:
{p_end}
	    {it:s}:  {it:r x c}
       {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:ustrupper(}{it:s}[{cmd:,}{it:loc}]{cmd:)},
{cmd:ustrlower(}{it:s}[{cmd:,}{it:loc}]{cmd:)}, 和 {cmd:ustrtitle(}{it:s}[{cmd:,}{it:loc}]{cmd:)} 如果发生错误，将返回一个空字符串。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ustrupper.sthlp>}