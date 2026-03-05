{smcl}
{* *! version 1.1.15  27feb2019}{...}
{viewerdialog lpoly "dialog lpoly"}{...}
{vieweralsosee "[R] lpoly" "mansection R lpoly"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway lpoly" "help twoway lpoly"}{...}
{vieweralsosee "[G-2] graph twoway lpolyci" "help twoway lpolyci"}{...}
{vieweralsosee "[R] kdensity" "help kdensity_zh"}{...}
{vieweralsosee "[R] lowess" "help lowess_zh"}{...}
{vieweralsosee "[R] npregress kernel" "help npregress kernel"}{...}
{vieweralsosee "[R] npregress series" "help npregress series"}{...}
{vieweralsosee "[R] smooth" "help smooth_zh"}{...}
{viewerjumpto "Syntax" "lpoly_zh##syntax"}{...}
{viewerjumpto "Menu" "lpoly_zh##menu"}{...}
{viewerjumpto "Description" "lpoly_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "lpoly_zh##linkspdf"}{...}
{viewerjumpto "Options" "lpoly_zh##options"}{...}
{viewerjumpto "Examples" "lpoly_zh##examples"}{...}
{viewerjumpto "Stored results" "lpoly_zh##results"}
{help lpoly:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] lpoly} {hline 2}} 核加权局部多项式平滑 {p_end}
{p2col:}({mansection R lpoly:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:lpoly} {it:yvar} {it:xvar} {ifin}
[{it:{help lpoly##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 31 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{synopt: {opth k:ernel(lpoly##kernel:核函数)}}指定核函数；默认是 {cmd:kernel(epanechnikov)}{p_end}
{synopt :{opt bw:idth}({it:#}|{it:{help varname_zh:变量名}})}指定核带宽{p_end}
{synopt :{opt deg:ree(#)}}指定多项式光滑的度数；默认是 {cmd:degree(0)}{p_end}
{synopt :{cmdab:gen:erate(}[{it:{help newvar_zh:newvar_x}}] {it:{help newvar_zh:newvar_s}})}将光滑网格存储在 {it:newvar_x} 中，将平滑值存储在 {it:newvar_s} 中{p_end}
{synopt :{opt n(#)}}在 {it:#} 个点上计算平滑值；默认是 min(N,50){p_end}
{synopt :{opt at}({it:{help varname_zh:变量名}})}在由 {it:变量名} 指定的值上获取平滑值{p_end}
{synopt :{opt nogr:aph}}抑制图形{p_end}
{synopt :{opt nosc:atter}}仅抑制散点图{p_end}

{syntab :SE/CI}
{synopt :{opt ci}}绘制置信带{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt: {opt se}({it:{help newvar_zh:newvar}})}将标准误存储在 {it:newvar} 中{p_end}
{synopt :{opt pw:idth(#)}}指定用于标准误计算的样本带宽{p_end}
{synopt :{opt v:ar}({it:#}|{it:{help varname_zh:变量名}})}指定残差方差的估计值{p_end}

{syntab :散点图}
包含帮助 gr_markopt2

{syntab :平滑线}
{synopt :{opth lineop:ts(cline_options)}}影响平滑线的呈现{p_end}

{syntab :置信区间图}
{synopt :{opth ciop:ts(cline_options)}}影响置信带的呈现{p_end}

{syntab :添加图形}
{synopt :{opth "addplot(addplot_option:图形)"}}将其它图形添加到生成的图中{p_end}

{syntab :Y 轴, X 轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}任何在 {manhelpi twoway_options G-3} 中记录的选项，除了 {cmd:by()}{p_end}
{synoptline}

{synoptset 29}{...}
{marker kernel}{...}
{synopthdr :核函数}
{synoptline}
{synopt :{opt ep:anechnikov}}Epanechnikov 核函数；默认值{p_end}
{synopt :{opt epan2}}替代的 Epanechnikov 核函数{p_end}
{synopt :{opt bi:weight}}双重权重核函数{p_end}
{synopt :{opt cos:ine}}余弦核函数{p_end}
{synopt :{opt gau:ssian}}高斯核函数{p_end}
{synopt :{opt par:zen}}Parzen 核函数{p_end}
{synopt :{opt rec:tangle}}矩形核函数{p_end}
{synopt :{opt tri:angle}}三角核函数{p_end}
{synoptline}
{p2colreset}{...}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s 和 {cmd:aweight}s 是允许的；见 {help weight_zh}。

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 非参数分析 > 局部多项式平滑}

{marker description}{...}
{title:描述}

{pstd}
{cmd:lpoly} 执行 {it:yvar} 对 {it:xvar} 的核加权局部多项式回归，并显示平滑值的图（可选置信带）。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R lpolyQuickstart:快速入门}

        {mansection R lpolyRemarksandexamples:备注和示例}

        {mansection R lpolyMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。

{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth "kernel(lpoly##kernel:核函数)"} 指定用于计算加权局部多项式估计的核函数。默认是 {cmd:kernel(epanechnikov)}。

{phang}
{opt bwidth}({it:#}|{it:{help varname_zh:变量名}}) 指定核的半宽度——在每个点周围的平滑窗口宽度。如果未指定 {opt bwidth()}，则将计算并使用经验法则（ROT）带宽估计量。可以在 {it:变量名} 中指定局部变量带宽，结合 {opt at()} 选项使用明确的平滑网格。

{phang}
{opt degree(#)} 指定用于平滑的多项式的度数。默认值为 {cmd:degree(0)}，即局部均值平滑。

{phang}
{cmd:generate(}[{it:{help newvar_zh:newvar_x}}] {it:newvar_s}{cmd:)} 将平滑网格存储在 {it:newvar_x} 中，将平滑值存储在 {it:newvar_s} 中。如果未指定 {opt at()}，则必须指定 {it:newvar_x} 和 {it:newvar_s}。否则，仅需指定 {it:newvar_s}。

{phang}
{opt n(#)} 指定计算平滑值的点数。默认为 min(N,50)，其中 N 为观测值的数量。

{phang}
{opt at}({it:{help varname_zh:变量名}}) 指定一个包含要计算平滑值的值的变量。默认情况下，平滑是在等间距网格上进行的，但您可以使用 {opt at()} 直接在观察到的 {it:x} 上进行平滑。例如。此选项还允许您更轻松地为不同的变量或同一变量的不同子样本获取平滑值，然后叠加估计以进行比较。

{phang}
{opt nograph} 抑制生成的平滑图形的绘制。此选项通常与 {opt generate()} 选项一起使用。

{phang}
{opt noscatter} 抑制在平滑上叠加观察到的数据的散点图。此选项在结果点过多，可能会使图形混乱时非常有用。

{dlgtab:SE/CI}

{phang}
{opt ci} 绘制置信带，使用在 {opt level()} 中指定的置信水平。

{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置。

{phang}
{opt se}({it:{help newvar_zh:newvar}}) 将标准误的估计值存储在 {it:newvar} 中。此选项需要指定 {opt generate()} 或 {opt at()}。

{phang}
{opt pwidth(#)} 指定用于标准误计算的样本带宽。默认选择为 ROT 带宽选择器值的 1.5 倍。如果您在未指定 {cmd:se()} 或 {cmd:ci} 的情况下指定 {cmd:pwidth()}，则假定 {cmd:ci} 选项。

{phang}
{opt var}({it:#}|{it:{help varname_zh:变量名}}) 指定一个常量残差方差的估计值，或一个包含在每个网格点要求的残差方差估计值的变量。默认情况下，在每个平滑点的残差方差通过局部拟合的 p+2 次多项式的归一化加权残差平方和来估计，其中 p 为在 {opt degree()} 中指定的度数。{opt var(varname)} 仅在指定了 {cmd:at()} 的情况下被允许。如果您在未指定 {cmd:se()} 或 {cmd:ci} 的情况下指定 {cmd:var()}，则假定 {cmd:ci} 选项。

{dlgtab:散点图}

包含帮助 gr_markoptf

{dlgtab:平滑线}

{phang}
{opt lineopts(cline_options)} 影响平滑线的呈现；见 {manhelpi cline_options G-3}。

{dlgtab:CI 图}

{phang}
{opt ciopts(cline_options)} 影响置信带的呈现；见 {manhelpi cline_options G-3}。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 提供了一种将其他图形添加到生成的图中的方法；见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的任何选项，除了 {opt by()}。
这些包括为图形命名的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse motorcycle}{p_end}

{pstd}局部均值平滑{p_end}
{phang2}{cmd:. lpoly accel time}{p_end}

{pstd}局部三次多项式平滑{p_end}
{phang2}{cmd:. lpoly accel time, degree(3) kernel(epan2)}{p_end}

{pstd}与上述相同，但将平滑值和标准误作为变量保存而不是绘制{p_end}
{phang2}{cmd:. lpoly accel time, degree(3) kernel(epan2) generate(x s) se(se) nograph}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:lpoly} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(degree)}}平滑多项式的度数{p_end}
{synopt:{cmd:r(ngrid)}}成功回归的数量{p_end}
{synopt:{cmd:r(N)}}样本大小{p_end}
{synopt:{cmd:r(bwidth)}}平滑的带宽{p_end}
{synopt:{cmd:r(pwidth)}}样本带宽{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(kernel)}}核函数名称{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lpoly.sthlp>}