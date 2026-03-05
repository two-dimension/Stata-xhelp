{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] unlink()" "mansection M-5 unlink()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "Syntax" "mf_unlink_zh##syntax"}{...}
{viewerjumpto "Description" "mf_unlink_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_unlink_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_unlink_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_unlink_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_unlink_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_unlink_zh##source"}
{help mf_unlink:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] unlink()} {hline 2}}删除文件
{p_end}
{p2col:}({mansection M-5 unlink():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}{bind:        }
{cmd:unlink(}{it:字符串标量 文件名}{cmd:)}

{p 8 12 2}
{it:实数标量}
{cmd:_unlink(}{it:字符串标量 文件名}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{opt unlink(filename)} 如果 {it:filename} 存在，则删除它；如果 {it:filename} 不存在，则不执行任何操作；如果 {it:filename} 存在但无法删除，则中止并报错。

{p 4 4 2}
{opt _unlink(filename)} 也执行相同的操作，但如果 {it:filename} 无法删除，则不是中止并报错，而是 {cmd:_unlink()} 返回一个负错误代码。 {cmd:_unlink()} 如果 {it:filename} 被删除或 {it:filename} 不存在，则返回0。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 unlink()备注和示例:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
要删除目录，请参见 {cmd:rmdir()} 在
{bf:{help mf_chdir_zh:[M-5] chdir()}}。


{marker conformability}{...}
{title:适应性}

    {cmd:unlink(}{it:文件名}{cmd:)}
          {it:文件名}:  1 {it:x} 1
	    {it:结果}:  {it:void}

    {cmd:_unlink(}{it:文件名}{cmd:)}
          {it:文件名}:  1 {it:x} 1
	    {it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:unlink(}{it:文件名}{cmd:)}
当 {cmd:_unlink()} 返回负结果时，会中止并报错。

{p 4 4 2}
{cmd:_unlink(}{it:文件名}{cmd:)} 如果文件无法删除，则返回负结果；否则返回0。
如果文件不存在，则返回0。
当发生错误时，最常返回的是 -3602（文件名无效）或 -3621（文件为只读）。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_unlink.sthlp>}