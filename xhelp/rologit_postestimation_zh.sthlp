{smcl}
{* *! version 1.2.6  29may2018}{...}
{viewerdialog predict "dialog rologit_p"}{...}
{vieweralsosee "之前文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] rologit" "help rologit_zh"}{...}
{viewerjumpto "后验估计命令" "rologit postestimation##description"}{...}
{viewerjumpto "预测" "rologit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "rologit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "rologit postestimation##examples"}
{help rologit_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[R] rologit 后验估计} {hline 2}}后验估计工具
用于 rologit{p_end}
{p2col:}({browse "http://www.stata.com/manuals15/rrologitpostestimation.pdf":查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}

{pstd}
{cmd:rologit} 已更名为 {help cmrologit_zh}。{cmd:rologit}
仍然可以使用，但从 Stata 16 开始，它不再是 Stata 的官方部分。
这是原始的帮助文件，我们将不再更新，因此某些链接可能不再工作。


{marker description}{...}
{title:后验估计命令}

{pstd}
在 {cmd:rologit} 之后可用的后验估计命令包括：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_linktest
INCLUDE help post_lrtest
{synopt:{helpb rologit_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb rologit postestimation##predict:predict}}预测、
残差、影响统计和其他诊断指标{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 18 2}
{cmd:predict} {dtype} {newvar} {ifin} 
[{cmd:,} {it:statistic} {opt nooff:set}]

{marker statistic}{...}
{synoptset 17 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab:主要}
{synopt :{opt p:r}}替代方案排在首位的概率；默认值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测说明}

{pstd}
{cmd:predict} 创建一个包含如概率、线性预测和标准误差等预测的新变量。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{opt pr}，默认情况下，计算替代方案排在首位的概率。

{phang}
{opt xb}计算线性预测。

{phang}
{opt stdp}计算线性预测的标准误差。

{phang}
{opt nooffset} 仅在您为 {cmd:rologit} 指定了 {opth offset(varname)} 时相关。它修改 {cmd:predict} 的计算，使其忽略偏移变量；线性预测被视为 xb 而不是 xb + offset。


INCLUDE help syntax_margins1

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt p:r}}在 {cmd:margins} 中不允许{p_end}
{synopt :{opt stdp}}在 {cmd:margins} 中不允许{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际说明}

{pstd}
{cmd:margins} 估计线性预测的响应边际。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse rologitxmpl}{p_end}
{phang2}{cmd:. rologit pref edufit grades workexp}
            {cmd:c.firmsize#c.(edufit grades workexp boardexp) if job==1,}
            {cmd:group(caseid)}{p_end}

{pstd}测试交互 {cmd:firmsize} 变量的系数是否均为 0{p_end}
{phang2}{cmd:. testparm c.firmsize#c.(edufit grades workexp boardexp)}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse evignet}{p_end}
{phang2}{cmd:. rologit pref age female edufit grades workexp boardexp if}
                 {cmd:job==1, group(caseid)}{p_end}

{pstd}存储估计以备后用{p_end}
{phang2}{cmd:. estimates store Ranking}{p_end}

{pstd}{cmd:best} 对于最佳替代方案为 1，其他为 0{p_end}
{phang2}{cmd:. by caseid (pref), sort: gen best = pref == pref[_N] if job==1}
{p_end}

{pstd}确认没有平局{p_end}
{phang2}{cmd:. by caseid (pref), sort: assert pref[_N-1] != pref[_N] if job==1}
{p_end}

{phang2}{cmd:. rologit best age edufit grades workexp boardexp if job==1,}
                 {cmd:group(caseid)}{p_end}

{pstd}检测模型规格错误{p_end}
{phang2}{cmd:. hausman Ranking .}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse evignet, clear}{p_end}
{phang2}{cmd:. rologit pref grades edufit workexp boardexp if job==1 &}
                 {cmd:pref!=0, group(caseid)}{p_end}

{pstd}存储估计以备后用{p_end}
{phang2}{cmd:. estimates store Original}{p_end}

{pstd}反转偏好顺序{p_end}
{phang2}{cmd:. rologit pref grades edufit workexp boardexp if job==1 &}
                  {cmd:pref!=0, group(caseid) reverse}{p_end}

{pstd}存储估计以备后用{p_end}
{phang2}{cmd:. estimates store Reversed}{p_end}

{pstd}显示两个模型的估计结果表{p_end}
{phang2}{cmd:. estimates table Original Reversed, stats(aic bic)}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rologit_postestimation.sthlp>}