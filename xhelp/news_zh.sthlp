{smcl}
{* *! version 1.2.8  28may2019}{...}
{viewerdialog news news}{...}
{vieweralsosee "之前记录的" "help prdocumented_zh"}{...}
{viewerjumpto "语法" "help news##syntax"}{...}
{viewerjumpto "菜单" "help news##menu"}{...}
{viewerjumpto "描述" "help news##description"}
{help news:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[R] news} {hline 2}}报告 Stata 新闻{p_end}
{p2col:}({browse "http://www.stata.com/manuals15/rnews.pdf":查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{pstd}
从 Stata 16 开始，{cmd:news} 不再是 Stata 的官方部分。旧 {cmd:news} 命令的内容馈送将不再保持更新。要查看最新的 Stata 新闻，请访问 {browse "https://www.stata.com/news/"}。

{pstd}
这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。


{marker syntax}{...}
{title:语法}

	{cmd:news}


{marker menu}{...}
{title:菜单}

{phang}
{bf:帮助 > 新闻}


{marker description}{...}
{title:描述}

{pstd}
{cmd:news} 显示最近的 Stata 新闻和信息的简要列表，这些信息来自 Stata 的网站。{cmd:news} 要求您的计算机连接到互联网。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <news.sthlp>}