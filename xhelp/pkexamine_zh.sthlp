{smcl}
{* *! version 1.1.10  11may2019}{...}
{viewerdialog pkexamine "dialog pkexamine"}{...}
{vieweralsosee "[R] pkexamine" "mansection R pkexamine"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] pk" "help pk_zh"}{...}
{viewerjumpto "语法" "pkexamine_zh##syntax"}{...}
{viewerjumpto "菜单" "pkexamine_zh##menu"}{...}
{viewerjumpto "描述" "pkexamine_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "pkexamine_zh##linkspdf"}{...}
{viewerjumpto "选项" "pkexamine_zh##options"}{...}
{viewerjumpto "示例" "pkexamine_zh##examples"}{...}
{viewerjumpto "存储结果" "pkexamine_zh##results"}
{help pkexamine:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] pkexamine} {hline 2}}计算药代动力学指标{p_end}
{p2col:}({mansection R pkexamine:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:pkexamine} {it:时间 浓度} {ifin} [{cmd:,} {it:选项}]

{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{synopt :{opt fit(#)}}使用 {it:#} 个点来估计 AUC_0,inf；默认值为
{cmd:fit(3)}{p_end}
{synopt :{opt t:rapezoid}}使用梯形法则；默认值为立方样条{p_end}
{synopt :{opt g:raph}}绘制 AUC 图{p_end}
{synopt :{opt line}}绘制线性延伸{p_end}
{synopt :{opt log}}绘制对数延伸{p_end}
{synopt :{opt exp(#)}}绘制 AUC_0,inf 的指数拟合{p_end}

{syntab :AUC 图}
{synopt :{it:{help cline_options_zh}}}影响通过线连接的绘图点的呈现{p_end}
包含帮助 gr_markopt

{syntab :添加图}
{synopt :{opth "addplot(addplot_option:plot)"}}将其他图形添加到生成的图中{p_end}

{syntab :Y 轴、X 轴、标题、图例、整体}
{synopt :{it:twoway_options}}任何在 {manhelpi twoway_options G-3} 中记录的
      选项，除了 {opt by()}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt by} 是允许的；请参见 {manhelp by D}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 流行病学和相关 > 其他 > 药代动力学指标 }


{marker description}{...}
{title:描述}

{pstd}
{cmd:pkexamine} 从浓度-时间的个体数据计算药代动力学指标。{cmd:pkexamine} 计算并
显示最大测量浓度、最大测量浓度的时间、最后测量时间、消除时间、半衰期，以及浓度-时间曲线下的面积 (AUC_0,tmax)。
还计算三种从 0 到无限大 (AUC_0,inf) 的 AUC 估计值。

{pstd}
{cmd:pkexamine} 是 pk 命令中的一个。请在阅读该条目之前先阅读 {help pk_zh}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R pkexamineQuickstart:快速开始}

        {mansection R pkexamineRemarksandexamples:备注和示例}

        {mansection R pkexamineMethodsandformulas:方法和公式}

{pstd}
上述部分未包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt fit(#)} 指定从最后测量开始逆推的点数，以用于拟合以估计 AUC_0,inf。
默认值为 {cmd:fit(3)}，即最后三个点。应将其视为最小值；适当的点数将取决于你的数据。

{phang}
{opt trapezoid} 指定使用梯形法则来计算 AUC_0,tmax。默认值为立方样条，这对于大多数函数提供更好的结果。当曲线不规则时，{opt trapezoid} 可能会提供更好的结果。

{phang}
{opt graph} 指示 {cmd:pkexamine} 绘制浓度-时间曲线。

{phang}
{opt line} 和 {opt log} 指定在绘制 AUC_0,inf 时显示的 AUC_0,inf 估计值。如果未指定 {opt graph} 选项，则将忽略这些选项。

{phang}
{opt exp(#)} 指定绘制 AUC_0,inf 的指数拟合。你必须指定要绘制曲线的最大时间值，并且该时间值必须大于数据中的最大时间测量。如果你指定 0，则曲线将绘制到线性延伸与 {it:x} 轴交点的位置。如果未指定 {opt graph} 选项，则将忽略此选项。此选项与 {opt line} 或 {opt log} 选项无效。

{dlgtab:AUC 图}

{phang}
{it:cline_options} 影响通过线连接的绘图点的呈现；参见 {manhelpi cline_options G-3}。

{phang}
{it:marker_options} 指定标记的外观。该外观包括标记符号、大小、颜色和轮廓；参见 {manhelpi marker_options G-3}。

{phang}
{it:marker_label_options} 指定是否以及如何标记标记；参见 {manhelpi marker_label_options G-3}。

{dlgtab:添加图}

{phang}
{opt addplot(plot)} 提供一种将其他图形添加到生成的图中的方法；参见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴、X 轴、标题、图例、整体}

{phang}
{it:twoway_options} 是 {manhelpi twoway_options G-3} 中记录的任何选项，不包括 {opt by()}。这些包括为图指定标题的选项（见 {manhelpi title_options G-3}）和将图保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

{phang}{cmd:. webuse auc}{space 32}(设置){p_end}
{p 4 50 2}{cmd:. pkexamine time concentration} {space 12} (显示指标){p_end}
{p 4 50 2}{cmd:. pkexamine time concentration, fit(7)} {space 4} (使用最后 7 个点拟合模型){p_end}
{p 4 50 2}{cmd:. pkexamine time concentration, trapezoid} {space 1} (在计算 AUC 时使用梯形法则){p_end}
{p 4 50 2}{cmd:. pkexamine time concentration, graph} {space 5} (绘制 AUC)


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:pkexamine} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(auc)}}AUC{p_end}
{synopt:{cmd:r(half)}}药物的半衰期{p_end}
{synopt:{cmd:r(ke)}}消除速率{p_end}
{synopt:{cmd:r(tmax)}}最后浓度测量的时间{p_end}
{synopt:{cmd:r(cmax)}}最大浓度{p_end}
{synopt:{cmd:r(tomc)}}最大浓度的时间{p_end}
{synopt:{cmd:r(auc_line)}}采用线性拟合估计的 AUC_0,inf{p_end}
{synopt:{cmd:r(auc_exp)}}采用指数拟合估计的 AUC_0,inf{p_end}
{synopt:{cmd:r(auc_ln)}}采用自然对数的线性拟合估计的 AUC_0,inf{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pkexamine.sthlp>}