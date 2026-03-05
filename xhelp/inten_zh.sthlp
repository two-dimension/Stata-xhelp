{smcl}
{* *! version 1.0.6  11may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] 数据类型" "help data_types_zh"}{...}
{vieweralsosee "[D] 格式" "help format_zh"}{...}
{viewerjumpto "语法" "inten_zh##syntax"}{...}
{viewerjumpto "描述" "inten_zh##description"}{...}
{viewerjumpto "示例" "inten_zh##examples"}{...}
{viewerjumpto "存储结果" "inten_zh##results"}{...}
{viewerjumpto "错误" "inten_zh##bugs"}
{help inten:English Version}
{hline}{...}
{title:标题}

{p 4 20 2}
{hi:[P] inbase} {hline 2} 基数转换


{marker syntax}{...}
{title:语法}

	{cmd:inbase} {it:#1} {it:#2}

	{cmd:inten}  {it:#1} {it:#2}

{phang}
其中{break}
{it:#1} 是基数，{it:#2} 是要转换的整数。{break}
{it:#1} 必须在 2 到 62 之间（包含2和62）。


{marker description}{...}
{title:描述}

{pstd}
{cmd:inbase} 将十进制整数转换为指定的基数。

{pstd}
{cmd:inten} 将指定基数的整数转换为十进制整数。


{marker examples}{...}
{title:示例}

	{cmd:. inbase 16 29}
	1d

	{cmd:. inbase 2 29}
	11101

	{cmd:. inten 16 1d}
	29

	{cmd:. inten 2 11101}
	29


{marker results}{...}
{title:存储结果}

    {cmd:inten} 返回

	标量 {cmd:r(ten)} 包含十进制整数

    {cmd:inbase} 返回

	局部 {cmd:r(base)} 包含指定基数的整数


{marker bugs}{...}
{title:错误}

{pstd}
{cmd:inten} 不验证您是否使用了超出基数的数字。
例如，您可以输入 {cmd:inten 16 1g}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <inten.sthlp>}