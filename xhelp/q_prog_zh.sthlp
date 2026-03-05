
{smcl}
{* *! version 1.0.0  22may2019}{...}
{bf:Stata 编程参考手册用数据集，版本 16}
{hline}
{help q_prog:English Version}
{hline}
{p}
在 Stata 文档中使用的数据集旨在演示如何使用 Stata。一些数据集已被修改以解释特定功能。请勿将这些数据集用于分析。
{p_end}
{hline}

    {title:{help ereturn_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

{hline}

    {title:{help levelsof_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

{hline}

    {title:{help macro_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help matrix accum}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	maccumxmpl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/maccumxmpl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/maccumxmpl.dta":describe}

    {title:{help matrix dissimilarity}}
	labtech.dta{col 32}{stata "use http://www.stata-press.com/data/r16/labtech.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/labtech.dta":describe}
	homework.dta{col 32}{stata "use http://www.stata-press.com/data/r16/homework.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/homework.dta":describe}
	gower.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gower.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gower.dta":describe}

    {title:{help matrix get}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help matrix mkmat}}
	test.dta{col 32}{stata "use http://www.stata-press.com/data/r16/test.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/test.dta":describe}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help matrix rowjoinbyname}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help matrix score}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help matrix symeigen}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

{hline}

    {title:{help quietly_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

{hline}

    {title:{help _rmcoll_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help _robust_zh}}
	_robust.dta{col 32}{stata "use http://www.stata-press.com/data/r16/_robust.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/_robust.dta":describe}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

{hline}

    {title:{help tabdisp_zh}}
	tabdxmpl1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/tabdxmpl1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/tabdxmpl1.dta":describe}
	tabdxmpl2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/tabdxmpl2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/tabdxmpl2.dta":describe}
	auto2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto2.dta":describe}
	tabdxmpl3.dta{col 32}{stata "use http://www.stata-press.com/data/r16/tabdxmpl3.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/tabdxmpl3.dta":describe}
	tabdxmpl4.dta{col 32}{stata "use http://www.stata-press.com/data/r16/tabdxmpl4.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/tabdxmpl4.dta":describe}
	tabdxmpl5.dta{col 32}{stata "use http://www.stata-press.com/data/r16/tabdxmpl5.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/tabdxmpl5.dta":describe}

{hline}

    {title:{help unab_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
{hline}

{p}
StataCorp 感谢一些在参考手册中使用的数据集是专有的，并已获得版权所有者的明确许可而在我们的印刷文档中使用。如果任何版权所有者认为通过向公众提供这些数据集，StataCorp 违反了任何此类协议的条款或精神，请联系 {browse "mailto:tech-support@stata.com":tech-support@stata.com}，我们将从该网页上删除任何此类资料。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <q_prog.sthlp>}