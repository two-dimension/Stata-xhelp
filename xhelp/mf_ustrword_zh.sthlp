{smcl}
{* *! version 1.0.9  24jan2019}{...}
{vieweralsosee "[M-5] ustrword()" "mansection M-5 ustrword()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] invtokens()" "help mf_invtokens_zh"}{...}
{vieweralsosee "[M-5] tokenget()" "help mf_tokenget_zh"}{...}
{vieweralsosee "[M-5] tokens()" "help mf_tokens_zh"}{...}
{vieweralsosee "[M-5] ustrsplit()" "help mf_ustrsplit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FN] String functions" "help string functions"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{viewerjumpto "语法" "mf_ustrword_zh##syntax"}{...}
{viewerjumpto "描述" "mf_ustrword_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_ustrword_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_ustrword_zh##remarks"}{...}
{viewerjumpto "兼容性" "mf_ustrword_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_ustrword_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_ustrword_zh##source"}
{help mf_ustrword:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] ustrword()} {hline 2}}从 Unicode 字符串中获取 Unicode 单词
{p_end}
{p2col:}({mansection M-5 ustrword():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 33 2}
{it:字符串 矩阵} {cmd:ustrword(}{it:字符串 矩阵 s}{cmd:,}
{it:实数 矩阵 n}{cmd:)}

{p 8 33 2}
{it:字符串 矩阵} {cmd:ustrword(}{it:字符串 矩阵 s}{cmd:,} {it:实数 矩阵 n}{cmd:,}{break}
{it:字符串 标量 loc}{cmd:)}

{p 8 33 2}
{it:实数 矩阵} {cmd:ustrwordcount(}{it:字符串 矩阵 s}{cmd:)}

{p 8 33 2}
{it:实数 矩阵} {cmd:ustrwordcount(}{it:字符串 矩阵 s}{cmd:,}
{it:字符串 标量 loc}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:ustrword(}{it:s}{cmd:,} {it:n}{cmd:)} 返回 Unicode 字符串 {it:s} 中的第 {it:n} 个 Unicode 单词。正数从 {it:s} 的开头开始计数，负数从 {it:s} 的结尾开始计数。 {cmd:1} 是 {it:s} 中的第一个单词， {cmd:-1} 是 {it:s} 中的最后一个 Unicode 单词。该函数使用 {helpb set locale_functions:locale_functions} 设置。

{p 4 4 2}
{cmd:ustrword(}{it:s}{cmd:,} {it:n}{cmd:,} {it:loc}{cmd:)} 返回 Unicode 字符串 {it:s} 中的第 {it:n} 个 Unicode 单词。正数从 {it:s} 的开头开始计数，负数从 {it:s} 的结尾开始计数。 {cmd:1} 是 {it:s} 中的第一个单词， {cmd:-1} 是 {it:s} 中的最后一个 Unicode 单词。该函数使用 {it:loc} 中指定的区域设置。  

{p 4 4 2}
{cmd:ustrwordcount(}{it:s}{cmd:)} 返回 Unicode 字符串 {it:s} 中非空 Unicode 单词的数量。空 Unicode 单词是仅由 Unicode 空白字符组成的 Unicode 单词。该函数使用 {helpb set locale_functions:locale_functions} 设置。

{p 4 4 2}
{cmd:ustrwordcount(}{it:s}{cmd:,} {it:loc}{cmd:)} 返回 Unicode 字符串 {it:s} 中非空 Unicode 单词的数量。空 Unicode 单词是仅由 Unicode 空白字符组成的 Unicode 单词。该函数使用 {it:loc} 中指定的区域设置。  

{p 4 4 2}
当 {it:s} 和 {it:n} 不是标量时，这些函数逐元素返回结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 ustrword()备注和示例:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
Unicode 单词与通过 {helpb word()} 函数生成的单词不同。 {cmd:word()} 中的单词是按空格分隔的标记。Unicode 单词是基于一套 {browse "http://www.unicode.org/reports/tr29/#Word_Boundaries":单词边界规则} 或某些语言字典（如中文、日文和泰文）定义的语言单位。

{p 4 4 2}
无效的 UTF-8 序列会被替换为 Unicode 替代字符 {bf:\ufffd}。

{p 4 4 2}
空终止符 {cmd:char(0)} 是一个非空的 Unicode 单词。 


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
{cmd:ustrword(}{it:s}{cmd:,} {it:n}{cmd:)},
{cmd:ustrword(}{it:s}{cmd:,} {it:n}{cmd:,} {it:loc}{cmd:)}:
{p_end}
		{it:s}:  {it:r x c} 
	        {it:n}:  {it:r x c} 或 1 {it:x} 1
	      {it:loc}:  1 {it:x} 1
	   {it:result}:  {it:r x c}

{p 4 4 2}
{cmd:ustrwordcount(}{it:s}{cmd:)},
{cmd:ustrwordcount(}{it:s}{cmd:,} {it:loc}{cmd:)}:
{p_end}
		{it:s}:  {it:r x c} 
	      {it:loc}:  1 {it:x} 1
	   {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果发生错误， {cmd:ustrword()} 将返回一个空字符串。  
如果发生错误， {cmd:ustrwordcount()} 将返回一个负数。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ustrword.sthlp>}