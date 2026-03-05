{smcl}
{* *! version 1.0.5  11feb2011}{...}
{vieweralsosee "[R] netio" "help netio_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] net" "help net_zh"}{...}
{vieweralsosee "[R] news" "help news_zh"}{...}
{vieweralsosee "[R] update" "help update_zh"}
{help 677:English Version}
{hline}{...}
{title:标题}

    "远程连接失败" 错误，r(677)


{title:描述}

{pstd}
如果您看到

{p 14 14 2}{err:远程连接失败}{break}
	      {search r(677):r(677);}

{pstd}
那么您请求的某个操作需要通过网络进行，Stata 尝试了，但无法联系到指定的主机。

{pstd}
Stata 能够进行网络通信。Stata 能够查找主机，但无法与该主机建立连接。

{pstd}
也许该主机已经宕机；请稍后再试。

{pstd}
如果您 100% 的网络访问都出现此消息，那么您可能是通过代理服务器进行网络连接的。如果是这样，您必须告诉 Stata。

{pstd}
联系您的系统管理员。询问“http 代理服务器”的名称和端口。您会被告知

{center:http 代理服务器:      jupiter.myuni.edu}
{center:端口号:            8080             }

{pstd}
在 Stata 中输入

{phang2}{cmd:. set httpproxyhost jupiter.myuni.edu}{p_end}
{phang2}{cmd:. set httpproxyport 8080}{p_end}
{phang2}{cmd:. set httpproxy on}

{pstd}
您的网络访问应能正常工作。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <677.sthlp>}