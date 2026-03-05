{smcl}
{* *! version 1.1.9  15may2018}{...}
{vieweralsosee "[M-5] strupper()" "mansection M-5 strupper()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] ustrupper()" "help mf_ustrupper_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{viewerjumpto "语法" "mf_strupper_zh##syntax"}{...}
{viewerjumpto "描述" "mf_strupper_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_strupper_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_strupper_zh##remarks"}{...}
{viewerjumpto "适用性" "mf_strupper_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_strupper_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_strupper_zh##source"}
{help mf_strupper:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] strupper()} {hline 2}}将 ASCII 字符串转换为大写（小写）
{p_end}
{p2col:}({mansection M-5 strupper():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string matrix} {cmd:strupper(}{it:string matrix s}{cmd:)}

{p 8 12 2}
{it:string matrix} {cmd:strlower(}{it:string matrix s}{cmd:)}

{p 8 12 2}
{it:string matrix} {cmd:strproper(}{it:string matrix s}{cmd:)}

{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:strupper(}{it:s}{cmd:)} 返回 {it:s}，转换为大写。

{p 4 4 2}
{cmd:strlower(}{it:s}{cmd:)} 返回 {it:s}，转换为小写。

{p 4 4 2}
{cmd:strproper(}{it:s}{cmd:)} 返回一个字符串，其中第一个 ASCII 字母大写，且紧接在非字母字符后面的任何其他 ASCII 字母也大写；所有其他字母转换为小写。

{p 4 4 2}
当 {it:s} 不是标量时，这些函数返回逐元素结果。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 strupper()Remarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。

{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:strproper("mR. joHn a. sMitH")} 返回 "Mr. John A. Smith"。

{p 4 4 2}
{cmd:strproper("jack o'reilly")} 返回 "Jack O'Reilly"。

{p 4 4 2}
{cmd:strproper("2-cent's worth")} 返回 "2-Cent'S Worth"。

{p 4 4 2}
使用 {help mf_ustrupper_zh:ustrupper()} 和 {help mf_ustrupper_zh:ustrlower()} 
将字符串中的 Unicode 字符转换为大写和小写。

{marker conformability}{...}
{title:适用性}

{p 4 4 2}
{cmd:strupper(}{it:s}{cmd:)},
{cmd:strlower(}{it:s}{cmd:)},
{cmd:strproper(}{it:s}{cmd:)}:
{p_end}
	    {it:s}:  {it:r x c}
       {it:result}:  {it:r x c}

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
{center:翻译自Stata官方帮助文档 <mf_strupper.sthlp>}