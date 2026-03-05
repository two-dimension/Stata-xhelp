{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog "meta" "dialog meta"}{...}
{vieweralsosee "[META] estat bubbleplot" "mansection META estatbubbleplot"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta regress" "help meta regress"}{...}
{vieweralsosee "[META] meta regress postestimation" "help meta regress postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta" "help meta_zh"}{...}
{vieweralsosee "[META] Glossary" "help meta glossary"}{...}
{vieweralsosee "[META] Intro" "mansection META Intro"}{...}
{viewerjumpto "Syntax" "estat_bubbleplot_zh##syntax"}{...}
{viewerjumpto "Menu" "estat_bubbleplot_zh##menu"}{...}
{viewerjumpto "Description" "estat_bubbleplot_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "estat_bubbleplot_zh##linkspdf"}{...}
{viewerjumpto "Options" "estat_bubbleplot_zh##options"}{...}
{viewerjumpto "Examples" "estat_bubbleplot_zh##examples"}
{help estat_bubbleplot:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[META] estat bubbleplot} {hline 2}}进行元回归后的气泡图{p_end}
{p2col:}({mansection META estatbubbleplot:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:estat} {cmdab:bubble:plot}
{ifin}
[{cmd:,} {it:选项}]

{marker optstbl}{...}
{synoptset 24 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opt reweight:ed}}使气泡大小依赖于随机效应权重{p_end}
{synopt :[{cmd:no}]{opt reg:line}}显示或隐藏回归线{p_end}
{synopt :[{cmd:no}]{cmd:ci}}显示或隐藏置信区间{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为元分析中声明的值{p_end}
{synopt :{opt n(#)}}在{it:#}个点处评估CI线；默认值为{cmd:n(100)}{p_end}

{syntab:拟合线}
{synopt :{opth lineop:ts(line_options)}}影响所绘制的回归线的表现{p_end}

{syntab:CI图}
{synopt :{opth ciop:ts(estat_bubbleplot##ciopts:ciopts)}}影响所绘制的CI带的表现{p_end}

{syntab:添加图形}
{synopt :{opth addplot:(addplot_option:plot)}}在气泡图中添加其他图形{p_end}

{syntab:Y轴, X轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}任何在{manhelp twoway_options G-3:twoway_options}中记录而不是{cmd:by()}的选项{p_end}
{synoptline}


INCLUDE help menu_meta


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat bubbleplot} 生成经过简单元回归的气泡图，单个连续调节因素使用 {helpb meta regress} 进行。气泡图是效应值与感兴趣的{help meta_glossary##moderator:调节者}之间的散点图，并叠加了预测的回归线和置信区间带。在气泡图中，标记尺寸，即“气泡”，与研究权重成比例。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection META estatbubbleplotQuickstart:快速入门}

        {mansection META estatbubbleplotRemarksandexamples:备注和示例}

        {mansection META estatbubbleplotMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt reweighted} 与随机效应元回归一起使用。它指定气泡的大小与随机效应元回归的权重成比例，w_j = 1/(σ^_j + τ^2)。默认情况下，尺寸与每个研究的精确度成比例，w_j = 1/σ^2_j。

{phang}
{opt regline} 和 {opt noregline} 显示或抑制回归线的表现。默认值 {cmd:regline} 是显示回归线。选项 {cmd:noregline} 意味着选项 {cmd:noci}。

{phang}
{opt ci} 和 {opt noci} 显示或抑制置信区间。默认值 {cmd:ci} 是显示它们。

{phang}
{opt level(#)} 指定置信区间的置信水平，作为百分比。默认值为元分析会话中声明的值；请参见 {mansection META metadataRemarksandexamplesDeclaringaconfidencelevelformeta-analysis:{it:为元分析声明置信水平}} 在 {bf:[META] meta data} 中。另见选项 {helpb meta_set##level:level()} 在 {help meta_set_zh:[META] meta set} 中。

{phang}
{opt n(#)} 指定评估CI的点数。默认值为 {cmd:n(100)}。

{dlgtab:拟合线}

{phang}
{opt lineopts(line_options)} 影响所绘制的回归线的表现；见 {manhelp line_options G-3}。

{dlgtab:CI图}

{marker ciopts}{...}
{phang}
{opt ciopts(ciopts)} 影响气泡图中CI带的表现。{it:ciopts} 是在 {help twoway_rline_zh:[G-2] graph twoway rline} 中定义的任何选项，以及在 {manhelpi advanced_options G-3} 中描述的选项 {cmd:recast(rarea)}。

{dlgtab:添加图形}
 
{phang} 
{opt addplot(plot)} 允许向图形添加更多的 {cmd:graph twoway} 图形；见 {manhelpi addplot_option G-3}。

{dlgtab:Y轴, X轴, 标题, 图例, 整体}
   
{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的任何选项，排除 {cmd:by()}。这些包括为图形命名的选项（见{manhelpi title_options G-3}）和将图形保存到磁盘的选项（见{manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse bcgset}{p_end}
{phang2}{cmd:. meta regress latitude_c}

{pstd}构建气泡图{p_end}
{phang2}{cmd:. estat bubbleplot}

{pstd}构建带有90%置信区间的气泡图{p_end}
{phang2}{cmd:. estat bubbleplot, level(90)}

{pstd}指定研究标记的大小与随机效应元回归的权重成比例{p_end}
{phang2}{cmd:. estat bubbleplot, reweighted}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_bubbleplot.sthlp>}