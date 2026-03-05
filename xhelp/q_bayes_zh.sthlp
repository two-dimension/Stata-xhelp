
{smcl}
{* *! version 1.3.1  20jun2019}{...}
{bf:Stata 贝叶斯分析参考手册的数据集，版本 16}
{hline}
{help q_bayes:English Version}
{hline}
{p}
用于 Stata 文档的数据集是为了演示如何使用 Stata而选择的。一些数据集已被修改以说明特定特征。请勿将这些数据集用于分析。
{p_end}
{hline}

    {title:{help 贝叶斯命令}}
	oxygen.dta{col 32}{stata "use http://www.stata-press.com/data/r16/oxygen":use} | {stata "describe using  http://www.stata-press.com/data/r16/oxygen":describe}

    {title:{help bayes_zh}}
	womenwage.dta{col 32}{stata "use http://www.stata-press.com/data/r16/womenwage":use} | {stata "describe using  http://www.stata-press.com/data/r16/womenwage":describe}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	heartswitz.dta{col 32}{stata "use http://www.stata-press.com/data/r16/heartswitz.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/heartswitz.dta":describe}
	sysdsn1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sysdsn1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sysdsn1.dta":describe}
	beetle.dta{col 32}{stata "use http://www.stata-press.com/data/r16/beetle.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/beetle.dta":describe}
	probe.dta{col 32}{stata "use http://www.stata-press.com/data/r16/probe.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/probe.dta":describe}
	fish.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fish.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fish.dta":describe}
	hip3.dta{col 32}{stata "use http://www.stata-press.com/data/r16/hip3.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/hip3.dta":describe}
	womenwk.dta{col 32}{stata "use http://www.stata-press.com/data/r16/womenwk.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/womenwk.dta":describe}
	pig.dta{col 32}{stata "use http://www.stata-press.com/data/r16/pig.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/pig.dta":describe}
	salamander.dta{col 32}{stata "use http://www.stata-press.com/data/r16/salamander.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/salamander.dta":describe}

    {title:{help bayesmh_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	heartswitz.dta{col 32}{stata "use http://www.stata-press.com/data/r16/heartswitz.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/heartswitz.dta":describe}
	hearthungary.dta{col 32}{stata "use http://www.stata-press.com/data/r16/hearthungary.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/hearthungary.dta":describe}
	fullauto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fullauto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fullauto.dta":describe}
	pig.dta{col 32}{stata "use http://www.stata-press.com/data/r16/pig.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/pig.dta":describe}
	bangladesh.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bangladesh.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bangladesh.dta":describe}
	coal.dta{col 32}{stata "use http://www.stata-press.com/data/r16/coal.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/coal.dta":describe}
	bioequiv.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bioequiv.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bioequiv.dta":describe}
	betablockers_wide.dta{col 32}{stata "use http://www.stata-press.com/data/r16/betablockers_wide.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/betablockers_wide.dta":describe}
	betablockers_long.dta{col 32}{stata "use http://www.stata-press.com/data/r16/betablockers_long.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/betablockers_long.dta":describe}
	masc1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/masc1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/masc1.dta":describe}

    {title:{help bayesmh 评估器}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	cancer.dta{col 32}{stata "use http://www.stata-press.com/data/r16/cancer.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/cancer.dta":describe}

    {title:{help bayesgraph_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help bayesstats ess}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help bayesstats grubin}}
	womenwage.dta{col 32}{stata "use http://www.stata-press.com/data/r16/womenwage.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/womenwage.dta":describe}

    {title:{help bayesstats ic}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help bayesstats ppvalues}}
	coutput.dta{col 32}{stata "use http://www.stata-press.com/data/r16/coutput.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/coutput.dta":describe}

    {title:{help bayesstats summary}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help bayestest interval}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help bayestest model}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help bayespredict_zh}}
	splight.dta{col 32}{stata "use http://www.stata-press.com/data/r16/splight.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/splight.dta":describe}
	titanic800.dta{col 32}{stata "use http://www.stata-press.com/data/r16/titanic800.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/titanic800.dta":describe}

    {title:{help set clevel}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
{hline}

{p}
StataCorp 衷心感谢一些参考手册中的数据集是专有的，并且在我们的印刷文档中使用这些数据集得到了版权持有者的明确许可。如果任何版权持有者认为通过向公众提供这些数据集，StataCorp 侵犯了任何此类协议的字面或精神，请联系 {browse "mailto:tech-support@stata.com":tech-support@stata.com}，我们将从该网页上移除任何此类材料。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <q_bayes.sthlp>}