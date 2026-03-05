{smcl}
{* *! version 1.3.7  15mar2019}{...}
{viewerdialog xtreg "dialog xtreg"}{...}
{vieweralsosee "[XT] xtreg" "mansection XT xtreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtreg postestimation" "help xtreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] areg" "help areg_zh"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{vieweralsosee "[ME] mixed" "help mixed_zh"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[TS] prais" "help prais_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[SP] spxtregress" "help spxtregress_zh"}{...}
{vieweralsosee "[XT] xteregress" "help xteregress"}{...}
{vieweralsosee "[XT] xtgee" "help xtgee_zh"}{...}
{vieweralsosee "[XT] xtgls" "help xtgls_zh"}{...}
{vieweralsosee "[XT] xtheckman" "help xtheckman_zh"}{...}
{vieweralsosee "[XT] xtivreg" "help xtivreg_zh"}{...}
{vieweralsosee "[XT] xtregar" "help xtregar_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xtreg_zh##syntax"}{...}
{viewerjumpto "Menu" "xtreg_zh##menu"}{...}
{viewerjumpto "Description" "xtreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtreg_zh##linkspdf"}{...}
{viewerjumpto "Options for RE model" "xtreg_zh##options_re"}{...}
{viewerjumpto "Options for BE model" "xtreg_zh##options_be"}{...}
{viewerjumpto "Options for FE model" "xtreg_zh##options_fe"}{...}
{viewerjumpto "Options for MLE model" "xtreg_zh##options_mle"}{...}
{viewerjumpto "Options for PA model" "xtreg_zh##options_pa"}{...}
{viewerjumpto "Examples" "xtreg_zh##examples"}{...}
{viewerjumpto "Stored results" "xtreg_zh##results"}
{help xtreg:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[XT] xtreg} {hline 2}}固定效应、随机效应及总体平均线性模型{p_end}
{p2col:}({mansection XT xtreg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
GLS 随机效应（RE）模型

{p 8 16 2}{cmd:xtreg} {depvar} [{indepvars}] {ifin}
[{cmd:, re} {it:{help xtreg##reoptions:RE_options}}]


{phang}
介于效应（BE）模型

{p 8 16 2}{cmd:xtreg} {depvar} [{indepvars}] {ifin}
{cmd:, be} [{it:{help xtreg##beoptions:BE_options}}]


{phang}
固定效应（FE）模型

{p 8 16 2}{cmd:xtreg} {depvar} [{indepvars}] {ifin}
[{it:{help xtreg##weight:weight}}]
{cmd:, fe} [{it:{help xtreg##feoptions:FE_options}}]


{phang}
最大似然随机效应（MLE）模型

{p 8 16 2}{cmd:xtreg} {depvar} [{indepvars}] {ifin}
[{it:{help xtreg##weight:weight}}]
{cmd:, mle} [{it:{help xtreg##mleoptions:MLE_options}}]


{phang}
总体平均（PA）模型

{p 8 16 2}{cmd:xtreg} {depvar} [{indepvars}] {ifin}
[{it:{help xtreg##weight:weight}}]
{cmd:, pa} [{it:{help xtreg##paoptions:PA_options}}]


{marker reoptions}{...}
{synoptset 20 tabbed}{...}
{synopthdr :RE_options}
{synoptline}
{syntab:模型}
{synopt :{opt re}}使用随机效应估计；默认值{p_end}
{synopt :{opt sa}}使用 Swamy-Arora 方差成分的小样本估计量{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt conventional}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt th:eta}}报告 theta{p_end}
{synopt :{it:{help xtreg##re_display_options:display_options}}}控制
包含帮助简短描述-displayoptall

包含帮助简短描述-coeflegend
{synoptline}
{p2colreset}{...}

{marker beoptions}{...}
{synoptset 20 tabbed}{...}
{synopthdr :BE_options}
{synoptline}
{syntab:模型}
{synopt :{opt be}}请求使用介于效应估计{p_end}
{synopt :{opt w:ls}}请求使用加权最小二乘法{p_end}

{syntab:标准误}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt conventional}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{it:{help xtreg##be_display_options:display_options}}}控制
包含帮助简短描述-displayoptall

包含帮助简短描述-coeflegend
{synoptline}
{p2colreset}{...}

{marker feoptions}{...}
{synoptset 20 tabbed}{...}
{synopthdr :FE_options}
{synoptline}
{syntab:模型}
{synopt :{opt fe}}请求使用固定效应估计{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt conventional}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{it:{help xtreg##fe_display_options:display_options}}}控制
包含帮助简短描述-displayoptall

包含帮助简短描述-coeflegend
{synoptline}
{p2colreset}{...}

{marker mleoptions}{...}
{synoptset 20 tabbed}{...}
{synopthdr :MLE_options}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt mle}}请求使用最大似然随机效应估计{p_end}

{syntab:标准误}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{it:{help xtreg##mle_display_options:display_options}}}控制
包含帮助简短描述-displayoptall

{syntab:最大化}
{synopt :{it:{help xtreg##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

包含帮助简短描述-coeflegend
{synoptline}
{p2colreset}{...}

{marker paoptions}{...}
{synoptset 20 tabbed}{...}
{synopthdr:PA_options}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt pa}}请求使用总体平均估计。对于线性回归，这与随机效应估计相同（两者的解释均成立）。

{pmore}
{cmd:xtreg, pa} 相当于 {cmd:xtgee, family(gaussian) link(id) corr(exchangeable)}，它们是 {cmd:xtgee} 命令的默认值。{cmd:xtreg, pa} 允许所有相关的 {cmd:xtgee} 选项，如 {cmd:vce(robust)}。使用 {cmd:xtreg, pa} 或 {cmd:xtgee} 没有什么区别。请参阅 {manhelp xtgee XT}。

{phang}
{opth offset(varname)}；见 {helpb estimation options##offset():[R] 估计选项}。

{dlgtab:相关性}

{phang}
{opt corr(correlation)} 指定组内相关性结构；默认值对应于相等相关模型，{cmd:corr(exchangeable)}。

{pmore}
当您指定一个需要滞后的相关性结构时，您可以在结构名称后面指明滞后，带或不带空格，例如，{cmd:corr(ar 1)} 或 {cmd:corr(ar1)}。

{pmore}
如果您指定固定的相关性结构，则在单词 {cmd:fixed} 后面指定包含假定相关性的矩阵的名称，例如，{cmd:corr(fixed myr)}。

{phang}
{opt force} 指定即使时间变量不均匀间隔也要强制估计。只有对于需要知道时间变量的相关性结构，这才相关。这些相关性结构要求观察值均匀间隔，以便基于滞后的计算相应于一个恒定的时间变化。如果您指定了一个时间变量，表明观察值不均匀间隔，则不会拟合该（时间依赖）模型。如果您同时指定了 {opt force}，将在拟合模型，并假定基于按时间变量排序的数据的滞后是合适的。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误的类型，其中包括从渐近理论（{cmd:conventional}）导出的类型，以及使用自助法或划痕法（{cmd:bootstrap}、{cmd:jackknife}）；见 {help xt_vce_options_zh:[XT] {it:vce_options}}。

{pmore}
{cmd:vce(conventional)}，默认情况下，使用常规方式导出的方差估计器进行广义最小二乘法回归。

{phang}
{opt nmp}；见 {help xt_vce_options_zh:[XT] {it:vce_options}}。

{phang}
{opt rgf} 指定稳健方差估计乘以 (N-1)/(N-P)，其中 N 是观察值的总数，P 是估计的系数数。只有在 {cmd:vce(robust)} 被指定或通过使用 {opt pweight}s 隐含时，此选项才能与 {cmd:family(gaussian)} 一起使用。使用此选项意味着稳健方差估计对所用权重的规模不是不变的。

{phang}
{cmd:scale(x2}|{cmd:dev}|{cmd:phi}|{it:#}{cmd:)}；见 {help xt_vce_options_zh:[XT] {it:vce_options}}。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{marker pa_display_options}{...}
包含帮助显示选项列表

{pstd}
以下选项可与 {opt xtreg} 一起使用，但在对话框中未显示：

{phang}
{opt coeflegend}；见 {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nlswork}{p_end}
{phang2}{cmd:. xtset idcode}{p_end}

{pstd}介于效应模型{p_end}
{phang2}{cmd:. xtreg ln_w grade age c.age#c.age ttl_exp c.ttl_exp#c.ttl_exp}
   {cmd:tenure c.tenure#c.tenure 2.race not_smsa south, be}

{pstd}如果不使用因子变量，则额外设置{p_end}
{phang2}{cmd:. generate age2 = age^2}{p_end}
{phang2}{cmd:. generate ttl_exp2 = ttl_exp^2}{p_end}
{phang2}{cmd:. generate tenure2 = tenure^2}{p_end}
{phang2}{cmd:. generate byte black = (race==2)}{p_end}

{pstd}与上述相同的介于效应模型，但不使用因子变量{p_end}
{phang2}{cmd:. xtreg ln_w grade age* ttl_exp* tenure* black not_smsa south, be}
{p_end}

{pstd}固定效应模型{p_end}
{phang2}{cmd:. xtreg ln_w grade age c.age#c.age ttl_exp c.ttl_exp#c.ttl_exp}
   {cmd:tenure c.tenure#c.tenure 2.race not_smsa south, fe}

{pstd}具有稳健方差的固定效应模型{p_end}
{phang2}{cmd:. xtreg ln_w grade age c.age#c.age ttl_exp c.ttl_exp#c.ttl_exp}
   {cmd:tenure c.tenure#c.tenure 2.race not_smsa south, fe vce(robust)}

{pstd}随机效应模型{p_end}
{phang2}{cmd:. xtreg ln_w grade age c.age#c.age ttl_exp c.ttl_exp#c.ttl_exp}
   {cmd:tenure c.tenure#c.tenure 2.race not_smsa south, re theta}

{pstd}使用最大似然估计量的随机效应模型{p_end}
{phang2}{cmd:. xtreg ln_w grade age c.age#c.age ttl_exp c.ttl_exp#c.ttl_exp}
   {cmd:tenure c.tenure#c.tenure 2.race not_smsa south, mle}

{pstd}总体平均模型{p_end}
{phang2}{cmd:. xtreg ln_w grade age c.age#c.age ttl_exp c.ttl_exp#c.ttl_exp}
    {cmd:tenure c.tenure#c.tenure 2.race not_smsa south, pa}

    {hline}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:xtreg, re} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(Tcon)}}{cmd:1} 如果 T 恒定{p_end}
{synopt:{cmd:e(sigma)}}附加参数 ({cmd:gamma}, {cmd:lnormal}){p_end}
{synopt:{cmd:e(sigma_u)}}面板级标准差{p_end}
{synopt:{cmd:e(sigma_e)}}epsilon_it 的标准差{p_end}
{synopt:{cmd:e(r2_w)}}模型内 R 平方{p_end}
{synopt:{cmd:e(r2_o)}}整体模型 R 平方{p_end}
{synopt:{cmd:e(r2_b)}}模型间 R 平方{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(thta_min)}}最小 theta{p_end}
{synopt:{cmd:e(thta_5)}}theta，第 5 百分位{p_end}
{synopt:{cmd:e(thta_50)}}theta，第 50 百分位{p_end}
{synopt:{cmd:e(thta_95)}}theta，第 95 百分位{p_end}
{synopt:{cmd:e(thta_max)}}最大 theta{p_end}
{synopt:{cmd:e(rmse)}}GLS 回归的均方根误差{p_end}
{synopt:{cmd:e(Tbar)}}组大小的调和平均数{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:re}{p_end}
{synopt:{cmd:e(clustvar)}}集群变量的名称{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(sa)}}{cmd:sa}，如果指定{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(bf)}}固定效应模型的系数向量{p_end}
{synopt:{cmd:e(theta)}}theta{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(VCEf)}}固定效应模型的 VCE{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}


{pstd}
{cmd:xtreg, be} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(mss)}}模型平方和{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(rss)}}残差平方和{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}对数似然，只有常数的模型{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(Tcon)}}{cmd:1} 如果 T 恒定{p_end}
{synopt:{cmd:e(r2)}}R 平方{p_end}
{synopt:{cmd:e(r2_a)}}调整后的 R 平方{p_end}
{synopt:{cmd:e(r2_w)}}模型内 R 平方{p_end}
{synopt:{cmd:e(r2_o)}}整体模型 R 平方{p_end}
{synopt:{cmd:e(r2_b)}}模型间 R 平方{p_end}
{synopt:{cmd:e(F)}}F 统计量{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(rmse)}}均方根误差{p_end}
{synopt:{cmd:e(Tbar)}}组大小的调和平均数{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:be}{p_end}
{synopt:{cmd:e(typ)}}{cmd:WLS}，如果指定了 {cmd:wls}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}


{pstd}
{cmd:xtreg, fe} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(mss)}}模型平方和{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(rss)}}残差平方和{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(tss)}}总平方和{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(Tcon)}}{cmd:1} 如果 T 恒定{p_end}
{synopt:{cmd:e(sigma)}}附加参数 ({cmd:gamma}, {cmd:lnormal}){p_end}
{synopt:{cmd:e(corr)}}corr(u_i, Xb){p_end}
{synopt:{cmd:e(sigma_u)}}面板级标准差{p_end}
{synopt:{cmd:e(sigma_e)}}标准差 epsilon_it{p_end}
{synopt:{cmd:e(r2)}}R 平方{p_end}
{synopt:{cmd:e(r2_a)}}调整后的 R 平方{p_end}
{synopt:{cmd:e(r2_w)}}模型内 R 平方{p_end}
{synopt:{cmd:e(r2_o)}}整体模型 R 平方{p_end}
{synopt:{cmd:e(r2_b)}}模型间 R 平方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}对数似然，常数模型{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(F)}}F 统计量{p_end}
{synopt:{cmd:e(F_f)}}测试 u_i=0 的 F 统计量{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(p_f)}}测试 u_i=0 的 p 值{p_end}
{synopt:{cmd:e(df_a)}}被吸收效应的自由度{p_end}
{synopt:{cmd:e(df_b)}}F 统计量的分子自由度{p_end}
{synopt:{cmd:e(rmse)}}均方根误差{p_end}
{synopt:{cmd:e(Tbar)}}组大小的调和平均数{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:fe}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(clustvar)}}集群变量的名称{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}


{pstd}
{cmd:xtreg, mle} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(sigma_u)}}面板级标准差{p_end}
{synopt:{cmd:e(sigma_e)}}标准差 epsilon_it{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}对数似然，常数模型{p_end}
{synopt:{cmd:e(ll_c)}}对数似然，比较模型{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较检验的卡方{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:ml}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald} 或 {cmd:LR}；与 {cmd:e(chi2_c)} 对应的模型卡方检验{p_end}
{synopt:{cmd:e(distrib)}}{cmd:Gaussian}；RE 的分布{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtreg.sthlp>}