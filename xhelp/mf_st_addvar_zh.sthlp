{smcl}
{* *! version 1.1.9  15may2018}{...}
{vieweralsosee "[M-5] st_addvar()" "mansection M-5 st_addvar()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] st_store()" "help mf_st_store_zh"}{...}
{vieweralsosee "[M-5] st_tempname()" "help mf_st_tempname_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_addvar_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_addvar_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_st_addvar_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_st_addvar_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_st_addvar_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_addvar_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_addvar_zh##source"}
{help mf_st_addvar:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] st_addvar()} {hline 2}}向当前 Stata 数据集添加变量
{p_end}
{p2col:}({mansection M-5 st_addvar():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real rowvector}{bind: }
{cmd:st_addvar(}{it:type}{cmd:,} {it:name}{cmd:)}

{p 8 12 2}
{it:real rowvector}{bind: }
{cmd:st_addvar(}{it:type}{cmd:,} {it:name}{cmd:,} {it:nofill}{cmd:)}


{p 8 12 2}
{it:real rowvector}
{cmd:_st_addvar(}{it:type}{cmd:,} {it:name}{cmd:)}

{p 8 12 2}
{it:real rowvector}
{cmd:_st_addvar(}{it:type}{cmd:,} {it:name}{cmd:,} {it:nofill}{cmd:)}

{p 4 4 2}
其中

{p 12 19 2}
{it:type}:  {it:string scalar} 或者 {it:rowvector} 包含 
{cmd:"byte"}, 
{cmd:"int"},
{cmd:"long"},
{cmd:"float"},
{cmd:"double"},
{cmd:"str}{it:#}{cmd:"}, 或者
{cmd:"strL"}

{p 19 19 2}
或

{p 19 19 2}
{it:real scalar} 或 {it:rowvector} 包含 {it:#}（解释为 
{cmd:str}{it:#}）

{p 12 19 2}
{it:name}:  {it:string rowvector} 包含新的变量名

{p 10 19 2}
{it:nofill}:  {it:real scalar} 包含 0 或非 0


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_addvar(}{it:type}{cmd:,} {it:name}{cmd:)}将新的变量 {it:name}(s) 
类型为 {it:type} 添加到 Stata 数据集中。返回的是新变量的索引。如果任何变量已存在或由于其他原因无法添加，{cmd:st_addvar()} 将中止并报错（且不会添加任何变量）。

{p 4 4 2}
{cmd:st_addvar(}{it:type}{cmd:,} {it:name}{cmd:,} {it:nofill}{cmd:)} 
执行相同的操作。{it:nofill}!=0 指定变量的值不填充为缺失值。 
{cmd:st_addvar(}{it:type}{cmd:,} {it:name}{cmd:, 0)} 与 
{cmd:st_addvar(}{it:type}{cmd:,} {it:name}{cmd:)} 相同。通常不推荐使用 
{it:nofill}!=0。请参阅{it:{help mf_st_addvar##remarks7:使用 nofill}} 
在下面的{it:备注}中。

{p 4 4 2}
{cmd:_st_addvar()} 的功能与 {cmd:st_addvar()} 相同，除了如果无法添加新变量而没有中止并报错，
返回的是一个 1 {it:x} 1 的标量，包含相应的 Stata 返回码的负值。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 st_addvar()备注和示例:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题呈现：

	{help mf_st_addvar##remarks1:创建新变量}
	{help mf_st_addvar##remarks2:创建新变量}
	{help mf_st_addvar##remarks3:创建新字符串变量}
	{help mf_st_addvar##remarks4:创建新临时变量}
	{help mf_st_addvar##remarks5:创建临时变量}
	{help mf_st_addvar##remarks6:处理错误}
	{help mf_st_addvar##remarks7:使用 nofill}


{marker remarks1}{...}
{title:创建新变量}

{p 4 4 2}
要创建新变量 {cmd:myvar} 类型为 {cmd:double}，代码为 

	{cmd:idx = st_addvar("double", "myvar")}

{p 4 4 2}
或者

	{cmd:(void) st_addvar("double", "myvar")}

{p 4 4 2}
如果您随后需要变量的索引号，请使用第一种形式，否则使用第二种形式。


{marker remarks2}{...}
{title:创建新变量}

{p 4 4 2}
您可以添加多个变量。例如，

	{cmd:idx = st_addvar("double", ("myvar1","myvar2"))}

{p 4 4 2}
将添加两个新变量，均为 {cmd:double} 类型。  

	{cmd:idx = st_addvar(("double","float"), ("myvar1","myvar2"))}

{p 4 4 2}
也将添加两个新变量，但这次 {cmd:myvar1} 为 {cmd:double}， 
{cmd:myvar2} 为 {cmd:float}。


{marker remarks3}{...}
{title:创建新字符串变量}

{p 4 4 2}
创建字符串变量与创建其他类型没有不同：

	{cmd:idx = st_addvar(("str10","str5"), ("myvar1","myvar2"))}

{p 4 4 2}
将 {cmd:myvar1} 创建为 {cmd:str10}，{cmd:myvar2} 创建为 {cmd:str5}。

{p 4 4 2}
然而，还有另一种指定类型的方法。

	{cmd:idx = st_addvar((10,5), ("myvar1","myvar2"))}

{p 4 4 2}
也将 {cmd:myvar1} 创建为 {cmd:str10}，{cmd:myvar2} 创建为 {cmd:str5}。

	{cmd:idx = st_addvar(10, ("myvar1","myvar2"))}

{p 4 4 2}
将两个变量创建为 {cmd:str10}类型。


{marker remarks4}{...}
{title:创建新临时变量}

{p 4 4 2}
函数 {cmd:st_tempname()}（见 
{bf:{help mf_st_tempname_zh:[M-5] st_tempname()}}）返回临时变量名。 
要创建一个类型为 {cmd:double} 的临时变量，代码为 

	{cmd:idx = st_addvar("double", st_tempname())}

{p 4 4 2}
或代码为 

	{cmd:(void) st_addvar("double", name=st_tempname())}

{p 4 4 2}
如果您随后需要变量的索引，请使用第一种形式，
如果您随后需要变量的名称，请使用第二种形式。您肯定需要其中之一。如果您需要两者，则代码为 

	{cmd:idx = st_addvar("double", name=st_tempname())}


{marker remarks5}{...}
{title:创建临时变量}

{p 4 4 2}
{cmd:st_tempname()} 可以返回一个临时变量名的向量。

	{cmd:idx = st_addvar("double", st_tempname(5))}

{p 4 4 2}
创建五个临时变量，每个类型为 {cmd:double}。


{marker remarks6}{...}
{title:处理错误}

{p 4 4 2}
{cmd:st_addvar()} 可能失败的常见原因有三个：变量名无效、已存在相同名称的变量或者内存不足以添加另一个变量。
如果在添加变量时出现问题，{cmd:st_addvar()} 将中止并报错。如果您想避免追溯日志并仅让 Stata 报错，可以使用 
{cmd:_st_addvar()} 并代码如下：

	{cmd:if ((idx = _st_addvar("double", "myvar"))<0) exit(error(-idx))}

{p 4 4 2}
如果您添加多个变量，请查看 {cmd:_st_addvar()} 返回的第一个元素：

	{cmd:if ((idx = _st_addvar(types, names))[1]<0) exit(error(-idx))}


{marker remarks7}{...}
{title:使用 nofill}

{p 4 4 2}
{cmd:st_addvar()} 和 {cmd:_st_addvar()} 的三参数版本允许您避免填充新创建变量的值。
如果您接下来要填充这些值，这实际上是浪费时间。另一方面，确保在控制返回 Stata 之前填充新变量的所有观察值是重要的，
这包括由于后续错误或用户按下 {hi:Break} 返回 Stata。因此，通常不推荐使用 {it:nofill}!=0。填充值实际上并不会花费太长时间。

{p 4 4 2}
然而，如果您决心节省计算机时间，请参见 
{bf:{help mf_setbreakintr_zh:[M-5] setbreakintr()}}。正确做法是关闭中断键，创建变量，填充值，然后重新启用中断键处理。

{p 4 4 2}
然而，在创建临时变量时，使用 {it:nofill}!=0 是可以接受的，不需要这样的努力。
临时变量最终会消失，因此在它们消失之前填充值是否重要并无关系。

{p 4 4 2}
实际上，临时变量在 Mata 结束时并不会消失，而是在调用 Mata 的 ado 文件结束时消失。如果我们假设存在 ado 文件，因为当然，您只会在创建临时变量的情况下。由于它们并不会在早前消失，因此如果变量未填充，可能会出现问题。如果我们假设，您的 Mata 程序已正确编写并最终填充变量，那么出现问题的几率很小。如果用户按下 {hi:Break} 或者程序中存在其他导致 Mata 中止的问题，ado 文件也会中止，变量也会消失。

{p 4 4 2}
补充说明，如果一个变量未被填充，即使恢复控制，Stata 也不会崩溃。风险在于用户会查看变量，或者更糟的，使用它并对所看到的感到困惑，这可能不仅涉及奇怪的值，还可能涉及 NaNs 和更糟的情况。


{marker conformability}{...}
{title:一致性}

    {cmd:st_addvar(}{it:type}{cmd:,} {it:name}{cmd:,} {it:nofill}{cmd:)}: 
	     {it:type}:  1 {it:x} 1  或  1 {it:x k}
	     {it:name}:  1 {it:x k}
	   {it:nofill}:  1 {it:x} 1    （可选）
	   {it:result}:  1 {it:x k}

    {cmd:_st_addvar(}{it:type}{cmd:,} {it:name}{cmd:,} {it:nofill}{cmd:)}:
	     {it:type}:  1 {it:x} 1  或  1 {it:x k}
	     {it:name}:  1 {it:x k}
	   {it:nofill}:  1 {it:x} 1    （可选）
	   {it:result}:  1 {it:x k}  或，如果出错，1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:st_addvar(}{it:type}{cmd:,} {it:name}{cmd:,} {it:nofill}{cmd:)}
如果

{p 8 12 2}
1.  {it:type} 不等于有效的 Stata 变量类型，并且它不是能形成有效 {cmd:str}{it:#} 的数字；

{p 8 12 2}
2.  {it:name} 不是有效的变量名；

{p 8 12 2}
3.  已存在名称为 {it:name} 的变量；

{p 8 12 2}
4.  内存不足以添加另一个变量。

{p 4 4 2}
{cmd:_st_addvar(}{it:type}{cmd:,} {it:name}{cmd:,} {it:nofill}{cmd:)} 
对于上面原因 1 报错，但否则，它返回相应 Stata 返回码的负值。

{p 4 4 2}
两个函数在创建多个变量时，都是要么创建所有变量，要么不创建任何变量。
无论是创建一个变量还是多个变量，
如果变量被创建， {cmd:st_updata()}（见 
{bf:{help mf_st_updata_zh:[M-5] st_updata()}}）将被设置，除非所有变量都是临时的；见
{bf:{help mf_st_tempname_zh:[M-5] st_tempname()}}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}


{marker reference}{...}
{title:参考文献}

{phang}
Gould, W. W. 2006.
{browse "http://www.stata-journal.com/sjpdf.html?articlenum=pr0021":Mata 事项：创建新变量--听起来无聊，对吧}。
{it:Stata Journal} 6: 112-123。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_addvar.sthlp>}