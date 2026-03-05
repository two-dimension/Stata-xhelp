{smcl}
{* *! version 1.0.11  19oct2017}{...}
{viewerdialog psdensity "dialog psdensity"}{...}
{vieweralsosee "[TS] psdensity" "mansection TS psdensity"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arfima" "help arfima_zh"}{...}
{vieweralsosee "[TS] arima" "help arima_zh"}{...}
{vieweralsosee "[TS] ucm" "help ucm_zh"}{...}
{viewerjumpto "语法" "psdensity_zh##syntax"}{...}
{viewerjumpto "菜单" "psdensity_zh##menu"}{...}
{viewerjumpto "描述" "psdensity_zh##description"}{...}
{viewerjumpto "PDF文档链接" "psdensity_zh##linkspdf"}{...}
{viewerjumpto "选项" "psdensity_zh##options"}{...}
{viewerjumpto "示例" "psdensity_zh##examples"}
{help psdensity:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[TS] psdensity} {hline 2}}参数化谱密度估计 
	在 arima、arfima 和 ucm 之后{p_end}
{p2col:}({mansection TS psdensity:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{opt psdensity} {dtype} {it:{help newvar_zh:newvar_sd}}
{it:{help newvar_zh:newvar_f}}
{ifin}
[{cmd:,} {it:options}]

{pstd}
其中 {it:newvar_sd} 是将包含估计的谱密度的变量名称，而 {it:newvar_f} 是将包含计算谱密度估计频率的新变量名称。

{synoptset 15}{...}
{synopthdr :选项}
{synoptline}
{synopt :{opt pspect:rum}}估计功率谱而不是谱密度{p_end}
{synopt :{opt range(a b)}}限制频率范围为 [a,b){p_end}
{synopt :{opt cyc:le(#)}}从指定的随机周期估计谱密度；仅在 {cmd:ucm} 之后允许{p_end}
{synopt :{opt smem:ory}}估计 ARFIMA 过程中短记忆成分的谱密度；仅在 {cmd:arfima} 之后允许{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 后估计 > 参数化谱密度}


{marker description}{...}
{title:描述}

{pstd}
{cmd:psdensity} 使用之前估计的参数化模型的参数来估计平稳过程的谱密度。

{pstd}
{cmd:psdensity} 在 {help arfima_zh}、{help arima_zh} 和 {help ucm_zh} 之后工作。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS psdensityQuickstart:快速开始}

        {mansection TS psdensityRemarksandexamples:备注和示例}

        {mansection TS psdensityMethodsandformulas:方法和公式}

{pstd}
上述部分未包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt pspectrum} 使 {cmd:psdensity} 估计功率谱而不是谱密度。功率谱等于谱密度乘以过程的方差。

{phang}
{opt range(a b)} 限制频率范围。默认情况下，谱密度在 [0, pi) 范围内计算。指定 {opt range(a b)} 将导致在 [a,b) 范围内计算谱密度。我们要求 0 {ul:<} a < b < pi。

{phang}
{opt cycle(#)} 使 {cmd:psdensity} 在 {cmd:ucm} 之后从指定的随机周期估计谱密度。默认情况下，从第一个随机周期估计谱密度。 {opt cycle(#)} 必须指定一个与通过 {cmd:ucm} 拟合的模型中的周期对应的整数。

{phang}
{opt smemory} 使 {cmd:psdensity} 忽略 ARFIMA 分数积分参数。计算的谱密度是模型的短记忆 ARMA 组件的谱密度。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse manemp2}{p_end}

{pstd}绘制美国制造业员工人数{p_end}
{phang2}{cmd:. tsline D.manemp, yline(-0.206)}

{pstd}带差分和自回归成分的简单 ARIMA 模型{p_end}
{phang2}{cmd:. arima D.manemp, ar(1) technique(nr) noconstant}{p_end}

{pstd}正自回归参数的谱密度{p_end}
{phang2}{cmd:. psdensity psden omega}{p_end}

{pstd}绘制结果{p_end}
{phang2}{cmd:. twoway line psden omega}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse icsa1, clear}{p_end}

{pstd}绘制美国失业保险新申请的变化{p_end}
{phang2}{cmd:. tsline D.icsa, yline(0.08)}

{pstd}带差分和自回归成分的简单 ARIMA 模型{p_end}
{phang2}{cmd:. arima D.icsa, ar(1) technique(nr) noconstant}{p_end}

{pstd}负自回归参数的谱密度{p_end}
{phang2}{cmd:. psdensity psden omega}{p_end}

{pstd}绘制结果{p_end}
{phang2}{cmd:. twoway line psden omega}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <psdensity.sthlp>}