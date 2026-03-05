{smcl}
{* *! version 1.0.13  25sep2018}{...}
{viewerdialog estat "dialog sem_estat, message(-gof-) name(sem_estat_gof)"}{...}
{vieweralsosee "[SEM] estat gof" "mansection SEM estatgof"}{...}
{findalias assemgof}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] sem postestimation" "help sem postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] estat eqgof" "help sem_estat_eqgof_zh"}{...}
{vieweralsosee "[SEM] estat ggof" "help sem_estat_ggof_zh"}{...}
{vieweralsosee "[SEM] estat residuals" "help sem_estat_residuals_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estat ic" "help estat ic"}{...}
{viewerjumpto "Syntax" "sem_estat_gof_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_estat_gof_zh##menu"}{...}
{viewerjumpto "Description" "sem_estat_gof_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_estat_gof_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_estat_gof_zh##options"}{...}
{viewerjumpto "Remarks" "sem_estat_gof_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_estat_gof_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_estat_gof_zh##results"}{...}
{viewerjumpto "References" "sem_estat_gof_zh##references"}
{help sem_estat_gof:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[SEM] estat gof} {hline 2}}拟合优度统计量{p_end}
{p2col:}({mansection SEM estatgof:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmdab:gof} [{cmd:,} {it:options}]

{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt:{opt st:ats(statlist)}}要显示的统计量{p_end}
{synopt:{opt nodes:cribe}}抑制统计量的描述{p_end}
{synoptline}

{marker statlist}{...}
{synoptset 20}{...}
{synopthdr:statlist}
{synoptline}
{synopt:{opt chi2}}卡方检验；默认选项{p_end}
{synopt:{opt rms:ea}}近似的均方根误差{p_end}
{synopt:{opt ic}}信息指标{p_end}
{synopt:{opt ind:ices}}与基线比较的指标{p_end}
{synopt:{opt res:iduals}}基于残差的度量{p_end}
{synopt:{cmd:all}}以上所有{p_end}
{synoptline}
{p2colreset}{...}

{phang}
注意：{cmd:chi2}、{cmd:rmsea} 和 {cmd:indices} 报告的统计量依赖于观察变量的联合正态性假设。如果在 {cmd:sem} 中指定了 {cmd:vce(sbentler)}，则会报告通过 Satorra-Bentler 标度卡方统计量计算的这些统计量的修正版本。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程模型） > 拟合优度 > 整体拟合优度}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat gof} 在 {cmd:sem} 后使用，但不适用于 {cmd:gsem}。

