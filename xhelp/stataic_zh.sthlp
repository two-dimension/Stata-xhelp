{smcl}
{* *! version 1.3.7  15oct2018}{...}
{vieweralsosee "[R] about" "help about_zh"}{...}
{vieweralsosee "[D] 数据类型" "help data_types_zh"}{...}
{vieweralsosee "[D] 内存" "help memory_zh"}{...}
{vieweralsosee "[R] 设置" "help set_zh"}{...}
{vieweralsosee "[U] Stata 的 5 种版本" "help flavors_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "限制" "help limits_zh"}{...}
{vieweralsosee "Stata/MP" "help statamp_zh"}{...}
{vieweralsosee "Stata/SE" "help statase_zh"}{...}
{viewerjumpto "使用 Stata/IC" "stataic_zh##use"}{...}
{viewerjumpto "内容" "stataic_zh##contents"}
{help stataic:English Version}
{hline}{...}
{marker use}{...}
{title:使用 Stata/IC}

{pstd}
Stata 有三种版本：

{col 13}版本{col 29}描述
{col 13}{hline 47}
{col 10}-> {bf:Stata/IC}{col 29}标准版 
{col 13}{bf:Stata/SE}{col 29}Stata/IC + 大型数据集
{col 13}{bf:Stata/MP}{col 29}Stata/SE + 并行处理
{col 13}{hline 47}
{col 13}请参阅 {bf:{help flavors_zh:[U] Stata 的 5 种版本}} 以获取描述

{pstd}
要确定您正在运行的 Stata 版本，请输入

	    {cmd:. about}

{pstd}
如果您使用的是其他版本的 Stata，请点击相应的链接：  

{col 13}{hline 47}
{col 13}{bf:{help statase_zh:Stata/SE}}{col 29}使用 Stata/SE
{col 13}{bf:{help statamp_zh:Stata/MP}}{col 29}使用 Stata/MP
{col 13}{hline 47}

{pstd}
有关升级到 Stata/SE 或 Stata/MP 的信息，请访问 {browse "https://www.stata.com"}。


{marker contents}{...}
{title:内容}

	1.  {help stataic##starting:启动 Stata/IC}

	2.  {help stataic##setting:设置 Stata/IC 的限制}

	3.  {help stataic##dta:与非 IC 用户共享 .dta 数据集}

	4.  {help stataic##query:查询内存使用情况}

	5.  {help stataic##programming:程序员建议：确定版本}



{marker starting}{...}
{title:1.  启动 Stata/IC}

{pstd}
您可以按如下方式启动 Stata/IC：

{p 8 12 4}
    Windows:{break}
	选择 {bf:开始 > 所有程序 > Stata {ccl stata_version} > StataIC {ccl stata_version}}

{p 8 12 4}
    Mac:{break}
	双击 {hi:Stata.do} 文件从 {hi:data} 文件夹，或
	双击 {hi:Stata} 图标从 {hi:Stata} 文件夹。

{p 8 12 4}
    Unix:{break}
	在 Unix 命令提示符下，输入 {cmd:xstata} 启动 Stata/IC 的 GUI 版本，或输入 {cmd:stata} 启动命令行版本。


{marker setting}{...}
{title:2.  设置 Stata/IC 的限制}

{pstd}
Stata/IC 的限制为

{p 8 16 4}
    1.  {cmd:maxvar}{break}
	    数据集中允许的最大变量数。
	    此限制设置为 2,048，并且无法重置。


{marker dta}{...}
{title:3.  与非 IC 用户共享 .dta 数据集}

{pstd}
您可以与 Stata/SE 和 Stata/MP 用户共享数据集，无需进行任何更改。


{marker query}{...}
{title:4.  查询内存使用情况}

{pstd}
命令

	    {cmd:. memory}

{pstd}
将显示当前内存报告，而命令 

	    {cmd:. query memory}

{pstd}
将显示当前内存设置。
请参阅 {help memory_zh:help memory}。


{marker programming}{...}
{title:5.  程序员建议：确定版本}

{pstd}
程序员可以通过检查 {help creturn_zh} 值来确定正在运行的 Stata 版本

		                 creturn 值
                        {c |} {cmd:c(flavor)   c(SE)     c(MP)}
	    {hline 12}{c +}{hline 30}
	    Stata/IC    {c |}  "{cmd:IC}"         0         0
	    Stata/SE    {c |}  "{cmd:IC}"         1         0
	    Stata/MP    {c |}  "{cmd:IC}"         1         1
	    {hline 12}{c BT}{hline 30}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stataic.sthlp>}