{smcl}
{* *! version 1.1.8  20sep2018}{...}
{viewerdialog vargranger "dialog vargranger"}{...}
{vieweralsosee "[TS] vargranger" "mansection TS vargranger"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] var svar" "help svar_zh"}{...}
{vieweralsosee "[TS] varbasic" "help varbasic_zh"}{...}
{viewerjumpto "Syntax" "vargranger_zh##syntax"}{...}
{viewerjumpto "Menu" "vargranger_zh##menu"}{...}
{viewerjumpto "Description" "vargranger_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "vargranger_zh##linkspdf"}{...}
{viewerjumpto "Options" "vargranger_zh##options"}{...}
{viewerjumpto "Examples" "vargranger_zh##examples"}{...}
{viewerjumpto "Stored results" "vargranger_zh##results"}
{help vargranger:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[TS] vargranger} {hline 2}}对 var 或 svar 进行成对 Granger 因果测试 {p_end}
{p2col:}({mansection TS vargranger:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:vargranger}
[{cmd:,}
{opt est:imates(estname)}
{opt sep:arator(#)}]

{p 4 6 2}
{opt vargranger} 只能在 {cmd:var} 或 {cmd:svar} 之后使用；
请参见 {help var_zh:[TS] var} 或 {help svar_zh:[TS] var svar}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > VAR 诊断与测试 >}
     {bf:Granger 因果测试}


{marker description}{...}
{title:描述}

{pstd}
{opt vargranger} 对 VAR 中的每个方程执行一组 Granger 因果测试，提供了一个方便的替代方法来执行 {help test_zh}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS vargrangerQuickstart:快速入门}

        {mansection TS vargrangerRemarksandexamples:备注和示例}

        {mansection TS vargrangerMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在本帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt estimates(estname)} 请求 {opt vargranger} 使用先前获得的 {opt var} 或 {opt svar} 估计集，存储为 {it:estname}。 默认情况下，{opt vargranger} 使用活动结果。
有关操作估计结果的信息，请参见 {manhelp estimates R}。

{phang}
{opt separator(#)} 指定在行之间应绘制分隔线的频率。 默认情况下，分隔线每 K 行出现一次，其中 K 是正在分析的 VAR 中的方程数。例如，{cmd:separator(1)} 会在每行之间绘制一条线，{cmd:separator(2)} 在每隔一行之间绘制一条线，依此类推。
{cmd:separator(0)} 指定不在表中出现线。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}{p_end}
{phang2}{cmd:. tsset}{p_end}

{pstd}拟合一个向量自回归（VAR）模型{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump if qtr<=tq(1978q4)}{p_end}

{pstd}将估计结果存储在 {cmd:basic}{p_end}
{phang2}{cmd:. estimates store basic}{p_end}

{pstd}拟合第二个 VAR 模型{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump if qtr<=tq(1978q4), lags(1/3)}
                {cmd:dfk small}

{pstd}对第二个 VAR 模型执行成对 Granger 因果测试{p_end}
{phang2}{cmd:. vargranger}{p_end}

{pstd}对第一个 VAR 模型执行成对 Granger 因果测试{p_end}
{phang2}{cmd:. vargranger, estimates(basic)}{p_end}

{pstd}设置{p_end}
{phang2}{cmd:. matrix A = (.,0,0\.,.,0\.,.,.)}{p_end}
{phang2}{cmd:. matrix B = I(3)}{p_end}

{pstd}拟合一个结构性向量自回归（SVAR）模型{p_end}
{phang2}{cmd:. svar dln_inv dln_inc dln_consump if qtr<=tq(1978q4),}
                {cmd:dfk small aeq(A) beq(B)}

{pstd}在 SVAR 模型之后进行成对 Granger 因果测试{p_end}
{phang2}{cmd:. vargranger}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:vargranger} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(gstats)}}卡方、自由度和 p 值（如果 {cmd:e(small)==""}）{p_end}
{synopt:{cmd:r(gstats)}}F 值、自由度、残差自由度和 p 值（如果 {cmd:e(small)!==""}）{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <vargranger.sthlp>}