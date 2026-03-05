{smcl}
{* *! version 1.1.23  23jan2019}{...}
{viewerdialog mean "dialog mean"}{...}
{viewerdialog "svy: mean" "dialog mean, message(-svy-) name(svy_mean)"}{...}
{vieweralsosee "[R] mean" "mansection R mean"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] mean postestimation" "help mean postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ameans" "help ameans_zh"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[R] proportion" "help proportion_zh"}{...}
{vieweralsosee "[R] ratio" "help ratio_zh"}{...}
{vieweralsosee "[R] summarize" "help summarize_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[R] total" "help total_zh"}{...}
{viewerjumpto "Syntax" "mean_zh##syntax"}{...}
{viewerjumpto "Menu" "mean_zh##menu"}{...}
{viewerjumpto "Description" "mean_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mean_zh##linkspdf"}{...}
{viewerjumpto "Options" "mean_zh##options"}{...}
{viewerjumpto "Examples" "mean_zh##examples"}{...}
{viewerjumpto "Video example" "mean_zh##video"}{...}
{viewerjumpto "Stored results" "mean_zh##results"}
{help mean:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[R] mean} {hline 2}}计算均值{p_end}
{p2col:}({mansection R mean:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:mean} {varlist} {ifin}
[{it:{help mean##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opth std:ize(varname)}}用于标准化的变量标识{p_end}
{synopt :{opth stdw:eight(varname)}}用于标准化的权重变量{p_end}
{synopt :{opt nostdr:escale}}不对标准权重变量进行重新缩放{p_end}

{syntab :if/in/over}
{synopt :{cmd:over(}{it:{help varlist_zh:varlist_o}}{cmd:)}}在由 {it:varlist_o} 定义的子人群上进行分组{p_end}

{syntab :标准误/聚类}
{synopt :{opth vce(vcetype)}}{it:vcetype}
    可以是 {opt analytic}、{opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设定置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt noh:eader}}抑制表头{p_end}
{synopt :{it:{help mean##display_options:显示选项}}}控制列格式、行宽、显示省略变量、基数和空单元格，以及因子变量标签{p_end}

包含帮助 shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:varlist} 可以包含因子变量；参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{cmd:bootstrap}、{cmd:jackknife}、{cmd:mi estimate}、{cmd:rolling}、{cmd:statsby} 和 {cmd:svy} 是允许的；参见 {help prefix_zh}.{p_end}
包含帮助 vce_mi
{p 4 6 2}权重与 {help bootstrap_zh} 前缀不允许配合使用。{p_end}
{p 4 6 2}{cmd:aweight} 不允许与 {help jackknife_zh} 前缀一起使用。
{p_end}
{p 4 6 2}
{opt vce()} 和权重不允许与 {help svy_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}、{opt aweight}、{opt iweight} 和 {opt pweight} 是允许的；参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用的功能，请查看 {manhelp mean_postestimation R:mean postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 汇总、表格和检验 >}
     {bf:汇总和描述性统计 > 均值}


{marker description}{...}
{title:描述}

{pstd}
{opt mean} 生成均值估计值及其标准误差。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R meanQuickstart:快速入门}

        {mansection R meanRemarksandexamples:备注和示例}

        {mansection R meanMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth stdize(varname)}
指定点估计值按 {it:varname} 确定的标准化层进行调整。此选项要求有 {opt stdweight()} 选项。

{phang}
{opth stdweight(varname)}
指定与 {opt stdize()} 选项中的标准层相关联的权重变量。标准化权重必须在标准层内保持不变。

{phang}
{opt nostdrescale}
防止标准化权重在 {opt over()} 组内重新缩放。此选项要求 {opt stdize()} ，但当未指定 {opt over()} 选项时会被忽略。

{dlgtab:if/in/over}

{phang}
{cmd:over(}{it:{help varlist_zh:varlist_o}}{cmd:)}
指定为多个子人群计算估计值，这些人群由 {it:varlist_o} 中变量的不同值确定。只允许在 {opt over(varlist_o)} 中使用数字、非负、整数值变量。

{dlgtab:标准误/聚类}

{phang}
{opt vce(vcetype)} 指定报告的标准误的类型，包括从渐近理论推导出的类型（{cmd:analytic}）、允许组内相关的类型（{cmd:cluster} {it:clustvar}），以及使用自助法或抽样法的类型（{cmd:bootstrap}、{cmd:jackknife}）；参见 {help vce_option_zh:[R] {it:vce_option}}。

{pmore}
{cmd:vce(analytic)}，默认情况下，使用与样本均值相关的分析推导方差估计。

{dlgtab:报告}

{phang}
{opt level(#)}；参见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt noheader} 防止显示表头。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt noomit:ted}、{opt vsquish}、{opt noempty:cells}、{opt base:levels}、{opt allbase:levels}、{opt nofvlab:el}、{opt fvwrap(#)}、{opt fvwrapon(style)}、{opth cformat(%fmt)}和 {opt nolstretch}；
    参见 {helpb estimation options##display_options:[R] 估计选项}。

{pstd}
以下选项可与 {opt mean} 一起使用，但在对话框中未显示：

{phang}
{opt coeflegend}；参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse fuel}{p_end}

{pstd}估计没有燃料处理的汽车（{cmd:mpg1}）和具有燃料处理的汽车（{cmd:mpg2}）的平均里程数{p_end}
{phang2}{cmd:. mean mpg1 mpg2}{p_end}

{pstd}将 {cmd:mpg1} 堆叠在 {cmd:mpg2} 之上，创建 {cmd:mpg}{p_end}
{phang2}{cmd:. stack mpg1 mpg2, into(mpg) clear}{p_end}

{pstd}按类型汇总 {cmd:mpg}{p_end}
{phang2}{cmd:. mean mpg, over(_stack)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse hbp, clear}{p_end}

{pstd}按照 {cmd:age}、{cmd:race} 和 {cmd:sex} 分层样本{p_end}
{phang2}{cmd:. egen strata = group(age race sex) if inlist(year, 1990, 1992)}{p_end}

{pstd}为每个层创建标准化权重，值等于样本大小{p_end}
{phang2}{cmd:. by strata, sort: gen stdw=_N}{p_end}

{pstd}使用 {cmd:age}、{cmd:race} 和 {cmd:sex} 的观察分布计算标准化均值{p_end}
{phang2}{cmd:. mean hbp, over(city year) stdize(strata) stdweight(stdw)}{p_end}

    {hline}
    设置
         {cmd:. webuse highschool, clear}

{pstd}使用调查数据估计总体均值{p_end}
{phang2}{cmd:. svy: mean weight}

{pstd}估计每个由 {cmd:sex} 确定的子人群的 {cmd:weight} 均值{p_end}
{phang2}{cmd:. svy: mean weight, over(sex)}{p_end}

    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=kKFbnEWwa2s":Stata中的描述性统计}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mean} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值的数量{p_end}
{synopt:{cmd:e(N_over)}}子人群的数量{p_end}
{synopt:{cmd:e(N_stdize)}}标准层的数量{p_end}
{synopt:{cmd:e(N_clust)}}集群的数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(df_r)}}样本自由度{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:mean}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(varlist)}}{it:varlist}{p_end}
{synopt:{cmd:e(stdize)}}{it:varname} 来自 {cmd:stdize()}{p_end}
{synopt:{cmd:e(stdweight)}}{it:varname} 来自 {cmd:stdweight()}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量的名称{p_end}
{synopt:{cmd:e(over)}}{it:varlist} 来自 {cmd:over()}{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}均值估计向量{p_end}
{synopt:{cmd:e(V)}}(协)方差估计{p_end}
{synopt:{cmd:e(sd)}}标准差估计向量{p_end}
{synopt:{cmd:e(_N)}}非缺失观测值数量向量{p_end}
{synopt:{cmd:e(_N_stdsum)}}标准层内的非缺失观测值数量{p_end}
{synopt:{cmd:e(_p_stdize)}}标准化比例{p_end}
{synopt:{cmd:e(error)}}与 {cmd:e(b)} 对应的错误代码{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mean.sthlp>}