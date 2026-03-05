{smcl}
{* *! version 1.1.10  20sep2018}{...}
{viewerdialog varbasic "dialog varbasic"}{...}
{vieweralsosee "[TS] varbasic" "mansection TS varbasic"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] varbasic postestimation" "help varbasic postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] var svar" "help svar_zh"}{...}
{viewerjumpto "Syntax" "varbasic_zh##syntax"}{...}
{viewerjumpto "Menu" "varbasic_zh##menu"}{...}
{viewerjumpto "Description" "varbasic_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "varbasic_zh##linkspdf"}{...}
{viewerjumpto "Options" "varbasic_zh##options"}{...}
{viewerjumpto "Examples" "varbasic_zh##examples"}{...}
{viewerjumpto "Stored results" "varbasic_zh##results"}
{help varbasic:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[TS] varbasic} {hline 2}}拟合简单VAR模型并绘制IRF和FEVD图{p_end}
{p2col:}({mansection TS varbasic:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:varbasic}
{depvarlist}
{ifin}
[{cmd:,} {it:选项}]

{synoptset 17 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opth la:gs(numlist)}}在模型中使用{it:numlist}滞后；默认值为{cmd:lags(1 2)}
{p_end}
{synopt:{opt i:rf}}生成IRFs的矩阵图{p_end}
{synopt:{opt f:evd}}生成FEVDs的矩阵图{p_end}
{synopt:{opt nog:raph}}不生成图形{p_end}
{synopt:{opt s:tep(#)}}设置估计OIRFs、IRFs和FEVDs的预测区间{it:#}；默认值为{cmd:step(8)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用{opt varbasic}之前，您必须{cmd:tsset}您的数据；请参阅{help tsset_zh:[TS] tsset}.{p_end}
{p 4 6 2}
{it:depvarlist}可以包含时间序列操作符；请参阅{help tsvarlist_zh}.{p_end}
{p 4 6 2}
允许使用{opt rolling}、{opt statsby}和{cmd:xi}；请参阅{help prefix_zh}.{p_end}
{p 4 6 2}有关估计后可用功能，请参阅{manhelp varbasic_postestimation TS:varbasic postestimation}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > 基本VAR}


{marker description}{...}
{title:描述}

{pstd}
{opt varbasic}拟合基本的向量自回归（VAR）模型，并绘制脉冲响应函数（IRFs）、正交脉冲响应函数（OIRFs）或预测误差方差分解（FEVDs）图。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS varbasicQuickstart:快速入门}

        {mansection TS varbasicRemarksandexamples:备注与示例}

        {mansection TS varbasicMethodsandformulas:方法与公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt lags(numlist)}指定要包含在模型中的滞后。默认值为{cmd:lags(1 2)}。该选项需要一个numlist，而不仅仅是最大滞后的整数。例如，{cmd:lags(2)}仅包括模型中的第二个滞后，而{cmd:lags(1/2)}将包含模型中的第一个和第二个滞后。
有关numlists和滞后的更多讨论，请参见{it:{help numlist_zh}}和{help tsvarlist_zh}。

{phang}
{opt irf}使得{opt varbasic}生成IRFs的矩阵图，而非默认生成的OIRFs的矩阵图。

{phang}
{opt fevd}使得{opt varbasic}生成FEVDs的矩阵图，而非默认生成的OIRFs的矩阵图。

{phang}
{opt nograph}指定不生成图形。IRFs、OIRFs和FEVDs仍会被估计并保存在IRF文件{opt _varbasic.irf}中。

{phang}
{opt step(#)}指定估计IRFs、OIRFs和FEVDs的预测区间。默认值为八个周期。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}

{pstd}拟合VAR模型并绘制OIRFs{p_end}
{phang2}{cmd:. varbasic dln_inv dln_inc dln_consump}{p_end}

{pstd}与上述相同，但限制在指定时间段内{p_end}
{phang2}{cmd:. varbasic dln_inv dln_inc dln_consump if qtr<=tq(1978q4)}{p_end}

{pstd}与上述相同，但使用10作为预测区间{p_end}
{phang2}{cmd:. varbasic dln_inv dln_inc dln_consump if qtr<=tq(1978q4),}
              {cmd:step(10)}{p_end}

{pstd}拟合VAR模型并绘制IRFs{p_end}
{phang2}{cmd:. varbasic dln_inv dln_inc dln_consump if qtr<=tq(1978q4),}
              {cmd:irf}{p_end}

{pstd}与上述相同，但在模型中包含第一个、第二个和第三个滞后{p_end}
{phang2}{cmd:. varbasic dln_inv dln_inc dln_consump if qtr<=tq(1978q4),}
              {cmd:irf lags(1/3)}{p_end}

{pstd}拟合VAR模型并绘制FEVDs{p_end}
{phang2}{cmd:. varbasic dln_inv dln_inc dln_consump if qtr<=tq(1978q4),}
              {cmd:fevd}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
请参见{it:{help var##results:存储结果}}在{manhelp var TS}中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <varbasic.sthlp>}