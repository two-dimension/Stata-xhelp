{smcl}
{* *! version 1.1.8  20sep2018}{...}
{viewerdialog varwle "dialog varwle"}{...}
{vieweralsosee "[TS] varwle" "mansection TS varwle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] var svar" "help svar_zh"}{...}
{vieweralsosee "[TS] varbasic" "help varbasic_zh"}{...}
{viewerjumpto "Syntax" "varwle_zh##syntax"}{...}
{viewerjumpto "Menu" "varwle_zh##menu"}{...}
{viewerjumpto "Description" "varwle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "varwle_zh##linkspdf"}{...}
{viewerjumpto "Options" "varwle_zh##options"}{...}
{viewerjumpto "Examples" "varwle_zh##examples"}{...}
{viewerjumpto "Stored results" "varwle_zh##results"}
{help varwle:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[TS] varwle} {hline 2}}获取 Wald 滞后排斥统计量，适用于 var 或 svar{p_end}
{p2col:}({mansection TS varwle:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:varwle}
[{cmd:,}
{opt est:imates(estname)}
{opt sep:arator(#)}]

{p 4 6 2}
{opt varwle} 仅可在 {cmd:var} 或 {cmd:svar} 之后使用；请参阅
{help var_zh:[TS] var} 和 {help svar_zh:[TS] var svar}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量时间序列 > VAR 诊断与测试 >}
      {bf:Wald 滞后排斥统计量}


{marker description}{...}
{title:描述}

{pstd}
{opt varwle} 报告关于给定滞后期的内生变量在每个方程以及所有方程中共同为零的假设的 Wald 检验。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS varwleQuickstart:快速入门}

        {mansection TS varwleRemarksandexamples:备注与示例}

        {mansection TS varwleMethodsandformulas:方法与公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt estimates(estname)} 请求 {opt varwle} 使用先前获取的存储为 {it:estname} 的 {cmd:var} 或 {cmd:svar} 估计结果。 默认情况下，{opt varwle} 使用当前活动的估计结果。 请参阅 {manhelp estimates R} 以获取有关操作估计结果的信息。

{phang}
{opt separator(#)} 指定行之间应绘制分隔线的频率。 默认情况下，不会出现分隔线。例如，{cmd:separator(1)} 会在每行之间绘制一条线，{cmd:separator(2)} 在每隔一行之间绘制一条线，依此类推。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}{p_end}

{pstd}拟合向量自回归模型{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump if qtr<=tq(1978q4), dfk small}

{pstd}获取 {cmd:var} 之后的 Wald 滞后排斥统计量{p_end}
{phang2}{cmd:. varwle}{p_end}

{pstd}设置{p_end}
{phang2}{cmd:. matrix a = (.,0\.,.)}{p_end}
{phang2}{cmd:. matrix b = I(2)}{p_end}

{pstd}拟合结构向量自回归模型{p_end}
{phang2}{cmd:. svar dln_inc dln_consump, aeq(a) beq(b)}

{pstd}获取 {cmd:svar} 之后的 Wald 滞后排斥统计量{p_end}
{phang2}{cmd:. varwle}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:varwle} 在 {cmd:r()} 中存储以下内容：

{synoptset 10 tabbed}{...}
{p2col 5 10 14 2: 矩阵}{p_end}
{p2col 5 10 14 2: 如果 {cmd:e(small)==""}}{p_end}
{synopt:{cmd:r(chi2)}}卡方检验统计量{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}
{synopt:{cmd:r(p)}}p 值{p_end}

{p2col 5 10 14 2: 如果 {cmd:e(small)!=""}}{p_end}
{synopt:{cmd:r(F)}}F 检验统计量{p_end}
{synopt:{cmd:r(df_r)}}分子自由度{p_end}
{synopt:{cmd:r(df)}}分母自由度{p_end}
{synopt:{cmd:r(p)}}p 值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <varwle.sthlp>}