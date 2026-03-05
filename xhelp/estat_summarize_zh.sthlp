{smcl}
{* *! version 1.1.3  14may2018}{...}
{viewerdialog estat "dialog estat"}{...}
{vieweralsosee "[R] estat summarize" "mansection R estatsummarize"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estat" "help estat_zh"}{...}
{vieweralsosee "[R] estat ic" "help estat ic"}{...}
{vieweralsosee "[R] estat vce" "help estat vce"}{...}
{viewerjumpto "Syntax" "estat summarize##syntax"}{...}
{viewerjumpto "Menu for estat" "estat summarize##menu_estat"}{...}
{viewerjumpto "Description" "estat summarize##description"}{...}
{viewerjumpto "Links to PDF documentation" "estat_summarize_zh##linkspdf"}{...}
{viewerjumpto "Options" "estat summarize##options_estat_summarize"}{...}
{viewerjumpto "Examples" "estat summarize##examples"}{...}
{viewerjumpto "Stored results" "estat summarize##results"}
{help estat_summarize:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[R] estat summarize} {hline 2}}总结估计样本{p_end}
{p2col:}({mansection R estatsummarize:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

        {cmd:estat} {cmdab:su:mmarize} [{it:eqlist}] [{cmd:,} {it:estat_summ_options}]

{marker estat_summ_options}{...}
{synoptset 21}{...}
{p2coldent:{it:estat_summ_options}}描述{p_end}
{synoptline}
{synopt:{opt eq:uation}}按方程显示摘要{p_end}
{synopt:{opt gro:up}}按组显示摘要；仅在 {cmd:sem} 和 {cmd:gsem} 之后使用{p_end}
{synopt:{opt lab:els}}显示变量标签{p_end}
{synopt:{opt nohea:der}}抑制标题{p_end}
{synopt:{opt nowei:ghts}}忽略权重{p_end}
{synopt :{it:{help estat_summarize##display_options:display_options}}}控制
           行间距、线宽、忽略变量及基础和空单元的显示，以及因子变量标记{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:eqlist} 很少使用，指定要总结的变量（可选方程名称）。{it:eqlist} 可以是 {varlist} 或 ({it:eqname1}{cmd::}
{it:varlist}) ({it:eqname2}{cmd::} {it:varlist}) {it:...}。{it:varlist} 可以包含时间序列操作符；见 {help tsvarlist_zh}。
{p_end}


包含帮助菜单_estat


{marker description}{...}
{title:描述}

{pstd}
{opt estat summarize} 总结命令使用的变量，并自动将样本限制为估计样本；它还
总结了权重变量和集群结构（如指定）。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R estatsummarizeQuickstart:快速入门}

        {mansection R estatsummarizeRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker options_estat_summarize}{...}
{title:选项}

{phang}
{opt equation} 请求以方程样式格式显示依赖变量和方程中的自变量，重复在多个方程中输入的变量的摘要信息。

{phang}
{opt group} 为每个组单独显示摘要信息。{opt group} 仅在指定的 {cmd:sem} 或 {cmd:gsem}
 之后允许使用，并需指定 {opt group()} 变量。

{phang}
{opt labels} 显示变量标签。

{phang}
{opt noheader} 抑制标题。

{phang}
{opt noweights} 忽略前一估计命令中的权重（如果有）。当存在权重时的默认行为是在除了权重变量之外的所有变量上执行加权
{cmd:summarize}。对权重变量执行非加权 {cmd:summarize}。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt noomit:ted},
{opt vsquish},
{opt noempty:cells},
{opt base:levels},
{opt allbase:levels},
{opt nofvlab:el},
{opt fvwrap(#)}, 和
{opt fvwrapon(style)}；
    见 {helpb estimation options##display_options:[R] 估计选项}。

{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress price headroom trunk length mpg}{p_end}

{pstd}获取估计样本摘要{p_end}
{phang2}{cmd:. estat summarize}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse klein}{p_end}
{phang2}{cmd:. reg3 (consump wagep wageg) (wagep consump govt capital)}{p_end}

{pstd}获取每个方程的估计样本摘要{p_end}
{phang2}{cmd:. estat summarize, equation}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat summarize} 将以下内容存储在 {cmd:r()}：

{synoptset 15 tabbed}{...}
{p2col 5 18 22 2: 标量}{p_end}
{synopt:{cmd:r(N_groups)}}组数 ({cmd:group} 选项仅适用){p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(stats)}}k x 4 矩阵，包含均值、标准差、最小值和最大值{p_end}
{synopt:{cmd:r(stats}[{cmd:_}{it:#}]{cmd:)}}k x 4 矩阵，包含组 {it:#} 的均值、标准差、最小值和最大值
        （仅适用于 {cmd:group} 选项）{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_summarize.sthlp>}