{smcl}
{* *! version 1.1.4  14may2018}{...}
{* 该文件来源于 _coef_table.ado 产生的可点击输出}{...}
{vieweralsosee "[SVY] svy brr" "help svy_brr_zh"}
{help brr_mse:English Version}
{hline}{...}
{title:"BRR *" 的意思是什么？}

{pstd}
您的估计结果在标准误差列上方的表头中有 "{bf:BRR *}"。

{pstd}
"{bf:BRR}" 表示标准误差是使用 {ul:b}alanced {ul:r}epeated {ul:r}eplication 方法计算的。这意味着您指定了 {cmd:vce(brr)} 选项通过 {help svyset_zh} 或使用 {helpb svy brr} 计算了估计结果。默认情况下，{cmd:vce(brr)} 和 {cmd:svy} {cmd:brr} 通过复制样本的偏差与其均值的差异来计算方差。

{pstd}
"{bf:*}" 表示标准误差是使用 BRR 方差估计器的均方误差公式 (MSE) 计算的。这意味着您还在 {cmd:svyset} 或 {cmd:svy} {cmd:brr} 中指定了 {cmd:mse} 选项。

{pstd}
有关 BRR 方法在方差（和标准误差）估计中的详细讨论，请参见 {manlink SVY Variance estimation}。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <brr_mse.sthlp>}