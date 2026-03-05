
{smcl}
{* *! version 1.0.0  20jun2019}{...}
{bf:Stata 选择模型参考手册的数据集，版本 16}
{hline}
{help q_cm:English Version}
{hline}
{p}
在 Stata 文档中使用的数据集被选定用于演示如何使用 Stata。一些数据集经过修改以解释特定功能。请勿将这些数据集用于分析。
{p_end}
{hline}

    {title:Intro 1}
	travel.dta{col 32}{stata "use http://www.stata-press.com/data/r16/travel.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/travel.dta":describe}

    {title:Intro 2}
	carchoice.dta{col 32}{stata "use http://www.stata-press.com/data/r16/carchoice.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/carchoice.dta":describe}
	transport.dta{col 32}{stata "use http://www.stata-press.com/data/r16/transport.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/transport.dta":describe}

    {title:Intro 3}
	carchoice.dta{col 32}{stata "use http://www.stata-press.com/data/r16/carchoice.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/carchoice.dta":describe}
	carchoice_errors.dta{col 32}{stata "use http://www.stata-press.com/data/r16/carchoice_errors.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/carchoice_errors.dta":describe}

    {title:Intro 5}
	carchoice.dta{col 32}{stata "use http://www.stata-press.com/data/r16/carchoice.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/carchoice.dta":describe}

    {title:Intro 6}
	wlsrank.dta{col 32}{stata "use http://www.stata-press.com/data/r16/wlsrank.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/wlsrank.dta":describe}

    {title:Intro 7}
	transport.dta{col 32}{stata "use http://www.stata-press.com/data/r16/transport.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/transport.dta":describe}

    {title:{help cmchoiceset_zh}}
	carchoice.dta{col 32}{stata "use http://www.stata-press.com/data/r16/carchoice.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/carchoice.dta":describe}
	transport_unbalanced.dta{col 32}{stata "use http://www.stata-press.com/data/r16/transport_unbalanced.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/transport_unbalanced.dta":describe}

    {title:{help cmclogit_zh}}
	carchoice.dta{col 32}{stata "use http://www.stata-press.com/data/r16/carchoice.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/carchoice.dta":describe}
	carchoice_panel.dta{col 32}{stata "use http://www.stata-press.com/data/r16/carchoice_panel.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/carchoice_panel.dta":describe}

    {title:{help cmclogit postestimation}}
	carchoice.dta{col 32}{stata "use http://www.stata-press.com/data/r16/carchoice.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/carchoice.dta":describe}

    {title:{help cmmixlogit_zh}}
	inschoice.dta{col 32}{stata "use http://www.stata-press.com/data/r16/inschoice.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/inschoice.dta":describe}

    {title:{help cmmprobit_zh}}
	travel.dta{col 32}{stata "use http://www.stata-press.com/data/r16/travel.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/travel.dta":describe}

    {title:{help cmmprobit postestimation}}
	travel.dta{col 32}{stata "use http://www.stata-press.com/data/r16/travel.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/travel.dta":describe}

    {title:{help cmrologit_zh}}
	evignet.dta{col 32}{stata "use http://www.stata-press.com/data/r16/evignet.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/evignet.dta":describe}

    {title:{help cmroprobit_zh}}
	wlsrank.dta{col 32}{stata "use http://www.stata-press.com/data/r16/wlsrank.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/wlsrank.dta":describe}

    {title:{help cmroprobit postestimation}}
	wlsrank.dta{col 32}{stata "use http://www.stata-press.com/data/r16/wlsrank.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/wlsrank.dta":describe}

    {title:{help cmsample_zh}}
	carchoice_missing.dta{col 32}{stata "use http://www.stata-press.com/data/r16/carchoice_missing.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/carchoice_missing.dta":describe}
	carchoice.dta{col 32}{stata "use http://www.stata-press.com/data/r16/carchoice.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/carchoice.dta":describe}

    {title:{help cmset_zh}}
	carchoice.dta{col 32}{stata "use http://www.stata-press.com/data/r16/carchoice.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/carchoice.dta":describe}
	carchoice_errors.dta{col 32}{stata "use http://www.stata-press.com/data/r16/carchoice_errors.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/carchoice_errors.dta":describe}
	transport.dta{col 32}{stata "use http://www.stata-press.com/data/r16/transport.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/transport.dta":describe}

    {title:{help cmsummarize_zh}}
	carchoice.dta{col 32}{stata "use http://www.stata-press.com/data/r16/carchoice.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/carchoice.dta":describe}
	transport.dta{col 32}{stata "use http://www.stata-press.com/data/r16/transport.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/transport.dta":describe}

    {title:{help cmtab_zh}}
	carchoice.dta{col 32}{stata "use http://www.stata-press.com/data/r16/carchoice.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/carchoice.dta":describe}
	transport.dta{col 32}{stata "use http://www.stata-press.com/data/r16/transport.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/transport.dta":describe}

    {title:{help cmxtmixlogit_zh}}
	transport.dta{col 32}{stata "use http://www.stata-press.com/data/r16/transport.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/transport.dta":describe}

    {title:{help cm_margins_zh:margins}}
	carchoice.dta{col 32}{stata "use http://www.stata-press.com/data/r16/carchoice.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/carchoice.dta":describe}
	travel.dta{col 32}{stata "use http://www.stata-press.com/data/r16/travel.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/travel.dta":describe}

    {title:{help nlogit_zh}}
	restaurant.dta{col 32}{stata "use http://www.stata-press.com/data/r16/restaurant.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/restaurant.dta":describe}

    {title:{help nlogit postestimation}}
	restaurant.dta{col 32}{stata "use http://www.stata-press.com/data/r16/restaurant.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/restaurant.dta":describe}
{hline}

{p}
StataCorp 感谢一些参考手册中的数据集是专有的，并已在我们的印刷文档中使用，得到版权持有者的明确许可。如果任何版权持有者认为通过向公众提供这些数据集，StataCorp 违反了任何此类协议的条款或精神，请联系 {browse "mailto:tech-support@stata.com":tech-support@stata.com}，我们将删除这些材料。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <q_cm.sthlp>}