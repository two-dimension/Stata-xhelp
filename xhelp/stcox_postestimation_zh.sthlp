{smcl}
{* *! version 2.3.9  15jan2019}{...}
{viewerdialog predict "dialog stcox_p"}{...}
{viewerdialog estat "dialog stcox_estat"}{...}
{viewerdialog stcoxkm "dialog stcoxkm"}{...}
{viewerdialog stcurve "dialog stcurve"}{...}
{viewerdialog stphplot "dialog stphplot"}{...}
{vieweralsosee "[ST] stcox postestimation" "mansection ST stcoxpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stcox" "help stcox_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stcox PH-assumption tests" "help stcox_diagnostics_zh"}{...}
{vieweralsosee "[ST] stcurve" "help stcurve_zh"}{...}
{viewerjumpto "Postestimation commands" "stcox postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "stcox_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "stcox postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "stcox postestimation##syntax_margins"}{...}
{viewerjumpto "estat" "stcox postestimation##syntax_estat_con"}{...}
{viewerjumpto "Examples" "stcox postestimation##examples"}{...}
{viewerjumpto "Stored results" "stcox postestimation##results"}
{help stcox_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[ST] stcox postestimation} {hline 2}}stcox 后的事后估计工具{p_end}
{p2col:}({mansection ST stcoxpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:事后估计命令}

{pstd}
以下事后估计命令在 {cmd:stcox} 之后特别重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb stcox postestimation##estatcon:estat concordance}}计算一致性概率{p_end}
{synopt :{helpb stcox diagnostics:estat phtest}}测试比例风险假设{p_end}
{synopt :{helpb stcox diagnostics:stcoxkm}}绘制 Kaplan-Meier 观察生存曲线和 Cox 预测曲线{p_end}
{synopt :{help stcurve_zh}}绘制生存、风险和累积风险函数{p_end}
{synopt :{helpb stcox diagnostics:stphplot}}绘制 -ln{-ln(生存)} 曲线{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{cmd:estat} {cmd:concordance} 在使用 {cmd:svy} 进行估计之后不适用。
{p_end}


{pstd}
以下标准事后估计命令也可用：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_hausman_star
INCLUDE help post_lincom
INCLUDE help post_linktest
INCLUDE help post_lrtest_star
{synopt:{helpb stcox_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{p2col :{helpb stcox postestimation##predict:predict}}预测、残差、影响统计量和其他诊断测量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman} 和 {cmd:lrtest} 在 {cmd:svy} 估计结果中不适用。{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST stcoxpostestimationRemarksandexamples:备注和示例}

        {mansection ST stcoxpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin}
[{cmd:,} {it:sv_statistic} {opt nooff:set} {opt part:ial}]

{p 8 16 2}
{cmd:predict} {dtype} {c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvarlist_zh}}{c )-} {ifin}
{cmd:,} {it:mv_statistic} [{opt part:ial}]

{synoptset 17 tabbed}{...}
{synopthdr :sv_statistic}
{synoptline}
{syntab:Main}
{synopt :{opt hr}}预测的风险比，也称为相对风险；默认为此选项{p_end}
{synopt :{opt xb}}线性预测 xb{p_end}
{synopt :{opt stdp}}线性预测的标准误；SE(xb){p_end}
{p2coldent :* {opt bases:urv}}基线生存函数{p_end}
{p2coldent :* {opt basec:hazard}}基线累积风险函数{p_end}
{p2coldent :* {opt basehc}}基线风险贡献{p_end}
{p2coldent :* {opt mg:ale}}马丁盖尔残差{p_end}
{p2coldent :* {opt csn:ell}}Cox-Snell 残差{p_end}
{p2coldent :* {opt dev:iance}}偏差残差{p_end}
{p2coldent :* {opt ld:isplace}}似然位移值{p_end}
{p2coldent :* {opt lm:ax}}LMAX 影响度量{p_end}
{p2coldent :* {opt eff:ects}}对数脆弱性{p_end}
{synoptline}

{synoptset 17 tabbed}{...}
{synopthdr :mv_statistic}
{synoptline}
{syntab:Main}
{p2coldent :* {opt sco:res}}有效得分残差{p_end}
{p2coldent :* {opt esr}}{opt scores} 的同义词{p_end}
{p2coldent :* {opt dfb:eta}}DFBETA 影响度量{p_end}
{p2coldent :* {opt sch:oenfeld}}Schoenfeld 残差{p_end}
{p2coldent :* {opt sca:ledsch}}标准化 Schoenfeld 残差{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2} 
无星标的统计量在样本内外均可用；如果只需要估计样本的结果，请键入 {cmd:predict} ... {cmd:if e(sample)} ... 。带星标的统计量仅计算在估计样本中，即使没有指定 {cmd:e(sample)} 。{opt nooffset} 仅与无星标的统计量一起使用。
{p_end}
{p 4 6 2}
{cmd:mgale}、{cmd:csnell}、{cmd:deviance}、{cmd:ldisplace}、{cmd:lmax}、{cmd:dfbeta}、{cmd:schoenfeld} 和 {cmd:scaledsch} 不允许与 {cmd:svy} 估计结果一起使用。{p_end}


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建包含预测的新变量，例如风险比；线性预测；标准误；
基线生存、累积风险和风险函数；
马丁盖尔、Cox-Snell、偏差、有效
得分、Schoenfeld 和标准化 Schoenfeld 残差；
似然位移值；LMAX 影响度量；
对数脆弱性；以及 DFBETA 影响度量。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:Main}

{phang}
{opt hr}，默认为此选项，计算相对风险（风险比），即指数化的线性预测。

{phang}
{opt xb} 计算拟合模型的线性预测。即，
通过估计一组参数 b1、b2、...、bk 来拟合模型，
线性预测为 xb。

{pmore}
计算中使用的 x 是从当前内存中的数据获取的，
不必对应于用于估计 b 的自变量数据。

{phang}
{opt stdp} 计算预测的标准误，即
xb 的标准误。

{phang}
{opt basesurv} 计算基线生存函数。在空模型中，
这等效于 Kaplan-Meier 产品限定估计。如果
指定了 {cmd:stcox} 的 {helpb stcox##strata():strata()} 选项，则提供每个层的基线生存函数。

{phang}
{opt basechazard} 计算累积基线风险。如果
指定了 {cmd:stcox} 的 {helpb stcox##strata():strata()} 选项，则提供每个层的累积基线风险。

{phang}
{opt basehc} 计算基线风险贡献。这些用于构造由
{opt basesurv} 生成的基线生存函数的产品限定类型估计。如果
指定了 {cmd:stcox} 的 {helpb stcox##strata():strata()} 选项，则提供每个层的基线风险贡献。

{phang}
{opt mgale} 计算马丁盖尔残差。对于
每个主题多个记录的数据，默认情况下，每个主题仅计算一个值，并将其放置在该主题的最后记录中。

{pmore} 添加 {opt partial} 选项将生成每个记录的部分马丁盖尔残差；请见
{helpb stcox_postestimation##partial:partial} 下面。
部分马丁盖尔残差是对主题整体马丁盖尔残差的加性贡献。在每个主题一个记录的数据中，部分
马丁盖尔残差为马丁盖尔残差。

{phang}
{opt csnell} 计算 Cox-Snell 广义残差。对于
多个记录数据，默认情况下每个主题仅计算一个值，并将其放置在该主题的最后记录中。

{pmore} 
添加 {opt partial} 选项将生成每个记录的部分 Cox-Snell 残差；请见 
{helpb stcox_postestimation##partial:partial} 下面。
部分 Cox-Snell 残差是对主题整体 Cox-Snell 残差的加性贡献。在单记录数据中，部分 Cox-Snell
残差是 Cox-Snell 残差。

{phang}
{opt deviance} 计算偏差残差。偏差残差是
经过转化以更对称地围绕零的马丁盖尔残差。对于多个记录数据，默认情况下仅计算每个主题一个值，并将其放置在该主题的最后记录中。

{pmore} 
添加 {opt partial} 选项将生成每个记录的部分偏差残差；请见 
{helpb stcox_postestimation##partial:partial} 下面。
部分偏差残差是转化的部分马丁盖尔残差。在每个主题一个记录的数据中，部分偏差残差是偏差残差。

{phang}
{opt ldisplace} 计算似然位移值。似然位移值是删除一个主题对总体系数向量影响的度量。对于多个记录数据，默认情况下仅计算每个主题一个值，并将其放置在该主题的最后记录中。

{pmore} 
添加 {opt partial} 选项将生成每个记录的部分似然位移值；请见 
{helpb stcox_postestimation##partial:partial} 下面。
部分位移值被解释为删除个别记录而不是删除个别主题的效果。在每个主题一个记录的数据中，部分似然位移值为
似然位移值。

{phang}
{opt lmax} 计算 LMAX 影响度量。LMAX 值与似然位移值相关，
因为它们也测量删除一个主题对总体系数向量的影响。对于多个记录数据，默认情况下，仅计算每个主题一个 LMAX 值，并将其放置在该主题的最后记录中。

{pmore} 
添加 {opt partial} 选项将生成每个记录的部分 LMAX 值；请见 
{helpb stcox_postestimation##partial:partial} 下面。
部分 LMAX 值被解释为删除个别记录而不是删除个别主题的效果。在每个主题一个记录的数据中，部分 LMAX 值为 LMAX 值。

{phang}
{opt effects} 用于在 {opt stcox, shared()} 之后，
并提供每个组的对数脆弱性的估计。对数脆弱性是对线性预测的随机组特定偏移，测量组对对数相对风险的影响。

{phang}
{cmd:scores} 为模型中的每个回归量计算有效得分残差。对于多个记录数据，默认情况下仅计算每个主题一个
得分，并将其放置在该主题的最后记录中。

{pmore} 
添加 {opt partial} 选项将生成部分有效得分残差；每个记录一个；请见 
{helpb stcox_postestimation##partial:partial} 下面。
部分有效得分残差是对主题整体有效得分残差的加性贡献。在单记录数据中，部分有效得分残差是有效得分残差。

{pmore}
每个模型中的回归量创建一个有效得分残差变量；第一个新变量对应第一个回归量，第二个对应第二个，依此类推。

{phang}
{opt esr} 是 {opt scores} 的同义词。

{phang}
{cmd:dfbeta} 为模型中的每个回归量计算 DFBETA 影响度量。某个主题的 DFBETA 值估计由于删除该主题而导致回归量系数的变化。
对于多个记录数据，默认情况下仅计算每个主题一个值，并将其放置在该主题的最后记录中。

{pmore} 
添加 {opt partial} 选项将生成每个记录的部分 DFBETA；请见 {helpb stcox_postestimation##partial:partial} 下面。
部分 DFBETA 被解释为删除个别记录产生的效果，而不是删除某一主题的所有记录。在每个主题一个记录的数据中，部分 DFBETA 为 DFBETA。

{pmore}
每个模型中的回归量会创建一个 DFBETA 变量；第一个新变量对应第一个回归量，第二个对应第二个，依此类推。

{phang}
{opt schoenfeld} 计算 Schoenfeld 残差。此选项在使用 {opt exactm} 或 {opt exactp} 选项的 {opt stcox} 之后不可用。
Schoenfeld 残差仅在失败时间计算和报告。

{pmore}
每个模型中的回归量创建一个 Schoenfeld 残差变量；第一个新变量对应第一个回归量，第二个对应第二个，依此类推。

{phang}
{opt scaledsch} 计算标准化 Schoenfeld 残差。此选项在使用 {opt exactm} 或 {opt exactp} 选项的 {opt stcox} 之后不可用。
标准化 Schoenfeld 残差仅在失败时间计算和报告。

{pmore}
每个模型中的回归量创建一个标准化 Schoenfeld 残差变量；第一个新变量对应第一个回归量，第二个对应第二个，依此类推。

{phang}
注意：使用前四个选项的最简单方法是，例如，

{phang2}{cmd:. predict double} {it:stub}{cmd:*, scores} 

{pmore}
其中 {it:stub} 是您选定的短名称。Stata 将创建变量 {it:stub}{cmd:1}，{it:stub}{cmd:2}，等等。您还可以明确指定每个变量名称，在这种情况下，变量的数量必须与模型中的回归量数量相同。

{phang}
{opt nooffset} 仅允许与 {opt hr}、{opt xb} 和 {opt stdp} 一起使用，当您为 {cmd:stcox} 指定了 {opth offset(varname)} 时相关。它修改了 {cmd:predict} 的计算，使其忽略偏移变量；线性预测被视为 xb，而不是 xb + offset。

{phang}
{marker partial}{...}
{opt partial} 仅与多个记录数据相关，并适用于 {opt mgale}、{opt csnell}、{opt deviance}、{opt ldisplace}、{opt lmax}、{opt scores}、{opt esr} 和 {opt dfbeta}。指定 {opt partial} 将生成这些统计量的“部分”版本，其中每个记录计算一个值，而不是每个主题一个值。主题由 {helpb stset##id():id()} 选项到 {cmd:stset} 确定。

{pmore}
如果您希望对单个记录而不是对单个主题进行诊断，请指定 {opt partial} 。例如，部分 DFBETA 将被解释为由于删除一条记录对系数的影响，而不是由于删除某一主题的所有记录。

{marker remarks1}{...}
{title:带有 tvc() 选项的 stcox 后的预测}

{pstd} 
带有 {opt tvc()} 选项的 {cmd:stcox} 之后，仅支持 {cmd:predict} 选项为 {opt hr}、{opt xb} 和 {opt stdp}。其他预测要求您 {cmd:stsplit} 数据以提取 {opt tvc()} 推断出的时间变化协变量；见
{help tvc_note_zh:tvc note}。


{marker remarks2}{...}
{title:带有 shared() 选项的 stcox 后的预测}

{pstd}
所有上述 {cmd:predict} 选项都支持使用 {cmd:stcox} 和 {cmd:shared()} 选项拟合的共享脆弱模型。预测以估计的脆弱性方差 theta 为条件，并且基线的定义扩展为表示协变量等于 0 和脆弱值为 1（对数脆弱值为 0）。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt hr}}预测的风险比，也称为相对风险；默认为此选项{p_end}
{synopt :{opt xb}}线性预测 xb{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt bases:urv}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt basec:hazard}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt basehc}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt mg:ale}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt csn:ell}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt dev:iance}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt ld:isplace}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt lm:ax}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt eff:ects}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt sco:res}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt esr}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt dfb:eta}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt sch:oenfeld}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt sca:ledsch}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计响应的边际
对风险比和线性预测。


