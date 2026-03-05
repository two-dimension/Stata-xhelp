{smcl}
{* *! version 1.2.6  29aug2018}{...}
{viewerdialog predict "dialog gmm_p"}{...}
{viewerdialog estat "dialog gmm_estat"}{...}
{vieweralsosee "[R] gmm postestimation" "mansection R gmmpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] gmm" "help gmm_zh"}{...}
{viewerjumpto "Postestimation commands" "gmm postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "gmm_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "gmm postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "gmm postestimation##syntax_margins"}{...}
{viewerjumpto "estat" "gmm postestimation##syntax_estat_overid"}{...}
{viewerjumpto "Examples" "gmm postestimation##examples"}{...}
{viewerjumpto "Stored results" "gmm postestimation##results"}
{help gmm_postestimation:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[R] gmm postestimation} {hline 2}}gmm 的事后评估工具{p_end}
{p2col:}({mansection R gmmpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:事后评估命令}

{pstd}
以下事后评估命令在使用 {cmd:gmm} 后特别重要：

{synoptset 14}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb gmm postestimation##estatoverid:estat overid}}执行过度识别限制的检验{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准的事后评估命令也可用：

{synoptset 14}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_hausman
INCLUDE help post_lincom
{synopt:{helpb gmm postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb gmm postestimation##predict:predict}}线性预测、残差和评分{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R gmmpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {cmd:xb} {cmdab:eq:uation(#}{it:eqno}{c |}{it:eqname}{cmd:)}]

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
{cmd:,} {opt r:esiduals} [{cmdab:eq:uation(#}{it:eqno}{c |}{it:eqname}{cmd:)}]

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh:newvar_1}}
    {it:{help newvar_zh:newvar_2}} ... {it:{help newvar_zh:newvar_q}}{c )-}
{ifin}
[{cmd:,} {opt r:esiduals}]

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh:newvar_1}}
    {it:{help newvar_zh:newvar_2}} ... {it:{help newvar_zh:newvar_p}}{c )-}
{ifin}
[{cmd:,} {opt sc:ores}]

{p 4 6 4}残差在样本内和样本外均可用； 
输入 {cmd:predict} ... {cmd:if e(sample)} ... 如果只想要估计样本的。

{p 4 6 4}评分仅在估计样本内的观测值可用。

{p 4 6 4}你需指定一个新变量名和（可选的） {cmd:equation()}， 
或者你指定 {it:stub}{cmd:*} 或 {it:q} 或 {it:p} 个新变量，其中 
{it:q} 为矩条件的数量，{it:p} 为模型中的参数数量。


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含线性预测、残差和评分等预测值。


