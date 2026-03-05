{smcl}
{* *! version 1.0.4  18apr2011}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{vieweralsosee "[MI] mi estimate using" "help mi_estimate using"}
{help mi_missingdf:English Version}
{hline}{...}
{title:残差自由度报告为缺失}

{pstd}
个体或模型的残差自由度被报告为缺失。当由于非响应导致的估计（平均）相对方差增加接近于零（缺失的比例很低）时，会出现此情况，从而使得自由度接近于无穷大。在这种情况下，使用正态分布计算报告的 t 检验的显著性水平，并且使用卡方分布计算 F 检验的显著性水平。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_missingdf.sthlp>}