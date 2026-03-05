
{smcl}
{* *! version 1.0.5  13may2013}{...}
{pstd}
为指定数量的聚类生成分组变量
{help cluster_generate_optstab:English Version}
{hline}

{p 8 15 2}{cmd:cluster} {cmdab:gen:erate}
		{c -(} {newvar} | {it:stub} {c )-} {cmd:=}
		{opth gr:oups(numlist)} [{cmd:,} {it:options} ]

{pstd}
通过切割树状图生成分组变量

{p 8 15 2}{cmd:cluster} {cmdab:gen:erate} {newvar} {cmd:=}
		{cmd:cut(}{it:#}{cmd:)}
	[{cmd:,} {cmdab:n:ame:(}{it:clname}{cmd:)} ]

{synoptset 14}{...}
{synopthdr}
{synoptline}
{synopt :{opt n:ame(clname)}}用于生成新变量的聚类分析名称{p_end}
{synopt :{cmdab:t:ies(}{cmdab:e:rror}{cmd:)}}对平局情况产生错误信息；默认{p_end}
{synopt :{cmdab:t:ies(}{cmdab:s:kip}{cmd:)}}忽略导致平局的请求{p_end}
{synopt :{cmdab:t:ies(}{cmdab:f:ewer}{cmd:)}}对小于请求的最大组数产生结果{p_end}
{synopt :{cmdab:t:ies(}{cmdab:m:ore}{cmd:)}}对大于请求的最小组数产生结果{p_end}
{synoptline}
{p2colreset}{...}