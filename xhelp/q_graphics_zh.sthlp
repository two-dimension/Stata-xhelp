
{smcl}
{* *! version 1.5.1  22may2019}{...}
{bf:Stata 图形参考手册的数据集，发布版本 16}
{hline}
{help q_graphics:English Version}
{hline}
{p}
在 Stata 文档中使用的数据集旨在演示如何使用 Stata。某些数据集已被修改以解释特定功能。请勿使用这些数据集进行分析。
{p_end}
{hline}

    {title:数据集}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	autornd.dta{col 32}{stata "use http://www.stata-press.com/data/r16/autornd.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/autornd.dta":describe}
	bplong.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bplong.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bplong.dta":describe}
	bpwide.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bpwide.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bpwide.dta":describe}
	cancer.dta{col 32}{stata "use http://www.stata-press.com/data/r16/cancer.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/cancer.dta":describe}
	census.dta{col 32}{stata "use http://www.stata-press.com/data/r16/census.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/census.dta":describe}
	citytemp.dta{col 32}{stata "use http://www.stata-press.com/data/r16/citytemp.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/citytemp.dta":describe}
	educ99gdp.dta{col 32}{stata "use http://www.stata-press.com/data/r16/educ99gdp.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/educ99gdp.dta":describe}
	gnp96.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gnp96.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gnp96.dta":describe}
	lifeexp.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lifeexp.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lifeexp.dta":describe}
	network1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/network1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/network1.dta":describe}
	network1a.dta{col 32}{stata "use http://www.stata-press.com/data/r16/network1a.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/network1a.dta":describe}
	nlsw88.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlsw88.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlsw88.dta":describe}
	nlswide1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswide1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswide1.dta":describe}
	pop2000.dta{col 32}{stata "use http://www.stata-press.com/data/r16/pop2000.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/pop2000.dta":describe}
	sandstone.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sandstone.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sandstone.dta":describe}
	sp500.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sp500.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sp500.dta":describe}
	surface.dta{col 32}{stata "use http://www.stata-press.com/data/r16/surface.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/surface.dta":describe}
	uslifeexp.dta{col 32}{stata "use http://www.stata-press.com/data/r16/uslifeexp.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/uslifeexp.dta":describe}
	uslifeexp2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/uslifeexp2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/uslifeexp2.dta":describe}
{hline}

{p}
StataCorp 感谢一些参考手册中的数据集是专有的，并已获得版权持有者的明确许可以在我们的印刷文档中使用。如果任何版权持有者认为通过向公众提供这些数据集，StataCorp 违反了任何此类协议的字面或精神，请联系 {browse "mailto:tech-support@stata.com":tech-support@stata.com}，将从此网页移除任何相关材料。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <q_graphics.sthlp>}