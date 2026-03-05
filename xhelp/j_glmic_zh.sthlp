{smcl}
{* *! version 1.0.7  11feb2011}{...}
{vieweralsosee "[R] glm" "help glm_zh"}{...}
{vieweralsosee "[R] binreg" "help binreg_zh"}
{help j_glmic:English Version}
{hline}{...}
{title:{bf:如何计算 {cmd:glm} 和 {cmd:binreg} 的 AIC 和 BIC？}}

{pstd}
{cmd:glm} 和 {cmd:binreg, ml} 使用以下公式计算 AIC 和 BIC 的值：

{phang2}
        AIC = (-2lnL + 2k)/N
{p_end}	
{phang2}
	BIC = D2 - (N-k)ln(N)
{p_end}

{pstd}
其中 lnL 和 D2 是 {cmd:glm} 报告的整体似然和整体偏差，k 是模型的参数数量，N-k 是与偏差 D2 相关的自由度。这些公式来自 {help j_glmic##A1973:Akaike (1973)} 和 {help j_glmic##R1995:Raftery (1995)}。

{pstd}
{cmd:estat ic} 和 {cmd:estimates table, stats(aic bic)} 基于 {help j_glmic##A1974:Akaike (1974)} 和 {help j_glmic##S1978:Schwarz (1978)} 使用不同的标准来定义这些准则：

{phang2}
        AIC = -2lnL + 2k
{p_end}	
{phang2}
        BIC = -2lnL + kln(N)
{p_end}

{pstd}
因此它们报告不同的 AIC 和 BIC 值。

{title:{bf:参考文献}}

{marker A1973}{...}
{phang}
Akaike, H. 1973.  
信息理论与极大似然原理的扩展。 在 {it:第二届国际信息理论研讨会}, 编辑 B. N. Petrov 和 F. Csaki, 267-281.  
布达佩斯: Akailseoniai-Kiudo.{p_end}

{marker A1974}{...}
{phang}
------. 1974.  
对统计模型识别的新看法。  
{it:IEEE 自动控制汇刊} 19: 716-723.{p_end}

{marker R1995}{...}
{phang}
Raftery, A. 1995.  
社会研究中的贝叶斯模型选择。  
在 {it:社会方法学}第25卷, 编辑 P. V. Marsden, 111-163.
牛津: Blackwell.{p_end}

{marker S1978}{...}
{phang}
Schwarz, G. 1978.  
模型维度的估计。  
{it:统计年鉴} 6: 461-464.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_glmic.sthlp>}