{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] mean()" "mansection M-5 mean()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Statistical" "help m4_statistical_zh"}{...}
{viewerjumpto "Syntax" "mf_mean_zh##syntax"}{...}
{viewerjumpto "Description" "mf_mean_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_mean_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_mean_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_mean_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_mean_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_mean_zh##source"}
{help mf_mean:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] mean()} {hline 2}}均值、方差和相关性
{p_end}
{p2col:}({mansection M-5 mean():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real rowvector}
{cmd:mean(}{it:X} [{cmd:,}
{it:w}]{cmd:)}


{p 8 12 2}
{it:real matrix}{bind:   }
{cmd:variance(}{it:X} [{cmd:,}
{it:w}]{cmd:)}

{p 8 12 2}
{it:real matrix}{bind:   }
{cmd:quadvariance(}{it:X} [{cmd:,}
{it:w}]{cmd:)}


{p 8 12 2}
{it:real matrix}{bind:   }
{cmd:meanvariance(}{it:X} [{cmd:,}
{it:w}]{cmd:)}

{p 8 12 2}
{it:real matrix}{bind:   }
{cmd:quadmeanvariance(}{it:X} [{cmd:,}
{it:w}]{cmd:)}



{p 8 12 2}
{it:real matrix}{bind:   }
{cmd:correlation(}{it:X} [{cmd:,}
{it:w}]{cmd:)}

{p 8 12 2}
{it:real matrix}{bind:   }
{cmd:quadcorrelation(}{it:X} [{cmd:,}
{it:w}]{cmd:)}


{p 4 4 2}
其中

{p 12 12 2}
{it:X}:  {it:real matrix X}（行是观察值，列是变量）

{p 12 12 2}
{it:w}:  {it:real colvector w}，可选。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mean(}{it:X}{cmd:,} {it: w}{cmd:)}
返回数据矩阵 {it:X} 的加权或未加权列均值。
{cmd:mean()} 在计算和时使用四倍精度，因此非常精确。

{p 4 4 2}
{cmd:variance(}{it:X}{cmd:,} {it: w}{cmd:)}
返回 {it:X} 的加权或未加权方差矩阵。在计算过程中，均值被去除，并且这些均值使用四倍精度计算，但其余地方不使用四倍精度。

{p 4 4 2}
{cmd:quadvariance(}{it:X}{cmd:,} {it: w}{cmd:)}
返回 {it:X} 的加权或未加权方差矩阵。计算具有很高的精度；在所有求和中使用四倍精度。

{p 4 4 2}
{cmd:meanvariance(}{it:X}{cmd:,} {it: w}{cmd:)}
返回 {cmd:mean(}{it:X}{cmd:,}{it:w}{cmd:)\variance(}{it:X}{cmd:,}{it:w}{cmd:)}。

{p 4 4 2}
{cmd:quadmeanvariance(}{it:X}{cmd:,} {it: w}{cmd:)}
返回 {cmd:mean(}{it:X}{cmd:,}{it:w}{cmd:)\quadvariance(}{it:X}{cmd:,}{it:w}{cmd:)}。


{p 4 4 2}
{cmd:correlation(}{it:X}{cmd:,} {it: w}{cmd:)}
返回 {it:X} 的加权或未加权相关矩阵。
{cmd:correlation()} 从 {cmd:variance()} 获取方差矩阵。

{p 4 4 2}
{cmd:quadcorrelation(}{it:X}{cmd:,} {it: w}{cmd:)}
返回 {it:X} 的加权或未加权相关矩阵。
{cmd:quadcorrelation()} 从 {cmd:quadvariance()} 获取方差矩阵。


{p 4 4 2}
在所有情况下，
{it:w} 指定权重。
省略 {it:w}，或将 {it:w} 指定为 1 以获得未加权均值。

{p 4 4 2}
在所有情况下，
{it:X} 或 {it:w} 中包含缺失值的行将被从计算中排除，这相当于按案例删除。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 mean()Remarksandexamples:备注和示例}

{pstd}
上述部分不包括在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 8 2}
1.
没有 {cmd:quadmean()} 函数，因为 {cmd:mean()} 实际上就是 {cmd:quadmean()}。
{cmd:mean()} 默认使用四倍精度计算反映了我们认为以四倍精度计算均值的额外计算成本通常是合理的。

{p 4 8 2}
2.
{cmd:variance()} 和 {cmd:correlation()} 不默认使用四倍精度进行计算反映了我们认为这样的额外计算成本通常不值得。重点在于最后一句的“通常”一词。

{p 8 8 2}
更容易合理化均值部分是因为额外的计算成本较低：只有 {it:k} 个均值，但有 {it:k}({it:k}+1)/2 个方差和协方差。


{p 4 8 2}
3. 如果您只需要均值或仅需要方差矩阵，可以调用 
    {cmd:mean()} 或 {cmd:variance()}（或 {cmd:quadvariance()}）。
    如果您同时需要这两者，调用 {cmd:meanvariance()} 而不是分别调用两个函数（或者调用 {cmd:quadmeanvariance()} 而不是调用 {cmd:mean()} 和 {cmd:quadvariance()}）将节省 CPU 时间。

{p 8 8 2}
    节省的时间并不多——节省一次 {cmd:mean()} 计算——
    但 {cmd:rows(}{it:X}{cmd:)} 越多，节省的时间越大。

{p 8 8 2}
    一旦返回合并结果，可以通过以下方式有效地将其拆分为其组成部分

	    : {cmd:var   = meanvariance(X)}
	    : {cmd:means = var[1,.]}
	    : {cmd:var   = var[|2,1 \ .,.|]}


{marker conformability}{...}
{title:兼容性}

{p 4 8 2}
{cmd:mean(}{it:X}{cmd:,} {it:w}{cmd:)}:
{p_end}
		{it:X}:  {it:n x k}
		{it:w}:  {it:n x 1} 或 {it:1 x 1}（可选，假设 {it:w}=1）
	   {it:result}:  {it:1 x k}

{p 4 4 2}
{cmd:variance(}{it:X}{cmd:,} {it:w}{cmd:)},
{cmd:quadvariance(}{it:X}{cmd:,} {it:w}{cmd:)},
{cmd:correlation(}{it:X}{cmd:,} {it:w}{cmd:)},
{cmd:quadcorrelation(}{it:X}{cmd:,} {it:w}{cmd:)}:
{p_end}
		{it:X}:  {it:n x k}
		{it:w}:  {it:n x 1} 或 {it:1 x 1}（可选，假设 {it:w}=1）
	   {it:result}:  {it:k x k}

{p 4 4 2}
{cmd:meanvariance(}{it:X}{cmd:,} {it:w}{cmd:)},
{cmd:quadmeanvariance(}{it:X}{cmd:,} {it:w}{cmd:)}:
{p_end}
		{it:X}:  {it:n x k}
		{it:w}:  {it:n x 1} 或 1 x 1（可选，假设 {it:w}=1）
	   {it:result}:  ({it:k}+1) x k


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
所有函数在计算中省略包含缺失值的行，除非所有行都包含缺失值。然后返回的结果包含所有缺失值。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view mean.mata, adopath asis:mean.mata},
{view variance.mata, adopath asis:variance.mata},
{view quadvariance.mata, adopath asis:quadvariance.mata},
{view meanvariance.mata, adopath asis:meanvariance.mata},
{view quadmeanvariance.mata, adopath asis:quadmeanvariance.mata},
{view correlation.mata, adopath asis:correlation.mata},
{view quadcorrelation.mata, adopath asis:quadcorrelation.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_mean.sthlp>}