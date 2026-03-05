{smcl}
{* *! version 1.0.0  20jun2019}{...}
{viewerdialog "meta" "dialog meta"}{...}
{vieweralsosee "[META] meta regress postestimation" "mansection META metaregresspostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta regress" "help meta regress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta data" "mansection META metadata"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta" "help meta_zh"}{...}
{vieweralsosee "[META] Glossary" "help meta glossary"}{...}
{vieweralsosee "[META] Intro" "mansection META Intro"}{...}
{viewerjumpto "Postestimation commands" "meta_regress_postestimation_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "meta_regress_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "meta_regress_postestimation_zh##syntax_predict"}{...}
{viewerjumpto "margins" "meta_regress_postestimation_zh##syntax_margins"}{...}
{viewerjumpto "Examples" "meta_regress_postestimation_zh##examples"}
{help meta_regress_postestimation:English Version}
{hline}{...}
{p2colset 1 39 41 2}{...}
{p2col:{bf:[META] meta regress postestimation} {hline 2}}后估计工具
用于元回归{p_end}
{p2col:}({mansection META metaregresspostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在执行 {cmd:meta regress} 后特别重要：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat bubbleplot}}气泡图{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
还可以使用以下标准后估计命令：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_contrast
包含 help post_estatsum
包含 help post_estatvce
{synopt :{help estimates_zh}}目录化估计结果{p_end}
包含 help post_lincom
{synopt :{helpb meta_regress_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含 help post_marginsplot
包含 help post_nlcom
{synopt :{helpb menl_postestimation##predict:predict}}预测、残差和其他诊断测量{p_end}
包含 help post_predictnl
包含 help post_pwcompare
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection META metaregresspostestimationRemarksandexamples:备注和示例}

        {mansection META metaregresspostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 4 4 2}
在RE元回归后获取随机效应及其标准误的语法

{p 8 16 2}
{cmd:predict} {dtype}
{newvar}
{ifin}{cmd:,}
{opt ref:fects}
[{opth se:(newvar)}]


{p 4 4 2}
获取其他预测的语法

{p 8 16 2}
{cmd:predict} {dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic}
{opt fixed:only}
{opth se:(meta_regress_postestimation##sespec:sespec)}]


{synoptset 18 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{cmd:xb}}线性预测；默认值{p_end}
{synopt :{cmd:stdp}}线性预测的标准误{p_end}
{synopt :{opt fit:ted}}拟合值，固定部分的线性预测加上预测的随机效应{p_end}
{synopt :{opt res:iduals}}残差，响应减去拟合值{p_end}
{synopt :{opt lev:erage}{c |}{opt hat}}杠杆（帽子矩阵的对角元素）{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2} 无星号统计量在样本内外均可用；如果只想要估计样本中的结果，请输入 {cmd:predict} {it:...} {cmd:if e(sample)} {it:...}。


包含 help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含诸如线性预测、残差、杠杆和标准误等预测值。在随机效应的元回归之后，您还可以获取随机效应及其标准误的估计值。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{cmd:xb}，默认计算线性预测 xb。对于随机效应元回归，这对应于基于估计回归系数的线性预测的固定部分。也就是说，相当于将模型中的所有随机效应固定在其理论均值0。

{phang}
{cmd:stdp} 计算线性预测的标准误。

{phang}
{cmd:reffects} 计算随机效应的最佳线性无偏预测（BLUPs）。

{phang}
{cmd:fitted} 计算拟合值。对于固定效应的元回归或在指定 {cmd:fixedonly} 选项的情况下的随机效应元回归，此选项等同于 {cmd:xb}。对于未使用 {cmd:fixedonly} 的随机效应元回归，它计算 xb + u，相当于线性预测的固定部分加上预测的随机效应。

{phang}
{cmd:residuals} 计算残差，等于响应减去拟合值。在固定效应的元回归或在指定了 {cmd:fixedonly} 的情况下的随机效应元回归中，它计算 θ - xb。前者在随机效应模型中被称为边际残差。对于未使用 {cmd:fixedonly} 的随机效应元回归，此选项计算 θ - (xb + uj)，即条件残差。

{phang}
{cmd:leverage} 或 {cmd:hat} 计算投影（“帽子”）矩阵的对角元素。

{phang}
{cmd:fixedonly} 指定所有随机效应设置为零，这相当于在计算随机效应模型的结果时仅使用模型的固定部分。此选项只能与统计 {cmd:fitted}、{cmd:residuals} 或 {cmd:leverage} 一起指定。

{marker sespec}{...}
{phang}
{cmd:se(}{newvar}[{cmd:, marginal}]{cmd:)} 计算相应预测值的标准误。此选项只能与统计 {cmd:reffects}、{cmd:fitted} 和 {cmd:residuals} 一起指定。

{pmore}
子选项 {cmd:marginal} 仅允许与随机效应元回归一起使用，并且需要选项 {cmd:fixedonly}。它计算边际标准误，当您输入

          {cmd:. predict} ...{cmd:, statistic se(newvar, marginal) fixedonly}

{pmore}
而不是输入

          {cmd:. predict} ...{cmd:, statistic se(newvar) fixedonly}

{pmore}
时，将得到以零随机效应为条件的标准误，后者是计算出来的。

{pmore}
{cmd:marginal} 不允许与 {cmd:reffects} 一起使用。


包含 help syntax_margins1

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{cmd:xb}}线性预测；默认值{p_end}
{synopt :{opt fit:ted}}拟合值；意味着 {cmd:fixedonly}{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt ref:fects}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt res:iduals}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt lev:erage}{c |}{opt h:at}}与 {cmd:margins} 不允许一起使用{p_end}
{synoptline}
{p2colreset}{...}

包含 help notes_margins


包含 help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计线性预测的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse bcgset}{p_end}
{phang2}{cmd:. meta regress latitude_c}

{pstd}预测随机效应及其标准误{p_end}
{phang2}{cmd:. predict double u, reffects se(u_se)}

{pstd}预测拟合值的固定部分及其边际标准误{p_end}
{phang2}{cmd:. predict double yhat, fitted fixedonly se(yhat_se, marginal)}

{pstd}在不同纬度值下获取预测的对数风险比{p_end}
{phang2}{cmd:. margins, at(latitude_c = (-18.5 -5.5 16.5))}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meta_regress_postestimation.sthlp>}