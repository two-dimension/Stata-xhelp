
{smcl}
{* *! version 1.5.2  30may2019}{...}
{bf:Stata 调查数据参考手册的数据集，版本 16}
{hline}
{help q_survey:English Version}
{hline}
{p}
用于 Stata 文档的数据集被选中以演示如何使用 Stata。有些数据集已被修改以说明特定功能。请勿将这些数据集用于分析。
{p_end}
{hline}

    {title:校准}
	smho.dta{col 32}{stata "use http://www.stata-press.com/data/r16/stdize.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/stdize.dta":describe}

{hline}

    {title:直接标准化}
	stdize.dta{col 32}{stata "use http://www.stata-press.com/data/r16/stdize.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/stdize.dta":describe}

{hline}

    {title:{help svy_estat_zh:estat}}
	nhanes2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2.dta":describe}
	nhanes2b.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2b.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2b.dta":describe}
	nmihs.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nmihs.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nmihs.dta":describe}
	strata5.dta{col 32}{stata "use http://www.stata-press.com/data/r16/strata5.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/strata5.dta":describe}
	nhanes2d.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2d.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2d.dta":describe}

{hline}

    {title:针对调查数据的最大似然估计}
	multistage.dta{col 32}{stata "use http://www.stata-press.com/data/r16/multistage.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/multistage.dta":describe}

{hline}

    {title:后分层}
	poststrata.dta{col 32}{stata "use http://www.stata-press.com/data/r16/poststrata.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/poststrata.dta":describe}

{hline}

    {title:亚群体估计}
	nhanes2d.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2d.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2d.dta":describe}
	nmihs.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nmihs.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nmihs.dta":describe}

    {title:{help 调查}}
	stage5a.dta{col 32}{stata "use http://www.stata-press.com/data/r16/stage5a.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/stage5a.dta":describe}
	multistage.dta{col 32}{stata "use http://www.stata-press.com/data/r16/multistage.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/multistage.dta":describe}
	nhefs.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhefs.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhefs.dta":describe}
	nhanes2b.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2b.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2b.dta":describe}
	highschool.dta{col 32}{stata "use http://www.stata-press.com/data/r16/highschool.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/highschool.dta":describe}
	nhanes2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2.dta":describe}
	nhanes2brr.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2brr.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2brr.dta":describe}
	stdize.dta{col 32}{stata "use http://www.stata-press.com/data/r16/stdize.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/stdize.dta":describe}
	poststrata.dta{col 32}{stata "use http://www.stata-press.com/data/r16/poststrata.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/poststrata.dta":describe}

    {title:{help svy_zh}}
	nhanes2f.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2f.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2f.dta":describe}

    {title:{help svy bootstrap}}
	nmihs_bs.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nmihs_bs.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nmihs_bs.dta":describe}
	nmihs_mbs.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nmihs_mbs.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nmihs_mbs.dta":describe}

    {title:{help svy brr}}
	nhanes2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2.dta":describe}
	nhanes2brr.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2brr.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2brr.dta":describe}

    {title:{help svy estimation}}
	nhanes2f.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2f.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2f.dta":describe}
	nmihs.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nmihs.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nmihs.dta":describe}
	nhanes2d.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2d.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2d.dta":describe}
	nhefs.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhefs.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhefs.dta":describe}

    {title:{help svy jackknife}}
	nhanes2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2.dta":describe}
	nhanes2jknife.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2jknife.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2jknife.dta":describe}

    {title:{help svy postestimation}}
	nhanes2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2.dta":describe}
	nhanes2d.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2d.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2d.dta":describe}
	nhanes2f.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2f.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2f.dta":describe}

    {title:{help svy sdr}}
	ss07ptx.dta{col 32}{stata "use http://www.stata-press.com/data/r16/ss07ptx.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/ss07ptx.dta":describe}

    {title:{help "svy: 单向列联表"}}
	nhanes2b.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2b.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2b.dta":describe}

    {title:{help "svy: 双向列联表"}}
	nhanes2b.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2b.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2b.dta":describe}
	svy_tabopt.dta{col 32}{stata "use http://www.stata-press.com/data/r16/svy_tabopt.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/svy_tabopt.dta":describe}

    {title:{help svydescribe_zh}}
	nhanes2b.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2b.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2b.dta":describe}

    {title:{help svyset_zh}}
	stage5a.dta{col 32}{stata "use http://www.stata-press.com/data/r16/stage5a.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/stage5a.dta":describe}
	fpc.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fpc.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fpc.dta":describe}
	svyset_wr.dta{col 32}{stata "use http://www.stata-press.com/data/r16/svyset_wr.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/svyset_wr.dta":describe}
	stage5a_jkw.dta{col 32}{stata "use http://www.stata-press.com/data/r16/stage5a_jkw.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/stage5a_jkw.dta":describe}
{hline}

{p}
StataCorp 感谢某些参考手册中的数据集为专有数据，并且已在我们的打印文档中使用，并获得版权持有人的明确许可。如果任何版权持有人认为通过将这些数据集公开，可导致 StataCorp 违反任何此类协议的字面或精神，请联系我们 {browse "mailto:tech-support@stata.com":tech-support@stata.com} ，相关材料将从此网页中移除。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <q_survey.sthlp>}