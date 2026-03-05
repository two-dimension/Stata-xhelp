{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] factorial()" "mansection M-5 factorial()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Scalar" "help m4_scalar_zh"}{...}
{vieweralsosee "[M-4] Statistical" "help m4_statistical_zh"}{...}
{viewerjumpto "Syntax" "mf_factorial_zh##syntax"}{...}
{viewerjumpto "Description" "mf_factorial_zh##description"}{...}
{viewerjumpto "Conformability" "mf_factorial_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_factorial_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_factorial_zh##source"}
{help mf_factorial:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] factorial()} {hline 2}}阶乘和伽马函数
{p_end}
{p2col:}({mansection M-5 factorial():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数{bind:    }矩阵}{bind:  }
{cmd:factorial(}{it:实数矩阵 R}{cmd:)}

{p 8 12 2}
{it:实数{bind:    }矩阵}
{cmd:lnfactorial(}{it:实数矩阵 R}{cmd:)}

{p 8 12 2}
{it:数值矩阵}{bind:    }
{cmd:lngamma(}{it:数值矩阵 Z}{cmd:)}

{p 8 12 2}
{it:数值矩阵}{bind:      }
{cmd:gamma(}{it:数值矩阵 Z}{cmd:)}

{p 8 12 2}
{it:实数{bind:    }矩阵}{bind:    }
{cmd:digamma(}{it:实数矩阵 R}{cmd:)}

{p 8 12 2}
{it:实数{bind:    }矩阵}{bind:   }
{cmd:trigamma(}{it:实数矩阵 R}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:factorial(}{it:R}{cmd:)} 返回 {it:R} 的逐元素阶乘。  

{p 4 4 2}
{cmd:lnfactorial(}{it:R}{cmd:)} 返回逐元素的
ln(factorial({it:R}{cmd:))}，计算方法不同。非常大的 {it:R} 值也可以进行评估。

{p 4 4 2}
{cmd:lngamma(}{it:Z}{cmd:)}, 当 {it:Z} 为实数时，返回逐元素的 
{cmd:ln(abs(gamma(}{it:Z}{cmd:)))}, 但计算方式不同。  
当 {it:Z} 为复数时，{cmd:lngamma(}{it:Z}{cmd:)} 返回逐元素的 
{cmd:ln(gamma(}{it:Z}{cmd:))}，计算方法也不同。  
因此， 
{cmd:lngamma(}-2.5{cmd:)} = -0.056244,
而 
{cmd:lngamma(}-2.5+0i{cmd:)} = -0.056244 + 3.1416i。
在这两种情况下，
也可以评估非常大的 {it:Z} 值。

{p 4 4 2}
{cmd:gamma(}{it:Z}{cmd:)} 对于复数参数返回 {cmd:exp(lngamma(}{it:Z}{cmd:))}，对于实数参数返回 {cmd:Re(exp(lngamma(C(}{it:Z}{cmd:))))}。
因此，{cmd:gamma()} 可以正确计算，例如 
{cmd:gamma(}-2.5{cmd:)} 即使对于实数参数也是如此。

{p 4 4 2}
{cmd:digamma(}{it:R}{cmd:)} 返回 {cmd:lngamma()} 的导数
当 {it:R}>0 时，有时称为 psi 函数。  
{cmd:digamma()} 需要实数参数。

{p 4 4 2}
{cmd:trigamma(}{it:R}{cmd:)} 返回 {cmd:lngamma()} 的二阶导数
当 {it:R}>0 时。  
{cmd:trigamma()} 需要实数参数。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
所有函数返回与输入相同维度的矩阵，包含逐元素计算的结果。


{marker diagnostics}{...}
{title:诊断信息}

{p 4 4 2}
{cmd:factorial()} 对于非整数参数、负参数和大于 167 的参数返回缺失值。

{p 4 4 2}
{cmd:lnfactorial()} 对于非整数参数、负参数和大于 1e+305 的参数返回缺失值。

{p 4 4 2}
{cmd:lngamma()} 对于 0、负整数参数、负参数 {ul:<} -2,147,483,648 和大于 1e+305 的参数返回缺失值。

{p 4 4 2}
{cmd:gamma()} 对于大于 171 的实数参数和负整数参数返回缺失值。

{p 4 4 2}
{cmd:digamma()} 对于 0 和负整数参数，以及小于 -10,000,000 的参数返回缺失值。

{p 4 4 2}
{cmd:trigamma()} 对于 0 和负整数参数，以及小于 -10,000,000 的参数返回缺失值。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view gamma.mata, adopath asis:gamma.mata};
其他函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_factorial.sthlp>}