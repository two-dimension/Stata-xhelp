{smcl}
{* *! version 1.0.4  19oct2017}{...}
{viewerdialog estat "dialog estat"}{...}
{vieweralsosee "[TS] estat acplot" "mansection TS estatacplot"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arfima" "help arfima_zh"}{...}
{vieweralsosee "[TS] arima" "help arima_zh"}{...}
{viewerjumpto "语法" "estat acplot##syntax"}{...}
{viewerjumpto "estat 菜单" "estat acplot##menu_estat"}{...}
{viewerjumpto "描述" "estat acplot##description"}{...}
{viewerjumpto "PDF 文档链接" "estat_acplot_zh##linkspdf"}{...}
{viewerjumpto "选项" "estat acplot##options"}{...}
{viewerjumpto "示例" "estat acplot##example"}
{help estat_acplot:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[TS] estat acplot} {hline 2}}绘制参数自相关和自协方差函数{p_end}
{p2col:}({mansection TS estatacplot:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 25 2}
{cmd:estat acplot}
[{cmd:,} {it:options}]

{synoptset 24 tabbed}{...}
{synopthdr :选项}
{synoptline}
{synopt :{help estat_acplot##saving():{bf:{ul:保}存(}{it:filename}{bf:[, ...])}}}将结果保存到 {it:filename}；以双精度保存变量；保存前缀为 {it:stubname} 的变量{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{opt lag:s(#)}}使用 {it:#} 个自相关{p_end}
{synopt:{opt cov:ariance}}计算自协方差；默认计算自相关{p_end}
{synopt:{opt smem:ory}}报告短记忆自相关函数；仅在 {cmd:arfima} 后允许{p_end}

{syntab:置信区间图}
{synopt :{opth ciop:ts(rcap_options)}}影响置信带的表现{p_end}

{syntab:图形}
{synopt :{it:{help marker_options_zh}}}更改标记的外观（颜色、大小等）{p_end}
{synopt :{it:{help marker_label_options_zh}}}添加标记标签；更改外观或位置{p_end}
{synopt :{it:{help cline_options_zh}}}影响绘制点的线条表现{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}任何在 {manhelpi twoway_options G-3} 中记录的除 {opt by()} 以外的选项{p_end}
{synoptline}
{p2colreset}{...}


包括帮助菜单 estat


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat acplot} 使用之前拟合的参数模型的参数绘制平稳过程的估计自相关和自协方差函数。

{pstd}
{cmd:estat acplot} 在 {help arima_zh} 和 {help arfima_zh} 之后可用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS estatacplotQuickstart:快速入门}

        {mansection TS estatacplotRemarksandexamples:备注和示例}

        {mansection TS estatacplotMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{marker saving()}{...}
{phang}
{opt saving}{cmd:(}{it:{help filename_zh}} [{cmd:,} {it:suboptions}]{cmd:)} 创建一个包含自相关估计、标准误差和置信边界的 Stata 数据文件 ({cmd:.dta} 文件)。

{pmore}
保存五个变量：{cmd:lag}（滞后数），{cmd:ac}（自相关估计），{cmd:se}（标准误差），{cmd:ci_l}（下置信边界），和 {cmd:ci_u}（上置信边界）。

{pmore}
{cmd:double} 指定变量以 {cmd:double} 类型保存，意为 8 字节实数。默认情况下，它们被保存为 {cmd:float} 类型，意为 4 字节实数。

{pmore}
{opt name(stubname)} 指定变量以前缀 {it:stubname} 保存。

{pmore}
{opt replace} 指示如果 {it:filename} 已存在则对其进行覆盖。

{phang}
{opt level(#)} 指定置信区间的置信水平，作为百分比。默认值为 {cmd:level(95)} 或者由 {helpb set level} 设置。

{phang}
{opt lags(#)} 指定要计算的自相关数量。默认情况下使用 min{floor(n/2) - 2, 40}，其中 floor(n/2) 是小于或等于 n/2 的最大整数，n 是观察数量。

{phang}
{opt covariance} 指定计算自协方差而非默认的自相关。

{phang}
{opt smemory} 指定忽略 ARFIMA 分数积分参数。计算的自相关是模型的短记忆 ARMA 组件的。此选项仅在 {cmd:arfima} 后允许。

{dlgtab:置信区间图}

{marker ciopts()}{...}
{phang}
{opt ciopts(rcap_options)} 影响置信带的表现；参见 {manhelpi rcap_options G-3}。

{dlgtab:图形}

{phang}
{it:marker_options} 影响在绘制点上绘制的标记的表现，包括它们的形状、大小、颜色和轮廓；参见 {manhelpi marker_options G-3}。

{phang}
{it:marker_label_options} 指定是否及如何标记这些标记；参见 {manhelpi marker_label_options G-3}。

{phang}
{it:cline_options} 影响连接绘制点的线的表现及其外观；参见 {manhelpi cline_options G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是 {manhelpi twoway_options G-3} 中记录的任何选项，除了 {opt by()}。这些包括图形标题的选项（参见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（参见 {manhelpi saving_option G-3}）。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse wpi1}{p_end}
{phang2}{cmd:. arima wpi, arima(1,1,1)}{p_end}

{pstd}绘制自相关及其 95% 置信区间{p_end}
{phang2}{cmd:. estat acplot, lags(50)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_acplot.sthlp>}