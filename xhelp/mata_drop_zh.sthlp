{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-3] mata drop" "mansection M-3 matadrop"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] mata clear" "help mata_clear_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] Intro" "help m3_intro_zh"}{...}
{viewerjumpto "语法" "mata_drop_zh##syntax"}{...}
{viewerjumpto "描述" "mata_drop_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mata_drop_zh##linkspdf"}{...}
{viewerjumpto "备注" "mata_drop_zh##remarks"}
{help mata_drop:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-3] mata drop} {hline 2}}删除矩阵或函数
{p_end}
{p2col:}({mansection M-3 matadrop:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
: {cmd:mata} {cmd:drop}
{it:namelist}


{p 4 4 2}
其中 {it:namelist} 定义如 
{bf:{help m3_namelists_zh:[M-3] namelists}}.

{p 4 4 2}
此命令用于 Mata 模式，跟随 Mata 的冒号提示符使用。
要在 Stata 的点提示符下使用此命令，请输入

		. {cmd:mata: mata drop} ...


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mata} {cmd:drop} 
从内存中清除指定的矩阵和函数。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-3 matadropRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
使用 {cmd:mata describe}（见 {bf:{help mata_describe_zh:[M-3] mata describe}}）
来确定内存中的内容。  
使用 {cmd:mata clear}（见 {bf:{help mata_clear_zh:[M-3] mata clear}}）
来删除所有矩阵和函数，或使用 Stata 的 {cmd:clear mata} 命令
（见 {bf:{help clear_zh:[D] clear}}）。

{p 4 4 2}
要删除名为 {cmd:A} 的矩阵，请输入 

	: {cmd:mata drop A}

{p 4 4 2}
要删除名为 {cmd:foo()} 的函数，请输入 

	: {cmd:mata drop foo()}

{p 4 4 2}
要删除名为 {cmd:A} 的矩阵和名为 {cmd:foo()} 的函数，请输入 

	: {cmd:mata drop A foo()}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mata_drop.sthlp>}