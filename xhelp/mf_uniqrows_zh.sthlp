{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] uniqrows()" "mansection M-5 uniqrows()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] sort()" "help mf_sort_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{viewerjumpto "Syntax" "mf_uniqrows_zh##syntax"}{...}
{viewerjumpto "Description" "mf_uniqrows_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_uniqrows_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_uniqrows_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_uniqrows_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_uniqrows_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_uniqrows_zh##source"}
{help mf_uniqrows:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] uniqrows()} {hline 2}}获取排序后的唯一值
{p_end}
{p2col:}({mansection M-5 uniqrows():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:转形矩阵}
{cmd:uniqrows(}{it:转形矩阵 P}{cmd:)}

{p 8 8 2}
{it:转形矩阵}
{cmd:uniqrows(}{it:转形矩阵 P}{cmd:,} {it:freq}{cmd:)}

    其中 
        {it:freq} = {cmd:0}（不计算频率）或
               {cmd:1}（计算频率）


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:uniqrows(}{it:P}{cmd:)} 
返回一个包含 {it:P} 的唯一行的排序矩阵。

{pstd}
{cmd:uniqrows(}{it:P}{cmd:,} {it:freq}{cmd:)} 执行相同的操作，但允许你指定是否应计算每个组合出现的频率。
使用 {cmd:uniqrows(}{it:P}{cmd:, 0)} 等同于使用
{cmd:uniqrows(}{it:P}{cmd:)}。
{cmd:uniqrows(}{it:P}{cmd:, 1)} 指定应计算每个组合出现的频率。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-5 uniqrows()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

	: {cmd:x}
	{res}       {txt}1   2   3
	    {c TLC}{hline 13}{c TRC}
	  1 {c |}  {res}4   5   7{txt}  {c |}
	  2 {c |}  {res}4   5   6{txt}  {c |}
	  3 {c |}  {res}1   2   3{txt}  {c |}
	  4 {c |}  {res}4   5   6{txt}  {c |}
	    {c BLC}{hline 13}{c BRC}

	: {cmd:uniqrows(x)}
	{res}       {txt}1   2   3
	    {c TLC}{hline 13}{c TRC}
	  1 {c |}  {res}1   2   3{txt}  {c |}
	  2 {c |}  {res}4   5   6{txt}  {c |}
	  3 {c |}  {res}4   5   7{txt}  {c |}
	    {c BLC}{hline 13}{c BRC}

	: {cmd:uniqrows(x, 1)}
	{res}       {txt}1   2   3
	    {c TLC}{hline 17}{c TRC}
	  1 {c |}  {res}1   2   3   1{txt}  {c |}
	  2 {c |}  {res}4   5   6   2{txt}  {c |}
	  3 {c |}  {res}4   5   7   1{txt}  {c |}
	    {c BLC}{hline 17}{c BRC}


{marker conformability}{...}
{title:兼容性}

    {cmd:uniqrows(}{it:P}{cmd:, 0)}
		{it:P}:  {it:r1 x c1}
	   {it:result}:  {it:r2 x c1}, {it:r2} <= {it:r1}

    {cmd:uniqrows(}{it:P}{cmd:, 1)}
		{it:P}:  {it:r1 x c1}
	   {it:result}:  {it:r2 x c1} + 1, {it:r2} <= {it:r1}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
在 {cmd:uniqrows(}{it:P}{cmd:)}中， 
如果 {cmd:rows(}{it:P}{cmd:)==0}， 
则返回 {cmd:J(0, cols(}{it:P}{cmd:), missingof(}{it:P}{cmd:)}。

{p 4 4 2}
如果 {cmd:rows(}{it:P}{cmd:)}>0 且 {cmd:cols(}{it:P}{cmd:)==0}， 
则返回 {cmd:J(1, 0, missingof(}{it:P}{cmd:)}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view uniqrows.mata, adopath asis:uniqrows.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_uniqrows.sthlp>}