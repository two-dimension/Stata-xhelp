{smcl}
{* *! version 2.0.6  15may2018}{...}
{vieweralsosee "ssc describe listsome" "net describe http://fmwww.bc.edu/repec/bocode/l/listsome"}{...}
{vieweralsosee "ssc describe randomtag" "net describe http://fmwww.bc.edu/repec/bocode/r/randomtag"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] 数据类型" "help data types"}{...}
{vieweralsosee "[D] 日期时间" "help datetime_zh"}{...}
{vieweralsosee "[D] 编码" "help encode_zh"}{...}
{vieweralsosee "[D] 输入" "help input_zh"}{...}
{vieweralsosee "[D] 标签" "help label_zh"}{...}
{vieweralsosee "[D] 列表" "help list_zh"}{...}
{viewerjumpto "归属" "dataex_zh##attribution"}{...}
{viewerjumpto "语法" "dataex_zh##syntax"}{...}
{viewerjumpto "描述" "dataex_zh##description"}{...}
{viewerjumpto "备注" "dataex_zh##remarks"}{...}
{viewerjumpto "选项" "dataex_zh##options"}{...}
{viewerjumpto "示例" "dataex_zh##examples"}{...}
{viewerjumpto "致谢" "dataex_zh##acknowledgments"}{...}
{viewerjumpto "作者" "dataex_zh##authors"}{...}
{viewerjumpto "另见" "dataex_zh##alsosee"}
{help dataex:English Version}
{hline}{...}
{title:标题}

{phang}
{cmd:dataex} {hline 2} 生成一个经过适当格式化的数据示例以供 Statalist 使用

{marker attribution}{...}
{title:归属}

