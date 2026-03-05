{smcl}
{* *! version 1.0.5  11feb2011}{...}
{vieweralsosee "[R] netio" "help netio_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] net" "help net_zh"}{...}
{vieweralsosee "[R] news" "help news_zh"}{...}
{vieweralsosee "[R] update" "help update_zh"}
{help 2:English Version}
{hline}{...}
{title:标题}

    "连接超时" 错误，r(2)


{marker description}{...}
{title:描述}

{pstd}
如果您看到

		{err:连接超时}
		{search r(2):r(2);}

{pstd}
那么互联网连接已超时。这可能会发生在以下情况：

{phang2}
a.  您与主机之间的连接速度较慢，或者

{phang2}
b.  您与主机之间的连接消失，最终导致“超时”。

{pstd}
对于(b)，等一段时间（比如5分钟）再试一次（有时互联网的某些部分可能会断开长达一天，但这是很少见的）。对于(a)，您可以重置什么构成“超时”的限制。有两个数字需要设置。


{marker timeout1}{...}
{title:timeout1:  建立初始连接的时间}

{pstd}
默认情况下，Stata在声明超时之前会等待30秒。您可以更改此限制：

		{cmd:. set timeout1} {it:#秒}

{pstd}
您可以尝试将通常的限制加倍并指定60。 {it:#秒} 必须介于1到32,000之间。


{marker timeout2}{...}
{title:timeout2:  从打开连接中检索数据的时间}

{pstd}
默认情况下，Stata在声明超时之前会等待180秒（3分钟）。要更改此限制，请输入

		{cmd:. set timeout2} {it:#秒}

{pstd}
您可以尝试将通常的限制加倍并指定360。
{it:#秒} 必须介于1到32,000之间。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <2.sthlp>}