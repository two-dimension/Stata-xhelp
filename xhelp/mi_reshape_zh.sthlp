{smcl}
{* *! version 1.0.15  12apr2019}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi reshape" "mansection MI mireshape"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi replace0" "help mi_replace0_zh"}{...}
{vieweralsosee "[D] reshape" "help reshape_zh"}{...}
{viewerjumpto "语法" "mi_reshape_zh##syntax"}{...}
{viewerjumpto "菜单" "mi_reshape_zh##menu"}{...}
{viewerjumpto "描述" "mi_reshape_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mi_reshape_zh##linkspdf"}{...}
{viewerjumpto "选项" "mi_reshape_zh##options"}{...}
{viewerjumpto "备注" "mi_reshape_zh##remarks"}{...}
{viewerjumpto "示例" "mi_reshape_zh##examples"}
{help mi_reshape:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[MI] mi reshape} {hline 2}}重塑 mi 数据{p_end}
{p2col:}({mansection MI mireshape:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{marker overview}{...}
    概述

{pmore}
{it}(下面的词 {rm:long} 和 {rm:wide} 与 mi 样式 mlong, flong, flongsep 和 wide 无关; 它们与 reshape 的概念有关。){rm}

	       {it:long}
              {c TLC}{hline 12}{c TRC}                  {it:wide}
              {c |} {it:i  j}  {it:stub} {c |}                 {c TLC}{hline 16}{c TRC}
              {c |}{hline 12}{c |}                 {c |} {it:i}  {it:stub}{bf:1} {it:stub}{bf:2} {c |}
              {c |} 1  {bf:1}   4.1 {c |}     reshape     {c |}{hline 16}{c |}
              {c |} 1  {bf:2}   4.5 {c |}   <{hline 9}>   {c |} 1    4.1   4.5 {c |}
              {c |} 2  {bf:1}   3.3 {c |}                 {c |} 2    3.3   3.0 {c |}
              {c |} 2  {bf:2}   3.0 {c |}                 {c BLC}{hline 16}{c BRC}
              {c BLC}{hline 12}{c BRC}


	      从长形转换为宽形：

{col 52}{it:j} 现有变量
{col 51}/
		    {cmd:mi reshape wide} {it:stub}{cmd:, i(}{it:i}{cmd:) j(}{it:j}{cmd:)}


	      从宽形转换为长形：

		    {cmd:mi reshape long} {it:stub}{cmd:, i(}{it:i}{cmd:) j(}{it:j}{cmd:)}
{col 51}\
{col 52}{it:j} 新变量
	

{p 4 8 2}
基本语法

{phang2}
将 mi 数据从长形转换为宽形

{p 12 16 2}
{cmd:mi reshape} {helpb mi reshape##overview:宽形}
{it:stubnames}{cmd:,}
{cmd:i(}{varlist}{cmd:)}
{cmd:j(}{varname}{cmd:)}
[{it:选项}]

{phang2}
将 mi 数据从宽形转换为长形

{p 12 16 2}
{cmd:mi reshape} {helpb mi reshape##overview:长形}
{it:stubnames}{cmd:,}
{cmd:i(}{varlist}{cmd:)}
{cmd:j(}{varname}{cmd:)}
[{it:选项}]

{col 9}{it:选项}{col 29}描述
{col 9}{hline 59}
{...}
{col 9}{cmd:i(}{varlist}{cmd:)}{...}
{col 29}{it:i} 变量

{col 9}{cmd:j(}{varname} [{it:values}]{cmd:)}{...}
{col 29}长->宽:  {it:j}, 现有变量
{col 29}宽->长:  {it:j}, 新变量
{col 29}可选地指定值以子集 {it:j} 

{col 9}{cmdab:s:tring}{...}
{col 29}{it:j} 是字符串变量（默认数值）
{col 9}{hline 59}

{col 9}其中 {it:values} 是{...}
{col 29}{it:#}[{cmd:-}{it:#}] [...]{...}
{col 54}如果 {it:j} 是数值型（默认）
{col 29}{cmd:"}{it:string}{cmd:"} [{cmd:"}{it:string}{cmd:"} ...]{...}
{col 54}如果 {it:j} 是字符串

{pmore}
并且 {it:stubnames} 是变量名（长->宽），或者变量名的基干（宽->长）。与 {help reshape_zh} 不同，{it:stubnames}
不能包含 {cmd:@} 来表示 {it:j} 出现在名称中的位置; 所有
{it:stubnames} 必须遵循 {it:stub#} 的形式。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:reshape} 是 Stata 针对 {cmd:mi} 数据的 {cmd:reshape}；
请参阅 {bf:{help reshape_zh:[D] reshape}}.


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MI mireshapeRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{p 4 4 2}
有关其他选项的描述，请参阅 {bf:{help reshape_zh:[D] reshape}}。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
您指定的 {cmd:reshape} 命令将在 {it:m}=0 数据上执行，
然后结果将在 {it:m}=1, {it:m}=2, ..., {it:m}={it:M} 中重复。

{p 4 4 2}
在 {cmd:mi reshape} 中，所有与相同 {it:stubnames} 对应的变量，
必须注册为相同的 {cmd:mi} 类型：{cmd:imputed}, {cmd:passive} 或
{cmd:regular}。
{p_end}


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse reshapem1}{p_end}
{phang2}{cmd:. mi describe}

{pstd}列出 m = 1 的数据{p_end}
{phang2}{cmd:. mi xeq 1: list}

{pstd}将数据从宽形转换为长形{p_end}
{phang2}{cmd:. mi reshape long inc ue, i(id) j(year)}

{pstd}列出 m = 1 的结果{p_end}
{phang2}{cmd:. mi xeq 1: list, sepby(id)}

{pstd}将数据从长形转换回宽形{p_end}
{phang2}{cmd:. mi reshape wide inc ue, i(id) j(year)}{p_end}
{phang2}{cmd:. mi xeq 1: list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse reshapem4, clear}{p_end}
{phang2}{cmd:. mi describe}

{pstd}列出 m = 1 的数据{p_end}
{phang2}{cmd:. mi xeq 1: list}

{pstd}将数据从宽形转换为长形，允许 sex 采用字符串值{p_end}
{phang2}{cmd:. mi reshape long inc, i(id) j(sex) string}

{pstd}列出 m = 1 的结果{p_end}
{phang2}{cmd:. mi xeq 1: list, sepby(id)}

{pstd}将数据从长形转换回宽形{p_end}
{phang2}{cmd:. mi reshape wide inc, i(id) j(sex) string}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_reshape.sthlp>}