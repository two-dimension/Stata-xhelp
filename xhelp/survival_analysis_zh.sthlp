{smcl}
{* *! version 1.2.11  15oct2018}{...}
{vieweralsosee "[ST] 生存分析" "mansection ST Survivalanalysis"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{viewerjumpto "描述" "survival analysis##description"}{...}
{viewerjumpto "PDF 文档链接" "survival_analysis_zh##linkspdf"}{...}
{viewerjumpto "参考文献" "survival analysis##reference"}
{help survival_analysis:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[ST] 生存分析} {hline 2}}生存分析简介{p_end}
{p2col:}({mansection ST Survivalanalysis:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}Stata 的生存分析程序用于计算样本大小、统计功效和效应大小，并声明、转换、操作、总结和分析生存数据。生存数据是事件发生时间的数据，生存分析充满了术语：截尾、删失、风险率等。请参见 {help st_glossary_zh:[ST] 术语表}。如需了解生存分析的专业 Stata 简介，请参见 {help survival analysis##CGM2016:Cleves, Gould 和 Marchenko (2016)}。

{pstd}
要学习如何有效地使用 Stata 分析生存分析数据，我们建议参加 NetCourse 631，{it:使用 Stata 的生存分析简介}；请参见 {browse "https://www.stata.com/netcourse/nc631.html":https://www.stata.com/netcourse/nc631.html}。

{pstd}
本手册中记录的所有命令如下所示，且在各自的手册条目中有详细描述。虽然大多数生存分析命令在此文档中有说明，但有些命令在其他手册中有记录。用于计算生存分析样本大小、功效和效应大小的命令记录在 {mansection PSS pssPower,Precision,andSampleSize:{it:Stata 功效、精度和样本大小参考手册}} 中，以及其他 {cmd:power} 命令。用于纵向或面板数据生存分析的命令与其他面板数据命令一起记录在 {mansection XT xtLongitudinalData/PanelData:{it:Stata 纵向数据/面板数据参考手册}} 中。多级生存分析的命令与其他多级命令一起记录在 {mansection ME meMultilevelMixedEffects:{it:Stata 多级混合效应参考手册}} 中。从观察性生存时间数据中估计处理效应的命令记录在 {mansection TE teTreatmentEffects:{it:Stata 处理效应参考手册}} 中。


    {title:声明和转换计数数据}

{p2colset 9 30 32 2}{...}
{p2col :{help ctset_zh}}声明数据为计数时间数据{p_end}
{p2col :{help cttost_zh}}将计数时间数据转换为生存时间数据{p_end}


    {title:转换快照数据}

{p2colset 9 30 32 2}{...}
{p2col :{help snapspan_zh}}将快照数据转换为时间跨度数据{p_end}


    {title:声明和总结生存时间数据}

{p2colset 9 30 32 2}{...}
{p2col :{help stset_zh}}声明数据为生存时间数据{p_end}
{p2col :{help stdescribe_zh}}描述生存时间数据{p_end}
{p2col :{help stsum_zh}}总结生存时间数据{p_end}


    {title:操作生存时间数据}

{p2colset 9 30 32 2}{...}
{p2col :{help stvary_zh}}报告随时间变化的变量{p_end}
{p2col :{help stfill_zh}}通过向前填充协变量的值来填充{p_end}
{p2col :{help stgen_zh}}生成反映整个历史的变量{p_end}
{p2col :{help stsplit_zh}}拆分时间跨度记录{p_end}
{p2col :{helpb stjoin}}合并时间跨度记录{p_end}
{p2col :{help stbase_zh}}形成基线数据集{p_end}


    {title:获取汇总统计、置信区间、表格等}

{p2colset 9 30 32 2}{...}
{p2col :{help sts_zh}}生成、绘制、列出并检验生存函数和累计风险函数{p_end}
{p2col :{help stir_zh}}报告发生率比较{p_end}
{p2col :{help stci_zh}}生存时间均值和百分位数的置信区间{p_end}
{p2col :{help strate_zh}}列出失败率{p_end}
{p2col :{help stptime_zh}}计算人时、发生率和 SMR{p_end}
{p2col :{helpb stmh}}使用 Mantel-Haenszel 方法计算比率比{p_end}
{p2col :{helpb stmc}}使用 Mantel-Cox 方法计算比率比{p_end}
{p2col :{help ltable_zh}}显示和绘制生命表{p_end}


    {title:拟合回归模型}

{p2col :{help stcox_zh}}Cox 比例风险模型{p_end}
{p2col :{helpb estat concordance}}计算一致性概率{p_end}
{p2col :{helpb estat phtest}}检验 Cox 比例风险假设{p_end}
{p2col :{helpb stphplot}}图形评估 Cox 比例风险假设{p_end}
{p2col :{helpb stcoxkm}}图形评估 Cox 比例风险假设{p_end}
{p2col :{help streg_zh}}参数生存模型{p_end}
{p2col :{help stintreg_zh}}间隔删失生存时间数据的参数模型{p_end}
{p2col :{helpb estat gofplot}}图形评估间隔删失数据模型的拟合优度{p_end}
{p2col :{help stcrreg_zh}}竞争风险回归{p_end}
{p2col :{help xtstreg_zh}}随机效应参数生存模型{p_end}
{p2col :{help mestreg_zh}}多级混合效应参数生存模型{p_end}
{p2col :{help stcurve_zh}}绘制生存、风险、累计风险或累计发生函数{p_end}
{p2col :{help stteffects_zh}}针对观察性生存时间数据的处理效应估计{p_end}
{p2col :{help fmm_streg_zh:fmm: streg}}参数生存模型的有限混合{p_end}
{p2col :{help bayes_streg_zh:bayes: streg}}贝叶斯参数生存模型{p_end}
{p2col :{help bayes_mestreg_zh:bayes: mestreg}}贝叶斯多级参数生存模型{p_end}


    {title:生存分析的样本大小和功效确定}

{p2col :{helpb power cox}}Cox 比例风险模型的样本大小、功效和效应大小{p_end}
{p2col :{helpb power exponential}}指数检验的样本大小和功效{p_end}
{p2col :{helpb power logrank}}Log-rank 检验的样本大小、功效和效应大小{p_end}


    {title:转换生存时间数据}

{p2col :{help sttocc_zh}}将生存时间数据转换为病例对照数据{p_end}
{p2col :{help sttoct_zh}}将生存时间数据转换为计数时间数据{p_end}


    {title:程序员工具}

{p2colset 9 30 32 2}{...}
{p2col :{help st_is_zh}}供程序员使用的生存分析子程序{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST SurvivalanalysisRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker reference}{...}
{title:参考文献} 

{marker CGM2016}{...}
{phang}Cleves, M. A., W. W. Gould 和 Y. V. Marchenko. 2016. 
{browse "https://www.stata-press.com/books/saus3.html":{it:使用 Stata 的生存分析简介}.} 
第三版修订版。德克萨斯州学院站：Stata Press.{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <survival_analysis.sthlp>}