{smcl}
{* *! version 1.3.5  19oct2017}{...}
{viewerdialog predict "dialog clogit_p"}{...}
{vieweralsosee "[R] clogit postestimation" "mansection R clogitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] clogit" "help clogit_zh"}{...}
{viewerjumpto "后估计命令" "clogit postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "clogit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "clogit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "clogit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "clogit postestimation##examples"}
{help clogit_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[R] clogit postestimation} {hline 2}}clogit的后估计工具{p_end}
{p2col:}({mansection R clogitpostestimation:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在输入 {cmd:clogit} 之后，可以使用以下标准后估计命令：

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
{synopt:{helpb clogit_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb clogit postestimation##predict:predict}}预测值、残差、影响统计学和其他诊断指标{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R clogitpostestimationRemarksandexamples:备注和示例}

        {mansection R clogitpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测语法}

{p 8 16 2}
{cmd:predict} 
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic} {opt nooff:set}]

{synoptset 17 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab :主要}
{synopt :{opt pc1}}正向结果的概率；默认值为此
{p_end}
{synopt :{opt pu0}}正向结果的概率，假定固定效应为零{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{p2coldent :* {opt db:eta}}Delta-b影响统计量{p_end}
{p2coldent :* {opt dx:2}}Delta卡方缺乏拟合统计量{p_end}
{p2coldent :* {opt gdb:eta}}每个组的Delta-b影响统计量{p_end}
{p2coldent :* {opt gdx:2}}每个组的Delta卡方缺乏拟合统计量{p_end}
{p2coldent :* {opt h:at}}Hosmer和Lemeshow杠杆{p_end}
{p2coldent :* {opt r:esiduals}}Pearson残差{p_end}
{p2coldent :* {opt rsta:ndard}}标准化Pearson残差{p_end}
{synopt :{opt sc:ore}}关于xb的对数似然的导数{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help unstarred

{p 4 6 2}带星号的统计量仅适用于每个案例匹配设计的多个控制。如果在 {cmd:clogit} 时指定了 {cmd:vce(robust)}、
{cmd:vce(cluster} {it:clustvar}{cmd:)}, 或 {cmd:pweight}s，星号统计结果将不可用。

{p 4 6 2}{opt dbeta}, {opt dx2}, {opt gdbeta}, {opt gdx2}, {opt hat}, 和 
{opt rstandard} 在 {opt constraints()} 被指定时不可用 {cmd:clogit}。


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，如概率、线性预测、标准误差、影响统计量、缺乏拟合统计量、Hosmer和Lemeshow杠杆、Pearson残差和方程级得分。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{opt pc1}，默认计算条件于组内正向结果的正向结果概率。

{phang}
{opt pu0} 计算正向结果的概率，假设固定效应为零。

{phang}
{opt xb} 计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误差。

{phang}
{opt dbeta} 计算Delta-b影响统计量，标准化测量由于观察的删除而导致的系数向量的差异。

{phang}
{opt dx2} 计算Delta卡方影响统计量，反映由于观察的删除而导致的Pearson卡方的减少。

{phang}
{opt gdbeta} 计算Pregibon层特定的Delta-b影响统计量的近似值，标准化测量由于整个层的删除而导致的系数向量的差异。

{phang}
{opt gdx2} 计算Pregibon层特定的Delta卡方影响统计量的近似值，反映由于整个层的删除而导致的Pearson卡方的减少。

{phang}
{opt hat} 计算Hosmer和Lemeshow杠杆，或帽子矩阵的对角元素。

{phang}
{opt residuals} 计算Pearson残差。

{phang}
{opt rstandard} 计算标准化Pearson残差。

{phang}
{opt score} 计算方程级得分，是关于线性预测的对数似然的导数。

{phang}
{opt nooffset} 仅在您为 {cmd:clogit} 指定了 {cmd:offset({varname})} 时相关。它修改 {cmd:predict} 的计算，以使其忽略偏移变量；线性预测视为xb而不是xb + 偏移。此选项不能与 {opt dbeta}、{opt dx2}、{opt gdbeta}、{opt gdx2}、{opt hat} 和 {opt rstandard} 一同指定。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt pu0}}正向结果的概率，假定固定效应为零；默认为此{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt pc1}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt db:eta}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt dx:2}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt gdb:eta}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt gdx:2}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt h:at}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt r:esiduals}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt rsta:ndard}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt sc:ore}}与 {cmd:margins} 不允许{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际（概率和线性预测）。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lowbirth2}{p_end}

{pstd}拟合条件逻辑回归{p_end}
{phang2}{cmd:. clogit low lwt smoke ptd ht ui i.race, group(pairid)}

{pstd}检验 {cmd:2.race} 的系数是否等于 {cmd:3.race} 的系数{p_end}
{phang2}{cmd:. test 2.race = 3.race}{p_end}

{pstd}预测条件于组内正向结果的正向结果概率{p_end}
{phang2}{cmd:. predict pc}{p_end}

{pstd}预测Hosmer和Lemeshow杠杆{p_end}
{phang2}{cmd:. predict hat, hat}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <clogit_postestimation.sthlp>}