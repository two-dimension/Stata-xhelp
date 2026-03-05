{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog lowess "dialog lowess"}{...}
{vieweralsosee "[R] lowess" "mansection R lowess"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] ipolate" "help ipolate_zh"}{...}
{vieweralsosee "[R] lpoly" "help lpoly_zh"}{...}
{vieweralsosee "[R] smooth" "help smooth_zh"}{...}
{viewerjumpto "语法" "lowess_zh##syntax"}{...}
{viewerjumpto "菜单" "lowess_zh##menu"}{...}
{viewerjumpto "描述" "lowess_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "lowess_zh##linkspdf"}{...}
{viewerjumpto "选项" "lowess_zh##options"}{...}
{viewerjumpto "示例" "lowess_zh##examples"}{...}
{viewerjumpto "参考" "lowess_zh##reference"}
{help lowess:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] lowess} {hline 2}}Lowess 平滑{p_end}
{p2col:}({mansection R lowess:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:lowess} {it:yvar} {it:xvar} {ifin}
 [{cmd:,} {it:options}]

{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{synopt :{opt m:ean}}运行均值平滑；默认是运行线性最小二乘{p_end}
{synopt :{opt now:eight}}抑制加权回归；默认是三立方权重函数{p_end}
{synopt :{opt bw:idth(#)}}使用 {it:#} 作为带宽；默认是 
{cmd:bwidth(0.8)}{p_end}
{synopt :{opt lo:git}}将因变量转换为对数几率{p_end}
{synopt :{opt a:djust}}调整平滑均值使其等于因变量的均值{p_end}
{synopt :{opt nog:raph}}抑制图形显示{p_end}
{synopt :{opth gen:erate(newvar)}}创建 {it:newvar} 包含 {it:yvar} 的平滑值{p_end}

{syntab :图形}
包含帮助 gr_markopt2

{syntab :平滑线}
{synopt :{opth lineop:ts(cline_options)}}影响平滑线的呈现{p_end}

{syntab :添加图形}
{synopt :{opth "addplot(addplot_option:plot)"}}将其他图形添加到生成的图中{p_end}

{syntab :Y 轴, X 轴, 标题, 图例, 整体, 分类}
{synopt :{it:twoway_options}}任何在 {manhelpi twoway_options G-3} 中记录的选项{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{it:yvar} 和 {it:xvar} 可以包含时间序列运算符；请参见 
{help tsvarlist_zh}。

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 非参数分析 > Lowess 平滑}


{marker description}{...}
{title:描述}

{pstd}
{cmd:lowess} 对 {it:yvar} 进行局部加权回归 {it:xvar}，显示图形，并可选择保存平滑变量。

{pstd}
警告： {cmd:lowess} 计算密集，因此在慢速计算机上运行可能需要很长时间。 例如，在 1,000 个观测值上进行 Lowess 计算需要执行 1,000 次回归。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R lowessQuickstart:快速入门}

        {mansection R lowessRemarksandexamples:备注和示例}

        {mansection R lowessMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt mean} 指定运行均值平滑；默认是运行线性最小二乘平滑。

{phang}
{opt noweight} 防止使用 Cleveland 的 
({help lowess##C1979:1979}) 三立方权重函数；默认是使用权重函数。

{phang}
{opt bwidth(#)} 指定带宽。用 {opt bwidth()}*N 的中心子集用于计算数据中每个点的平滑值，除了端点，端点使用较小的非中心子集。 {opt bwidth()} 的值越大，平滑效果越强。默认值为 0.8。

{phang}
{cmd:logit} 将平滑后的 {it:yvar} 转换为对数几率。预测值小于 0.0001 或大于 0.9999 时，分别设置为 1/N 和 1-1/N，然后再取对数几率。

{phang}
{opt adjust} 通过乘以适当的因子，将平滑后的 {it:yvar} 的均值调整为等于 {it:yvar} 的均值。此选项在平滑二元（0/1）数据时非常有用。

{phang}
{opt nograph} 抑制图形显示。

{phang}
{opth generate(newvar)} 创建 {it:newvar} 包含 {it:yvar} 的平滑值。

{dlgtab:图形}

包含帮助 gr_markoptf

{dlgtab:平滑线}

{phang}
{opt lineopts(cline_options)} 影响 Lowess 平滑线的呈现；请参见 {manhelpi cline_options G-3}。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 提供将其他图形添加到生成的图中的方法；请参见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体, 分类}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的任何选项。这些包括图形标题选项（见 {manhelpi title_options G-3}）、将图形保存到硬盘的选项（见 {manhelpi saving_option G-3}）以及 {opt by()} 选项（见 {manhelpi by_option G-3}）。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse lowess1}{p_end}

{pstd}对 {cmd:h1} 进行 {cmd:depth} 的局部加权回归并显示图形{p_end}
{phang2}{cmd:. lowess h1 depth}{p_end}

{pstd}与上述相同，但将带宽设置为 0.4，而非默认的 0.8{p_end}
{phang2}{cmd:. lowess h1 depth, bwidth(.4)}

{pstd}与上述相同，但将 {cmd:h1} 的平滑值保存在 {cmd:x1} 中并抑制图形显示{p_end}
{phang2}{cmd:. lowess h1 depth, bwidth(.4) gen(x1) nograph}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}

{pstd}对 {cmd:foreign} 进行 {cmd:mpg} 的局部加权回归，为 0 标记为 Domestic，为 1 标记为 Foreign{p_end}
{phang2}{cmd:. lowess foreign mpg, ylabel(0 "Domestic" 1 "Foreign")}

{pstd}与上述相同，但调整平滑后的 {cmd:foreign} 的均值，使其等于 {cmd:foreign} 的均值{p_end}
{phang2}{cmd:. lowess foreign mpg, ylabel(0 "Domestic" 1 "Foreign")}
              {cmd:adjust}{p_end}

{pstd}对 {cmd:foreign} 进行 {cmd:mpg} 的局部加权回归，将平滑的 {cmd:foreign} 转换为对数几率并绘制水平线在 0{p_end}
{phang2}{cmd:. lowess foreign mpg, logit yline(0)}{p_end}
    {hline}


{marker reference}{...}
{title:参考}

{marker C1979}{...}
{phang}
Cleveland, W. S. 1979. 鲁棒局部加权回归和平滑散点图。 {it:美国统计协会期刊} 74:
829-836。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lowess.sthlp>}