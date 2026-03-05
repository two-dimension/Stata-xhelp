{smcl}
{* *! version 1.5.3  05oct2018}{...}
{vieweralsosee "[P] 对话框编程" "mansection P Dialogprogramming"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] 窗口编程" "help window programming"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] db" "help db_zh"}{...}
{viewerjumpto "描述" "dialog_programming_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "dialog_programming_zh##linkspdf"}{...}
{viewerjumpto "备注" "dialog_programming_zh##remarks"}
{help dialog_programming:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[P] 对话框编程} {hline 2}}对话框编程
{p_end}
{p2col:}({mansection P Dialogprogramming:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
对话框程序 -- 也称为对话资源文件 -- 允许您定义对话框的外观，指定用户填写时控件的工作方式（例如，隐藏或禁用特定控件），并在用户点击 {hi:OK} 或 {hi:提交} 时指定要执行的最终操作（例如，运行 Stata 命令）。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P DialogprogrammingRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注按照以下标题呈现：

        {help dialogs##intro:1. 介绍}

        {help dialogs##remarks2:2. 概念}
        {help dialogs##remarks2.1:2.1 .dlg 文件的组织}
        {help dialogs##remarks2.2:2.2 位置、大小和 DEFINE 命令}
        {help dialogs##remarks2.3:2.3 默认值}
        {help dialogs##remarks2.4:2.4 内存（回忆）}
        {help dialogs##remarks2.5:2.5 I-actions 和成员函数}
        {help dialogs##remarks2.6:2.6 U-actions 和通信选项}
        {help dialogs##remarks2.7:2.7 I-actions 和 U-actions 之间的区别}
        {help dialogs##remarks2.8:2.8 错误和一致性检查}

        {help dialogs##remarks3:3. 命令}
        {help dialogs##remarks3.1:3.1 VERSION}
        {help dialogs##remarks3.2:3.2 INCLUDE}
        {help dialogs##remarks3.3:3.3 DEFINE}
        {help dialogs##remarks3.4:3.4 POSITION}
        {help dialogs##remarks3.5:3.5 LIST}
        {help dialogs##remarks3.6:3.6 DIALOG}
        {help dialogs##remarks3.6.1:3.6.1 CHECKBOX 开/关输入控件}
        {help dialogs##remarks3.6.2:3.6.2 RADIO 开/关输入控件}
        {help dialogs##remarks3.6.3:3.6.3 SPINNER 数字输入控件}
        {help dialogs##remarks3.6.4:3.6.4 EDIT 字符串输入控件}
        {help dialogs##remarks3.6.5:3.6.5 VARLIST 和 VARNAME 字符串输入控件}
        {help dialogs##remarks3.6.6:3.6.6 FILE 字符串输入控件}
        {help dialogs##remarks3.6.7:3.6.7 LISTBOX 列表输入控件}
        {help dialogs##remarks3.6.8:3.6.8 COMBOBOX 列表输入控件}
        {help dialogs##remarks3.6.9:3.6.9 BUTTON 特殊输入控件}
        {help dialogs##remarks3.6.10:3.6.10 TEXT 静态控件}
        {help dialogs##remarks3.6.11:3.6.11 TEXTBOX 静态控件}
        {help dialogs##remarks3.6.12:3.6.12 GROUPBOX 静态控件}
        {help dialogs##remarks3.6.13:3.6.13 FRAME 静态控件}
        {help dialogs##remarks3.6.14:3.6.14 COLOR 输入控件}
        {help dialogs##remarks3.6.15:3.6.15 EXP 表达式输入控件}
        {help dialogs##remarks3.6.16:3.6.16 HLINK 超链接输入控件}
        {help dialogs##remarks3.6.17:3.6.17 TREEVIEW 树输入控件}
        {help dialogs##remarks3.7:3.7 OK、SUBMIT、CANCEL 和 COPY u-action 按钮}
        {help dialogs##remarks3.8:3.8 HELP 和 RESET 辅助按钮}
        {help dialogs##remarks3.9:3.9 特殊对话框指令}

        {help dialogs##remarks4:4. SCRIPT}

        {help dialogs##remarks5:5. PROGRAM}
        {help dialogs##remarks5.1:5.1 概念}
        {help dialogs##remarks5.1.1:5.1.1 Vnames}
        {help dialogs##remarks5.1.2:5.1.2 Enames}
        {help dialogs##remarks5.1.3:5.1.3 rstrings: cmdstring 和 optstring}
        {help dialogs##remarks5.1.4:5.1.4 向 rstring 添加内容}
        {help dialogs##remarks5.2:5.2 流程控制命令}
        {help dialogs##remarks5.2.1:5.2.1 if}
        {help dialogs##remarks5.2.2:5.2.2 while}
        {help dialogs##remarks5.2.3:5.2.3 call}
        {help dialogs##remarks5.2.4:5.2.4 exit}
        {help dialogs##remarks5.2.5:5.2.5 close}
        {help dialogs##remarks5.3:5.3 错误检查和演示命令}
        {help dialogs##remarks5.3.1:5.3.1 require}
        {help dialogs##remarks5.3.2:5.3.2 stopbox}
        {help dialogs##remarks5.4:5.4 命令构造命令}
        {help dialogs##remarks5.4.1:5.4.1 by}
        {help dialogs##remarks5.4.2:5.4.2 bysort}
        {help dialogs##remarks5.4.3:5.4.3 put}
        {help dialogs##remarks5.4.4:5.4.4 varlist}
        {help dialogs##remarks5.4.5:5.4.5 ifexp}
        {help dialogs##remarks5.4.6:5.4.6 inrange}
        {help dialogs##remarks5.4.7:5.4.7 weight}
        {help dialogs##remarks5.4.8:5.4.8 beginoptions 和 endoptions}
        {help dialogs##remarks5.4.8.1:5.4.8.1 option}
        {help dialogs##remarks5.4.8.2:5.4.8.2 optionarg}
        {help dialogs##remarks5.5:5.5 命令执行命令}
        {help dialogs##remarks5.5.1:5.5.1 stata}
        {help dialogs##remarks5.5.2:5.5.2 clear}
        {help dialogs##remarks5.6:5.6 特殊脚本和程序}

        {help dialogs##remarks6.:6. 属性}
       
        {help dialogs##remarks7.:7. 子对话框}
        {help dialogs##remarks7.1:7.1 引用父对话框}
        
        {help dialogs##remarks8.:8. 示例}

        {help dialogs##AppendixA:附录 A: 行话}
        {help dialogs##AppendixB:附录 B: 对话框的类定义}
        {help dialogs##AppendixC:附录 C: 对话框的接口指南}

        {help dialogs##faqs:常见问题}


{marker intro}{...}
{title:1. 介绍}

{pstd}
在编程层面上，对话框的目的是生成一个 Stata 要执行的命令。期望在此过程中为用户提供一个直观且一致的体验 -- 这是您作为对话框程序员的责任 -- 但最终的输出将是

       {cmd:list mpg weight} 或
       {cmd:regress mpg weight if foreign} 或
       {cmd:append using myfile}

{pstd}
或任何其他适当的 Stata 命令。对话框仅限于执行一个 Stata 命令，但这并不限制您可以用它们做的事情，因为该 Stata 命令可以是一个 ado 文件。 （实际上，还有另一种绕过单命令限制的方法，我们将在 {it:{help dialogs##remarks5.1.3:5.1.3 rstrings: cmdstring 和 optstring}} 中讨论。）

{pstd}
这个最终结果被称为对话框的 u-action。

{pstd}
对话框的 u-action 由您编写的代码决定，这段代码称为对话代码，您将其存储在一个 {cmd:.dlg} 文件中。 {cmd:.dlg} 文件的名称很重要，因为它决定了对话框的名称。当用户键入

       {cmd:. db regress}

{pstd}
时，{cmd:regress.dlg} 将被执行。Stata 通过沿 ado 路径查找文件的方式来找到该文件；请参见 {manhelp sysdir P}。 {cmd:regress.dlg} 运行回归命令，因为 {cmd:regress.dlg} 文件内存在的对话代码。 如果代码书写得不同，{cmd:regress.dlg} 也可以执行 {cmd:probit} 命令或甚至 {cmd:merge} 命令。

{pstd}
{cmd:.dlg} 文件描述了

{p 8 11 2}
1. 对话框的外观；

{p 8 11 2}
2. 对话框的输入控件如何相互作用；以及

{p 8 11 2}
3. 如何根据用户输入构建 u-action。

{pstd}
项目 1 和 2 决定用户认为对话框多么直观和一致。项目 3 决定对话框的行为。项目 2 决定某些字段是否被禁用或隐藏，以至于在用户点击某个内容、选中某个内容或填写某个结果之前，意外地填写这些字段。


{marker remarks2}{...}
{title:2. 概念}

{pstd}
对话框由许多称为控件的元素组成，包括静态文本、编辑字段和复选框。输入控件是用户填写的控件，例如复选框和文本输入字段。静态控件是固定文本和出现在对话框中的线，用户不能更改这些内容。有关各种类型控件以及其他相关术语的定义，请参见下面的 {it:{help dialogs##AppendixA:附录 A}}。

{pstd}
在我们使用的行话中，对话框由对话框组成，而对话框由控件组成。当对话框包含多个对话框时，只有一个对话框会同时显示。在这里，通过小标签访问这些对话框。单击与对话框关联的标签使该对话框处于活动状态。

{pstd}
对话框中可能包含辅助按钮 {hi:Help}（显示为带问号的小按钮）和 {hi:Reset}（显示为带 {hi:R} 的小按钮）。这些按钮出现在对话框中，而不是单个对话。因此，在多个对话框的对话框中，无论选择了哪个对话（标签），它们都会显示。

{pstd}
{hi:Help} 辅助按钮显示与对话框关联的帮助文件。

{pstd}
{hi:Reset} 辅助按钮将对话框重置为其初始状态。每次用户调用特定的对话框时，它将记住最后设置控件的值。重置按钮允许用户恢复对话框中所有控件的默认值。

{pstd}
对话框也可能包含 u-action 按钮 {hi:OK}、{hi:Submit}、{hi:Copy} 和 {hi:Cancel}。与辅助按钮一样，u-action 按钮出现在对话框中，而不是单个对话。因此，在多个对话框的对话框中，它们都会显示，无论选择了哪个对话（标签）。

{pstd}
{hi:OK} u-action 按钮构建 u-action，将其发送给 Stata 执行并关闭对话框。

{pstd}
{hi:Submit} u-action 按钮构建 u-action，将其发送给 Stata 执行并保持对话框打开。

{pstd}
{hi:Copy} u-action 按钮构建 u-action，将其发送到剪贴板并保持对话框打开。

{pstd}
{hi:Cancel} u-action 按钮在不构建 u-action 的情况下关闭对话框。

{pstd}
对话框不必包含所有这些 u-action 按钮，但至少需要一个。

{pstd}
因此，结构如下：

	对话框，包含
	   对话 1，包含
	      输入控件和静态控件
 	   对话 2，可能是可选的，若已定义，则包含
	      输入控件和静态控件
	   [.  .  .]
           辅助按钮，可能是可选的，若已定义，则包含
             [{hi:Help} 按钮]
             [{hi:Reset} 按钮]
           U-action 按钮，包含
             [{hi:OK} 按钮]
             [{hi:Submit} 按钮]
             [{hi:Copy} 按钮]
             [{hi:Cancel} 按钮]

{pstd}
换句话说，

{p 8 11 2}
1. 对话框必须至少有一个对话，必须有一组 u-action 按钮，并且可以有辅助按钮；

{p 8 11 2}
2. 对话必须至少有一个控件，可以有多个控件；以及

{p 8 11 2}
3. u-action 按钮可以包括任何 {hi:OK}、{hi:Submit}、{hi:Copy} 和
{hi:Cancel}，并且必须至少包括其中一个。


{pstd}
这里是一个简单的 {cmd:.dlg} 文件，它将执行 {help kappa_zh} 命令，
尽管它不允许 {cmd:if} {it:exp} 和 {cmd:in} {it:range}：

    {hline 10} BEGIN {hline 10} mykappa.dlg {hline 33}

    // ----------------- 设置版本号并定义框的大小 ---------
    VERSION {ccl stata_version}
    POSITION . . 290 200

    // ------------------------------------------- 定义一个对话框 ---------
    DIALOG main, label("kappa - 评分者间一致性") 
    BEGIN
            TEXT    tx_var 10  10 270 ., label("频率变量:")
            VARLIST vl_var  @ +20   @ ., label("频率")
    END

    // -------------------- 定义 u-action 和辅助按钮 ---------
    OK     ok1, label("确定")
    CANCEL can1, label("取消")
    SUBMIT sub1, label("提交")
    COPY   copy1,
    HELP   hlp1, view("help kappa")
    RESET  res1

    // --------------------------- 定义如何组装 u-action ---------
    PROGRAM command
    BEGIN
            put "kappa " 
            varlist main.vl_var
    END
    {hline 10} END {hline 10} mykappa.dlg {hline 35}


{marker remarks2.1}{...}
{title:2.1 .dlg 文件的组织}

{pstd}
一个 {cmd:.dlg} 文件由七个部分组成，其中某些部分是可选的：

    {hline 10} BEGIN {hline 10} {it:dialogboxname}.dlg{hline 28}
    VERSION {ccl stata_version}            {it:第 1 部分: 版本号}
    POSITION . . .          {it:第 2 部分: 设置对话框的大小}
    DEFINE . . .            {it:第 3 部分，可选: 公共定义}
    LIST . . . 
    DIALOG . . .            {it:第 4 部分: 对话定义}
        BEGIN                   
            FILE . . .      {it:        . . . 包含输入控件}
            BUTTON . . . 
            CHECKBOX . . .
            COMBOBOX . . .
            EDIT . . .
            LISTBOX . . .
            RADIO . . .
            SPINNER . . .
            VARLIST . . .
            VARNAME . . .
    
            FRAME . . .     {it:        . . . 和静态控件}
            GROUPBOX . . . 
            TEXT . . .
        END
            {it:repeat} {it:DIALOG}. . . {it:BEGIN}. . . {it:END}

    SCRIPT . . .            {it:第 5 部分，可选: i-action 定义}
        BEGIN               {it:        . . . 通常以脚本形式完成}
            . . .
        END
    PROGRAM . . .           {it:        . . . 但有时以程序形式完成}
        BEGIN
            . . .
        END
    
    OK . . .                {it:第 6 部分: u-action 和辅助按钮定义}
    CANCEL . . . 
    SUBMIT . . .
    HELP . . .
    RESET . . .
    
    PROGRAM command         {it:第 7 部分: u-action 定义}
        BEGIN
            . . .
        END
    {hline 10} END {hline 10} {it:dialogboxname}.dlg{hline 28}

{pstd}
{hi:VERSION} 语句必须出现在顶部；其他部分可以以任意顺序出现。

{pstd}
{it:I-actions}，在 {it:第 5 部分} 中提到，是中间操作，例如隐藏或显示、禁用或启用控件，或打开查看器以显示内容等，同时保持对话框打开并等待用户填写更多内容或按 u-action 按钮。


{marker remarks2.2}{...}
{title:2.2 位置、大小和 DEFINE 命令}

{pstd}
部分指定对话框外观的一部分是定义元素的位置和大小。

{pstd}
位置由一对数字 {it:x} 和 {it:y} 指示。它们的测量单位是像素，解释为从左上角测量：{it:x} 是向右的距离，{it:y} 是向下的距离。

{pstd}
大小同样由一对数字 {it:xsize} 和 {it:ysize} 指示。它们也是以像素为单位进行测量，表示从对象的左上角开始的大小。

{pstd}
任何需要位置或大小的命令始终会取四个数字 -- 位置和大小 -- 您必须指定所有四个。除了每个元素被允许为一个数字外，还允许一些额外代码。位置或大小元素的定义如下：

{p2colset 9 17 17 0}{...}
{p2col :{it:#}}任何非负整数，例如 0、1、10、200 等等。{p_end}

{p2col :{it:.}}（小数点）表示该位置或大小元素的上下文特定默认值。仅 {cmd:.} 被允许用于控件的高度（高度是从上到下测量的）以及对话框的初始位置。{p_end}

{p2col :{cmd:@}}意味着此位置或大小元素的前一个值。如果 {cmd:@} 用于 {it:x} 或 {it:y}，则将使用前一个命令中的 {it:x} 或 {it:y}。如果 {cmd:@} 被用于 {it:xsize} 或 {it:ysize}，则将使用上一个 {it:xsize} 或 {it:ysize} 的值。{p_end}

{p2col :{cmd:+}{it:#}}表示从上一个值的正偏移（意味着向右或向下或变大）。如果 {cmd:+10} 用于 {it:x}，结果将在前一个位置的右侧 10 像素。如果 {cmd:+10} 用于 {it:ysize}，则表示变高 10 像素。{p_end}

{p2col :{cmd:-}{it:#}}表示从上一个值的负偏移（意味着向左或向上或变小）。如果 {cmd:-10} 用于 {it:y}，结果将在前一个位置的上方 10 像素。如果 {cmd:-10} 被用于 {it:xsize}，则表示变窄 10 像素。{p_end}

{p2col :{it:name}}表示由 {hi:DEFINE} 命令最后记录的 {it:name} 的值。{p_end}
{p2colreset}{...}

{pstd}
{cmd:DEFINE} 命令的语法为：

        {bind:DEFINE {it:name} { {cmd:.}|{it:#}|{cmd:+}{it:#}|{cmd:-}{it:#}|{cmd:@x}|{cmd:@y}|{opt @xs:ize}|{opt @ys:ize} }}

{pstd}
并且可以在对话代码的任何位置出现，甚至可以出现在 {hi:BEGIN}/{hi:END} 的 {hi:DIALOG} 内。任何需要指定位置或大小元素的地方，都可以使用 {it:name}，由 {hi:DEFINE} 定义。

{pstd}
定义 {it:name} 的前四种可能性具有明显的含义：{cmd:.} 意思是默认值，{it:#} 意思是指定的数字，{cmd:+}{it:#} 意思是正偏移，而 {cmd:-}{it:#} 意思是负偏移。其他四种可能性 -- {cmd:@x}、{cmd:@y}、{cmd:@xsize} 和 {cmd:@ysize} -- 是指在发出 {cmd:DEFINE} 命令的时刻，先前 {it:x}、{it:y}、{it:xsize} 和 {it:ysize} 的值，而不是在使用 {it:name} 时的值。


{marker remarks2.3}{...}
{title:2.3 默认值}

{pstd}
您还可以使用初始或默认值填充输入控件。例如，作为默认值，您可能希望一个复选框被选中，而另一个未选中，并且希望一个编辑字段填充为“默认标题”。

{pstd}
用于创建复选框的 {hi:CHECKBOX} 命令的语法为：

        {bind:{hi:CHECKBOX} . . . [{cmd:,} . . .  {opt default(defnumval)} . . .]}

{pstd}
在复选框中，{opt default()} 选项指定复选框初始应该被填充的状态，1 表示选中，0 表示未选中。

{pstd}
创建编辑字段的 {hi:EDIT} 命令的语法为：

        {bind:{cmd:EDIT} . . . [{cmd:,} . . . {opt default(defstrval)} . . .]}

{pstd}
在编辑字段中，{opt default()} 指定该框初始将包含的内容。

{pstd}
在语法图中每当出现 {it:defnumval}，您可以输入 

{p2colset 5 34 36 2}{...}
{p2col :{it:defnumval}}定义{p_end}
{p2line}
{p2col :{it:#}}意思是指定的数字{p_end}
{p2col :{opt literal} {it:#}}同 {it:#}{p_end}
{p2col :{opt c(name)}}{it:name}的值；见 {manhelp creturn P}{p_end}
{p2col :{opt r(name)}}值为{opt r(name)};见 {manhelp return P}{p_end}
{p2col :{opt e(name)}}值为{opt e(name)};见 {manhelp ereturn P}{p_end}
{p2col :{opt s(name)}}值为{opt s(name)};见 {manhelp return P}{p_end}
{p2col :{cmd:global} {it:name}}值为全局宏 {cmd:$}{it:name}{p_end}
{p2line}
{p2colreset}{...}

{pstd}
在语法图中每当出现 {it:defstrval}，您可以输入 

{p2colset 5 34 36 2}{...}
{p2col :{it:defstrval}}定义{p_end}
{p2line}
{p2col :{it:string}}意思是指定的字符串{p_end}
{p2col :{cmd:literal} {it:string}}同 {it:string}{p_end}
{p2col :{opt c(name)}}{it:name}的内容；见 {manhelp creturn P}{p_end}
{p2col :{opt r(name)}}{it:name}的内容；见 {manhelp return P}{p_end}
{p2col :{opt e(name)}}{it:name}的内容；见 {manhelp ereturn P}{p_end}
{p2col :{opt s(name)}}{it:name}的内容；见 {manhelp return P}{p_end}
{p2col :{cmd:char} {it:varname}{cmd:[}{it:charname}{cmd:]}特征的值；见
    {manhelp char P}{p_end}
{p2col :{cmd:global} {it:name}}全局宏 {cmd:$}{it:name}的内容{p_end}
{p2line}
{p 4 6 2}注意：如果 {it:string} 用双引号（简单或复合）括起来，第一组引号将被去掉。{p_end}
{p2colreset}{...}

{pstd}
列表和组合框向用户提供一个从中选择的项目列表。在对话框术语中，列表框不会有初始或默认值，而是说这些框已填充。创建列表框输入控件的语法为：

        {bind:{cmd:LISTBOX} . . . [{cmd:,} . . . {opt contents(conspec)} . . .]}

{pstd}
在语法图中，任何出现 {it:conspec} 的地方，可输入 

{phang}
{cmd:list} {it:listname}{break}
该框根据您单独创建的指定列表填充。使用 {cmd:LIST} 命令。 {cmd:LIST} 的语法如下：

            {cmd:LIST}
                {cmd:BEGIN}
                    {it:要出现的项目}
                    {it:要出现的项目}
                    . . . 
                {cmd:END}

{phang}
{opt mat:rix}{break}
填充该框中 Stata 中当前定义的所有矩阵的名称。

{phang}
{opt vec:tor}{break}
填充该框中 Stata 中当前定义的所有 1 {it:x} {it:k} 和 {it:k} {it:x} 1 矩阵的名称。

{phang}
{cmd:row}{break}
填充该框中 Stata 中当前定义的所有 1 {it:x} {it:k} 矩阵的名称。

{phang}
{opt col:umn}{break}
填充该框中 Stata 中当前定义的所有 {it:k} {it:x} 1 矩阵的名称。

{phang}
{opt sq:uare}{break}
填充该框中 Stata 中当前定义的所有 {it:k} {it:x} {it:k} 矩阵的名称。

{phang}
{opt sca:lar}{break}
填充该框中 Stata 中当前定义的所有标量的名称。

{phang}
{opt constr:aint}{break}
填充该框中 Stata 中当前定义的所有约束的名称。

{phang}
{opt est:imates}{break}
填充该框中 Stata 中当前定义的所有保存的估计的名称。

{phang}
{cmd:char} {it:varname}{cmd:[}{it:charname}{cmd:]}填充该框中 {bind:{it:varname}{cmd:[}{it:charname}{cmd:]}} 的特征元素，按空格解析。

{phang}
{opt e(name)}{break}
填充该框中 {opt e(name)} 的元素，按空格解析。

{phang}
{opt glo:bal}{break}
填充该框中 Stata 中当前定义的所有全局宏的名称。

{phang}
{opt valuelab:els}{break}
填充该框中 Stata 中当前定义的所有值标签的名称。

{pstd}
用于 Stata 图形的预定义列表：

{p2colset 9 32 34 2}{...}
{p2col :预定义列表}定义{p_end}
{p2line}
{p2col :{opt symbols}}标记符号的列表{p_end}
{p2col :{opt symbolsizes}}标记符号大小的列表{p_end}
{p2col :{opt colors}}颜色列表{p_end}
{p2col :{opt intensity}}填充强度的列表{p_end}
{p2col :{opt clockpos}}时钟位置的列表{p_end}
{p2col :{opt linepatterns}}线条样式的列表{p_end}
{p2col :{opt linewidths}}线条宽度的列表{p_end}
{p2col :{opt connecttypes}}连接线类型的列表{p_end}
{p2col :{opt textsizes}}文本大小的列表{p_end}
{p2col :{opt justification}}水平文本对齐的列表{p_end}
{p2col :{opt alignment}}垂直文本对齐的列表{p_end}
{p2col :{opt margin}}边距列表{p_end}
{p2col :{opt tickpos}}轴刻度位置的列表{p_end}
{p2col :{opt angles}}角度的列表；通常用于轴标签{p_end}
{p2col :{opt compass}}方位的列表{p_end}
{p2col :{opt yesno}}包含 Default、Yes 和 No 的列表；通常伴随用户定义的 {it:values} 列表{p_end}
{p2line}
{p2colreset}{...}


{marker remarks2.4}{...}
{title:2.4 内存（回忆）}

{pstd}
所有输入控件命令都有一个 {opt default()} 或 {opt contents()} 选项，用于指定控件应该如何填充，例如，

        {bind:{hi:CHECKBOX} . . . [{cmd:,} . . .  {opt default(defnumval)} . . .]}

{pstd}
在此命令中，如果 {it:defnumval} 的值为 0，则复选框最初未选中；否则，它会被选中。如果未指定 {opt default()}，则复选框最初未选中。

{pstd}
对话框在会话期间记住如何最后填充它们，因此下次用户调用包含此 {hi:CHECKBOX} 命令的对话框时，将忽略 {opt default()} 选项，复选框将保持用户最后离开的状态。也就是说，设置将被记住，除非您指定输入控件的 {opt nomemory} 选项。

        {bind:{hi:CHECKBOX} . . . [{cmd:,} . . . {opt default(defnumval)} {cmd:nomemory} . . .]}

{pstd}
{opt nomemory} 指定对话框管理器在调用之间不记住控件的填充值；无论该默认值是显式指定还是隐含指定，它将始终重置为默认值。

{pstd}
无论您是否指定 {opt nomemory}，显式或隐含的默认值也将在用户按下 {hi:Reset} 辅助按钮时恢复。

{pstd}
对话框的内容仅在会话期间被记住，而不是跨会话记忆。在会话内部，{help discard_zh} 命令使 Stata 忘记所有对话框的内容。

{pstd}
初始化和内存的问题实际上比最初看起来的要复杂。考虑一个列表框。列表框可能会填充当前保存的估计。如果包含此列表框的对话框关闭并重新打开，则可用的估计可能已更改。因此，列表框始终根据给定的指令重新填充。尽管如此，列表框会记住所做的选择。如果该选择仍在可能的选择范围内，则选择将是所选择的，除非指定了 {opt nomemory}；否则，选择将恢复为默认值 -- 在备选项中第一个选择。

{pstd}
组合框也会出现相同的问题，因此某些控件具有 {opt default()} 选项而另一些控件具有 {opt contents()}。{opt default()} 使用一次，再之后将使用内存（除非指定 {cmd:nomemory}）。而 {opt contents()} 始终使用 -- 无论 {cmd:nomemory} 是否使用，但做出的选择会被记住（除非指定 {cmd:nomemory}）。

{marker remarks2.5}{...}
{title:2.5 I-actions 和成员函数}

{pstd}
I-actions -- 中间操作 -- 指生成 u-action 时采取的所有操作。一个 i-action 可能会在其他控件被选中或未选中时禁用或隐藏控件，尽管还有许多其他可能性。 I-actions 总是可选的。

{pstd}
通过 {opt on}{it:*}{cmd:()} 选项调用 i-actions -- 这些以 {opt on} 开头的字母开头。例如，{hi:CHECKBOX} 命令 -- 定义复选框控件的命令 -- 的语法为：

    {bind:{hi:CHECKBOX} {it:controlname} . . . [{cmd:,} . . . {opt onclickon(iaction)} {opt onclickoff(iaction)} . . .]}

{pstd}
{opt onclickon()} 是选中复选框时要采取的 i-action，{opt onclickoff()} 是复选框未选中时的 i-action。您无需填写 {opt onclickon()} 和 {opt onclickoff()} 选项 -- 复选框将正常工作，无需任何 i-actions -- 但如果您希望在选中此控件时禁用或启用其他控件，您可以填写它们。例如，您可以编码：

    {bind:{cmd:CHECKBOX sw2} . . . {cmd:, onclickon(d2.sw3.show) onclickoff(d2.sw3.hide)} . . .}

{pstd}
{opt d2.sw3} 指的是对话框 {opt d2} 中名为 {opt sw3} 的控件（例如，我们刚定义的控件名为 {opt sw2}）。{opt hide} 和 {opt show} 被称为成员函数。{opt hide} 是隐藏控件的成员函数，而 {opt show} 是其逆操作。控件还有其他成员函数可用；哪些成员函数可用在创建特定控件的命令中记录。

{pstd}
许多命令具有 {opt on}{it:*}{cmd:()} 选项，允许您指定 i-actions。当 {it:iaction} 出现在语法图中时，您可以指定

{phang}
{cmd:.}（小数点）{break}
什么都不做；不采取任何操作。如果您没有指定 {opt on}{it:*}{opt ()} 选项，则这是默认值。

{phang}
{bind:{cmd:gaction} {it:dialogname}{cmd:.}{it:controlname}{cmd:.}{it:memberfunction}} {cmd:[}{it:arguments}{cmd:]}{break}
在指定的控件上执行指定的 {it:memberfunction}，其中 {it:memberfunction} 可能是

{pmore}
{bind:{{cmd:hide}|{cmd:show}|{cmd:disable}|{cmd:enable}|{cmd:setposition}|{it:something_else} {cmd:[}{it:arguments}{cmd:]}}}

{pmore}
所有控件提供 {it:memberfunctions} {opt hide}、{opt show}、{opt disable}、{opt enable} 和 {opt setposition}，某些控件提供其他特殊的 {it:memberfunctions}。

{pmore}
{opt hide} 指定控件从视图中消失（如果尚未消失）。{opt show} 指定它重新出现（如果尚未可见）。

{pmore}
{opt disable} 指定禁用控件（如果尚未禁用）。{opt enable} 指定启用控件（如果尚未启用）。

{pmore}
{opt setposition} 指定控件的新位置和大小。{opt setposition} 需要形如 {bind:{it:x} {it:y} {it:xsize} {it:ysize}} 的 {it:arguments}。在任何四个 {it:arguments} 中都可以使用点号，表示当前值。

{pmore}
有时 {it:arguments} 可能需要引号。例如，{hi:CHECKBOX} 提供了一个特殊的 {it:memberfunction}

            {cmd:setlabel} {it:string}

{pmore}
用于设置复选框旁边显示的文本，因此您可以指定 {bind:{cmd:onclickon}{cmd:(}{cmd:'"gaction main.robust.setlabel "Robust VCE""'}{cmd:)}}。每当 {it:string} 被要求时，如果该 {it:string} 包含空格，您必须将其括在引号内。当您在选项的括号内指定 {it:iaction} 时，最好在不需要时省略引号。如果需要引号，则必须将选项的整个内容括在复合双引号中，如上例所示。

{phang}
{bind:{it:dialogname}{cmd:.}{it:controlname}{cmd:.}{it:memberfunction} {cmd:[}{it:arguments}{cmd:]}}{break}
与 {opt gaction} 相同；{opt gaction} 是可选的。

{phang}
{bind:{cmd:action} {it:memberfunction} {cmd:[}{it:arguments}{cmd:]}}{break}
与 {cmd:gaction}相同
{bind:{it:currentdialog}{cmd:.}{it:currentcontrol}{cmd:.}{it:memberfunction}}；
在当前控件上执行指定的 {it:memberfunction}。

{phang}
{cmd:view} {it:topic}{break}
在查看器中显示 {it:topic}；见 {manhelp view R}。

{phang}
{cmd:script} {it:scriptname}{break}
执行指定的脚本。脚本是一组行，每一行指定一个 {it:iaction}。因此，如果您想禁用三样东西，则 {opt gaction} 将不够。您将定义一个包含三个 {opt gaction} 行的脚本。

{phang}
{cmd:program} {it:programname}{break}
执行指定的对话框程序。由于程序可以做比脚本更多的事情（因为它们提供 if 语句控制流），但编写起来更困难；通常当指定 i-actions 时不需要额外的能力。

{marker remarks2.5.7}{...}
{phang}
{cmd:create} {opt STRING|DOUBLE|BOOLEAN} {it:propertyname}{break}
创建对话属性的新实例。
有关创建新属性实例的信息，请参见 {it:{help dialogs##remarks6.:6. 属性}}。

{phang}
{cmd:create} {opt PSTRING|PDOUBLE|PBOOLEAN} {it:propertyname}{break}
创建持久对话属性的新实例。
有关创建新属性实例的信息，请参见 {it:{help dialogs##remarks6.:6. 属性}}。

{phang}
{cmd:create} {opt CHILD} {it:dialogname} [{cmd:AS} {it:referencename}][{cmd:, nomodal allowsubmit allowcopy}]{break}
创建子对话框的新实例。
默认情况下，引用名称将是对话框的名称，除非另有指定。
有关详细信息，请参见 {it:{help dialogs##remarks7.:7. 子对话框}}。


{marker remarks2.6}{...}
{title:2.6 U-actions 和通信选项}

{pstd}
请记住，对话框的最终目标是构建一个 u-action -- 一个要执行的 Stata 命令。该命令取决于用户如何填写对话框。

{pstd}
您通过编写一个对话框程序来构建该命令，这也称为 {hi:PROGRAM}。您安排通过指定允许与 {hi:OK}、{hi:SUBMIT}、{hi:CANCEL} 和 {hi:COPY} u-action 按钮的 {opt uaction()} 选项来调用该程序。
例如，{hi:OK} 的语法是

        {bind:{cmd:OK} . . . [{cmd:,} . . . {opt uaction(pgmname)} {opt target(target)} . . .]}

{pstd}
{it:pgmname} 是您编写的对话程序的名称，而 {opt target()} 指定由 {it:pgmname} 构建的命令将如何执行。通常，您只希望 Stata 执行该命令，这可以编码为 {cmd:target(stata)}，但由于这是默认值，大多数程序员会完全省略 {opt target()} 选项。

{pstd}
您编写的对话框程序访问用户填写的信息并输出要执行的 Stata 命令。在不详细说明的情况下，该程序可能会说构建命令的方法是输出单词 {hi:regress}，后面跟着用户在第一个对话的 varlist 字段中指定的 {varlist}，然后跟上从用户在第二个对话的编辑字段中填写的内容获取的 {opt if} {it:exp}。

{pstd}
对话框和输入控件具有名称，在您的对话程序中，当您想引用用户填写的内容时，您引用 {bind:{it:dialogname}{cmd:.}{it:inputcontrolname}}。 {it:dialogname} 是在您编码 {hi:DIALOG} 命令以创建对话框时确定的

            {cmd:DIALOG} {it:dialogname} . . .

{pstd}
而 {it:inputcontrolname} 是在您编码输入控件命令以创建输入控件时确定的，例如，

            {hi:CHECKBOX} {it:inputcontrolname} . . .

{pstd}
详细信息将在 {it:{help dialogs##remarks5:5. PROGRAM}} 中讨论，但不要在细节中迷失。首先考虑编码对话框的外观，其次考虑如何将用户指定的内容转换为 u-action。

{pstd}
在指定对话框外观的各种命令中，您可以指定一个选项，该选项将使编写 u-action 程序变得更容易：与每个控件允许的通信选项 {opt option()}，它会将关于该控件的某些信息传递给 u-action 程序。例如，在 {hi:CHECKBOX} 命令上，您可以编码

            {bind:{hi:CHECKBOX} . . . {cmd:,} . . .  {cmd:option(robust)} . . . }

{pstd}
当您编写对话框 {hi:PROGRAM} 时，您会发现将构造的命令与该复选框中的 {opt robust} 选项关联起来更容易。通信选项从来不会改变控件的外观或工作方式：它们只是使额外信息可用于 {hi:PROGRAM}，并使编写 u-action 例程变得更容易。

{pstd}
在编写对话框时，不必过于担心通信选项。当您编写相应的 u-action 程序时，只需关注通信选项。到时显而易见，您应该指定哪些通信选项，您可以返回去指定它们。


{marker remarks2.7}{...}
{title:2.7 I-actions 和 u-actions 之间的区别}

{pstd}
在本文档中，我们区分 i-actions 和 u-actions，但如果您仔细阅读，会发现这种区别更具语法性而非真实性。我们区分 i-actions 和 u-actions 的一种方法是注意，仅 u-actions 可以运行 Stata 命令。实际上，i-actions 也可以运行 Stata 命令；您只需以不同的方式编码它们。在绝大多数对话框中，您不会这样做。

{pstd}
然而，如果您正在编写一个对话框来编辑 Stata 图形，您可能会构建对话框，使其不包含 u-actions，仅包含 i-actions。这些 i-actions 中的一些可能会调用 Stata 命令。

{pstd}
如您所知，i-actions 可以调用 {hi:PROGRAM}，{hi:PROGRAM} 有两个目的：编码 i-actions 和编码 u-actions。然而，{hi:PROGRAM} 本身有能力向 Stata 提交命令，这就是关键。 i-actions 可以调用 {hi:PROGRAM}，而 {hi:PROGRAM} 可以调用 Stata 命令。如何做到这一点将在 {it:{help dialogs##remarks5.1.3:5.1.3 rstrings: cmdstring 和 optstring}} 和 {it:{help dialogs##remarks5.5:5.5 命令执行命令}} 中讨论。

{pstd}
我们建议您不要编程几乎没有区别的 i-actions 和 u-actions，除非在少数特殊情况下。用户期待填写一个对话框，并在发生任何过于严重的事情之前，能够点击 {hi:OK} 或 {hi:Submit}。

{marker remarks2.8}{...}
{title:2.8 错误和一致性检查}

{pstd}
在填写您构造的对话框时，用户可能会犯错误。一种选择是简单地忽视这种可能性，让 Stata 在执行您构建的 u-action 命令时抱怨。即使在编写良好的对话框中，大多数错误也应该以这种方式处理，因为发现所有问题将需要重写整个 Stata 命令的逻辑。

{pstd}
然而，您将希望在对话框打开时捕获易于检测的错误，以便用户能够轻松修复它们。错误有两种形式：
完全错误指的是在应该包含变量名称的编辑字段中输入数字。 一致性错误指的是选中两个从逻辑上讲互斥的复选框。

{pstd}
您希望在对话框级别处理大多数一致性错误， either by 设计（如果两个复选框是互斥的，也许应该将信息收集为单选按钮）或通过 i-actions（根据填写的内容禁用甚至隐藏某些字段）。后者在 {it:{help dialogs##remarks2.5:2.5 I-actions 和成员函数}} 中讨论。

{pstd}
完全错误可以在对话框程序中检测并处理，通常在 u-action 程序中检测和处理。例如，在您的对话框程序中，您可以断言 {bind:{it:dialogname}{cmd:.}{it:inputcontrolname}} 必须填写，如果没有则弹出自定义错误消息，或者程序代码可以编写为呈现自动生成的错误消息。您会发现所有输入控件命令都有一个 {opt error()} 选项；例如，

            {bind:{cmd:VARLIST} . . . [{cmd:,} . . . {opt error(string)} . .  .]}

{pstd}
{opt error()} 字符串提供了对话框管理器在呈现错误时描述控件的文本。例如，如果我们指定：

            {bind:{cmd:VARLIST} . . . [{cmd:,} . . . {opt error(因变量)} . . .]}

{pstd}
对话框管理器稍后可能会使用该信息构造错误消息“必须指定因变量”。

{pstd}
如果不指定 {opt error()} 选项，对话框管理器将使用在 {opt label()} 中指定的内容；否则，将使用 {cmd:""}。 {opt label()} 选项指定通常出现在控件旁边以描述控件的文本，但 {opt label()} 将双重发动力，因此，当两个字符串需要不同的时候，您只需指定 {opt error()}。

{marker remarks3}{...}
{title:3. 命令}


{marker remarks3.1}{...}
{title:3.1 VERSION}

{title:语法}

{p 8 15 2}
{bind:{cmd:VERSION} {it:#}[{cmd:.}{it:##}] [{it:有效操作系统}]}


{title:描述}

{pstd}
{hi:VERSION} 指定后续命令的解释方式。


{title:备注}

{pstd}
{hi:VERSION} 必须首先出现在 {cmd:.dlg} 文件中（可能以注释开头）。在当前版本的 Stata 中，应读取 {hi:VERSION {ccl stata_version}}。

{pstd}
可选地， {hi:VERSION} 可以指定一个或多个有效的操作系统。接受的值是 {cmd:WINDOWS}、{cmd:MACINTOSH} 和 {cmd:UNIX}。如果未指定这些，则假定为所有操作系统。

{pstd}
在顶部包含 {hi:VERSION} 是至关重要的。 Stata 正在不断开发中，因此语法和功能可能会发生变化。包含 {hi:VERSION} 是确保您的对话框能够按照您期望的方式继续运行的方式。


{marker remarks3.2}{...}
{title:3.2 INCLUDE}

{title:语法}

{p 8 15 2}
{bind:{cmd:INCLUDE} {it:includefilename}}

{pstd}
其中 {it:includefilename} 指 {it:includefilename}{cmd:.idlg}，且必须在不带后缀和路径的情况下指定。


{title:描述}

{pstd}
{hi:INCLUDE} 读取并处理来自 {it:includefilename}{cmd:.idlg} 的行，就像它们是当前读取文件的一部分一样。 {hi:INCLUDE} 可以出现在 {cmd:.dlg} 和 {cmd:.idlg} 文件中。


{title:备注}

{pstd}
文件名无须包含文件后缀和路径。 {cmd:.idlg} 文件沿 ado 路径搜索，就像 {cmd:.dlg} 文件一样。

{pstd}
{hi:INCLUDE} 可以在对话代码的任何位置出现，并且可以出现在 {cmd:.dlg} 和 {cmd:.idlg} 文件中；包含文件可以 {hi:INCLUDE} 其他包含文件。文件可以包含多个 {hi:INCLUDE}。最大嵌套深度为 10。


{marker remarks3.3}{...}
{title:3.3 DEFINE}

{title:语法}

{p 8 14 2}
{cmd:DEFINE} {it:name}
{{cmd:.}|{it:#}|{cmd:+}{it:#}|{cmd:-}{it:#}|{cmd:@x}|{cmd:@y}|{opt @xs:ize}|{cmd:,}{opt @ys:ize}}


{title:描述}

{pstd}
{hi:DEFINE} 创建 {it:name}，可在其他命令中使用，任何地方需要位置或大小元素。


{title:备注}

{pstd}
定义 {it:name} 的前四种可能性 -- {cmd:.}、{it:#}、{cmd:+}{it:#} 和 {cmd:-}{it:#} -- 指定默认值、指定的数字、正偏移和负偏移。

{pstd}
其他四种可能性 -- {opt @x}、{opt @y}、{opt @xsize} 和 {opt @ysize} -- 是指在发出 {cmd:DEFINE} 命令的时刻，先前 {it:x}、{it:y}、{it:xsize} 和 {it:ysize} 的值，而不是在使用 {it:name} 时的值。


{marker remarks3.4}{...}
{title:3.4 POSITION}

{title:语法}

{p 8 16 2}
{bind:{cmd:POSITION} {it:x} {it:y} {it:xsize} {it:ysize}}


{title:描述}

{pstd}
{hi:POSITION} 用于设置对话框的位置和大小。
{it:x} 和 {it:y} 指对话框的左上角。
{it:xsize} 和 {it:ysize} 指对话框的宽度和高度。


{title:备注}
 
{pstd}
位置 {it:x} 和 {it:y} 可以都指定为 {cmd:.}，Stata 将确定对话框显示的位置；建议这样做。

{pstd}
{it:xsize} 和 {it:ysize} 不能指定为 {cmd:.}，因为它们指定对话框的整体大小。您可以通过实验来发现大小。如果您指定的大小太小，则某些元素将超出对话框。如果您指定的大小太大，则对话框的右侧和底部将出现大量空白。 {it:xsize} 和 {it:ysize} 的良好初始值为 400 和 300。

{pstd}
{hi:POSITION} 可以在对话代码中的任何位置指定， 位于 {hi:BEGIN} . . . {hi:END} 块之外。没有关系，因为在显示对话框之前，整个 {cmd:.dlg} 文件先被处理。


{marker remarks3.5}{...}
{title:3.5 LIST}

{title:语法}

       {cmd:LIST} {it:newlistname}
           {cmd:BEGIN}
               {it:item}
               {it:item}
               . . . 
           {cmd:END}


{title:描述}

{pstd}
{hi:LIST} 创建一个命名列表，用于填充列表和组合框。


{title:示例}

       LIST choices
           BEGIN
               统计
               图形
               数据管理
           END
       . . . 
       DIALOG . . . 
           BEGIN
              . . .
              LISTBOX . . . , . . . contents(choices) . . .  
              . . . 
           END


{marker remarks3.6}{...}
{title:3.6 DIALOG}

{title:语法}

       {bind:{cmd:DIALOG} {it:newdialogname} [{cmd:,} {opt ti:tle}("{it:string}") {opt tab:title}("{it:string}")]}
           BEGIN
               {{it:control definition statements}|{cmd:INCLUDE}|{cmd:DEFINE}}
               . . .
           END


{title:描述}

{pstd}
{hi:DIALOG} 定义一个对话框。每个 {cmd:.dlg} 文件应定义至少一个对话框。仅控件定义语句、{hi:INCLUDE} 和 {hi:DEFINE} 被允许出现在 {hi:BEGIN} 和 {hi:END} 之间。


{title:选项}

{phang}
{opt title}{cmd:("}{it:string}{cmd:")} 定义对话框标题栏中显示的文本。

{phang}
{opt tabtitle}{cmd:("}{it:string}{cmd:")} 定义对话框选项卡上显示的文本。如果定义了多个对话框，则显示为选项卡。当用户单击选项卡时，对话框变得可见且处于活动状态。如果只指定了一个对话框，则 {opt tabtitle()} 的内容无关紧要。


{title:成员函数}

{p2colset 5 27 29 2}{...}
{p2col :{cmd:settabtitle} {it:string}}将选项卡标题设置为 {it:string}{p_end}
{p2col :{cmd:settitle} {it:string}}将整体对话框标题设置为 {it:string}{p_end}
{p2colreset}{...}

{pstd}
{cmd:settitle} 可以作为任何对话选项卡的成员函数调用，但更合适的是作为对话框的成员函数调用。这是通过在对话的局部范围内调用它来实现的。

{pstd}
示例： 

{p 8 4 2}
{cmd: settitle "排序 - 排序数据"}


{marker remarks3.6.1}{...}
{title:3.6.1 CHECKBOX 开/关输入控件}

{title:语法}

{p 8 12 2}
{hi:CHECKBOX} {it:newcontrolname} {it:x} {it:y} {it:xsize} {it:ysize} 
[{cmd:,} {opt l:abel}{cmd:("}{it:string}{cmd:")} 
         {opt e:rror}{cmd:("}{it:string}{cmd:")} 
         {opt default(defnumval)} {opt nomem:ory} 
         {cmd:groupbox} {opt onclickon(iaction)} 
         {opt onclickoff(iaction)} {opt op:tion(optionname)}
         {cmd:tooltip("}{it:string}{cmd:")}]
 

{title:成员函数}

{p2colset 5 27 29 2}{...}
{p2col :{cmd:setlabel} {it:string}}设置文本为 {it:string}{p_end}
{p2col :{cmd:setoff}}取消选中复选框{p_end}
{p2col :{cmd:seton}}选中复选框{p_end}
{p2col :{cmd:setoption} {it:optionname}}将 {it:optionname} 与复选框的值关联{p_end}
{p2col :{cmd:setdefault} {it:value}}设置复选框的默认值；这不会改变所选状态{p_end}
{p2col :{cmd:settooltip} {it:string}}将工具提示文本设置为 {it:string}{p_end}
{p2colreset}{...}

{pstd}	
标准成员函数 {opt hide}、{opt show}、{opt disable}、 
{opt enable} 和 {opt setposition} 也提供。


{title:返回值供程序使用}

{pstd}	
返回数值，0 或 1，具体取决于框是否被选中。


{title:描述}

{pstd}
{hi:CHECKBOX} 定义了一个复选框控件，表示开启或关闭的选项。


{title:选项}

{phang}
{opt label}{cmd:("}{it:string}{cmd:")} 指定要在控件旁边显示的文本。您应指定明确暗示两个相对状态的文本，以便在复选框选中或未选中时显然知道发生了什么。

{phang}
{opt error}{cmd:("}{it:string}{cmd:")} 指定在自动生成的错误框中描述此字段时要显示的文本。

{phang}
{opt default(defnumval)} 指定复选框初始是选中还是未选中；如果 {it:defnumval} 评估为 0，则未选中，否则选中。如果未指定 {opt default()}，假定为 {cmd:default(0)}。

{phang}
{opt nomemory} 指定复选框在调用之间不记住如何填充。

{phang}
{opt groupbox} 使此复选框控件也成为组框，其中可以放置其他控件，以强调它们是相关的。
组框仅是一个轮廓；它不会使“内部”的控件被禁用或隐藏，或以其他任何方式表现得与它们放置在组框外时有所不同。在某些平台上，单选按钮的优先级高于复选框组框。您可以在复选框组框内放置单选按钮，但不要将复选框组框放置在单选按钮组之中。如果您这样做，您可能无法在某些平台上单击复选框控件。

{phang}
{opt onclickon(iaction)} 和 {opt onclickoff(iaction)} 指定在点击复选框时调用的 i-actions。可以使用此操作，例如隐藏、显示、禁用或启用其他输入控件。默认的 i-action 为无操作。{opt onclickon()} 或 
{opt onclickoff()} i-action 会在复选框首次显示时被调用。

{phang}
{opt option(optionname)} 是一个通信选项，将 {it:optionname} 与复选框的值关联。

{phang}
{opt tooltip}{cmd:("}{it:string}{cmd:")} 指定当用户将鼠标悬停在控件上时显示为提示或提示的文本。


{title:示例}

{psee}{cmd:CHECKBOX robust 10 10 100 ., label(强健 VCE)}{p_end}


{marker remarks3.6.2}{...}
{title:3.6.2 RADIO 开/关输入控件}

{title:语法}

{p 8 15 2}
{cmd:RADIO} {it:newcontrolname} {it:x} {it:y} {it:xsize} {it:ysize} 
[{cmd:,} [{opt f:irst}|{opt m:iddle}|{opt la:st}] 
                {opt l:abel}{cmd:("}{it:string}{cmd:")} 
                {opt e:rror}{cmd:("}{it:string}{cmd:")}
                {opt default(defnumval)} {opt nomem:ory}
                {opt onclickon(iaction)} {opt onclickoff(iaction)}
                {opt op:tion(optionname)}
                {cmd:tooltip("}{it:string}{cmd:")}]


{title:成员函数}

{p2colset 5 27 29 2}{...}
{p2col :{cmd:setlabel} {it:string}}设置文本为 {it:string}{p_end}
{p2col :{cmd:seton}}选中单选按钮并取消选中组中的其他按钮{p_end}
{p2col :{cmd:setoption} {it:optionname}}将 {it:optionname} 与单选按钮的值关联{p_end}
{p2col :{cmd:setdefault} {it:value}}设置单选按钮的默认值；这不会改变所选状态{p_end}
{p2col :{cmd:settooltip} {it:string}}将工具提示文本设置为 {it:string}{p_end}
{p2colreset}{...}

{pstd}	
标准成员函数 {opt hide}、{opt show}、{opt disable}, 
{opt enable} 和 {opt setposition} 也始终提供。


{title:返回值供程序使用}

{pstd}
返回数值，0 或 1，具体取决于按钮是否被选中。


{title:描述}

{pstd}
{hi:RADIO} 定义一个单选按钮控件，在单选按钮组中使用。单选按钮用于两个或更多相关但相互排斥的选择。当选择一个单选按钮时，会自动取消选择组中的其他按钮。


{title:选项}

{phang}
{opt first}、{opt middle} 和 {opt last} 指定该单选按钮是组中的第一个、中间或最后一个成员。必须有一个 {opt first} 和一个 {opt last}。可以有零个或多个 {opt middle} 成员。如果未指定选项，默认为 {opt middle}。

{phang}
{opt label}{cmd:("}{it:string}{cmd:")} 指定要在控件旁边显示的文本。

{phang}
{opt error}{cmd:("}{it:string}{cmd:")} 指定在自动生成的错误框中描述此字段时要显示的文本。

{phang}
{opt default(defnumval)} 指定该单选按钮初始选中或未选中；如果 {it:defnumval} 评估为 0，则未选中，否则选中。如果 {opt default()} 未指定，假定为 default(0) 除非 {opt first} 也指定，在这种情况下，则假定为 default(1)。使用除第一个按钮以外的任何内容作为默认值被视为不良风格，因此这个选项很少指定。

{phang}
{opt nomemory} 指定单选按钮在调用之间不记住如何填充。

{phang}
{opt onclickon(iaction)} 和 {opt onclickoff(iaction)} 指定 i-action 在单选按钮被选中或取消选中时调用。默认 i-action 是无操作。{opt onclickon()} i-action 会在单选按钮首次显示时被调用。

{phang}
{opt option(optionname)} 是一个通信选项，将 {it:optionname} 与单选按钮的值关联。

{phang}
{opt tooltip}{cmd:("}{it:string}{cmd:")} 指定当用户将鼠标悬停在控件上时显示为提示或提示的文本。


{title:示例}

    {hi:RADIO} {cmd: r1 10  10 100 ., first  label("第一个选择")}
    {hi:RADIO} {cmd: r2  @ +20   @ ., middle label("第二个选择")}
    {hi:RADIO} {cmd: r3  @ +20   @ ., middle label("第三个选择")}
    {hi:RADIO} {cmd: r4  @ +20   @ ., last   label("最后一个选择")}


{marker remarks3.6.3}{...}
{title:3.6.3 SPINNER 数字输入控件} 

{title:语法}

{p 8 17 2}
{cmd:SPINNER} {it:newcontrolname} {it:x} {it:y} {it:xsize} {it:ysize} 
[{cmd:,} {opt l:abel}{cmd:("}{it:string}{cmd:")}
        {opt e:rror}{cmd:("}{it:string}{cmd:")}
        {opt default(defnumval)} {opt nomem:ory} {opt min(defnumval)}
        {opt max(defnumval)} {opt onchange(iaction)}
        {opt op:tion(optionname)}
        {cmd:tooltip("}{it:string}{cmd:")}]


{title:成员函数}

{p2colset 5 26 28 2}{...}
{p2col :{cmd:setvalue} {it:{help dialogs##specialdefs.:value}}}设置选择器的实际值为 {it:{help dialogs##specialdefs.:value}}{p_end}
{p2col :{cmd:setrange} {it:min# max#}}设置选择器的范围为 {it:min# max#}{p_end}
{p2col :{cmd:setoption} {it:optionname}}将 {it:optionname} 与选择器的值关联{p_end}
{p2col :{cmd:setdefault} {it:#}}设置选择器的默认值为 {it:#}；这不会改变选择控件显示的值{p_end}
{p2col :{cmd:settooltip} {it:string}}将工具提示文本设置为 {it:string}{p_end}
{p2colreset}{...}

{pstd}
标准成员函数 {opt hide}、{opt show}、{opt disable}, 
{opt enable} 和 {opt setposition} 也提供。


{title:返回值供程序使用}

{pstd}
返回数值，选择器的值。


{title:描述}

{pstd}
{hi:SPINNER} 定义一个选择器，它显示一个接受整数数字的编辑字段，用户可以通过单击向上或向下箭头来增加或减少该数字。


{title:选项}

{phang}
{opt label}{cmd:("}{it:string}{cmd:")} 指定控件的描述，但不显示标签在选择器旁边。如果您想标识选择器，则必须使用 {hi:TEXT} 静态控件。

{phang}
{opt error}{cmd:("}{it:string}{cmd:")} 指定在自动生成错误框中描述此字段时要显示的文本。

{phang}
{opt default(defnumval)} 指定选择器的初始整数值。如果未指定，则假定为 {opt min()}，如果未指定，则假定为 0。

{phang}
{opt nomemory} 指定选择器在调用之间不记住如何填充。

{phang}
{opt min(defnumval)} 和 {opt max(defnumval)} 设置选择器的最小和最大整数值。 {cmd:min(0)} 和 {cmd:max(100)} 是默认值。

{phang}
{opt onchange(iaction)} 指定在选择器更改时要调用的 i-action。默认 i-action为无操作。注意 {opt onchange()} i-action 会在选择器首次显示时被调用。

{phang}
{opt option(optionname)} 是一个通信选项，将 {it:optionname} 与选择器的值关联。

{phang}
{opt tooltip}{cmd:("}{it:string}{cmd:")} 指定当用户将鼠标悬停在控件上时显示为提示或提示的文本。


{title:示例}

{psee}{cmd:SPINNER level 10 10 60 ., label(显著水平) min(5) max(100)} ///{break}
{cmd:default(c(level)) option(level)}{p_end}


{marker remarks3.6.4}{...}
{title:3.6.4 EDIT 字符串输入控件}

{title:语法}

{p 8 14 2} 
EDIT {it:newcontrolname} {it:x} {it:y} {it:xsize} {it:ysize} 
     [{cmd:,} {opt l:abel}("{it:string}") {opt e:rror}("{it:string}")
     {opt default(defstrval)} {opt nomem:ory} {opt max(#)} 
     {cmd: numonly password} {opt onchange(iaction)}
     {opt op:tion(optionname)}
     {cmd:tooltip("}{it:string}{cmd:")}]


{title:成员函数}

{p2colset 5 30 32 2}{...}
{p2col :{cmd:setlabel} {it:string}}设置编辑字段的标签{p_end}
{p2col :{cmd:setvalue} {it:{help dialogs##specialdefs.:strvalue}}}设置编辑字段中显示的值{p_end}
{p2col :{cmd:append} {it:string}}将 {it:string} 附加到编辑字段中的值{p_end}
{p2col :{cmd:prepend} {it:string}}将 {it:string} 前置到编辑字段的值{p_end}
{p2col :{cmd:insert} {it:string}}在编辑字段的当前光标位置插入 {it:string}{p_end}
{p2col :{cmd:smartinsert} {it:string}}在编辑字段的当前光标位置插入 {it:string}，前后带有空格{p_end}
{p2col :{cmd:setfocus}}使控件获得键盘焦点{p_end}
{p2col :{cmd:setoption} {it:optionname}}将 {it:optionname} 与编辑字段的内容关联{p_end}
{p2col :{cmd:setdefault} {it:string}}设置编辑字段的默认值；这不会改变显示内容{p_end}
{p2col :{cmd:settooltip} {it:string}}将工具提示文本设置为 {it:string}{p_end}
{p2colreset}{...}

{pstd}
标准成员函数 {opt hide}、{opt show}、{opt disable},
{opt enable} 和 {opt setposition} 也提供。


{title:返回值供程序使用}

{pstd}
返回 {it:string}，编辑字段的内容。


{title:描述}

{pstd}
{hi:EDIT} 定义一个编辑字段。编辑字段是一个用户可以输入文本或在其中编辑文本的框；框的宽度不限制输入的文本量。


{title

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dialog_programming.sthlp>}