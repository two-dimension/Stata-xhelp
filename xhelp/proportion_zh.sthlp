{smcl}
{* *! version 1.2.6  23jan2019}{...}
{viewerdialog proportion "dialog proportion"}{...}
{viewerdialog "svy: proportion" "dialog proportion, message(-svy-) name(svy_proportion)"}{...}
{vieweralsosee "[R] proportion" "mansection R proportion"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] proportion postestimation" "help proportion postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[R] mean" "help mean_zh"}{...}
{vieweralsosee "[R] ratio" "help ratio_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[R] total" "help total_zh"}{...}
{viewerjumpto "Syntax" "proportion_zh##syntax"}{...}
{viewerjumpto "Menu" "proportion_zh##menu"}{...}
{viewerjumpto "Description" "proportion_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "proportion_zh##linkspdf"}{...}
{viewerjumpto "Options" "proportion_zh##options"}{...}
{viewerjumpto "Examples" "proportion_zh##examples"}{...}
{viewerjumpto "Stored results" "proportion_zh##results"}
{help proportion:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[R] proportion} {hline 2}}估计比例{p_end}
{p2col:}({mansection R proportion:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}
{cmd:proportion} {varlist} {ifin}
[{it:{help proportion##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opth std:ize(varname)}}用于标准化的变量标识{p_end}
{synopt :{opth stdw:eight(varname)}}用于标准化的权重变量{p_end}
{synopt :{opt nostdr:escale}}不对标准权重变量重新缩放{p_end}

{syntab :if/in/over}
{synopt :{cmd:over(}{it:{help varlist_zh:varlist_o}}{cmd:)}}在由 {it:varlist_o} 定义的子群体上分组{p_end}

{syntab :标准误/聚类}
{synopt :{opth vce(vcetype)}}{it:vcetype}
	可以是 {opt analytic}、{opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opth citype:(proportion##citype:城市类型)}}计算置信区间的限制的方法；默认值为 {cmd:citype(logit)}{p_end}
{synopt :{opt percent}}将估计的比例以百分比形式报告{p_end}
{synopt :{opt noh:eader}}抑制表头{p_end}
{synopt :{it:{help proportion##display_options:显示选项}}}控制列格式、行间距、线宽、被省略变量及基数和空单元格的显示，以及因子变量标签{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:varlist} 可以包含因子变量；参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:varlist} 中仅允许数字、非负、整数值变量。{p_end}
{p 4 6 2}
允许使用 {cmd:bootstrap}、{cmd:jackknife}、{cmd:mi estimate}、{cmd:rolling}、{cmd:statsby} 和 {cmd:svy}；参见 {help prefix_zh}.{p_end}
INCLUDE help vce_mi
{p 4 6 2}与 {help bootstrap_zh} 前缀不允许使用权重。{p_end}
{p 4 6 2}
与 {help svy_zh} 前缀不允许使用 {opt vce()} 和权重。
{p_end}
{marker weight}{...}
{p 4 6 2}{opt fweight}s、{opt iweight}s 和 {opt pweight}s 是允许的；参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}有关估计后可用的特性，请参见 {manhelp proportion_postestimation R:proportion 后估计} 。{p_end}

{marker citype}{...}
{synoptset 26}{...}
{synopthdr:城市类型}
{synoptline}
{synopt :{cmd:logit}}计算对数几率转换的置信区间；默认值{p_end}
{synopt :{opt agres:ti}}计算 Agresti-Coull 置信区间{p_end}
{synopt :{cmd:exact}}计算精确 (Clopper-Pearson) 置信区间{p_end}
{synopt :{opt jeff:reys}}计算 Jeffreys 置信区间{p_end}
{synopt :{opt norm:al}}计算正态 (Wald) 置信区间{p_end}
{synopt :{cmd:wald}}正态的同义词{p_end}
{synopt :{cmd:wilson}}计算 Wilson 置信区间{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 汇总、表格和检验 >}
   {bf:汇总和描述性统计 > 比例}


{marker description}{...}
{title:描述}

{pstd}
{cmd:proportion} 生成由 {varlist} 中每个变量的值所标识的类别的比例估计，以及标准误差。


{marker linkspdf}{...}
{title:指向 PDF 文档的链接}

        {mansection R proportionQuickstart:快速开始}

        {mansection R proportionRemarksandexamples:备注和示例}

        {mansection R proportionMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth stdize(varname)}指定点估计通过直接标准化在 {it:varname} 标识的等级之间进行调整。  
此选项需要 {opt stdweight()} 选项。

{phang}
{opth stdweight(varname)}指定与在 {opt stdize()} 选项中识别的标准等级相关的权重变量。标准化权重必须在标准等级内保持不变。

{phang}
{opt nostdrescale}
禁止在 {opt over()} 组内重新缩放标准化权重。此选项需要 {opt stdize()}，但如果没有指定 {opt over()} 选项，则被忽略。

{dlgtab:if/in/over}

{phang}
{cmd:over(}{it:{help varlist_zh:varlist_o}}{cmd:)}
指定为多个子群体计算估计，这些子群体由 {it:varlist_o} 中变量的不同值识别。 {opt over(varlist_o)} 中仅允许使用数字、非负、整数值变量。

{dlgtab:标准误/聚类}

{phang}
{opt vce(vcetype)}指定报告的标准误类型，包括来源于渐近理论的类型 ({cmd:analytic})、允许组内相关的类型 ({cmd:cluster} {it:clustvar}) 和使用自助或自助法的方法 ({cmd:bootstrap}、{cmd:jackknife})；参见 {help vce_option_zh:[R] {it:vce_option}}。

{pmore}
{cmd:vce(analytic)}，默认值，使用与样本比例相关的解析派生方差估计量。

{dlgtab:报告}

{phang}
{opt level(#)}；参见{helpb estimation options##level():[R] 估计选项}。

{phang}
{opth citype:(proportion##citype:城市类型)}指定计算置信区间限制的方法。 {it:citype} 可以是 {cmd:logit}（默认）、{cmd:agresti}、{cmd:exact}、{cmd:jeffreys}、{cmd:normal}、{cmd:wald} 或 {cmd:wilson}。

{phang}
{opt percent}指定比例应以百分比形式报告。

{phang}
{opt noheader} 防止表头显示。

{marker display_options}{...}
{phang}
{it:display_options}：
{opt noomit:ted}、{opt vsquish}、{opt noempty:cells}、{opt base:levels}、{opt allbase:levels}、{opt nofvlab:el}、{opt fvwrap(#)}、{opt fvwrapon(style)}、{opth cformat(%fmt)}，及 {opt nolstretch}；参见 {helpb estimation options##display_options:[R] 估计选项}。

{pstd}
{opt proportion} 可用的以下选项未在对话框中显示：

{phang}
{opt coeflegend}；参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}估计比例{p_end}
{phang2}{cmd:. proportion rep78}{p_end}

{phang}在 {cmd:foreign} 的值上估计比例{p_end}
{phang2}{cmd:. proportion rep78, over(foreign)}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:proportion} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_over)}}子群体数量{p_end}
{synopt:{cmd:e(N_stdize)}}标准等级数量{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(df_r)}}样本自由度{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:proportion}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(varlist)}}{it:varlist}{p_end}
{synopt:{cmd:e(stdize)}}{it:varname} 来自 {cmd:stdize()}{p_end}
{synopt:{cmd:e(stdweight)}}{it:varname} 来自 {cmd:stdweight()}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量的名称{p_end}
{synopt:{cmd:e(over)}}{it:varlist} 来自 {cmd:over()}{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 禁止的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}比例估计向量{p_end}
{synopt:{cmd:e(V)}}（协方差）估计{p_end}
{synopt:{cmd:e(_N)}}非缺失观察数向量{p_end}
{synopt:{cmd:e(_N_stdsum)}}在标准等级内的非缺失观察数{p_end}
{synopt:{cmd:e(_p_stdize)}}标准化比例{p_end}
{synopt:{cmd:e(freq)}}频率估计向量{p_end}
{synopt:{cmd:e(error)}}与 {cmd:e(b)} 相关的错误代码{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <proportion.sthlp>}