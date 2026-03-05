{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] invtokens()" "mansection M-5 invtokens()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] gettoken" "help gettoken_zh"}{...}
{vieweralsosee "[P] tokenize" "help tokenize_zh"}{...}
{vieweralsosee "[M-5] tokenget()" "help mf_tokenget_zh"}{...}
{vieweralsosee "[M-5] tokens()" "help mf_tokens_zh"}{...}
{vieweralsosee "[M-5] ustrword()" "help mf_ustrword_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Strings" "help m4_string_zh"}{...}
{viewerjumpto "Syntax" "mf_invtokens_zh##syntax"}{...}
{viewerjumpto "Description" "mf_invtokens_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_invtokens_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_invtokens_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_invtokens_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_invtokens_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_invtokens_zh##source"}
{help mf_invtokens:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] invtokens()} {hline 2}}将字符串行向量连接为字符串标量{p_end}
{p2col:}({mansection M-5 invtokens():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string scalar}
{cmd:invtokens(}{it:string rowvector s}{cmd:)}

{p 8 12 2}
{it:string scalar}
{cmd:invtokens(}{it:string rowvector s}{cmd:,} {it:string scalar c}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:invtokens(}{it:s}{cmd:)} 返回 {it:s} 的元素，连接为一个以空格分隔的字符串标量。
{cmd:invtokens(}{it:s}{cmd:)} 等价于 
{cmd:invtokens(}{it:s}, {cmd:" "}。

{p 4 4 2}
{cmd:invtokens(}{it:s}{cmd:,} {it:c}{cmd:)} 返回 {it:s} 的元素，
连接为一个以 {it:c} 分隔的字符串标量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 invtokens()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:invtokens(}{it:s}{cmd:)} 是 {cmd:tokens()} 的反函数（见
{bf:{help mf_tokens_zh:[M-5] tokens()}}）； 
{cmd:invtokens()}
返回通过将 {it:s} 的元素连接为一个以空格分隔的列表获得的字符串。

{p 4 4 2}
{cmd:invtokens(}{it:s}{cmd:,} {it:c}{cmd:)}
在 {it:s} 的元素之间放置 {it:c} ，即使 {it:s} 的元素等于 {cmd:""}。
例如，

        {cmd:: s = ("alpha", "", "gamma", "")}

        {cmd:: invtokens(s, ";")}
          alpha;;gamma;

{p 4 4 2}
{txt}要去除空元素之间的分隔符，可以使用 {cmd:select()} (见
{bf:{help mf_select_zh:[M-5] select()}}) 预先从 {it:s} 中去除空
元素：

        {cmd:: s2 = select(s, strlen(s):>0)}

        {cmd:: s2}
                  1      2
            {c TLC}{hline 17}{c TRC}
          1 {c |}  alpha   gamma  {c |}
            {c BLC}{hline 17}{c BRC}

        {cmd:: invtokens(s2, ";")}
          alpha;gamma


{marker conformability}{...}
{title:兼容性}

    {cmd:invtokens(}{it:s}{cmd:,} {it:c}{cmd:)}:
		 {it:s}:  1 {it:x p} 
	         {it:c}:  1 {it:x} 1    (可选)
	    {it:result}:  1 {it:x} 1 


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果 {it:s} 为 1 {it:x} 0, {cmd:invtokens(}{it:s},{it:c}{cmd:)} 返回
{cmd:""}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view invtokens.mata, adopath asis:invtokens.mata} 
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_invtokens.sthlp>}