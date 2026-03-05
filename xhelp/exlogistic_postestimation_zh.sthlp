{smcl}
{* *! version 1.2.5  11dec2018}{...}
{viewerdialog estat "dialog exlogistic_estat"}{...}
{vieweralsosee "[R] exlogistic postestimation" "mansection R exlogisticpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] exlogistic" "help exlogistic_zh"}{...}
{viewerjumpto "后续估计命令" "exlogistic postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "exlogistic_postestimation_zh##linkspdf"}{...}
{viewerjumpto "estat" "exlogistic postestimation##syntax_estat"}{...}
{viewerjumpto "示例" "exlogistic postestimation##examples"}{...}
{viewerjumpto "存储结果" "exlogistic postestimation##results"}
{help exlogistic_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[R] exlogistic postestimation} {hline 2}}exlogistic的后续估计工具{p_end}
{p2col:}({mansection R exlogisticpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后续估计命令}

{pstd}
在执行{cmd:exlogistic}后，以下后续估计命令尤其重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb exlogistic postestimation##estatpred:estat predict}}单观察预测{p_end}
{synopt :{helpb exlogistic postestimation##estatse:estat se}}报告OR或系数及其渐近标准误{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后续估计命令也可用：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含帮助 post_estatsum
包含帮助 post_estimates
{synoptline}
{p2colreset}{...}
{pstd}
如果在{cmd:exlogistic}中指定了{helpb exlogistic##binomial():binomial()}选项，则不允许使用{cmd:estat summarize}。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R exlogisticpostestimationRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker syntax_estat}{...}
{marker estatpred}{marker estatse}{...}
{title:estat的语法}

{pstd}单观察预测

{p 8 14 2}
{cmd:estat} {cmdab:pred:ict} [{cmd:,} {it:选项}]


{pstd}报告OR或系数及其渐近标准误

{p 8 14 2}
{cmd:estat} {opt se}  
[{cmd:,} {cmd:coef}]


{synoptset 17}{...}
{synopthdr :选项}
{synoptline}
{synopt :{opt pr}}概率；默认值{p_end}
{synopt :{opt xb}}线性效应{p_end}
{synopt :{opt at(atspec)}}使用指定的值来计算{indepvars}和{opt condvars()}的值{p_end}
{synopt :{opt l:evel(#)}}设置预测值的置信水平；默认是{cmd:level(95)}{p_end}
{synopt :{cmdab:mem:ory(}{it:#}[{cmd:b}|{cmd:k}|{cmd:m}|{cmd:g}]{cmd:)}设置内存使用限制；默认是{cmd:memory(10m)}{p_end}
{synopt :[{cmd:no}]{cmd:log}}显示或抑制枚举日志；默认是显示{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}这些统计量仅适用于估计样本。


包含帮助 menu_estat


{marker des_estat}{...}
{title:estat的描述}

{pstd}
{cmd:estat predict}计算预测概率（或线性预测），
其渐近标准误及其精确置信区间，适用于1个观察值。预测是通过在{cmd:at()}选项中指定值后，估计常数系数并移位独立变量和条件变量来进行的。
因此，预测必须在内存中使用估计样本。如果使用了不同的数据集或修改了数据集，则会出错。

{pstd}
{cmd:estat se}报告OR或系数及其渐近标准误。估计值存储在矩阵{cmd:r(estimates)}中。


{marker options_estat_predict}{...}
{title:estat predict的选项}

{phang}
{opt pr}，默认，计算概率。

{phang}
{opt xb}计算线性效应。

{phang}
{cmd: at(}{varname} {cmd:=} {it:#} [[{it:varname} {cmd:=} {it:#}]
[ ... ]]{cmd:)}指定用于计算预测值的值。在这里，{it: varname}是独立变量{indepvars}或条件变量{cmd:condvars()}之一。默认使用每个独立变量和条件变量的中位数。

{phang}
{opt level(#)}
指定置信区间的置信水平（以百分比表示）。默认值为{cmd:level(95)}或通过{helpb set level}设置的值。

{phang} 
{cmd:memory(}{it:#}[{cmd:b}|{cmd:k}|{cmd:m}|{cmd:g}]{cmd:)}设置{cmd:estat predict}生成条件分布所能使用的内存量限制。默认是{cmd:memory(10m)}，其中{cmd:m}代表兆字节，即1,048,576字节。以下选项也可用：{cmd:b}表示字节；{cmd:k}表示千字节（等于1,024字节）；{cmd:g}表示千兆字节（等于1,024兆字节）。最低设置为1m，最大值为512m或0.5g，但请勿尝试使用超过计算机可用内存的数量。有关枚举条件分布的详细信息，也请参见{it:{help exlogistic##enumerations:备注}}在{help exlogistic_zh}中。

{phang}
{opt log}和{opt nolog}指定是否显示枚举日志，显示根据在条件变量上移位的独立变量（通过{opt at()}指定的值或其中位数）条件下观察到的成功的分布进行枚举的进度。有关计算的详细信息，请参见{mansection R exlogisticMethodsandformulas:{it:方法和公式}}在{bf:[R] exlogistic}中。默认情况下，枚举日志会显示，除非您使用{cmd:set iterlog off}抑制它；有关{cmd:set iterlog}的更多信息，请参见{manhelpi set_iter R:set iter}.


{marker option_estat_se}{...}
{title:estat se的选项}

{phang}
{opt coef}要求报告估计的系数及其渐近标准误。默认是报告OR及其渐近标准误。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}准备{p_end}
{phang2}{cmd:. webuse hiv}{p_end}

{pstd}执行精确逻辑回归{p_end}
{phang2}{cmd:. exlogistic hiv cd4 cd8 [fw=f]}

{pstd}报告OR及其渐近标准误{p_end}
{phang2}{cmd:. estat se}

{pstd}总结估计样本{p_end}
{phang2}{cmd:. estat summarize}

    {hline}
{pstd}准备{p_end}
{phang2}{cmd:. webuse hiv_n2}{p_end}

{pstd}执行精确逻辑回归{p_end}
{phang2}{cmd:. exlogistic hiv cd4_0 cd4_1 cd8_0 cd8_1,}
        {cmd:terms(cd4=cd4_0 cd4_1, cd8=cd8_0 cd8_1) binomial(n)}{p_end}

{pstd}使用指定值计算预测概率{p_end}
{phang2}{cmd:. estat predict, at(cd4_1=1 cd4_0=0 cd8_1=1 cd8_0=0)}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{phang}
{cmd:estat predict}将以下内容存储在{opt r()}中：

{synoptset 15 tabbed}{...}
{syntab:标量}
{synopt:{hi:r(imue)}}如果{hi:r(pred)}是MUE，则为{cmd:1}，如果是CMLE，则为{cmd:0}{p_end}
{synopt:{hi:r(pred)}}估计概率或线性效应{p_end}
{synopt:{hi:r(se)}}{hi:r(pred)}的渐近标准误{p_end}

{syntab:宏}
{synopt:{hi:r(estimate)}}预测类型：{cmd:pr}或{cmd:xb}{p_end}
{synopt:{hi:r(level)}}置信水平{p_end}

{syntab:矩阵}
{synopt:{hi:r(ci)}}置信区间{p_end}
{synopt:{hi:r(x)}}{it:indepvars}和{cmd:condvars()}的值{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <exlogistic_postestimation.sthlp>}