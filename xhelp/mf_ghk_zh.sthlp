{smcl}
{* *! version 2.1.12  15may2018}{...}
{vieweralsosee "[M-5] ghk()" "mansection M-5 ghk()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] ghkfast()" "help mf_ghkfast_zh"}{...}
{vieweralsosee "[M-5] halton()" "help mf_halton_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Statistical" "help m4_statistical_zh"}{...}
{viewerjumpto "语法" "mf_ghk_zh##syntax"}{...}
{viewerjumpto "描述" "mf_ghk_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_ghk_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_ghk_zh##remarks"}{...}
{viewerjumpto "一致性" "mf_ghk_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_ghk_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_ghk_zh##source"}
{help mf_ghk:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-5] ghk()} {hline 2}}Geweke-Hajivassiliou-Keane (GHK) 多元正态模拟器
{p_end}
{p2col:}({mansection M-5 ghk():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 17 25 2}
{it:S} {cmd:=}
{cmd:ghk_init(}{it:real scalar npts}{cmd:)}

{p 8 25 2}
{it:(变化)}{bind:    }
{cmd:ghk_init_method(}{it:S} [{cmd:, }{it:string scalar method}]{cmd:)}

{p 8 25 2}
{it:(变化)}{bind:    }
{cmd:ghk_init_start(}{it:S} [{cmd:, }{it:real scalar start}]{cmd:)}

{p 8 25 2}
{it:(变化)}{bind:    }
{cmd:ghk_init_pivot(}{it:S} [{cmd:, }{it:real scalar pivot}]{cmd:)}

{p 8 25 2}
{it:(变化)}{bind:    }
{cmd:ghk_init_antithetics(}{it:S} [{cmd:, }{it:real scalar anti}]{cmd:)}

{p 8 25 2}
{it:real scalar}{bind: }
{cmd:ghk_query_npts(}{it:S}{cmd:)}

{p 8 25 2}
{it:real scalar}{bind: }
{cmd:ghk(}{it:S}{cmd:, }{it:real vector x}{cmd:, }{it:V}{cmd:)}

{p 8 25 2}
{it:real scalar}{bind: }
{cmd:ghk(}{it:S}{cmd:, }{it:real vector x}{cmd:, }{it:V}{cmd:, }
{it:real rowvector dfdx}{cmd:, }{it:dfdv}{cmd:)}

{p 4 4 2}
其中 {it:S}，如果声明，应声明为

{p 17 17 2}
{cmd:transmorphic}{it: S}

{p 4 4 2}
并且 {it:method}，可选地在 {cmd:ghk_init_method()} 中指定，具有以下值

{col 16}{it:method}{col 32}描述
{col 16}{hline 60}
{col 16}{cmd:"halton"}{col 32}Halton 序列
{col 16}{cmd:"hammersley"}{col 32}Hammersley 对 Halton 集的变种
{col 16}{cmd:"random"}{col 32}伪随机均匀分布
{col 16}{hline 60}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ghk}*{cmd:()} 函数集提供 Geweke-Hajivassiliou-Keane (GHK) 多元正态模拟器。

{p 4 4 2}
{it:S} {cmd:= }{cmd:ghk_init(}{it:npts}{cmd:)} 通过所需的模拟点数初始化模拟器并返回一个转形对象 {it:S}，该对象是以后的其他 {cmd:ghk}*{cmd:()} 函数调用时所用的句柄。调用 
{cmd:ghk_init_method(}{it:S}{cmd:, }{it:method}{cmd:)}, 
{cmd:ghk_init_start(}{it:S}{cmd:, }{it:start}{cmd:)},
{cmd:ghk_init_pivot(}{it:S}{cmd:, }{it:pivot}{cmd:)}, 和
{cmd:ghk_init_antithetics(}{it:S}{cmd:, }{it:anti}{cmd:)} 在调用
{cmd:ghk(}{it:S}{cmd:,} ...{cmd:)} 之前可以通过对象 {it:S} 修改模拟算法。

{p 4 4 2}
{cmd:ghk(}{it:S}{cmd:, }{it:x}{cmd:, }{it:V}{cmd:)} 返回一个真实标量，包含在点 {it:x} 处，方差协方差为 {it:V} 的多元正态 (MVN) 分布的模拟值。首先输入 {it:S} {cmd:=}
{cmd:ghk_init(}{it:npts}{cmd:)}，然后使用 {cmd:ghk(}{it:S}{cmd:,} ...{cmd:)} 基于 {it:npts} 模拟点获得模拟值。

{p 4 4 2}
{cmd:ghk(}{it:S}{cmd:, }{it:x}{cmd:, }{it:V}{cmd:, }{it:dfdx}{cmd:, }{it:dfdv}{cmd:)} 
执行相同操作，但还会返回模拟概率 respecto {it:x} 的一阶导数 {it:dfdx} 和 respecto {cmd:vech(}{it:V}{cmd:)} 的模拟概率导数 {it:dfdv}。有关半向量化操作符的详细信息，请参见 
{cmd:vech()} 在 {bf:{help mf_vec_zh:[M-5] vec()}} 中的描述。

