
{smcl}
{* *! version 1.0.0  30may2019}{...}
{bf:Stata 报告参考手册的数据集，版本 16}
{hline}
{help q_rpt:English Version}
{hline}
{p}
在 Stata 文档中使用的数据集旨在展示如何使用 Stata。某些数据集已被修改，以解释特定功能。请勿将这些数据集用于分析。
{p_end}
{hline}

    {title:{help putdocx intro}}
	lbw.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lbw.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lbw.dta":describe}

    {title:{help putdocx paragraph}}
	lbw.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lbw.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lbw.dta":describe}

    {title:{help putdocx table}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	nhanes2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2.dta":describe}

    {title:{help putexcel_zh}}
	website.dta{col 32}{stata "use http://www.stata-press.com/data/r16/website.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/website.dta":describe}

    {title:{help putexcel advanced}}
	website.dta{col 32}{stata "use http://www.stata-press.com/data/r16/website.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/website.dta":describe}

    {title:{help putpdf intro}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help putpdf paragraph}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help putpdf table}}
	census9.dta{col 32}{stata "use http://www.stata-press.com/data/r16/census9.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/census9.dta":describe}
	nhanes2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2.dta":describe}
{hline}

{p}
StataCorp 感谢在参考手册中使用某些数据集的版权持有人，已获得他们的明确许可在我们的印刷文档中使用这些数据集。如果任何版权持有人认为 StataCorp 公开这些数据集违反任何此类协议的条款或精神，请联系 {browse "mailto:tech-support@stata.com":tech-support@stata.com}，并从此网页上移除任何相关材料。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <q_rpt.sthlp>}