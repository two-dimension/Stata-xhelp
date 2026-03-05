{smcl}
{* *! version 1.0.3  01apr2019}{...}
{viewerdialog predict "dialog asmixlogit_p"}{...}
{vieweralsosee "之前的文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] asmixlogit" "help asmixlogit_zh"}{...}
{viewerjumpto "后验估计命令" "asmixlogit postestimation##description"}{...}
{viewerjumpto "预测" "asmixlogit postestimation##syntax_predict"}{...}
{viewerjumpto "示例" "asmixlogit postestimation##examples"}
{help asmixlogit_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[R] asmixlogit postestimation} {hline 2}}asmixlogit 的后验估计工具{p_end}
{p2col:}({browse "http://www.stata.com/manuals15/rasmixlogitpostestimation.pdf":查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}

{pstd}
{cmd:asmixlogit} 仍然可以使用，但从 Stata 16 开始，不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{pstd}
请参阅 {help cmmixlogit_zh} 以获得对 {cmd:asmixlogit} 的推荐替代方案。


{marker description}{...}
{title:后验估计命令}

{pstd}
在使用 {cmd:asmixlogit} 后，以下标准后验估计命令可用：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_lrtest
INCLUDE help post_nlcom
{synopt :{helpb asmixlogit postestimation##predict:预测}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic} {opt altwise}]

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:stub}{cmd:*}{c |}{it:{help newvarlist_zh}}{c )-}
{ifin}
{cmd:,} {opt sc:ores}

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:主}
{synopt :{opt p:r}}选择替代方案的概率；默认值{p_end}
{synopt :{cmd:xb}}线性预测{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含诸如概率或线性预测的预测结果。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt pr}，默认值，计算在案例 {it:i} 中选择替代方案 {it:a} 的概率。

{phang}
{opt xb} 计算在案例 {it:i} 和替代方案 {it:a} 的线性预测。

{phang}
{opt altwise} 指定在标记缺失值观察时使用逐个替代方式删除。默认是使用逐个案例删除。

{phang}
{opt scores} 计算 {cmd:e(b)} 中每个系数的得分。此选项要求生成的变量列表长度应等于 {cmd:e(b)} 中的列数。否则，请使用 {it:stub}{cmd:*} 语法以使 {cmd:predict} 生成带有前缀 {it:stub} 的枚举变量。


{marker examples}{...}
{title:示例}

    设置
{phang2}{cmd:. webuse inschoice}{p_end}

{pstd}拟合带有固定和随机系数的混合 logit 模型{p_end}
{phang2}{cmd:. asmixlogit choice premium, case(id) alternatives(insurance)}
     {cmd:random(deductible)}{p_end}

{pstd}计算选择替代方案的概率{p_end}
{phang2}{cmd:. predict p}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <asmixlogit_postestimation.sthlp>}