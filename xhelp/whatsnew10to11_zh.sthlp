{smcl}
{* *! version 1.4.4  20jun2019}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}
{help whatsnew10to11:English Version}
{hline}{...}
{title:第11版的新功能（与第10版相比）}

{pstd}
此文件列出了与 Stata 版本 11.0 创建相关的更改：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件        内容                     年份           {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatsnew_zh}         Stata 16.0                   2019 年至今 {c |}
    {c |} {help whatsnew15to16_zh}   Stata 16.0 新版本           2019 年            {c |}
    {c |} {help whatsnew15_zh}       Stata 15.0 和 15.1          2017 至 2019 年    {c |}
    {c |} {help whatsnew14to15_zh}   Stata 15.0 新版本           2017 年            {c |}
    {c |} {help whatsnew14_zh}       Stata 14.0, 14.1 和 14.2   2015 至 2017 年    {c |}
    {c |} {help whatsnew13to14_zh}   Stata 14.0 新版本           2015 年            {c |}
    {c |} {help whatsnew13_zh}       Stata 13.0 和 13.1          2013 至 2015 年    {c |}
    {c |} {help whatsnew12to13_zh}   Stata 13.0 新版本           2013 年            {c |}
    {c |} {help whatsnew12_zh}       Stata 12.0 和 12.1          2011 至 2013 年    {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0 新版本           2011 年            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0, 11.1 和 11.2   2009 至 2011 年    {c |}
    {c |} {bf:此文件}        Stata 11.0 新版本           2009 年            {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0 和 10.1          2007 至 2009 年    {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0 新版本           2007 年            {c |}
    {c |} {help whatsnew9_zh}        Stata  9.0, 9.1 和 9.2     2005 至 2007 年    {c |}
    {c |} {help whatsnew8to9_zh}     Stata  9.0 新版本           2005 年            {c |}
    {c |} {help whatsnew8_zh}        Stata  8.0, 8.1 和 8.2     2003 至 2005 年    {c |}
    {c |} {help whatsnew7to8_zh}     Stata  8.0 新版本           2003 年            {c |}
    {c |} {help whatsnew7_zh}        Stata  7.0                   2001 至 2002 年    {c |}
    {c |} {help whatsnew6to7_zh}     Stata  7.0 新版本           2000 年            {c |}
    {c |} {help whatsnew6_zh}        Stata  6.0                   1999 至 2000 年    {c BLC}{hline 63}{c BRC}

{pstd}
最近的更改列在最前面。


{hline 3} {hi:更近的更新} {hline}

{pstd}
请参见 {help whatsnew11_zh}.


{hline 3} {hi:Stata 11.0 版本 13jul2009} {hline}

{title:备注}

{pstd}
我们将逐项列出所有更改，但首先，这里是亮点：

{phang2}
1.  Stata 现在允许因子变量！在估计中，您现在可以通过键入，例如，

            {cmd:. regress y i.sex i.group i.sex#i.group age}{right:(1)}
            {cmd:. regress y i.sex##i.group age         }   {right:(与 1 相同)}
            {cmd:. regress y i.sex i.group i.region i.sex#i.group}
            {cmd:      i.sex#i.region i.group#i.region }    {right:(2)}
            {cmd:      i.sex#i.group#i.region}
            {cmd:      age }
            {cmd:. regress y i.sex##i.group##i.region age}   {right:(与 2 相同)}

{pmore2}
    Stata 将自行形成性别、组和区域的指示变量及其交互项。您不需要使用旧的 {cmd:xi} 命令，并且不会在数据中创建新的变量。
    您可以通过使用 {cmd:c.} 前缀形成因子变量与连续变量之间的交互，以及连续变量与连续变量之间的交互：

            {cmd:. regress y i.sex##i.group##i.region }
            {cmd:      age c.age#c.age               }      {right:(3)}
            {cmd:. regress y i.sex##i.group##i.region}
            {cmd:      age i.sex##i.group##i.region#c.age }  {right:(4)}
            {cmd:      c.age#c.age i.sex##i.group##i.region#c.age#c.age}
            {cmd:. regress y i.sex##i.group##i.region##c.age}  {right:(与 4 相同)}
            {cmd:      i.sex##i.group##i.region##c.age#c.age}

{pmore2}
    这种新的因子变量表示法几乎被每个 Stata 估计命令理解，因此您可以键入，例如，

	     {cmd:. logistic outcome i.treatment##i.sex age bp c.age#c.bp }

{pmore2}
    因子变量在 {cmd:summarize} 和 {cmd:list} 中也有效：

	    {cmd:. list outcome i.treatment##i.sex}

{pmore2}
    因子变量有很多额外功能；请参见 {findalias frfvvarlists}。

{phang2}
2.  Stata 11 的新后续命令 {cmd:margins}
    估计边际和边际效应。包括估计的边际均值、最小二乘均值、平均和条件边际及部分效应、平均和条件调整预测、预测边际等。几乎没有用户无法找到 {cmd:margins} 的用处。阅读 {manhelp margins R} 绝对值得。

{phang2}
3.
    Stata 新的 {cmd:mi} 命令集执行多重插补。
    有很多要说，以至于 {cmd:mi} 有自己的手册。

{pmore2}
    {cmd:mi} 提供了对缺失数据的分析方法，即某些值缺失的数据，并提供插补和估计步骤。{cmd:mi} 的估计步骤结合了估计和汇总步骤。提供多元正态插补，外加五种单变量方法，可单独使用或作为多元插补的构建模块。

{pmore2}
    {cmd:mi} 可以导入已经插补的数据，包括来自 NHANES 和 {cmd:ice} 的数据。{cmd:mi} 解决了保持多个数据集同步的问题。您可以像处理一个数据集一样创建或删除变量或观察。您可以合并、附加和重塑数据，这所有都有如你可以在形成插补之前或之后进行数据管理的能力。

{pmore2}
    包含一个交互式控制面板，提供对几乎所有 {cmd:mi} 能力的访问，并指导您完成分析步骤。

{pmore2}
    详见 {manhelp mi_intro MI:intro}。

{phang2}
4.  新的变量管理器是管理变量的首选之地。点击变量管理器按钮或键入 {cmd:varmanage}。
    您可以更改名称、标签、显示格式和存储类型。
    您可以定义和编辑笔记，并定义和编辑值标签。变量管理器即使对拥有数千个变量的数据也是有用的；只需在左上角的过滤器中键入名称的一部分。
    请参见 {manhelp varmanage D} 和
       [GS] 7 使用变量管理器
       ({mansection GSM 7UsingtheVariablesManager:GSM},
        {mansection GSU 7UsingtheVariablesManager:GSU}，或
        {mansection GSW 7UsingtheVariablesManager:GSW}）。

{phang2}
5.  数据编辑器全新改版。现在这是您数据的实时视图，这意味着您可以运行 Stata 命令并立即看到更改的反映。您可以应用过滤器以查看数据的子集，拍摄快照以便您可以撤销更改，并以自然的方式输入日期和时间。请参见 {manhelp edit D} 和 [GS] 6 使用数据编辑器
    ({mansection GSM 6UsingtheDataEditor:GSM},
     {mansection GSU 6UsingtheDataEditor:GSU}，或
     {mansection GSW 6UsingtheDataEditor:GSW}）。

{phang2}
6.  Windows 下的 Do-file 编辑器也是全新改版。提供语法高亮和代码折叠。文件大小没有限制。
    请参见 {manhelp doedit D}。

{phang2}
7.  现在您可以在图形中添加粗体和斜体文本、希腊字母、符号、上标和下标！请参见 {manhelpi text G-4}。

{phang2}
8.  如果您不是在计算机上阅读此内容，您可能会有兴趣。
    Stata 现在有 PDF 手册 -- [GS]、[U]、[D]，
    [G]、[MI]、[MV]、[R]、[ST]、[SVY]、[TS]、[XT]、[P]、[M] 和
    [I] -- 并随同每个 Stata 版本一起发货。选择 {bf:Help > PDF Documentation}。更好的是，手册已集成到帮助系统中。从帮助文件中，您可以通过单击引用直接跳转到相关页面。再也没有更多要了解的了。

{pstd}
在这一版本中还有其他令人兴奋的新功能，具体取决于您的身份和兴趣。这些包括

{phang2}
 o 竞争风险回归模型；见 {manhelp stcrreg ST}

{phang2}
 o GMM 估计；见 {manhelp gmm R}

{phang2}
 o 状态空间（卡尔曼滤波）建模；见 {manhelp sspace TS}

{phang2}
 o 多元 GARCH；见 {manhelp dvech TS}

{phang2}
 o 动态因子模型；见 {manhelp dfactor TS}

{phang2}
 o 面板数据的单位根检验；见 {manhelp xtunitroot XT}

{phang2}
 o 线性混合模型的误差结构；见 {manhelp xtmixed XT}

{phang2}
 o 线性混合模型中 BLUP 的标准误差；
                    见 {manhelp xtmixed XT}

{phang2}
 o Mata 中的面向对象编程；见 {help m2_class_zh:[M-2] class}

{phang2}
 o Mata 中的完整基于模型的优化；见
                    {help mf_moptimize_zh:[M-5] moptimize()}

{phang2}
 o Mata 中的数值导数函数；见
                    {help mf_deriv_zh:[M-5 deriv()}

{pstd}
以下各部分涵盖了以上每个方面，以及更多内容。

    {title:图形用户界面和命令界面中的新功能}

{phang2}
1.  如前面提到的，新的变量管理器是管理变量的首选之地。  
    请参见 {manhelp varmanage D} 和
       [GS] 7 使用变量管理器
       ({mansection GSM 7UsingtheVariablesManager:GSM},
        {mansection GSU 7UsingtheVariablesManager:GSU}，或
        {mansection GSW 7UsingtheVariablesManager:GSW}）。

{phang2}
2.  另一个亮点是新的数据编辑器，这是数据的实时视图。 
    请参见 {manhelp edit D} 和
       [GS] 6 使用数据编辑器
       ({mansection GSM 6UsingtheDataEditor:GSM},
        {mansection GSU 6UsingtheDataEditor:GSU}，或
        {mansection GSW 6UsingtheDataEditor:GSU}）。

{phang2}
3.  Windows 下的 Do-file 编辑器也是全新改版，提供语法高亮和代码折叠。请参见 {manhelp doedit D}。

{phang2}
4.  您无疑已经注意到 Stata 的结果窗口现在有一个白色背景。Stata 有几种新的颜色方案，您现在看到的称为 {bf:Standard}。之前在 Stata 10 中的默认方案被称为 {bf:Classic}，因此如果您希望恢复它，请选择 {bf:Edit > Preferences > General Preferences...} 并将结果窗口的方案更改回去。您可以尝试其他方案或自己制作并将其保存在 {bf:Custom 1}、{bf:Custom 2} 或 
     {bf:Custom 3} 中。

{phang2}
5.  在 Windows 的 Stata 中，您现在可以选择 Stata 窗口整体大小和位置的五种不同的默认布局，或者，像以前一样，可以创建自己的布局。选择 {bf:Edit > Preferences > Load Preference Set} 并选择布局。除了 {bf:Factory Settings} 外，还有 {bf:Compact Window Layout} 和三种 {bf:Presentation} 布局，优化适应不同的投影仪分辨率。

{phang2}
6.  结果窗口的输出滚动现在明显更快。
    此外，{cmd:set} {cmd:scrollbufsize} 的上限已增加到 2,000,000。请参见 {manhelp set R}。

{phang2}
7.  在 Windows 的 Stata 中，图形窗口不再浮动。

{phang2}
8.  在 Windows 的 Stata 中，现有命令 {cmd:windows} {cmd:manage}
    有新的子命令 {cmd:prefs} 用于加载和保存
    命名偏好集；键入 {cmd:help} {cmd:window} {cmd:manage}
    以获取详细信息。

{phang2}
9.  Stata for Unix(GUI) 现在支持将图形以位图格式复制到剪贴板。

{p 7 12 2}
10.  Mac 版 Stata 现在支持将图形以 PDF 格式复制到剪贴板。

{p 7 12 2}
11.  Mac 版 Stata 的图形用户界面 (GUI) 已在 Apple 的 Cocoa 编程接口中完全重写。

{p 7 12 2}
12.  Mac 版 Stata 现在可以作为通用二进制文件，在基于 32 位 Intel 或 PowerPC 和 64 位 Intel 的 Mac 上原生运行，以在单一包中为所有三种架构提供最佳性能。


    {title:数据管理的新功能}

{phang2}
1.  现有命令 {cmd:merge} 有了全新的语法。使用起来更简单，阅读起来更方便，也减少了出错的可能性。
    合并被分类为 {cmd:1:1}、{cmd:1:m}、{cmd:m:1} 和 {cmd:m:m}。
    当您键入 {cmd:merge} {cmd:1:1} 时，您是在表明您期望观察值一对一匹配。 {cmd:merge} {cmd:1:m} 指定一对多合并；{cmd:m:1} 指定多对一合并；{cmd:m:m} 指定多对多合并。新的选项 {cmd:assert()} 和 {cmd:keep()} 允许您指定您期望的结果以及您想从中保留的内容。例如，

            {cmd:. merge 1:1 subjid using} {it:filename}{cmd:, assert(match)}

{pmore2}
    这意味着您期望两个数据集中的所有观察值相互匹配，而

	    {cmd:. merge 1:1 subjid using} {it:filename}{cmd:, assert(match using) keep(match)}

{pmore2}
    则指定您期望每个观察值要么匹配，要么仅来自使用数据，而且假设这是真的，您将只保留匹配项。

{pmore2}
    现在主数据集和使用数据集的排序是自动的。

{pmore2}
    新的 {cmd:merge} 不支持在一步中合并多个文件。首先合并前两个数据集，然后将结果与下一个数据集合并，依此类推。

{pmore2}
    {cmd:merge} 现在如果一个数据集中的变量是字符串而另一个数据集中的变量是数字，则会中止并报错，除非指定新的选项 {cmd:force}。

{pmore2}
    请参见 {manhelp merge D}。旧的 {cmd:merge} 语法继续有效。

{phang2}
2.  现有命令 {cmd:append} 有了几个新功能：1)即使内存中没有数据，它也能正常工作；2)可以在一步中追加多个文件；3)新的选项 {opt generate(newvar)} 创建一个指示观察值来源的变量，编号 0、1，...。  {cmd:append} 现在在一个数据集中的变量是字符串，而另一个是数字的情况下，将中止并报错，除非指定新的选项 {cmd:force}。请参见 {manhelp append D}。旧行为在版本控制下仍然保留。

{phang2}
3.  Stata 的默认内存分配已更改：

{phang3}
a.  Stata/SE 和 Stata/MP 现在默认分配 50 M 内存，而不是 10 M。Stata/IC 现在默认 10 M，而不是 1 M。Stata 的所需占用空间并没有增加；我们重置这些默认值是因为用户反正会重置为更大的数字。

{phang3}
b.  Stata/IC 现在默认 {cmd:matsize} 为 400，而不是 200；Stata/SE 和 Stata/MP 的默认仍然是 400。小型 Stata 的默认值现在为 100，而不是 40。

{phang2}
4.  现有命令 {cmd:order} 现可完成 {cmd:order}、{cmd:move} 和
    {cmd:aorder} 的功能；请见 {manhelp order D}。旧命令 {cmd:aorder} 和
    {cmd:move} 继续有效，但不再 documented。

{phang2}
5.  新命令 {cmd:zipfile} 和 {cmd:unzipfile} 以 zip 压缩文件格式压缩和解压缩文件和目录。请见 {manhelp zipfile D}。

{phang2}
6.  新命令 {cmd:changeeol} 将文本从一个操作系统的行尾格式转换为另一个操作系统的格式。Stata 并不关心行尾格式，但某些编辑器和其他程序会。请见 {manhelp changeeol D}。

{phang2}
7.  新命令 {cmd:snapshot} 将内存中的数据复制到磁盘并从磁盘恢复。{cmd:snapshot} 被新的数据编辑器使用。数据编辑器的一个重要功能是可以记录您交互性所做的所有更改。{cmd:snapshot} 将出现在这些日志中。
    {cmd:snapshot} 还真的是 Stata 的一条命令，因此您可以回放日志以复制以往的努力。然而，对于个人使用，更好的方法是继续使用 {cmd:preserve} 和 {cmd:restore}。
    请见 {manhelp snapshot D}。

{phang2}
8.  现在您可以从日志中复制并粘贴命令而无需删除前面的句点（点提示）！Stata 11 忽略前导的句点。

{phang2}
9.  现有命令 {cmd:notes} 新增选项 {cmd:search}、{cmd:replace} 和 {cmd:renumber}。请见 {manhelp notes D}。

{p 7 12 2}
10.
    关于值标签：

{phang3}
a.  现有命令 {cmd:label} {cmd:define} 新增选项 {cmd:replace}，
        因此您在重新定义之前不必删除值标签。

{phang3}
b.  新命令 {cmd:label} {cmd:copy} 复制值标签。

{phang3}
c.  现有命令 {cmd:label} {cmd:values} 现在允许 varlist，因此您
        可以同时标记（或取消标记）一组变量。

{pmore2}
    请见 {manhelp label D}。

{p 7 12 2}
11. 现有命令 {cmd:expand} 新增选项 
    {opt generate(newvar)}，使区分原始观察与重复观察变得更容易。请见 {manhelp expand D}。

{p 7 12 2}
12. 关于 {cmd:egen}：

{phang3}
a.  新函数 {opt rowmedian(varlist)} 返回每个观察值中 {it:varlist} 中值的中位数。

{phang3}
b.  新函数 {opt rowpctile(varlist)}{cmd:,} 
        {opt p(#)} 返回每个观察值中 {it:varlist} 中值的第 {it:#} 百分位数。

{phang3}
c.  现有函数 {opt mode(varname)} 与选项 
        {cmd:missing} 将缺失值视为一种类别。当 {cmd:version}
    设置为 {cmd:10} 或更小时，{cmd:missing} 不视缺失值为一个
        类别。

{phang3}
d.  现有函数 {opt total(exp)} 和 
        {opt rowtotal(varlist)} 新增选项 {cmd:missing}。如果某一个观察值的
        {it:exp} 或 {it:varlist} 的所有值均为缺失，则在 {it:newvar} 中
        该观察值将被设为缺失。

{pmore2} 请见 {manhelp egen D}。

{p 7 12 2}
13. 现有命令 {cmd:copy} 现在允许将文件复制到目录中
    而不必输入两次文件名；请见 {manhelp copy D}。

{p 7 12 2}
14. 现有命令 {cmd:clear} 现在允许 {cmd:clear} {cmd:matrix} 清除
    所有 Stata 矩阵（与 Mata 矩阵区分开）；请见
    {manhelp clear D}。

{p 7 12 2}
15. 现有命令 {cmd:outfile} 现在将日期变量作为字符串而非其底层数值导出。
    在版本控制下，旧行为被恢复。请见 {manhelp outfile D}。

{p 7 12 2}
16.
    现有命令 {cmd:reshape} 现在在从长到宽转换时保留变量和值标签，并在从宽到长转换时恢复变量和值标签。因此 {cmd:i} 变量的值标签和变量标签，在长格式存在但在宽格式不存在，能够在从宽转换回长时恢复。{cmd:xij} 变量的值标签同样也恢复。  
    先前的行为在 {cmd:version} 为 {cmd:10} 或更早时被保留。请见 {manhelp reshape D}。

{p 7 12 2}
17.
    现有命令 {cmd:collapse} 现在允许新的统计量 {cmd:semean}、{cmd:sebinomial} 和 {cmd:sepoisson} 以获得均值的标准误差。请见 {manhelp collapse D}。

{p 7 12 2}
18.
    现有命令 {cmd:destring} 允许新的选项 {cmd:dpcomma} 将以逗号作为小数点的数字的字符串表示形式转换为数值形式。请见 {manhelp destring D}。

{p 7 12 2}
19. 关于现有命令 {cmd:odbc}：

{phang3}
a.  {cmd:odbc} {cmd:insert} 现在使用参数化插入，从而更快。

{phang3}
b.  {cmd:odbc} {cmd:load} 和 {cmd:odbc}
                {cmd:insert} 的对话框现在可以存储 Stata 会话的数据源用户 ID 和密码。

{phang3}
c.  {cmd:odbc} {cmd:query} 有新的选项 {cmd:verbose} 和
                {cmd:schema}。{cmd:verbose} 列出任何数据源别名、
                昵称、类型表、类型视图和视图以及表，以便从这些表类型中加载数据。 
                {cmd:schema} 列出返回模式信息的数据源的模式名称及其表名。

{phang3}
d.  {cmd:odbc} {cmd:insert} 有一个新对话框。

{phang3}
e.  现有选项 {cmd:dsn()} 现在允许数据源的长度达到 499 个字符。

{phang3}
f.  {cmd:odbc} 现在直接报告驱动程序错误。之前，
                {cmd:odbc} 会先发出错误 "ODBC error; type
                -set debug on- and rerun command to see extended error
                information" 当 ODBC 驱动程序发出错误时。

{phang3}
g.  {cmd:odbc}，与 {cmd:set} {cmd:debug} {cmd:on} 一同使用，
                出于安全原因不再显示连接数据源时所用的数据源名称、
                用户 ID 和密码。

{pmore2}
请见 {manhelp odbc D}。

{p 7 12 2}
20.  新函数 {cmd:strtoname()} 将通用字符串转换为符合 Stata 命名规范的字符串。
        此外，现有函数
        {cmd:lower()},
        {cmd:ltrim()},
        {cmd:proper()},
        {cmd:reverse()},
        {cmd:rtrim()} 和
        {cmd:upper()}
        现在都有同义词
        {cmd:strlower()},
        {cmd:strltrim()},
        ... 和
        {cmd:strupper()}。
        两组名称同样有效。
        请见 {helpb string functions:[FN] String functions}。

{p 7 12 2}
21.  新函数 {cmd:soundex()} 返回名称的 soundex 代码，
        由一个字母和三个数字组成。新函数
        {cmd:soundex_nara()} 返回名称的美国人口普查 soundex，
        也由一个字母和三个数字组成，但采用不同的算法。
        请见 {helpb string functions:[FN] String functions}。

{p 7 12 2}
22.  新函数 {cmd:sinh()}、{cmd:cosh()}、{cmd:asinh()} 和
        {cmd:acosh()} 加入了现有函数 {cmd:tanh()} 和 {cmd:atanh()}，
        提供双曲函数。
        请见 {helpb trig functions:[FN] Trigonometric functions}。

{p 7 12 2}
23.  新函数
        {cmd:binomialp()};
        {cmd:hypergeometric()} 和 {cmd:hypergeometricp()};
        {cmd:nbinomial()}, {cmd:nbinomialp()} 和 {cmd:nbinomialtail()};
        以及
        {cmd:poisson()}, {cmd:poissonp()} 和 {cmd:poissontail()}
        提供二项式、超几何、负二项式和泊松分布的分布和概率质量。
        请见 {helpb stat functions:[FN] Statistical functions}。

{p 7 12 2}
24.  新函数
        {cmd:invnbinomial()} 和 {cmd:invnbinomialtail()}，以及
        {cmd:invpoisson()} 和 {cmd:invpoissontail()}
        提供负二项式和泊松分布的逆。
        请见 {helpb stat functions:[FN] Statistical functions}。

{p 7 12 2}
25.  现有函数 {cmd:normal()} 和
        {cmd:lnnormal()} 的算法得到了改进，分别提升到了 60% 和 75% 的运算效率，同时仍保持等效的双精度结果。

{p 7 12 2}
26.  新函数
        {cmd:rbeta()},
        {cmd:rbinomial()},
        {cmd:rchi2()},
        {cmd:rgamma()},
        {cmd:rhypergeometric()},
        {cmd:rnbinomial()},
        {cmd:rnormal()},
        {cmd:rpoisson()} 和
        {cmd:rt()}
        为 beta、binomial、chi-squared、gamma、hypergeometric、
        negative binomial、normal、Poisson 和 Student's t 分布生成随机变量。
        旧函数 {cmd:uniform()} 已重命名为 {cmd:runiform()}，
        但 {cmd:uniform()} 仍然有效。

{pmore2}
因此，所有随机变量函数均以 {cmd:r} 开头。

{pmore2}
        请见 {helpb random number functions:[FN] Random-number functions}。

{p 7 12 2}
27.  现有命令 {cmd:drawnorm} 现在使用新函数
        {cmd:rnormal()} 生成随机变量。当 {cmd:version} 设置为
        {cmd:10} 或更早时，{cmd:drawnorm} 恢复使用
        {cmd:invnormal(uniform())}。
        请见 {helpb random number functions:[FN] Random-number functions}。

{p 7 12 2}
28.  现有命令 {cmd:describe} 现在在格式化输出时遵循结果窗口的宽度；请见 {manhelp describe D}。

{p 7 12 2}
29.  现有命令 {cmd:renpfix} 现在返回在 {cmd:r(varlist)} 中更改的变量列表；
        见 {cmd:[D] rename}。

{p 7 12 2}
30.  现有命令 {cmd:impute} 仍然可以使用，但现在不再记录。它已被新的多重插补命令 {cmd:mi} 替代。请见
        {mansection MI Intro:{it:多重插补参考手册}}。


    {title:统计（通用）中的新功能}

{phang2}
1.
    此版本的亮点是与统计相关的，即因子变量。我们已经对此进行了大量讨论。您将无法避免它们。您将不想避开它们。请见
    {findalias frfvvarlists}。

{phang2}
2.
    新的后续命令 {cmd:margins} 也是此版本的亮点。{cmd:margins} 估计边际和边际效应。包括估计的边际均值、最小二乘均值、平均和条件边际及部分效应、平均和条件调整预测、预测边际等。我们敦促您阅读
    {manhelp margins R}。

{pmore2}
    {cmd:margins} 替代了旧命令 {cmd:mfx} 和 {cmd:adjust}。{cmd:mfx}
    和 {cmd:adjust} 不再记录，但在版本控制下仍然可用。

{phang2}
3.
    新命令 {cmd:mi} 执行多重插补；见 
    {manhelp mi_intro MI:intro}。

{phang2}
4.
    新命令 {cmd:misstable} 制作表格，帮助您理解数据中缺失值的模式；见 {manhelp misstable R} 和
    {manhelp mi_misstable MI:mi misstable}。

{phang2}
5. 
    新命令 {cmd:gmm} 实现广义矩估计量。
    {cmd:gmm} 允许线性和非线性模型；允许一步、两步和迭代估计量；同时支持横截面、时间序列和面板数据，并允许面板风格的工具变量。拟合模型时，只需写出矩的表达式即可。请见 {manhelp gmm R}。

{phang2}
6.
    有关因子变量的内容：

{phang3}
a.
        几乎所有的估计命令都可以指定因子变量（见下面项目 6g）。

{phang3}
b.
        如果估计命令与因子变量兼容，则相应的后续命令也是如此。如果后续命令接受或要求 varlist，可以指定因子变量。

{phang3}
c.
        可以在现有命令 {cmd:list} 和 {cmd:summarize} 中指定因子变量。

{phang3}
d.
        允许因子变量的命令也允许影响输出方式的新选项：
		{cmd:vsquish}、 
		{cmd:baselevels}、
        	{cmd:allbaselevels}、 
		{cmd:noemptycells} 和
		{cmd:noomitted}。
        许多与因子变量兼容的命令，例如 {cmd:estat} {cmd:summarize}、{cmd:estat} {cmd:vce} 等，也允许上述选项。估计命令还允许新的选项 {cmd:coeflegend}。请参见
        {manhelp estimation_options R:estimation options}。

{pmore3}
        {cmd:coeflegend} 在您希望使用 {cmd:_b[]} 或 {cmd:_se[]} 个别访问系数或标准误差时非常有用，例如在您使用 {cmd:lincom}、{cmd:nlcom} 或 {cmd:test} 时。{cmd:coeflegend} 提供您需要输入的内容。

{pmore3}
	{cmd:vsquish} 减少显示结果时使用的垂直空白。

{pmore3}
        Stata 以前会因共线性而减少协变量，然后再进行估计。现在处理方式有所不同。Stata 因三个原因而去掉变量：1）因为它们是因子的基线水平，2）对应于数据缺失的交互的级别，以及 3）真正的共线性。现在这些情况被分别识别。

{pmore3}
	新选项 {cmd:baselevels} 指示在主效应中报告原因 1。

{pmore3}
	新选项 {cmd:allbaselevels} 指示在所有项中报告原因 1。

{pmore3}
	新选项 {cmd:noemptycells} 指示不报告原因 2。

{pmore3}
	新选项 {cmd:noomitted} 指示不报告原因 3。

{phang3}
e.
        新命令 {cmd:fvset} 允许您为可以在数据集中记录的变量指定默认基准水平和设计设置，这样可以从一个会话记住到下一个会话；见 {manhelp fvset R}。

{phang3}
f.
        新命令 {cmd:set} {cmd:emptycells} {cmd:drop} 指定所有估计命令去掉与空单元相关的协变量。默认选项是 {cmd:set} {cmd:emptycells} {cmd:keep}。如果您有足够的内存，最好保留协变量，因为这时新的后续命令 {cmd:margins} 可以更好地识别不可估计性。

{phang3}
g.
    	因子变量可以与以下估计命令一起使用：
	{cmd:anova}、 
	{cmd:areg}、 
	{cmd:binreg}、 
	{cmd:biprobit}、 
	{cmd:blogit}、 
	{cmd:bootstrap}、 
	{cmd:bprobit}、 
	{cmd:clogit}、 
	{cmd:cloglog}、 
	{cmd:dfactor}、 
	{cmd:dvech}、 
	{cmd:eivreg}、 
	{cmd:frontier}、 
	{cmd:glm}、 
	{cmd:glogit}、 
	{cmd:gnbreg}、 
	{cmd:gprobit}、 
	{cmd:heckman}、 
	{cmd:heckprob}、 
	{cmd:hetprob}、 
	{cmd:intreg}、 
	{cmd:ivprobit}、 
	{cmd:ivregress}、 
	{cmd:ivtobit}、
	{cmd:jackknife}、 
	{cmd:logistic}、 
	{cmd:logit}、 
	{cmd:manova}、 
	{cmd:mlogit}、 
	{cmd:mprobit}、 
	{cmd:mvreg}、 
	{cmd:nbreg}、 
	{cmd:newey}、 
	{cmd:ologit}、 
	{cmd:oprobit}、 
	{cmd:poisson}、 
	{cmd:prais}、 
	{cmd:probit}、 
	{cmd:reg3}、 
	{cmd:regress}、 
	{cmd:rologit}、 
	{cmd:rreg}、 
	{cmd:scobit}、 
	{cmd:slogit}、 
	{cmd:sspace}、 
	{cmd:stcox}、 
	{cmd:streg}、 
	{cmd:sureg}、 
	{cmd:svy}、 
	{cmd:tobit}、 
	{cmd:treatreg}、 
	{cmd:truncreg}、 
	{cmd:xtcloglog}、
	{cmd:xtfrontier}、 
	{cmd:xtgee}、 
	{cmd:xtgls}、 
	{cmd:xtintreg}、 
	{cmd:xtivreg}、 
	{cmd:xtlogit}、 
	{cmd:xtmelogit}、 
	{cmd:xtmepoisson}、 
	{cmd:xtmixed}、 
	{cmd:xtnbreg}、 
	{cmd:xtpcse}、 
	{cmd:xtpoisson}、 
	{cmd:xtprobit}、 
	{cmd:xtrc}、 
	{cmd:xtreg}、 
	{cmd:xtregar}、 
	{cmd:xttobit}、 
	{cmd:zinb}、 
	{cmd:zip}、 
	{cmd:ztnb} 和
	{cmd:ztp}。

{phang2}
7.
    {cmd:anova} 和 {cmd:manova} 现在使用 Stata 新的因子变量
    语法，这意味着新的估计和后续功能，并且在输入语句上有一些变化。

{phang3}
a.
        在其他估计命令中，协变量假定是连续的，除非在变量名之前指定了 {cmd:i.}。在 {cmd:anova}
        和 {cmd:manova} 中，协变量假定为因子，除非指定了 {cmd:c.}。

{phang3}
b.
	为了形成交互，您现在使用 {it:varname}{cmd:#}{it:varname} 而不是 {it:varname}{cmd:*}{it:varname}。现在 {cmd:*} 表示变量名扩展。{cmd:|} 符号继续用于指示嵌套。

{phang3}
c.
	现在可以指定 {it:varname1}{cmd:##}{it:varname2} 来指示完整的因子布局，即 {it:varname1} {it:varname2} 
	{it:varname1}{cmd:#}{it:varname2}。
        您可以使用 
	{it:varname1}{cmd:##}{it:varname2}{cmd:##}{it:varname3}
        来形成三维因子布局，依此类推。

{phang3}
d.
        不再允许负值和非整数的分类变量级别。选项 {cmd:category()}、 {cmd:class()} 和
	{cmd:continuous()} 不再被允许；相反，因子变量表示法 {cmd:i.} 和 {cmd:.} 被使用以处理可能出现的歧义。

{phang3}
e.
        报告选项 {cmd:regress} 不再被允许。要重新显示结果，请在 {cmd:anova} 之后使用 {cmd:regress} 命令，或在 {cmd:manova} 之后使用 {cmd:mvreg} 命令。

{phang3}
f. 
        选项 {cmd:detail} 不再被允许或必要。{cmd:anova} 和 {cmd:manova} 生成的输出是自解释的，如果您需要因子级信息，可以使用 {cmd:regress} 或 {cmd:mvreg}。

{phang3}
g.
        选项 {cmd:noanova} 不再被允许。要抑制输出，在命令前键入 {cmd:quietly}，就像您在其他任何估计命令中所做的那样。

{phang3}
h.
        新选项 {cmd:dropemptycells} 使得 {cmd:anova} 和 {cmd:manova} 更加节省空间，去掉 {cmd:e(b)} 和 {cmd:e(V)} 中没有观察值的交互项。缺点是新的后续命令 {cmd:margins} 将无法识别不可推断性并发出适当警告；见 {manhelp margins R}。

{phang3}
i.
        现在以下后续命令在 {cmd:anova} 之后与在 {cmd:regress} 后一样有效：
	{cmd:dfbeta}、 
	{cmd:estat} {cmd:imtest}、 
	{cmd:estat} {cmd:szroeter}、
	{cmd:estat} {cmd:vif}、
	{cmd:hausman}、 
	{cmd:lrtest}、 
	{cmd:margins}、 
	{cmd:predictnl}、 
	{cmd:nlcom}、 
	{cmd:suest}、 
	{cmd:testnl} 和 
	{cmd:testparm}。
        现在也允许完整的 {cmd:estat} {cmd:hettest} 语法。

{phang3}
j.
        现在以下后续命令在 {cmd:manova} 之后与在 {cmd:mvreg} 后一样有效：
	{cmd:margins}、 
	{cmd:nlcom}、 
	{cmd:predictnl} 和
	{cmd:testnl}。

{phang3}
k.
        现有命令 {cmd:test} 在 {cmd:anova} 之后使用时，现在允许 {cmd:regress} 之后的所有语法，同时继续允许 {cmd:anova} 的特殊语法。

{phang3}
l.
        现有命令 {cmd:test} 在 {cmd:manova} 之后使用时，允许 {cmd:mvreg} 之后的所有语法，同时继续允许 {cmd:manova} 的特殊语法。

{pmore2}
        旧 {cmd:anova} 和 {cmd:manova} 语法在版本控制下继续有效。请见 {manhelp anova R} 和 {manhelp manova MV}。

{phang2}
8.
    关于 {cmd:bootstrap} 和 {cmd:jackknife} 前缀命令：

{phang3}
a.
	它们现在可以与 {cmd:anova} 和 {cmd:manova} 一起使用。

{phang3}
b.
        {cmd:bootstrap} 的新选项 {cmd:jackknifeopts()} 允许将选项传递给 {cmd:jackknife} 以计算 BCa 置信区间的加速值。

{phang3}
c.
        {cmd:bootstrap} 不再覆盖宏 {cmd:e(version)}，该命令在被前缀时保存。

{phang2}
9.
    关于分数多项式回归：

{phang3}
a.  现有命令 {cmd:fracpoly} 和 {cmd:mfp} 具有新语法。它们现在是前缀命令，因此您键入 
        {cmd:fracpoly,} ... {cmd:} {it:estimation_command} 
	和 
	{cmd:mfp,} ... {cmd::} {it:estimation_command}。
	旧语法继续被理解。

{phang3}
b.  {cmd:fracpoly}、{cmd:mfp} 和 {cmd:fracgen} 使用的选项 {cmd:adjust()} 已重命名为 {cmd:center()}。旧选项继续被理解。

{phang3}
c.  {cmd:fracpoly} 现在可以与 {cmd:intreg} 一起使用；见 {manhelp intreg R}。

{phang3}
d.  {cmd:mfp} 现在可以与 {cmd:intreg} 一起使用；见 {manhelp intreg R}。

{pmore2}
    请见 {manhelp fracpoly R} 和 {manhelp mfp R}。

{p 7 12 2}
10.
    关于现有命令 {cmd:estimates}：

{phang3}
a.
        {cmd:estimates} {cmd:save} 新增选项 {cmd:append}，允许将结果附加到现有文件。请见
        {manhelp estimates_save R:estimates save}。

{phang3}
b.
        {cmd:estimates} {cmd:use} 和 {cmd:estimates} {cmd:describe}
	{cmd:using} 新增选项 {opt number(#)}，用于指定要使用或描述的结果。请见 
        {manhelp estimates_save R:estimates save} 和
        {manhelp estimates_describe R:estimates describe}。

{phang3}
c.
        {cmd:estimates} {cmd:table} 现在支持因子变量和时间序列操作变量，并支持新选项 
	{cmd:vsquish}、 
	{cmd:noomitted}、 
	{cmd:baselevels}、 
	{cmd:allbaselevels} 和 {cmd:noemptycells}； 
	见 {manhelp estimates_table R:estimates table}。

{p 7 12 2}
11.
    关于现有估计命令 {cmd:ivregress}：

{phang3}
a.  新的后续命令 {cmd:estat} {cmd:endogenous} 适用于
        {cmd:ivregress} {cmd:2sls} 和 {cmd:ivregress} {cmd:gmm}，执行
        检验内生回归变量是否可视为外生；见 {manhelp ivregress_postestimation R:ivregress postestimation}。

{phang3}
b.  新选项 {cmd:perfect} 用于 {cmd:ivregress} {cmd:2sls} 和
        {cmd:ivregress} {cmd:gmm}，允许完美工具；它跳过
        检查内生回归变量是否与排除的工具变量共线（见 {manhelp ivregress R}）。

{p 7 12 2}
12.
    关于 {cmd:regress}：

{phang3}
a.
    现有后续命令 {cmd:dfbeta} 现在以不同的方式命名它创建的变量。变量现在被命名为 {cmd:_dfbeta_}{it:#}
    而不是 {cmd:DF}{it:name}。旧的命名约定在版本控制下恢复。

{phang3}
b.
    新选项 {cmd:notable} 抑制系数表的显示。

{pmore2}
    请见 {manhelp regress R}。

{p 7 12 2}
13.
     现有估计命令 {cmd:blogit}、{cmd:bprobit}、{cmd:logistic}、{cmd:logit}、{cmd:ologit}、{cmd:oprobit} 和 {cmd:probit} 现允许约束。新选项 {cmd:collinear} 指定不在模型中省略共线性变量。

{p 7 12 2}
14.
     新选项 {cmd:nocnsreport} 在估计命令上使用时抑制约束的显示。见
      {manhelp estimation_options R:estimation options}。

{p 7 12 2}
15.
    现有命令 {cmd:pcorr} 现在可以计算半部分相关系数；见 {manhelp pcorr R}。

{p 7 12 2}
16.
    现有命令 {cmd:pwcorr} 新增选项 {cmd:listwise}，
    以省略包含缺失值的变量的观察，从而模拟 {cmd:correlate} 对缺失值的处理，同时保持对 {cmd:pwcorr} 的所有其他功能的访问；
    见 {manhelp correlate R}。

{p 7 12 2}
17.
    现有估计命令 {cmd:glm} 现在允许选项
    {cmd:ml} 选择 {cmd:family(nbinomial} {cmd:ml)} 进行最大似然估计；见 {manhelp glm R}。

{p 7 12 2}
18.
    现有估计命令 {cmd:asmprobit} 和 {cmd:asroprobit} 有
    几项新功能：

{phang3}
a. 
        新选项 {opt factor(#)} 指定使用带有维度 {it:#} 的因素
        协方差结构。

{phang3}
b. 
        新选项 {cmd:favor(speed} {c |} {cmd:space)} 允许您设置
        速度/内存的折衷。  {cmd:favor(speed)} 是默认的。

{phang3}
c. 
        新选项 {cmd:nopivot} 指定集成时不使用区间枢轴。 
        默认情况下，程序会将区间的较宽内容转换为更高维度的多变量集成的内部。 
        尽管这提高了数值二次导数估计的精度，但结果可能造成不连续性。

{phang3}
d. 
        新的后续命令 {cmd:estat} {cmd:facweights} 指定协方差因子权重以矩阵形式显示。

{phang3}
e. 
        现有的后续命令 {cmd:estat} {cmd:correlation} 现在使用默认输出格式 {cmd:%9.4f}，而不是以前的 
        {cmd:%6.3f}。

{pmore2}
    请见 {manhelp asmprobit R}、{manhelp asroprobit R}、 
     {manhelp asmprobit_postestimation R:asmprobit postestimation}，
     和 {manhelp asroprobit_postestimation R:asroprobit postestimation}。

{p 7 12 2}
19.
     {cmd:biprobit} 指定时，带选项 {cmd:constraints()} 现在在拟合比较模型时应用这些约束。因此，我们
     现在可以报告比较模型测试的似然比 (LR) 测试，而不是瓦尔德测试。要获得瓦尔德比较测试，在拟合模型后键入 {cmd:test} {cmd:[athrho]_cons}。

{p 7 12 2}
20.
    现有质量控制命令 {cmd:cchart}、{cmd:pchart}、{cmd:rchart}、
    {cmd:xchart} 和 {cmd:shewhart} 新增选项 {cmd:nograph}，抑制图形的显示。这些命令现在也在 {cmd:r()} 中返回显示图表的相关值。此外，{cmd:pchart} 新增选项 {cmd:generate()}，将图表中绘制的变量保存。见 {manhelp qc R}。

{p 7 12 2}
21.
    在 {cmd:mlogit}、{cmd:mprobit}、{cmd:ologit}、 
    {cmd:oprobit} 和 {cmd:slogit} 之后使用的 {cmd:predict} 现在默认预测观察到第一个结果的概率。之前，需要使用 {cmd:outcome()} 选项。

{p 7 12 2}
22.
    现有估计命令 {cmd:reg3} 现在在指定约束时默认报告大样本统计，而不论所用的估计量。

{p 7 12 2}
23.
    当前有多个估计命令接受现有的收敛标准选项 {opt nrtolerance(#)} 和 {cmd:nonrtolerance}。
    命令包括 {cmd:blogit}、{cmd:factor}、
    {cmd:logit}、{cmd:mlogit}、{cmd:ologit}、{cmd:oprobit}、{cmd:probit}、
    {cmd:rologit}、{cmd:stcox} 和 {cmd:tobit}。默认选项为
    {cmd:nrtolerance(1e-5)}。

{p 7 12 2}
24.
    现有估计命令 {cmd:exlogistic} 和 {cmd:expoisson} 允许选项 {cmd:memory()} 超过 512 MB；见 {manhelp exlogistic R}
    和 {manhelp expoisson R}。

{p 7 12 2}
25.
    现有命令 {cmd:ssc} 从统计软件组件存档获取用户编写的软件，现新增语法 {cmd:ssc} {cmd:hot} 列出下载最多的提交；见 {manhelp ssc R}。


    {title:纵向数据/面板数据中的新功能}

{phang2}
1.  
    新命令 {cmd:xtunitroot} 执行 Levin-Lin-Chu、
    Harris-Tzavalis、Breitung、Im-Pesaran-Shin、
    Fisher-type 和 Hadri 拉格朗日乘数单位根检验，适用于面板数据。 见 {manhelp xtunitroot XT}。

{phang2}
2.
    关于现有估计命令 {cmd:xtmixed}：

{phang3}
a.  
        {cmd:xtmixed} 现在允许线性混合模型的残差误差结构建模。五种结构可用：独立、可交换、自动回归 (AR)、移动平均 (MA) 和无结构。使用新选项 {cmd:residuals()}。在 {cmd:residuals()} 中，您还可以指定子选项
        {opt by(varname)} 来获得上述结构的异方差版本。例如，指定 {cmd:residuals(independent,}
	{cmd:by(sex))} 将为男性和女性分别估计不同的残差方差。

{phang3}
b.  
        {cmd:xtmixed} 现在具有新选项 {cmd:matlog} 和 {cmd:matsqrt}，分别指定矩阵平方根和矩阵对数协方差分量参数化。以前，{cmd:xtmixed} 仅支持矩阵对数参数化。现在 {cmd:xtmixed}
	supports 两种参数化，默认设置变更为 {cmd:matsqrt}。以前的默认行为在版本控制下保留。

{phang3}
c.
	{cmd:xtmixed} 现在支持时间序列操作符。

{pmore2}
    见 {manhelp xtmixed XT}。

{phang2}
3.
    在 {cmd:xtmixed} 之后的 {cmd:predict} 现在允许新选项 {cmd:reses} 以获得预测随机效应的标准误差
    （最优线性无偏预测）。
    见 {manhelp xtmixed_postestimation XT:xtmixed postestimation}。

{phang2}
4.  关于现有估计命令 {cmd:xtreg}：

{phang3}
a.  指定 {cmd:xtreg,} {cmd:re} {cmd:vce(robust)} 现在与
               {cmd:xtreg,} {cmd:re} {cmd:vce(cluster}
               {it:panelvar}{cmd:} 意思相同。新解释对更广泛的偏差类别具有鲁棒性。旧解释在版本控制下可用。

{phang3}
b.  同样，指定 
               {cmd:xtreg,} {cmd:fe} {cmd:vce(robust)} 现在与
               {cmd:xtreg,} {cmd:fe} {cmd:vce(cluster}
               {it:panelvar}{cmd:)} 意义相同，这与 Stock 和 Watson (2008) 的新结果一致。

{phang3}
c.  {cmd:xtreg} 现在允许 {cmd:in} {it:range} 限定符。  

{pmore2}
见 {manhelp xtreg XT}。

{phang2}
5.  所有 xt 估计命令现在允许 Stata 新的因子变量 varlist 表示法，除了命令 
        {cmd:xtabond}、 
        {cmd:xtdpd}、 
        {cmd:xtdpdsys} 和 
        {cmd:xthtaylor}。
        见 {findalias frfvvarlists}。  
        此外，估计命令允许标准的因子变量相关报告选项集；见 
        {manhelp estimation_options R:estimation options}。

{phang2}
6.  新的后续命令 {cmd:margins} 在所有 xt 估计命令之后可用；见 {manhelp margins R}。

{phang2}
7.  关于现有估计命令 {cmd:xtmelogit} 和 {cmd:xtmepoisson}：

{phang3}
a.  它们有新选项 {cmd:matsqrt}，允许您显式指定默认的矩阵平方根参数化。

{phang3}
b.  它们现在支持时间序列操作符。

{pmore2}
见 {manhelp xtmelogit XT} 和 {manhelp xtmepoisson XT}。

{phang2}
8.  自 Stata 10.1 起，现有估计命令 
        {cmd:xtmixed}、 {cmd:xtmelogit} 和 {cmd:xtmepoisson} 
        要求随机效应规格包含显式水平变量（或 {cmd:_all}）后跟冒号。以前，如果省略这些，则假定级别规格为 {cmd:_all:}，在省略冒号时会引起混淆。为了避免这种混淆，省略冒号现在会产生错误，而旧行为在版本控制下保持不变。

{phang2}
9.  现有命令 {cmd:xttab} 现在返回 {cmd:r(results)} 中的结果矩阵和 {cmd:r(n)} 中的面板数。
        请见 {manhelp xttab XT}。


    {title:时间序列统计中的新功能}

{phang2}
1.
    新估计命令 {cmd:sspace} 通过最大似然拟合线性状态空间模型。在状态空间模型中，因变量是未观察到的状态和观察到的外生变量的线性函数。这包括 VARMA、结构性时间序列、某些线性动态和某些随机一般均衡模型。{cmd:sspace} 可以估计平稳和非平稳模型。见 {manhelp sspace TS}。

{phang2}
2.
    新估计命令 {cmd:dvech} 估计对角 vech 多元 GARCH 模型。这些模型允许因变量的条件方差矩阵遵循灵活的动态结构，其中当前条件方差矩阵的每个元素都取决于其自身的过去和过去的冲击。见 {manhelp dvech TS}。

{phang2}
3.  
    新估计命令 {cmd:dfactor} 估计动态因子模型。这些模型允许因变量和未观察到的因子变量具有向量自回归 (VAR) 结构，并线性函数外生变量。见 {manhelp dfactor TS}。

{phang2}
4.  估计命令 
        {cmd:newey}、
        {cmd:prais}、
        {cmd:sspace}、
        {cmd:dvech} 和 
        {cmd:dfactor}
        允许 Stata 的新因子变量 varlist 表示法； 
        见 {findalias frfvvarlists}。
        此外，这些估计命令允许标准的因子变量相关报告选项集； 
        见 {manhelp estimation_options R:estimation options}。

{phang2}
5.  新后续命令 {cmd:margins}，计算边际均值、预测边际、边际效应和平均边际效应，在 
        {cmd:arch}、
        {cmd:arima}、
        {cmd:newey}、
        {cmd:prais}、
        {cmd:sspace}、
        {cmd:dvech} 和 
        {cmd:dfactor} 之后可用。
        见 {manhelp margins R}。

{phang2}
6.  新显示选项 {cmd:vsquish} 适用于估计命令，允许您控制输出中包含时间序列操作符或因子变量的空隙，适用于所有时间序列估计命令。见
         {manhelp estimation_options R:estimation options}。

{phang2}
7.  新显示选项 {cmd:coeflegend} 适用于估计命令，显示系数图例，说明如何在表达式中指定它们，适用于所有时间序列估计命令。
          见 {manhelp estimation_options R:estimation options}。

{phang2}
8.  在 {cmd:regress} 之后的 {cmd:predict} 现在允许在选项 {cmd:dfbeta()} 中使用时间序列操作符；见
        {manhelp regress_postestimation R:regress postestimation}。也允许时间序列操作符的有 {cmd:regress} 后续命令
        {cmd:estat} {cmd:szroeter}、{cmd:estat} {cmd:hettest}、{cmd:avplot}、
        和 {cmd:avplots}。见 
        {manhelp regress_postestimation R:regress postestimation}。

{phang2}
9.  现有估计命令 {cmd:mlogit}、{cmd:ologit} 和
       {cmd:oprobit} 现在允许时间序列操作符；见 
       {manhelp mlogit R}、{manhelp ologit R} 和 {manhelp oprobit R}。

{p 7 12 2}
10.  现有估计命令 {cmd:arch} 和 {cmd:arima} 现在接受最大化选项 {cmd:showtolerance}；见 {manhelp maximize R}。

{p 7 12 2}
11.  现有估计命令 {cmd:arch} 现在允许您拟合假设扰动遵循学生 t 分布或广义误差分布，此外还有高斯（正态）分布。使用选项 {cmd:distribution()} 指定使用哪种分布。您可以指定形状或自由度参数，或者允许 {cmd:arch} 和其他模型的其他参数进行估计。见 {manhelp arch TS}。

{p 7 12 2}
12.  现有命令 {cmd:tsappend} 现在更快。 
        见 {manhelp tsappend TS}。

    {title:生存分析中的新功能}

{phang2}
1.
    Stata 新的 {cmd:stcrreg} 命令拟合竞争风险回归模型。
    在竞争风险模型中，受试者因两种或更多独立且可能相关的原因处于失败风险中。见 {manhelp stcrreg ST}。
    现有命令 {cmd:stcurve} 现在将根据 {cmd:stcrreg} 绘制累积发生函数；见 {manhelp stcurve ST}。

{phang2}
2.
    Stata 的新多重插补功能可以与 {cmd:stcox}、{cmd:streg} 和 {cmd:stcrreg} 一起使用；见 {manhelp mi_intro MI:intro}。

{phang2}
3.  现在可以与 {cmd:stcox}、{cmd:streg} 和 {cmd:stcrreg} 一起使用因子变量。  
    见 {findalias frfvvarlists}。

{phang2}
4.  新的后续命令 {cmd:margins}，计算边际均值、预测边际、边际效应和平均边际效应，在 
        {cmd:stcox}、
        {cmd:streg} 和
        {cmd:stcrreg} 后可用。
        请见 {manhelp margins R}。

{phang2}
5.  新报告选项 {cmd:baselevels} 和 {cmd:allbaselevels}
    控制因子变量基准水平在输出表中显示的方式。
    新报告选项 {cmd:noemptycells} 控制交互中的缺失单元是否显示。  

{pmore2}
这些新选项由估计命令 {cmd:stcox}、{cmd:streg} 和 {cmd:stcrreg} 以及现有后续命令 {cmd:estat} {cmd:summarize} 和 {cmd:estat} {cmd:vce} 支持。见
    {manhelp estimation_options R:estimation options}。

{phang2}
6.  新报告选项 {cmd:noomitted} 控制因共线性而被丢弃的协变量是否在输出表中报告。默认情况下，Stata 现在在估计和相关输出表中包括一行用于共线性协变量，并将这些协变量标记为 "(忽略)"。
    {cmd:noomitted} 抑制这些行。  

{pmore2}
{cmd:noomitted} 由估计命令 {cmd:stcox}、{cmd:streg} 和 {cmd:stcrreg} 以及现有后续命令 {cmd:estat summarize} 和 {cmd:estat vce} 支持。见 
    {manhelp estimation_options R:estimation options}。

{phang2}
7.  新选项 {cmd:vsquish} 消除估计和相关表中的空白行。许多输出表现在用空行将因子变量和时间序列变量分隔开。{cmd:vsquish} 去除这些行。  

{pmore2}
{cmd:vsquish} 由估计命令 {cmd:stcox}、{cmd:streg} 和 {cmd:stcrreg} 以及现有后续命令 {cmd:estat summarize} 支持。见
     {manhelp estimation_options R:estimation options}。

{phang2}
8.  估计命令 {cmd:stcox}、{cmd:streg} 和 {cmd:stcrreg}
    支持新选项 {cmd:coeflegend} 显示系数图例，而不是系数表。图例显示您如何在表达式、测试命令或约束定义中输入系数。见 {manhelp estimation_options R:estimation options}。

{phang2}
9.  估计命令 {cmd:streg} 和 {cmd:stcrreg}
    支持新选项 {cmd:nocnsreport} 抑制报告约束；见 {manhelp estimation_options R:estimation options}。

{p 7 12 2}
10.  关于 {cmd:predict}：

{phang3}
a.  在 {cmd:stcox} 之后使用的 {cmd:predict} 提供三种新的影响诊断度量：DFBETAs、似然位移值和LMAX统计量。见 
         {manhelp stcox_postestimation ST:stcox postestimation}。

{phang3}
b.  在 {cmd:stcox} 之后的 {cmd:predict} 现在可以计算诊断
              统计量 
              {cmd:basesurv()}、 
              {cmd:basechazard()}、 {cmd:basehc()}、 {cmd:mgale()}、 
              {cmd:effects()}、 {cmd:esr()}、 {cmd:schoenfeld()} 和
              {cmd:scaledsch()}。
              之前，您必须在拟合模型时通过在 {cmd:stcox}
              命令中指定选项来请求这些统计量。现在您通过在
              估计之后使用 {cmd:predict} 获得它们。选项继续在 {cmd:stcox} 
              中直接有效，但不再记录。 
              见 {manhelp stcox_postestimation ST:stcox postestimation}。

{phang3}
c.  在 {cmd:stcox} 和 {cmd:streg} 之后的 {cmd:predict} 现在默认生成受试者级别的残差。之前生成的是记录级别或部分结果，尽管存在不一致性。此更改仅影响多记录数据，因为在单记录数据中，受试者级别和部分残差之间没有区别。此更改影响 {cmd:predict} 的选项 {cmd:mgale}、 {cmd:csnell}、
{cmd:deviance} 和 {cmd:scores}（以及新选项 {cmd:ldisplace}、 {cmd:lmax} 和 {cmd:dfbeta}）；
              在 {cmd:streg} 之后也影响 {cmd:mgale} 和 {cmd:deviance}。 {cmd:predict,} {cmd:deviance} 是不一致性；它始终生成受试者级的结果。

{pmore3}
例如，在以前的 Stata 版本中，您键入

                {cmd:. predict cs, csnell}

{pmore3}
以获得部分 Cox-Snell 残差。每条记录生成一个统计量。为了获得受试者级的残差，即每个受试者生成一个统计量，{cmd:predict} 存储在每个受试者的最后一条记录中，您键入

                {cmd:. predict ccs, ccsnell}

{pmore3}
在 Stata 11 中，当您键入 

                {cmd:. predict cs, csnell}

{pmore3}
您获得的是受试者级的残差。若要获得部分，您使用新的 {cmd:partial} 选项：

                {cmd:. predict cs, csnell partial}

{pmore3}
同样适用于所有其他残差。有关不一致性

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew10to11.sthlp>}