{marker syntax_estat_con}{...}
{marker estatcon}{...}
{title:estat concordance 的语法}

{p 8 17 2}
{cmd:estat} {opt con:cordance} {ifin} [{cmd:,} {it:concordance_options}]

{synoptset 19 tabbed}{...}
{synopthdr :concordance_options}
{synoptline}
{syntab:Main}
{synopt :{opt h:arrell}}计算 Harrell 的 C 系数；默认为此选项{p_end}
{synopt :{opt gh:eller}}计算 G{c o:}nen 和 Heller 的一致性系数
{p_end}
{synopt :{opt se}}计算 G{c o:}nen 和 Heller 系数的渐近标准误{p_end}
{synopt :{opt all}}计算所有观察值的统计量{p_end}
{synopt :{opt nosh:ow}}不显示 st 设置信息{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_estat


{marker des_estat}{...}
{title:estat 的描述}

{pstd}
{cmd:estat concordance} 计算一致性概率，该概率定义为预测和结果一致的概率。
{cmd:estat concordance} 提供两种一致性概率的度量：
Harrell 的 C 和 G{c o:}nen 与 Heller 的 K 一致性系数。  
{cmd:estat concordance} 还报告 Somers 的 D 排名相关性，通过计算 2C-1 或 2K-1 得到。


{marker options_estat_con}{...}
{title:estat concordance 的选项}

{dlgtab: Main}

{phang}
{opt harrell}，默认为此选项，计算 Harrell 的 C 系数，定义为预测和结果一致的所有可用主题对的比例。

{phang}
{opt gheller} 计算 G{c o:}nen 和 Heller 的 K 一致性系数，而不是 Harrell 的 C 系数。可以一起指定 {opt harrell} 和 {opt gheller} 选项，以获得两种一致性度量。

{phang}
{opt se} 计算 G{c o:}nen 和 Heller 的 K 一致性系数的平滑版本及其渐近标准误差。{opt se} 选项需要 {opt gheller} 选项。

{phang}
{opt all} 请求为数据中的所有观察值计算统计量。默认情况下，{cmd:estat concordance} 在估计的子样本上计算。

{phang}
{opt noshow} 防止 {cmd:estat concordance} 在其输出上显示关键 st 变量的身份。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse drugtr}

