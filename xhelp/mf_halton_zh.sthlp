{smcl}
{* *! version 1.2.5  15may2018}{...}
{vieweralsosee "[M-5] halton()" "mansection M-5 halton()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Mathematical" "help m4_mathematical_zh"}{...}
{viewerjumpto "Syntax" "mf_halton_zh##syntax"}{...}
{viewerjumpto "Description" "mf_halton_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_halton_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_halton_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_halton_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_halton_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_halton_zh##source"}
{help mf_halton:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] halton()} {hline 2}}生成 Halton 或 Hammersley 集合
{p_end}
{p2col:}({mansection M-5 halton():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 27 2}
{it:实数 矩阵}{bind:}
{cmd:halton(}{it:实数 标量 n}{cmd:,} {it:实数 标量 d}{cmd:)}

{p 8 27 2}
{it:实数 矩阵}{bind:}
{cmd:halton(}{it:实数 标量 n}{cmd:,} {it:实数 标量 d}{cmd:,}
             {it:实数 标量 start}{cmd:)}

{p 8 27 2}
{it:实数 矩阵}{bind:}
{cmd:halton(}{it:实数 标量 n}{cmd:,} {it:实数 标量 d}{cmd:,}
             {it:实数 标量 start}{cmd:,}
	     {it:实数 标量 hammersley}{cmd:)}


{p 8 21 2}
{it:无}{bind:}
{cmd:_halton(}{it:实数 矩阵 x}{cmd:)}

{p 8 21 2}
{it:无}{bind:}
{cmd:_halton(}{it:实数 矩阵 x}{cmd:,} {it:实数 标量 start}{cmd:)}

{p 8 21 2}
{it:无}{bind:}
{cmd:_halton(}{it:实数 矩阵 x}{cmd:,} {it:实数 标量 start}{cmd:,}
              {it:实数 标量 hammersley}{cmd:)}


{p 8 31 2}
{it:实数 列向量}{bind:}
{cmd:ghalton(}{it:实数 标量 n}{cmd:,} {it:实数 标量 base}{cmd:,}
{it:实数 标量 u}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:halton(}{it:n}{cmd:,} {it:d}{cmd:)} 返回一个 {it:n} x {it:d} 矩阵，
其中包含长度为 {it:n} 和维度为 {it:d} 的 Halton 集合。

{p 4 4 2}
{cmd:halton(}{it:n}{cmd:,} {it:d}{cmd:,} {it:start}{cmd:)} 也做同样的事情，
但返回矩阵的第一行包含从索引 {it:start} 开始的序列。默认值为 {it:start} = 1。

{p 4 4 2}
{cmd:halton(}{it:n}{cmd:,} {it:d}{cmd:,} {it:start}{cmd:,}
{it:hammersley}{cmd:)}, 当 {it:hammersley} != 0 时，返回一个长度为 {it:n} 和维度为 {it:d} 的 Hammersley 集合，返回矩阵的第一行包含从索引 {it:start} 开始的序列。

{p 4 4 2}
{cmd:_halton(}{it:x}{cmd:)} 修改 {it:n} x {it:d} 矩阵 {it:x}，使其包含维度为 {it:d} 的长度为 {it:n} 的 Halton 集合。

{p 4 4 2}
{cmd:_halton(}{it:x}{cmd:,} {it:start}{cmd:)} 也做同样的事情，
但返回矩阵的第一行包含从索引 {it:start} 开始的序列。默认值为 {it:start} = 1。

{p 4 4 2}
{cmd:_halton(}{it:x}{cmd:,} {it:start}{cmd:,} {it:hammersley}{cmd:)},
当 {it:hammersley} != 0 时，返回一个长度为 {it:n} 和维度为 {it:d} 的 Hammersley 集合，返回矩阵的第一行包含从索引 {it:start} 开始的序列。

{p 4 4 2}
{cmd:ghalton(}{it:n}{cmd:,} {it:base}{cmd:,} {it:u}{cmd:)} 返回一个 {it:n} x 1 的向量，
其中包含使用基数 {it:base} 和从标量 0 < {it:u} < 1 开始的（广义）Halton 序列，或者用非负索引 {it:u} = 0, 1, 2, .... 


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 halton()备注和示例:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
Halton 序列是从前 {it:d} 个质数生成的，通常在维度 {it:d} 的单位立方体上具有比从伪均匀随机数生成的序列更均匀的覆盖。然而，基于大质数的 Halton 序列 ({it:d} > 10) 可能高度相关，其覆盖效果可能不如伪随机均匀序列。

{p 4 4 2}
Hammersley 集合在第一维包含序列 (2 * {it:i} - 1)/(2 * {it:n})，{it:i} = 1, ..., {it:n}，而维度 2, ..., {it:d} 则包含 Halton 序列。

{p 4 4 2}
{cmd:_halton()} 修改 {it:x}，并且可以在通过调用生成长序列的块时使用。在调用之间通过使用 {it:start} = {it:start} + {cmd:rows(}{it:x}{cmd:)} 更新 {it:start} 索引。

{p 4 4 2}
{cmd:ghalton()} 使用基数 {it:base}（最好为质数），并使用 0 < {it:u} < 1 或者非负索引作为起始值生成 Halton 序列。如果 {it:u} 是均匀分布的（0,1），则序列为随机化的 Halton 序列。如果 {it:u} 是非负整数，则序列为从索引 {it:u}+1 开始的标准 Halton 序列。


{marker conformability}{...}
{title:兼容性}

    {cmd:halton(}{it:n}{cmd:,} {it:d}{cmd:,} {it:start}{cmd:,} {it:hammersley}{cmd:)}:
       {it:输入:}
                 {it:n}:  1 {it:x} 1
                 {it:d}:  1 {it:x} 1
             {it:start}:  1 {it:x} 1    (可选)
        {it:hammersley}:  1 {it:x} 1    (可选)
       {it:输出:}
            {it:结果}:  {it:n x d}
		 
    {cmd:_halton(}{it:x}{cmd:,} {it:start}{cmd:,} {it:hammersley}{cmd:)}:
       {it:输入:}
                 {it:x}:  {it:n x d}
             {it:start}:  1 {it:x} 1    (可选)
        {it:hammersley}:  1 {it:x} 1    (可选)
       {it:输出:}
                 {it:x}:  {it:n x d}

    {cmd:ghalton(}{it:n}{cmd:,} {it:base}{cmd:,} {it:u}{cmd:)}:
       {it:输入:}
                 {it:n}:  1 {it:x} 1
              {it:base}:  1 {it:x} 1
                 {it:u}:  1 {it:x} 1
       {it:输出:}
            {it:结果}:  {it:n x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
最大维度 {it:d} 为 20。
标量索引 {it:start} 必须为正整数，标量 {it:u} 必须满足 {bind:0 < {it:u} < 1} 或者为非负整数。对于 {cmd:ghalton()}，{it:base} 必须是大于或等于 2 的整数。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view halton.mata, adopath asis:halton.mata} 用于
{cmd:halton()} 和 {cmd:_halton()}。

{pstd}
{cmd:ghalton()} 是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_halton.sthlp>}