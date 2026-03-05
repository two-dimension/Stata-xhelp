
{smcl}
{* *! version 1.5.1  22may2019}{...}
{bf:Stata 用户指南的数据集, 版本 16}
{hline}
{help q_user:English Version}
{hline}
{p}
用于 Stata 文档的数据集旨在展示如何使用 Stata。一些数据集经过修改以解释特定特性。请勿将这些数据集用于分析。
{p_end}
{hline}

    {title:第 1 章 - 请阅读 -- 这将有所帮助}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	nlswork.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork.dta":describe}

    {title:第 2 章 - Stata 的简要描述}
	lbw.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lbw.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lbw.dta":describe}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:第 3 章 - 学习和使用 Stata 的资源}
	oddeven.dta{col 32}{stata "use http://www.stata-press.com/r16/oddeven.dta":use} | {stata "describe using  http://www.stata-press.com/r16/oddeven.dta":describe}

    {title:第 6 章 - 管理内存}
	regsmpl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/regsmpl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/regsmpl.dta":describe}

    {title:第 8 章 - 错误消息和返回代码}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	citytemp.dta{col 32}{stata "use http://www.stata-press.com/data/r16/citytemp.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/citytemp.dta":describe}

    {title:第 11 章 - 语言语法}
	census12.dta{col 32}{stata "use http://www.stata-press.com/data/r16/census12.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/census12.dta":describe}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	gxmpl1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gxmpl1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gxmpl1.dta":describe}
	gxmpl2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gxmpl2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gxmpl2.dta":describe}
	citytemp3.dta{col 32}{stata "use http://www.stata-press.com/data/r16/citytemp3.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/citytemp3.dta":describe}
	nlswork.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork.dta":describe}

    {title:第 12 章 - 数据}
	gxmpl3.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gxmpl3.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gxmpl3.dta":describe}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	format.dta{col 32}{stata "use http://www.stata-press.com/data/r16/format.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/format.dta":describe}
	gxmpl4.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gxmpl4.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gxmpl4.dta":describe}
	gxmpl5.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gxmpl5.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gxmpl5.dta":describe}

    {title:第 13 章 - 函数和表达式}
	fvex.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fvex.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fvex.dta":describe}
	gxmpl6.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gxmpl6.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gxmpl6.dta":describe}
	gxmpl7.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gxmpl7.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gxmpl7.dta":describe}
	gxmpl8.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gxmpl8.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gxmpl8.dta":describe}
	gxmpl9.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gxmpl9.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gxmpl9.dta":describe}

    {title:第 14 章 - 矩阵表达式}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	fvex.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fvex.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fvex.dta":describe}

    {title:第 15 章 - 保存和打印输出 -- 日志文件}
	census5.dta{col 32}{stata "use http://www.stata-press.com/data/r16/census5.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/census5.dta":describe}

    {title:第 16 章 - do 文件}
	census5.dta{col 32}{stata "use http://www.stata-press.com/data/r16/census5.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/census5.dta":describe}

    {title:第 18 章 - Stata 编程}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:第 20 章 - 估计和后估计命令}
	auto2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto2.dta":describe}
	regress.dta{col 32}{stata "use http://www.stata-press.com/data/r16/regress.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/regress.dta":describe}
	lbw3.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lbw3.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lbw3.dta":describe}
	systolic.dta{col 32}{stata "use http://www.stata-press.com/data/r16/systolic.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/systolic.dta":describe}
	nhanes2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2.dta":describe}
	nlsw88b.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlsw88b.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlsw88b.dta":describe}
	yield.dta{col 32}{stata "use http://www.stata-press.com/data/r16/yield.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/yield.dta":describe}
	cholesterol.dta{col 32}{stata "use http://www.stata-press.com/data/r16/cholesterol.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/cholesterol.dta":describe}
	auto7.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto7.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto7.dta":describe}

    {title:第 21 章 - 创建报告}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:第 24 章 - 处理字符串}
	hbp2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/hbp2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/hbp2.dta":describe}

    {title:第 25 章 - 处理日期和时间}
	datexmpl2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/datexmpl2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/datexmpl2.dta":describe}

    {title:第 26 章 - 处理分类数据和因子变量}
	agexmpl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/agexmpl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/agexmpl.dta":describe}
	fvex.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fvex.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fvex.dta":describe}
	censusfv.dta{col 32}{stata "use http://www.stata-press.com/data/r16/censusfv.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/censusfv.dta":describe}
	estimability.dta{col 32}{stata "use http://www.stata-press.com/data/r16/estimability.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/estimability.dta":describe}

    {title:第 29 章 - 使用互联网保持最新 }
	chapter28.dta{col 32}{stata "use http://www.stata.com/manual/chapter28.dta":use} | {stata "describe using  http://www.stata.com/manual/chapter28.dta":describe}

{hline}
{hline}

{p}
StataCorp 感谢一些参考手册中的数据集是专有的，并且在我们的印刷文档中已经获得版权持有者的明确许可。如果任何版权持有者认为，通过向公众提供这些数据集，StataCorp 违反了任何此类协议的内容或精神，请联系 {browse "mailto:tech-support@stata.com":tech-support@stata.com}，我们将从此网页上删除任何此类材料。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <q_user.sthlp>}