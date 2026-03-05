{smcl}
{* *! version 1.1.6  15may2018}{...}
{viewerdialog mcc "dialog mcc"}{...}
{viewerdialog mcci "dialog mcci"}{...}
{vieweralsosee "[R] Epitab" "mansection R Epitab"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bitest" "help bitest_zh"}{...}
{vieweralsosee "[R] ci" "help ci_zh"}{...}
{vieweralsosee "[R] clogit" "help clogit_zh"}{...}
{vieweralsosee "[R] symmetry" "help symmetry_zh"}{...}
{vieweralsosee "[R] tabulate twoway" "help tabulate_twoway_zh"}{...}
{vieweralsosee "[U] 19 Immediate commands" "help immed_zh"}{...}
{viewerjumpto "Syntax" "mcc_zh##syntax"}{...}
{viewerjumpto "Menu" "mcc_zh##menu"}{...}
{viewerjumpto "Description" "mcc_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mcc_zh##linkspdf"}{...}
{viewerjumpto "Option" "mcc_zh##option"}{...}
{viewerjumpto "Examples" "mcc_zh##examples"}{...}
{viewerjumpto "Stored results" "mcc_zh##results"}
{help mcc:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] Epitab} {hline 2}}流行病学家用表格（mcc 和 mcci）
{p_end}
{p2col:}({mansection R Epitab:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}{cmd:mcc} {it:var_exposed_case} {it:var_exposed_control} {ifin} 
[{it:{help mcc##weight:权重}}]
[{cmd:,} {opt l:evel(#)}]

{p 8 14 2}{cmd:mcci} {it:#a #b #c #d} [{cmd:,} {opt l:evel(#)}]

{marker weight}{...}
{pstd}{opt fweight}被允许；见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

    {title:mcc}

{phang2}
{bf:统计 > 流行病学及相关 > 流行病学家用表格 >}
       {bf:配对病例对照研究}

    {title:mcci}

{phang2}
{bf:统计 > 流行病学及相关 > 流行病学家用表格 >}
        {bf:配对病例对照计算器}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mcc} 用于配对病例对照数据。它计算 McNemar 的卡方检验；因子所占比例的差异、比率和相对差异的点估计及置信区间；以及赔率比及其置信区间。 {cmd:mcci} 是 {cmd:mcc} 的即时形式；见 {help immed_zh}。还请参见 {manhelp clogit R} 和 {manhelp symmetry R} 以获取相关命令。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R EpitabQuickstart:快速启动}

        {mansection R EpitabRemarksandexamples:备注和示例}

        {mansection R EpitabMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{dlgtab:选项}

{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。默认值为 {cmd:level(95)} 或按照 {helpb set level} 设置。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse mccxmpl}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}计算赔率比等{p_end}
{phang2}{cmd:. mcc case control [fw=pop]}

{pstd}上述命令的即时形式{p_end}
{phang2}{cmd:. mcci 8 8 3 8}

{pstd}与上述命令相同，但报告 90% 的置信区间而不是 95%{p_end}
{phang2}{cmd:. mcci 8 8 3 8, level(90)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:mcc} 和 {cmd:mcci} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(p_exact)}}双侧的 p 值用于 McNemar 的检验{p_end}
{synopt:{cmd:r(or)}}赔率比{p_end}
{synopt:{cmd:r(lb_or)}}赔率比的置信区间下限{p_end}
{synopt:{cmd:r(ub_or)}}赔率比的置信区间上限{p_end}
{synopt:{cmd:r(D_f)}}具有因子的比例差异{p_end}
{synopt:{cmd:r(lb_D_f)}}比例差异的置信区间下限{p_end}
{synopt:{cmd:r(ub_D_f)}}比例差异的置信区间上限{p_end}
{synopt:{cmd:r(R_f)}}具有因子的比例的比率{p_end}
{synopt:{cmd:r(lb_R_f)}}比例比率的置信区间下限{p_end}
{synopt:{cmd:r(ub_R_f)}}比例比率的置信区间上限{p_end}
{synopt:{cmd:r(RD_f)}}具有因子的比例的相对差异{p_end}
{synopt:{cmd:r(lb_RD_f)}}相对差异的置信区间下限{p_end}
{synopt:{cmd:r(ub_RD_f)}}相对差异的置信区间上限{p_end}
{synopt:{cmd:r(chi2)}}卡方值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mcc.sthlp>}