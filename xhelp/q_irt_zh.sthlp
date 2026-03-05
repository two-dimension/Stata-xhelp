
{smcl}
{* *! version 1.3.1  20jun2019}{...}
{bf:Stata 项目反应理论参考手册所用数据集，版本 16}
{hline}
{help q_irt:English Version}
{hline}
{p}
为展示如何使用 Stata，所使用的数据集被选自 Stata 文档。部分数据集经过修改以说明特定功能。请不要将这些数据集用于分析。
{p_end}
{hline}

    {title:{help diflogistic_zh}}
	masc2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc2.dta":describe}

    {title:{help difmh_zh}}
	masc2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc2.dta":describe}

{hline}

    {title:{help estat report}}
	masc1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc1.dta":describe}

    {title:{help estat greport}}
	masc2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc2.dta":describe}

    {title:{help irt_zh}}
	masc1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc1.dta":describe}
	charity.dta{col 32}{stata "use http://www.stata-press.com/data/r16/charity.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/charity.dta":describe}

    {title:{help IRT 控制面板}}
	masc1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc1.dta":describe}

    {title:{help irt 1pl}}
	masc1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc1.dta":describe}

    {title:{help irt 2pl}}
	masc1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc1.dta":describe}

    {title:{help irt 3pl}}
	masc1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc1.dta":describe}

    {title:{help irt grm}}
	charity.dta{col 32}{stata "use http://www.stata-press.com/data/r16/charity.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/charity.dta":describe}

    {title:{help irt nrm}}
	science.dta{col 32}{stata "use http://www.stata-press.com/data/r16/science.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/science.dta":describe}

    {title:{help irt pcm}}
	alike.dta{col 32}{stata "use http://www.stata-press.com/data/r16/alike.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/alike.dta":describe}

    {title:{help irt rsm}}
	charity.dta{col 32}{stata "use http://www.stata-press.com/data/r16/charity.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/charity.dta":describe}

    {title:{help irt hybrid}}
	science.dta{col 32}{stata "use http://www.stata-press.com/data/r16/science.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/science.dta":describe}
	masc1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc1.dta":describe}

    {title:{help irt, group()}}
	masc2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc2.dta":describe}

    {title:{help irt constraints}}
	masc1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc1.dta":describe}
	masc2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc2.dta":describe}

    {title:{help irtgraph icc}}
	masc1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc1.dta":describe}
	charity.dta{col 32}{stata "use http://www.stata-press.com/data/r16/charity.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/charity.dta":describe}
	masc2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc2.dta":describe}

    {title:{help irtgraph tcc}}
	masc1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc1.dta":describe}

    {title:{help irtgraph iif}}
	masc1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc1.dta":describe}

    {title:{help irtgraph tif}}
	masc1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc1.dta":describe}
{hline}

{p}
StataCorp 感谢一些参考手册中的数据集为专有数据，并获得版权持有者的明确许可，用于我们的印刷文档。如果任何版权持有者认为 StataCorp 以任何方式违反协议的文本或精神，请联系 {browse "mailto:tech-support@stata.com":tech-support@stata.com}，我们将从此网页移除任何此类材料。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <q_irt.sthlp>}