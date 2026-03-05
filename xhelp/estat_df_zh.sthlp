{smcl}
{* *! version 1.0.2  19oct2017}{...}
{viewerdialog estat "dialog estat"}{...}
{vieweralsosee "[ME] estat df" "mansection ME estatdf"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] mixed" "help mixed_zh"}{...}
{viewerjumpto "语法" "estat df##syntax"}{...}
{viewerjumpto "estat 的菜单" "estat df##menu_estat"}{...}
{viewerjumpto "描述" "estat df##description"}{...}
{viewerjumpto "PDF 文档链接" "estat_df_zh##linkspdf"}{...}
{viewerjumpto "选项" "estat df##option_estat_df"}{...}
{viewerjumpto "示例" "estat df##examples"}{...}
{viewerjumpto "存储的结果" "estat df##results"}
{help estat_df:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[ME] estat df} {hline 2}}计算固定效应的自由度{p_end}
{p2col:}({mansection ME estatdf:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {opt df} [{cmd:,} 
	{opt meth:od}{cmd:(}{help mixed##df_method:{it:df_methods}}{cmd:)}
	{opt post}[{cmd:(}{help mixed##df_method:{it:df_method}}{cmd:)}]
	{opt eim} {opt oim}]


包含帮助菜单_estat


{marker description}{...}
{title:描述}

{pstd}
命令 {cmd:estat df} 用于在使用 {cmd:mixed} 进行估计之后。

{pstd}
命令 {cmd:estat df} 计算并显示每个固定效应的自由度 (DF)，使用指定的方法。这允许比较不同的 DF 方法。命令 {cmd:estat df} 还可以用于在不重新运行模型的情况下，继续使用不同的 DF 方法进行后期估计。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ME estatdfRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option_estat_df}{...}
{title:选项}

{phang}
{opt method:(mixed##df_method:df_methods)} 指定计算 DF 的方法列表。支持的方法包括 {cmd:residual}、{cmd:repeated}、{cmd:anova}、{cmd:satterthwaite} 和 {cmd:kroger}；可以指定多个方法。方法 {cmd:satterthwaite} 和 {cmd:kroger} 仅在 REML 估计时可用。如果最近拟合的 {cmd:mixed} 模型中未指定选项 {cmd:dfmethod()}，则必需选项 {cmd:method()}。有关更多详细信息，请参见 {mansection ME mixedRemarksandexamplesSmall-sampleinferenceforfixedeffects:{it:小样本固定效应的推断}}中的 {it:备注和示例}，在 {bf:[ME] mixed} 下。

{phang}
{cmd:post} 使得 {cmd:estat df} 像 Stata 估计命令一样工作。当指定 {cmd:post} 时，{cmd:estat df} 将为每个固定效应发布 DF 以及与 DF 计算相关的所有内容到 {cmd:e()}，用于在 {cmd:method()} 中指定的方法。因此，在发布之后，可以继续将此 DF 用于其他后期估计命令。例如，可以使用 {cmd:test, small} 对固定效应的线性组合执行 Wald F 检验。

{pmore} 
{cmd:post} 也可以使用语法 {opt post:(mixed##df_method:df_method)} 指定。如果在选项 {cmd:method()} 中指定多个 {it:df_methods}，则必须使用此语法。使用此语法，{cmd:estat df} 使用在 {cmd:post()} 中指定的方法计算 DF，并将结果存储在 {cmd:e()} 中。只能使用语法 {cmd:post()} 指定一个计算方法。

{pmore} 
在 {cmd:post()} 中指定的 {it:df_method} 必须是选项 {cmd:method()} 中指定的 DF 方法之一。如果选项 {cmd:method()} 中仅指定了一个方法，则可以简单地使用 {cmd:post} 使该 DF 方法在后期估计和 {cmd:mixed} 重新播放时有效。

{phang}
{cmd:eim} 指定使用期望信息矩阵进行 DF 计算。仅在 {cmd:method()} 包含 {cmd:kroger} 或 {cmd:satterthwaite} 时可以使用。{cmd:eim} 是默认值。

{phang}
{cmd:oim} 指定使用观察信息矩阵进行 DF 计算。仅在 {cmd:method()} 包含 {cmd:kroger} 或 {cmd:satterthwaite} 时可以使用。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse pig}{p_end}
{phang2}{cmd:. mixed weight i.week || id:, reml}{p_end}

{pstd}使用三种不同的方法计算并比较 DF{p_end}
{phang2}{cmd:. estat df, method(kroger anova repeated)}{p_end}

{pstd}将 {cmd:kroger} 方法发布到 {cmd:e()} {p_end}
{phang2}{cmd:. estat df, method(kroger) post}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
命令 {cmd:estat df} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(dfmethods)}}DF 方法{p_end}
{p2colreset}{...}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(df)}}针对 {cmd:method()} 中指定的每个方法的特定参数 DF{p_end}
{synopt:{cmd:r(V_df)}}当指定 {cmd:kroger} 方法时的估计量的方差-协方差矩阵{p_end}

{pstd}
如果指定了 {cmd:post()}，命令 {cmd:estat df} 还会在 {cmd:e()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(F)}}在 {cmd:post()} 中指定的方法的整体 F 检验统计量{p_end}
{synopt:{cmd:e(ddf_m)}}在 {cmd:post()} 中指定的方法的模型 DDF{p_end}
{synopt:{cmd:e(df_max)}}在 {cmd:post()} 中指定的方法的最大 DF{p_end}
{synopt:{cmd:e(df_avg)}}在 {cmd:post()} 中指定的方法的平均 DF{p_end}
{synopt:{cmd:e(df_min)}}在 {cmd:post()} 中指定的方法的最小 DF{p_end}
{p2colreset}{...}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(dfmethod)}}在 {cmd:post()} 中指定的 DF 方法{p_end}
{synopt:{cmd:e(dftitle)}}DF 方法的标题{p_end}
{p2colreset}{...}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(df)}}针对在 {cmd:post()} 中指定的方法的特定参数 DF{p_end}
{synopt:{cmd:e(V_df)}}当发布 {cmd:kroger} 方法时的估计量的方差-协方差矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_df.sthlp>}