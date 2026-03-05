{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] args()" "mansection M-5 args()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{viewerjumpto "Syntax" "mf_args_zh##syntax"}{...}
{viewerjumpto "Description" "mf_args_zh##description"}{...}
{viewerjumpto "Conformability" "mf_args_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_args_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_args_zh##source"}
{help mf_args:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] args()} {hline 2}}参数数量
{p_end}
{p2col:}({mansection M-5 args():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real scalar} 
{cmd:args()}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:args()} 返回实际传递给函数的参数数量；请参阅 {bf:{help m2_optargs_zh:[M-2] optargs}}。


{marker conformability}{...}
{title:适应性}

    {cmd:args()}:
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_args.sthlp>}