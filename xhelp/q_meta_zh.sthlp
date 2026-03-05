
{smcl}
{* *! version 1.0.0  22jun2019}{...}
{bf:Stata元分析参考手册的数据集，版本16}
{hline}
{help q_meta:English Version}
{hline}
{p}
在Stata文档中使用的数据集被选用来演示如何使用Stata。一些数据集已被修改以解释特定的功能。请勿将这些数据集用于分析。
{p_end}
{hline}

    {title:{help meta_zh}}
	pupiliq.dta{col 32}{stata "use http://www.stata-press.com/data/r16/pupiliq.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/pupiliq.dta":describe}
	strepto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/strepto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/strepto.dta":describe}
	bcg.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bcg.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bcg.dta":describe}
	nsaids.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nsaids.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nsaids.dta":describe}

    {title:{help meta data}}
	metaset.dta{col 32}{stata "use http://www.stata-press.com/data/r16/metaset.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/metaset.dta":describe}
	metaescnt.dta{col 32}{stata "use http://www.stata-press.com/data/r16/metaescnt.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/metaescnt.dta":describe}
	leukemia2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/leukemia2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/leukemia2.dta":describe}
	asthma.dta{col 32}{stata "use http://www.stata-press.com/data/r16/asthma.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/asthma.dta":describe}
	bcg.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bcg.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bcg.dta":describe}

    {title:{help meta esize}}
	metaesbin.dta{col 32}{stata "use http://www.stata-press.com/data/r16/metaesbin.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/metaesbin.dta":describe}
	metaescnt.dta{col 32}{stata "use http://www.stata-press.com/data/r16/metaescnt.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/metaescnt.dta":describe}

    {title:{help meta set}}
	metaset.dta{col 32}{stata "use http://www.stata-press.com/data/r16/metaset.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/metaset.dta":describe}

    {title:{help meta forestplot}}
	bcgset.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bcgset.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bcgset.dta":describe}
	pupiliqset.dta{col 32}{stata "use http://www.stata-press.com/data/r16/pupiliqset.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/pupiliqset.dta":describe}

    {title:{help meta summarize}}
	pupiliqset.dta{col 32}{stata "use http://www.stata-press.com/data/r16/pupiliqset.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/pupiliqset.dta":describe}

    {title:{help meta labbeplot}}
	bcgset.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bcgset.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bcgset.dta":describe}

    {title:{help meta regress}}
	bcgset.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bcgset.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bcgset.dta":describe}

    {title:{help meta regress postestimation}}
	bcgset.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bcgset.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bcgset.dta":describe}

    {title:{help estat bubbleplot}}
	bcgset.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bcgset.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bcgset.dta":describe}

    {title:{help meta funnelplot}}
	nsaidsset.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nsaidsset.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nsaidsset.dta":describe}
	pupiliqset.dta{col 32}{stata "use http://www.stata-press.com/data/r16/pupiliqset.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/pupiliqset.dta":describe}

    {title:{help meta bias}}
	pupiliqset.dta{col 32}{stata "use http://www.stata-press.com/data/r16/pupiliqset.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/pupiliqset.dta":describe}
	nsaidsset.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nsaidsset.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nsaidsset.dta":describe}

    {title:{help meta trimfill}}
	metatrim.dta{col 32}{stata "use http://www.stata-press.com/data/r16/metatrim.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/metatrim.dta":describe}
{hline}

{p}
StataCorp 感谢一些在参考手册中的数据集是专有的，并已获得版权持有者的明确许可，用于我们的印刷文档。如果任何版权持有者认为，StataCorp 通过向公众提供这些数据集，违反了任何此类协议的字面或精神，请联系 {browse "mailto:tech-support@stata.com":tech-support@stata.com}，我们将从该网页中移除任何此类材料。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <q_meta.sthlp>}