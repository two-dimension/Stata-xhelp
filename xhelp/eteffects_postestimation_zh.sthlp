{smcl}
{* *! version 1.0.7  04jun2018}{...}
{viewerdialog predict "dialog eteffects_p"}{...}
{viewerdialog estat "dialog estat"}{...}
{vieweralsosee "[TE] eteffects postestimation" "mansection TE eteffectspostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] eteffects" "help eteffects_zh"}{...}
{viewerjumpto "后估计命令" "eteffects postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "eteffects_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "eteffects postestimation##syntax_predict"}{...}
{viewerjumpto "estat" "eteffects postestimation##syntax_estat"}{...}
{viewerjumpto "示例" "eteffects postestimation##examples"}
{help eteffects_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[TE] eteffects postestimation} {hline 2}}后估计工具用于
eteffects{p_end}
{p2col:}({mansection TE eteffectspostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行{cmd:eteffects}后，以下后估计命令特别值得关注： 

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb eteffects postestimation##syntax_estat:estat endogenous}}进行内生性检验{p_end}
{synoptline}
{p2colreset}{...}


{pstd}
在执行{cmd:eteffects}后，以下标准后估计命令可用：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_estatsum
包含 help post_estatvce
包含 help post_estimates
包含 help post_hausman
包含 help post_lincom
包含 help post_nlcom
{synopt :{helpb eteffects postestimation##predict:predict}}做出预测、残差、影响统计量和其他诊断度量{p_end}
包含 help post_predictnl
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TE eteffectspostestimationRemarksandexamples:注释和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh}} {c |} {it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,} {it:statistic} {opt tle:vel}]

{synoptset 15 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :Main}
{synopt :{opt te}}处理效应；默认值{p_end}
{synopt :{opt cm:ean}}控制组的条件均值{p_end}
{synopt :{opt ps}}倾向得分{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt psxb}}倾向得分的线性预测{p_end}
{synopt :{opt xbt:otal}}线性预测，使用治疗模型的残差{p_end}
{synopt :{opt sc:ores}}参数级或方程级得分{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
指定一个新变量使用 {cmd:te}; 指定一个或两个新变量使用 {cmd:cmean}, {cmd:ps}, 和 {cmd:xb}。


包含 help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict}创建一个包含预测值的新变量，例如处理效应、条件均值、倾向得分和线性预测。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:Main}

{phang}
{opt te}，默认，计算处理效应。

{phang}
{opt cmean} 计算控制组的条件均值。
要同时获取治疗组的条件均值，请指定两个变量。如果您只想获取治疗组的条件均值，请指定{opt tlevel}选项。

{phang}
{opt ps} 计算处于控制组的概率。要同时获取处于治疗组的概率，请指定两个变量。如果您只想获取治疗组的概率，请指定{opt tlevel}选项。

{phang}
{opt xb} 计算控制组的线性预测。要同时获取治疗组的线性预测，请指定两个变量。如果您只想获取治疗组的线性预测，请指定{opt tlevel}选项。

{phang}
{opt psxb} 计算倾向得分的线性预测。

{phang}
{opt xbtotal} 计算控制组的线性预测，包括治疗模型的残差作为回归变量。要同时获取治疗组的线性预测，请指定两个变量。如果您只想获取只针对治疗组的线性预测，且包含治疗模型的残差作为回归变量，请指定{opt tlevel}选项。

{phang}
{opt tlevel} 指定计算治疗组的统计量；默认是计算控制组的统计量。

{phang}
{opt scores} 计算得分变量。对于{opt eteffects}，这与在广义矩方法（请参见 {manhelp gmm G}）中使用的矩条件中的残差相同。对于平均处理效应、处理组的平均处理效应和潜在结果均值，计算参数级得分。对于辅助方程，计算方程级得分。


{marker syntax_estat}{...}
{marker estatendog}{...}
{title:estat的语法}

{p 8 16 2}
{cmd:estat} {cmdab:endog:enous}


包含 help menu_estat


{marker des_estat}{...}
{title:estat的描述}

{pstd} 
{cmd:estat endogenous} 执行Wald检验，以确定处理分配模型与潜在结果模型之间的估计相关性是否不同于零。原假设是相关性是联合为零的。拒绝原假设暗示内生性。 


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse cattaneo2}{p_end}
{phang2}{cmd:. eteffects (bweight i.prenatal1 i.mmarried mage i.fbaby)}
          {cmd:(mbsmoke i.mmarried mage i.fbaby medu fedu)}{p_end}

{phang}进行内生性检验 {p_end}
{phang2}{cmd:. estat endogenous}{p_end}

{phang}计算估计的处理概率{p_end}
{phang2}{cmd:. predict prob1 prob2, ps}{p_end}

{phang}汇总估计的处理概率{p_end}
{phang2}{cmd:. summarize prob1 if mbsmoke==1, detail}{p_end}

{phang}汇总估计的控制概率{p_end}
{phang2}{cmd:. summarize prob2 if mbsmoke==0, detail}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <eteffects_postestimation.sthlp>}