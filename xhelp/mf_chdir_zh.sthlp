{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] chdir()" "mansection M-5 chdir()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "语法" "mf_chdir_zh##syntax"}{...}
{viewerjumpto "描述" "mf_chdir_zh##description"}{...}
{viewerjumpto "适应性" "mf_chdir_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_chdir_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_chdir_zh##source"}
{help mf_chdir:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-5] chdir()} {hline 2}}操作目录
{p_end}
{p2col:}({mansection M-5 chdir():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:字符串标量}
{cmd:pwd()}


{p 8 12 2}
{it:无}{bind:         }
{cmd:chdir(}{it:字符串标量 dirpath}{cmd:)}

{p 8 12 2}
{it:实数标量}{bind: }
{cmd:_chdir(}{it:字符串标量 dirpath}{cmd:)}


{p 8 12 2}
{it:无}{bind:         }
{cmd:mkdir(}{it:字符串标量 dirpath}{cmd:)}

{p 8 12 2}
{it:无}{bind:         }
{cmd:mkdir(}{it:字符串标量 dirpath}{cmd:,}
{it:实数标量 public}{cmd:)}

{p 8 12 2}
{it:实数标量}{bind: }
{cmd:_mkdir(}{it:字符串标量 dirpath}{cmd:)}

{p 8 12 2}
{it:实数标量}{bind: }
{cmd:_mkdir(}{it:字符串标量 dirpath}{cmd:,}
{it:实数标量 public}{cmd:)}


{p 8 12 2}
{it:无}{bind:         }
{cmd:rmdir(}{it:字符串标量 dirpath}{cmd:)}

{p 8 12 2}
{it:实数标量}{bind: }
{cmd:_rmdir(}{it:字符串标量 dirpath}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:pwd()} 返回当前工作目录的完整名称（路径）。


{p 4 4 2}
{cmd:chdir(}{it:dirpath}{cmd:)} 
将当前工作目录更改为 {it:dirpath}。如果目录不存在或操作系统无法切换到它，{cmd:chdir()} 将以错误方式中止。

{p 4 4 2}
{cmd:_chdir(}{it:dirpath}{cmd:)} 
执行相同操作，但在 {cmd:chdir()} 中止时返回 170（返回代码）。如果成功，{cmd:_chdir()} 返回 0。


{p 4 4 2}
{cmd:mkdir(}{it:dirpath}{cmd:)} 
和
{cmd:mkdir(}{it:dirpath}{cmd:,} {it:public}{cmd:)} 
创建目录 {it:dirpath}。如果目录已存在或无法创建，{cmd:mkdir()} 将以错误方式中止。
如果指定 {it:public}!=0，目录将被赋予权限，以便所有人都可以读取；否则，将赋予通常的权限。

{p 4 4 2}
{cmd:_mkdir(}{it:dirpath}{cmd:)} 
和 
{cmd:_mkdir(}{it:dirpath}{cmd:,} {it:public}{cmd:)} 
执行相同操作，但在 {cmd:mkdir()} 中止时返回 693（返回代码）。如果成功，{cmd:_mkdir()} 返回 0。

{p 4 4 2}
{cmd:rmdir(}{it:dirpath}{cmd:)} 
删除目录 {it:dirpath}。如果目录不存在、不为空或操作系统拒绝删除它，{cmd:rmdir()} 将以错误方式中止。

{p 4 4 2}
{cmd:_rmdir(}{it:dirpath}{cmd:)} 
执行相同操作，但在 {cmd:rmdir()} 中止时返回 693（返回代码）。如果成功，{cmd:_rmdir()} 返回 0。


{marker conformability}{...}
{title:适应性}

    {cmd:pwd()}:
	   {it:结果}:  1 {it:x} 1

    {cmd:chdir(}{it:dirpath}{cmd:)}:
	  {it:dirpath}:  1 {it:x} 1
	   {it:结果}:  {it:无}

    {cmd:_chdir(}{it:dirpath}{cmd:)}:
	  {it:dirpath}:  1 {it:x} 1
	   {it:结果}:  1 {it:x} 1

    {cmd:mkdir(}{it:dirpath}{cmd:,} {it:public}{cmd:)}:
	  {it:dirpath}:  1 {it:x} 1
	   {it:public}:  1 {it:x} 1    （可选）
	   {it:结果}:  {it:无}

    {cmd:_mkdir(}{it:dirpath}{cmd:,} {it:public}{cmd:)}:
	  {it:dirpath}:  1 {it:x} 1
	   {it:public}:  1 {it:x} 1    （可选）
	   {it:结果}:  1 {it:x} 1

    {cmd:rmdir(}{it:dirpath}{cmd:)}:
	  {it:dirpath}:  1 {it:x} 1
	   {it:结果}:  {it:无}

    {cmd:_rmdir(}{it:dirpath}{cmd:)}:
	  {it:dirpath}:  1 {it:x} 1
	   {it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:pwd()}
从不以错误方式中止，但如果操作系统不知道或没有名称表示当前目录，它可能返回 {cmd:""}（当另一个进程删除您正在使用的目录时，会发生这种情况）。

{p 4 4 2}
{cmd:chdir(}{it:dirpath}{cmd:)} 
如果目录不存在或操作系统无法切换到它，则以错误方式中止。

{p 4 4 2}
{cmd:_chdir(}{it:dirpath}{cmd:)} 从不以错误方式中止；成功时返回 0，失败时返回 170。

{p 4 4 2}
{cmd:mkdir(}{it:dirpath}{cmd:)} 
和
{cmd:mkdir(}{it:dirpath}{cmd:,} {it:public}{cmd:)}
如果目录已存在或操作系统无法切换到它，则以错误方式中止。

{p 4 4 2}
{cmd:_mkdir(}{it:dirpath}{cmd:)} 
和
{cmd:_mkdir(}{it:dirpath}{cmd:,} {it:public}{cmd:)}
从不以错误方式中止；成功时返回 0，失败时返回 693。

{p 4 4 2}
{cmd:rmdir(}{it:dirpath}{cmd:)} 
如果目录不存在、不为空或操作系统无法删除它，则以错误方式中止。

{p 4 4 2}
{cmd:_rmdir(}{it:dirpath}{cmd:)} 
从不以错误方式中止；成功时返回 0，失败时返回 693。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view chdir.mata, adopath asis:chdir.mata},
{view mkdir.mata, adopath asis:mkdir.mata},
{view rmdir.mata, adopath asis:rmdir.mata};
其他函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_chdir.sthlp>}