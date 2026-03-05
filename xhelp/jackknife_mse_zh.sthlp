{smcl}
{* *! version 1.1.2  14may2018}{...}
{* 该文件来自 _coef_table.ado 生成的可点击输出}{...}
{vieweralsosee "[R] jackknife" "help jackknife_zh"}{...}
{vieweralsosee "[SVY] svy jackknife" "help svy_jackknife_zh"}{...}
{vieweralsosee "[R] vce_option" "help vce_option_zh"}{...}
{viewerjumpto "Jknife * 的含义是什么？" "jackknife_mse_zh##intro"}{...}
{viewerjumpto "使用调查数据时 Jknife * 的含义是什么？" "jackknife_mse_zh##intro_svy"}
{help jackknife_mse:English Version}
{hline}{...}
{marker intro}{...}
{title:"Jknife *" 的含义是什么？}

{pstd}
您的估计结果在标准误差列的表头中有 "{bf:Jknife *}"。

{pstd}
"{bf:Jknife *}" 中的 {bf:Jknife} 表示标准误差是采用 jackknife 重抽样方法计算的。这意味着您在估计命令中指定了 {help vce_option_zh:vce(jackknife)} 选项或使用 {help jackknife_zh} 计算了估计结果。默认情况下，{cmd:vce(jackknife)} 和 {cmd:jackknife} 使用 jackknife 假值与其均值的偏差计算方差。

{pstd}
"{bf:Jknife *}" 中的 {bf:*} 表示标准误差是通过 jackknife 方差估计器的均方误差公式 (MSE) 计算的。这意味着您指定了 {cmd:vce(jackknife, mse)} 或 {cmd:jackknife} 的 {cmd:mse} 选项。

{pstd}
有关 jackknife 重抽样方法在方差（和标准误差）估计中的详细讨论，请参见 {bf:[R] jackknife}。


{marker intro_svy}{...}
{title:使用调查数据时 "Jknife *" 的含义是什么？}

{pstd}
您的调查数据估计结果在标准误差列的表头中有 "{bf:Jknife *}"。

{pstd}
"{bf:Jknife *}" 中的 {bf:Jknife} 表示标准误差是使用调查数据的 jackknife 重抽样方法计算的。这意味着您在 {help svyset_zh} 中指定了 {cmd:vce(jackknife)} 选项或使用 {helpb svy jackknife} 计算了估计结果。默认情况下，{cmd:vce(jackknife)} 和 {cmd:svy} {cmd:jackknife} 使用 jackknife 假值与其均值的偏差计算方差。

{pstd}
"{bf:Jknife *}" 中的 {bf:*} 表示标准误差是通过 jackknife 方差估计器的均方误差公式 (MSE) 计算的。这意味着您在 {cmd:svyset} 或 {cmd:svy} {cmd:jackknife} 中指定了 {cmd:mse} 选项。

{pstd}
有关使用调查数据的 jackknife 方法在方差（和标准误差）估计中的详细讨论，请参见 {bf:[SVY] Variance estimation}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <jackknife_mse.sthlp>}