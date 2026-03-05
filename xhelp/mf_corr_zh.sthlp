{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] corr()" "mansection M-5 corr()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] mean()" "help mf_mean_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Statistical" "help m4_statistical_zh"}{...}
{viewerjumpto "Syntax" "mf_corr_zh##syntax"}{...}
{viewerjumpto "Description" "mf_corr_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_corr_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_corr_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_corr_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_corr_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_corr_zh##source"}
{help mf_corr:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] corr()} {hline 2}}从方差矩阵生成相关矩阵
{p_end}
{p2col:}({mansection M-5 corr():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数矩阵}
{cmd:corr(}{it:实数矩阵 V}{cmd:)}

{p 8 12 2}
{it:void}{bind:      }
{cmd:_corr(}{it:实数矩阵 V}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:corr(}{it:V}{cmd:)} 返回与方差矩阵 {it:V} 对应的相关矩阵。

{p 4 4 2}
{cmd:_corr(}{it:V}{cmd:)} 将 {it:V} 的内容从方差矩阵更改为相关矩阵。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 corr()Remarksandexamples:备注和示例}

{pstd}
以上章节不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
请参见函数 {cmd:variance()} 在 
{bf:{help mf_mean_zh:[M-5] mean()}}
中以获取数据的方差矩阵。


{marker conformability}{...}
{title:兼容性}

    {cmd:corr(}{it:V}{cmd:)}:
	{it:输入:}
		{it:V}:  {it:k x k}
	   {it:结果}:  {it:k x k}

    {cmd:_corr(}{it:V}{cmd:)}:
	{it:输入:}
		{it:V}:  {it:k x k}
	{it:输出:}
		{it:V}:  {it:k x k}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果 {it:V} 不是方阵，{cmd:corr()} 和 {cmd:_corr()} 将会中止并报错。
{it:V} 也应为对称矩阵，但此项未进行检查。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view corr.mata, adopath asis:corr.mata},
{view _corr.mata, adopath asis:_corr.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_corr.sthlp>}