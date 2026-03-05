{smcl}
{* *! version 1.2.4  14may2018}{...}
{viewerdialog bstat "dialog bstat"}{...}
{vieweralsosee "[R] bstat" "mansection R bstat"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bootstrap postestimation" "help bootstrap postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bootstrap" "help bootstrap_zh"}{...}
{vieweralsosee "[R] bsample" "help bsample_zh"}{...}
{viewerjumpto "Syntax" "bstat_zh##syntax"}{...}
{viewerjumpto "Menu" "bstat_zh##menu"}{...}
{viewerjumpto "Description" "bstat_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bstat_zh##linkspdf"}{...}
{viewerjumpto "Options" "bstat_zh##options"}{...}
{viewerjumpto "Example" "bstat_zh##example"}{...}
{viewerjumpto "Stored results" "bstat_zh##results"}
{help bstat:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] bstat} {hline 2}}报告 bootstrap 结果{p_end}
{p2col:}({mansection R bstat:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
从变量中获取 bootstrap 统计量

{p 8 14 2}
{cmd:bstat}
	[{varlist}] {ifin} [{cmd:,} {it:options}]

{phang}
从文件中获取 bootstrap 统计量

{p 8 14 2}
{cmd:bstat}
	[{it:namelist}] [{opt using} {it:{help filename_zh}}] {ifin} [{cmd:,} 
	{it:options}]

{synoptset 17 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{p2coldent:* {opt s:tat(vector)}}每个统计量的观测值{p_end}
{p2coldent:* {opt accel(vector)}}每个统计量的加速值{p_end}
{p2coldent:* {opt tie:s}}对 ties 调整 BC/BCa 置信区间{p_end}
{p2coldent:* {opt mse}}使用 MSE 公式进行方差估计{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设定置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt n(#)}}从中提取 bootstrap 样本的观测值数量{p_end}
{synopt :{opt notable}}抑制结果表的显示{p_end}
{synopt :{opt noh:eader}}抑制表头显示{p_end}
{synopt :{opt nol:egend}}抑制表图例显示{p_end}
{synopt :{opt v:erbose}}显示完整的表图例{p_end}
{synopt :{opt ti:tle(text)}}使用 {it:text} 作为 bootstrap 结果的标题{p_end}
{synopt :{it:{help bstat##display_options:display_options}}}控制
     列格式和行宽{p_end}
{synoptline}
{p 4 6 2}
* 星号选项和限定词 {opt using}、{opt if} 和 {opt in}
要求具有 bootstrap 数据集.{p_end}
{p 4 6 2}请参见 {manhelp bootstrap_postestimation R:bootstrap postestimation} 获取
估计后可用功能。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 重抽样 > 报告 bootstrap 结果}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bstat} 是一个程序员命令，用于计算和显示 bootstrap 统计量的估计结果。
对于 {varlist} 中的每个变量， 
{cmd:bstat} 计算协方差矩阵、估计偏差，并构建
正态置信区间 (CIs)、百分位数 CIs、
偏差校正 (BC) CIs 以及
偏差校正和加速 (BCa) CIs，使用内存中或硬盘上的 bootstrap 数据集。计算出的 CIs 可以使用
{cmd:estat bootstrap} 显示；请参见
{manhelp bootstrap_postestimation R:bootstrap postestimation}。

{pstd}
不带 {it:varlist} 的 {cmd:bstat} 将重放上一次 bootstrap
估计的结果，当结果存储在 {cmd:e()} 中时。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection R bstatRemarksandexamples:备注和示例}

{pstd}
上述部分未包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt stat(vector)} 指定每个统计量的观测值（即使用原始数据集的统计量值）。

{phang}
{opt accel(vector)} 指定每个统计量的加速值，用来构建 BCa CIs。

{phang}
{opt ties} 指定 {opt bstat} 在计算用于构建 BC 和 BCa CIs 的偏差中位数时调整重复值。

{phang}
{opt mse} 指定 {opt bstat} 通过使用重复值与统计量观测值的偏差来计算方差。默认情况下，
{opt bstat} 通过使用重复值的平均值的偏差来计算方差。

{dlgtab:报告}

{phang}
{opt level(#)}; 见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt n(#)} 指定提取 bootstrap 样本的观测值数量。此值不参与计算，但在信息未保存在 bootstrap 数据集中的情况下，可以改善表头。

{phang}
{opt notable} 抑制输出表的显示。

{phang}
{opt noheader} 抑制表头的显示。此选项暗含 {opt nolegend}。

{phang}
{opt nolegend} 抑制表图例的显示。

{phang}
{opt verbose} 指定显示完整的表图例。默认情况下，不显示系数和标准误差。

{phang}
{opt title(text)} 指定在 bootstrap 结果表格上方显示的标题；默认标题为 {opt Bootstrap results}。

{marker display_options}{...}
{phang}
{it:display_options}：
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}，以及
{opt nolstretch}；
    见 {helpb estimation options##display_options:[R] 估计选项}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. bootstrap _b, saving(bstat) reps(200) bca: }
          {cmd:regress mpg weight length}{p_end}

{pstd}保存加速度统计量向量{p_end}
{phang2}{cmd:. matrix a = e(accel)}{p_end}

{pstd}保存完整样本中的估计系数{p_end}
{phang2}{cmd:. matrix b = e(b)}{p_end}

{pstd}通过使用保存的完整样本估计向量和保存的加速度向量重播 bootstrap 结果{p_end}
{phang2}{cmd:. bstat using bstat, stat(b) accel(a)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:bstat} 将以下内容存储在 {cmd:e()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:e(N)}}样本大小{p_end}
{synopt:{cmd:e(N_reps)}}完整重复次数{p_end}
{synopt:{cmd:e(N_misreps)}}不完整重复次数{p_end}
{synopt:{cmd:e(N_strata)}}层数{p_end}
{synopt:{cmd:e(N_clust)}}聚类数{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_exp)}}标准表达式数量{p_end}
{synopt:{cmd:e(k_eexp)}}扩展表达式数量（即 {cmd:_b}）{p_end}
{synopt:{cmd:e(k_extra)}}超出 {cmd:e(b)} 中原始方程的额外方程数量{p_end}
{synopt:{cmd:e(level)}} bootstrap CIs 的置信水平{p_end}
{synopt:{cmd:e(bs_version)}}{cmd:bootstrap} 结果的版本{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:bstat}{p_end}
{synopt:{cmd:e(command)}}来自 {cmd:_dta[command]}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(exp}{it:#}{cmd:)}}第 {it:#} 个统计量的表达式{p_end}
{synopt:{cmd:e(prefix)}}{cmd:bootstrap}{p_end}
{synopt:{cmd:e(ties)}}{cmd:ties}，如已指定{p_end}
{synopt:{cmd:e(mse)}}{cmd:mse}，如已指定{p_end}
{synopt:{cmd:e(vce)}}{cmd:bootstrap}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}观测统计量{p_end}
{synopt:{cmd:e(b_bs)}}bootstrap 估计{p_end}
{synopt:{cmd:e(reps)}}非缺失结果的数量{p_end}
{synopt:{cmd:e(bias)}}估计的偏差{p_end}
{synopt:{cmd:e(se)}}估计的标准误差{p_end}
{synopt:{cmd:e(z0)}}中位偏差{p_end}
{synopt:{cmd:e(accel)}}估计的加速度{p_end}
{synopt:{cmd:e(ci_normal)}}正态近似 CIs{p_end}
{synopt:{cmd:e(ci_percentile)}}百分位数 CIs{p_end}
{synopt:{cmd:e(ci_bc)}}偏差校正 CIs{p_end}
{synopt:{cmd:e(ci_bca)}}偏差校正和加速 CIs{p_end}
{synopt:{cmd:e(V)}}bootstrap 方差协方差矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bstat.sthlp>}