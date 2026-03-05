{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] st_store()" "mansection M-5 st_store()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] st_addvar()" "help mf_st_addvar_zh"}{...}
{vieweralsosee "[M-5] st_data()" "help mf_st_data_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] putmata" "help putmata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_store_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_store_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_st_store_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_st_store_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_st_store_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_store_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_store_zh##source"}
{help mf_st_store:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] st_store()} {hline 2}}修改当前 Stata 数据集中存储的值{p_end}
{p2col:}({mansection M-5 st_store():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    {it:void} {cmd:_st_store(}{it:真实标量 i}{cmd:,} {it:真实标量 j}{cmd:,} {it:真实标量 x}{cmd:)}

    {it:void}  {cmd:st_store(}{it:真实矩阵 i}{cmd:,} {it:行向量 j}{cmd:,} {it:真实矩阵 X}{cmd:)}{right:(1,2)}

    {it:void}  {cmd:st_store(}{it:真实矩阵 i}{cmd:,} {it:行向量 j}{cmd:,} {it:标量 selectvar}{cmd:,}
{col 55}{it:真实矩阵 X}{cmd:)}{right:(1,2,3)}


    {it:void} {cmd:_st_sstore(}{it:真实标量 i}{cmd:,} {it:真实标量 j}{cmd:,} {it:字符串标量 s}{cmd:)}

    {it:void}  {cmd:st_sstore(}{it:真实矩阵 i}{cmd:,} {it:行向量 j}{cmd:,} {it:字符串矩阵 X}{cmd:)}{right:(1,2)}

    {it:void}  {cmd:st_sstore(}{it:真实矩阵 i}{cmd:,} {it:行向量 j}{cmd:,} {it:标量 selectvar}{cmd:,}
{col 55}{it:字符串矩阵 X}{cmd:)}{right:(1,2,3)}


{p 4 4 2}
其中

{p 7 11 2}
1.  {it:i} 可以按与 
    {bf:{help mf_st_data_zh:st_data()}}相同的方式指定。

{p 7 11 2}
2.  {it:j} 可以按与 
    {bf:{help mf_st_data_zh:st_data()}}相同的方式指定，但不能指定时间序列操作符。

{p 7 11 2}
3.  {it:selectvar} 可以按与 
    {bf:{help mf_st_data_zh:st_data()}}相同的方式指定。


{marker description}{...}
{title:描述}

{p 4 4 2}
这些函数与 {cmd:_st_data()}、{cmd:st_data()} 和 {cmd:st_sdata()} 相似。与返回 Stata 数据集中的内容不同，这些命令将内容更改为最后一个参数所给出的内容。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 st_store()remarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
请参见 {bf:{help mf_st_data_zh:[M-5] st_data()}}。


{marker conformability}{...}
{title:兼容性}

{p 4 8 2}
{cmd:_st_store(}{it:i}, {it:j}{cmd:,} {it:x}{cmd:)},
{cmd:_st_sstore(}{it:i}, {it:j}{cmd:,} {it:x}{cmd:)}:
{p_end}
		{it:i}:  1 {it:x} 1
		{it:j}:  1 {it:x} 1
		{it:x}:  1 {it:x} 1
	   {it:result}:  {it:void}

{p 4 8 2}
{cmd:st_store(}{it:i}, {it:j}{cmd:,} {it:X}{cmd:)},
{cmd:st_sstore(}{it:i}, {it:j}{cmd:,} {it:X}{cmd:)}:
{p_end}
		{it:i}:  {it:n x} 1  或  {it:n2 x} 2
		{it:j}:  1 {it:x k}
		{it:X}:  {it:n x k}
	   {it:result}:  {it:void}

{p 4 8 2}
{cmd:st_store(}{it:i}, {it:j}, {it:selectvar}{cmd:,} {it:X}{cmd:)},
{cmd:st_sstore(}{it:i}, {it:j}, {it:selectvar}{cmd:,} {it:X}{cmd:)}:
{p_end}
		{it:i}:  {it:n x} 1  或  {it:n2 x} 2
		{it:j}:  1 {it:x k}
	{it:selectvar}:  1 {it:x} 1
		{it:X}:  ({it:n}-{it:e}) {it:x k}，其中 {it:e} 是 {it:selectvar} 排除的观察数
	   {it:result}:  {it:void}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:_st_store(}{it:i}{cmd:,} {it:j}{cmd:,} {it:x}{cmd:)} 
和 
{cmd:_st_sstore(}{it:i}{cmd:,} {it:j}{cmd:,} {it:s}{cmd:)} 
如果 {it:i} 或 {it:j} 超出范围，则不会执行任何操作；不会报错。

{p 4 4 2}
{cmd:st_store(}{it:i}{cmd:,} {it:j}{cmd:,} {it:X}{cmd:)} 
和
{cmd:st_sstore(}{it:i}{cmd:,} {it:j}{cmd:,} {it:s}{cmd:)} 
如果 {it:i} 或 {it:j} 的任何元素超出范围则会报错。
{it:j} 可以通过变量名称向量或变量索引向量指定。如果指定的是名称，允许使用缩写。如果您不想这样，请使用 {cmd:st_varindex()}（参见
{bf:{help mf_st_varindex_zh:[M-5] st_varindex()}}）将变量名称转换为变量索引。

{p 4 4 2}
{cmd:st_store()} 
和 
{cmd:st_sstore()} 
如果 {it:X} 与 
{help m6_glossary##p-conformability:p-conformable} 的矩阵不兼容会报错。 


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_store.sthlp>}