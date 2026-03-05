{smcl}
{* *! version 1.4.0  23jan2019}{...}
{vieweralsosee "[M-4] 字符串" "mansection M-4 String"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 介绍" "help m4_intro_zh"}{...}
{viewerjumpto "目录" "m4_string_zh##contents"}{...}
{viewerjumpto "描述" "m4_string_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "m4_string_zh##linkspdf"}{...}
{viewerjumpto "备注" "m4_string_zh##remarks"}
{help m4_string:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-4] 字符串} {hline 2}}字符串操作函数
{p_end}
{p2col:}({mansection M-4 String:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker contents}{...}
{title:目录}

{col 5}   [M-5]
{col 5}手册条目{col 23}函数{col 39}用途
{col 5}{hline}

{col 5}   {c TLC}{hline 9}{c TRC}
{col 5}{hline 3}{c RT}{it: 解析 }{c LT}{hline}
{col 5}   {c BLC}{hline 9}{c BRC}

{col 7}{bf:{help mf_tokens_zh:tokens()}}{...}
{col 23}{cmd:tokens()}{...}
{col 39}从字符串中获取标记（单词）

{col 7}{bf:{help mf_invtokens_zh:invtokens()}}{...}
{col 23}{cmd:invtokens()}{...}
{col 39}将字符串向量连接成字符串
{col 41}标量

{col 7}{bf:{help mf_ustrword_zh:ustrword()}}{...}
{col 23}{cmd:ustrword()}{...}
{col 39}返回第 {it:n} 个 Unicode 单词
{col 23}{cmd:ustrwordcount()}{...}
{col 39}返回 Unicode 单词的数量

{col 7}{bf:{help mf_strmatch_zh:strmatch()}}{...}
{col 23}{cmd:strmatch()}{...}
{col 39}模式匹配

{col 7}{bf:{help mf_tokenget_zh:tokenget()}}{...}
{col 23}...{...}
{col 39}高级解析

{col 7}{bf:{help mf_ustrsplit_zh:ustrsplit()}}{...}
{col 23}{cmd:ustrsplit()}{...}
{col 39}根据 Unicode 正则表达式将字符串分割成部分

{col 5}   {c TLC}{hline 19}{c TRC}
{col 5}{hline 3}{c RT}{it: 长度与位置 }{c LT}{hline}
{col 5}   {c BLC}{hline 19}{c BRC}

{col 7}{bf:{help mf_strlen_zh:strlen()}}{...}
{col 23}{cmd:strlen()}{...}
{col 39}字符串的字节长度

{col 7}{bf:{help mf_ustrlen_zh:ustrlen()}}{...}
{col 23}{cmd:ustrlen()}{...}
{col 39}字符串中的 Unicode 字符长度

{col 7}{bf:{help mf_udstrlen_zh:udstrlen()}}{...}
{col 23}{cmd:udstrlen()}{...}
{col 39}字符串在显示列中的长度

{col 7}{bf:{help mf_fmtwidth_zh:fmtwidth()}}{...}
{col 23}{cmd:fmtwidth()}{...}
{col 39}格式 {cmd:%}{it:fmt} 的宽度

{col 7}{bf:{help mf_strpos_zh:strpos()}}{...}
{col 23}{cmd:strpos()}{...}
{col 39}从左侧查找子字符串

{col 7}{bf:{help mf_strrpos:strrpos()}}{...}
{col 23}{cmd:strrpos()}{...}
{col 39}从右侧查找子字符串

{col 7}{bf:{help mf_ustrpos_zh:ustrpos()}}{...}
{col 23}{cmd:ustrpos()}{...}
{col 39}在字符串中查找 Unicode 子字符串，
{col 41}首次出现
{col 23}{cmd:ustrrpos()}{...}
{col 39}在字符串中查找 Unicode 子字符串，
{col 41}最后一次出现

{col 7}{bf:{help mf_indexnot_zh:indexnot()}}{...}
{col 23}{cmd:indexnot()}{...}
{col 39}查找不在列表中的字符

{col 5}   {c TLC}{hline 9}{c TRC}
{col 5}{hline 3}{c RT}{it: 编辑 }{c LT}{hline}
{col 5}   {c BLC}{hline 9}{c BRC}

{col 7}{bf:{help mf_substr_zh:substr()}}{...}
{col 23}{cmd:substr()}{...}
{col 39}提取子字符串

{col 7}{bf:{help mf_usubstr_zh:usubstr()}}{...}
{col 23}{cmd:usubstr()}{...}
{col 39}提取 Unicode 子字符串

{col 7}{bf:{help mf_udsubstr_zh:udsubstr()}}{...}
{col 23}{cmd:udsubstr()}{...}
{col 39}基于显示列提取 Unicode 子字符串

{col 7}{bf:{help mf_strupper_zh:strupper()}}{...}
{col 23}{cmd:strupper()}{...}
{col 39}转换为大写
{col 23}{cmd:strlower()}{...}
{col 39}转换为小写
{col 23}{cmd:strproper()}{...}
{col 39}转换为首字母大写

{col 7}{bf:{help mf_ustrupper_zh:ustrupper()}}{...}
{col 23}{cmd:ustrupper()}{...}
{col 39}将 Unicode 字符转换为大写 
{col 23}{cmd:ustrlower()}{...}
{col 39}将 Unicode 字符转换为小写 
{col 23}{cmd:ustrtitle()}{...}
{col 39}将 Unicode 字符转换为标题格式

{col 7}{bf:{help mf_strtrim_zh:strtrim()}}{...}
{col 23}{cmd:stritrim()}{...}
{col 39}将多个连续的内部空格替换为一个空格
{col 23}{cmd:strltrim()}{...}
{col 39}去除前导空格
{col 23}{cmd:strrtrim()}{...}
{col 39}去除尾随空格
{col 23}{cmd:strtrim()}{...}
{col 39}去除前导和尾随空格

{col 7}{bf:{help mf_ustrtrim_zh:ustrtrim()}}{...}
{col 23}{cmd:ustrtrim()}{...}
{col 39}去除前导和尾随 Unicode 
{col 41}空白字符和空格
{col 23}{cmd:ustrltrim()}{...}
{col 39}去除前导 Unicode 
{col 41}空白字符和空格
{col 23}{cmd:ustrrtrim()}{...}
{col 39}去除尾随 Unicode 
{col 41}空白字符和空格

{col 7}{bf:{help mf_subinstr_zh:subinstr()}}{...}
{col 23}{cmd:subinstr()}{...}
{col 39}替换文本
{col 23}{cmd:subinword()}{...}
{col 39}替换单词

{col 7}{bf:{help mf_usubinstr_zh:usubinstr()}}{...}
{col 23}{cmd:usubinstr()}{...}
{col 39}替换 Unicode 子字符串

{col 7}{bf:{help mf__substr_zh:_substr()}}{...}
{col 23}{cmd:_substr()}{...}
{col 39}替换字符串中的内容

{col 7}{bf:{help mf__usubstr_zh:_usubstr()}}{...}
{col 23}{cmd:_usubstr()}{...}
{col 39}替换 Unicode 字符串中的内容

{col 7}{bf:{help mf_strdup_zh:strdup()}}{...}
{col 23}{cmd:*}{...}
{col 39}复制字符串

{col 7}{bf:{help mf_strreverse_zh:strreverse()}}{...}
{col 23}{cmd:strreverse()}{...}
{col 39}反转字符串的字节

{col 7}{bf:{help mf_ustrreverse_zh:ustrreverse()}}{...}
{col 23}{cmd:ustrreverse()}{...}
{col 39}反转 Unicode 字符的字符串

{col 7}{bf:{help mf_soundex_zh:soundex()}}{...}
{col 23}{cmd:soundex()}{...}
{col 39}转换为声母编码
{col 23}...{cmd:_nara()}{...}
{col 39}转换为美国人口普查声母编码

{col 5}   {c TLC}{hline 7}{c TRC}
{col 5}{hline 3}{c RT}{it: Stata }{c LT}{hline}
{col 5}   {c BLC}{hline 7}{c BRC}

{col 7}{bf:{help mf_abbrev_zh:abbrev()}}{...}
{col 23}{cmd:abbrev()}{...}
将 Unicode 字符串缩写为显示列

{col 7}{bf:{help mf_strtoname_zh:strtoname()}}{...}
{col 23}{cmd:strtoname()}{...}
将字符串转换为 Stata 13 
{col 41}相容名称

{col 7}{bf:{help mf_ustrtoname_zh:ustrtoname()}}{...}
{col 23}{cmd:ustrtoname()}{...}
将 Unicode 字符串转换为 Stata
{col 41}名称

{col 5}   {c TLC}{hline 18}{c TRC}
{col 5}{hline 3}{c RT}{it: 文本转换 }{c LT}{hline}
{col 5}   {c BLC}{hline 18}{c BRC}

{col 7}{bf:{help mf_strofreal_zh:strofreal()}}{...}
{col 23}{cmd:strofreal()}{...}
将实数转换为字符串

{col 7}{bf:{help mf_strtoreal_zh:strtoreal()}}{...}
{col 23}{cmd:strtoreal()}{...}
将字符串转换为实数

{col 7}{bf:{help mf_ustrto_zh:ustrto()}}{...}
{col 23}{cmd:ustrto()}{...}
将 Unicode 字符串转换为另一种编码的字符串
{col 41}{col 23}{cmd:ustrfrom()}{...}
{col 39}将一种编码的字符串转换为
{col 41}Unicode 字符串

{col 7}{bf:{help mf_ustrunescape_zh:ustrunescape()}}{...}
{col 23}{cmd:ustrunescape()}{...}
将转义的十六进制序列转换为 Unicode 
{col 23}{cmd:ustrtohex()}{...}
{col 39}将 Unicode 序列转换为十六进制
{col 41}序列

{col 7}{bf:{help mf_urlencode_zh:urlencode()}}{...}
{col 23}{cmd:urlencode()}{...}
将字符串转换为有效的 ASCII 
{col 41}格式以进行网络传输
{col 23}{cmd:urldecode()}{...}
{col 39}解码从 
{col 41}{cmd:urlencode()} 获得的字符串

{col 7}{bf:{help mf_ascii_zh:ascii()}}{...}
{col 23}{cmd:ascii()}{...}
获取字符串的 ASCII 或字节码
{col 41}{col 23}{cmd:char()}{...}
{col 39}从 ASCII 或字节码生成字符串

{col 7}{bf:{help mf_uchar_zh:uchar()}}{...}
{col 23}{cmd:uchar()}{...}
从 Unicode 
{col 41}代码点值生成 Unicode 字符

{col 7}{bf:{help mf_isascii_zh:isascii()}}{...}
{col 23}{cmd:isascii()}{...}
判断字符串标量是否仅包含
{col 41}ASCII 代码

{col 5}   {c TLC}{hline 18}{c TRC}
{col 5}{hline 3}{c RT}{it: Unicode 工具}{c LT}{hline}
{col 5}   {c BLC}{hline 18}{c BRC}

{col 7}{bf:{help mf_ustrcompare_zh:ustrcompare()}}{...}
{col 23}{cmd:ustrcompare()}{...}
比较或排序 Unicode 字符串
{col 23}{cmd:ustrsortkey()}{...}
{col 39}获取 Unicode 字符串的排序键

{col 7}{bf:{help mf_ustrfix_zh:ustrfix()}}{...}
{col 23}{cmd:ustrfix()}{...}
替换 Unicode 字符串中的无效序列

{col 7}{bf:{help mf_ustrnormalize_zh:ustrnormalize()}}{...}
{col 23}{cmd:ustrnormalize()}{...}
标准化 Unicode 字符串

{col 5}{hline}


{marker description}{...}
{title:描述}

{p 4 4 2}
以上函数用于操作字符串。在 Mata 中，字符串是采用 {help m6_glossary##utf8:UTF-8 编码} 的 Unicode 字符串，通常为可打印字符，但 Mata 不强制执行此类限制。特别是，字符串可以包含二进制 0。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-4 StringRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
除了上述函数外，还有两个运算符对于处理字符串尤其有用。

{p 4 4 2}
第一个是 {cmd:+}。加法是连接字符串的方式：

	: {cmd:"abc" + "def"}
	{res:abcdef}

	: {cmd:"Café " + "de Flore"}
	{res:Café de Flore}

	: {cmd:command = "list"}
	: {cmd:args = "mpg weight"}
	: {cmd:result = command + " " + args}
	: {cmd:result}
	{res:list mpg weight}

{p 4 4 2}
第二个是 {cmd:*}。乘法是复制字符串的方式：

	: {cmd:5*"a"}
	{res:aaaaa}

	: {cmd:"Allô"*2}
	{res:AllôAllô}

	: {cmd:indent = 20}
	: {cmd:title = indent*" " + "My Title"}
	: {cmd:title}
        {res:                    My Title}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m4_string.sthlp>}