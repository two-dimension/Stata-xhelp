
{smcl}
{* *! version 1.5.2  30may2019}{...}
{bf:Stata 多重插补参考手册的数据集，版本 16}
{hline}
{help q_mi:English Version}
{hline}
{p}
在 Stata 文档中使用的数据集被选择用于演示如何使用 Stata。某些数据集已被更改以说明特定功能。请勿将这些数据集用于分析。
{p_end}
{hline}

    {title:{help mi_intro_substantive_zh:介绍实质性}}
	mheart0.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart0.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart0.dta":describe}

    {title:{help mi_intro:介绍}}
	mheart5.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart5.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart5.dta":describe}

    {title:{help mi estimate}}
	mheart1s20.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart1s20.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart1s20.dta":describe}
	mhouses1993s30.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mhouses1993s30.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mhouses1993s30.dta":describe}
	mdrugtrs25.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mdrugtrs25.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mdrugtrs25.dta":describe}
	mjsps5.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mjsps5.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mjsps5.dta":describe}

    {title:{help mi estimate using}}
	mhouses1993s30.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mhouses1993s30.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mhouses1993s30.dta":describe}

    {title:{help mi export ice}}
	miproto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/miproto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/miproto.dta":describe}

    {title:{help mi export nhanes1}}
	miproto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/miproto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/miproto.dta":describe}

    {title:{help mi import flong}}
	ourunsetdata.dta{col 32}{stata "use http://www.stata-press.com/data/r16/ourunsetdata.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/ourunsetdata.dta":describe}

    {title:{help mi import flongsep}}
	imorig.dta{col 32}{stata "use http://www.stata-press.com/data/r16/imorig.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/imorig.dta":describe}
	im1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/im1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/im1.dta":describe}
	im2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/im2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/im2.dta":describe}

    {title:{help mi import ice}}
	icedata.dta{col 32}{stata "use http://www.stata-press.com/data/r16/icedata.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/icedata.dta":describe}

    {title:{help mi import nhanes1}}
	nhorig.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhorig.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhorig.dta":describe}
	nh1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nh1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nh1.dta":describe}
	nh2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nh2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nh2.dta":describe}

    {title:{help mi import wide}}
	wi.dta{col 32}{stata "use http://www.stata-press.com/data/r16/wi.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/wi.dta":describe}

    {title:{help mi impute}}
	mheart1s0.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart1s0.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart1s0.dta":describe}
	mheart5s0.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart5s0.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart5s0.dta":describe}
	mheart7s0.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart7s0.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart7s0.dta":describe}

    {title:{help mi impute chained}}
	mheart8s0.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart8s0.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart8s0.dta":describe}
	mheart9s0.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart9s0.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart9s0.dta":describe}
	mheart10s0.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart10s0.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart10s0.dta":describe}

    {title:{help mi impute intreg}}
	mheartintreg.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheartintreg.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheartintreg.dta":describe}

    {title:{help mi impute logit}}
	mheart2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart2.dta":describe}

    {title:{help mi impute mlogit}}
	mheart3.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart3.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart3.dta":describe}

    {title:{help mi impute monotone}}
	mheart5s0.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart5s0.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart5s0.dta":describe}
	mheart6s0.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart6s0.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart6s0.dta":describe}

    {title:{help mi impute mvn}}
	mheart5s0.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart5s0.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart5s0.dta":describe}
	mhouses1993.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mhouses1993.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mhouses1993.dta":describe}
	mvnexample0.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mvnexample0.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mvnexample0.dta":describe}

    {title:{help mi impute nbreg}}
	mheartpois.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheartpois.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheartpois.dta":describe}

    {title:{help mi impute ologit}}
	mheart4.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart4.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart4.dta":describe}

    {title:{help mi impute pmm}}
	mheart0.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart0.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart0.dta":describe}

    {title:{help mi impute poisson}}
	mheartpois.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheartpois.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheartpois.dta":describe}

    {title:{help mi impute regress}}
	mheart0.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart0.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart0.dta":describe}

    {title:{help mi impute truncreg}}
	mheart0.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart0.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart0.dta":describe}

    {title:{help mi impute usermethod}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help mi predict}}
	mhouses1993s30.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mhouses1993s30.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mhouses1993s30.dta":describe}
	mheart1s20.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart1s20.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart1s20.dta":describe}
	mdrugtrs25.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mdrugtrs25.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mdrugtrs25.dta":describe}

    {title:{help mi test}}
	mhouses1993s30.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mhouses1993s30.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mhouses1993s30.dta":describe}

    {title:{help mi_styles_zh:样式}}
	miproto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/miproto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/miproto.dta":describe}

    {title:{help mi_workflow_zh:工作流程}}
	mheart5.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mheart5.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mheart5.dta":describe}
{hline}

{p}
StataCorp 感谢一些参考手册中的数据集为专有内容，并已在我们的印刷文档中使用得到版权持有者的明确许可。如果任何版权持有者认为通过向公众提供这些数据集，StataCorp 违反了任何此类协议的条款或精神，请联系 {browse "mailto:tech-support@stata.com":tech-support@stata.com}，任何此类材料将从此网页中移除。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <q_mi.sthlp>}