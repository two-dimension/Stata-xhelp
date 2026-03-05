{smcl}
{* *! version 1.1.8  20sep2018}{...}
{viewerdialog varnorm "dialog varnorm"}{...}
{vieweralsosee "[TS] varnorm" "mansection TS varnorm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] var svar" "help svar_zh"}{...}
{vieweralsosee "[TS] varbasic" "help varbasic_zh"}{...}
{viewerjumpto "Syntax" "varnorm_zh##syntax"}{...}
{viewerjumpto "Menu" "varnorm_zh##menu"}{...}
{viewerjumpto "Description" "varnorm_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "varnorm_zh##linkspdf"}{...}
{viewerjumpto "Options" "varnorm_zh##options"}{...}
{viewerjumpto "Examples" "varnorm_zh##examples"}{...}
{viewerjumpto "Stored results" "varnorm_zh##results"}
{help varnorm:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[TS] varnorm} {hline 2}}检验 VAR 或 SVAR 模型的扰动项是否符合正态分布{p_end}
{p2col:}({mansection TS varnorm:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:varnorm} [{cmd:,} {it:options}]

{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt:{opt j:bera}}报告 Jarque-Bera 统计量；默认报告所有三种统计量{p_end}
{synopt:{opt s:kewness}}报告偏度统计量；默认报告所有三种统计量{p_end}
{synopt:{opt k:urtosis}}报告峭度统计量；默认报告所有三种统计量{p_end}
{synopt:{opt est:imates(estname)}}使用先前存储的结果 {it:estname}；默认使用活动结果{p_end}
{synopt:{opt c:holesky}}使用 Cholesky 分解{p_end}
{synopt:{opt sep:arator(#)}}在每 {it:#} 行后绘制分隔线{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt varnorm} 仅可在 {cmd:var} 或 {cmd:svar} 之后使用；请参见 {help var_zh:[TS] var} 或 {help svar_zh:[TS]var svar}。
{p_end}
{p 4 6 2}
在使用 {opt varnorm} 之前，必须先 {cmd:tsset} 数据；请参见 {help tsset_zh:[TS] tsset}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > VAR 诊断与检验 >}
    {bf:检验扰动项是否符合正态分布}


{marker description}{...}
{title:描述}

{pstd}
{opt varnorm} 计算并报告一系列统计量，以检验 VAR 模型中的扰动项是否符合正态分布的零假设。对于每个方程，及所有方程联立，最多可以计算三种统计量：偏度统计量、峭度统计量和 Jarque-Bera 统计量。默认情况下，会报告所有三种统计量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS varnormQuickstart:快速开始}

        {mansection TS varnormRemarksandexamples:备注和示例}

        {mansection TS varnormMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt jbera}请求报告 Jarque-Bera 统计量和任何其他明确请求的统计量。默认情况下，报告 Jarque-Bera、偏度和峭度统计量。

{phang}
{opt skewness}请求报告偏度统计量和任何其他明确请求的统计量。默认情况下，报告 Jarque-Bera、偏度和峭度统计量。

{phang}
{opt kurtosis}指定报告峭度统计量和任何其他明确请求的统计量。默认情况下，报告 Jarque-Bera、偏度和峭度统计量。

{phang}
{opt estimates(estname)}指定 {opt varnorm} 使用存储为 {it:estname} 的先前获得的 {cmd:var} 或 {cmd:svar} 估计结果。默认情况下，{opt varnorm} 使用活动结果。有关操作估计结果的信息，请参见 {manhelp estimates R}。

{phang}
{opt cholesky}指定 {opt varnorm} 应使用扰动项估计的方差-协方差矩阵的 Cholesky 分解来对残差进行正交化，当 {opt varnorm} 应用于 {cmd:svar} 结果时。默认情况下，当 {opt varnorm} 应用于 {opt svar} 结果时，它使用估计的结构分解来正交化残差。当应用于 {opt var e()} 结果时，{opt varnorm} 始终使用扰动项的方差-协方差矩阵的 Cholesky 分解。因此，当使用 {cmd:var} 结果时，{opt cholesky} 选项不能指定。

{phang}
{opt separator(#)}指定每 {it:#} 行之间应绘制分隔线的频率。默认情况下，不绘制分隔线。例如，{cmd:separator(1)}将在每行之间绘制一条线，{cmd:separator(2)}将在每隔一行之间绘制一条线，依此类推。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}{p_end}

{pstd}拟合向量自回归模型{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump if qtr<=tq(1978q4)}{p_end}

{pstd}在 {cmd:var} 之后检验扰动项是否符合正态分布{p_end}
{phang2}{cmd:. varnorm}

{pstd}与上述相同，但仅报告偏度统计量{p_end}
{phang2}{cmd:. varnorm, skewness}

{pstd}设置{p_end}
{phang2}{cmd:. matrix A = (.,0,0\.,.,0\.,.,.)}{p_end}
{phang2}{cmd:. matrix B = I(3)}{p_end}

{pstd}拟合结构向量自回归模型{p_end}
{phang2}{cmd:. svar dln_inv dln_inc dln_consump if qtr<=tq(1978q4), dfk}
            {cmd:aeq(A) beq(B)}

{pstd}在 {cmd:svar} 之后检验扰动项是否符合正态分布{p_end}
{phang2}{cmd:. varnorm}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:varnorm} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(dfk)}}{cmd:dfk}，如果指定{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(kurtosis)}}峭度检验、自由度和 p 值{p_end}
{synopt:{cmd:r(skewness)}}偏度检验、自由度和 p 值{p_end}
{synopt:{cmd:r(jb)}}Jarque-Bera 检验、自由度和 p 值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <varnorm.sthlp>}