{p 4 4 2}
{cmd:ghk_query_npts(}{it:S}{cmd:)} 函数返回模拟点的数量，该值与构造转形对象 {it:S} 时给出的值相同。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 ghk()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
Halton 和 Hammersley 点集由 [0,1] 上的确定性序列组成，对于维度小于 10 的集合，通常覆盖效果优于均匀伪随机序列。

{p 4 4 2}
对称抽样有效地将点数加倍，并减少模拟概率的变异性。对于抽样 {it:u}，对称抽样为 1 - {it:u}。要使用对称抽样，请在执行 
{cmd:ghk()} 之前调用 {cmd:ghk_init_antithetic(}{it:S}{cmd:, }1{cmd:)}。

{p 4 4 2}
默认情况下，{cmd:ghk()} 将宽的积分区间（以及相关的协方差矩阵的行/列）调整到多元积分的内部。这可以提高积分估计的准确性。当 {cmd:ghk()} 用于 
{help ml_zh:[R] ml} 或 {help mf_optimize_zh:[M-5] optimize()} 的似然评估器时，当使用少量模拟点时可能导致数值二阶导数计算出现不连续性（对于牛顿-拉夫森优化技术），从而导致非正定 Hessian。要关闭区间调整，在执行 {cmd:ghk()} 之前调用 
{cmd:ghk_init_pivot(}{it:S}{cmd:, }0{cmd:)}。

{p 4 4 2}
如果您在似然评估器中使用 {cmd:ghk()}，请确保在每次调用似然评估器时使用相同的序列。对于均匀伪随机序列，{cmd:ghk_init_method("random")}，将均匀随机变量生成器的种子设置为每次调用似然评估器时的相同值 -- 参见 {cmd:runiform()} 在 
{bf:{help mf_runiform_zh:[M-5] runiform()}} 中的描述。

{p 4 4 2}
如果您使用 Halton 或 Hammersley 点集，您会希望在一次似然评估的每次调用 {cmd:ghk()} 时保持序列运行。这可以通过在每次调用 {cmd:ghk()} 之后执行一个表达式来完成：
{cmd:ghk_init_start(}{it:S}{cmd:, ghk_init_start(}{it:S}{cmd:)}+{cmd:ghk_query_npts(}{it:S}{cmd:))}。每次调用似然评估器时，您还需要将起始索引重置为 1。最后一点假设在每次调用似然评估器时，不会重新创建转形对象 {it:S}。

{p 4 4 2}
与 {cmd:ghkfast_init()} (参见 {help mf_ghkfast_zh:[M-5] ghkfast()}) 不同，{cmd:ghk_init()} 创建的转形对象 {it:S} 的创建成本较低，因此可以在每次调用似然评估器时重新创建，而不是将其存储为 {help m2_declarations##remarks10:external}
全局并在每次似然评估中重复使用该对象。或者，可以使用 {cmd:optimize()} 的初始化函数，
{helpb mf_optimize##i_argument:optimize_init_arguments()}。


{marker conformability}{...}
{title:一致性}

{p 4 4 2}
所有初始化函数具有 1 {it:x} 1 输入，且输出为 1 {it:x} 1 或 {it:void}，除了

    {cmd:ghk_init(}{it:npts}{cmd:)}
        {it:输入:}
             {it:npts}:  1 {it:x} 1
        {it:输出:}
                {it:S}:  转形

    {cmd:ghk_query_npts(}{it:S}{cmd:)}
        {it:输入:}
                {it:S}:  转形
        {it:输出:}
           {it:结果}:  1 {it:x} 1

    {cmd:ghk(}{it:S}{cmd:, }{it:x}{cmd:, }{it:V}{cmd:)}:
        {it:输入:}
                {it:S}:  转形
                {it:x}:  1 {it:x m} 或 {it:m x} 1
                {it:V}:  {it:m x m} (对称，正定)
        {it:输出:}
           {it:结果}:  1 {it:x} 1

    {cmd:ghk(}{it:S}{cmd:, }{it:x}{cmd:, }{it:V}{cmd:, }{it:dfdx}{cmd:, }{it:dfdv}{cmd:)}:
        {it:输入:}
                {it:S}:  转形
                {it:x}:  1 {it:x m} 或 {it:m x} 1
                {it:V}:  {it:m x m} (对称，正定) 
        {it:输出:}
           {it:结果}:  1 {it:x} 1
             {it:dfdx}:  1 {it:x m}
             {it:dfdv}:  1 {it:x m}({it:m}+1)/2


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
最大维度 {it:m} 为 20。

{p 4 4 2}
{it:V} 必须是对称且正定的。当 {it:V} 不是正定时，{cmd:ghk()} 将返回缺失值。当在 {help ml_zh}（或 {help mf_optimize_zh:optimize()}）
似然评估器中使用 {cmd:ghk()} 时，将返回缺失的似然给 {cmd:ml}，并让 {cmd:ml} 采取适当的行动（即，步长减半）。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view ghk.mata, adopath asis:ghk.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ghk.sthlp>}