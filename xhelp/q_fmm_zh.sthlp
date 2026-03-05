
{smcl}
{* *! version 1.1.1  30may2019}{...}
{bf:Stata 有限混合模型参考手册的数据集，16版}
{hline}
{help q_fmm:English Version}
{hline}
{p}
在 Stata 文档中使用的数据集是为了演示如何使用 Stata 而选择的。某些数据集已被修改，以解释特定功能。请不要使用这些数据集进行分析。
{p_end}
{hline}

    {title:fmm intro}
	stamp.dta{col 32}{stata "use http://www.stata-press.com/data/r16/stamp.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/stamp.dta":describe}

    {title:示例 1a}
	mus03sub.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mus03sub.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mus03sub.dta":describe}

    {title:示例 1b}
	mus03sub.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mus03sub.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mus03sub.dta":describe}

    {title:示例 1c}
	mus03sub.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mus03sub.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mus03sub.dta":describe}

    {title:示例 1d}
	mus03sub.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mus03sub.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mus03sub.dta":describe}

    {title:示例 2}
	gsem_mixture.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_mixture.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_mixture.dta":describe}

    {title:示例 3}
	fish2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fish2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fish2.dta":describe}

    {title:示例 4}
	lenses.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lenses.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lenses.dta":describe}
{hline}

{p}
StataCorp 感谢某些参考手册中的数据集是专有的，并在我们的打印文档中经版权所有者明确许可使用。如果任何版权所有者认为通过公开提供这些数据集，StataCorp 违反了任何此类协议的条款或精神，请联系 {browse "mailto:tech-support@stata.com":tech-support@stata.com}，相关材料将从此网页上移除。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <q_fmm.sthlp>}