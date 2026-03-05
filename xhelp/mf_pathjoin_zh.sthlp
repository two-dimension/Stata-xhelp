{smcl}
{* *! version 1.2.1  23jan2019}{...}
{vieweralsosee "[M-5] pathjoin()" "mansection M-5 pathjoin()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "Syntax" "mf_pathjoin_zh##syntax"}{...}
{viewerjumpto "Description" "mf_pathjoin_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_pathjoin_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_pathjoin_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_pathjoin_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_pathjoin_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_pathjoin_zh##source"}
{help mf_pathjoin:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] pathjoin()} {hline 2}}文件路径操作
{p_end}
{p2col:}({mansection M-5 pathjoin():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string scalar}{bind:   }
{cmd:pathjoin(}{it:string scalar path1}{cmd:,}
{it:string scalar path2}{cmd:)}

{p 8 12 2}
{it:void}{bind:            }
{cmd:pathsplit(}{it:string scalar path}{cmd:,}
{it:path1}{cmd:,}
{it:path2}{cmd:)}


{p 8 12 2}
{it:string scalar}{bind:   }
{cmd:pathbasename(}{it:string scalar path}{cmd:)}


{p 8 12 2}
{it:string scalar}{bind:   }
{cmd:pathsuffix(}{it:string scalar path}{cmd:)}

{p 8 12 2}
{it:string scalar}{bind:   }
{cmd:pathrmsuffix(}{it:string scalar path}{cmd:)}


{p 8 12 2}
{it:real scalar}{bind:     }
{cmd:pathisurl(}{it:string scalar path}{cmd:)}

{p 8 12 2}
{it:real scalar}{bind:     }
{cmd:pathisabs(}{it:string scalar path}{cmd:)}

{p 8 12 2}
{it:real scalar}{bind:     }
{cmd:pathasciisuffix(}{it:string scalar path}{cmd:)}

{p 8 12 2}
{it:real scalar}{bind:     }
{cmd:pathstatasuffix(}{it:string scalar path}{cmd:)}


{p 8 12 2}
{it:string rowvector}
{cmd:pathlist(}{it:string scalar dirlist}{cmd:)}

{p 8 12 2}
{it:string rowvector}
{cmd:pathlist()}

{p 8 12 2}
{it:string rowvector}
{cmd:pathsubsysdir(}{it:string rowvector pathlist}{cmd:)}

{p 8 12 2}
{it:string rowvector}
{cmd:pathsearchlist(}{it:string scalar fn}{cmd:)}

{p 8 12 2}
{it:string scalar}{bind:   }
{cmd:pathresolve(}{it:string scalar basepath}{cmd:,}
{it:path}{cmd:)}

{p 8 12 2}
{it:string scalar}{bind:   }
{cmd:pathgetparent(}{it:string scalar path}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:pathjoin(}{it:path1}{cmd:,} {it:path2}{cmd:)} 从逻辑上讲，形成 {it:path1}{cmd:/}{it:path2}，但以适当的样式进行。 
例如，{it:path1} 可能是 URL，而 {it:path2} 是 Windows 的 {it:dirname}{cmd:\}{it:filename}，两条路径仍然会被正确连接。 
所有关于 {it:path1} 是否以目录分隔符结尾的，{it:path2} 是否以一个开头等问题都会自动处理。

{p 4 4 2}
{cmd:pathsplit(}{it:path}{cmd:,} {it:path1}{cmd:,} {it:path2}{cmd:)} 执行反向操作，移除路径的最后一个元素（通常是文件名），并将其存储在 {it:path2} 中，将其余部分存储在 {it:path1} 中。

{p 4 4 2}
{cmd:pathbasename(}{it:path}{cmd:)} 返回 {it:path} 的最后一个元素。

{p 4 4 2}
{cmd:pathsuffix(}{it:path}{cmd:)} 返回文件后缀，带有前导点（如果有），否则返回 ""。 
例如，{cmd:pathsuffix("this\that.ado")} 返回 "{cmd:.ado}"。

{p 4 4 2}
{cmd:pathrmsuffix(}{it:path}{cmd:)} 返回 {it:path}，去掉后缀（如果有）。 
例如， {cmd:pathrmsuffix("this\that.ado")} 返回 "{cmd:this\that}"。

{p 4 4 2}
{cmd:pathisurl(}{it:path}{cmd:)} 如果 {it:path} 是 URL 则返回 1，否则返回 0。

{p 4 4 2}
{cmd:pathisabs(}{it:path}{cmd:)} 如果 {it:path} 是绝对路径则返回 1，如果是相对路径则返回 0。 
{cmd:c:\this} 是绝对路径。 {cmd:this\that} 是相对路径。 URL 被认为是绝对的。

{p 4 4 2}
{cmd:pathasciisuffix(}{it:path}{cmd:)} 和 {cmd:pathstatasuffix(}{it:path}{cmd:)} 更多是供 StataCorp 使用。 
{cmd:pathasciisuffix()} 如果文件被知道是文本，则返回 1，基于其文件后缀。 
StataCorp 在 Stata 的 {cmd:net} 命令中使用此功能，以决定下载过程中是否应修改不同操作系统之间的行尾字符。
{cmd:pathstatasuffix()} 是 Stata 的 {cmd:net} 和 {cmd:update} 命令用来决定文件是否属于官方目录的函数。 
{cmd:pathstatasuffix("example.ado")} 为真，但 {cmd:pathstatasuffix("example.do")} 为假，因为 do 文件不能放在系统目录中。

{p 4 4 2}
{cmd:pathlist(}{it:dirlist}{cmd:)} 返回一个行向量，每个元素包含分号分隔的路径列表 {it:dirlist} 的元素。 
例如，{cmd:pathlist("}{it:a}{cmd:;}{it:b}{cmd:;}{it:c}{cmd:")} 返回 {cmd:("}{it:a}{cmd:", "}{it:b}{cmd:", "}{it:c}{cmd:")}。

{p 4 4 2}
{cmd:pathlist()} 无参数返回 {cmd:pathlist(c("adopath"))}，即官方 Stata ado-path 的分解元素。

{p 4 4 2}
{cmd:pathsubsysdir(}{it:pathlist}{cmd:)} 返回 {it:pathlist}，将 Stata 系统目录的简写，如 {cmd:PLUS}, {cmd:PERSONAL}，替换为实际目录名称。 
例如，获得 Stata 搜索文件的官方目录的正确方法是 {cmd:pathsubsysdir(pathlist())}。

{p 4 4 2}
{cmd:pathsearchlist(}{it:fn}{cmd:)} 返回一个行向量。 
元素是全路径/文件名，指定 Stata 在官方 Stata ado-path 上查找 {it:fn} 的所有位置，按顺序。

{p 4 4 2}
{cmd:pathresolve(}{it:basepath}{cmd:,} {it:path}{cmd:)} 返回 {it:path} 通过 {it:basepath} 的解析路径。 
例如，{cmd:pathresolve("c:/test", "../test1")} 返回 {cmd:"c:/test1"}。

{p 4 4 2}
{cmd:pathgetparent(}{it:path}{cmd:)} 返回 {it:path} 的父路径。 
例如，{cmd:pathgetparent("c:/test/test.do")} 返回 {cmd:"c:/test"}。 
既不需要 {cmd:c:/test} 也不需要 {cmd:c:/test/test.do} 存在。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 pathjoin()Remarksandexamples:备注和示例}

