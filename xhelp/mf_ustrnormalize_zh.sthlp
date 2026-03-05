{smcl}
{* *! version 1.0.5  15may2018}{...}
{vieweralsosee "[M-5] ustrnormalize()" "mansection M-5 ustrnormalize()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{viewerjumpto "Syntax" "mf_ustrnormalize_zh##syntax"}{...}
{viewerjumpto "Description" "mf_ustrnormalize_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_ustrnormalize_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_ustrnormalize_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_ustrnormalize_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_ustrnormalize_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_ustrnormalize_zh##source"}
{help mf_ustrnormalize:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[M-5] ustrnormalize()} {hline 2}}标准化 Unicode 字符串
{p_end}
{p2col:}({mansection M-5 ustrnormalize():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string matrix} {cmd:ustrnormalize(}{it:string matrix s}{cmd:,} {it:string matrix norm}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:ustrnormalize(}{it:s}{cmd:,} {it:norm}{cmd:)} 将 Unicode 字符串 
{it:s} 标准化为 {it:norm} 指定的五种标准化形式之一。

{p 4 4 2}
当 {it:s} 不是标量时，该函数逐元素返回结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 ustrnormalize()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
Unicode 标准化去除 Unicode 字符串由于 Unicode 字符等价性而导致的差异。例如，带有两个点的字符 "i" 如 naïve 可以用单个 Unicode 码点 
{bf:\u00ef} 表示，或用两个码点表示 {bf:\u0069}，即常规的 "i" ，和 {bf:\u0308}，即发音符号。 码点 {bf:\u00ef} 和 
码点序列 {bf:\u0069\u0308} 被认为是 Unicode 等价的。根据 Unicode 标准，它们在 Unicode 字符串操作中应视为相同的单个字符， 
例如显示、比较和选择。但 Stata 不支持多码点字符；每个码点被视为单个 Unicode 字符。因此， 
{bf:\u0069\u0308} 在结果窗口中显示为两个字符。{cmd:ustrnormalize()} 可用于通过将 
{bf:\u0069\u0308} 标准化为其典型等效复合 {bf:NFC} 
形式 {bf:\u00ef} 来处理此问题。

{p 4 4 2}
{it:norm} 必须是 {bf:nfc}、{bf:nfd}、{bf:nfkc}、{bf:nfkd} 
或 {bf:nfkcc} 之一。对于其他任何 {it:norm} 值，函数返回空字符串。

{p 4 4 2}
{bf:nfc} 指定了 {bf:标准化形式 C}，它将分解的 Unicode 码点标准化为典型的复合形式。 
{bf:nfd} 指定了 {bf:标准化形式 D}，它将复合的 Unicode 码点标准化为典型的分解形式。 
{bf:nfc} 和 {bf:nfd} 产生典型等效形式。{bf:nfkc} 和 {bf:nfkd} 类似于 {bf:nfc} 和 
{bf:nfd}，但产生兼容等效形式。{bf:nfkcc} 类似于 {bf:nfkc}，但也处理大小写折叠。有关详细信息，请参见 
{browse "http://unicode.org/reports/tr15/"}。


{marker conformability}{...}
{title:适应性}

{p 4 4 2}
{cmd:ustrnormalize(}{it:s}{cmd:,} {it:norm}{cmd:)}:
{p_end}
	    {it:s}:  {it:r x c}
	 {it:norm}:  {it:r x c} 或 1 {it:x} 1
       {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ustrnormalize.sthlp>}