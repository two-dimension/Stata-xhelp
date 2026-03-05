{smcl}
{* *! version 1.0.6  13feb2019}{...}
{viewerdialog predict "dialog menl_p"}{...}
{viewerdialog estat "dialog menl_estat"}{...}
{vieweralsosee "[ME] menl postestimation" "mansection ME menlpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] menl" "help menl_zh"}{...}
{viewerjumpto "后期估计命令" "menl_postestimation_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "menl_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "menl_postestimation_zh##syntax_predict"}{...}
{viewerjumpto "边际" "menl_postestimation_zh##syntax_margins"}{...}
{viewerjumpto "示例" "menl_postestimation_zh##examples"}
{help menl_postestimation:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[ME] menl postestimation} {hline 2}}menl 的后期估计工具{p_end}
{p2col:}({mansection ME menlpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker description}{...}
{title:后期估计命令}

{pstd}
在 {cmd:menl} 之后，以下后期估计命令特别重要：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat group}}总结嵌套组的组成{p_end}
{synopt :{helpb estat recovariance}}显示估计的随机效应协方差矩阵{p_end}
{synopt :{helpb me estat sd:estat sd}}将方差成分显示为标准差和相关性{p_end}
{synopt :{helpb me estat wcorrelation:estat wcorrelation}}显示组内相关性和标准差{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后期估计命令也可用：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含帮助 post_contrast
包含帮助 post_estatic
包含帮助 post_estatsum
包含帮助 post_estatvce
{synopt :{help estimates_zh}}目录化估计结果{p_end}
{synopt :{helpb mixed_postestimation##lincom:lincom}}线性组合系数的点估计、标准误、检验和推断{p_end}
包含帮助 post_lrtest
{synopt :{helpb menl_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含帮助 post_marginsplot
包含帮助 post_nlcom
{synopt :{helpb menl_postestimation##predict:predict}}预测、残差、影响统计和其他诊断指标{p_end}
包含帮助 post_predictnl
{synopt:{helpb mixed postestimation##pwcompare:pwcompare}}估计的成对比较{p_end}
{synopt :{helpb mixed_postestimation##test:test}}简单和复合线性假设的瓦尔德检验{p_end}
包含帮助 post_testnl
{synoptline}
{p2colreset}{...}

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ME menlpostestimationRemarksandexamples:备注和示例}

        {mansection ME menlpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。

{marker syntax_predict}{...}
{marker predict}{...}
{title:预测语法}

{p 4 4 2}
获取随机效应及其标准误的预测语法

{p 8 16 2}
{cmd:predict}
{dtype}
{{it:{help newvarlist##stub*:stub}}{cmd:*} | {newvar:list}}
{ifin}{cmd:,}
{opt ref:fects}
[{cmd:reses(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {help varlist_zh:{it:newvarlist}}{cmd:)}
{opt relev:el(levelvar)}
{help menl_postestimation##predict_optstable:{it:options}}]

{p 4 4 2}
预测命名的可替代表达式（参数）的语法

        预测特定参数

{p 8 16 2}
{cmd:predict}
{dtype}
{cmd:(}{it:newvar} {cmd:=}
{cmd:{c -(}}{help menl_postestimation##paramnames:{it:param}}{cmd::{c )-})}
[{cmd:(}{it:newvar} {cmd:=}
{cmd:{c -(}}{it:param}{cmd::{c )-})}]
[...]
{ifin}
[{cmd:,} {opt fixed:only}
{opt relev:el(levelvar)}
{it:{help menl_postestimation##predict_optstable:options}}]

{p 8 16 2}
{cmd:predict}
{dtype}
{{it:{help newvarlist##stub*:stub}}{cmd:*} | {newvar:list}}
{ifin}{cmd:,}
{opt param:eters(menl_postestimation##paramnames:paramnames)}
[{opt fixed:only}
{opt relev:el(levelvar)}
{it:{help menl_postestimation##predict_optstable:options}}]

        预测所有参数

{p 8 16 2}
{cmd:predict}
{dtype}
{{it:{help newvarlist##stub*:stub}}{cmd:*} | {newvar:list}}
{ifin}{cmd:,}
{opt param:eters}
[{opt fixed:only} {opt relev:el(levelvar)}
{it:{help menl_postestimation##predict_optstable:options}}]

{pstd}
获取其他预测的语法

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin} 
[{cmd:,}
{it:{help menl_postestimation##statistic:statistic}} {opt fixed:only} {opt relev:el(levelvar)}
{it:{help menl_postestimation##predict_optstable:options}}]

{marker paramnames}{...}
{phang}
{it:paramnames} 是 {it:param} [{it:param} [...]]，且 {it:param} 是在 {opt menl} 的 {opt define()} 选项之一中指定的可替代表达式名称。

{marker statistic}{...}
{synoptset 25 tabbed}{...}
{synopthdr :统计量}
{synoptline}
{syntab: 主}
{synopt :{opt yhat}}条件于随机效应的期望响应的预测{p_end}
{synopt :{opt mu}}{opt yhat} 的同义词{p_end}
{synopt :{opt res:iduals}}残差，响应减去预测值{p_end}
{p2coldent :* {opt rsta:ndard}}标准化残差{p_end}
{synoptline}
包含帮助 unstarred

{marker predict_optstable}{...}
{synopthdr}
{synoptline}
{syntab: 主}
{synopt :{opt iter:ate(#)}}计算随机效应时的最大迭代次数；默认为 {cmd:iterate(10)}{p_end}
{synopt :{opt tol:erance(#)}}计算随机效应时的收敛容忍度；默认为 {cmd:tolerance(1e-6)}{p_end}
{synopt:{opt nrtol:erance(#)}}计算随机效应时的缩放梯度容忍度；默认为 {cmd:nrtolerance(1e-5)}{p_end}
{synopt:{opt nonrtol:erance}}忽略 {opt nrtolerance()} 选项{p_end}
{synoptline}
{p2colreset}{...}

包含帮助 menu_predict

{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含均值、残差或标准化残差的预测的新变量。它还可以创建多个包含随机效应及其标准误的估计的新变量或包含预测的
{help me_glossary##named_subexpr:named substitutable expressions}。

{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt yhat} 计算预测值，即条件于随机效应的均值响应值，mu(x', b, u)。默认情况下，预测值考虑模型中所有层的随机效应；然而，如果指定了 {opt relevel(levelvar)} 选项，则预测值将从最高层开始向下拟合，直到包括层 {it:levelvar}。例如，如果 {opt class} 嵌套在 {opt school} 中，则输入

            {cmd:. predict yhat_school, yhat relevel(school)}

{pmore}
将产生学校层面的预测。即，这些预测将纳入特定学校的随机效应，而不包括每个类在每所学校中的随机效应。如果指定了 {opt fixedonly} 选项，则根据随机效应固定在理论均值 {bf:0} 计算条件于零随机效应的预测值，mu(x', b, 0)。

{phang}
{opt mu} 是 {opt yhat} 的同义词。

{phang}
{opt parameters} 和
{opth parameters:(menl_postestimation##paramnames:paramnames)} 为模型中所有或部分
{help me_glossary##named_subexpr:named substitutable expressions} 计算预测值。默认情况下，预测值考虑模型中所有层的随机效应；然而，如果指定了 {opt relevel(levelvar)} 选项，则预测值将包含从最高层到包括层 {it:levelvar} 的随机效应。选项 {opth parameters:(menl_postestimation##paramnames:param)} 在与 {opt margins} 一起使用时非常有用。 {opt parameters()} 不会出现在对话框中。

{marker reffects}{...}
{phang}
{opt reffects} 计算随机效应的预测。对于 {help menl_zh} 的林德斯特罗姆-贝茨估计方法，这些实际上是在 LME 逼近的对数似然中随机效应的最佳线性无偏预测；详见 {mansection ME menlMethodsandformulasInferencebasedonlinearization:{it:基于线性化的推断}} 在 {manhelp menl ME} 中。默认情况下，计算模型中所有随机效应的估计。然而，如果指定了 {opt relevel(levelvar)} 选项，则仅计算模型中层 {it:levelvar} 的随机效应估计。例如，如果 {opt class} 嵌套在 {opt school} 中，则输入

            {cmd:. predict b*, reffects relevel(school)}

{pmore}
将生成学校层面的估计。您必须指定 {it:q} 个新变量，其中 {it:q} 是模型中随机效应项的数量（或层数）。然而，指定 {it:stub}{cmd:*} 并让 Stata 为您命名变量 {it:stub}{cmd:1}、{it:stub}{cmd:2}、...、{it:stubq} 也要容易得多。

{phang}
{cmd:reses(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {help varlist_zh:{it:newvarlist}}{cmd:)} 计算随机效应估计的标准误。默认情况下，计算模型中所有随机效应的标准误。然而，如果指定了 {opt relevel(levelvar)} 选项，则仅计算模型中层 {it:levelvar} 的随机效应估计的标准误；见 {helpb menl_postestimation##reffects:reffects} 选项。

{pmore}
您必须指定 {it:q} 个新变量，{it:q} 是模型中随机效应项的数量（或层数）。然而，指定 {it:stub}{cmd:*} 并让 Stata 为您命名变量 {it:stub}{cmd:1}、{it:stub}{cmd:2}、...、{it:stubq} 也要容易得多。新变量将与对应的随机效应变量具有相同的存储类型。

{pmore}
{cmd:reffects} 和 {cmd:reses()} 选项通常会同时生成多个新变量。当这种情况发生时，生成变量中包含的随机效应（或标准误）对应于 {cmd:menl} 输出中列出方差分量的顺序。然而，检查生成变量的变量标签（例如使用 {cmd:describe} 命令）可以帮助解码哪些变量对应于模型中的哪些项。

{phang}
{opt residuals} 计算残差，等于响应减去预测值 {opt yhat}。默认情况下，预测值考虑模型中所有层的随机效应；然而，如果指定了 {opt relevel(levelvar)} 选项，则预测值将从最高层向下拟合，直到包括层 {it:levelvar}。

{phang}
{opt rstandard} 计算标准化残差，等于残差乘以估计的误差协方差矩阵的逆平方根。

{phang}
{opt fixedonly} 指定将所有随机效应设置为零，相当于仅使用模型的固定部分。

{phang}
{opt relevel(levelvar)} 指定应在模型中的哪个层次获得涉及随机效应的预测；有关具体信息，请参看上述选项。{it:levelvar} 是模型层的名称；它是描述该层分组的变量的名称。

{phang}
{opt iterate(#)} 指定在计算随机效应估计时的最大迭代次数。默认值为 {cmd:iterate(10)}。该选项仅与依赖于随机效应的预测相关。如果指定了 {cmd:fixedonly} 选项，则不允许使用该选项。

{phang}
{opt tolerance(#)} 指定在计算随机效应估计时的收敛容忍度。默认值为 {cmd:tolerance(1e-6)}。该选项仅与依赖于随机效应的预测相关。如果指定了 {cmd:fixedonly} 选项，则不允许使用该选项。

{phang}
{opt nrtolerance(#)} 和 {opt nonrtolerance} 控制计算随机效应估计时缩放梯度的容忍度。

{phang2}
{opt nrtolerance(#)} 指定缩放梯度的容忍度。当 g(-H^{-1})g' 小于 {opt nrtolerance(#)} 时，声明收敛，其中 g 是梯度行向量，H 是当前迭代的近似 Hessian 矩阵。默认值为 {cmd:nrtolerance(1e-5)}。

{phang2}
{opt nonrtolerance} 指定禁用默认的 {opt nrtolerance()} 标准。

包含帮助 syntax_margins1

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt yhat}}条件于零随机效应的预测值；意味着 {opt fixedonly}; 默认值{p_end}
{synopt :{opth param:eters(menl_postestimation##paramnames:param)}}条件于零随机效应的预测命名可替代表达式 {it:param}；意味着 {cmd:fixedonly}{p_end}
{synopt :{opt ref:fects}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt res:iduals}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt rsta:ndard}}与 {cmd:margins} 不允许使用{p_end}
{synoptline}
{p 4 6 2}与 {cmd:margins} 使用的预测假定为 {cmd:fixedonly} 选项。

包含帮助 notes_margins

包含帮助 menu_margins

{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{opt margins} 估计预测均值或 {help me_glossary##named_subexpr:named substitutable expressions} 的响应边际。

{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse soybean}{p_end}
{phang2}{cmd:. menl weight = {phi1:}/(1+exp(-(time-{phi2:})/{phi3:})),}
{cmd:define(phi1: i.year U1[plot]) define(phi2: i.year i.variety)}
{cmd:define(phi3: i.year) resvariance(power _yhat, noconstant)}

{pstd}检验在绘图中的同方差零假设 {p_end}
{phang2}{cmd:. test _b[/Residual:delta] = 0}{p_end}

{pstd}显示第 2 幅图的估计边际标准差和相关性，并列出数据中对应的观测值{p_end}
{phang2}{cmd:. estat wcorrelation, at(plot=2) list}{p_end}

{pstd}计算条件于零随机效应的预测值{p_end}
{phang2}{cmd:. predict weight_f, yhat fixedonly}{p_end}

{pstd}预测在模型规范中定义的参数 {cmd:phi1}{p_end}
{phang2}{cmd:. predict (phi1 = {phi1:})}{p_end}


    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse wafer, clear}{p_end}
{phang2}{cmd:. menl current = {phi1:}+{phi2}*cos({phi3}*voltage + _pi/4),}
                {cmd:define(phi1: voltage W0[wafer] S0[wafer>site]}
                {cmd:c.voltage#(W1[wafer] S1[wafer>site]))}

{pstd}总结嵌套组的组成{p_end}
{phang2}{cmd:. estat group}{p_end}

{pstd}在 wafer 层级预测随机效应{p_end}
{phang2}{cmd:. predict u_wafer*, reffects relevel(wafer)}{p_end}

{pstd}显示 {cmd:site} 内 {cmd:wafer} 层的估计随机效应协方差矩阵{p_end}
{phang2}{cmd:. estat recovariance, relevel(site)}{p_end}

{pstd}计算在 wafer 层的预测值{p_end}
{phang2}{cmd:. predict curr_wafer, yhat relevel(wafer)}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <menl_postestimation.sthlp>}