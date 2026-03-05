{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] strdup()" "mansection M-5 strdup()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{viewerjumpto "语法" "mf_strdup_zh##syntax"}{...}
{viewerjumpto "描述" "mf_strdup_zh##description"}{...}
{viewerjumpto "兼容性" "mf_strdup_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_strdup_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_strdup_zh##source"}
{help mf_strdup:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] strdup()} {hline 2}}字符串复制
{p_end}
{p2col:}({mansection M-5 strdup():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:n} {cmd:*} {it:s}

	{it:s} {cmd:*} {it:n}

	{it:n} {cmd::*} {it:s}

	{it:s} {cmd::*} {it:n}


{p 4 4 2}
其中 {it:n} 为实数，{it:s} 为字符串。


{marker description}{...}
{title:描述}

{p 4 4 2}
没有 {cmd:strdup()} 函数。相反，使用乘法运算符：  

	3*"example" = "exampleexampleexample"

	"café"*2 = "cafécafé"
	
	   0*"this" = ""


{marker conformability}{...}
{title:兼容性}

    {it:n}{cmd:*}{it:s}, {it:s}{cmd:*}{it:n}:
		{it:n}:  1 {it:x} 1
		{it:s}:  {it:r x c}
	   {it:result}:  {it:r x c}

    {it:n}{cmd::*}{it:s}, {it:s}{cmd::*}{it:n}:
		{it:n}:  {it:r1 x c1}
		{it:s}:  {it:r2 x c2}, {it:n} 和 {it:s} 的 c-兼容
	   {it:result}:  max({it:r1},{it:r2}) {it:x} max({it:c1},{it:c2})


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果 {it:n}<0，结果就像 {it:n}=0 时一样：返回 {cmd:""}。

{p 4 4 2}
如果 {it:n} 不是整数，结果就像指定了 {cmd:trunc(}{it:n}{cmd:)} 一样。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_strdup.sthlp>}