{pstd}
{cmd:dataex} 是社区贡献的软件。它由 {help dataex##authors:authors} 罗伯特·皮卡德和尼古拉斯·J·考克斯编写和维护。它与官方 Stata 一起安装，以便用户在在线论坛如 {help statalist_zh:Statalist} 上发布时方便使用。它也可以从统计软件组件 (SSC) 存档以完全相同的形式获得（参见 {help ssc_zh:help ssc}）。

{marker syntax}{...}
{title:语法}

	{cmd:dataex} [{varlist}] {ifin} [, {opt v:arlabel} {opt e:lsewhere} {opt c:ount(#)}]

{marker description}{...}
{title:描述}

{pstd}
{cmd:dataex} 用于生成一个数据示例，以便在 Statalist 上作为帖子的一部分。发布之前，请确保您已阅读 {browse "http://www.statalist.org/forums/help":常见问题解答}。阅读您帖子的人将能够复制 {cmd:dataex} 生成的代码，并重新创建所示的数据集。

{pstd}
{help input_zh} 命令用于将数据输入 Stata 变量，这些变量与内存中原始变量的类型相同。所有数值型 {help datetime_zh} 变量将被正确格式化，所有带有关联值 {help labels} 的数值型变量也将被重新创建。如果指定了 {opt varlabel} 选项，结果将包括重新生成所有变量标签的命令。

{pstd}
将 {cmd:dataex} 在 Stata 结果窗口生成的内容复制到您的 Statalist 帖子中。确保包括 {bf:[CODE]} 和 {bf:[/CODE]} 行。您可以使用 {bf:预览} 按钮，位于 {bf:回复帖子} 按钮的左侧，以确认在 Statalist 中数据示例的格式是否正确。

{marker remarks}{...}
{title:备注}

{pstd}
{cmd:dataex} 生成的输出在 Statalist 之外的其他论坛或甚至私人交流中也可能很有用，例如与 StataCorp 技术支持沟通。在其他论坛或私人场合，{bf:[CODE]} 和 {bf:[/CODE]} 行将没有用处，可以省略。作为便利，可以使用 {opt elsewhere} 选项来抑制此类行的显示。

{pstd}
关于发布示例数据的一般建议包括以下几点：

{phang2}
1.  应该明确，读者只能在你清晰解释的范围内理解你的数据集。详细的文字解释可能太长而难以阅读，且读者难以理解。因此，使用示例！

{phang2}
2.  确保提供一个 {browse "http://stackoverflow.com/help/mcve":简约、完整且可验证的示例}。

{phang2}
3.  “简约”一词强调小示例（例如，5到10个观察值）可能足以解释你的数据结构、变量类型和名称。同时，你的示例应该足够“完整”，以使你的问题清晰明确。通过提供您所使用的数据，您使您的问题“可验证”。

{phang2}
4.  即使您使用一个共同可访问的数据集（例如，通过 {help sysuse_zh} 或 {help webuse_zh} 读取的数据），提供其他人可以快速运行的代码将非常有帮助。

{pstd}
{cmd:dataex} 并非作为一个“通用解决方案”提供示例数据。 根据您的问题，解释有关数据集的其他事实，可能至关重要，例如它的大小，您所 {help tsset_zh} 或 {help xtset_zh} 等等。

{marker options}{...}
{title:选项}

{phang}{opt varlabel} 指定还显示生成变量标签的命令。

{phang}{opt elsewhere} 指定您的示例是用于 Statalist 以外的地方。因此，将抑制为 Statalist 设计的 {bf:CODE} 分隔符的显示。

{phang}{opt count(#)} 指定列出的观察值的数量限制。默认值为 {cmd:count(100)}。

{marker examples}{...}
{title:示例}

{pstd}
使用标准的 auto 数据集准备一个小示例。

        {cmd:.} {stata sysuse auto}
        {cmd:.} {stata dataex make price mpg rep78 in 1/5}

{pstd}
您可以按想要的顺序呈现变量。如果某些变量有值标签，结果将包括重新创建它们的命令。

        {cmd:.} {stata dataex make rep78 price foreign if rep78 == 5}

{pstd}
您可以使用 {opt varlabel} 选项包括生成变量标签的命令。

        {cmd:.} {stata dataex make rep78 price foreign if rep78 == 5, var}
        
{pstd}
数值型 {help datetime_zh} 变量也将被正确格式化。在以下示例中，日常日期变量 {bf:date} 使用 Stata 的内部数值重新生成，然后使用 {bf:%td} 格式进行格式化。下一个示例展示了一个季度日期变量。

        {cmd:.} {stata sysuse sp500}
        {cmd:.} {stata dataex in 1/5}
        
        {cmd:.} {stata sysuse gnp96}
        {cmd:.} {stata dataex in 1/5}
        
{pstd}
如果数据集很大，请考虑选择随机样本。以下示例使用 {stata "ssc des randomtag":{bf:randomtag}}（来自 SSC）选择 10 个随机观察值。

        {cmd:.} {stata ssc install randomtag}
        {cmd:.} {stata sysuse icd9_cod.dta, clear}
        {cmd:.} {stata randomtag if length(__code9) == 4, count(10) gen(pick)}
        {cmd:.} {stata dataex __code9 __desc9 if pick}

{marker acknowledgments}{...}
{title:致谢}

{pstd}
非常感谢威廉·利索斯基的观察，他指出有些用户可能无意中触发大量数据转储，并感谢他对如何处理该问题的深思熟虑的建议。

{marker authors}{...}
{title:作者}

{pstd}罗伯特·皮卡德{p_end}
{pstd}picard@netbox.com{p_end}

{pstd}尼古拉斯·J·考克斯，达勒姆大学，英国{p_end}
{pstd}n.j.cox@durham.ac.uk{p_end}

{marker alsosee}{...}
{title:另见}

{psee}
SSC:  
{stata "ssc des listsome":{bf:listsome}},
{stata "ssc des randomtag":{bf:randomtag}}
{p_end}

{psee}
帮助:  
{manhelp input D:input}, 
{manhelp data_types D:数据类型}, 
{manhelp Datetime D},  
{manhelp label D},  
{manhelp encode D},
{manhelp list D}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dataex.sthlp>}