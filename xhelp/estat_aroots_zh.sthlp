{smcl}
{* *! version 1.0.4  19oct2017}{...}
{viewerdialog estat "dialog estat"}{...}
{vieweralsosee "[TS] estat aroots" "mansection TS estataroots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arima" "help arima_zh"}{...}
{viewerjumpto "语法" "estat aroots##syntax"}{...}
{viewerjumpto "菜单" "estat aroots##menu_estat"}{...}
{viewerjumpto "描述" "estat aroots##description"}{...}
{viewerjumpto "PDF文档链接" "estat_aroots_zh##linkspdf"}{...}
{viewerjumpto "选项" "estat aroots##options"}{...}
{viewerjumpto "示例" "estat aroots##examples"}{...}
{viewerjumpto "存储结果" "estat aroots##results"}
{help estat_aroots:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[TS] estat aroots} {hline 2}}检查ARIMA估计的稳定性条件{p_end}
{p2col:}({mansection TS estataroots:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:estat aroots}
[{cmd:,} {it:options}]

{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:{opt nogra:ph}}抑制伴随矩阵特征值的图形{p_end}
{synopt:{opt d:label}}用距离单位圆的距离标记特征值{p_end}
{synopt:{opt mod:label}}用模标记特征值{p_end}

{syntab:网格}
{synopt:{opt nogrid}}抑制极坐标网格圆{p_end}
{synopt:{opt pgrid}{cmd:(}[...]{cmd:)}}指定极坐标网格圆的半径和外观；有关详细信息，请参见 {it:{help estat aroots##pgrid():选项}}{p_end}

{syntab:图形}
{synopt :{it:{help marker_options_zh}}}更改标记的外观（颜色、大小等）{p_end}

{syntab:参考单位圆}
{synopt:{opth rlop:ts(cline_options)}}影响参考单位圆的呈现{p_end}

{syntab:Y轴, X轴, 标题, 图例, 整体}
{synopt:{it:twoway_options}}任何不包括在{opt by()}中的选项，详见 {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}


包含帮助菜单_estat


{marker description}{...}
{title:描述}

{pstd}
{opt estat aroots} 在使用 {cmd:arima} 估计ARIMA模型参数后检查特征值稳定性条件。
还会生成伴随矩阵的特征值图。

{pstd}
{cmd:estat aroots} 仅在 {help arima_zh} 之后可用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS estataroots快速开始:快速开始}

        {mansection TS estataroots备注和示例:备注和示例}

        {mansection TS estataroots方法和公式:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt nograph} 指定不绘制伴随矩阵特征值的图形。

{phang}
{opt dlabel} 用距离单位圆的距离标记每个特征值。 {opt dlabel} 不能和 {opt modlabel} 同时指定。

{phang}
{opt modlabel} 用特征值的模标记特征值。 {opt modlabel} 不能和 {opt dlabel} 同时指定。

{dlgtab:网格}

{phang}
{opt nogrid} 抑制极坐标网格圆。

{phang}
{marker pgrid()}{...}
{cmd:pgrid(}[{it:{help numlist_zh}}][{cmd:,} {it:line_options}]{cmd:)}
   确定极坐标网格圆的半径和外观。默认情况下，图形包括半径为0.1、0.2、...、0.9的九个极坐标网格圆，具有{opt grid}线条样式。 {it:numlist} 指定极坐标网格圆的半径。 {it:line_options} 确定极坐标网格圆的外观；请参见 {manhelpi line_options G-3}。由于 {opt pgrid()} 选项可以重复，因此不同半径的圆可以有不同的外观。

{dlgtab:图形}

{phang}
{it:marker_options}
    指定标记的外观。此外观包括标记符号、标记大小及其颜色和轮廓；详见 {manhelpi marker_options G-3}。

{dlgtab:参考单位圆}

{phang}
{opt rlopts(cline_options)} 影响参考单位圆的呈现；详见 {manhelpi cline_options G-3}。

{dlgtab:Y轴, X轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是文档中记录的任何选项 {manhelpi twoway_options G-3}，除了 {cmd:by()}。其中包括图形标题的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。 


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse air2}{p_end}
{phang2}{cmd:. generate lnair = ln(air)}{p_end}

{pstd}拟合具有加性季节效应的ARIMA模型{p_end}
{phang2}{cmd:. arima lnair, arima(0,1,1) sarima(0,1,1,12) noconstant}{p_end}

{pstd}检查 {cmd:arima} 结果的稳定性并绘制伴随矩阵的特征值{p_end}
{phang2}{cmd:. estat aroots}{p_end}

{pstd}与上述相同，但在图中抑制极坐标网格圆{p_end}
{phang2}{cmd:. estat aroots, nogrid}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat aroots} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(Re_ar)}}AR伴随矩阵特征值的实部{p_end}
{synopt:{cmd:r(Im_ar)}}AR伴随矩阵特征值的虚部{p_end}
{synopt:{cmd:r(Modulus_ar)}}AR伴随矩阵特征值的模{p_end}
{synopt:{cmd:r(ar)}}AR伴随矩阵{p_end}
{synopt:{cmd:r(Re_ma)}}MA伴随矩阵特征值的实部{p_end}
{synopt:{cmd:r(Im_ma)}}MA伴随矩阵特征值的虚部{p_end}
{synopt:{cmd:r(Modulus_ma)}}MA伴随矩阵特征值的模{p_end}
{synopt:{cmd:r(ma)}}MA伴随矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_aroots.sthlp>}