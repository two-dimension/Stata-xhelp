{smcl}
{* *! version 1.0.17  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] Dialog programming" "help dialog_programming_zh"}{...}
{viewerjumpto "Description" "dialog_undocumented_zh##description"}{...}
{viewerjumpto "Remarks" "dialog_undocumented_zh##remarks"}
{help dialog_undocumented:English Version}
{hline}{...}
{title:标题}

{p2colset 5 31 33 2}{...}
{p2col:{hi:[P] Dialog programming} {hline 2}}对话框编程{p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
对话框程序（也称为对话资源文件）允许您定义对话框的外观，指定用户填写时控件的工作方式（例如隐藏或禁用特定控件），并指定在用户点击 {hi:OK} 或 {hi:Submit} 时要采取的最终操作（例如运行 Stata 命令）。以下是对话框程序的未记录特性。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help dialog_undocumented##remarks1:1. 控件}
	  {help dialog_undocumented##remarks1.1:1.1 TREEVIEW 树输入控件}
          {help dialog_undocumented##remarks1.2:1.2 EXP 表达式输入控件}
	  {help dialog_undocumented##remarks1.3:1.3 在 COMBOBOX 列表输入控件中显示系统字体}

	{help dialog_undocumented##remarks2:2. 对话框的内置成员函数}

	{help dialog_undocumented##remarks3:3. 对话框的内置成员函数}

	{help dialog_undocumented##remarks4:4. 属性}

	{help dialog_undocumented##remarks5:5. 工具}


{marker remarks1}{...}
{title:1. 控件}


{marker remarks1.1}{...}
{title:1.1 TREEVIEW 树输入控件}

{pstd}
TREEVIEW 的完整文档可以在 {manhelp dialog_programming P:对话框编程} 中找到；请参见 {help dialog_programming##remarks3.6.17:3.6.17 TREEVIEW 树输入控件}。


    {title:语法}

{p 8 19 2}
{cmd:TREEVIEW} {it:newcontrolname} {it:x} {it:y} {it:xsize} {it:ysize}
[{cmd:,}
    {opt l:abel}{cmd:("}{it:string}{cmd:")} {opt e:rror}{cmd:("}{it:string}{cmd:")}
    {opt nomem:ory} {opt cont:ents(conspec)} {opt val:ues(listname)}
    {opt default(defstrval)}
    {opt ondblclick(iaction)}
    [{opt onselchange(iaction)}|{opt onselchangelist(listname)}]
    {opt op:tion(optionname)}
    {cmd:tooltip("}{it:string}{cmd:")}]


    {title:未记录选项}

{phang}
{opt idx_to_parent} 指定列表规范中的整数部分具有新含义。第一个部分用方括号括起一个非负整数，以表示节点之间的关系。{cmd:0} 表示该项目是树的根。其他非零整数表示该项目是另一个节点的子项。例如，{it:k} 表示该项目是内容列表中第 {it:k} 个元素的子节点。方括号后的第二部分是显示在树中的内容。


    {title:示例}

    LIST ourcontentlist
        BEGIN
            [0]根 1
            [1]子项目 A
            [2]子项目 A1
            [2]子项目 A2
            [1]子项目 B
            [0]根 2
            [6]子项目 C
        END
    . . .
    DIALOG . . .
        BEGIN
            . . .
            TEXT     ourlab    10  10  200   ., label("选择一个项目")
            TREEVIEW ourtree   @   +20 150 200, contents(ourcontentlist)
            . . .
        END

{phang}
默认情况下，节点按其深度指定。


{marker remarks1.2}{...}
{title:1.2 EXP 表达式输入控件}

{pstd}
EXP 的完整文档可以在 {manhelp dialog_programming P:对话框编程} 中找到；请参见 {help dialog_programming##remarks3.6.15:3.6.15 EXP 表达式输入控件}。


    {title:语法}

{p 8 14 2}
EXP  {it:newcontrolname} {it:x} {it:y} {it:xsize} {it:ysize}
     [{cmd:,} {opt l:abel}("{it:string}") {opt e:rror}("{it:string}")
     {opt default(defstrval)} {opt nomem:ory}
     {opt onchange(iaction)} {opt op:tion(optionname)}
     {cmd:tooltip("}{it:string}{cmd:")}]


    {title:未记录选项}

{phang}
{opt matrixonly} 指定仅在表达式构建器中显示估计结果矩阵、返回结果矩阵、用户定义的矩阵和矩阵函数树视图类别。

{phang}
{opt simple} 指定仅在表达式构建器中显示函数、系数、估计结果、返回结果、宏和标量树视图类别。

{phang}
{opt parameter} 将类别参数添加到表达式构建器中显示的树视图类别中。


{marker remarks1.3}{...}
{title:1.3 在 COMBOBOX 列表输入控件中显示系统字体}

{pstd}
当内容列表初始化为 {cmd:fonts} 时，组合框将包含当前操作系统所有可用字体。

{p 8 14 2}
COMBOBOX {it:newcontrolname} {it:x} {it:y} {it:xsize} {it:ysize}{cmd:,} {opt cont:ents}({cmd:fonts}){cmd:}

{phang}
COMBOBOX 的完整文档可以在 {manhelp dialog_programming P:对话框编程} 中找到；请参见 {help dialog_programming##remarks3.6.8:3.6.8 COMBOBOX 列表输入控件}。


    {title:COMBOBOX 列表输入控件的未记录成员函数}

{phang}
{cmd:.loadfontstyles}{break} 
	使得 COMBOBOX 控件加载从使用 {cmd:fonts} 作为其内容列表的 COMBOBOX 控件中选择的特定字体的所有可用字体样式。要显示字体样式，您必须拥有两个 COMBOBOX 控件。第一个组合框使用 {cmd:fonts} 指定的内容列表加载操作系统字体；第二个组合框使用 {cmd:.loadfontstyles} 将所选字体的样式加载到其自己的内容列表中。


    {title:示例}
    
    DIALOG sample
        BEGIN
            . . .
            COMBOBOX	cb_font    10  10  150   110, contents(fonts) 	///
			label("字体") onselchange(program style_change)
            COMBOBOX 	cb_style   180 @   150 	 110, label("样式")	///
			contents(font_style_list)
            . . .
        END

    LIST font_style_list
        BEGIN
	    常规
	    粗体
	    斜体
	    粗斜体
        END
    . . .
    PROGRAM style_change
        BEGIN
            . . .
	    call sample.cb_font.withvalue sample.cb_style.loadfontstyles "@"
            . . .
        END	
	
	
{marker remarks2}{...}
{title:2. 对话框的内置成员函数}

{pstd}
下面的内置函数在对话资源上操作，亦称为对话框。

{pstd}
内置函数如下：

{phang}
{cmd:.Submit}{break}
	使对话框提交其当前命令字符串到 Stata。这等同于点击对话框中的 {hi:Submit} 按钮。

{phang}
{cmd:.GetSubmit}{break}
	使对话框处理与 {hi:Submit} 按钮相关联的 u-action，并显示命令字符串的内容。或者，可以提供先前声明的 {cmd:STRING} 属性的名称，以接收命令字符串的内容。
	
{phang}
{cmd:.Ok}{break}
	使对话框提交其当前命令字符串到 Stata 并关闭。这等同于点击对话框中的 {hi:Ok} 按钮。  

{phang}
{cmd:.Reset}{break}
	使对话框重置。这等同于点击对话框中的 {hi:(R)} 按钮。
	
{phang}
{cmd:.Cancel}{break}
	使对话框关闭。这等同于点击对话框中的 {hi:Cancel} 按钮。
	
{phang}
{cmd:.Execute} {it:executionstring}{break}
	使对话框执行由 {it:executionstring} 指定的某项任务。通常，这是在对话框中定义的 {cmd:script} 或 {cmd:program}。
	
{p 8 8 2}
	{hi:示例:}
	
{p 12 12 2}	
	{it:dlgresource}{cmd:.Execute "program main_hide_controls"}

{phang}
{cmd:.SaveState}{break}
	使对话框保存其当前状态。当点击对话框中的 {hi:Submit} 或 {hi:OK} 按钮时，这会自动发生。 


{marker remarks3}{...}
{title:3. 对话的内置成员函数}

{pstd}
下面的内置函数在对话上操作，亦称为对话选项卡。

{pstd}
内置函数如下：

{phang}
{cmd:.setactive}{break}
	使选项卡变为活动。这等同于点击与对话选项卡相关的按钮。

	
{marker remarks4}{...}
{title:4. 属性}

{pstd}
{opt SVECTOR} 是一个向量属性，可以存储最多 1000 个字符串值。

{phang}
成员函数：

{p2colset 8 32 34 2}{...}
{p2col :type}成员函数{p_end}
{p2line}
{p2col :{opt SVECTOR}}{it:propertyname}{opt .dropall}{p_end}
{p2col :}{it:propertyname}{opt .copyFromArray} {it:classArrayName}{p_end}
{p2col :}{it:propertyname}{opt .copyToArray} {it:classArrayName}{p_end}
{p2col :}{it:propertyname}{opt .copyToString} {it:stringPropertyName}{p_end}
{p2col :}{it:propertyname}{opt .findstr} {it:{help dialogs##specialdefs.:strvalue}}{p_end}
{p2col :}{it:propertyname}{opt .store} {it:#} {it:{help dialogs##specialdefs.:strvalue}}{p_end}
{p2col :}{it:propertyname}{opt .swap} {it:#} {it:#}{p_end}
{p2line}
{p 7 14 2}注意：{it:propertyname}{opt .findstr} 将 {opt position} 数据 
成员设置为第一个匹配的 {it:{help dialogs##specialdefs.:strvalue}} 的索引， 
如果未找到 {it:{help dialogs##specialdefs.:strvalue}} ，则为 0。 
{p2colreset}{...}


{marker remarks5}{...}
{title:5. 工具}

{phang}
{cmd:_dialog discard [{it:objectname}]}{break}
	使指定的 {it:dlgname} 对话框及其所有类系统对象被销毁。如果未指定 {it:dlgname}，则将销毁所有对话框及其类系统对象。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dialog_undocumented.sthlp>}