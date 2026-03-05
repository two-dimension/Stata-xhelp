{smcl}
{* *! version 1.4.3  15may2018}{...}
{vieweralsosee "[M-5] stataversion()" "mansection M-5 stataversion()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] bufio()" "help mf_bufio_zh"}{...}
{vieweralsosee "[M-5] byteorder()" "help mf_byteorder_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{viewerjumpto "Syntax" "mf_stataversion_zh##syntax"}{...}
{viewerjumpto "Description" "mf_stataversion_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_stataversion_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_stataversion_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_stataversion_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_stataversion_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_stataversion_zh##source"}
{help mf_stataversion:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[M-5] stataversion()} {hline 2}}使用中的 Stata 版本
{p_end}
{p2col:}({mansection M-5 stataversion():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数标量}
{cmd:stataversion()}


{p 8 12 2}
{it:实数标量}
{cmd:statasetversion()}

{p 8 12 2}
{it:无返回值}{bind:       }
{cmd:statasetversion(}{it:实数标量 版本}{cmd:)}


{p 4 11 2}
注意：版本号乘以 100：Stata 2.0 为 200，Stata 5.1 为 510，Stata 16.0 为 1600。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:stataversion()} 返回当前运行的 Stata/Mata 版本，乘以 100。
例如，如果您的计算机上安装了 Stata 16.0，{cmd:stataversion()} 返回 1600。

{p 4 4 2}
{cmd:statasetversion()} 返回用户设置的 Stata 版本——Stata 目前所模拟的版本——乘以 100。
通常情况下，{cmd:stataversion()} 等于 {cmd:statasetversion()}。
如果用户设置了较早版本——例如，通过在 Stata 中输入 {cmd:version} {cmd:8} 将版本设置为 8——{cmd:statasetversion()} 将返回一个小于 {cmd:stataversion()} 的数字。

{p 4 4 2}
{cmd:statasetversion(}{it:版本}{cmd:)} 允许您重置所模拟的版本。
结果与使用 Stata 的 {help version_zh} 命令相同。{it:版本} 被指定为等于所需版本的整数（乘以 100）。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 stataversion()Remarksandexamples:说明和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
通常不需要重置 {cmd:statasetversion()}。如果您确实重置了 {cmd:statasetversion()}，建议完成后将其恢复：

	{cmd:current_version = statasetversion()}
	{cmd:statasetversion(}{it:desired_version}{cmd:)}
	...
	{cmd:statasetversion(current_version)}


{marker conformability}{...}
{title:相容性}

    {cmd:stataversion()}:
          {it:结果}:  1 {it:x} 1

    {cmd:statasetversion()}:
          {it:结果}:  1 {it:x} 1

    {cmd:statasetversion(}{it:版本}{cmd:)}
         {it:版本}:  1 {it:x} 1
          {it:结果}:  {it:无返回值}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果 {it:版本} 小于 100 或大于 {cmd:stataversion()}，则 {cmd:statasetversion(}{it:版本}{cmd:)} 将导致错误中止。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_stataversion.sthlp>}