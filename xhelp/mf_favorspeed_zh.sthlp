{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] favorspeed()" "mansection M-5 favorspeed()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] mata set" "help mata_set_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{viewerjumpto "Syntax" "mf_favorspeed_zh##syntax"}{...}
{viewerjumpto "Description" "mf_favorspeed_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_favorspeed_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_favorspeed_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_favorspeed_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_favorspeed_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_favorspeed_zh##source"}
{help mf_favorspeed:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] favorspeed()} {hline 2}}是否优先考虑速度或内存
{p_end}
{p2col:}({mansection M-5 favorspeed():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real scalar} 
{cmd:favorspeed()}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:favorspeed()} 返回 
1 如果用户设置了 
{cmd:mata} {cmd:set} {cmd:matafavor} {cmd:speed}
并且返回0，如果用户设置了 
{cmd:mata} {cmd:set} {cmd:matafavor} {cmd:space} 或者根本没有设置
{cmd:matafavor}；请参见 
{bf:{help mata_set_zh:[M-3] mata set}}.


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 favorspeed()Remarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
有时在编程中，你可以选择编写运行更快但消耗更多内存的代码，或编写节省内存但牺牲执行速度的代码。 {cmd:favorspeed()} 告诉你用户的偏好：

	{cmd}if (favorspeed()) {c -(}
		/* 优先考虑速度而非内存的代码 */
	{c )-}
	else {c -(}
		/* 优先考虑内存而非速度的代码 */
	{c )-}{txt}


{marker conformability}{...}
{title:适应性}

    {cmd:favorspeed()}:
	   {it:result}:  1 {it:x} 1

	
{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内建的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_favorspeed.sthlp>}