{pstd}
{cmd:estat gof} 显示各种整体拟合优度统计量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM estatgofRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}{opth stats:(sem_estat_gof##statlist:statlist)}
指定要显示的统计量。默认选项为 {cmd:stats(chi2)}。

{phang2}{cmd:stats(chi2)}
报告模型与饱和模型的检验及基线与饱和模型的检验。
饱和模型是完全拟合协方差的模型。

{pmore2}
模型与饱和模型的检验为 {cmd:sem} 输出底部报告的检验的重复。

{pmore2}
在基线与饱和模型的检验中，基线模型包括所有观察变量的均值和方差，以及所有观察外生变量的协方差。对于协方差模型（没有内生变量的模型），基线只包括观察变量的均值和方差。请注意，不同作者对基线模型的定义不同。

{phang2}{cmd:stats(rmsea)}
报告近似的均方根误差（RMSEA）及其 90% 置信区间，以及闭合的 p 值，即 RMSEA < 0.05。大多数解读该检验的专家会将下限在 0.05 以下的拟合标记为“接近”，而将上限在 0.10 以上的拟合标记为“差”。参见 {help sem_estat_gof##Browne1993:Browne 和 Cudeck（1993）}。

{phang2}{cmd:stats(ic)}
报告赤池信息量准则（AIC）和贝叶斯（或施瓦茨）信息量准则（BIC）。这些统计量仅在使用 {cmd:sem} {cmd:method(ml)} 或 {cmd:method(mlmv)} 进行估计后可用。这些统计量不是用于绝对拟合的判断，而是用于比较不同模型的拟合。较小的值表示较好的拟合。请注意，有许多变体（小调整）被标记为 AIC 和 BIC 的统计量。此处报告的统计量与 {cmd:estat ic} 匹配；请参见 {help estat_zh:[R] estat}。

{pmore2}要比较模型，请使用基于似然的统计量，如 AIC 和 BIC，模型应包括相同的变量；参见 {helpb sem lrtest:[SEM] lrtest}。参见 {help sem_estat_gof##Akaike1987:Akaike (1987)}，{help sem_estat_gof##Schwarz1978:Schwarz (1978)}，和 {help sem_estat_gof##Raftery1993:Raftery (1993)}。

{phang2}{cmd:stats(indices)}
报告 CFI 和 TLI，这两个指标的值接近 1 表示良好的拟合。CFI 代表比较拟合指数。TLI 代表 Tucker-Lewis 指数，也称为非正规拟合指数。参见 {help sem_estat_gof##Bentler1990:Bentler（1990）}。

{phang2}{cmd:stats(residuals)}
报告标准化均方根残差（SRMR）和决定系数（CD）。

{pmore2}
完美拟合对应 SRMR 为 0。小的值被视为良好的拟合，有些人认为其限度为 0.08。

{pmore2}
关于 CD，完美拟合对应 CD 为 1。CD 类似于整个模型的 R 平方。

{phang2}{cmd:stats(all)}
报告所有统计量。你也可以指定仅希望报告的统计量，例如 

{phang3}{cmd:. estat gof, stats(indices residuals)}

{phang}{opt nodescribe}
抑制拟合优度度量的描述。


{marker remarks}{...}
{title:备注}

{pstd}
参见 {findalias semgof}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_2fmm}{p_end}
{phang2}{cmd:. sem (Affective -> a1 a2 a3 a4 a5) (Cognitive -> c1 c2 c3 c4 c5)}{p_end}

{pstd}显示所有拟合优度统计量{p_end}
{phang2}{cmd:. estat gof, stats(all)}{p_end}

{pstd}抑制统计量的描述{p_end}
{phang2}{cmd:. estat gof, stats(all) nodescribe}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat gof} 将以下内容存储在 {cmd:r()} 中：

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 标量}{p_end}
{synopt:{cmd:r(chi2_ms)}}目标模型与饱和模型的检验{p_end}
{synopt:{cmd:r(df_ms)}}{cmd:r(chi2_ms)} 的自由度{p_end}
{synopt:{cmd:r(p_ms)}}{cmd:r(chi2_ms)} 的 p 值{p_end}
{synopt:{cmd:r(chi2sb_ms)}}目标模型与饱和模型的 Satorra-Bentler 标度检验{p_end}
{synopt:{cmd:r(psb_ms)}}{cmd:r(chi2sb_ms)} 的 p 值{p_end}
{synopt:{cmd:r(chi2_bs)}}基线模型与饱和模型的检验{p_end}
{synopt:{cmd:r(df_bs)}}{cmd:r(chi2_bs)} 的自由度{p_end}
{synopt:{cmd:r(p_bs)}}{cmd:r(chi2_bs)} 的 p 值{p_end}
{synopt:{cmd:r(chi2sb_bs)}}基线模型与饱和模型的 Satorra-Bentler 标度检验{p_end}
{synopt:{cmd:r(psb_bs)}}{cmd:r(chi2sb_bs)} 的 p 值{p_end}
{synopt:{cmd:r(rmsea)}}近似的均方根误差{p_end}
{synopt:{cmd:r(lb90_rmsea)}}RMSEA 的 90% CI 下限{p_end}
{synopt:{cmd:r(ub90_rmsea)}}RMSEA 的 90% CI 上限{p_end}
{synopt:{cmd:r(pclose)}}闭合拟合检验的 p 值：RMSEA < 0.05{p_end}
{synopt:{cmd:r(rmsea_sb)}}使用 Satorra-Bentler 卡方的 RMSEA{p_end}
{synopt:{cmd:r(aic)}}赤池信息量准则{p_end}
{synopt:{cmd:r(bic)}}贝叶斯信息量准则{p_end}
{synopt:{cmd:r(cfi)}}比较拟合指数{p_end}
{synopt:{cmd:r(cfi_sb)}}使用 Satorra-Bentler 卡方的 CFI{p_end}
{synopt:{cmd:r(tli)}}Tucker-Lewis 拟合指数{p_end}
{synopt:{cmd:r(tli_sb)}}使用 Satorra-Bentler 卡方的 TLI{p_end}
{synopt:{cmd:r(cd)}}决定系数{p_end}
{synopt:{cmd:r(srmr)}}标准化均方根残差{p_end}
{synopt:{cmd:r(N_groups)}}组数{p_end}

{p2col 5 18 22 2: 矩阵}{p_end}
{synopt:{cmd:r(nobs)}}每组的样本大小{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker Akaike1987}{...}
{phang}
Akaike, H.  1987.  因子分析与 AIC.  {it:心理测量学} 52: 317-332.

{marker Bentler1990}{...}
{phang}
Bentler, P. M.  1990.  结构模型中的比较拟合指数.  
{it:心理学公报} 107: 238-246.

{marker Browne1993}{...}
{phang}
Browne, M. W. 和 R. Cudeck.  1993.  评估模型拟合的替代方法.
重印于 {it:测试结构方程模型},
编：K. A. Bollen 和 J. S. Long, 136-162.  新贝里公园，CA：Sage.

{marker Raftery1993}{...}
{phang}
Raftery, A. E.  1993.  结构方程模型中的贝叶斯模型选择.
重印于 {it:测试结构方程模型},
编：K. A. Bollen 和 J. S. Long, 163-180.  新贝里公园，CA：Sage.

{marker Schwarz1978}{...}
{phang}
Schwarz, G. 1978.  模型维度的估计.  
{it:统计年鉴} 6: 461-464.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estat_gof.sthlp>}