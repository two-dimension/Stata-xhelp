{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] cond()" "mansection M-5 cond()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] norm()" "help mf_norm_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{viewerjumpto "Syntax" "mf_cond_zh##syntax"}{...}
{viewerjumpto "Description" "mf_cond_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_cond_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_cond_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_cond_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_cond_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_cond_zh##source"}
{help mf_cond:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] cond()} {hline 2}}条件数
{p_end}
{p2col:}({mansection M-5 cond():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:real scalar}{bind: }
{cmd:cond(}{it:数值矩阵 A}{cmd:)}

{p 8 8 2}
{it:real scalar}{bind: }
{cmd:cond(}{it:数值矩阵 A}, {it:real scalar p}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:cond(}{it:A}{cmd:)} 返回 {cmd:cond(}{it:A}, 2{cmd:)}。

{p 4 4 2}
{cmd:cond(}{it:A}, {it:p}{cmd:)} 返回指定 {help m6_glossary##norm:范数} {it:p} 的 {it:A} 的条件数，
其中 {it:p} 可以是 0、1、2 或 {cmd:.}（缺失值）。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 cond()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
矩阵 A 的条件数为

{* TeX in math mode}{...}
		{it:cond}  =  norm({it:A}, {it:p}) * norm({it:A}^(-1), {it:p})

{p 4 4 2}
当 A 为奇异矩阵时，这些函数返回缺失值。

{p 4 4 2}
接近 1 的值表示矩阵条件良好，大值表示条件不良。


{marker conformability}{...}
{title:兼容性}

    {cmd:cond(}{it:A}{cmd:)}:
		{it:A}:  {it:r x c}
    	   {it:result}:  1 {it:x} 1

    {cmd:cond(}{it:A}, {it:p}{cmd:)}:
		{it:A}:  {it:r x c}
		{it:p}:  1 {it:x} 1
    	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
   {cmd:cond(}{it:A}{cmd:,} {it:p}{cmd:)} 如果 {it:p} 不是 0、1、2 或 {cmd:.}（缺失值）则会终止并报告错误。

{p 4 4 2}
   {cmd:cond(}{it:A}{cmd:)} 和
   {cmd:cond(}{it:A}{cmd:,} {it:p}{cmd:)}
   当 {it:A} 为奇异值或包含缺失值时返回缺失值。

{p 4 4 2}
   {cmd:cond(}{it:A}{cmd:)} 和
   {cmd:cond(}{it:A}{cmd:,} {it:p}{cmd:)}
   当 {it:A} 为无效时返回 1。

{p 4 4 2}
   {cmd:cond(}{it:A}{cmd:)} 和
   {cmd:cond(}{it:A}{cmd:, 2)} 如果 SVD 算法未能收敛则返回缺失值，这种情况非常不可能；见 {bf:{help mf_svd_zh:[M-5] svd()}}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view cond.mata, adopath asis:cond.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_cond.sthlp>}