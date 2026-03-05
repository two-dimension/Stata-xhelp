
{smcl}
{* *! version 1.5.1  23may2019}{...}
{bf:Stata纵向数据/面板数据参考手册的数据集，版本16}
{hline}
{help q_cross:English Version}
{hline}
{p 4 4 2}
用于Stata文档的数据集被选择用来演示如何使用Stata。一些数据集已被修改以解释特定功能。请勿将这些数据集用于分析。
{p_end}
{hline}

    {title:{help quadchk_zh}}
	quad1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/quad1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/quad1.dta":describe}
	quad2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/quad2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/quad2.dta":describe}

{hline}

    {title:{help vce_options}}
	clogitid.dta{col 32}{stata "use http://www.stata-press.com/data/r16/clogitid.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/clogitid.dta":describe}

{hline}

    {title:{help xt_zh}}
	nlswork.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork.dta":describe}
	union.dta{col 32}{stata "use http://www.stata-press.com/data/r16/union.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/union.dta":describe}

    {title:{help xtabond_zh}}
	abdata.dta{col 32}{stata "use http://www.stata-press.com/data/r16/abdata.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/abdata.dta":describe}

    {title:{help xtcloglog_zh}}
	union.dta{col 32}{stata "use http://www.stata-press.com/data/r16/union.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/union.dta":describe}

    {title:{help xtcloglog postestimation}}
	union.dta{col 32}{stata "use http://www.stata-press.com/data/r16/union.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/union.dta":describe}

    {title:{help xtcointtest_zh}}
	xtcoint.dta{col 32}{stata "use http://www.stata-press.com/data/r16/xtcoint.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/xtcoint.dta":describe}

    {title:{help xtdata_zh}}
	nlswork.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork.dta":describe}
	xtdatasmpl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/xtdatasmpl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/xtdatasmpl.dta":describe}

    {title:{help xtdescribe_zh}}
	nlswork.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork.dta":describe}
	xtdesxmpl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/xtdesxmpl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/xtdesxmpl.dta":describe}

    {title:{help xtdpd_zh}}
	abdata.dta{col 32}{stata "use http://www.stata-press.com/data/r16/abdata.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/abdata.dta":describe}

    {title:{help xtdpdsys_zh}}
	abdata.dta{col 32}{stata "use http://www.stata-press.com/data/r16/abdata.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/abdata.dta":describe}

    {title:{help xtdpdsys postestimation}}
	abdata.dta{col 32}{stata "use http://www.stata-press.com/data/r16/abdata.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/abdata.dta":describe}

    {title:{help xtfrontier_zh}}
	xtfrontier1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/xtfrontier1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/xtfrontier1.dta":describe}

    {title:{help xtfrontier postestimation}}
	xtfrontier1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/xtfrontier1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/xtfrontier1.dta":describe}

    {title:{help xtgee_zh}}
	nlswork2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork2.dta":describe}

    {title:{help xtgee postestimation}}
	nlswork2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork2.dta":describe}
	union.dta{col 32}{stata "use http://www.stata-press.com/data/r16/union.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/union.dta":describe}
	airacc.dta{col 32}{stata "use http://www.stata-press.com/data/r16/airacc.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/airacc.dta":describe}
	airacc2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/airacc2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/airacc2.dta":describe}

    {title:{help xtgls_zh}}
	invest2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/invest2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/invest2.dta":describe}

    {title:{help xtheckman_zh}}
	wagework.dta{col 32}{stata "use http://www.stata-press.com/data/r16/wagework.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/wagework.dta":describe}

    {title:{help xthtaylor_zh}}
	psidextract.dta{col 32}{stata "use http://www.stata-press.com/data/r16/psidextract.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/psidextract.dta":describe}
	xthtaylor1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/xthtaylor1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/xthtaylor1.dta":describe}
	xthtaylor2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/xthtaylor2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/xthtaylor2.dta":describe}

    {title:{help xthtaylor postestimation}}
	psidextract.dta{col 32}{stata "use http://www.stata-press.com/data/r16/psidextract.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/psidextract.dta":describe}

    {title:{help xtintreg_zh}}
	nlswork5.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork5.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork5.dta":describe}

    {title:{help xtintreg postestimation}}
	nlswork5.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork5.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork5.dta":describe}

    {title:{help xtivreg_zh}}
	nlswork.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork.dta":describe}
	abdata.dta{col 32}{stata "use http://www.stata-press.com/data/r16/abdata.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/abdata.dta":describe}

    {title:{help xtline_zh}}
	xtline1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/xtline1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/xtline1.dta":describe}

    {title:{help xtlogit_zh}}
	union.dta{col 32}{stata "use http://www.stata-press.com/data/r16/union.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/union.dta":describe}

    {title:{help xtlogit postestimation}}
	union.dta{col 32}{stata "use http://www.stata-press.com/data/r16/union.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/union.dta":describe}

    {title:{help xtnbreg_zh}}
	airacc.dta{col 32}{stata "use http://www.stata-press.com/data/r16/airacc.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/airacc.dta":describe}

    {title:{help xtologit_zh}}
	tvsfpors.dta{col 32}{stata "use http://www.stata-press.com/data/r16/tvsfpors.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/tvsfpors.dta":describe}

    {title:{help xtologit postestimation}}
	tvsfpors.dta{col 32}{stata "use http://www.stata-press.com/data/r16/tvsfpors.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/tvsfpors.dta":describe}

    {title:{help xtoprobit_zh}}
	tvsfpors.dta{col 32}{stata "use http://www.stata-press.com/data/r16/tvsfpors.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/tvsfpors.dta":describe}

    {title:{help xtoprobit postestimation}}
	tvsfpors.dta{col 32}{stata "use http://www.stata-press.com/data/r16/tvsfpors.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/tvsfpors.dta":describe}

    {title:{help xtpcse_zh}}
	grunfeld.dta{col 32}{stata "use http://www.stata-press.com/data/r16/grunfeld.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/grunfeld.dta":describe}

    {title:{help xtpoisson_zh}}
	ships.dta{col 32}{stata "use http://www.stata-press.com/data/r16/ships.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/ships.dta":describe}

    {title:{help xtpoisson postestimation}}
	ships.dta{col 32}{stata "use http://www.stata-press.com/data/r16/ships.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/ships.dta":describe}

    {title:{help xtprobit_zh}}
	union.dta{col 32}{stata "use http://www.stata-press.com/data/r16/union.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/union.dta":describe}
	chicken.dta{col 32}{stata "use http://www.stata-press.com/data/r16/chicken.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/chicken.dta":describe}

    {title:{help xtprobit postestimation}}
	union.dta{col 32}{stata "use http://www.stata-press.com/data/r16/union.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/union.dta":describe}

    {title:{help xtrc_zh}}
	invest2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/invest2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/invest2.dta":describe}

    {title:{help xtreg_zh}}
	nlswork.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork.dta":describe}

    {title:{help xtreg postestimation}}
	nlswork.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork.dta":describe}

    {title:{help xtregar_zh}}
	grunfeld.dta{col 32}{stata "use http://www.stata-press.com/data/r16/grunfeld.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/grunfeld.dta":describe}

    {title:{help xtset_zh}}
	abdata.dta{col 32}{stata "use http://www.stata-press.com/data/r16/abdata.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/abdata.dta":describe}
	gymdata.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gymdata.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gymdata.dta":describe}

    {title:{help xtstreg_zh}}
	catheter.dta{col 32}{stata "use http://www.stata-press.com/data/r16/catheter.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/catheter.dta":describe}

    {title:{help xtstreg postestimation}}
	catheter.dta{col 32}{stata "use http://www.stata-press.com/data/r16/catheter.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/catheter.dta":describe}

    {title:{help xtsum_zh}}
	nlswork.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork.dta":describe}

    {title:{help xttab_zh}}
	nlswork.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork.dta":describe}

    {title:{help xttobit_zh}}
	nlswork3.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork3.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork3.dta":describe}

    {title:{help xttobit postestimation}}
	nlswork3.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork3.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork3.dta":describe}

    {title:{help xtunitroot_zh}}
	pennxrate.dta{col 32}{stata "use http://www.stata-press.com/data/r16/pennxrate.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/pennxrate.dta":describe}
{hline}

{p}
StataCorp 感谢一些在参考手册中使用的数据集由版权所有者提供，并已获得版权持有者的明确许可在我们的印刷文档中使用。如果任何版权持有人认为，通过向公众提供这些数据集，StataCorp 违反了任何此类协议的字面或精神，请联系 {browse "mailto:tech-support@stata.com":tech-support@stata.com} ，我们将移除网页上的所有此类材料。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <q_cross.sthlp>}