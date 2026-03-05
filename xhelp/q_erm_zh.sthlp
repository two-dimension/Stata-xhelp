
{smcl}
{* *! version 1.1.1  30may2019}{...}
{bf:Stata 扩展回归模型参考手册的数据集，版本 16}
{hline}
{help q_erm:English Version}
{hline}
{p}
在 Stata 文档中使用的数据集被选中以展示如何使用 Stata。一些数据集经过修改以说明特定功能。请勿将这些数据集用于分析。
{p_end}
{hline}

    {title:简介 7}
	ermexample.dta{col 32}{stata "use http://www.stata-press.com/data/r16/ermexample.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/ermexample.dta":describe}

    {title:简介 9}
	wellness.dta{col 32}{stata "use http://www.stata-press.com/data/r16/wellness.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/wellness.dta":describe}

    {title:示例 1a}
	class10.dta{col 32}{stata "use http://www.stata-press.com/data/r16/class10.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/class10.dta":describe}

    {title:示例 1b}
	class10.dta{col 32}{stata "use http://www.stata-press.com/data/r16/class10.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/class10.dta":describe}

    {title:示例 1c}
	class10.dta{col 32}{stata "use http://www.stata-press.com/data/r16/class10.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/class10.dta":describe}

    {title:示例 2a}
	wageed.dta{col 32}{stata "use http://www.stata-press.com/data/r16/wageed.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/wageed.dta":describe}

    {title:示例 2b}
	wageed.dta{col 32}{stata "use http://www.stata-press.com/data/r16/wageed.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/wageed.dta":describe}

    {title:示例 2c}
	wageed.dta{col 32}{stata "use http://www.stata-press.com/data/r16/wageed.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/wageed.dta":describe}

    {title:示例 3a}
	class10.dta{col 32}{stata "use http://www.stata-press.com/data/r16/class10.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/class10.dta":describe}

    {title:示例 3b}
	class10.dta{col 32}{stata "use http://www.stata-press.com/data/r16/class10.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/class10.dta":describe}

    {title:示例 4a}
	heartsm.dta{col 32}{stata "use http://www.stata-press.com/data/r16/heartsm.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/heartsm.dta":describe}

    {title:示例 4b}
	heartsm.dta{col 32}{stata "use http://www.stata-press.com/data/r16/heartsm.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/heartsm.dta":describe}

    {title:示例 5}
	heartsm.dta{col 32}{stata "use http://www.stata-press.com/data/r16/heartsm.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/heartsm.dta":describe}

    {title:示例 6a}
	womenhlth.dta{col 32}{stata "use http://www.stata-press.com/data/r16/womenhlth.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/womenhlth.dta":describe}

    {title:示例 6b}
	womenhlth.dta{col 32}{stata "use http://www.stata-press.com/data/r16/womenhlth.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/womenhlth.dta":describe}

    {title:示例 7} 
	nlswork.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork.dta":describe}

    {title:示例 8a}
	class10re.dta{col 32}{stata "use http://www.stata-press.com/data/r16/class10re.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/class10re.dta":describe}

    {title:示例 8b} 
	class10re.dta{col 32}{stata "use http://www.stata-press.com/data/r16/class10re.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/class10re.dta":describe}

    {title:示例 9} 
	womenhlthre.dta{col 32}{stata "use http://www.stata-press.com/data/r16/womenhlthre.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/womenhlthre.dta":describe}
{hline}

{p}
StataCorp 感谢某些在参考手册中使用的数据集的版权持有者，他们已明确允许我们在印刷文档中使用这些数据集。如果任何版权持有者认为通过向公众提供这些数据集，StataCorp 违反了任何此类协议的字面或精神，请联系 {browse "mailto:tech-support@stata.com":tech-support@stata.com}，我们将从本网页移除任何相关材料。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <q_erm.sthlp>}