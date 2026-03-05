{smcl}
{* *! version 2.1.13  15may2018}{...}
{vieweralsosee "[M-5] ghkfast()" "mansection M-5 ghkfast()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] ghk()" "help mf_ghk_zh"}{...}
{vieweralsosee "[M-5] halton()" "help mf_halton_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Statistical" "help m4_statistical_zh"}{...}
{viewerjumpto "语法" "mf_ghkfast_zh##syntax"}{...}
{viewerjumpto "描述" "mf_ghkfast_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_ghkfast_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_ghkfast_zh##remarks"}{...}
{viewerjumpto "适用性" "mf_ghkfast_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_ghkfast_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_ghkfast_zh##source"}
{help mf_ghkfast:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] ghkfast()} {hline 2}}Geweke-Hajivassiliou-Keane (GHK) 多元正态模拟器，使用预生成点
{p_end}
{p2col:}({mansection M-5 ghkfast():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 19 25 2}
{it:S} {cmd:=}
{cmd:ghkfast_init(}{it:real scalar n}{cmd:, }{it:npts}{cmd:, }{it:dim}{cmd:, }
{it:string scalar} {it:{help mf_ghkfast##method:method}}{cmd:)}

{p 8 25 2}
{it:(可变)}{bind:      }
{cmd:ghkfast_init_pivot(}{it:S} [{cmd:, }{it:real scalar pivot}]{cmd:)}

{p 8 25 2}
{it:(可变)}{bind:      }
{cmd:ghkfast_init_antithetics(}{it:S} [{cmd:, }{it:real scalar anti}]{cmd:)}

{p 8 25 2}
{it:real scalar}{bind:   }
{cmd:ghkfast_query_n(}{it:S}{cmd:)}

{p 8 25 2}
{it:real scalar}{bind:   }
{cmd:ghkfast_query_npts(}{it:S}{cmd:)}

{p 8 25 2}
{it:real scalar}{bind:   }
{cmd:ghkfast_query_dim(}{it:S}{cmd:)}

{p 8 25 2}
{it:string scalar}{bind: }
{cmd:ghkfast_query_method(}{it:S}{cmd:)}

{p 8 25 2}
{it:string scalar}{bind: }
{cmd:ghkfast_query_rseed(}{it:S}{cmd:)}

{p 8 25 2}
{it:real matrix}{bind:   }
{cmd:ghkfast_query_pointset_i(}{it:S}{cmd:, }{it:i}{cmd:)}

{p 8 25 2}
{it:real colvector}
{cmd:ghkfast(}{it:S}{cmd:, }{it:real matrix X}{cmd:, }{it:V}{cmd:)} 

{p 8 25 2}
{it:real colvector}
{cmd:ghkfast(}{it:S}{cmd:, }{it:real matrix X}{cmd:, }{it:V}{cmd:,} 
{it:dfdx}{cmd:, }{it:dfdv}{cmd:)}

{p 8 25 2}
{it:real scalar}
{cmd:ghkfast_i(}{it:S}{cmd:, }{it:real matrix X}{cmd:, }{it:V}{cmd:, }
{it:i}{cmd:)} 

{p 8 25 2}
{it:real scalar}
{cmd:ghkfast_i(}{it:S}{cmd:, }{it:real matrix X}{cmd:, }{it:V}{cmd:,} 
{it:i}{cmd:, }{it:dfdx}{cmd:, }{it:dfdv}{cmd:)}

{p 4 4 2}
其中 {it:S}（如果声明）应声明为

		{cmd:transmorphic} {it:S}

{marker method}{...}
{pstd}
其中在 {cmd:ghkfast_init()} 中指定的 {it:method} 为

{col 16}{it:method}{col 32}描述
{col 16}{hline 60}
{col 16}{cmd:"halton"}{col 32}Halton序列
{col 16}{cmd:"hammersley"}{col 32}Hammersley变体的Halton集合
{col 16}{cmd:"random"}{col 32}伪随机均匀数
{col 16}{cmd:"ghalton"}{col 32}广义Halton序列
{col 16}{hline 60}
 

{marker description}{...}
{title:描述}

{pstd}
请参见 {bf:{help mf_ghk_zh:[M-5] ghk()}}。这里记录的例程执行相同的操作，但 {cmd:ghkfast()} 在使用更多内存的情况下可以更快。首先，代码 {it:S} {cmd:=} {cmd:ghkfast_init(}...{cmd:)}，然后使用 {cmd:ghkfast(}{it:S}{cmd:,} ...{cmd:)} 获取模拟值。由于模拟点在 {cmd:ghkfast_init()} 中仅生成一次，因此节省了时间，而在对 {cmd:ghk()} 的每次调用中都生成点。此外， {cmd:ghkfast()} 可以从广义Halton序列生成模拟概率；请参见 {bf:{help mf_halton_zh:[M-5] halton()}}。

{p 4 4 2}
{cmd:ghkfast_init(}{it:n}{cmd:, }{it:npts}{cmd:, }{it:dim}{cmd:, }{it:method}{cmd:)}
计算 {cmd:ghkfast()} 使用的模拟点。输入 {it:n}、{it:npts} 和 {it:dim} 分别是观察数、模拟的重复次数和多元正态（MVN）分布的最大维度。输入 {it:method} 指定生成点的类型，可以是 {cmd:"halton"}、{cmd:"hammersley"}、{cmd:"random"} 或 {cmd:"ghalton"}。

{p 4 4 2}
{cmd:ghkfast(}{it:S}{cmd:,} {it:X}{cmd:,} {it:V}{cmd:)}
返回一个 {it:n x} 1 的实向量，其中包含维度为 {it:dim x dim} 的协方差矩阵 {it:V} 在存储在 {it:n x dim} 矩阵 {it:X} 行中的点上的 MVN 分布的模拟值。

{p 4 4 2}
{cmd:ghkfast(}{it:S}{cmd:, }{it:X}{cmd:, }{it:V}{cmd:, }{it:dfdx}{cmd:, }{it:dfdv}{cmd:)}
执行与 {cmd:ghkfast(}{it:S}{cmd:,} {it:X}{cmd:, }{it:V}{cmd:)} 相同的操作，但还返回与 {it:X} 的行有关的模拟概率的一阶导数，存在于 {it:dfdx} 中，以及与 {cmd:vech(}{it:V}{cmd:)} 有关的模拟概率导数，存在于 {it:dfdv} 中。有关半向量化算子的详细信息，请参见 {cmd:vech()} 在 {bf:{help mf_vec_zh:[M-5] vec()}} 中。

{p 4 4 2}
{cmd:ghk_query_n(}{it:S}{cmd:)},
{cmd:ghk_query_npts(}{it:S}{cmd:)},
{cmd:ghk_query_dim(}{it:S}{cmd:)}, 和
{cmd:ghk_query_method(}{it:S}{cmd:)} 函数提取指定于拆变对象 {it:S} 的观察数、模拟点数、最大维度和点集生成方法。使用 {cmd:ghk_query_rseed(}{it:S}{cmd:)} 来检索用于生成 {cmd:"random"} 或 {cmd:"ghalton"} 点集的均匀随机变量种子。 {cmd:ghkfast_query_pointset_i(}{it:S}{cmd:, }{it:i}{cmd:)} 函数将检索用于模拟第 {it:i} 个观察的 MVN 概率的 {it:i} 个点集。

{p 4 4 2}
{cmd:ghkfast_i(}{it:S}{cmd:, }{it:X}{cmd:, }{it:V}{cmd:, }{it:i}{cmd:, }...{cmd:)} 函数计算第 {it:i} 个观察的概率和导数， {it:i} = 1, ..., {it:n}。 


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 ghkfast()备注和示例:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
对于需要重复调用 GHK 算法的问题，{cmd:ghkfast()} 可能是 {help mf_ghk_zh:ghk()} 的首选替代方案。在程序开始时生成点可以提高速度。对于观察数较多或每次观察的模拟点数较多的问题，{cmd:ghkfast()} 的速度会比 {cmd:ghk()} 更快，但需要更多内存。

{p 4 4 2}
如果在 {cmd:ml} 或 {cmd:optimize()} 的似然评估器中使用 {cmd:ghkfast()}，您需要将变换对象 {it:S} 存储为 {help m2_declarations##remarks10:external} 全局，并在每次似然评估时重新使用该对象。或者，可以使用 {cmd:optimize()} 的初始化函数，
{helpb mf_optimize##i_argument:optimize_init_argument()}。

{p 4 4 2}
在调用 {cmd:ghkfast()} 之前，调用 
{cmd:ghkfast_init_npivot(}{it:S}{cmd:,}1{cmd:)} 以关闭在 {cmd:ghkfast()} 中进行的积分区间 pivoting。默认情况下，{cmd:ghkfast()} 将较宽的积分区间的 pivoting（及相关的协方差矩阵的行/列）转移到多元积分的内部，以提高积分精度。当在 {help ml_zh:[R] ml} 或 {help mf_optimize_zh:[M-5] optimize()} 的似然评估器中使用 {cmd:ghkfast()} 并且每次观察使用较少的模拟点时，此选项可能有用。在这种情况下，在使用有限差分法计算数值二阶导数（用于牛顿-拉夫森技术）时，pivoting 可能会导致不连续性，进而导致非正定 Hessian。

{p 4 4 2}
同样，序列 {cmd:"halton"}、{cmd:"hammersley"} 和 {cmd:"random"}， {cmd:ghkfast()} 将使用广义Halton序列，{cmd:"ghalton"}。广义Halton序列具有与Halton序列相同的均匀覆盖（低差异），并增加了伪随机均匀组件。因此，{cmd:"ghalton"} 序列与 {cmd:"random"} 序列相似，如果希望复制相同的点集，您应该在使用它们之前设置随机数种子；请参见 {bf:{help mf_runiform_zh:[M-5] runiform()}}。


{marker conformability}{...}
{title:适用性}

{p 4 4 2}
所有初始化函数都具有 1 {it:x} 1 输入，并具有 1 {it:x} 1 或 {it:void} 输出，所有查询函数都具有 {it:transmorphic} 输入和 1 {it:x} 1 输出，除了

    {cmd:ghkfast_init(}{it:n}{cmd:, }{it:npts}{cmd:, }{it:dim}{cmd:, }{it:method}{cmd:)}:
        {it:input:}
                {it:n}:  1 {it:x} 1 
             {it:npts}:  1 {it:x} 1
              {it:dim}:  1 {it:x} 1 
           {it:method}:  1 {it:x} 1 
        {it:output:}
 	   {it:result}:  {it:transmorphic}

    {cmd:ghkfast_query_pointset_i(}{it:S}{cmd:,} {it:i}{cmd:)}:
        {it:input:}
                {it:S}:  {it:transmorphic}
                {it:i}:  1 {it:x} 1 
        {it:output:}
           {it:result}:  {it:npts} {it:x} {it:dim} 

    {cmd:ghkfast(}{it:S}{cmd:,} {it:X}{cmd:, }{it:V}{cmd:)}:
        {it:input:}
                {it:S}:  {it:transmorphic}
                {it:X}:  {it:n x dim} 
                {it:V}:  {it:dim x dim} （对称，正定）
        {it:output:}
           {it:result}:  n {it:x} 1 

    {cmd:ghkfast(}{it:S}{cmd:,} {it:X}{cmd:, }{it:V}{cmd:, }{it:dfdx}{cmd:, }{it:dfdv}{cmd:)}:
        {it:input:}
                {it:S}:  {it:transmorphic}
                {it:X}:  {it:n x dim}
                {it:V}:  {it:dim x dim} （对称，正定）
        {it:output:}
           {it:result}:  {it:n x} 1
             {it:dfdx}:  {it:n x dim}
             {it:dfdv}:  {it:n x dim}({it:dim}+1)/2

    {cmd:ghkfast_i(}{it:S}{cmd:,} {it:X}{cmd:, }{it:V}{cmd:, }{it:i}{cmd:, }{it:dfdx}{cmd:, }{it:dfdv}{cmd:)}:
        {it:input:}
                {it:S}:  {it:transmorphic}
                {it:X}:  {it:n x dim} 或 1 {it:x dim}
                {it:V}:  {it:dim x dim} （对称，正定）
                {it:i}:  1 {it:x} 1     (1 {ul:<} {it:i} {ul:<} {it:n})
        {it:output:}
           {it:result}:  n {it:x} 1
             {it:dfdx}:  1 {it:x dim}
             {it:dfdv}:  1 {it:x dim}({it:dim}+1)/2


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:ghkfast_init(}{it:n}{cmd:, }{it:npts}{cmd:, }{it:dim}{cmd:, }{it:method}{cmd:)}
如果维度 {it:dim} 大于20，将以错误中止。

{p 4 4 2}
{cmd:ghkfast(}{it:S}{cmd:, }{it:X}{cmd:, }{it:V}{cmd:,} ...{cmd:)} 和
{cmd:ghkfast_i(}{it:S}{cmd:, }{it:X}{cmd:, }{it:V}{cmd:, }{it:i}{cmd:,} ...{cmd:)}
要求 {it:V} 为对称且正定。
如果 {it:V} 不是正定，则返回向量（标量）将填充缺失值。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view ghkfast.mata, adopath asis:ghkfast.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ghkfast.sthlp>}