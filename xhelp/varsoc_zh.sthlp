{smcl}
{* *! version 1.2.5  20sep2018}{...}
{viewerdialog "varsoc (preestimation)" "dialog varsoc"}{...}
{viewerdialog "varsoc (postestimation)" "dialog varsoc_post"}{...}
{vieweralsosee "[TS] varsoc" "mansection TS varsoc"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] var svar" "help svar_zh"}{...}
{vieweralsosee "[TS] varbasic" "help varbasic_zh"}{...}
{vieweralsosee "[TS] vec" "help vec_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "Syntax" "varsoc_zh##syntax"}{...}
{viewerjumpto "Menu" "varsoc_zh##menu"}{...}
{viewerjumpto "Description" "varsoc_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "varsoc_zh##linkspdf"}{...}
{viewerjumpto "Preestimation options" "varsoc_zh##pre_options"}{...}
{viewerjumpto "Postestimation option" "varsoc_zh##post_option"}{...}
{viewerjumpto "Examples" "varsoc_zh##examples"}{...}
{viewerjumpto "Stored results" "varsoc_zh##results"}{...}
{viewerjumpto "Reference" "varsoc_zh##reference"}
{help varsoc:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[TS] varsoc} {hline 2}}获取 VAR 和 VECM 的滞后阶数选择统计量 {p_end}
{p2col:}({mansection TS varsoc:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
    预估语法

{p 8 15 2}
{cmd:varsoc}
{depvarlist}
{ifin}
[{cmd:,} {it:preestimation_options}]


{pstd}
    后估语法

{p 8 15 2}
{cmd:varsoc}
[{cmd:,} {opt est:imates(estname)}]


{synoptset 28 tabbed}{...}
{synopthdr:预估选项}
{synoptline}
{syntab:主要}
{synopt:{opt m:axlag(#)}}设置最大滞后阶数为 {it:#}; 默认值为 {cmd:maxlag(4)}{p_end}
{synopt:{opth ex:og(varlist)}}使用 {it:varlist} 作为外生变量{p_end}
{synopt:{opt const:raints(constraints)}}对外生变量应用约束{p_end}
{synopt:{opt nocons:tant}}抑制常数项{p_end}
{synopt:{opt lut:stats}}使用 L{c u:}tkepohl 的信息准则版本{p_end}
{synopt:{opt l:evel(#)}}设置置信水平; 默认值为 {cmd:level(95)}{p_end}
{synopt:{opt sep:arator(#)}}每 {it:#} 行后画分隔线{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}使用 {cmd:varsoc} 前必须先 {cmd:tsset} 数据；请参阅
{help tsset_zh:[TS] tsset}.{p_end}
{p 4 6 2}
{opt by} 允许在 {cmd:varsoc} 的预估版本中使用；请参阅
{help prefix_zh}.{p_end}


{marker menu}{...}
{title:菜单}

    {title:VARs 的预估}

{phang2}
{bf:统计 > 多变量时间序列 > VAR 诊断和测试 >}
     {bf:滞后阶数选择统计量（预估）}

    {title:VARs 的后估}

{phang2}
{bf:统计 > 多变量时间序列 > VAR 诊断和测试 >}
      {bf:滞后阶数选择统计量（后估）}

    {title:VECMs 的预估}

{phang2}
{bf:统计 > 多变量时间序列 > VEC 诊断和测试 >}
     {bf:滞后阶数选择统计量（预估）}

    {title:VECMs 的后估}

{phang2}
{bf:统计 > 多变量时间序列 > VEC 诊断和测试 >}
      {bf:滞后阶数选择统计量（后估）}


{marker description}{...}
{title:描述}

{pstd}
{opt varsoc} 报告最终预测误差 (FPE)、赤池信息准则 (AIC)、施瓦兹的贝叶斯信息准则 (SBIC) 和汉南和奎因信息准则 (HQIC) 滞后阶数选择统计量，适用于一系列的向量自回归模型，阶数为 1 直到请求的最大滞后。还报告了所有滞后阶数小于或等于最高滞后阶数的完整 VAR 的似然比检验统计量的序列。

{pstd}
{cmd:varsoc} 可以作为预估或后估命令使用。预估版本可用于选择 VAR 或向量误差修正模型 (VECM) 的滞后阶数。后估版本获取计算统计量所需的信息，来源于先前模型或指定的储存估计结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS varsocQuickstart:快速开始}

        {mansection TS varsocRemarksandexamples:备注和示例}

        {mansection TS varsocMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker pre_options}{...}
{title:预估选项}

{dlgtab:主要}

{phang}
{opt maxlag(#)} 指定获取统计量的最大滞后阶数。

{phang}
{opth exog(varlist)} 指定在 {opt varsoc} 拟合的 VAR 中包含的外生变量。

{phang}
{opt constraints(constraints)} 指定施加于外生变量的约束列表。不要对内生变量的滞后指定约束，因为指定一个将意味着 {opt varsoc} 考虑的至少一个 VAR 模型将不包含约束中指定的滞后。直接使用 {cmd:var} 获取带有内生变量滞后约束的选择阶数标准。

{phang}
{opt noconstant} 抑制模型的常数项。默认情况下，包括常数项。

{phang}
{opt lutstats} 指定报告 {help varsoc##L2005:L{c u:}tkepohl (2005)} 版本的信息准则。请参阅 {it:{mansection TS varsocMethodsandformulas:方法和公式}} 中的详细说明。

{phang}
{opt level(#)} 指定置信水平（以百分比表示），用于确定首次拒绝零假设的似然比检验，此假设是增加一个滞后的附加参数是共同为零的。默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置。

{phang}
{opt separator(#)} 指定行之间应画分隔线的频率。默认情况下，不出现分隔线。例如，{cmd:separator(1)} 将在每行之间画线，{cmd:separator(2)} 将在每隔一行之间画线，依此类推。


{marker post_option}{...}
{title:后估选项}

{phang}
{opt estimates(estname)} 指定先前储存的一组 {cmd:var} 或 {cmd:svar} 估计的名称。当未指定 {depvarlist} 时，{opt varsoc} 使用后估语法，并使用当前活动的估计结果或在 {opt estimates(estname)} 中指定的结果。有关操作估计结果的信息，请参见 {manhelp estimates R}。


{marker examples}{...}
{title:示例}

{pstd}准备{p_end}
{phang2}{cmd:. webuse lutkepohl2}

{pstd}预估 {cmd:varsoc}，用于选择 VAR 或 VECM 的滞后阶数{p_end}
{phang2}{cmd:. varsoc dln_inv dln_inc dln_consump}

{pstd}与上述相同，但报告 L{c u:}tkepohl 版本的信息准则{p_end}
{phang2}{cmd:. varsoc dln_inv dln_inc dln_consump, lutstats}

{pstd}拟合向量自回归模型{p_end}
{phang2}{cmd:. var dln_inc dln_consump if qtr<=tq(1978q4), exog(l.dln_inv)}
{p_end}

{pstd}后估 {cmd:varsoc}{p_end}
{phang2}{cmd:. varsoc}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:varsoc} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测值数量{p_end}
{synopt:{cmd:r(tmax)}}样本中最后一个时间段{p_end}
{synopt:{cmd:r(tmin)}}样本中第一个时间段{p_end}
{synopt:{cmd:r(mlag)}}最大滞后阶数{p_end}
{synopt:{cmd:r(N_gaps)}}样本中的缺口数量{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(endog)}}内生变量的名称{p_end}
{synopt:{cmd:r(lutstats)}}{cmd:lutstats}（如果指定）{p_end}
{synopt:{cmd:r(cns}{it:#}{cmd:)}}第 {it:#} 个约束{p_end}
{synopt:{cmd:r(exog)}}外生变量的名称{p_end}
{synopt:{cmd:r(rmlutstats)}}{cmd:rmlutstats}（如果指定）{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(stats)}}LL、LR、FPE、AIC、HQIC、SBIC 和 p 值{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考}

{marker L2005}{...}
{phang}
L{c u:}tkepohl, H. 2005. 
{browse "http://www.stata.com/bookstore/imtsa.html":{it:新多变量时间序列分析导论}}.
纽约：Springer.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <varsoc.sthlp>}