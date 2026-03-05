{smcl}
{* *! version 1.1.4  19oct2017}{...}
{* 本文件由 _coef_table.ado 生成的可点击输出获取}{...}
{vieweralsosee "[R] bootstrap" "help bootstrap_zh"}{...}
{vieweralsosee "[R] vce_option" "help vce_option_zh"}
{help bootstrap_mse:English Version}
{hline}{...}
{title:"Bstrap *" 的含义是什么？}

{pstd}
您的估计结果在标准误差列的表头中有 "{bf:Bstrap *}"。

{pstd}
"{bf:Bstrap *}" 中的 {bf:Bstrap} 表示使用了自助法重抽样方法计算标准误差。这意味着您在估计命令中指定了 {help vce_option_zh:vce(bootstrap)} 选项或使用 {help bootstrap_zh} 计算了估计结果。默认情况下，{cmd:vce(bootstrap)} 和 {cmd:bootstrap} 使用自助重复值与其均值的偏差来计算方差。

{pstd}
"{bf:Bstrap *}" 中的 {bf:*} 表示标准误差是使用自助方差估计的均方误差（MSE）公式计算的。这意味着您指定了 {cmd:vce(bootstrap, mse)} 或 {cmd:bootstrap} 的 {cmd:mse} 选项。

{pstd}
有关方差（和标准误差）估计的自助法重抽样方法的详细讨论，请参阅 {manlink R bootstrap}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bootstrap_mse.sthlp>}