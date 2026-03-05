{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] dir()" "mansection M-5 dir()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "语法" "mf_dir_zh##syntax"}{...}
{viewerjumpto "描述" "mf_dir_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_dir_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_dir_zh##remarks"}{...}
{viewerjumpto "兼容性" "mf_dir_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_dir_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_dir_zh##source"}
{help mf_dir:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-5] dir()} {hline 2}}文件列表
{p_end}
{p2col:}({mansection M-5 dir():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:string colvector}{bind:  }
{cmd:dir(}{it:dirname}{cmd:,}
{it:filetype}{cmd:,}
{it:pattern}{cmd:)}

{p 8 8 2}
{it:string colvector}{bind:  }
{cmd:dir(}{it:dirname}{cmd:,}
{it:filetype}{cmd:,}
{it:pattern}{cmd:,}
{it:prefix}{cmd:)}

{p 4 4 2}
其中

	 {it:dirname}:  {it:string scalar} 包含目录名称

	{it:filetype}:  {it:string scalar} 包含 {cmd:"files"}, {cmd:"dirs"}, 或 {cmd:"other"}

	 {it:pattern}:  {it:string scalar} 包含匹配模式

	  {it:prefix}:  {it:real scalar} 包含 0 或 1


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:dir(}{it:dirname}{cmd:,} {it:filetype}{cmd:,} {it:pattern}{cmd:)} 
返回一个列向量，包含与 {it:pattern} 匹配的 {it:dir} 中的文件名称。

{p 4 4 2}
{cmd:dir(}{it:dirname}{cmd:,} {it:filetype}{cmd:,} {it:pattern}{cmd:,}
{it:prefix}{cmd:)}  同样可以做到这一点，但允许您指定是否 
需要文件的简单列表 ({it:prefix}=0) 还是文件名称列表
前面带有 {it:dirname} ({it:prefix}!=0)。 {cmd:dir(}{it:dirname}{cmd:,}
{it:filetype}{cmd:,} {it:pattern}{cmd:)} 相当于
{cmd:dir(}{it:dirname}{cmd:,} {it:filetype}{cmd:,} {it:pattern}{cmd:, 0)}。

{p 4 4 2}
{it:pattern} 由 {bf:{help mf_strmatch_zh:[M-5] strmatch()}} 进行解释。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 dir()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
示例：

{p 8 12 2}
{cmd:dir(".", "dirs", "*")}{break}
返回当前目录中所有目录的列表。

{p 8 12 2}
{cmd:dir(".", "files", "*")}{break}
返回当前目录中所有常规文件的列表。

{p 8 12 2}
{cmd:dir(".", "files", "*.sthlp")}{break}
返回当前目录中所有 {cmd:*.sthlp} 文件的列表。


{marker conformability}{...}
{title:兼容性}

    {cmd:dir(}{it:dirname}{cmd:,} {it:filetype}{cmd:,} {it:pattern}{cmd:,} {it:prefix}{cmd:)}:
	  {it:dirname}:  1 {it:x} 1
	 {it:filetype}:  1 {it:x} 1
	  {it:pattern}:  1 {it:x} 1
	   {it:prefix}:  1 {it:x} 1    （可选）
	   {it:result}:  {it:k x} 1, {it:k} 匹配模式的文件数量


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:dir(}{it:dirname}{cmd:,} {it:filetype}{cmd:,} {it:pattern}{cmd:,}
{it:prefix}{cmd:)} 返回 {cmd:J(0,1,"")} 如果 

{p 8 12 2}
1. 没有找到与 {it:pattern} 匹配的文件，

{p 8 12 2}
2. 目录 {it:dirname} 不存在，或者

{p 8 12 2}
3. {it:filetype} 配置错误（不等于 {cmd:"files"},
    {cmd:"dirs"}, 或 {cmd:"others"}）。

{p 4 4 2}
{it:dirname} 可以在末尾带或不带目录分隔符指定。

{p 4 4 2}
{it:dirname} = {cmd:""} 被解释为与 {it:dirname} = {cmd:"."} 相同；
当前目录被搜索。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_dir.sthlp>}