{pstd}将数据声明为生存时间数据{p_end}
{phang2}{cmd:. stset studytime, failure(died)}

{pstd}拟合 Cox 模型{p_end}
{phang2}{cmd:. stcox drug age}

{pstd}获取马丁盖尔残差{p_end}
{phang2}{cmd:. predict double mg, mgale}

{pstd}获取 Cox-Snell 残差{p_end}
{phang2}{cmd:. predict double cs, csnell}

{pstd}获取偏差残差{p_end}
{phang2}{cmd:. predict double dev, deviance}

{pstd}计算 Harrell 的 C{p_end}
{phang2}{cmd:. estat concordance}

{pstd}计算 G{c o:}nen 和 Heller 的一致性系数{p_end}
{phang2}{cmd:. estat concordance, gheller}


{marker results}{...}
{title:储存的结果}

{pstd}
{cmd:estat concordance} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2:标量}{p_end}
{synopt:{cmd:r(N)}}观察数量{p_end}
{synopt:{cmd:r(n_P)}}比较对的数量{p_end}
{synopt:{cmd:r(n_E)}}按预期分类的数量{p_end}
{synopt:{cmd:r(n_T)}}平局预测的数量{p_end}
{synopt:{cmd:r(C)}}Harrell 的 C 系数{p_end}
{synopt:{cmd:r(K)}}G{c o:}nen 和 Heller 的 K 系数{p_end}
{synopt:{cmd:r(K_s)}}平滑的 G{c o:}nen 和 Heller 的 K 系数{p_end}
{synopt:{cmd:r(K_s_se)}}平滑的 K 系数的标准误{p_end}
{synopt:{cmd:r(D)}}Harrell 的 C 的 Somers 的 D 系数{p_end}
{synopt:{cmd:r(D_K)}}G{c o:}nen 和 Heller 的 K 的 Somers 的 D 系数{p_end}

{pstd}
{cmd:r(n_P)}、{cmd:r(n_E)} 和 {cmd:r(n_T)} 仅在未指定层次时返回。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stcox_postestimation.sthlp>}