{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] editvalue()" "mansection M-5 editvalue()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] editmissing()" "help mf_editmissing_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{viewerjumpto "语法" "mf_editvalue_zh##syntax"}{...}
{viewerjumpto "描述" "mf_editvalue_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_editvalue_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_editvalue_zh##remarks"}{...}
{viewerjumpto "兼容性" "mf_editvalue_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_editvalue_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_editvalue_zh##source"}
{help mf_editvalue:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] editvalue()} {hline 2}}编辑（更改）矩阵中的值
{p_end}
{p2col:}({mansection M-5 editvalue():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:matrix}
{cmd:editvalue(}{it:matrix A}{cmd:,}
{it:scalar from}{cmd:,}
{it:scalar to}{cmd:)}

{p 8 8 2}
{it:void}{bind: }
{cmd:_editvalue(}{it:matrix A}{cmd:,}
{it:scalar from}{cmd:,}
{it:scalar to}{cmd:)}


{p 4 4 2}
其中 {it:A}、{it:from} 和 {it:to} 可以是实数、复数或字符串。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:editvalue(}{it:A}{cmd:,} {it:from}{cmd:,} {it:to}{cmd:)} 返回将所有等于 {it:from} 的 {it:A} 中的元素更改为 {it:to} 的矩阵。

{p 4 4 2}
_{cmd:editvalue(}{it:A}{cmd:,} {it:from}{cmd:,} {it:to}{cmd:)} 做同样的事情，但会修改 {it:A} 本身。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 editvalue()Remarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:editvalue()} 和 {cmd:_editvalue()} 速度很快。

{p 4 4 2}
如果您希望将缺失值更改为非缺失值，最好使用 {bf:{help mf_editmissing_zh:[M-5] editmissing()}}。
{cmd:editvalue(}{it:A}{cmd:, ., 1)} 会将所有 {cmd:.} 缺失值更改为 1，但会保留 {cmd:.a}、{cmd:.b} 等不变。
{cmd:editmissing(}{it:A}{cmd:, 1)} 会将所有缺失值更改为 1。


{marker conformability}{...}
{title:兼容性}

    {cmd:editvalue(}{it:A}{cmd:,} {it:from}{cmd:,} {it:to}{cmd:)}:
		{it:A}:  {it:r x c}
	     {it:from}:  1 {it:x} 1
	       {it:to}:  1 {it:x} 1
	   {it:result}:  {it:r x c}

    {cmd:_editvalue(}{it:A}{cmd:,} {it:from}{cmd:,} {it:to}{cmd:)}:
	{it:input:}
		{it:A}:  {it:r x c}
	     {it:from}:  1 {it:x} 1
	       {it:to}:  1 {it:x} 1
	{it:output:}
		{it:A}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:editvalue(}{it:A}{cmd:,} {it:from}{cmd:,} {it:to}{cmd:)} 返回与 {it:A} 相同类型的矩阵。

{p 4 4 2}
{cmd:editvalue(}{it:A}{cmd:,} {it:from}{cmd:,} {it:to}{cmd:)} 
和
{cmd:_editvalue(}{it:A}{cmd:,} {it:from}{cmd:,} {it:to}{cmd:)}
如果 {it:from} 和 {it:to} 与 {it:A} 不兼容，则会中止并报错。
也就是说，如果 {it:A} 是实数，{it:to} 和 {it:from} 必须是实数。如果 {it:A} 是复数，{it:to} 和 {it:from} 必须各自是实数或复数。如果 {it:A} 是字符串，{it:to} 和 {it:from} 必须是字符串。

{p 4 4 2}
{cmd:_editvalue(}{it:A}{cmd:,} {it:from}{cmd:,} {it:to}{cmd:)}
如果 {it:A} 是视图，则会中止并报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view editvalue.mata, adopath asis:editvalue.mata};
{cmd:_editvalue()} 是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_editvalue.sthlp>}