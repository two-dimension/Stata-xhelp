{smcl}
{* *! version 1.0.0  30apr2019}{...}
{viewerdialog cmchoiceset "dialog cmchoiceset"}{...}
{vieweralsosee "[CM] cmchoiceset" "mansection CM cmchoiceset"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmsample" "help cmsample_zh"}{...}
{vieweralsosee "[CM] cmset" "help cmset_zh"}{...}
{vieweralsosee "[CM] cmsummarize" "help cmsummarize_zh"}{...}
{vieweralsosee "[CM] cmtab" "help cmtab_zh"}{...}
{viewerjumpto "Syntax" "cmchoiceset_zh##syntax"}{...}
{viewerjumpto "Menu" "cmchoiceset_zh##menu"}{...}
{viewerjumpto "Description" "cmchoiceset_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cmchoiceset_zh##linkspdf"}{...}
{viewerjumpto "Options" "cmchoiceset_zh##options"}{...}
{viewerjumpto "Examples" "cmchoiceset_zh##examples"}{...}
{viewerjumpto "Stored results" "cmchoiceset_zh##results"}
{help cmchoiceset:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[CM] cmchoiceset} {hline 2}}汇总选择集{p_end}
{p2col:}({mansection CM cmchoiceset:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:cmchoiceset}
[{varname}] {ifin}
[{cmd:,} {it:选项}]

{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主}
{synopt :{opt size}}汇总选择集的大小{p_end}
{synopt :{opt obs:ervations}}按观察值汇总，而非案例；默认为此{p_end}
{synopt :{opt altwise}}使用基于替代方案的删除，而非基于案例的删除{p_end}
{synopt :{opt trans:pose}}在双向表中转置行和列{p_end}
{synopt :{opt miss:ing}}在汇总中包含 {it:varname} 的缺失值{p_end}
{synopt :{opt time}}按时间变量汇总选择集（仅适用于面板 CM 数据）{p_end}
{synopt :{opth gen:erate(cmchoiceset##opt_generate:newvar,...)}}创建包含选择集模式类别的新变量{p_end}

{syntab:选项}
{synopt :{it:tab1_options}}单向表的选项{p_end}
{synopt :{it:tab2_options}}双向表的选项{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 23}{...}
{synopthdr:tab1_options}
{synoptline}
{synopt :{opt sort}}按频率以降序显示表格{p_end}
{synoptline}

{synopthdr:tab2_options}
{synoptline}
{synopt :{opt co:lumn}}报告列百分比{p_end}
{synopt :{opt r:ow}}报告行百分比{p_end}
{synopt :{opt ce:ll}}报告单元格百分比{p_end}
{synopt :{opt rowsort}}按观察到的频率列出行{p_end}
{synopt :{opt colsort}}按观察到的频率列出列{p_end}
{synopt :[{cmd:no}]{opt key}}报告或抑制单元格内容键{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
您必须在使用 {cmd:cmchoiceset} 之前先 {cmd:cmset} 您的数据；请参见 {manhelp cmset CM}.{p_end}
{p 4 6 2}
允许使用 {opt by}；参见 {manhelp by D}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 选择模型 > 设置和工具 > 汇总选择集}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cmchoiceset} 对选择数据进行选择集汇总。当选择集不平衡时非常有用，即当每个案例的替代方案不同时。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection CM cmchoicesetQuickstart:快速入门}

        {mansection CM cmchoicesetRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{cmd:size} 汇总选择集的大小，而不是选择集模式。

{phang}
{cmd:observations} 指定按观察值而不是案例进行汇总，这是默认行为。如果指定了 {it:varname}，且 {it:varname} 是案例特定变量（案例内值恒定），则默认情况下将按案例显示选择集与 {it:varname} 的汇总。如果 {it:varname} 不是案例特定变量，则无法生成按案例的汇总，因此必须指定选项 {cmd:observations}；否则，会出现错误信息。

{phang}
{cmd:altwise} 指定在因为替代变量或 {it:varname} 的缺失值而省略观察时使用基于替代方案的删除。默认情况下，使用基于案例的删除；即如果遇到任何缺失值，整个组成案例的观察组将被省略。此选项不适用于由 {cmd:if} 或 {cmd:in} 限定符或 {cmd:by} 前缀排除的观察；这些观察无论是否指定 {cmd:altwise} 都始终采用基于替代方案的处理方式。

{phang}
{cmd:transpose} 在双向表的显示中转置行和列。

{phang}
{cmd:missing} 指定将 {it:varname} 的缺失值视为 {it:varname} 的任何其他值。

{phang}
{cmd:time} 当数据为面板选择数据时，汇总选择集与时间变量的关系。请参见 {manhelp cmset CM}。

{marker opt_generate}{...}
{phang}
{cmd:generate(}{newvar}[{cmd:, replace} {opt label(lblname)}]{cmd:)} 创建一个包含选择集模式类别的新变量。变量 {it:newvar} 是数字型，值为 1, 2, .... 其值标签包含选择集模式字符串。如果指定了选项 {cmd:size}，则 {it:newvar} 包含选择集的大小。

{phang2}
{cmd:replace} 允许替换任何名为 {it:newvar} 的现有变量。

{phang2}
{opt label(lblname)} 指定在指定 {opt generate(newvar)} 时创建的 {help label_zh:value label} 的名称。默认情况下，变量名称 {it:newvar} 也用作值标签的名称。

{dlgtab:选项}

{phang}
{opt sort} 在单向表中将表格按频率降序排列。

{phang}
{opt column} 在双向表中显示每个单元格内相对于其列的频率（百分比）。

{phang}
{opt row} 在双向表中显示每个单元格内相对于其行的频率（百分比）。

{phang}
{opt cell} 在双向表中显示每个单元格的频率（百分比）。

{phang}
{opt rowsort} 和 {opt colsort} 指定在双向表中按观察频率排列行和列。

{phang}
[{cmd:no}]{cmd:key} 在双向表上方显示或抑制一个键。默认情况下，如果请求了多个单元格统计，则显示该键。 {cmd:key} 显示键。 {cmd:nokey} 抑制该键的显示。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse carchoice}{p_end}
{phang2}{cmd:. cmset consumerid car}{p_end}

{pstd}汇总选择集{p_end}
{phang2}{cmd:. cmchoiceset}{p_end}

{pstd}报告观察数，而非案例数{p_end}
{phang2}{cmd:. cmchoiceset, observations}{p_end}

{pstd}按 {cmd:gender} 汇总选择集，这是一个案例特定变量{p_end}
{phang2}{cmd:. cmchoiceset gender}{p_end}

{pstd}与上述相同，但省略具有缺失值 {cmd:gender} 的案例{p_end}
{phang2}{cmd:. cmchoiceset gender, altwise}{p_end}

{pstd}与上述相同，但仅省略缺失 {cmd:gender} 的观察，而非整个案例{p_end}
{phang2}{cmd:. cmchoiceset gender, missing observations}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:cmchoiceset} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:r(N)}}观察数{p_end}
{synopt :{cmd:r(r)}}行数{p_end}
{synopt :{cmd:r(c)}}列数{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cmchoiceset.sthlp>}