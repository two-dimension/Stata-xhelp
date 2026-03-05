
{smcl}
{* *! version 1.3.2  30may2019}{...}
{bf:Stata 力量、精度和样本大小参考手册的数据集，版本 16}
{hline}
{help q_power:English Version}
{hline}
{p}
用于 Stata 文档中的数据集被选择用于演示如何使用 Stata。一些数据集已被修改以说明特定的功能。请勿将这些数据集用于分析。
{p_end}
{hline}

    {title:{help power onemean}}
	sat.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sat.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sat.dta":describe}

    {title:{help power onemean, cluster}}
	sat.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sat.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sat.dta":describe}

    {title:{help power twomeans, cluster}}
	dcfd_trial.dta{col 32}{stata "use http://www.stata-press.com/data/r16/dcfd_trial.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/dcfd_trial.dta":describe}

    {title:{help power pairedmeans}}
	bpwide.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bpwide.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bpwide.dta":describe}

    {title:{help power oneproportion}}
	lbw.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lbw.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lbw.dta":describe}

    {title:{help power oneproportion, cluster}}
	infection.dta{col 32}{stata "use http://www.stata-press.com/data/r16/infection.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/infection.dta":describe}

    {title:{help power twoproportions, cluster}}
	pneumoniacrt.dta{col 32}{stata "use http://www.stata-press.com/data/r16/pneumoniacrt.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/pneumoniacrt.dta":describe}

    {title:{help power onevariance}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help power twovariances}}
	fuel.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fuel.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fuel.dta":describe}

    {title:{help power onecorrelation}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help power twocorrelations}}
	genderpsych.dta{col 32}{stata "use http://www.stata-press.com/data/r16/genderpsych.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/genderpsych.dta":describe}

    {title:{help power oneway}}
	systolic.dta{col 32}{stata "use http://www.stata-press.com/data/r16/systolic.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/systolic.dta":describe}

    {title:{help power twoway}}
	systolic.dta{col 32}{stata "use http://www.stata-press.com/data/r16/systolic.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/systolic.dta":describe}

    {title:{help power repeated}}
	t43.dta{col 32}{stata "use http://www.stata-press.com/data/r16/t43.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/t43.dta":describe}

    {title:{help power oneslope}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help power rsquared}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help power pcorr}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help power cmh}}
	ulcer.dta{col 32}{stata "use http://www.stata-press.com/data/r16/ulcer.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/ulcer.dta":describe}

    {title:{help power mcc}}
	lowbirth2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lowbirth2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lowbirth2.dta":describe}

    {title:{help power trend}}
	infants.dta{col 32}{stata "use http://www.stata-press.com/data/r16/infants.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/infants.dta":describe}
	infants2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/infants2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/infants2.dta":describe}

    {title:{help power cox}}
	myeloma.dta{col 32}{stata "use http://www.stata-press.com/data/r16/myeloma.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/myeloma.dta":describe}

    {title:{help power logrank}}
	drug.dta{col 32}{stata "use http://www.stata-press.com/data/r16/drug.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/drug.dta":describe}

    {title:{help power logrank, cluster}}
	eartubes.dta{col 32}{stata "use http://www.stata-press.com/data/r16/eartubes.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/eartubes.dta":describe}
{hline}

{p}
StataCorp 感谢某些参考手册中的数据集是专有的，并已在我们的印刷文档中获得版权持有者的明确许可使用。如果任何版权持有者认为 StataCorp 公开这些数据集的做法违反了任何此类协议的字面或精神条款，请联系 {browse "mailto:tech-support@stata.com":tech-support@stata.com} ，我们将从此网页上删除任何此类材料。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <q_power.sthlp>}