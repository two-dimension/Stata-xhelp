{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog cvplot "dialog cvplot"}{...}
{vieweralsosee "[LASSO] cvplot" "mansection lasso cvplot"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso postestimation" "help lasso postestimation"}{...}
{vieweralsosee "[LASSO] lasso inference postestimation" "help lasso inference postestimation"}{...}
{viewerjumpto "Syntax" "cvplot_zh##syntax"}{...}
{viewerjumpto "Menu" "cvplot_zh##menu"}{...}
{viewerjumpto "Description" "cvplot_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cvplot_zh##linkspdf"}{...}
{viewerjumpto "Options" "cvplot_zh##options"}{...}
{viewerjumpto "Examples" "cvplot_zh##examples"}
{help cvplot:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[LASSO] cvplot} {hline 2}}绘制 lasso 后的交叉验证函数{p_end}
{p2col:}({mansection LASSO cvplot:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
在 {cmd:lasso}、{cmd:sqrtlasso} 和 {cmd:elasticnet} 之后

{p 8 16 2}
{cmd:cvplot}
[{cmd:,} {help cvplot##cvplot_options:{it:选项}}]


{pstd}
在 {cmd:ds} 和 {cmd:po} 命令之后

{p 8 16 2}
{cmd:cvplot,} {opt for(varspec)} 
[{help cvplot##cvplot_options:{it:选项}}]


{pstd}
在不使用 {cmd:resample} 的 {cmd:xpo} 命令之后

{p 8 16 2}
{cmd:cvplot,} {opt for(varspec)} 
{opt xfold(#)}
[{help cvplot##cvplot_options:{it:选项}}]


{pstd}
在使用 {cmd:resample} 的 {cmd:xpo} 命令之后

{p 8 16 2}
{cmd:cvplot,} {opt for(varspec)} 
{opt xfold(#)}
{opt resample(#)}
[{help cvplot##cvplot_options:{it:选项}}]


{phang}
{it:varspec} 是一个 {varname}，但在 {cmd:poivregress} 和 {cmd:xpoivregress} 之后，它可以是 {it:varname} 或 
{mansection LASSO lassoinfoRemarksandexamplespred_varname:{bf:pred(}{it:varname}{bf:)}}.


{marker cvplot_options}{...}
{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{cmd:xunits(}{help cvplot##xunitspec:{it:x_unit_spec}}{cmd:)}}x 轴单位（缩放）；默认是 {cmd:xunits(rlnlambda)}，其中 {cmd:rlnlambda} 表示反对数缩放的 lambda{p_end}
{synopt :{cmd:minmax}}为 x 轴单位的最小值和最大值添加标签{p_end}
INCLUDE help for_short
{synopt :{opt alpha(#)}}为 alpha = {it:#} 绘制 CV 函数；默认是选择的 alpha* 值；仅在 {cmd:elasticnet} 后允许{p_end}
{synopt :{cmd:lineopts(}{help cline_options_zh:{it:cline_options}}{cmd:)}}影响绘制线路的渲染{p_end}

{syntab:标准误差图}
{synopt :{cmd:se}}显示 CV 函数的标准误差区间{p_end}
{synopt :{cmdab:seop:ts(}{help rcap_options_zh:{it:rcap_options}}{cmd:)}}影响标准误差区间的渲染{p_end}

{syntab:参考线}
{synopt :{cmdab:cvlineop:ts(}{help cline_options_zh:{it:cline_options}}{cmd:)}}影响识别 CV 函数最小值或其他停止规则的参考线的渲染{p_end}
{synopt :{cmd:nocvline}}抑制识别 CV 函数最小值或其他停止规则的参考线{p_end}
{synopt :{cmdab:lslineop:ts(}{help cline_options_zh:{it:cline_options}}{cmd:)}}影响使用 {cmd:lassoselect} 选择的值的参考线的渲染{p_end}
{synopt :{cmd:nolsline}}抑制使用 {cmd:lassoselect} 选择的值的参考线{p_end}
{synopt :{cmdab:selineop:ts(}{help cline_options_zh:{it:cline_options}}{cmd:)}}影响识别通过一标准误差规则选择的值的参考线的渲染{p_end}
{synopt :[{cmd:no}]{cmd:seline}}绘图或抑制识别通过一标准误差规则选择的值的参考线；在 {cmd:selection(cv, serule)} 为 lasso 选择方法时默认显示{p_end}
{synopt :{cmd:hrefline}}添加与垂直参考线相交的水平参考线{p_end}
{synopt :{cmdab:rlabelop:ts(}{help cvplot##rlabelopts:{it:r_label_opts}}{cmd:)}}更改参考线标签的外观{p_end}

{syntab:数据}
{synopt :{cmd:data(}{help filename_zh:{it:filename}}[{cmd:, replace}]{cmd:)}}}将绘图数据保存到 {it:filename}{p_end}

{syntab:Y 轴，X 轴，标题，图例，整体}
{synopt :{it:twoway_options}}任何 documented 在 {manhelpi twoway_options G-3} 中的除 {cmd:by()} 之外的选项{p_end}
{synoptline}
INCLUDE help for_footnote


{marker xunitspec}{...}
{synoptset 35}{...}
{synopthdr:x_unit_spec}
{synoptline}
{synopt :{cmdab:rlnlam:bda}}反对数缩放的 lambda；默认值{p_end}
{synopt :{cmdab:lnlam:bda}}对数缩放的 lambda{p_end}
{synopt :{cmd:l1norm}}标准化系数向量的 L1 范数{p_end}
{synopt :{cmd:l1normraw}}未标准化系数向量的 L1 范数{p_end}
{synoptline}


{marker rlabelopts}{...}
{synoptset 35}{...}
{synopthdr:r_label_opts}
{synoptline}
{synopt :{cmdab:labg:ap(}{help size_zh:{it:size}}{cmd:)}}刻度和标签之间的间距{p_end}
{synopt :{cmdab:labsty:le(}{help textstyle_zh:{it:textstyle}}{cmd:)}}标签的整体样式{p_end}
{synopt :{cmdab:labs:ize(}{help textsizestyle_zh:{it:textsizestyle}}{cmd:)}}标签的大小{p_end}
{synopt :{cmdab:labc:olor(}{help colorstyle_zh:{it:colorstyle}}{cmd:)}}标签的颜色和不透明度{p_end}
{synoptline}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 事后估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cvplot} 绘制使用 {cmd:selection(cv)}、{cmd:selection(adaptive)} 或 {cmd:selection(none)} 拟合的 lasso 的交叉验证 (CV) 函数。

{pstd}
{cmd:cvplot} 可在 {cmd:lasso}、{cmd:elasticnet}、{cmd:sqrtlasso} 或任何 lasso 事后估计命令之后使用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection LASSO dslogitQuickstart:快速开始}

        {mansection LASSO dslogitRemarksandexamples:备注和示例}

{pstd}
上述章节不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:xunits({it:x_unit_spec})} 指定用于绘制 CV 函数的 x 轴单位。可用以下 {it:x_unit_spec}：

{phang2}
{cmd:rlnlambda} 指定 x 轴单位为反对数缩放的 lambda。这是默认值。

{phang2}
{cmd:lnlambda} 指定 x 轴单位为对数缩放的 lambda。

{phang2}
{cmd:l1norm} 指定 x 轴单位为标准化系数向量的 L1 范数。

{phang2}
{cmd:l1normraw} 指定 x 轴单位为未标准化系数向量的 L1 范数。

{phang}
{cmd:minmax} 为 CV 函数图形添加最小值和最大值 x 轴单位的标签。

INCLUDE help for_long

{phang}
{opt alpha(#)} 为 alpha = {it:#} 绘制 CV 函数。默认是 
{opt alpha(alpha*)}，其中 {it:alpha*} 是选择的 alpha。{opt alpha(#)} 仅可在 {cmd:elasticnet} 之后指定。

{phang}
{opt lineopts(cline_options)} 影响绘制线的渲染。
请参见 {manhelpi cline_options G-3}。

{dlgtab:标准误差图}

{phang}
{cmd:se} 显示 CV 函数的标准误差带。

{phang}
{opt seopts(rcap_options)} 影响标准误差带的渲染。请参见 {manhelpi rcap_options G-3}。

{dlgtab:参考线}

{phang}
{opt cvlineopts(cline_options)} 影响标识最小 CV 值的参考线的渲染，或在达到停止容许度时选择的值，或网格最小值。请参见 {manhelpi cline_options G-3}。

{phang}
{cmd:nocvline} 抑制标识最小 CV 值的参考线，或在达到停止容许度时选择的值，或网格最小值。

{phang}
{opt lslineopts(cline_options)} 影响标识使用 {cmd:lassoselect} 选择的值的参考线的渲染。请参见 {manhelpi cline_options G-3}。

{phang}
{cmd:nolsline} 抑制标识使用 {cmd:lassoselect} 选择的值的参考线。

{phang}
{opt selineopts(cline_options)} 影响标识通过一标准误差规则选择的值的参考线的渲染。请参见 {manhelpi cline_options G-3}。

{phang}
[{cmd:no}]{cmd:seline} 绘图或抑制标识通过一标准误差规则选择的值的参考线。默认情况下，当 {cmd:selection(cv, serule)} 为 lasso 的选择方法时显示该线。对于其他选择方法，默认情况下不显示该线。

{phang}
{cmd:hrefline} 添加与垂直参考线相交的水平参考线。

{phang}
{opt rlabelopts(r_label_opts)} 更改参考线标签的外观。标签选项 {opt labgap(relativesize)}、{opt labstyle(textstyle)}、{opt labsize(textsizestyle)} 和 {opt labcolor(colorstyle)} 指定标签呈现的详细信息。请参见 {manhelpi size G-4}、{manhelpi textstyle G-4}、{manhelpi textsizestyle G-4} 和 {manhelpi colorstyle G-4}。

{dlgtab:数据}

{phang}
{cmd:data(}{help filename_zh:{it:filename}} [{cmd:, replace}]{cmd:)}}}将绘图数据保存到 Stata 数据文件。

{dlgtab:Y 轴，X 轴，标题，图例，整体}

{phang}
{it:twoway_options} 是任何 documented 在 {manhelpi twoway_options G-3} 中的选项，除了 {cmd:by()}。这些包括图形标题的选项（请参见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（请参见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. set seed 1234}{p_end}
{phang2}{cmd:. lasso linear mpg i.foreign i.rep78 headroom weight turn}
     {cmd:gear_ratio price trunk length displacement}

{pstd}绘制交叉验证函数{p_end}
{phang2}{cmd:. cvplot}

{pstd}设置{p_end}
{phang2}{cmd:. elasticnet linear mpg i.foreign i.rep78 headroom weight turn}
    {cmd:gear_ratio price trunk length displacement}

{pstd}绘制 alpha=0.5 lasso 的交叉验证函数{p_end}
{phang2}{cmd:. cvplot, alpha(0.5)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse breathe, clear}{p_end}
{phang2}{cmd:. xporegress react no2_class no2_home,}
    {cmd:controls(i.(meducation overweight msmoke sex) noise sev* age)}
    {cmd:xfolds(5) selection(cv)}

{pstd}绘制 react 的交叉验证函数，适用于交叉拟合折叠 2{p_end}
{phang2}{cmd:. cvplot, for(react) xfold(2)}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cvplot.sthlp>}