{pstd}
上面的部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
使用这些函数，您更有可能编写出在任何操作系统上正确运行的代码。

{p 4 4 2}
{cmd:pathremove()} 如果您没有必要的权限去移除目录或其内容，则返回错误代码。

{p 4 4 2}
{cmd:pathresolve(}{it:basepath}{cmd:,} {it:path}{cmd:)} 如果是绝对路径则直接返回 {it:path}。

{p 4 4 2}
如果 {it:basepath} 没有根元素，例如 {cmd:../}，则 {cmd:pathresolve(}{it:basepath}{cmd:,} {it:path}{cmd:)} 的行为未定义。


{marker conformability}{...}
{title:兼容性}

    {cmd:pathjoin(}{it:path1}{cmd:,} {it:path2}{cmd:)}
	    {it:path1}:  1 {it:x} 1
	    {it:path2}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

    {cmd:pathsplit(}{it:path}{cmd:,} {it:path1}{cmd:,} {it:path2}{cmd:)}:
	{it:input:}
	     {it:path}:  1 {it:x} 1
	{it:output:}
	    {it:path1}:  1 {it:x} 1
	    {it:path2}:  1 {it:x} 1

{p 4 4 2}
    {cmd:pathbasename(}{it:path}{cmd:)},
    {cmd:pathsuffix(}{it:path}{cmd:)},
    {cmd:pathrmsuffix(}{it:path}{cmd:)}:
{p_end}
	     {it:path}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

{p 4 4 2}
{cmd:pathisurl(}{it:path}{cmd:)},
{cmd:pathisabs(}{it:path}{cmd:)},
{cmd:pathasciisuffix(}{it:path}{cmd:)},
{cmd:pathstatasuffix(}{it:path}{cmd:)}:
{p_end}
	     {it:path}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

    {cmd:pathlist(}{it:dirlist}{cmd:)}:
	  {it:dirlist}:  1 {it:x} 1    (可选)
	   {it:result}:  1 {it:x k}

    {cmd:pathsubsysdir(}{it:pathlist}{cmd:)}:
	 {it:pathlist}:  1 {it:x k}
	   {it:result}:  1 {it:x k}

    {cmd:pathsearchlist(}{it:fn}{cmd:)}:
	       {it:fn}:  1 {it:x} 1
	   {it:result}:  1 {it:x k}
   
{p 4 4 2}
    {cmd:pathresolve(}{it:basepath}{cmd:,} {it:path}{cmd:)}:
{p_end}
	  {it:basepath}:  1 {it:x} 1
	      {it:path}:  1 {it:x} 1
	    {it:result}:  1 {it:x} 1

{p 4 4 2}
	{cmd:pathgetparent(}{it:path}{cmd:)}:
{p_end}
	      {it:path}:  1 {it:x} 1
	    {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果路径对操作系统来说太长，所有例程都会因错误而中止。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view pathsplit.mata, adopath asis:pathsplit.mata},
{view pathlist.mata, adopath asis:pathlist.mata},
{view pathsubsysdir.mata, adopath asis:pathsubsysdir.mata},
{view pathsearchlist.mata, adopath asis:pathsearchlist.mata}; 其他函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_pathjoin.sthlp>}