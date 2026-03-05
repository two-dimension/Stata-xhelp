{smcl}
{* *! version 1.0.22  05feb2019}{...}
{vieweralsosee "[P] window manage" "mansection P windowmanage"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] window programming" "help window_programming_zh"}{...}
{viewerjumpto "语法" "window_manage_zh##syntax"}{...}
{viewerjumpto "描述" "window_manage_zh##description"}{...}
{viewerjumpto "PDF文档链接" "window_manage_zh##linkspdf"}{...}
{viewerjumpto "备注" "window_manage_zh##remarks"}
{help window_manage:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[P] window manage} {hline 2}}管理窗口特性{p_end}
{p2col:}({mansection P windowmanage:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}最小化或还原主 Stata 窗口

{p 8 18 2}
{opt win:dow} {opt man:age} {cmd:minimize}

{p 8 18 2}
{opt win:dow} {opt man:age} {cmd:restore}


{phang}管理窗口偏好设置

{p 8 18 2}
{opt win:dow} {opt man:age} {opt prefs}
 {c -(}{opt load} "{it:prefname}"|{opt save} "{it:prefname}"|{opt default}{c )-}


{phang}恢复文件关联（仅限 Windows）

{p 8 18 2}
{opt win:dow} {opt man:age} {opt associate}


{phang}重置主窗口标题（仅限 Unix 和 Windows）

{p 8 18 2}
{opt win:dow} {opt man:age} {opt maintitle} {c -(}{opt reset} | "{it:title}"{c )-}


{phang}设置 Dock 图标的标签（仅限 Mac）

{p 8 18 2}
{opt win:dow} {opt man:age} {opt docklabel} ["{it:label}"]


{phang}将窗口置于前面

{p 8 18 2}
{opt win:dow} {opt man:age} {opt forward} {it:window-name}

{phang2}
其中 {it:window-name} 可以是 {opt command}, {opt doeditor}, {opt graph}, 
{opt help}, {opt history}, {opt results}, {opt review}, {opt variables}, 或
{opt viewer}。


{phang}管理图形窗口的命令

{p 8 18 2}
{opt win:dow} {opt man:age} {opt print} {opt graph}

{p 8 18 2}
{opt win:dow} {opt man:age} {opt forward} {opt graph}
 ["{it:graphname}"]

{p 8 18 2}
{opt win:dow} {opt man:age} {opt close} {opt graph}
 [{c -(}"{it:graphname}"|{cmd:_all}{c )-}]

{p 8 18 2}
{opt win:dow} {opt man:age} {opt rename} {opt graph}
 {it:oldgraphname} {it:newgraphname}


{phang}管理查看器窗口的命令

{p 8 18 2}
{opt win:dow} {opt man:age} {opt print} {opt viewer}
 ["{it:viewername}"]

{p 8 18 2}
{opt win:dow} {opt man:age} {opt forward} {opt viewer}
 ["{it:viewername}"]

{p 8 18 2}
{opt win:dow} {opt man:age} {opt close} {opt viewer}
 [{c -(}"{it:viewername}"|{cmd:_all}{c )-}]


{marker description}{...}
{title:描述} 

{pstd}
{cmd:window manage} 允许 Stata 程序调用 Stata 主菜单中的功能。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P windowmanageRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:window} {cmd:manage} 访问 Stata 窗口化界面的各个部分，这些部分在交互式操作时才会提供。例如，假设程序员希望确保图形窗口被置于最前面。交互式用户会通过从 {hi:Graph} 菜单中选择来实现。Stata 程序可以通过编码 {cmd:window} {cmd:manage} {cmd:forward} {cmd:graph} 来完成相同的操作。