{marker option_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{cmd:xb}，默认情况下，用于计算线性预测。

{phang}
{cmd:residuals} 计算残差，即矩条件的预测值。此选项要求新变量列表的长度等于矩条件的数量 {it:q}。否则，使用 
{it:stub}{cmd:*} 让 {cmd:predict} 生成带有前缀 {it:stub} 的编号变量。如果未指定 {cmd:equation()}，第 j 个新变量将包含第 j 个矩条件的残差。

{phang}
{cmd:equation(#}{it:eqno}{c |}{it:eqname}{cmd:)} 指定所需的残差或线性预测的方程。指定的方程可以是模型方程或矩方程。

{pmore}
如果指定了 {cmd:xb}，则 {cmd:equation()} 用于指定模型中的方程。指定 {cmd:equation(#1)} 表示计算将用于第一个模型方程。指定 {cmd:equation(demand)} 则表示计算将用于名为 {cmd:demand} 的模型方程，假设模型中存在名为 {cmd:demand} 的方程。

{pmore}
如果指定了 {cmd:residuals}，则 {cmd:equation()} 用于指定矩方程。指定 {cmd:equation(#1)} 表示计算将用于第一个矩方程。指定 {cmd:equation(demand)} 则表示计算将用于名为 {cmd:demand} 的矩方程，假设模型中存在名为 {cmd:demand} 的矩方程。

{pmore}
如果你指定了一个新变量名并省略了 {cmd:equation()}，结果与指定 {cmd:equation(#1)} 相同。

{pmore}
有关在多方程估计命令后使用 {cmd:predict} 的更多信息，请参阅 {manhelp predict R}。

{phang}
{cmd:scores} 计算参数级评分方程，即 GMM 准则函数对参数的第一导数，乘以 -0.5。此选项要求新变量列表的长度等于参数数量 {it:p}。否则，使用 
{it:stub}{cmd:*} 让 {cmd:predict} 生成带有前缀 {it:stub} 的编号变量。第 j 个新变量将包含第 j 个模型的评分。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt xb}}线性预测；默认{p_end}
{synopt :{opt r:esiduals}}与 {cmd:margins} 不允许共用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt xb} 默认为第一个方程。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计线性预测的响应边际。


{marker syntax_estat_overid}{...}
{marker estatoverid}{...}
{title:estat overid 的语法}

{p 8 16 2}
{cmd:estat} {cmdab:over:id} 


INCLUDE help menu_estat


{marker des_estat}{...}
{title:estat 的描述}

{pstd}
{cmd:estat overid} 报告汉森的 J 统计量，用于确定 GMM 模型中过度识别限制的有效性。如果模型在 E{{bf:z}_i'u_i({bf:b})} = {bf:0} 的意义上被正确指定，那么该条件的样本类比应该在估计的 {bf:b} 值下成立。仅当权重矩阵是最优的，意味着它等于矩条件协方差矩阵的逆时，汉森的 J 统计量是有效的。因此，在两步或迭代估计之后，或如果在调用 {cmd:gmm} 时指定了 {opt winitial(matname)}，{cmd:estat overid} 仅报告汉森的 J 统计量。在后者情况下，确定 J 统计量的有效性由你负责。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse probitgmm}{p_end}
{phang2}{cmd:. gmm ((y - normal({y: x _cons}))*(-x*normalden({y:})))}
              {cmd:((y - normal({y:}))*(-1*normalden({y:})))}
              {cmd:, winitial(identity) onestep}{p_end}

{pstd}估计成功的边际概率并给出无条件标准误{p_end}
{phang2}{cmd:. margins, expression(normal(xb())) vce(unconditional)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse supDem}{p_end}
{phang2}{cmd:. global demand "demand: quantity - {xb1:price pcompete income} - {b0}"}{p_end}
{phang2}{cmd:. global supply "supply: quantity - {xb2:price praw} - {c0}"}{p_end}
{phang2}{cmd:. gmm ($demand) ($supply), wmatrix(robust)}
        {cmd:inst(demand:praw pcompete income)}
        {cmd:inst(supply:praw pcompete income) winit(unadj,indep)}
        {cmd:deriv(1/xb1 = -1) deriv(1/b0 = -1)}
        {cmd:deriv(2/xb2 = -1) deriv(2/c0 = -1) twostep}{p_end}

{pstd}获取供应方程的残差{p_end}
{phang2}{cmd:. predict rhat, equation(xb2)}{p_end}

{pstd}获取所有方程的残差，并将其存储为双精度{p_end}
{phang2}{cmd:. predict double r*, residuals}{p_end}

{pstd}与上述相同{p_end}
{phang2}{cmd:. predict double s1 double s2, residuals}{p_end}

{pstd}检验过度识别限制是否有效{p_end}
{phang2}{cmd:. estat overid}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat overid} 将以下内容存储在 {cmd:r()} 中：

{synoptset 10 tabbed}{...}
{p2col 5 10 14 2: 标量}{p_end}
{synopt:{cmd:r(J)}}汉森的 J 统计量{p_end}
{synopt:{cmd:r(J_df)}}J 统计量的自由度{p_end}
{synopt:{cmd:r(J_p)}}J 统计量的 p 值{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gmm_postestimation.sthlp>}