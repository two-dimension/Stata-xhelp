{smcl}
{* *! version 1.0.5  07apr2017}{...}
{findalias asfrfvvarlists}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 11 语言语法" "help language_zh"}{...}
{vieweralsosee "[U] 11.1.8 数字列表" "help numlist_zh"}{...}
{vieweralsosee "[U] 11.4 变量名和变量列表" "help varlist_zh"}{...}
{vieweralsosee "[U] 13.7 明确下标" "help subscripting_zh"}{...}
{viewerjumpto "描述" "fvvarlist_zh##description"}{...}
{viewerjumpto "备注" "fvvarlist_zh##remarks"}
{help fvvarlist:English Version}
{hline}{...}
{title:标题}

    {findalias frfvvarlists}


{marker description}{...}
{title:描述}

{pstd}
因子变量是现有变量列表的扩展。当命令允许因子变量时，除了输入数据中的变量名称外，您还可以输入因子变量，格式可能看起来像

{phang2}
	{cmd:i.}{it:varname}

{phang2}
	{cmd:i.}{it:varname}{cmd:#i.}{it:varname}

{phang2}
	{cmd:i.}{it:varname}{cmd:#i.}{it:varname}{cmd:#i.}{it:varname}

{phang2}
	{cmd:i.}{it:varname}{cmd:##i.}{it:varname}

{phang2}
	{cmd:i.}{it:varname}{cmd:##i.}{it:varname}{cmd:##i.}{it:varname}

{pstd}
因子变量从分类变量创建指示变量、分类变量的指示变量的交互，以及分类和连续变量的交互，以及连续变量的交互（多项式）。它们被允许与大多数估计和后续估计命令一起使用，以及其他一些命令。

{pstd}
有五个因子变量操作符：

{p2colset 10 19 21 2}{...}
{p2col:操作符} 描述{p_end}
{p2line}
{p2col:{cmd:i.}} 一元操作符，用于指定指示器{p_end}
{p2col:{cmd:c.}} 一元操作符，用于处理为连续变量{p_end}
{p2col:{cmd:o.}} 一元操作符，用于省略变量或指示器{p_end}
{p2col:{cmd:#}}  二元操作符，用于指定交互{p_end}
{p2col:{cmd:##}} 二元操作符，用于指定阶乘交互{p_end}
{p2line}
{p2colreset}{...}

{pstd}
由因子变量操作符创建的指示器和交互称为虚拟变量。它们像变量一样在变量列表中，但在数据集中不存在。

{pstd}
应用因子变量操作符的分类变量必须包含值为非负整数，且范围为0到32,740（包括）的值。

{pstd}
因子变量可以与{cmd:L.}和{cmd:F.}时间序列运算符结合使用。


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下呈现：

	{help fvvarlist##intro:基本示例}
	{help fvvarlist##bases:基准水平}
	{help fvvarlist##selecting:选择水平}
	{help fvvarlist##parens:对一组变量应用运算符}
	{help fvvarlist##video:视频示例}


{marker intro}{...}
{title:基本示例}

{pstd}
以下是运算符使用的一些示例：

{p2colset 10 28 30 2}{...}
{p2col:因子} {p_end}
{p2col:说明}结果 {p_end}
{p2line}
{p2col:{cmd:i.group}}指示器，表示{cmd:group}的水平{p_end}

{p2col:{cmd:i.group#i.sex}}表示{cmd:group}和{cmd:sex}水平每种组合的指示器，二元交互{p_end}

{p2col:{cmd:group#sex}}与{cmd:i.group#i.sex}相同

{p2col:{cmd:group#sex#arm}}表示{cmd:group}、{cmd:sex}和{cmd:arm}每种组合的指示器，三元交互{p_end}

{p2col:{cmd:group##sex}}与{cmd:i.group} {cmd:i.sex} {cmd:group#sex}相同{p_end}

{p2col:{cmd:group##sex##arm}}与{cmd:i.group} {cmd:i.sex} {cmd:i.arm} 
	{cmd:group#sex} {cmd:group#arm} {cmd:sex#arm} {cmd:group#sex#arm}相同{p_end}

{p2col:{cmd:sex#c.age}}两个变量 -- {cmd:age} 对于男性为1，其他为0，
	{cmd:age} 对于女性为1，其他为0；如果{cmd:age}也在模型中，其中一个虚拟变量将被视为基准{p_end}

{p2col:{cmd:sex##c.age}}与{cmd:i.sex} {cmd:age} {cmd:sex#c.age}相同{p_end}

{p2col:{cmd:c.age}}与{cmd:age}相同{p_end}

{p2col:{cmd:c.age#c.age}}{cmd:age}的平方{p_end}

{p2col:{cmd:c.age#c.age#c.age}}{cmd:age}的立方{p_end}
{p2line}
{p2colreset}{...}


{marker bases}{...}
{title:基准水平}

{pstd}
您可以通过使用{cmd:ib.}操作符来指定因子变量的基准水平。语法为

{p2colset 12 26 28 2}{...}
{p2col:基准}{p_end}
{p2col:操作符(*)} 描述{p_end}
{p2line}
{p2col:{cmd:ib}{it:#}{cmd:.}} 使用{it:#}作为基准，{it:#}=变量的值{p_end}
{p2col:{cmd:ib(#}{it:#}{cmd:).}} 使用第{it:#}个有序值作为基准（**）{p_end}
{p2col:{cmd:ib(first).}} 使用最小值作为基准（默认值）{p_end}
{p2col:{cmd:ib(last).}}  使用最大值作为基准{p_end}
{p2col:{cmd:ib(freq).}}  使用最频繁的值作为基准{p_end}
{p2col:{cmd:ibn.}}  无基准水平{p_end}
{p2line}
{p2colreset}{...}
{p 12 16 2}
(*) {cmd:i}可以省略。例如，您可以输入{cmd:ib2.group}或{cmd:b2.group}。
{p_end}
{p 11 16 2}
(**) 例如，{cmd:ib(#2).}意味着使用第二个值作为基准。

{pstd}
因此，如果您想在回归中将{cmd:group}=3用作基准，可以输入

	. {cmd:regress y  i.sex ib3.group}

{pstd}
您还可以通过使用{help fvset_zh}命令永久设置分类变量的基准水平。


{marker selecting}{...}
{title:选择水平}

{pstd}
您可以通过使用{cmd:i(}{it:numlist}{cmd:).}{bind: }运算符选择一范围的水平--一系列虚拟变量。

{p2colset 10 28 30 2}{...}
{p2col:示例}描述{p_end}
{p2line}
{p2col:{cmd:i2.cat}}对{cmd:cat}=2的单一指示器{p_end}

{p2col:{cmd:2.cat}}与{cmd:i2.cat}相同{p_end}

{p2col:{cmd:i(2 3 4).cat}}三个指示器，{cmd:cat}=2, 
        {cmd:cat}=3，和{cmd:cat}=4;{break}
        与{cmd:i2.cat i3.cat i4.cat}相同
{p_end}

{p2col:{cmd:i(2/4).cat}}与{cmd:i(2 3 4).cat}相同{p_end}

{p2col:{cmd:2.cat#1.sex}}当{cmd:cat}=2且{cmd:sex}=1时指示器为1，其他为0的单一指示器{p_end}

{p2col:{cmd:i2.cat#i1.sex}}与{cmd:2.cat#1.sex}相同{p_end}
{p2line}
{p2colreset}{...}

{pstd}
与其选择应包含的水平，不如使用{cmd:o.}运算符指定应省略的水平。当您在命令中使用{cmd:io(}{it:numlist}{cmd:).}{it:varname}时，{it:varname}的水平的指示器除指定的{it:numlist}以外均被包含。当省略的水平与{cmd:o.}运算符一起指定时，隐含使用{cmd:i.}运算符，并将包含{it:varname}的水平的剩余指示器。

{p2colset 10 28 30 2}{...}
{p2col:示例}描述{p_end}
{p2line}
{p2col:{cmd:io2.cat}}{cmd:cat}水平的指示器，省略{cmd:cat}=2的指示器{p_end}

{p2col:{cmd:o2.cat}}与{cmd:io2.cat}相同{p_end}

{p2col:{cmd:io(2 3 4).cat}}{cmd:cat}水平的指示器，省略三个指示器，{cmd:cat}=2，{cmd:cat}=3，以及{cmd:cat}=4{p_end}

{p2col:{cmd:o(2 3 4).cat}}与{cmd:io(2 3 4).cat}相同{p_end}

{p2col:{cmd:o(2/4).cat}}与{cmd:io(2 3 4).cat}相同{p_end}

{p2col:{cmd:o2.cat#o1.sex}}{cmd:cat}和{cmd:sex}的水平每种组合的指示器，省略{cmd:cat}=2且{cmd:sex}=1的指示器{p_end}
{p2line}
{p2colreset}{...}


{marker parens}{...}
{title:对一组变量应用运算符}

{pstd}
因子变量操作符可以通过使用括号应用于变量组。

{pstd}
在以下示例中，
变量{cmd:group}、{cmd:sex}、{cmd:arm}和{cmd:cat}是分类的，
而变量{cmd:age}、{cmd:wt}和{cmd:bp}是连续的：

{p2colset 10 36 36 2}{...}
{p2col:示例}扩展{p_end}
{p2line}
{p2col:{cmd:i.(group sex arm)}}{cmd:i.group} {cmd:i.sex} {cmd:i.arm}{p_end}

{p2col:{cmd:group#(sex arm cat)}}{cmd:group#sex} {cmd:group#arm} {cmd:group#cat}{p_end}

{p2col:{cmd:group##(sex arm cat)}}{cmd:i.group} {cmd:i.sex} {cmd:i.arm} {cmd:i.cat}
	{cmd:group#sex} {cmd:group#arm} {cmd:group#cat}{p_end}

{p2col:{cmd:group#(c.age c.wt c.bp)}}{cmd:i.group} 
	{cmd:group#c.age} {cmd:group#c.wt} {cmd:group#c.bp}{p_end}

{p2col:{cmd:group#c.(age wt bp)}}与{cmd:group#(c.age c.wt c.bp)}相同{p_end}
{p2line}
{p2colreset}{...}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=Wa1Nd9epHmY":Stata中的因子变量介绍，第1部分：基础知识}

{phang}
{browse "http://www.youtube.com/watch?v=f-tLLX8v11c":Stata中的因子变量介绍，第2部分：交互作用}

{phang}
{browse "http://www.youtube.com/watch?v=9vR9n35aX5k":Stata中的因子变量介绍，第3部分：更多交互作用}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fvvarlist.sthlp>}