{pstd}
备注在以下标题下呈现：

       {hi:{help window manage##minimizing:最小化或还原主窗口}}
       {hi:{help window manage##preferences:窗口偏好设置}}
       {hi:{help window manage##restoringfile:恢复文件关联（仅限 Windows）}}
       {hi:{help window manage##maintitle:重置主窗口标题}}
       {hi:{help window manage##docklabel:设置 Dock 图标的标签（仅限 Mac）}}
       {hi:{help window manage##windowsforward:将窗口置于前面}}
       {hi:{help window manage##graphs:管理图形窗口的命令}}
       {hi:{help window manage##viewer:管理查看器窗口的命令}}


{marker minimizing}{...}
{title:最小化或还原主窗口}

{pstd}
{cmd:window} {cmd:manage} {cmd:minimize} 最小化（隐藏） Stata 窗口。
在 Stata for Windows 和 Stata for Unix 中，这与单击 Stata 标题栏上的最小化按钮效果相同。在 Stata for Mac 中，这与从 {hi:Stata} 菜单中选择 {hi:Hide Stata} 的效果相同。

{pstd}
例如，

       {cmd:window manage minimize}

{pstd}
如果你使用的是 Stata for Windows 或 Stata for Unix，则此命令会最小化整体 Stata 窗口；如果你使用的是 Stata for Mac，则会隐藏 Stata 的窗口。

{pstd}
{cmd:window} {cmd:manage} {cmd:restore} 在必要时恢复 Stata 窗口。

{pstd}
在 Stata for Windows 中，该命令的效果相当于单击任务栏上的 Stata 按钮。在 Stata for Mac 中，该命令与单击 Dock 上的 Stata 图标效果相同。在 Stata for Unix 中，该命令与单击窗口管理器中的 Stata 图标效果相同。

{pstd}
例如，

       {cmd:window manage restore}

{pstd}
将 Stata 的总体窗口恢复到其正常的非最小化状态。


{marker preferences}{...}
{title:窗口偏好设置}

{pstd}
{cmd:window} {cmd:manage} {cmd:prefs}
{c -(}{opt load} "{it:prefname}"|{opt save} "{it:prefname}"|{opt default}{c )-}
加载、保存和恢复窗口偏好设置。

{pstd}
{cmd:window manage prefs load} "{it:prefname}" 相当于选择
{bf:Edit > Preferences > Load Preference set} 并加载一个命名的偏好集。
{cmd:window manage prefs save} "{it:prefname}" 相当于选择
{bf:Edit > Preferences > Save preference set} 并命名一个新的偏好集。
{cmd:window manage prefs default} 相当于选择
{bf:Edit > Preferences > Load preference set > Widescreen layout (default)}。
在 Stata for Mac 中，{bf:Preferences} 菜单位于 {bf:Stata} 菜单中。

{pstd}
例如，

       {cmd:window manage prefs default}

{pstd}
将 Stata 的窗口恢复到它们的“出厂”外观。


{marker restoringfile}{...}
{title:恢复文件关联（仅限 Windows）}

{pstd}
在 Stata for Windows 中， {cmd:window} {cmd:manage} {cmd:associate} 恢复 Stata 文件类型的默认操作。例如，另一个应用程序可能接管 {cmd:.dta} 扩展名，以至于双击 Stata 数据集将不再启动 Stata。 {cmd:window} {cmd:manage} {cmd:associate} 恢复所有 Stata 文件扩展名（如 {cmd:.dta}）与 Stata 之间的关联。这与选择 
{bf:Edit > Preferences > Reset file associations} 相同。


{marker maintitle}{...}
{title:重置主窗口标题}

{pstd}
在 Stata for Unix 和 Stata for Windows 中，{cmd:window} {cmd:manage}
{cmd:maintitle} "{it:title}" 更改主 Stata 窗口的标题。
可以通过 {cmd:window} {cmd:manage}
{cmd:maintitle} {cmd:reset} 将标题重置为默认值。


{marker docklabel}{...}
{title:设置 Dock 图标的标签（仅限 Mac）}

{pstd}
在 Stata for Mac 中，{cmd:window} {cmd:manage} {cmd:docklabel} "{it:label}"
设置要在 Dock 中 Stata 应用程序图标的徽章区域显示的标签。要清除徽章标签，可以输入不带标签的命令。应该将标签限制在 6 个字符或更少，否则标签将被截断。

{pstd}
{cmd:window} {cmd:manage} {cmd:docklabel} 对于显示 do-file 进度非常有用。

{pstd}
例如，

       {hline 45} begin test.do {hline 4}
	do test1.do
	window manage docklabel "25%"
	do test2.do
	window manage docklabel "50%"
	do test3.do
	window manage docklabel "75%"
	do test4.do
	window manage docklabel
       {hline 45} end test.do {hline 6}


{marker windowsforward}{...}
{title:将窗口置于前面}

{pstd}
{cmd:window} {cmd:manage} {cmd:forward} {it:window-name} 将指定窗口置于所有其他 Stata 窗口的顶部。该命令相当于从 {hi:Window} 菜单中选择可用窗口。以下表格列出了 {cmd:window manage forward} 理解的 {it:window-name}：

          {it:window-name}{col 30}Stata 窗口
          {hline 40}
          {cmd:command}{col 30}命令窗口
          {cmd:doeditor}{col 30}Do-file 编辑器窗口
          {cmd:graph}{col 30}图形窗口
          {cmd:help}{col 30}帮助/搜索窗口
          {cmd:history}{col 30}历史窗口
          {cmd:results}{col 30}结果窗口
          {cmd:review}{col 30}与 {cmd:history} 同义
          {cmd:variables}{col 30}变量窗口
          {cmd:viewer}{col 30}查看器窗口
          {hline 40}

{pstd}
如果窗口在 Stata 的 {hi:Window} 菜单中没有可用（如果它已经灰显），则在 {cmd:window manage forward} 后指定 {it:window-name} 将不会产生任何效果。例如，如果没有当前图形，{cmd:window manage forward graph} 将不会执行任何操作；这不是错误。

{pstd}
例如，

       {cmd:window manage forward results}

{pstd}
将结果窗口置于其他 Stata 窗口的顶部。

{pstd}
在 Stata for Mac 和 Stata for Unix 中，指定命令、历史、结果或变量窗口将把主 Stata 窗口置于前面，因为这些窗口都包含在一个窗口内。
{p_end}


{marker graphs}{...}
{title:管理图形窗口的命令}

{pstd}{bf:打印}

{pstd}
{cmd:window} {cmd:manage} {cmd:print} {opt graph} 调用 {hi:File} > {hi:Print} > {hi:Graph (Graph)} 菜单项的操作。如果没有当前图形，{cmd:window} {cmd:manage} {cmd:print} 不会执行任何操作；不会返回错误。

{pstd}
例如，

       {cmd:window manage print graph}

{pstd}
显示打印对话框，就像您从 {hi:File} > {hi:Print} > {hi:Graph (Graph)} 下拉菜单中选择的那样。

{pstd}{bf:置于前面}

{pstd}
{cmd:window} {cmd:manage} {cmd:forward} {opt graph} [{it:graphname}] 如果存在，则将名为 {it:graphname} 的图形窗口带至其他窗口的最上方。如果没有指定 {it:graphname} 并且打开了多个图形窗口，{cmd:window} {cmd:manage} {cmd:forward} {cmd:graph} 将最上面的图形窗口带至其他窗口的最上方。

{pstd}{bf:关闭}

{pstd}
{cmd:window} {cmd:manage} {cmd:close} {opt graph} [{it:graphname}|{cmd:_all}] 关闭名为 {it:graphname} 的图形窗口（如果存在）。如果指定了 {cmd:_all} ，则关闭所有图形窗口。如果没有指定 {it:graphname} 且存在一个未命名的图形窗口，则该未命名的图形窗口将被关闭。请注意，此命令并不适用于最终用户；它是供 {cmd:graph close} 使用的工具。最终用户应使用 {helpb graph close}。

{pstd}{bf:重命名}

{pstd}
{cmd:window} {cmd:manage} {cmd:rename} {cmd:graph} {it:oldgraphname}
{it:newgraphname} 将名为 {it:oldgraphname} 的图形窗口（如果存在）重命名为 {it:newgraphname}。请注意，此命令并不适用于最终用户；它是供 {cmd:graph rename} 使用的工具。最终用户应使用 {helpb graph rename}。


{marker viewer}{...}
{title:管理查看器窗口的命令}

{pstd}{bf:打印}

{pstd}
{cmd:window} {cmd:manage} {cmd:print} {opt viewer} [{it:viewername}] 打印名为 {it:viewername} 的查看器窗口（如果存在）。如果未指定 {it:viewername} 且打开了多个查看器窗口，则 {cmd:window}
{cmd:manage} 打印最上面的查看器窗口。如果没有当前查看器窗口，{cmd:window} {cmd:manage} {cmd:print} 不会执行任何操作；不会返回错误。

{pstd}{bf:置于前面}

{pstd}
{cmd:window} {cmd:manage} {cmd:forward} {opt viewer} [{it:viewername}] 如果存在，则将名为 {it:viewername} 的查看器窗口带至其他窗口的最上方。如果未指定 {it:viewername} 且打开了多个查看器窗口，则 {cmd:window} {cmd:manage} 将最上面的查看器窗口带至其他窗口的最上方。

{pstd}{bf:关闭}

{cmd:window} {cmd:manage} {cmd:close} {opt viewer} [{it:viewername}|{cmd:_all}] 关闭名为 {it:viewername} 的查看器窗口（如果存在）。如果指定了 {cmd:_all} ，则关闭所有查看器窗口。如果未指定 {it:viewername} 且存在一个未命名的查看器窗口，则该未命名的查看器窗口将被关闭。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <window_manage.sthlp>}