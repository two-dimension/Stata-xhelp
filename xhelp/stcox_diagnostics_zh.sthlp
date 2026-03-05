{smcl}
{* *! version 1.1.20  24sep2018}{...}
{viewerdialog stphplot "dialog stphplot"}{...}
{viewerdialog stcoxkm "dialog stcoxkm"}{...}
{viewerdialog estat "dialog stcox_estat"}{...}
{vieweralsosee "[ST] stcox PH-assumption tests" "mansection ST stcoxPH-assumptiontests"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stcox" "help stcox_zh"}{...}
{vieweralsosee "[ST] sts" "help sts_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{viewerjumpto "Syntax" "stcox_diagnostics_zh##syntax"}{...}
{viewerjumpto "Menu" "stcox_diagnostics_zh##menu"}{...}
{viewerjumpto "Description" "stcox_diagnostics_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "stcox_diagnostics_zh##linkspdf"}{...}
{viewerjumpto "Options for stphplot" "stcox_diagnostics_zh##options_stphplot"}{...}
{viewerjumpto "Options for stcoxkm" "stcox_diagnostics_zh##options_stcoxkm"}{...}
{viewerjumpto "Options for estat phtest" "stcox_diagnostics_zh##options_estat_phtest"}{...}
{viewerjumpto "Examples" "stcox_diagnostics_zh##examples"}{...}
{viewerjumpto "Video example" "stcox_diagnostics_zh##video"}{...}
{viewerjumpto "Stored results" "stcox_diagnostics_zh##results"}
{help stcox_diagnostics:English Version}
{hline}{...}
{p2colset 1 35 37 2}{...}
{p2col:{bf:[ST] stcox PH-assumption tests} {hline 2}}比例风险假设检验{p_end}
{p2col:}({mansection ST stcoxPH-assumptiontests:查看完整的 PDF 手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{phang}
检查比例风险假设：

{p 6 8 2}
生存的对数-对数图

{p 8 17 2}
{cmd:stphplot} [{it:{help if_zh}}] {cmd:,} {c -(}{opth by(varname)} | 
{opth str:ata(varname)}{c )-} [{it:{help stcox_diagnostics##stphplot_options:stphplot_options}}]


{p 6 8 2}
Kaplan-Meier 和预测生存图

{p 8 17 2}
{cmd:stcoxkm} [{it:{help if_zh}}] {cmd:,} {opth by(varname)} [{it:{help stcox diagnostics##stcoxkm_options:stcoxkm_options}}]


{p 6 8 2}
使用 Schoenfeld 残差

{p 8 17 2}
{cmd:estat} {opt phtest} [{cmd:,} {it:{help stcox diagnostics##phtest_options:phtest_options}}]


{synoptset 33 tabbed}{...}
{marker stphplot_options}{...}
{synopthdr :stphplot_options}
{synoptline}
{syntab :主要选项}
{p2coldent :* {opth by(varname)}}拟合单独的 Cox 模型；默认为此{p_end}
{p2coldent :* {opth str:ata(varname)}}拟合分层 Cox 模型{p_end}
{synopt :{opth adj:ust(varlist)}}调整为 {it:varlist} 的平均值{p_end}
{synopt :{opt z:ero}}调整为 {it:varlist} 的零值；与 {opt adjust()} 一起使用{p_end}

{syntab :选项}
{synopt :{opt noneg:ative}}绘制 ln{c -(}-ln(生存){c )-}{p_end}
{synopt :{opt nolnt:ime}}绘制曲线与分析时间{p_end}
{synopt :{opt nosh:ow}}不显示 st 设置信息{p_end}

{syntab:绘图}
{synopt :{cmdab:plot:}{ul:{it:#}}{cmd:opts(}{help stcox_diagnostics##stphplot_plot_options:{it:stphplot_plot_options}}{cmd:)}}影响 {it:#}个连接线和 {it:#}个绘制点的渲染{p_end}

{syntab:添加图}
{synopt :{opth "addplot(addplot_option:plot)"}}在生成的图中添加其他图{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 总体}
{synopt :{it:twoway_options}}任何其他选项{opt by()} 在 {manhelpi twoway_options G-3} 中记录{p_end}
{synoptline}
{p2colreset}{...}
{pstd}
* 在使用 {cmd:stphplot} 时，必须包含 {opt by(varname)} 或 {opt strata(varname)}.{p_end}


{synoptset 33}{...}
{marker stphplot_plot_options}{...}
{synopthdr:stphplot_plot_options}
{synoptline}
{synopt:{it:{help cline_options_zh}}}改变线条的外观或连接方式{p_end}
{synopt:{it:{help marker_options_zh}}}改变标记的外观（颜色、大小等）{p_end}
{synoptline}
{p2colreset}{...}


{synoptset 33 tabbed}{...}
{marker stcoxkm_options}{...}
{synopthdr :stcoxkm_options}
{synoptline}
{syntab :主要选项}
{p2coldent :* {opth by(varname)}}报告名义或有序协变量{p_end}
{synopt :{cmdab:tie:s(}{cmdab:bre:slow)}}使用 Breslow 方法处理平齐故障{p_end}
{synopt :{cmdab:tie:s(}{cmdab:efr:on)}}使用 Efron 方法处理平齐故障{p_end}
{synopt :{cmdab:tie:s(exactm)}}使用精确边际似然方法处理平齐故障{p_end}
{synopt :{cmdab:tie:s(exactp)}}使用精确部分似然方法处理平齐故障{p_end}
{synopt :{opt sep:arate}}为预测和观察曲线绘制单独图{p_end}
{synopt :{opt nosh:ow}}不显示 st 设置信息{p_end}

{syntab:观察图}
{synopt :{opth obsop:ts(stcox_diagnostics##stcoxkm_plot_options:stcoxkm_plot_options)}}影响观察曲线的渲染{p_end}
{synopt :{cmdab:obs:}{ul:{it:#}}{cmd:opts(}{help stcox_diagnostics##stcoxkm_plot_options:{it:stcoxkm_plot_options}}{cmd:)}}影响第 {it:#} 个观察曲线的渲染；与 {opt separate} 不允许一起使用{p_end}

{syntab:预测图}
{synopt :{opth predop:ts(stcox_diagnostics##stcoxkm_plot_options:stcoxkm_plot_options)}}影响预测曲线的渲染{p_end}
{synopt :{cmdab:pred:}{ul:{it:#}}{cmd:opts(}{help stcox_diagnostics##stcoxkm_plot_options:{it:stcoxkm_plot_options}}{cmd:)}}影响第 {it:#} 个预测曲线的渲染；与 {opt separate} 不允许一起使用{p_end}

{syntab:添加图}
{synopt :{opth "addplot(addplot_option:plot)"}}在生成的图中添加其他图{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 总体}
{synopt :{it:twoway_options}}任何在 {manhelpi twoway_options G-3} 中记录的选项，排除 {opt by()}。这些包括图形标题的选项（参见 {manhelpi title_options G-3}）和将图保存在磁盘上的选项（参见 {manhelpi saving_option G-3}）。

{marker options_estat_phtest}{...}
{title:estat phtest 的选项}

{dlgtab:主要选项}

{phang}
{opt log}, {opt km}, {opt rank} 和 {opt time()} 用于指定时间缩放函数。{p_end}

{pmore}
默认情况下，{cmd:estat phtest} 使用恒等函数进行测试，即分析时间本身。{p_end}

{pmore}
{opt log} 指定使用分析时间的自然对数。{p_end}

{pmore}
{opt km} 指定使用 1 减去 Kaplan-Meier 产品限制估计。{p_end}

{pmore}
{opt rank} 指定使用分析时间的等级。{p_end}

{pmore}
{opth time(varname)} 指定包含分析时间单调变换的变量。您必须确保 {it:varname} 是单调变换。

{phang}
{opth plot(varname)} 指定对所指定协变量的平滑、缩放 Schoenfeld 残差与时间的散点图和光滑图。默认情况下，平滑使用在 {cmd:lowess, mean noweight} 中实现的运行平均法进行；参见 {manhelp lowess R}。

{phang}
{opt bwidth(#)} 指定带宽。使用 {opt bwidth()}*N 的中心子集观测值计算数据中每个点的平滑值，除了端点，使用较小的无中心子集。 {opt bwidth()} 越大，平滑程度越高。默认值为 {cmd:bwidth(0.8)}。

{phang}
{opt detail} 指定针对 Cox 模型中的每个协变量单独进行比例风险假设的测试。默认情况下，{cmd:estat phtest} 只产生全局测试。

{dlgtab:散点图}

{phang}
{it:marker_options} 影响绘制点处标记的渲染，包括它们的形状、大小、颜色和轮廓；参见 {manhelpi marker_options G-3}。

{phang}
{it:marker_label_options} 指定标记是否以及如何标记；参见 {manhelpi marker_label_options G-3}。

{dlgtab:平滑线}

{phang}
{opt lineopts(cline_options)} 影响平滑线的渲染；参见 {manhelpi cline_options G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 总体} 

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的任何选项，排除 {opt by()}。这些包括图形标题的选项（参见 {manhelpi title_options G-3}）和将图保存到磁盘的选项（参见 {manhelpi saving_option G-3}）。

{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse leukemia}{p_end}
{phang2}{cmd:. stset weeks, failure(relapse) noshow}

{pstd}使用 {cmd:stphplot} 检查 {cmd:treatment1} 的比例风险假设{p_end}
{phang2}{cmd:. stphplot, by(treatment1)}

{pstd}与上述相同，但调整白细胞计数{p_end}
{phang2}{cmd:. stphplot, by(treatment1) adj(wbc2 wbc3)}

{pstd}使用 {cmd:stcoxkm} 检查 {cmd:treatment1} 的比例风险假设{p_end}
{phang2}{cmd:. stcoxkm, by(treatment1)}

{pstd}使用 {cmd:stphplot} 检查 {cmd:treatment2} 的比例风险假设{p_end}
{phang2}{cmd:. stphplot, by(treatment2)}

{pstd}使用 {cmd:stcoxkm} 检查 {cmd:treatment2} 的比例风险假设{p_end}
{phang2}{cmd:. stcoxkm, by(treatment2) separate}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse leukemia}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset weeks, failure(relapse)}

{pstd}拟合 Cox 模型{p_end}
{phang2}{cmd:. stcox treatment2 wbc2 wbc3}

{pstd}基于 Schoenfeld 残差测试比例风险假设{p_end}
{phang2}{cmd:. estat phtest, rank detail}{p_end}

    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=ime8BaLLXxw":如何拟合 Cox 比例风险模型并检查比例风险假设}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat phtest} 在 {cmd:r()} 中存储以下信息：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(df)}}全局测试的自由度{p_end}
{synopt:{cmd:r(chi2)}}全局测试的卡方值{p_end}
{synopt:{cmd:r(p)}}全局测试的 p 值{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(phtest)}}每个协变量的单独测试{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stcox_diagnostics.sthlp>}