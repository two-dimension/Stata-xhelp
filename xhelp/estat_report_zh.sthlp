{smcl}
{* *! version 1.0.6  11feb2019}{...}
{viewerdialog irt "dialog irt"}{...}
{vieweralsosee "[IRT] estat report" "mansection IRT estatreport"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt" "help irt_zh"}{...}
{vieweralsosee "[IRT] irt 1pl" "help irt 1pl"}{...}
{vieweralsosee "[IRT] irt 2pl" "help irt 2pl"}{...}
{vieweralsosee "[IRT] irt 3pl" "help irt 3pl"}{...}
{vieweralsosee "[IRT] irt grm" "help irt grm"}{...}
{vieweralsosee "[IRT] irt hybrid" "help irt hybrid"}{...}
{vieweralsosee "[IRT] irt nrm" "help irt nrm"}{...}
{vieweralsosee "[IRT] irt pcm" "help irt pcm"}{...}
{vieweralsosee "[IRT] irt rsm" "help irt rsm"}{...}
{viewerjumpto "语法" "estat report##syntax"}{...}
{viewerjumpto "菜单" "estat report##menu_irt"}{...}
{viewerjumpto "描述" "estat report##description"}{...}
{viewerjumpto "PDF 文档链接" "estat_report_zh##linkspdf"}{...}
{viewerjumpto "选项" "estat report##options"}{...}
{viewerjumpto "示例" "estat report##examples"}{...}
{viewerjumpto "存储结果" "estat report##results"}
{help estat_report:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[IRT] estat report} {hline 2}}报告估计的 IRT 参数{p_end}
{p2col:}({mansection IRT estatreport:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
        {cmd:estat} {cmdab:rep:ort} [{varlist}]
	[{cmd:,} {it:options}]


{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{synopt :{cmd:sort(}{it:p}[{cmd:,} {opt d:escending}]{cmd:)}}按估计的 {it:p} 参数排序项目; {it:p} 可以是 {cmd:a}、{cmd:b} 或 {cmd:c} {p_end}
{synopt :{opt byp:arm}}按参数而不是按项目排列表行{p_end}

{syntab:主要}
{synopt :{opt alab:el(string)}}指定 {cmd:a} 参数标签; 默认是 {cmd:Discrim}{p_end}
{synopt :{opt blab:el(string)}}指定 {cmd:b} 参数标签; 默认是 {cmd:Diff}{p_end}
{synopt :{opt clab:el(string)}}指定 {cmd:c} 参数标签; 默认是 {cmd:Guess}{p_end}
{synopt :{opt seq:label}}按顺序标签参数{p_end}
{synopt :{opt post}}发布估计的 IRT 参数及其 VCE 作为估计结果{p_end}

{syntab:报告}
{synopt :{opt lev:el(#)}}设置信赖水平; 默认是 {cmd:level(95)}{p_end}
{synopt :{opt verbose}}以长形式显示估计输出{p_end}
{synopt :{help estat_report##display_options:{it:display_options}}}控制列和列格式{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中.{p_end}


INCLUDE help menu_irt


{marker description}{...}
{title:描述}

{pstd}
{opt estat report} 显示估计的 IRT 参数。
可以根据参数类型重新组织和排序估计。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection IRT estatreportQuickstart:快速开始}

        {mansection IRT estatreportRemarksandexamples:备注和示例}

{pstd}
上面的章节不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:sort(}{it:p}[{cmd:,} {opt descending}]{cmd:)}请求按照参数 {it:p} 排序项目，{it:p} 可以是 {cmd:a}、{cmd:b} 或 {cmd:c}。

{phang2}
{cmd:sort(a)} 指定按照估计的歧视参数排序项目。

{phang2}
{cmd:sort(b)} 指定按照估计的难度参数排序项目。

{phang2}
{cmd:sort(c)} 指定按照估计的伪猜测参数排序项目。只有在指定选项 {cmd:sepguessing} 时，3PL 模型相关。

{phang2}
{cmd:descending} 请求以降序报告排序后的项目。
默认情况下，排序的项目以升序报告。

{phang}
{opt byparm}请求按参数而不是按项目对表行进行分组。

{dlgtab:主要}

{phang}
{opt alabel(string)} 使用 {it:string} 对歧视参数进行标记。
默认标签是 {cmd:Discrim}。
	
{phang}
{opt blabel(string)} 使用 {it:string} 对难度参数进行标记。
默认标签是 {cmd:Diff}。
	
{phang}
{opt clabel(string)} 使用 {it:string} 对伪猜测参数进行标记。
默认标签是 {cmd:Guess}。
此选项仅适用于 3PL 模型。

{phang}
{opt seqlabel}在每个分类项目内按顺序标记估计的难度参数，从 1 开始。
在 NRM 中，{opt seqlabel} 还在每个项目内按顺序标记估计的歧视参数，从 1 开始。
此选项仅适用于分类模型。

{phang}
{opt post}使得 {opt estat report}像 Stata 估计（e 类）命令那样工作。
{opt estat report} 发布估计的 IRT 参数向量以及相应的方差-协方差矩阵到 {opt e()}，这样您就可以将估计的 IRT 参数视为任何其他估计命令的结果。
例如，您可以使用 {opt test} 对参数进行联合假设检验，或使用 {opt lincom} 创建线性组合。

{dlgtab:报告}

{phang}
{opt level(#)}; 详见 {helpb estimation options:[R] Estimation options}。

{phang}
{opt verbose} 即使参数在各项目间受到约束而相同，也会为每个项目单独显示歧视、难度和伪猜测参数。
当指定选项 {opt post} 时，该选项是隐含的。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt noci}, {opt nopv:alues}, {opth cformat(%fmt)}, {opt pformat(%fmt)}, {opt sformat(%fmt)}, 和 {opt nolstretch};详见 {helpb estimation options:[R] Estimation options}。

{pstd}
以下选项在 {cmd:estat report} 中可用，但未在对话框中显示：

{phang}
{opt coeflegend};详见 {helpb estimation options:[R] Estimation options}。
此选项仅与 {opt post} 选项一起使用。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse masc1}{p_end}
{phang2}{cmd:. irt 2pl q1-q9}{p_end}

{pstd}显示按难度升序排序的估计 IRT 参数{p_end}
{phang2}{cmd:. estat report, sort(b)}{p_end}

{pstd}如上，但首先按参数类型排序，然后按难度{p_end}
{phang2}{cmd:. estat report, sort(b) byparm}{p_end}

{pstd}显示项目 {cmd:q3}、{cmd:q5} 和 {cmd:q8} 的参数估计，并将难度参数标记为 {cmd:Location}{p_end}
{phang2}{cmd:. estat report q3 q5 q8, sort(b) byparm blabel(Location)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat report} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(level)}}置信水平{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(table)}}包含参数估计及其标准误、检验统计量、p 值和置信区间的矩阵{p_end}
{synopt:{cmd:r(b)}}估计的 IRT 参数向量{p_end}
{synopt:{cmd:r(b_pclass)}}参数类别{p_end}
{synopt:{cmd:r(V)}}估计的 IRT 参数的方差-协方差矩阵{p_end}
{p2colreset}{...}


{pstd}
使用 {cmd:post} 选项的 {cmd:estat report} 还在 {cmd:e()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}估计的 IRT 参数向量{p_end}
{synopt:{cmd:e(V)}}估计的 IRT 参数的方差-协方差矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_report.sthlp>}