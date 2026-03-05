{smcl}
{* *! version 1.3.4  24jan2019}{...}
{vieweralsosee "[P] tokenize" "mansection P tokenize"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] foreach" "help foreach_zh"}{...}
{vieweralsosee "[P] gettoken" "help gettoken_zh"}{...}
{vieweralsosee "[P] macro" "help macro_zh"}{...}
{vieweralsosee "[P] syntax" "help syntax_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] invtokens()" "help mf_invtokens_zh"}{...}
{vieweralsosee "[M-5] tokenget()" "help mf_tokenget_zh"}{...}
{vieweralsosee "[M-5] tokens()" "help mf_tokens_zh"}{...}
{vieweralsosee "[M-5] ustrsplit()" "help mf_ustrsplit_zh"}{...}
{viewerjumpto "Syntax" "tokenize_zh##syntax"}{...}
{viewerjumpto "Description" "tokenize_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "tokenize_zh##linkspdf"}{...}
{viewerjumpto "Option" "tokenize_zh##option"}{...}
{viewerjumpto "Remarks" "tokenize_zh##remarks"}{...}
{viewerjumpto "Examples" "tokenize_zh##examples"}
{help tokenize:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[P] tokenize} {hline 2}}将字符串划分为标记{p_end}
{p2col:}({mansection P tokenize:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}{cmdab:token:ize} [[{cmd:`}]{cmd:"}][{it:string}][{cmd:"}[{cmd:'}]]
	[{cmd:,} {cmdab:p:arse:("}{it:pchars}{cmd:")} ]


{marker description}{...}
{title:描述}

{pstd}
{cmd:tokenize} 将 {it:string} 划分为标记，并将结果存储在 {hi:`1'}, {hi:`2'}, ... （位置局部宏）中。标记的划分基于解析字符 {it:pchars}，如果未指定，则默认为空格。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection P tokenizeRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}{cmd:parse("}{it:pchars}{cmd:")} 指定解析字符。如果未指定 {cmd:parse()}，则假定为 {cmd:parse(" ")}，并且 {it:string} 被拆分为单词。请注意，{it:pchars}被视为字节序列。在多字节 UTF-8 编码中，任何 Unicode 字符（除了 ASCII 字符以外的所有 Unicode 字符）被视为字节序列，而不是单个字符。例如，当尝试基于 Unicode 空白字符 {bf:\u2000} 将字符串拆分为标记时，{cmd:parse()} 将无法按预期工作。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:tokenize} 可作为 {help syntax_zh} 命令解析命令行参数的替代或补充。通常，它用于进一步处理由 {cmd:syntax} 创建的局部宏，如下所示。

    {cmd:program myprog}
            {cmd:version {ccl stata_version}}
	    {cmd:syntax [varlist] [if] [in]}
	    {cmd:marksample touse }

	    {cmd:tokenize `varlist'}
	    {cmd:local first `1'}
	    {cmd:macro shift}
	    {cmd:local rest `*'}
	    {it:...}
    {cmd:end}


{marker examples}{...}
{title:示例}

    {cmd:. tokenize some words}
    {cmd:. di "1=|`1'|, 2=|`2'|, 3=|`3'|"}

    {cmd:. tokenize "some more words"}
    {cmd:. di "1=|`1'|, 2=|`2'|, 3=|`3'|, 4=|`4'|"}

    {cmd:. tokenize `""Marcello Pagano""Rino Bellocco""'}
    {cmd:. di "1=|`1'|, 2=|`2'|, 3=|`3'|"}

    {cmd:. local str "A strange++string"}
    {cmd:. tokenize `str'}
    {cmd:. di "1=|`1'|, 2=|`2'|, 3=|`3'|"}

    {cmd:. tokenize `str', parse(" +")}
    {cmd:. di "1=|`1'|, 2=|`2'|, 3=|`3'|, 4=|`4'|, 5=|`5'|, 6=|`6'|"}

    {cmd:. tokenize `str', parse("+")}
    {cmd:. di "1=|`1'|, 2=|`2'|, 3=|`3'|, 4=|`4'|, 5=|`5'|, 6=|`6'|"}

    {cmd:. tokenize}
    {cmd:. di "1=|`1'|, 2=|`2'|, 3=|`3'|"}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tokenize.sthlp>}