{smcl}
{* *! version 1.2.3  15may2018}{...}
{vieweralsosee "[P] window menu" "mansection P windowmenu"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] Dialog programming" "help dialog_programming_zh"}{...}
{vieweralsosee "[P] window manage" "help window manage"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] window programming" "help window_programming_zh"}{...}
{viewerjumpto "Syntax" "window_menu_zh##syntax"}{...}
{viewerjumpto "Description" "window_menu_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "window_menu_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "window_menu_zh##remarks"}
{help window_menu:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[P] window menu} {hline 2}}创建菜单{p_end}
{p2col:}({mansection P windowmenu:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    清除之前定义的菜单项

{p 8 15 2}
{opt win:dow} {opt m:enu} {cmd:clear}


    定义子菜单

{p 8 15 2}
{opt win:dow} {opt m:enu} {cmd:append submenu}
{cmd:"}{it:defined_menuname}{cmd:"}
{cmd:"}{it:appending_menuname}{cmd:"}


    定义菜单项

{p 8 15 2}
{opt win:dow} {opt m:enu} {cmd:append item}
{cmd:"}{it:defined_menuname}{cmd:"}
{cmd:"}{it:entry_text}{cmd:"} {cmd:"}{it:command_to_execute}{cmd:"} 


    定义分隔条

{p 8 15 2}
{opt win:dow} {opt m:enu} {cmd:append separator}
{cmd:"}{it:defined_menuname}{cmd:"}


    激活菜单更改

{p 8 15 2}
{opt win:dow} {opt m:enu} {cmd:refresh}


    向“最近打开”菜单添加文件

{p 8 15 2}
{opt win:dow} {opt m:enu} {cmd:add_recentfiles}
{cmd:"}{it:filename}{cmd:"} [ {cmd:,} {cmdab:rlev:el:(}{it:#}{cmd:)} ]


{phang}
上述的引号是必需的。

{phang}
{cmd:"}{it:defined_menuname}{cmd:"} 是一个之前定义的菜单的名称
或用户可访问的菜单之一 {hi:"stUser"}, {hi:"stUserData"},
{hi:"stUserGraphics"}, 或 {hi:"stUserStatistics"}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:window} {cmd:menu} 允许您添加新的菜单层级。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P windowmenuRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

       {hi:{help window menu##overview:概述}}
       {hi:{help window menu##clearing:清除之前定义的菜单项}}
       {hi:{help window menu##submenus:定义子菜单}}
       {hi:{help window menu##defmenu:定义菜单项}}
       {hi:{help window menu##separator:定义分隔条}}
       {hi:{help window menu##menuchanges:激活菜单更改}}
       {hi:{help window menu##add_recentfiles:向“最近打开”菜单添加文件}}
       {hi:{help window menu##keyboard:键盘快捷键（仅限 Windows）}}
       {hi:{help window menu##examples:示例}}
       {hi:{help window menu##dialogs:高级功能：对话框和内置操作}}
       {hi:{help window menu##checkedmenu:高级功能：创建选中菜单项}}
       {hi:{help window menu##together:综合示例}}


{marker overview}{...}
{title:概述}

{pstd}
菜单是一个选择列表。每个选择可能是另一个菜单（称为子菜单）或一个项目。当您点击一个项目时，会发生某些事情，例如出现对话框或执行命令。菜单还可以包含分隔符，它们是水平条，用于将菜单分隔成相关选择组。

{pstd}
Stata 提供了顶级菜单 {hi:Data}、{hi:Graphics}、{hi:Statistics} 和 {hi:User}，您可以附加自己的子菜单、项目或分隔符。

{pstd}
菜单层次结构是菜单的集合及其关系。

{pstd}
{cmd:window} {cmd:menu} 允许您创建菜单层次，设置每个菜单中显示的文本，设置与每个菜单项相关联的操作，并向菜单添加分隔符。

{pstd}
新的菜单层次结构是从上到下定义的，而不是从下到上。以下是如何创建新的菜单层次结构：

{phang}
1. 使用 {cmd:window} {cmd:menu} {cmd:append} {cmd:submenu} 将新的子菜单附加到某个现有的 Stata 菜单。这此外新的子菜单可以是空的，这没有关系。

{phang}
2. 您向新的子菜单附加其他子菜单、项目或分隔符，所有操作都由 {cmd:window} {cmd:menu} {cmd:append} 完成。通过这种方式，您可以填充在第 1 步中附加的新的子菜单。

{phang}
3. 如果在第 2 步中，您向第 1 步中定义的菜单附加子菜单，您需要向每个子菜单附加，从而使它们完全定义。这需要更多的 {cmd:window} {cmd:menu} {cmd:append} 命令。

{phang}
4. 继续这样做，直到完整的层次结构被定义。然后您告诉 Stata 的菜单管理器您已经完成，使用 {cmd:window} {cmd:menu} {cmd:refresh}。

{pstd}
到第 4 步为止，您所做的只是定义性操作。在第 4 步，您完成的操作开始生效。

{pstd}
您可以向 Stata 添加菜单。然后可以再添加更多菜单。随后，您还可以再添加更多菜单。然而，您不能做的事是删除您曾添加过的部分内容。您可以添加一些菜单，然后使用 {cmd:window} {cmd:menu} {cmd:refresh}，然后再添加更多，并使用 {cmd:window} {cmd:menu} {cmd:refresh}，但您不能回去删除您之前添加的部分。您可以做的是删除您添加的所有菜单，使 Stata 恢复到其原始配置。 {cmd:window} {cmd:menu} {cmd:clear} 可以实现这一点。

{pstd}
所以，在我们开头的例子中， {hi:Regression} 子菜单是如何定义的？通过输入

       {cmd:. window menu append submenu "stUserStatistics" "Regression"}
       {cmd:. window menu append item "Regression" "Simple" . . .}
       {cmd:. window menu append item "Regression" "Multiple" . . .} 
       {cmd:. window menu append item "Regression" "Multivariate" . . .}
       {cmd:. window menu refresh}

{pstd}
{cmd:stUserStatistics} 是 Stata 的 {hi:User}{hline 1}{hi:Statistics} 内置菜单的特定名称。第一个命令向名为 {hi:Regression} 的 {cmd:stUserStatistics} 附加了一个子菜单。此时，{hi:Regression} 是一个空子菜单。

{pstd}
接下来的三个命令通过附加内容填充 {hi:Regression}。所有三个命令都是菜单项，意味着被选择时，它们会调用某个 Stata 命令或程序。（我们没有展示这些 Stata 命令；我们只是放置了“. . .”来表示它们。）

{pstd}
最后， {cmd:window} {cmd:menu} {cmd:refresh} 告诉 Stata 我们完成了，并使我们的新添加内容可用。 


{marker clearing}{...}
{title:清除之前定义的菜单项}

{p 8 18 2}
{opt win:dow} {opt m:enu} {cmd:clear}

{pstd}
清除对 Stata 菜单系统所做的任何添加。


{marker submenus}{...}
{title:定义子菜单}

{p 8 18 2}
{opt win:dow} {opt m:enu} {cmd:append submenu}
{cmd:"}{it:defined_menuname}{cmd:"} {cmd:"}{it:appending_menuname}{cmd:"}

{pstd}
定义一个子菜单。此命令创建一个附加到 {cmd:"}{it:defined_menuname}{cmd:"} 的子菜单，文本为 {it:appending_menuname}（双引号字符在显示的子菜单中不会出现）。它还声明 {cmd:"}{it:appending_menuname}{cmd:"} 以后可以有其他子菜单、项目和分隔符附加。可以使用以下命令向 Stata 的内置 {hi:User} 菜单附加子菜单：

{p 8 18 2}
{cmd:window menu append submenu "stUser"} {cmd:"}{it:appending_menuname}{cmd:"}

{pstd}
例如，

{p 8 18 2}
{cmd:window menu append submenu "stUser" "New Menu"}

{pstd}
将 {hi:New Menu} 附加到 Stata 的 {hi:User} 菜单。同样，可以通过使用 {hi:stUserData}、{hi:stUserGraphics} 或 {hi:stUserStatistics} 作为 {it:defined_menuname}，向 {hi:User} 的内置子菜单 {hi:Data}、{hi:Graphics} 和 {hi:Statistics} 附加子菜单。


{marker defmenu}{...}
{title:定义菜单项}

{p 8 18 2}
{opt win:dow} {opt m:enu} {cmd:append item}
{cmd:"}{it:defined_menuname}{cmd:"}
{cmd:"}{it:entry_text}{cmd:"} 
{cmd:"}{it:command_to_execute}{cmd:"}

{pstd}
定义菜单项。此命令创建一个附加到 {cmd:"}{it:defined_menuname}{cmd:"} 的菜单项，文本为 {cmd:"}{it:entry_text}{cmd:"}。当用户选择该项时，将调用 {cmd:"}{it:command_to_execute}{cmd:"}。

{pstd}
例如，

{p 8 18 2}
{cmd:window menu append item "New Menu" "Describe" "describe"}

{pstd}
将菜单项 {hi:Describe} 附加到先前定义的 {hi:New Menu} 子菜单，并指定如果用户选择 {hi:Describe}，将执行 {cmd:describe} 命令。


{marker separator}{...}
{title:定义分隔条}

{p 8 18 2}
{opt win:dow} {opt m:enu} {cmd:append separator "}{it:defined_menuname}{cmd:"}

{pstd}
定义一个分隔条。分隔条将在声明的位置显示，并附加到现有子菜单。

{pstd}
例如，

{p 8 18 2}
{cmd:window menu append separator "New Menu"}

{pstd}
向 {hi:New Menu} 添加分隔条。


{marker menuchanges}{...}
{title:激活菜单更改}

{p 8 18 2}
{opt win:dow} {opt m:enu} {cmd:refresh}

{pstd}
激活对 Stata 菜单系统所做的更改。

{marker add_recentfiles}{...}
{title:向“最近打开”菜单添加文件}

{pstd}
{hi:Open recent} 菜单是用户最近使用或保存的数据集列表。从菜单中选择数据集会导致 Stata 对该数据集执行 {help use_zh} 命令以加载数据。数据集在列表中以数据集的绝对路径或 URL 表示。

{pstd}
通过 {help use_zh} 或 {help save_zh} 命令加载的数据集会被添加到列表中。列表的顺序是从最近使用的数据集到最少最近使用的数据集。列表中的最大数据集数量是二十，当达到最大数量时，将从列表底部移除数据集。如果在添加时数据集已存在于列表中，则现有条目将移到列表顶部。

{pstd}
{hi:Open recent} 菜单的数据集列表在退出 Stata 时保存，并在启动 Stata 时加载。Stata 在退出和启动时会从列表中移除不存在的数据集，但在会话期间不会这样做。Stata 不会尝试确定 URL 是否有效。

{p 8 18 2}
{opt win:dow} {opt m:enu} {cmd:add_recentfiles "}{it:filename}{cmd:"}
{cmd:[ , }{opt rlev:el}{cmd:(}{it:#}{cmd:)} {cmd:]}

{pstd}
在 {hi:File} 菜单下向 {hi:Open recent} 菜单添加数据集。仅应向 {hi:Open recent} 菜单添加数据集。

{pstd}
为了防止临时文件被添加到 {hi:Open recent} 菜单，Stata 不会添加通过 do 文件、ado 文件或运行批处理文件时使用或保存的数据集。然而，对于您希望添加通过 ado 文件或 do 文件使用或保存的数据集的情况，您可以使用 {cmd:rlevel()} 选项。

{pstd}
{cmd:rlevel()} 选项决定了发出 {cmd:window menu add_recentfiles} 的 ado 文件在添加数据集到 {hi:Open recent} 菜单时可以运行的最高级别。如果没有 ado 文件在运行，则运行级别是 {cmd:0}。如果一个 ado 文件执行另一个 ado 文件，该 ado 文件又执行其他 ado 文件然后返回，则运行级别为 {cmd:3}。 {cmd:rlevel(0)} 仅在没有 ado 文件或 do 文件在运行时添加数据集，并且是默认设置。 {cmd:rlevel(3)} 如果在调用时一个 ado 文件的深度为 3 级时添加数据集。 {cmd:rlevel(-1)} 无论运行级别如何都添加数据集，并且是从 do 文件添加数据集的唯一方法。

{pstd}
例如，{help sysuse_zh} 是作为 ado 文件实现的。我们希望仅在用户直接通过命令行输入 {cmd:sysuse} 时将通过 {cmd:sysuse} 加载的数据集添加到 {hi:Open recent} 菜单。我们在 {cmd:sysuse.ado} 中添加以下内容：

{p 8 18 2}
{cmd:window menu add_recentfiles} "{it:filename}"{cmd:, rlevel(1)}

{pstd}
如果我们使用 {cmd:2} 的运行级别，则任何通过 ado 文件执行的 {cmd:sysuse} 加载的数据集将添加到 {hi:Open recent} 菜单，这不是我们想要的。

{marker keyboard}{...}
{title:键盘快捷键（仅限 Windows）}

{pstd}
当您定义菜单项时，可以分配一个键盘快捷键。快捷键（或键盘加速器）是允许通过键盘选择菜单项的键，除了通常的点击方法外。

{pstd}
通过将一个与号（{cmd:&}）立即放在一个字符前，您定义该字符为快捷键。与号不会出现在菜单项中，但与号后面的字符会被加下划线以提醒用户快捷键。然后用户可以通过单击鼠标或按住 {hi:Alt} 并按快捷键来选择菜单项。实际上，您只需对顶级菜单保持 {hi:Alt}。对于子菜单，一旦下拉，保持 {hi:Alt} 是可选的。

{pstd}
如果需要在 {cmd:"}{it:entry_text}{cmd:"} 中包括与号，请放置两个并排的与号。

{pstd}
您有责任避免创建冲突的键盘快捷键。当用户输入键盘快捷键时，Stata 会找到第一个具有定义快捷键的项目。

{pstd}
示例：

{p 8 18 2}
{cmd:window menu append submenu "stUserStatistics" "&Regression"}

{pstd}
定义一个名为 {hi:Regression} 的新子菜单，出现在 {hi:User}{hline 1}{hi:Statistics} 菜单中，用户可以通过按 {hi:Alt-U}（打开 {hi:User} 菜单），然后 {hi:S}（打开 {hi:Statistics} 菜单），最后 {hi:R}（为 {hi:Regression} 定义的快捷键）进行访问。


{marker examples}{...}
{title:示例}

{pstd}
以下我们使用 {cmd:window} {cmd:menu} 命令向 Stata 的现有顶级菜单添加内容。可以交互地输入以下内容：

{p 8 8 2}
{cmd}window menu clear{break}
window menu append submenu "stUser" "&My Data"{break}
window menu append item "My Data" "&Describe data" "describe"{break}
window menu refresh{txt}

{phang}
{cmd:window} {cmd:menu} {cmd:clear} 
{break}
清除任何用户定义的菜单项，并将菜单系统恢复到默认状态。

{phang}
{cmd:window} {cmd:menu} {cmd:append} {cmd:submenu} {cmd:"stUser"} {cmd:"&My Data"} 
{break}
向 {hi:User} 附加一个名为 {cmd:My Data} 的新子菜单。请注意，您可以将此新菜单命名为您喜欢的任何名称。可以使用大写字母或小写字母。菜单名称可以包含空格。新菜单作为 {hi:User} 菜单上的最后一项出现。

{phang}
{cmd:window} {cmd:menu} {cmd:append} {cmd:item} {cmd:"My Data"} 
{cmd:"&Describe data"} {cmd:"describe"} 
{break}
定义一个菜单项（包括一个键盘快捷键），名称为 {hi:Describe data}，出现在 {hi:My Data} 子菜单中。这个名称就是用户实际看到的内容。它还指定了在用户选择菜单项时要执行的命令。在这种情况下，我们将运行 {cmd:describe} 命令。

{phang}
{cmd:window} {cmd:menu} {cmd:refresh}
{break}
使所有已定义并附加到默认系统菜单的菜单项变为活动并显示。


{marker dialogs}{...}
{title:高级功能：对话框和内置操作}

{pstd}
请记住，菜单项可以具有相关的操作：

{p 8 18 2}
{opt win:dow} {opt m:enu} {cmd:append item}
{cmd:"}{it:defined_menuname}{cmd:"}
{cmd:"}{it:entry_text}{cmd:"}
{cmd:"}{it:command_to_execute}{cmd:"}

{pstd}
可以将 Stata 命令和程序以外的操作添加到菜单。在设计菜单系统的过程中，您可以添加将调用对话框、打开 Stata 数据集、保存 Stata 图形或执行其他常见 Stata 菜单命令的菜单项。

{pstd}
您可以将 {cmd:"}{it:command_to_execute}{cmd:"} 指定为以下之一：

{phang}{cmd:"DB} {it:dialog_to_invoke}{cmd:"}
{break}
调用由文件 {cmd:{it:dialog_to_invoke}.dlg} 定义的对话框。例如，指定 {cmd:"DB regress"} 作为 {cmd:"}{it:command_to_execute}{cmd:"} 会导致在选择该项时调用 Stata 的 {cmd:regress} 命令的对话框。

{phang}{cmd:"XEQ about"}
{break}
显示 Stata 的“关于”对话框。“关于”对话框可以从默认系统菜单中通过选择 {hi:About} 从 {hi:File} 菜单访问。

{phang}{cmd:"XEQ save"}
{break}
显示 Stata 的“保存”对话框，以保存内存中的数据集。此对话框可通过从 {hi:File} 菜单中选择 {hi:Save} 来访问默认系统菜单。

{phang}{cmd:"XEQ saveas"}
{break}
显示 Stata 的“另存为”对话框，以保存内存中的数据集。此对话框可以通过从 {hi:File} 菜单中选择 {hi:Save as...} 来访问默认系统菜单。

{phang}{cmd:"XEQ savegr"}
{break}
显示“保存 Stata 图形文件”对话框，以保存当前显示的图形。此对话框可以通过从图形编辑器的默认菜单中选择 {hi:Save as...} 来访问。

{phang}{cmd:"XEQ printgr"}
{break}
打印图形窗口中显示的图形。在默认菜单系统中可以通过从 {hi:File} 菜单选择 {hi:Print Graph} 来实现。另请参见 {helpb window manage}。

{phang}{cmd:"XEQ use"}
{break}
显示 Stata 的“打开”对话框，以加载 Stata 数据集。此对话框可以通过从 {hi:File} 菜单选择 {hi:Open...} 访问。

{phang}{cmd:"XEQ exit"}
{break}
退出 Stata。在默认菜单系统中，通过选择 {hi:Exit} 从 {hi:File} 菜单访问（或在 Mac 上选择 {hi:Quit} 从 {hi:Stata} 菜单）。

{phang}{cmd:"XEQ conhelp"}
{break}
打开 Stata 帮助系统的默认欢迎主题。通过在帮助系统中单击 {hi:Help!} 按钮访问该功能。


{marker checkedmenu}{...}
{title:高级功能：创建选中菜单项}

{pstd}
{it:command_to_execute} 在 

{p 8 18 2}
{opt win:dow} {opt m:enu} {cmd:append item}
{cmd:"}{it:defined_menuname}{cmd:"}
{cmd:"}{it:entry_text}{cmd:"}
{cmd:"}{it:command_to_execute}{cmd:"}

{pstd}
也可以指定为 {hi:CHECK} {it:macroname}。

{pstd}
菜单设计者可能希望的另一个细节是能够创建选中菜单项。选中菜单项在菜单系统中显示时，要么被选中（右侧带有小勾）要么未选中。

{pstd}
{hi:"CHECK {it:macroname}"} 指定全局宏 {it:macroname} 应包含该项是否被选中的值。如果在创建菜单项时未定义全局宏，Stata 将将该宏定义为零，并且该项未被选中。如果用户选择菜单项以切换项的状态，Stata 将在菜单系统中该项旁边放置一个勾号，并将全局宏重新定义为一。通过这种方式，您可以编写程序来访问通过菜单系统收集的信息。

{pstd}
请注意，您应将与选中菜单项相关联的全局宏内容视为“只读”。更改宏的内容不会反映在菜单系统中。


{marker together}{...}
{title:综合示例}

{pstd}
在以下示例中，我们创建了一个更大的菜单系统。请注意，每个使用 {cmd:window} {cmd:menu} {cmd:append} {cmd:submenu} 定义的子菜单都包含通过 {cmd:window} {cmd:menu} {cmd:append} {cmd:item} 定义的其他子菜单和/或项目，这些项目调用命令。

    {hline 53} begin lgmenu.do {hline 4}
    {cmd}capture program drop mylgmenu
    program mylgmenu
       version {ccl stata_version}
       win m clear
       win m append submenu "stUserStatistics" "&Regression"
       win m append submenu "stUserStatistics" "&Tests"
    
       win m append item "Regression" "&OLS" "DB regress"
       win m append item "Regression" "Multi&variate" "choose multivariate"
    
       win m append item "stUserGraphics" "&Scatterplot" "choose scatterplot"
       win m append item "stUserGraphics" "&Histogram" "myprog1"
       win m append item "stUserGraphics" "Scatterplot &Matrix" "choose matrix"
       win m append item "stUserGraphics" "&Pie chart" "choose pie"
     
       win m append submenu "Tests" "Test of &mean"
       win m append item "Tests" "Test of &variance" "choose variance"
   
       win m append item "Test of mean" "&Unequal variances" "CHECK DB_uv"
       win m append separator "Test of mean"
       win m append item "Test of mean" "t-test &by variable" "choose by"
       win m append item "Test of mean" "t-test two &variables" "choose 2var"
    
       win m refresh
    end

    capture program drop choose
    program choose
       version {ccl stata_version}
       if "'1'" == "by" | "'1'" == "2var" {c -(}
               display as result "'1'" as text " from the menu system"
               if $DB_uv {c -(}
                       display as text "  use unequal variances"
               {c )-}
               else {c -(}
                       display as text "  use equal variances"
               {c )-}
       {c )-}
       else {c -(}
               display as result "'1'" as text " from the menu system"
       {c )-}
    end

    capture program drop myprog1
    program myprog1
       version {ccl stata_version}
       display as result "myprog1" as text " from the menu system"
    end{txt}
    {hline 53} end lgmenu.do {hline 6}

{pstd}
运行此 do 文件将定义一个名为 {cmd:mylgmenu} 的程序，我们可以用它来设置菜单。请注意，除 {hi:OLS} 项之外，其他所有菜单项不会运行任何有趣的命令，因为这个示例的重点仅在于菜单界面的设计。要查看结果，执行 do 文件后在命令窗口中输入 {cmd:mylgmenu}。以下是对示例的解释。

{pstd}
命令 

        {cmd:win m append submenu "stUserStatistics" "&Regression"}

{pstd}
向内置菜单 {hi:Statistics} 下的 {hi:User} 菜单添加名为 {hi:Regression} 的子菜单。如果用户点击 {hi:Regression}，我们将显示另一个菜单，包含以下定义的项目：

{p 8 18 2}{cmd:win m append item "Regression" "&OLS" "DB regress"}{p_end}
{p 8 18 2}{cmd:win m append item "Regression" "Multi&variate" "choose multivariate"}

{pstd}
由于没有这些条目打开其他菜单，因此它们使用 {cmd:item} 版本而不是 {cmd:submenu} 版本的 {cmd:window} {cmd:menu} {cmd:append} 命令。

{pstd}
同样，内置的 {hi:User}{hline 1}{hi:Graphics} 菜单也通过 {cmd:window} {cmd:menu} {cmd:item} 命令填充。

{p 8 18 2}{cmd:win m append item "stUserGraphics" "&Scatterplot" "choose scatterplot"}{p_end}
{p 8 18 2}{cmd:win m append item "stUserGraphics" "&Histogram" "myprog1"}{p_end}
{p 8 18 2}{cmd:win m append item "stUserGraphics" "Scatterplot &Matrix" "choose matrix"}{p_end}
{p 8 18 2}{cmd:win m append item "stUserGraphics" "&Pie chart" "choose pie"}

{pstd}
对于 {hi:Tests} 子菜单，我们决定将其中一个条目设为另一个子菜单以便演示。首先，我们通过以下命令将 {hi:Tests} 菜单声明为 {hi:User}{hline 1}{hi:Statistics} 的子菜单：

{p 8 15 2}
{cmd:win m append submenu "stUserStatistics" "&Tests"}

{pstd}
然后我们定义了将出现在 {hi:Tests} 菜单下的条目。有两个条目：其中一个是另一个子菜单，另一个是一个项目。对于子菜单，我们然后定义其下的条目。

{pstd}
最后，请注意用户从菜单系统中选择后运行的命令是如何定义的。在大多数情况下，我们只是调用同一个程序并传递一个确定所选菜单项的参数。每个菜单项可以调用不同的程序（如果您愿意）。还请注意，与被选中菜单项关联的全局宏如何在运行的程序中被访问。当该项被选中时，全局宏将包含 1。否则，则为零。我们的程序只需检查全局宏的内容即可查看该项是否被选中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <window_menu.sthlp>}