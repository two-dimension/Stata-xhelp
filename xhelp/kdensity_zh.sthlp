{smcl}
{* *! version 1.1.13  27feb2019}{...}
{viewerdialog kdensity "dialog kdensity"}{...}
{vieweralsosee "[R] kdensity" "mansection R kdensity"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] histogram" "help histogram_zh"}{...}
{vieweralsosee "[R] npregress kernel" "help npregress kernel"}{...}
{vieweralsosee "[R] npregress series" "help npregress series"}{...}
{viewerjumpto "Syntax" "kdensity_zh##syntax"}{...}
{viewerjumpto "Menu" "kdensity_zh##menu"}{...}
{viewerjumpto "Description" "kdensity_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "kdensity_zh##linkspdf"}{...}
{viewerjumpto "Options" "kdensity_zh##options"}{...}
{viewerjumpto "Examples" "kdensity_zh##examples"}{...}
{viewerjumpto "Stored results" "kdensity_zh##results"}{...}
{viewerjumpto "Reference" "kdensity_zh##reference"}
{help kdensity:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] kdensity} {hline 2}}单变量核密度估计{p_end}
{p2col:}({mansection R kdensity:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:kdensity} {varname} {ifin}
[{it:{help kdensity##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 29 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{synopt: {opth k:ernel(kdensity##kernel:核函数)}}指定核函数；
            默认是 {cmd:kernel(epanechnikov)}{p_end}
{synopt :{opt bw:idth(#)}}核的半宽度{p_end}
{synopt :{opth g:enerate(newvar:newvar_x newvar_d)}}将估计点存储在 {it:newvar_x} 中，并将密度估计存储在 {it:newvar_d} 中{p_end}
{synopt :{opt n(#)}}使用 {it:#} 点估计密度；默认值是 min(N, 50){p_end}
{synopt :{opt at(var_x)}}使用 {it:var_x} 指定的值来估计密度{p_end}
{synopt :{opt nogr:aph}}抑制图形{p_end}

{syntab :核图}
{synopt :{it:{help cline_options_zh}}}影响绘制的核密度估计的表现{p_end}

{syntab :密度图}
{synopt :{opt nor:mal}}在图形中添加正态密度{p_end}
{synopt :{opth normop:ts(cline_options)}}影响正态密度的表现{p_end}
{synopt :{opt stu:dent(#)}}在图形中添加具有 {it:#} 自由度的学生t密度{p_end}
{synopt :{opth stop:ts(cline_options)}}影响学生t密度的表现{p_end}

{syntab :附加图}
{synopt :{opth "addplot(addplot_option:图形)"}}将其他图形添加到生成的图形中{p_end}

{syntab :Y轴, X轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}除 {opt by()} 以外在 {manhelpi twoway_options G-3} 中记录的任何选项{p_end}
{synoptline}

{synoptset 29}{...}
{marker kernel}{...}
{synopthdr :核函数}
{synoptline}
{synopt :{opt ep:anechnikov}}Epanechnikov核函数；默认值{p_end}
{synopt :{opt epan2}}替代Epanechnikov核函数{p_end}
{synopt :{opt bi:weight}}双重权重核函数{p_end}
{synopt :{opt cos:ine}}余弦追踪核函数{p_end}
{synopt :{opt gau:ssian}}高斯核函数{p_end}
{synopt :{opt par:zen}}Parzen核函数{p_end}
{synopt :{opt rec:tangle}}矩形核函数{p_end}
{synopt :{opt tri:angle}}三角核函数{p_end}
{synoptline}
{p2colreset}{...}

{marker weight}{...}
{pstd}
支持 {cmd:fweight}s，{cmd:aweight}s 和 {cmd:iweight}s；请参见
{help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 非参数分析 > 核密度估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:kdensity} 生成核密度估计并绘制结果图。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R kdensityQuickstart:快速开始}

        {mansection R kdensityRemarksandexamples:备注和示例}

        {mansection R kdensityMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth "kernel(kdensity##kernel:核函数)"}指定计算核密度估计时使用的核函数。默认核是
Epanechnikov核 ({opt epanechnikov})。

{phang}
{opt bwidth(#)}指定核的半宽度，即在每个点周围的密度窗口宽度。如果未指定 {opt bwidth()}，则会计算并使用“最佳”宽度；请参见 {bind:{bf:[R] kdensity}}。最佳宽度是指当数据呈高斯分布且使用高斯核时，能使平均积分平方误差最小化的宽度，因此在任何全局意义上并不算最佳。事实上，对于多模态和高度偏斜的密度，这个宽度通常过宽，并且会过度平滑密度（{help kdensity##S1986:Silverman 1986}）。

{phang}
{opth "generate(newvar:newvar_x newvar_d)"}存储估计结果。{it:newvar_x} 将包含密度估计的点。{it:newvar_d} 将包含密度估计。

{phang}
{opt n(#)}指定要评估密度估计的点数。默认值是 min(N,50)，其中 N 是内存中观察值的数量。

{phang}
{opt at(var_x)}指定一个变量，该变量包含应估计密度的值。此选项允许您更容易地获得不同变量或变量不同子样本的密度估计，然后将估计的密度重叠以进行比较。

{phang}
{opt nograph}抑制图形。此选项通常与 {opt generate()} 选项一起使用。

{dlgtab:核图}

{phang}
{it:cline_options}影响绘制的核密度估计的表现。请参见 {manhelpi cline_options G-3}。

{dlgtab:密度图}

{phang}
{opt normal}请求在密度估计上叠加正态密度以便进行比较。

{phang}
{opt normopts(cline_options)}指定有关正态曲线表现的详细信息，例如使用的颜色和线条样式。请参见 {manhelpi cline_options G-3}。

{phang}
{opt student(#)}指定在密度估计上叠加具有 {it:#} 自由度的学生t密度以便进行比较。

{phang}
{opt stopts(cline_options)}影响学生t密度的表现。请参见 {manhelpi cline_options G-3}。

{dlgtab:添加图}

{phang}
{opt addplot(plot)}提供了一种将其他图形添加到生成的图形中的方法。请参见 {manhelpi addplot_option G-3}。

{dlgtab:Y轴, X轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的任何选项，排除 {opt by()}。这些包括为图形命名的选项（请参见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（请参见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}绘制 {cmd:length} 的核密度估计图{p_end}
{phang2}{cmd:. kdensity length}{p_end}

{pstd}与上述相同，但将核的半宽度设置为 20{p_end}
{phang2}{cmd:. kdensity length, bw(20)}{p_end}

{pstd}使用 Parzen 核函数获得 {cmd:weight} 的核密度估计，将这些结果存储在 {cmd:x2} 中，并抑制图形{p_end}
{phang2}{cmd:. kdensity weight, kernel(parzen) gen(x2 parzen) nograph}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:kdensity} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(bwidth)}}核带宽{p_end}
{synopt:{cmd:r(n)}}评估估计的点数{p_end}
{synopt:{cmd:r(scale)}}密度箱宽度{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(kernel)}}核名称{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker S1986}{...}
{phang}
Silverman, B. W. 1986.
{it:统计与数据分析的密度估计}.
伦敦：查普曼和霍尔。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <kdensity.sthlp>}