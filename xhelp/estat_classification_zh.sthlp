{smcl}
{* *! version 1.0.5  24oct2017}{...}
{viewerdialog estat "dialog logit_estat"}{...}
{vieweralsosee "[R] estat classification" "mansection R estatclassification"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ivprobit" "help ivprobit_zh"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estat gof" "help logistic estat gof"}{...}
{vieweralsosee "[R] lroc" "help lroc_zh"}{...}
{vieweralsosee "[R] lsens" "help lsens_zh"}{...}
{vieweralsosee "[R] roc" "help roc_zh"}{...}
{viewerjumpto "语法" "estat classification##syntax"}{...}
{viewerjumpto "estat 的菜单" "estat classification##menu_estat"}{...}
{viewerjumpto "描述" "estat classification##description"}{...}
{viewerjumpto "PDF 文档链接" "estat_classification_zh##linkspdf"}{...}
{viewerjumpto "选项" "estat classification##options"}{...}
{viewerjumpto "示例" "estat classification##example"}{...}
{viewerjumpto "存储的结果" "estat classification##results"}
{help estat_classification:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[R] estat classification} {hline 2}}分类统计
和表{p_end}
{p2col:}({mansection R estatclassification:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {opt clas:sification} {ifin}
[{it:{help estat classification##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr :选项}
{synoptline}
{syntab :主要}
{synopt :{opt all}}为数据中的所有观察值显示摘要统计{p_end}
{synopt :{opt cut:off(#)}}正向结果阈值；默认值为
{cmd:cutoff(0.5)}{p_end}
{synoptline}
{p2colreset}{...}
{marker weight}{...}
{p 4 6 2}{opt fweight}允许使用；见 {help weight_zh}.{p_end}
{p 4 6 2}{cmd:estat} {cmd:classification}在 {cmd:svy}
  前缀后不适用。


INCLUDE help menu_estat


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat classification}报告各种摘要统计信息，包括分类表。

{pstd}
{cmd:estat classification}要求当前估计结果来自 {help logistic_zh}、{help logit_zh}、{help probit_zh} 或 {help ivprobit_zh}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R estatclassificationQuickstart:快速开始}

        {mansection R estatclassificationRemarksandexamples:备注和示例}

        {mansection R estatclassificationMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt all}请求为数据中的所有观察值计算统计，忽略由估计命令指定的任何 {opt if} 或 {opt in} 限制。

{phang}
{opt cutoff(#)}指定用于确定观察值是否具有预测正向结果的值。如果观察值的预测概率大于 {ul:>} {it:#}，则该观察值被分类为正向。默认值为 0.5。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lbw}

{pstd}拟合逻辑回归以预测低出生体重{p_end}
{phang2}{cmd:. logistic low age lwt i.race smoke ptl ht ui}

{pstd}报告分类表和摘要统计{p_end}
{phang2}{cmd:. estat classification}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:estat classification}将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(P_corr)}}正确分类的百分比{p_end}
{synopt:{cmd:r(P_p1)}}敏感性{p_end}
{synopt:{cmd:r(P_n0)}}特异性{p_end}
{synopt:{cmd:r(P_p0)}}在真实负向情况下的假阳性率{p_end}
{synopt:{cmd:r(P_n1)}}在真实正向情况下的假阴性率{p_end}
{synopt:{cmd:r(P_1p)}}阳性预测值{p_end}
{synopt:{cmd:r(P_0n)}}阴性预测值{p_end}
{synopt:{cmd:r(P_0p)}}在分类为正向情况下的假阳性率{p_end}
{synopt:{cmd:r(P_1n)}}在分类为负向情况下的假阴性率{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(ctable)}}分类表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_classification.sthlp>}