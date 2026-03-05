{smcl}
{* *! version 2.2.11  11dec2018}{...}
{viewerdialog qreg "dialog qreg"}{...}
{viewerdialog iqreg "dialog iqreg"}{...}
{viewerdialog sqreg "dialog sqreg"}{...}
{viewerdialog bsqreg "dialog bsqreg"}{...}
{vieweralsosee "[R] qreg" "mansection R qreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] qreg postestimation" "help qreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bootstrap" "help bootstrap_zh"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[R] rreg" "help rreg_zh"}{...}
{viewerjumpto "Syntax" "qreg_zh##syntax"}{...}
{viewerjumpto "Menu" "qreg_zh##menu"}{...}
{viewerjumpto "Description" "qreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "qreg_zh##linkspdf"}{...}
{viewerjumpto "Options for qreg" "qreg_zh##options_qreg"}{...}
{viewerjumpto "Options for iqreg" "qreg_zh##options_iqreg"}{...}
{viewerjumpto "Options for sqreg" "qreg_zh##options_sqreg"}{...}
{viewerjumpto "Options for bsqreg" "qreg_zh##options_bsqreg"}{...}
{viewerjumpto "Examples" "qreg_zh##examples"}{...}
{viewerjumpto "Stored results" "qreg_zh##results"}{...}
{viewerjumpto "References" "qreg_zh##references"}
{help qreg:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[R] qreg} {hline 2}}分位数回归{p_end}
{p2col:}({mansection R qreg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{phang}
分位数回归

{p 8 13 2}
{cmd:qreg} {depvar} [{indepvars}] {ifin} 
[{it:{help qreg##weight:权重}}]
	[{cmd:,} {it:{help qreg##qreg_options:qreg_options}}]

{phang}
分位数间隔回归

{p 8 14 2}
{cmd:iqreg} {depvar} [{indepvars}] {ifin}
	[{cmd:,} {it:{help qreg##iqreg_options:iqreg_options}}]

{phang}
同时分位数回归

{p 8 14 2}
{cmd:sqreg} {depvar} [{indepvars}] {ifin}
	[{cmd:,} {it:{help qreg##sqreg_options:sqreg_options}}]

{phang}
自助法分位数回归

{p 8 15 2}
{cmd:bsqreg} {depvar} [{indepvars}] {ifin}
	[{cmd:,} {it:{help qreg##bsqreg_options:bsqreg_options}}]

{synoptset 26 tabbed}{...}
{marker qreg_options}{...}
{synopthdr :qreg_options}
{synoptline}
{syntab :模型}
{synopt :{opt q:uantile(#)}}估计 {it:#} 分位数；默认值为 {cmd:quantile(.5)}{p_end}

{syntab:标准误/鲁棒性}
{synopt :{cmd:vce(}[{it:{help qreg##qreg_vcetype:vcetype}}]{cmd:,} [{it:{help qreg##qreg_vceopts:vceopts}}]{cmd:)}}用于估计标准误的方法{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{it:{help qreg##qreg_display_options:display_options}}}控制
包含帮助短描述-displayoptall

{syntab :优化}
{synopt :{it:{help qreg##qreg_optimize:optimization_options}}}控制优化过程；极少使用{p_end}
{synopt :{opt wls:iter(#)}}在进行线性规划迭代之前尝试 {it:#} 加权最小二乘法迭代{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 26}{...}
{marker qreg_vcetype}{...}
{synopthdr :vcetype}
{synoptline}
{synopt :{opt iid}}假定残差是独立同分布（i.i.d.）计算 VCE{p_end}
{synopt :{opt r:obust}}计算鲁棒 VCE{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 26}{...}
{marker qreg_vceopts}{...}
{synopthdr :vceopts}
{synoptline}
{synopt :{it:{help qreg##qreg_method:denmethod}}}非参数密度估计方法{p_end}
{synopt :{it:{help qreg##qreg_bwidth:bwidth}}}密度估计器使用的带宽方法{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 26}{...}
{marker qreg_method}{...}
{synopthdr :denmethod}
{synoptline}
{synopt :{opt fit:ted}}使用拟合值的经验分位数函数；为默认值{p_end}
{synopt :{opt res:idual}}使用经验残差分位数函数{p_end}
{synopt :{opt ker:nel}[{cmd:(}{it:{help qreg##qreg_kernel:kernel}}{cmd:)}]}使用非参数核密度估计器；默认值为 {cmd:epanechnikov}{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 26}{...}
{marker qreg_bwidth}{...}
{synopthdr :bwidth}
{synoptline}
{synopt :{opt hs:heather}}Hall-Sheather 带宽；为默认值{p_end}
{synopt :{opt bo:finger}}Bofinger 带宽{p_end}
{synopt :{opt ch:amberlain}}Chamberlain 带宽{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 26}{...}
{marker qreg_kernel}{...}
{synopthdr :kernel}
{synoptline}
{synopt :{opt ep:anechnikov}}Epanechnikov 核函数；为默认值{p_end}
{synopt :{opt epan2}}替代 Epanechnikov 核函数{p_end}
{synopt :{opt bi:weight}}双权重核函数{p_end}
{synopt :{opt cos:ine}}余弦踪迹核函数{p_end}
{synopt :{opt gau:ssian}}高斯核函数{p_end}
{synopt :{opt par:zen}}Parzen 核函数{p_end}
{synopt :{opt rec:tangle}}矩形核函数{p_end}
{synopt :{opt tri:angle}}三角核函数{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 26 tabbed}{...}
{marker iqreg_options}{...}
{synopthdr :iqreg_options}
{synoptline}
{syntab :模型}
{synopt :{opt q:uantiles(# #)}}分位数间隔；默认值为 {bind:{cmd:quantiles(.25 .75)}}{p_end}
{synopt :{opt r:eps(#)}}执行 {it:#} 自助法复制；默认值为 {cmd:reps(20)}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nod:ots}}抑制复制点的显示{p_end}
{synopt :{it:{help qreg##iqreg_display_options:display_options}}}控制
包含帮助短描述-displayoptall
{synoptline}
{p2colreset}{...}

{synoptset 26 tabbed}{...}
{marker sqreg_options}{...}
{synopthdr :sqreg_options}
{synoptline}
{syntab :模型}
{synopt :{cmdab:q:uantiles(}{it:#}[{it:#}[{it:# ...}]]{cmd:)}}估计 {it:#} 分位数；默认值为 {cmd:quantiles(.5)}{p_end}
{synopt :{opt r:eps(#)}}执行 {it:#} 自助法复制；默认值为 {cmd:reps(20)}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nod:ots}}抑制复制点的显示{p_end}
{synopt :{it:{help qreg##sqreg_display_options:display_options}}}控制
包含帮助短描述-displayoptall
{synoptline}
{p2colreset}{...}

{synoptset 26 tabbed}{...}
{marker bsqreg_options}{...}
{synopthdr :bsqreg_options}
{synoptline}
{syntab :模型}
{synopt :{opt q:uantile(#)}}估计 {it:#} 分位数；默认值为 {cmd:quantile(.5)}{p_end}
{synopt :{opt r:eps(#)}}执行 {it:#} 自助法复制；默认值为 {cmd:reps(20)}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{it:{help qreg##bsqreg_display_options:display_options}}}控制
包含帮助短描述-displayoptall
{synoptline}
{p2colreset}{...}

包含帮助 fvvarlist
{phang}{cmd:by}、{cmd:mi estimate}、{cmd:rolling}和 {cmd:statsby}
允许与 {cmd:qreg}、{cmd:iqreg}、{cmd:sqreg} 和 {cmd:bsqreg} 一起使用；
{opt mfp}、{cmd:nestreg} 和
{cmd:stepwise} 允许与 {cmd:qreg} 一起使用；请参见 {help prefix_zh}.{p_end}
{marker weight}{...}
{phang}{cmd:qreg} 允许使用 {cmd:fweight}、{cmd:iweight} 和
{cmd:pweight}；请参阅 {help weight_zh}.{p_end}
{phang}请参见 {manhelp qreg_postestimation R:qreg postestimation} 获取估计后可用的功能。

{marker menu}{...}
{title:菜单}

    {title:qreg}

{phang2}
{bf:统计 > 非参数分析 > 分位数回归}

    {title:iqreg}

{phang2}
{bf:统计 > 非参数分析 > 分位数间隔回归}

    {title:sqreg}

{phang2}
{bf:统计 > 非参数分析 > 同时分位数回归}

    {title:bsqreg}

{phang2}
{bf:统计 > 非参数分析 > 自助法分位数回归}

{marker description}{...}
{title:描述}

{pstd}
{cmd:qreg} 拟合分位数（包括中位数）回归模型，也称为最小绝对值模型（LAV 或 MAD）和最小 L1 范数模型。
由 {cmd:qreg} 拟合的分位数回归模型将条件分布的分位数表示为自变量的线性函数。

{pstd}
{cmd:iqreg} 估计分位数间隔回归，即分位数之差的回归。通过自助法获得估计量的方差-协方差矩阵（VCE）。

{pstd}
{cmd:sqreg} 估计同时分位数回归。对于每个分位数，它产生与 {cmd:qreg} 相同的系数。报告的标准误将类似，但 {cmd:sqreg} 通过自助法获得 VCE 的估计，VCE 包括分位数之间的块。因此，您可以测试和构建比较描述不同分位数系数的置信区间。

{pstd}
{cmd:bsqreg} 与 {cmd:sqreg} 等价，只不过只估计一个分位数。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R qregQuickstart:快速入门}

        {mansection R qregRemarksandexamples:备注和示例}

        {mansection R qregMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文档中。

{marker options_qreg}{...}
{title:qreg 选项}

{dlgtab:模型}

{phang}{opt quantile(#)}指定要估计的分位数，必须是 0 和 1 之间的数字（不包含这两个值）。大于 1 的数字被解释为百分比。默认值 0.5 对应于中位数。

{dlgtab:标准误/鲁棒性}

{phang}{cmd:vce(}[{it:vcetype}]{cmd:,} [{it:vceopts}]{cmd:)}指定要计算的 VCE 类型以及用于计算 VCE 的密度估计方法。

{phang2}
{it:vcetype} 指定要计算的 VCE 类型。可用的类型有 {cmd:iid} 和 {cmd:robust}。

{phang3}
{cmd:vce(iid)}，为默认配置，假定残差独立同分布（i.i.d.）来计算 VCE。

{phang3}
{cmd:vce(robust)}假定指定的 {cmd:quantile()} 处的残差密度连续且远离 0 和无穷大，计算鲁棒 VCE；参见
{help qreg##K2005:Koenker (2005, 第 4.2 节)}。

{phang2}
{it:vceopts} 包含可用的 {it:denmethod} 和 {it:bwidth} 选项。

{phang3}
{it:denmethod} 指定用于非参数密度估计器的方法。可用的方法为 {cmd:fitted}、{cmd:residual} 或 {cmd:kernel}[{cmd:(}{it:kernel}{cmd:)}]，其中可选的 {it:kernel} 必须是下面列出的核选项之一。

{p 16 20 2}{cmd:fitted} 和 {cmd:residual} 指定非参数密度估计器使用分位数回归施加的某些结构。默认值 {cmd:fitted} 使用拟合值的函数，而 {cmd:residual} 使用残差的函数。{cmd:vce(robust, residual)}是不被允许的。

{p 16 20 2}{cmd:kernel()} 指定非参数密度估计器使用核方法。可用的核函数为 {cmd:epanechnikov}、{cmd:epan2}、{cmd:biweight}、{cmd:cosine}、{cmd:gaussian}、{cmd:parzen}、{cmd:rectangle} 和 {cmd:triangle}。默认值为 {cmd:epanechnikov}。请参见 {manlink R kdensity} 获取核函数形式的更多信息。

{phang3}
{it:bwidth} 指定非参数密度估计器使用的带宽方法。可用的方法为 {cmd:hsheather} 用于 Hall-Sheather 带宽，{cmd:bofinger} 用于 Bofinger 带宽，以及 {cmd:chamberlain} 用于 Chamberlain 带宽。

{pmore2}参见 {help qreg##K2005:Koenker (2005, 第 3.4 和 4.10 节)} 获取稀疏性估计技术和 Hall-Sheather 及 Bofinger 带宽公式的描述。见 {help qreg##C1994:Chamberlain (1994, 方程 2.2)} 获取 Chamberlain 带宽的信息。

{dlgtab:报告}

{phang}{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{marker qreg_display_options}{...}
包含帮助 displayopts_list

{marker qreg_optimize}{...}
{dlgtab:优化}

{phang}{it:optimization_options}: {opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}。{opt iterate()} 指定最大迭代次数；{opt log}/{opt nolog} 指定是否显示迭代日志（见 {cmd:set iterlog} 在 {manhelpi set_iter R:set iter} 中）；{opt trace} 指定迭代日志应包含当前参数向量。这些选项很少使用。

{phang}{opt wlsiter(#)} 指定将在进行线性编程迭代之前尝试的加权最小二乘法迭代的数量。默认值为 1。如果有收敛问题，增加此数字应该会有所帮助。

{marker options_iqreg}{...}
{title:iqreg 选项}

{dlgtab:模型}

{phang}{opt quantiles(# #)} 指定要比较的分位数。第一个数字必须小于第二个，两者都应在 0 和 1 之间（不包括这两个值）。大于 1 的数字被解释为百分比。不指定此选项等同于指定 {bind:{cmd:quantiles(.25 .75)}}, 意味着分位数间隔。

{phang}{opt reps(#)} 指定要用于估计估计量方差-协方差矩阵（标准误）的自助法复制次数。默认值 {cmd:reps(20)} 被认为太小。{cmd:reps(100)} 将执行 100 次自助法复制。{cmd:reps(1000)} 将执行 1,000 次复制。

{dlgtab:报告}

{phang}{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{phang}{opt nodots} 抑制复制点的显示。

{marker iqreg_display_options}{...}
包含帮助 displayopts_list

{marker options_sqreg}{...}
{title:sqreg 选项}

{dlgtab:模型}

{phang}{cmd:quantiles(}{it:#} [{it:#} [{it:#} {it:...}]]{cmd:)} 指定要估计的分位数，应该包含 0 和 1 之间的数字（不包括这两个值）。大于 1 的数字被解释为百分比。默认值 0.5 对应于中位数。

{phang}{opt reps(#)}指定要用于估计估计量方差-协方差矩阵（标准误）的自助法复制次数。默认值 {cmd:reps(20)} 被认为太小。{cmd:reps(100)} 将执行 100 次自助法复制。{cmd:reps(1000)} 将执行 1,000 次复制。

{dlgtab:报告}

{phang}{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{phang}{opt nodots} 抑制复制点的显示。

{marker sqreg_display_options}{...}
包含帮助 displayopts_list

{marker options_bsqreg}{...}
{title:bsqreg 选项}

{dlgtab:模型}

{phang}{opt quantile(#)} 指定要估计的分位数，必须是 0 和 1 之间的数字（不包括这两个值）。大于 1 的数字被解释为百分比。默认值 0.5 对应于中位数。

{phang}{opt reps(#)} 指定要用于估计估计量方差-协方差矩阵（标准误）的自助法复制次数。默认值 {cmd:reps(20)} 被认为太小。{cmd:reps(100)} 将执行 100 次自助法复制。{cmd:reps(1000)} 将执行 1,000 次复制。

{dlgtab:报告}

{phang}{opt level(#)}； 
{helpb estimation options##level():[R] 估计选项}。

{marker bsqreg_display_options}{...}
包含帮助 displayopts_list

{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}中位数回归{p_end}
{phang2}{cmd:. qreg price weight length foreign}{p_end}

{pstd}重放结果{p_end}
{phang2}{cmd:. qreg}{p_end}

{pstd}使用 Bofinger 带宽方法估计 0.25 分位数{p_end}
{phang2}{cmd:. qreg price weight length foreign, quantile(.25) vce(iid, bofinger)}{p_end}

{pstd}使用 Parzen 核密度估计器和 Chamberlain 带宽方法估计 0.75 分位数{p_end}
{phang2}{cmd:. qreg price weight length foreign, quantile(.75)}{cmd: vce(iid, kernel(parzen) chamberlain)}{p_end}

{pstd}估计 [0.25, 0.75] 分位数间隔，执行 100 次自助法复制{p_end}
{phang2}{cmd:. iqreg price weight length foreign, quantile(.25 .75) reps(100)}{p_end}

{pstd}与上面的结果相同{p_end}
{phang2}{cmd:. iqreg price weight length foreign, reps(100)}{p_end}

{pstd}同时估计 0.25、0.5 和 0.75 分位数，执行 100 次自助法复制{p_end}
{phang2}{cmd:. sqreg price weight length foreign, quantile(.25 .5 .75) reps(100)}{p_end}

{pstd}带有自助法标准误的中位数回归{p_end}
{phang2}{cmd:. bsqreg price weight length foreign}{p_end}

{pstd}估计 0.75 分位数并带有自助法标准误{p_end}
{phang2}{cmd:. bsqreg price weight length foreign, quantile(.75)}{p_end}
    {hline}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:qreg} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察次数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(q)}}请求的分位数{p_end}
{synopt:{cmd:e(q_v)}}分位数的值{p_end}
{synopt:{cmd:e(sum_adev)}}绝对偏差之和{p_end}
{synopt:{cmd:e(sum_rdev)}}原始偏差之和{p_end}
{synopt:{cmd:e(sum_w)}}权重之和{p_end}
{synopt:{cmd:e(f_r)}}密度估计{p_end}
{synopt:{cmd:e(sparsity)}}稀疏性估计{p_end}
{synopt:{cmd:e(bwidth)}}带宽{p_end}
{synopt:{cmd:e(kbwidth)}}核带宽{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(convcode)}}如果收敛则为 {cmd:0}；否则为非收敛原因的返回代码{p_end}

{p2col 5 20 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:qreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(bwmethod)}}带宽方法； {cmd:hsheather}、 {cmd:bofinger} 或 {cmd:chamberlain}{p_end}
{synopt:{cmd:e(denmethod)}}密度估计方法； {cmd:fitted}、 {cmd:residual} 或 {cmd:kernel}{p_end}
{synopt:{cmd:e(kernel)}}核函数{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 20 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{p2col 5 20 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{pstd}
{cmd:iqreg} 在 {cmd:e()} 中存储以下内容：

{p2col 5 20 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察次数{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(q0)}}请求的下分位数{p_end}
{synopt:{cmd:e(q1)}}请求的上分位数{p_end}
{synopt:{cmd:e(reps)}}复制次数{p_end}
{synopt:{cmd:e(sumrdev0)}}下分位数原始偏差之和{p_end}
{synopt:{cmd:e(sumrdev1)}}上分位数原始偏差之和{p_end}
{synopt:{cmd:e(sumadev0)}}下分位数绝对偏差之和{p_end}
{synopt:{cmd:e(sumadev1)}}上分位数绝对偏差之和{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(convcode)}}如果收敛则为 {cmd:0}；否则为非收敛原因的返回代码{p_end}

{p2col 5 20 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:iqreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 20 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{p2col 5 20 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{pstd}
{cmd:sqreg} 在 {cmd:e()} 中存储以下内容：

{p2col 5 20 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察次数{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(n_q)}}请求的分位数数量{p_end}
{synopt:{cmd:e(q}{it:#}{cmd:)}}请求的分位数{p_end}
{synopt:{cmd:e(reps)}}复制次数{p_end}
{synopt:{cmd:e(sumrdv}{it:#}{cmd:)}}q{it:#}的原始偏差之和{p_end}
{synopt:{cmd:e(sumadv}{it:#}{cmd:)}}q{it:#}的绝对偏差之和{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(convcode)}}如果收敛则为 {cmd:0}；否则为非收敛原因的返回代码{p_end}

{p2col 5 20 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:sqreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(eqnames)}}方程的名称{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 20 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{p2col 5 20 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{pstd}
{cmd:bsqreg} 在 {cmd:e()} 中存储以下内容：

{p2col 5 20 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察次数{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(q)}}请求的分位数{p_end}
{synopt:{cmd:e(q_v)}}分位数的值{p_end}
{synopt:{cmd:e(reps)}}复制次数{p_end}
{synopt:{cmd:e(sum_adev)}}绝对偏差之和{p_end}
{synopt:{cmd:e(sum_rdev)}}原始偏差之和{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(convcode)}}如果收敛则为 {cmd:0}；否则为非收敛原因的返回代码{p_end}

{p2col 5 20 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:bsqreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 20 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{p2col 5 20 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{marker references}{...}
{title:参考文献}

{marker C1994}{...}
{phang}
Chamberlain, G. 1994. 分位数回归、审稿及工资结构。在 {it:经济进展第六届世界大会}，编辑 Christopher A. Sims，171-209。剑桥大学出版社：剑桥。

{marker K2005}{...}
{phang}
Koenker, R. 2005. {it:分位数回归}。剑桥大学出版社：纽约。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <qreg.sthlp>}