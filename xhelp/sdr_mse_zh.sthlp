{smcl}
{* *! version 1.0.6  14may2018}{...}
{* 该文件由 _coef_table.ado 产生的可点击输出获取}{...}
{vieweralsosee "[SVY] svy sdr" "mansection SVY svysdr"}{...}
{vieweralsosee "[SVY] svyset" "mansection SVY svyset"}{...}
{vieweralsosee "[SVY] 方差估计" "mansection SVY Varianceestimation"}
{help sdr_mse:English Version}
{hline}{...}
{title:"SDR *" 的意思是什么？}

{pstd}
您的估计结果在标准误差列的表头中有 "{bf:SDR *}"。

{pstd}
"{bf:SDR}" 表示您使用逐差复现方法计算标准误差。这意味着您指定了 {cmd:vce(sdr)} 选项或使用了 {helpb svy sdr} 来计算估计结果。默认情况下，{cmd:vce(sdr)} 和 {cmd:svy} {cmd:sdr} 使用复现值与其平均值的偏差来计算方差。

{pstd}
"{bf:*}" 表示标准误差是使用 SDR 方差估计器的均方误差公式（MSE）计算的。这意味着您还指定了 {cmd:mse} 选项与 {cmd:svyset} 或 {cmd:svy} {cmd:sdr}。

{pstd}
有关 SDR 方法在方差（和标准误差）估计中的详细讨论，请参阅 {manlink SVY 方差估计}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sdr_mse.sthlp>}