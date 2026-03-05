{smcl}
{* *! version 1.2.2  19oct2017}{...}
{viewerdialog ameans "dialog ameans"}{...}
{vieweralsosee "[R] ameans" "mansection R ameans"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ci" "help ci_zh"}{...}
{vieweralsosee "[R] mean" "help mean_zh"}{...}
{vieweralsosee "[R] summarize" "help summarize_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{viewerjumpto "Syntax" "ameans_zh##syntax"}{...}
{viewerjumpto "Menu" "ameans_zh##menu"}{...}
{viewerjumpto "Description" "ameans_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ameans_zh##linkspdf"}{...}
{viewerjumpto "Options" "ameans_zh##options"}{...}
{viewerjumpto "Examples" "ameans_zh##examples"}{...}
{viewerjumpto "Video example" "ameans_zh##video"}{...}
{viewerjumpto "Stored results" "ameans_zh##results"}
{help ameans:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] ameans} {hline 2}}算术、几何和调和平均数{p_end}
{p2col:}({mansection R ameans:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:ameans} [{varlist}]
{ifin}
[{it:{help ameans##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 16 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主}
{synopt:{opt a:dd(#)}}为{varlist}中的每个变量添加{it:#}{p_end}
{synopt:{opt o:nly}}仅为具有非正值的变量添加{it:#}{p_end}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为{cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
允许使用{cmd:by}；参见 {manhelp by D}。{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用{cmd:aweight}和{cmd:fweight}；见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 摘要、表格和检验 >}
       {bf:摘要和描述性统计 > 算术/几何/调和平均数}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ameans} 计算每个变量的算术、几何和调和平均数及其相应的置信区间，
如果未指定{it:varlist}，则对数据中的所有变量进行计算。
{cmd:gmeans}和{cmd:hmeans}是{cmd:ameans}的同义词。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R ameansQuickstart:快速开始}

        {mansection R ameansRemarksandexamples:备注和示例}

        {mansection R ameansMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{opt add(#)} 在计算平均数和置信区间之前，将值{it:#}添加到{varlist}中的每个变量。此选项在分析具有非正值的变量时非常有用。

{phang}
{opt only} 修改{opt add(#)}选项的行为，使其仅将{it:#}添加到至少有一个非正值的变量。

{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。默认值为{cmd:level(95)}或由{helpb set level}设置。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse systolic}{p_end}

{pstd}计算算术、几何和调和平均数{p_end}
{phang2}{cmd:. ameans systolic}{p_end}

{pstd}与上面相同，但在计算平均数之前将7加到{cmd:systolic}上{p_end}
{phang2}{cmd:. ameans systolic, add(7)}{p_end}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=kKFbnEWwa2s":Stata中的描述性统计}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:ameans} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}非缺失观测的数量；用于算术平均数{p_end}
{synopt:{cmd:r(N_pos)}}非缺失正观测的数量；用于几何和调和平均数{p_end}
{synopt:{cmd:r(mean)}}算术平均数{p_end}
{synopt:{cmd:r(lb)}}算术平均数的置信区间下限{p_end}
{synopt:{cmd:r(ub)}}算术平均数的置信区间上限{p_end}
{synopt:{cmd:r(Var)}}未转换数据的方差{p_end}
{synopt:{cmd:r(mean_g)}}几何平均数{p_end}
{synopt:{cmd:r(lb_g)}}几何平均数的置信区间下限{p_end}
{synopt:{cmd:r(ub_g)}}几何平均数的置信区间上限{p_end}
{synopt:{cmd:r(Var_g)}}ln x_i的方差{p_end}
{synopt:{cmd:r(mean_h)}}调和平均数{p_end}
{synopt:{cmd:r(lb_h)}}调和平均数的置信区间下限{p_end}
{synopt:{cmd:r(ub_h)}}调和平均数的置信区间上限{p_end}
{synopt:{cmd:r(Var_h)}}1/x_i的方差{p_end}
{synopt:{cmd:r(level)}}置信区间的置信水平{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ameans.sthlp>}