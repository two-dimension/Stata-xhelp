{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] blockdiag()" "mansection M-5 blockdiag()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Standard" "help m4_standard_zh"}{...}
{viewerjumpto "语法" "mf_blockdiag_zh##syntax"}{...}
{viewerjumpto "描述" "mf_blockdiag_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_blockdiag_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_blockdiag_zh##remarks"}{...}
{viewerjumpto "相容性" "mf_blockdiag_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_blockdiag_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_blockdiag_zh##source"}
{help mf_blockdiag:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] blockdiag()} {hline 2}}块对角矩阵
{p_end}
{p2col:}({mansection M-5 blockdiag():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值矩阵}
{cmd:blockdiag(}{it:数值矩阵 Z1}{cmd:,}
{it:数值矩阵 Z2}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:blockdiag(}{it:Z1}{cmd:,} {it:Z2}{cmd:)} 
返回一个块对角矩阵，其中 {it:Z1} 在左上角，而 {it:Z2} 在右下角，即

			{c TLC}{c -}      {c -}{c TRC}
			{c |} {it:Z1}   {bf:0} {c |}
			{c |}  {bf:0}  {it:Z2} {c |}
			{c BLC}{c -}      {c -}{c BRC}

{p 4 4 2}
{it:Z1} 和 {it:Z2} 可以是实数或复数，且不必是同一类型。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 blockdiag()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
要创建一个由 {it:Z1}、{it:Z2} 和 {it:Z3} 组成的块对角矩阵，代码为

	: {cmd:blockdiag(}{it:Z1}{cmd:, blockdiag(}{it:Z2}{cmd:,}{it:Z3}{cmd:))}


{marker conformability}{...}
{title:相容性}

    {cmd:blockdiag(}{it:Z1}{cmd:,} {it:Z2}{cmd:)}:
	       {it:Z1}:  {it:r1 x c1}
	       {it:Z2}:  {it:r2 x c2}
	   {it:result}:  {it:r1}+{it:r2} {it:x} {it:c1}+{it:c2}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。{it:Z1} 和 {it:Z2} 可以是空的，任一个或两个均可。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view blockdiag.mata, adopath asis:blockdiag.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_blockdiag.sthlp>}