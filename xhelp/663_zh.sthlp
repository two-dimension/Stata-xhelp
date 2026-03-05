{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "[R] netio" "help netio_zh"}{...}
{vieweralsosee "r(677)" "help r(677)"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] net" "help net_zh"}{...}
{vieweralsosee "[R] news" "help news_zh"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{vieweralsosee "[R] update" "help update_zh"}
{help 663:English Version}
{hline}{...}
{title:标题}

    "远程连接到代理失败" 错误，r(663)


{title:描述}

{pstd}
如果您看到

{p 14 14 2}{err:远程连接到代理失败}{p_end}
	      {search r(663):r(663);}

{pstd}
那么您设置了代理服务器（请参见帮助 {help r(677)}），但它没有响应 Stata。可能的问题是

{phang2}1.  您指定了错误的端口，

{phang2}2.  您指定了错误的主机，或者

{phang2}3.  代理服务器已关闭。

{pstd}
在 Stata 中键入 {cmd:query} 以确定您设置的主机和端口。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <663.sthlp>}