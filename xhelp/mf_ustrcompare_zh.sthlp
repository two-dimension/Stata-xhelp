{smcl}
{* *! version 1.0.10  15may2018}{...}
{vieweralsosee "[M-5] ustrcompare()" "mansection M-5 ustrcompare()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] sort()" "help mf_sort_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{viewerjumpto "Syntax" "mf_ustrcompare_zh##syntax"}{...}
{viewerjumpto "Description" "mf_ustrcompare_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_ustrcompare_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_ustrcompare_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_ustrcompare_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_ustrcompare_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_ustrcompare_zh##source"}
{help mf_ustrcompare:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[M-5] ustrcompare()} {hline 2}}比较或排序 Unicode 字符串
{p_end}
{p2col:}({mansection M-5 ustrcompare():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 36 2}
{it:实数矩阵}{space 5}{cmd:ustrcompare(}{it:字符串矩阵 s1}{cmd:,} {it:字符串矩阵 s2}{break}
 [{cmd:,} {it:字符串标量 loc}]{cmd:)}

{p 8 36 2}
{it:字符串矩阵}{space 3}{cmd:ustrsortkey(}{it:字符串矩阵 s} [{cmd:,} {it:字符串标量 loc}]{cmd:)}

{p 8 36 2}
{it:实数矩阵}{space 3}{cmd:ustrcompareex(}{it:字符串矩阵 s1}{cmd:,} 
{it:s2}{cmd:,} 
{it:字符串标量 loc}{cmd:,} 
{it:实数标量 st}{cmd:,} 
{it:case}{cmd:,} 
{it:cslv}{cmd:,} 
{it:norm}{cmd:,} 
{it:num}{cmd:,} 
{it:alt}{cmd:,} 
{it:fr}{cmd:)}

{p 8 36 2}
{it:字符串矩阵} {cmd:ustrsortkeyex(}{it:字符串矩阵 s}{cmd:,} 
{it:字符串标量 loc}{cmd:,} 
{it:实数标量 st}{cmd:,} 
{it:case}{cmd:,} 
{it:cslv}{cmd:,} 
{it:norm}{cmd:,} 
{it:num}{cmd:,} 
{it:alt}{cmd:,} 
{it:fr}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:ustrcompare(}{it:s1}{cmd:,} {it:s2} [{cmd:,} {it:loc}]{cmd:)} 比较两个 
Unicode 字符串。 如果 {it:s1} 小于、 大于或等于 {it:s2}， 则该函数返回 -1、 1 或 0， 
分别表示小于、大于或等于。 如果未指定 {it:loc}， 则使用
{helpb set locale_functions:locale_functions} 设置。

{p 4 4 2}
{cmd:ustrsortkey(}{it:s}{cmd:,} {it:loc} [{cmd:,} {it:loc}]{cmd:)} 生成一个以空字节终止的字节数组。
{cmd:sort} 命令在两个 Unicode 字符串 {it:s1} 和 {it:s2} 的排序键上会产生与 
{opt ustrcompare(s1, s2, loc)} 相同的顺序。 如果未指定 {it:loc}， 则使用
{helpb set locale_functions:locale_functions} 设置。
结果也对重音符和大小写敏感。 如果您需要不同的行为， 应该使用扩展函数 {cmd:ustrsortkeyex()}。

{p 4 4 2}
{cmd:ustrcompareex(}{it:s1}{cmd:,} {it:s2}{cmd:,} {it:loc}{cmd:,} {it:st}{cmd:,} {it:case}{cmd:,} {it:cslv}{cmd:,} {it:norm}{cmd:,} {it:num}{cmd:,} {it:alt}{cmd:,} {it:fr}{cmd:)}
是 {cmd:ustrcompare()} 的扩展版本。 它提供了更多的选项用于比较行为。

{p 4 4 2}
{cmd:ustrsortkeyex(}{it:s}{cmd:,} {it:loc}{cmd:,} {it:st}{cmd:,} {it:case}{cmd:,} {it:cslv}{cmd:,} {it:norm}{cmd:,} {it:num}{cmd:,} {it:alt}{cmd:,} {it:fr}{cmd:)}
是 {cmd:ustrsortkey()} 的扩展版本。 它提供了更多的选项用于比较行为。

{pstd}
附加选项如下：

{phang2}
{it:st} 控制比较的强度：

{p2colset 16 20 22 2}{...}
{p2col 15 20 22 2:{bf:-1}}默认值为 locale{p_end}

{synopt:{bf:1}}主要； 基字母差异，
               如 "a" 和 "b"{p_end}

{synopt:{bf:2}}次要； 相同
	基字母的重音差异，如 "a" 和 "ä"{p_end}

{synopt:{bf:3}}第三； 
	同一基字母的大小写差异，如 "a" 和 "A"{p_end}

{synopt:{bf:4}}第四； 用于区分
	片假名和平假名，适用于 JIS 4061 排序标准{p_end}

{synopt:{bf:5}}相同； 字符串的代码点顺序；
	很少有用{p_end}

{pmore2}
	 列出的其他数字被视为第三项。

{phang2}
{it:case} 控制大写和小写字母的顺序。 可能的
值为 {bf:1}（大写优先）、 {bf:2}（小写优先）或 {bf:0}（使用第三强度；高级选项）。 {bf:-1} 表示
默认值应使用 locale。 其他任何值被视为 {bf:0}。

{phang2}	
{it:cslv} 控制在次要级别和
第三级别之间是否生成额外的大小写级别。 可能的值为 {bf:0}（关闭）
或 {bf:1}（开启）。 {bf:-1} 表示默认值应使用 locale。
其他任何值被视为 {bf:0}。 将该设置开启并将强度设置为主要，可以实现忽略重音差异但保留大小写差异的效果。 若该设置为开启，结果也会受到
{it:case} 设置的影响。

{phang2}	
{it:norm} 控制是否执行规范化检查和规范化。
可能的值为 {bf:0}（关闭）或 {bf:1}（开启）。 {bf:-1} 
表示默认值应使用 locale。 
其他任何值被视为 {bf:0}。 大多数语言在比较时不需要
规范化。 如果在使用组合字符较多的语言中进行比较（如阿拉伯语、古希腊语或希伯来语），则需要进行规范化。 有关规范化的更多信息，请参阅
{help mf_ustrnormalize_zh:[M-5] ustrnormalize()}。

{phang2}	
{it:num} 控制如何对连续的数字子字符串进行排序。 
可能的值为 {bf:0}（关闭）或 {bf:1}（开启）。 {bf:-1} 表示
默认值应使用 locale。 
其他任何值被视为 {bf:0}。 如果设置为开启，包含数字的子字符串将根据数值排序。 例如， "100" 在 "20" 之后，而不是在之前。
请注意，数字子字符串限制为254位，并且不支持正负符号、十进制和指数。

{phang2}		
{it:alt} 控制如何处理空格和标点字符。 可能的 
值为 {bf:0}（使用主要权重）或 {bf:1}（替代处理）。 其他任何值被视为 {bf:0}。 如果设置为
{bf:1}（替代处理）， "onsite"、 "on-site" 和
"on site" 被视为相同。

{phang2}			
{it:fr} 控制次要强度的方向。 可能的值为 
       {bf:0}（关闭）或 {bf:1}（开启）。 {bf:-1} 表示默认值 
       应使用 locale。 其他所有值视为 "关闭"。
       如果设置为 "开启"，则重音字母将反向排序。
       注意，法语加拿大 Locale （{bf:fr_CA}） 的设置默认开启。

{p 4 4 2}
当 {it:s1} 和 {it:s2} 不是标量时， 这些函数返回逐个元素的结果。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-5 ustrcompare()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{mansection U 12.4.2.4LocalesinUnicode:Unicode 字符串比较} 依赖于 locale。例如， 
在瑞典语中 z < ö 但在德语中 ö < z。 比较对重音和大小写敏感。 如果您需要不同的行为，例如
不区分大小写的比较， 应该使用扩展比较函数
{cmd:ustrcompareex()}。 Unicode 字符串比较是语言敏感的，这不同于
{cmd:sort} 使用的字节值的比较。例如，大写字母 "Z"（字节值 90）在字节值上排在小写字母 "a"（字节值 97）之前，但在任何英语字典中都在 "a" 之后。

{p 4 4 2} 无效的 UTF-8 序列被替换为 Unicode 替代字符 {bf:\ufffd}。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
{cmd:ustrcompare(}{it:s1}{cmd:,} {it:s2} [{cmd:,} {it:loc}]{cmd:)}:
{p_end}
	       {it:s1}:  {it:r x c} 
	       {it:s2}:  {it:r x c}
	      {it:loc}:  1 {it:x} 1
	   {it:result}:  {it:r x c}

{p 4 4 2}
{cmd:ustrsortkey(}{it:s} [{cmd:,} {it:loc}]{cmd:)}:
{p_end}
		{it:s}:  {it:r x c} 
	      {it:loc}:  1 {it:x} 1
	   {it:result}:  {it:r x c}

{p 4 4 2}
{cmd:ustrcompareex(}{it:s1}{cmd:,} {it:s2}{cmd:,} {it:loc}{cmd:,} {it:st}{cmd:,} {it:case}{cmd:,} {it:cslv}{cmd:,} {it:norm}{cmd:,} {it:num}{cmd:,} {it:alt}{cmd:,} {it:fr}{cmd:)}:
{p_end}
	       {it:s1}:  {it:r x c} 
	       {it:s2}:  {it:r x c} 
	      {it:loc}:  1 {it:x} 1
	       {it:st}:  1 {it:x} 1
	     {it:case}:  1 {it:x} 1
	     {it:cslv}:  1 {it:x} 1
	     {it:norm}:  1 {it:x} 1
	      {it:num}:  1 {it:x} 1
	      {it:alt}:  1 {it:x} 1
	       {it:fr}:  1 {it:x} 1
	   {it:result}:  {it:r x c}

{p 4 4 2}
{cmd:ustrsortkeyex(}{it:s}{cmd:,} {it:loc}{cmd:,} {it:st}{cmd:,} {it:case}{cmd:,} {it:cslv}{cmd:,} {it:norm}{cmd:,} {it:num}{cmd:,} {it:alt}{cmd:,} {it:fr}{cmd:)}:
{p_end}
		{it:s}:  {it:r x c} 
	      {it:loc}:  1 {it:x} 1
	       {it:st}:  1 {it:x} 1
	     {it:case}:  1 {it:x} 1
	     {it:cslv}:  1 {it:x} 1
	     {it:norm}:  1 {it:x} 1
	      {it:num}:  1 {it:x} 1
	      {it:alt}:  1 {it:x} 1
	       {it:fr}:  1 {it:x} 1
	   {it:result}:  {it:r x c}

	   
{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:ustrcompare()} 和 {cmd:ustrcompareex()} 在发生错误时返回一个负数， 
但不是 -1。

{p 4 4 2}
{cmd:ustrsortkey()} 和 {cmd:ustrsortkeyex()} 在发生错误时返回一个空字符串。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ustrcompare.sthlp>}