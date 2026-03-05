
{smcl}
{* *! version 1.0.0  23jun2019}{...}
{bf:Stata Lasso 参考手册的数据集，版本 16}
{hline}
{help q_lasso:English Version}
{hline}
{p}
Stata 文档中使用的数据集被选用以演示如何使用 Stata。一些数据集已被修改以解释特定特征。请勿将这些数据集用于分析。
{p_end}
{hline}

    {title:{help coefpath_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	breathe.dta{col 32}{stata "use http://www.stata-press.com/data/r16/breathe.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/breathe.dta":describe}

    {title:{help elasticnet_zh}}
	fakesurvey_vl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fakesurvey_vl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fakesurvey_vl.dta":describe}
	fakesurvey2_vl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fakesurvey2_vl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fakesurvey2_vl.dta":describe}

    {title:推断示例}
	breathe.dta{col 32}{stata "use http://www.stata-press.com/data/r16/breathe.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/breathe.dta":describe}
	lassoex.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lassoex.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lassoex.dta":describe}
	mroz.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mroz.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mroz.dta":describe}

    {title:{help lasso_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help lassocoef_zh}}
	fakesurvey_vl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fakesurvey_vl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fakesurvey_vl.dta":describe}
	mroz2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mroz2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mroz2.dta":describe}
	breathe.dta{col 32}{stata "use http://www.stata-press.com/data/r16/breathe.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/breathe.dta":describe}

    {title:lasso 示例}
	fakesurvey.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fakesurvey.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fakesurvey.dta":describe}
	fakesurvey_vl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fakesurvey_vl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fakesurvey_vl.dta":describe}

    {title:{help lassogof_zh}}
	fakesurvey_vl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fakesurvey_vl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fakesurvey_vl.dta":describe}

    {title:{help lassoinfo_zh}}
	fakesurvey_vl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fakesurvey_vl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fakesurvey_vl.dta":describe}
	mroz2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mroz2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mroz2.dta":describe}
	breathe.dta{col 32}{stata "use http://www.stata-press.com/data/r16/breathe.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/breathe.dta":describe}

    {title:{help lassoknots_zh}}
	fakesurvey_vl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fakesurvey_vl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fakesurvey_vl.dta":describe}

    {title:{help lassoselect_zh}}
	fakesurvey_vl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fakesurvey_vl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fakesurvey_vl.dta":describe}

    {title:{help sqrtlasso_zh}}
	fakesurvey_vl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fakesurvey_vl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fakesurvey_vl.dta":describe}
{hline}

{p}
StataCorp 感谢一些参考手册中的数据集是专有的，并已获得版权持有者的明确许可以在我们的印刷文档中使用。如果任何版权持有者认为，公开这些数据集会违反任何此类协议的字面或精神，请联系 {browse "mailto:tech-support@stata.com":tech-support@stata.com}，我们会将任何此类材料从此网页中删除。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <q_lasso.sthlp>}