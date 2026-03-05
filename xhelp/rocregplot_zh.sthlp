{smcl}
{* *! version 1.0.17  19oct2017}{...}
{viewerdialog rocregplot "dialog rocregplot"}{...}
{vieweralsosee "[R] rocregplot" "mansection R rocregplot"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] rocreg" "help rocreg_zh"}{...}
{vieweralsosee "[R] rocreg postestimation" "help rocreg_postestimation_zh"}{...}
{viewerjumpto "Syntax" "rocregplot_zh##syntax"}{...}
{viewerjumpto "Menu" "rocregplot_zh##menu"}{...}
{viewerjumpto "Description" "rocregplot_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "rocregplot_zh##linkspdf"}{...}
{viewerjumpto "probit_options" "rocregplot_zh##options_probit"}{...}
{viewerjumpto "common_options" "rocregplot_zh##options_common"}{...}
{viewerjumpto "boot_options" "rocregplot_zh##options_boot"}{...}
{viewerjumpto "Examples" "rocregplot_zh##examples"}
{help rocregplot:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[R] rocregplot} {hline 2}}绘制在 rocreg 之后的边际和协变量特定的 ROC 曲线{p_end}
{p2col:}({mansection R rocregplot:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
在非参数分析后绘制 ROC 曲线

{p 8 16 2}
{cmd:rocregplot} [{cmd:,}
{it:{help rocregplot##common_options:common_options}}
{it:{help rocregplot##boot_options:boot_options}}]


{pstd}
在使用自助法的参数分析后绘制 ROC 曲线

{p 8 16 2}
{cmd:rocregplot} [{cmd:,}
{it:{help rocregplot##probit_options:probit_options}}
{it:{help rocregplot##common_options:common_options}}
{it:{help rocregplot##boot_options:boot_options}}]


{pstd}
在使用最大似然的参数分析后绘制 ROC 曲线

{p 8 16 2}
{cmd:rocregplot} [{cmd:,}
{it:{help rocregplot##probit_options:probit_options}}
{it:{help rocregplot##common_options:common_options}}]


{marker probit_options}{...}
{synoptset 35 tabbed}{...}
{synopthdr:probit_options}
{synoptline}
{syntab:主要}
{synopt :{cmd:at(}{varname}{cmd:=}{it:#} [{varname}{cmd:=}{it:# ...}]{cmd:)}}指定协变量的值{p_end}
{p2col 9 44 44 2:[{cmd:at1(}{varname}{cmd:=}{it:#} [{varname}{cmd:=}{it:# ...}]{cmd:)}}和未指定协变量的均值{p_end}
{p2col 9 42 42 2:[{cmd:at2(}{varname}{cmd:=}{it:#} [{varname}{cmd:=}{it:# ...}]{cmd:)}}{p_end}
{p2col 9 42 42 2:[...]]]}{p_end}
{p2coldent:* {cmd:roc(}{it:{help numlist_zh}}{cmd:)}}显示给定假阳性率的估计 ROC 值{p_end}
{p2coldent:* {cmd:invroc(}{it:{help numlist_zh}}{cmd:)}}显示给定 ROC 值的估计假阳性率{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认值是 {cmd:level(95)}{p_end}

{syntab:曲线}
{synopt:{cmd:line}{it:#}{cmd:opts(}{it:{help cline_options_zh}}{cmd:)}}影响 ROC 曲线 {it:#} 的表现{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 只能指定 {opt roc()} 或 {opt invroc()} 中的一个。{p_end}


{marker common_options}{...}
{synoptset 35 tabbed}{...}
{synopthdr:common_options}
{synoptline}
{syntab:主要}
{synopt:{opth classvars(varlist)}}限制 ROC 曲线的绘制到指定的分类器{p_end}
{synopt:{opt norefline}}抑制绘制参考线{p_end}

{syntab:散点图}
{synopt:{cmd:plot}{it:#}{cmd:opts(}{it:{help scatter_zh:scatter_options}}{cmd:)}}影响分类器 {it:#} 的假阳性率和 ROC 散点的表现；与 {opt at()} 不允许一起使用{p_end}

{syntab:参考线}
{synopt:{opth rlop:ts(cline_options)}}影响参考线的表现{p_end}

{syntab:Y轴, X轴, 标题, 图例, 整体}
{synopt:{it:twoway_options}}任何不包含 {opt by()} 的选项，可参考 {manhelpi twoway_options G-3}{p_end}
{synoptline}


{marker boot_options}{...}
{synoptset 35 tabbed}{...}
{synopthdr:boot_options}
{synoptline}
{syntab:自助法}
{p2coldent:* {opth bfile(filename)}}加载包含来自 {cmd:rocreg} 的自助法重抽样数据集的 {cmd:filename} {p_end}
{synopt:{cmd:btype(n} | {cmd:p} | {cmd:bc)}}绘制正常基础的 ({cmd:n})、百分位的 ({cmd:p}) 或偏差校正的 ({cmd:bc}) 置信区间；默认是 {cmd:btype(n)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt bfile()} 仅允许与使用自助法推断的参数分析一起使用；在这种情况下，此选项必须与 {opt roc()} 或 {opt invroc()} 一起使用。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 流行病学及相关 > ROC 分析 >}
         {bf:在 rocreg 之后的 ROC 曲线}


{marker description}{...}
{title:描述}

{pstd}
在参数估计下，{cmd:rocregplot} 绘制指定协变量值和分类器的拟合 ROC 曲线。如果之前使用了 {cmd:rocreg, probit} 或 {cmd:rocreg, probit ml}，则每条曲线的假阳性率（用于指定 ROC 值）和 ROC 值（用于指定假阳性率）也可以绘制，并附带置信区间。

{pstd}
在非参数估计下，{cmd:rocregplot} 将使用 {cmd:_fpr_}* 和 {cmd:_roc_}* 变量绘制拟合的 ROC 曲线，这些变量是由 {cmd:rocreg} 生成的。还可以绘制在 {cmd:rocreg} 中计算的假阳性率和 ROC 值的点估计及置信区间。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R rocregplotQuickstart:快速入门}

        {mansection R rocregplotRemarksandexamples:备注和示例}

        {mansection R rocregplotMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options_probit}{...}
{title:probit_options}

{dlgtab:主要}

{phang}
{cmd:at(}{it:{help varname_zh}}{cmd:=}{it:# ...}{cmd:)} 请求指定的 {it:varname} 的协变量设置为 {it:#}。默认情况下，{cmd:rocregplot} 通过将每个协变量设定为其均值来评估函数。此选项会使 ROC 曲线在 {opt at()} 中列出的协变量的值和所有未列协变量的均值下进行评估。

{pmore}
{cmd:at1(}{it:varname}{cmd:=}{it:# ...}{cmd:)},
{cmd:at2(}{it:varname}{cmd:=}{it:# ...}{cmd:)}, ...,
{cmd:at10(}{it:varname}{cmd:=}{it:# ...}{cmd:)} 指定在同一图上绘制 ROC 曲线（最多 10 条）。{opt at1()}, {opt at2()}, ...,
{opt at10()} 的功能与 {opt at()} 选项相同。它们请求在指定的协变量值和所有未列协变量的均值下评估函数。{opt at1()} 指定第一条曲线的协变量值，{opt at2()} 指定第二条曲线的协变量值，依此类推。

{phang}
{opth roc(numlist)} 指定在给定假阳性率下绘制估计的 ROC 值。

{phang}
{opth invroc(numlist)} 指定在给定 ROC 值下绘制估计的假阳性率。

{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。默认值是 {cmd:level(95)} 或如 {helpb set level} 设置的。{cmd:level()} 可与 {cmd:roc()} 或 {cmd:invroc()} 一起使用。

{dlgtab:曲线}

{phang}
{cmd:line}{it:#}{cmd:opts(}{it:cline_options}{cmd:)} 影响 ROC 曲线 {it:#} 的表现。可参考 {manhelpi cline_options G-3}。


{marker options_common}{...}
{title:common_options}

{dlgtab:主要}

{phang}
{opth classvars(varlist)} 限制绘制 ROC 曲线到指定的分类变量。

{phang}
{opt norefline} 抑制绘制参考线。

{dlgtab:散点图}

{phang}
{cmd:plot}{it:#}{cmd:opts(}{it:scatter_options}{cmd:)} 影响分类器 {it:#} 的假阳性率和 ROC 散点的表现。此选项仅适用于非 ROC 协变量估计绘图。
参见 {help scatter_zh:[G-2] graph twoway scatter}。

{dlgtab:参考线}

{phang}
{opt rlopts(cline_options)} 影响参考线的表现。参见 {manhelpi cline_options G-3}。

{dlgtab:Y轴, X轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是参考 {manhelpi twoway_options G-3} 文档中的任何选项，不包括 {opt by()}。这些选项包括图形标题的选项（参见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（参见 {manhelpi saving_option G-3}）。


{marker options_boot}{...}
{title:boot_options}

{dlgtab:自助法}

{phang}
{opth bfile(filename)} 使用存储在 {it:filename} 中的 {cmd:rocreg} 参数的自助法重抽样来估计预测的标准误和置信区间。如果使用了带自助法推断的参数估计，则必须与 {cmd:roc()} 或 {cmd:invroc()} 一起指定 {cmd:bfile()}。

{phang}
{cmd:btype(n} | {cmd:p} | {cmd:bc)} 指定所需的置信区间表现类型。{cmd:n} 绘制基于正态分布的，{cmd:p} 绘制百分位，{cmd:bc} 针对指定的假阳性率和 ROC 值绘制偏差校正的置信区间。默认值为 {cmd:btype(n)}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse hanley}{p_end}

{pstd}假设使用双正态模型拟合平滑的 ROC 曲线{p_end}
{phang2}{cmd:. rocreg disease rating, probit ml}{p_end}
{phang2}{cmd:. rocregplot}{p_end}

{pstd}拟合非参数 ROC 曲线{p_end}
{phang2}{cmd:. rocreg disease rating, bseed(32)}{p_end}
{phang2}{cmd:. rocregplot}{p_end}

    {hline}
{pstd}设置包含多个协变量的数据集{p_end}
{phang2}{cmd:. webuse nnhs, clear}{p_end}

{pstd}对数据拟合双正态 ROC 曲线，控制/ROC 协变量和自助法推断{p_end}
{phang2}{cmd:. rocreg d y1, ctrlcov(currage male) ctrlmodel(linear)}
    {cmd:roccov(currage) cluster(id) bseed(56930) breps(50) bsave(nnhs2y1)}
    {cmd:probit}{p_end}
{phang2}{cmd:. rocregplot, at1(currage=50) at2(currage=40) at3(currage=30)}
    {cmd:roc(.5) bfile(nnhs2y1)}{p_end}

{pstd}对数据拟合双正态 ROC 曲线，控制/ROC 协变量和最大似然推断{p_end}
{phang2}{cmd:. rocreg d y1, ctrlcov(currage male) ctrlmodel(linear)}
   {cmd:roccov(currage) cluster(id) probit ml}{p_end}
{phang2}{cmd:. rocregplot, at1(currage=50) at2(currage=40) at3(currage=30)}
   {cmd:roc(.5)}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rocregplot.sthlp>}