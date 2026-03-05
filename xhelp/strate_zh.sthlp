{smcl}
{* *! version 1.2.3  15oct2018}{...}
{viewerdialog strate "dialog strate"}{...}
{viewerdialog stmh "dialog stmh"}{...}
{viewerdialog stmc "dialog stmc"}{...}
{vieweralsosee "[ST] strate" "mansection ST strate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stci" "help stci_zh"}{...}
{vieweralsosee "[ST] stir" "help stir_zh"}{...}
{vieweralsosee "[ST] stptime" "help stptime_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{viewerjumpto "Syntax" "strate_zh##syntax"}{...}
{viewerjumpto "Menu" "strate_zh##menu"}{...}
{viewerjumpto "Description" "strate_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "strate_zh##linkspdf"}{...}
{viewerjumpto "Options for strate" "strate_zh##options_strate"}{...}
{viewerjumpto "Options for stmh and stmc" "strate_zh##options_stmh"}{...}
{viewerjumpto "Examples" "strate_zh##examples"}{...}
{viewerjumpto "Stored results" "strate_zh##results"}
{help strate:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[ST] strate} {hline 2}}列出失败率和比率{p_end}
{p2col:}({mansection ST strate:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
列出失败率

{p 8 15 2}
{cmd:strate} [{varlist}] {ifin} [{cmd:,}
      {it:{help strate##strate_options:strate_options}}] 


{phang}
使用 Mantel-Haenszel 方法计算比率

{p 8 15 2}
{cmd:stmh} {varname} [{varlist}] {ifin} [{cmd:,}
       {it:{help strate##options:options}}] 


{phang}
使用 Mantel-Cox 方法计算比率

{p 8 15 2}
{cmd:stmc} {varname} [{varlist}] {ifin} [{cmd:,}
        {it:{help strate##options:options}}]


{synoptset 28 tabbed}{...}
{marker strate_options}{...}
{synopthdr:strate_options}
{synoptline}
{syntab:主选项}
{synopt :{opt per(#)}}用于报告比率的单位{p_end}
{synopt :{opth smr(varname)}}使用 {it:varname} 作为参考比率变量计算 SMRs{p_end}
{synopt :{opth cl:uster(varname)}}为自助法使用的聚类变量{p_end}
{synopt :{opt j:ackknife}}报告自助法置信区间{p_end}
{synopt :{opt m:issing}}将缺失值视为额外类别{p_end}
{synopt :{opt l:evel(#)}}设定置信水平；默认为 {cmd:level(95)}{p_end}
{synopt :{cmdab:out:put:(}{it:{help filename_zh}}[{cmd:,replace}]{cmd:)}}将汇总数据集保存为 {it:filename}；使用 {opt replace} 来覆盖现有的 {it:filename}{p_end}
{synopt :{opt noli:st}}抑制列出输出{p_end}
{synopt :{opt g:raph}}图形化比率与暴露类别{p_end}
{synopt :{opt now:hisker}}从图中省略置信区间{p_end}

{syntab:绘图}
{synopt :{it:{help marker_options_zh}}}改变绘制点的外观（颜色、大小等）{p_end}
{synopt :{it:{help marker_label_options_zh}}}添加绘制点标签；改变外观或位置{p_end}
{synopt :{it:{help cline_options_zh}}}影响绘制点的连线效果{p_end}

{syntab:置信区间图}
{synopt :{opth ciop:ts(rspike_options)}}影响置信区间的绘制（触须）{p_end}

{syntab:添加绘图}
{synopt :{opth "addplot(addplot_option:plot)"}}向生成的图添加其他绘图{p_end}

{syntab:Y 轴，X 轴，标题，图例，总体}
{synopt :{it:twoway_options}}任何文档中的选项
      {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 22 tabbed}{...}
{marker options}{...}
{synopthdr}
{synoptline}
{syntab:主选项}
{synopt :{opth by(varlist)}}按 {it:varlist} 列出比率{p_end}
{synopt :{opt c:ompare(num1,den2)}}比较暴露变量的类别{p_end}
{synopt :{opt m:issing}}将缺失值视为额外类别{p_end}
{synopt :{opt l:evel(#)}}设定置信水平；默认为 {cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}在使用 {cmd:strate}、{cmd:stmh} 和 {cmd:stmc} 之前，您必须 {cmd:stset} 数据；参见 {manhelp stset ST}.{p_end}
{p 4 6 2}{opt by} 允许与 {cmd:stmh} 和 {cmd:stmc} 一起使用；参见 {manhelp by D}.{p_end}
{p 4 6 2}{opt fweight}s、{opt iweight}s 和 {opt pweights} 可通过 {cmd:stset} 进行指定；参见 {manhelp stset ST}.{p_end}


{marker menu}{...}
{title:菜单}

    {title:strate}

{phang2}
{bf:统计 > 生存分析 > 汇总统计、检验和表格 >}
       {bf:列出失败率和比率}

    {title:stmh}

{phang2}
{bf:统计 > 生存分析 > 汇总统计、检验和表格 >}
       {bf:列出 Mantel-Haenszel 比率}

    {title:stmc}

{phang2}
{bf:统计 > 生存分析 > 汇总统计、检验和表格 >}
        {bf:列出 Mantel-Cox 比率}


{marker description}{...}
{title:描述}

{pstd}
{cmd:strate} 按 {varlist} 中声明的一个或多个分类变量列出比率。您还可以保存一个可选的汇总数据集，其中包含事件计数和比率的分母，以便进一步分析或显示。{cmd:stsplit} 和 {cmd:strate} 的组合实现了流行流行病学中广泛使用的特殊目的年度程序的所有功能；参见 {manhelp stsplit ST}。

{pstd}
{cmd:stmh} 使用 Mantel-Haenszel 型方法计算分层比率和显著性检验。

{pstd}
{cmd:stmc} 使用 Mantel-Cox 方法计算由时间精确分层的比率。相应的显著性检验（对数秩检验）也会被计算。

{pstd}
{cmd:stmh} 和 {cmd:stmc} 都可以估计由 {it:varlist} 中第一个参数指定的解释变量的两个类别的失败率比。可以通过 {opt compare()} 选项定义要比较的类别。逗号之前的其余变量是分类变量，需使用分层控制。分层由这两个变量的交叉分类定义。

{pstd}
此外，您可以使用 {cmd:stmh} 和 {cmd:stmc} 对指标解释变量进行趋势检验。这里计算对数线性泊松回归系数的一步牛顿近似。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST strateQuickstart:快速入门}

        {mansection ST strateRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options_strate}{...}
{title:strate 的选项}

{dlgtab:主选项}

{phang}
{opt per(#)} 指定用于报告比率的单位。例如，如果分析时间为年，指定 {cmd:per(1000)} 则结果为每 1,000 人年的比率。

{phang}
{opth smr(varname)} 指定参考比率变量。然后，{cmd:strate} 计算 SMRs 而不是比率。此选项通常在使用 {cmd:stsplit} 将随访记录按年龄段和可能的日历周期分开后使用。

{phang}
{opth cluster(varname)} 定义指示数据聚类的分类变量，以供自助法使用。如果选择了 {opt jackknife} 选项，而此选项未指定，则聚类变量将成为在 st 数据中定义的 {opt id} 变量。指定 {opt cluster()} 意味着 {opt jackknife}。

{phang}
{opt jackknife} 指定生成自助法置信区间。如果在数据集 {cmd:stset} 时指定了权重，则将其作为默认值。

{phang}
{opt missing} 指定解释变量的缺失值被视为额外类别。默认设置是排除此类观测值。

{phang}
{opt level(#)} 指定置信区间的置信水平，作为百分比。默认为 {cmd:level(95)} 或通过 {helpb set level} 设置。

{phang}
{cmd:output(}{it:{help filename_zh}} [{cmd:,replace}]{cmd:)} 在 {it:filename} 中保存汇总数据集。文件包含失败计数和人时间、比率（或 SMRs）、置信限，以及 {varlist} 中的所有分类变量。此数据集可用于进一步计算或简单作为 {help table_zh} 命令的输入。

{pmore}
{opt replace} 指定如果 {it:filename} 已存在，则覆盖它。此选项在对话框中未显示。

{phang}
{opt nolist} 抑制输出。仅在将结果保存到 {opt output()} 指定的文件时使用。

{phang}
{opt graph} 生成比率与 {varname} 类别所用数字代码的图形。

{phang}
{opt nowhisker} 从图中省略置信区间。

{dlgtab:绘图}

{phang}
{it:marker_options} 影响图中绘制点的样式，包括形状、大小、颜色和轮廓；参见 {manhelpi marker_options G-3}。

{phang}
{it:marker_label_options} 指定是否以及如何标记这些绘制点；参见 {manhelpi marker_label_options G-3}。

{phang}
{it:cline_options} 影响点之间是否连线以及这些线的绘制效果；参见 {manhelpi cline_options G-3}。

{dlgtab:CI 图}

{phang}
{opt ciopts(rspike_options)} 影响置信区间（触须）的绘制效果；参见 {manhelpi rspike_options G-3}。  

{dlgtab:添加绘图}

{phang}
{opt addplot(plot)} 提供添加其他绘图到生成图形中的方法；参见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴，X 轴，标题，图例，总体}

{phang}
{it:twoway_options} 是任何文档中的选项 
{manhelpi twoway_options G-3}，不包括 {opt by()}。这包括图表标题的选项（参见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（参见 {manhelpi saving_option G-3}）。


{marker options_stmh}{...}
{title:stmh 和 stmc 的选项}

{dlgtab:主选项}

{phang}
{opth by(varlist)} 指定要按其列出比率的分类变量。

{pmore}
对 {it:varlist} 的每个类别或类别组合生成单独的比率，并显示不等比率的检验（效应修饰）。

{phang}
{opt compare(num1,den2)} 指定要比较的暴露变量的类别。第一个代码定义分子类别，第二个代码定义分母类别。

{pmore}
当缺省 {opt compare} 且只有两个类别时，较大的类别与较小的类别进行比较；当有两个以上类别时，{opt compare} 分析对数线性趋势。

{phang}
{opt missing} 指定解释变量的缺失值被视为额外类别。默认设置是排除此类观测值。

{phang}
{opt level(#)} 指定置信区间的置信水平，作为百分比。默认为 {cmd:level(95)} 或通过 {helpb set level} 设置。


{marker examples}{...}
{title:strate 示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse diet}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset dox, origin(time doe) id(id) scale(365.25)}
               {cmd:fail(fail==1 3 13)}

{pstd}将数据拆分为十年年龄段{p_end}
{phang2}{cmd:. stsplit ageband, at(40(10)70) after(time=dob) trim}

{pstd}每 1,000 人年列出 {cmd:ageband} 类别的失败率{p_end}
{phang2}{cmd:. strate ageband, per(1000)}

{pstd}将参考人群数据集与当前数据集按 {cmd:ageband} 合并{p_end}
{phang2}{cmd:. merge m:1 ageband using https://www.stata-press.com/data/r16/smrchd}

{pstd}获取 SMRs 和置信区间{p_end}
{phang2}{cmd:. strate ageband, per(1000) smr(rate)}


{title:stmh 示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse diet, clear}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset dox, origin(time dob) enter(time doe) id(id)}
            {cmd:scale(365.25) fail(fail==1 3 13)}

{pstd}将数据拆分为十年年龄段{p_end}
{phang2}{cmd:. stsplit ageband, at(40(10)70) after(time=dob) trim}

{pstd}计算比较 {cmd:hienergy} 类别的比率{p_end}
{phang2}{cmd:. stmh hienergy}

{pstd}计算比较 {cmd:hienergy} 类别和 {cmd:ageband} 类别的比率{p_end}
{phang2}{cmd:. stmh hienergy, by(ageband)}

{pstd}比较 {cmd:hienergy} 在不同工作上的效用，控制 {cmd:ageband}{p_end}
{phang2}{cmd:. stmh hienergy ageband, by(job)}

{pstd}按 {cmd:height} 测试心脏病率趋势，控制 {cmd:ageband}{p_end}
{phang2}{cmd:. stmh height ageband}


{title:stmc 示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse diet, clear}

{pstd}{cmd:stset} 数据，指定 {cmd:dob} 为起点{p_end}
{phang2}{cmd:. stset dox, origin(time dob) enter(time doe) id(id)}
              {cmd:scale(365.25) fail(fail==1 3 13)}

{pstd}获取高能量的效应，控制年龄（时间），进行非常精细的分层{p_end}
{phang2}{cmd:. stmc hienergy}

{pstd}与上述相同，但比较 {cmd:hienergy} = 0 与 {cmd:hienergy} = 1{p_end}
{phang2}{cmd:. stmc hienergy, c(0,1)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:stmh} 和 {cmd:stmc} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(RR)}}总体比率{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <strate.sthlp>}