{smcl}
{* *! version 1.1.6  19oct2017}{...}
{viewerdialog vecnorm "dialog vecnorm"}{...}
{vieweralsosee "[TS] vecnorm" "mansection TS vecnorm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] varnorm" "help varnorm_zh"}{...}
{vieweralsosee "[TS] vec" "help vec_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "Syntax" "vecnorm_zh##syntax"}{...}
{viewerjumpto "Menu" "vecnorm_zh##menu"}{...}
{viewerjumpto "Description" "vecnorm_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "vecnorm_zh##linkspdf"}{...}
{viewerjumpto "Options" "vecnorm_zh##options"}{...}
{viewerjumpto "Examples" "vecnorm_zh##examples"}{...}
{viewerjumpto "Stored results" "vecnorm_zh##results"}
{help vecnorm:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[TS] vecnorm} {hline 2}}检验 vec 之后的正态分布扰动{p_end}
{p2col:}({mansection TS vecnorm:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}
{cmd:vecnorm} [{cmd:,} {it:选项}]

{synoptset}{...}
{synopthdr}
{synoptline}
{synopt :{opt j:bera}}报告 Jarque-Bera 统计量；默认报告所有
  三个统计量{p_end}
{synopt :{opt s:kewness}}报告偏斜度统计量；默认报告所有
  三个统计量{p_end}
{synopt :{opt k:urtosis}}报告峰度统计量；默认报告所有
  三个统计量{p_end}
{synopt :{opt est:imates(estname)}}使用之前存储的 {it:estname} 结果；
  默认使用当前结果{p_end}
{synopt :{opt dfk}}在计算扰动的估计方差-协方差矩阵时做小样本调整{p_end}
{synopt :{opt sep:arator(#)}}在每 {it:#} 行后绘制分隔线{p_end}
{synoptline}
{p 4 6 2}{cmd:vecnorm} 仅可在 {cmd:vec} 之后使用；见
{help vec_zh:[TS] vec}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > VEC 诊断和检验 >}
      {bf:检验正态分布的扰动}


{marker description}{...}
{title:描述}

{pstd}
{cmd:vecnorm} 计算并报告一系列统计量，以验证 VECM 中的扰动是否
正态分布的零假设。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS vecnormQuickstart:快速入门}

        {mansection TS vecnormRemarksandexamples:备注和示例}

        {mansection TS vecnormMethodsandformulas:方法与公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt jbera}请求报告 Jarque-Bera 统计量和任何其他显式
要求的统计量。默认报告 Jarque-Bera、偏斜度和
峰度统计量。

{phang}
{opt skewness}请求报告偏斜度统计量和任何其他显式
要求的统计量。默认报告 Jarque-Bera、偏斜度和
峰度统计量。

{phang}
{opt kurtosis}请求报告峰度统计量和任何其他显式
要求的统计量。默认报告 Jarque-Bera、偏斜度和
峰度统计量。

{phang}
{opt estimates(estname)}请求 {cmd:vecnorm} 使用之前获得的
{cmd:vec} 估计，并将其存储为 {it:estname}。默认情况下，
{cmd:vecnorm} 使用当前结果。有关操作估计结果的更多信息，请参见
{manhelp estimates R}。

{phang} 
{opt dfk}请求在计算扰动的估计方差-协方差矩阵时进行小样本调整。

{phang}
{opt separator(#)}指定分隔线之间表格中应出现多少行。默认情况下，
不出现分隔线。例如， {cmd:separator(1)}将在每行之间画一条线，
{cmd:separator(2)}将在每隔一行之间画一条线，依此类推。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rdinc}{p_end}

{pstd}拟合向量误差修正模型{p_end}
{phang2}{cmd:. vec ln_ne ln_se}{p_end}

{pstd}检验 {cmd:vec} 后的正态分布扰动{p_end}
{phang2}{cmd:. vecnorm}{p_end}

{pstd}与上述相同，但仅报告偏斜度和峰度统计量{p_end}
{phang2}{cmd:. vecnorm, skewness kurtosis}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:vecnorm} 把以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(dfk)}}{cmd:dfk}，如果指定的话{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(jb)}}Jarque-Bera 卡方、自由度和 p 值{p_end}
{synopt:{cmd:r(skewness)}}偏斜度卡方、自由度和 p 值{p_end}
{synopt:{cmd:r(kurtosis)}}峰度卡方、自由度和 p 值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <vecnorm.sthlp>}