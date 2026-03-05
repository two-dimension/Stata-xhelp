
{smcl}
{* *! version 1.0.3  26mar2013}{...}
{bf:与 Stata 一起安装的示例数据集}
{hline}
{help dta_examples:English Version}
{hline}
{pstd}此处列出的数据集随 Stata 一起安装。您还可以查看
{help dta_manuals_zh:Stata 文档中使用的数据集}的完整列表，这些数据集可通过互联网获得。每个手册标题都以链接形式列出，您可以通过点击链接查看该手册的数据集列表。
{p_end}
{hline}

	auto.dta{col 29}{stata "sysuse auto.dta":use} | {stata "sysdescribe auto.dta":describe}
	auto2.dta{col 29}{stata "sysuse auto2.dta":use} | {stata "sysdescribe auto2.dta":describe}
	autornd.dta{col 29}{stata "sysuse autornd.dta":use} | {stata "sysdescribe autornd.dta":describe}
	bplong.dta{col 29}{stata "sysuse bplong.dta":use} | {stata "sysdescribe bplong.dta":describe}
	bpwide.dta{col 29}{stata "sysuse bpwide.dta":use} | {stata "sysdescribe bpwide.dta":describe}
	cancer.dta{col 29}{stata "sysuse cancer.dta":use} | {stata "sysdescribe cancer.dta":describe}
	census.dta{col 29}{stata "sysuse census.dta":use} | {stata "sysdescribe census.dta":describe}
	citytemp.dta{col 29}{stata "sysuse citytemp.dta":use} | {stata "sysdescribe citytemp.dta":describe}
	citytemp4.dta{col 29}{stata "sysuse citytemp4.dta":use} | {stata "sysdescribe citytemp4.dta":describe}
	educ99gdp.dta{col 29}{stata "sysuse educ99gdp.dta":use} | {stata "sysdescribe educ99gdp.dta":describe}
	gnp96.dta{col 29}{stata "sysuse gnp96.dta":use} | {stata "sysdescribe gnp96.dta":describe}
	lifeexp.dta{col 29}{stata "sysuse lifeexp.dta":use} | {stata "sysdescribe lifeexp.dta":describe}
	network1.dta{col 29}{stata "sysuse network1.dta":use} | {stata "sysdescribe network1.dta":describe}
	network1a.dta{col 29}{stata "sysuse network1a.dta":use} | {stata "sysdescribe network1a.dta":describe}
	nlsw88.dta{col 29}{stata "sysuse nlsw88.dta":use} | {stata "sysdescribe nlsw88.dta":describe}
	nlswide1.dta{col 29}{stata "sysuse nlswide1.dta":use} | {stata "sysdescribe nlswide1.dta":describe}
	pop2000.dta{col 29}{stata "sysuse pop2000.dta":use} | {stata "sysdescribe pop2000.dta":describe}
	sandstone.dta{col 29}{stata "sysuse sandstone.dta":use} | {stata "sysdescribe sandstone.dta":describe}
	sp500.dta{col 29}{stata "sysuse sp500.dta":use} | {stata "sysdescribe sp500.dta":describe}
	surface.dta{col 29}{stata "sysuse surface.dta":use} | {stata "sysdescribe surface.dta":describe}
	tsline1.dta{col 29}{stata "sysuse tsline1.dta":use} | {stata "sysdescribe tsline1.dta":describe}
	tsline2.dta{col 29}{stata "sysuse tsline2.dta":use} | {stata "sysdescribe tsline2.dta":describe}
	uslifeexp.dta{col 29}{stata "sysuse uslifeexp.dta":use} | {stata "sysdescribe uslifeexp.dta":describe}
	uslifeexp2.dta{col 29}{stata "sysuse uslifeexp2.dta":use} | {stata "sysdescribe uslifeexp2.dta":describe}
	voter.dta{col 29}{stata "sysuse voter.dta":use} | {stata "sysdescribe voter.dta":describe}
	xtline1.dta{col 29}{stata "sysuse xtline1.dta":use} | {stata "sysdescribe xtline1.dta":describe}

{hline}
{pstd}StataCorp 感谢一些数据集的版权持有者，允许我们在
打印文档中使用这些专有数据集。如果任何版权持有者认为
通过向公众提供这些数据集，StataCorp 违反了任何此类协议的字面或精神， 请联系
{browse "mailto:tech-support@stata.com":tech-support@stata.com}。
{p_end}
{hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dta_examples.sthlp>}