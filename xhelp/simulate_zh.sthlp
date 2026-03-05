{smcl}
{* *! version 1.1.14  23jan2019}{...}
{vieweralsosee "[R] simulate" "mansection R simulate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bootstrap" "help bootstrap_zh"}{...}
{vieweralsosee "[R] jackknife" "help jackknife_zh"}{...}
{vieweralsosee "[R] permute" "help permute_zh"}{...}
{vieweralsosee "[R] set rngstream" "help set rngstream"}{...}
{viewerjumpto "语法" "simulate_zh##syntax"}{...}
{viewerjumpto "描述" "simulate_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "simulate_zh##linkspdf"}{...}
{viewerjumpto "选项" "simulate_zh##options"}{...}
{viewerjumpto "示例" "simulate_zh##examples"}
{help simulate:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] simulate} {hline 2}}蒙特卡洛模拟{p_end}
{p2col:}({mansection R simulate:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:simulate}
	[{it:{help exp_list_zh}}]
	{cmd:,} {opt r:eps(#)} [{it:options}]
	{cmd::} {it:command}

{synoptset 21}{...}
{synopt:{it:options}}描述{p_end}
{synoptline}
{synopt:{opt nodots}}抑制复制点{p_end}
{synopt :{opt dots(#)}}每 {it:#} 次重复显示点{p_end}
{synopt:{opt noisily}}显示 {it:command} 的任何输出{p_end}
{synopt:{opt trace}}跟踪 {it:command}{p_end}
{synopt:{help prefix_saving_option_zh:{bf:{ul:sa}ving(}{it:filename}{bf:, ...)}}}保存
	results 到 {it:filename}{p_end}
{synopt:{opt nolegend}}抑制表图例{p_end}
{synopt:{opt verbose}}显示完整的表图例{p_end}
{synopt:{opt seed(#)}}将随机数种子设置为 {it:#}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
支持的所有权重类型均允许被 {it:command} 使用；详见 {help weight_zh}。
{p_end}


{marker description}{...}
{title:描述}

{pstd}
{opt simulate} 简化了执行蒙特卡洛类型模拟的编程任务。输入

{pin}
{cmd:. simulate} {it:{help exp_list_zh}}{cmd:, reps(}{it:#}{cmd:)} {cmd::} {it:command}

{pstd}
会运行 {it:command} 进行 {it:#} 次重复，并将结果收集到 {it:exp_list} 中。

{pstd}
{it:command} 定义了执行一次模拟的命令。
大多数 Stata 命令和用户编写的程序都可以与 {opt simulate} 一起使用，只要它们遵循 {help language_zh:standard Stata syntax}。
{opt by} 前缀可能不属于 {it:command} 的一部分。

{pstd}
{it:{help exp_list_zh}} 指定了从执行 {it:command} 中计算的表达式。
如果未给出任何表达式，{it:exp_list} 将假定一个默认值，这取决于 {it:command} 是否在 {opt e()} 或 {opt r()} 中更改结果。
如果 {it:command} 在 {opt e()} 中更改结果，默认值为 {opt _b}。
如果 {it:command} 在 {opt r()} 中更改结果（但不在 {opt e()} 中），默认值为所有发布到 {opt r()} 的标量。
如果在 {it:exp_list} 中未指定表达式，则会出错。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R simulateQuickstart:快速入门}

        {mansection R simulateRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt reps(#)} 是必需的——它指定要执行的重复次数。

包含帮助点

{phang}
{opt noisily} 请求显示 {it:command} 的任何输出。
此选项意味着 {opt nodots} 选项。

{phang}
{opt trace} 使执行 {it:command} 的跟踪信息显示。
此选项意味着 {opt noisily} 选项。

包含帮助 prefix_saving_option

{pmore}
有关 {it:suboptions} 的详细信息，请参见 {it:{help prefix_saving_option_zh}}。

{phang}
{opt nolegend} 抑制表图例的显示。表图例用于识别与其代表的表达式对应的表行。

{phang}
{opt verbose} 请求显示完整的表图例。默认情况下，不会显示系数和标准误差。

{phang}
{opt seed(#)} 设置随机数种子。指定此选项相当于在调用 {opt simulate} 之前键入以下命令：

{pmore}
{cmd:. set seed} {it:#}


{marker examples}{...}
{title:示例}

{pstd}
创建一个包含来自对数正态分布的 100 观测样本均值和方差的数据集。执行实验 10,000 次：

    {cmd:program define lnsim, rclass}
        {cmd:version {ccl stata_version}}
        {cmd:syntax [, obs(integer 1) mu(real 0) sigma(real 1) ]}
        {cmd:drop _all}
        {cmd:set obs `obs'}
        {cmd:tempvar z}
        {cmd:gen `z' = exp(rnormal(`mu',`sigma'))}
        {cmd:summarize `z'}
        {cmd:return scalar mean = r(mean)}
        {cmd:return scalar Var  = r(Var)}
    {cmd:end}

{phang}
{cmd:. simulate mean=r(mean) var=r(Var), reps(10000): lnsim, obs(100)}

{pstd}
创建一个包含来自对数正态分布的 50 观测样本均值和方差的数据集，正常均值为 -3，标准差为 7。执行实验 10,000 次：

{phang}
{cmd:. simulate mean=r(mean) var=r(Var), reps(10000): lnsim, obs(50) mu(-3) sigma(7)}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <simulate.sthlp>}