{smcl}
{* *! version 1.3.4  15may2018}{...}
{vieweralsosee "[M-5] error()" "mansection M-5 error()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Errors" "help m2_errors_zh"}{...}
{vieweralsosee "[M-5] exit()" "help mf_exit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{viewerjumpto "Syntax" "mf_error_zh##syntax"}{...}
{viewerjumpto "Description" "mf_error_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_error_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_error_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_error_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_error_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_error_zh##source"}
{help mf_error:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-5] error()} {hline 2}}发出错误信息
{p_end}
{p2col:}({mansection M-5 error():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数标量} {cmd:error(}{it:实数标量 rc}{cmd:)}


{p 8 12 2}
{it:无返回值}{bind:      }
{cmd:_error(}{it:实数标量 errnum}{cmd:)}

{p 8 12 2}
{it:无返回值}{bind:      }
{cmd:_error(}{it:字符串标量 errtxt}{cmd:)}

{p 8 12 2}
{it:无返回值}{bind:      }
{cmd:_error(}{it:实数标量 errnum}{cmd:,}
{it:字符串标量 errtxt}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:error(}{it:rc}{cmd:)} 显示与返回代码 {it:rc} 关联的标准 Stata 错误消息，并返回 {it:rc}； 
参见 {bf:[P] error} 获取返回代码列表。
{cmd:error()} 不会中止执行； 
标准用法是 {cmd:exit(error(}{it:rc}{cmd:))}。

{p 4 4 2}
{cmd:_error()}
会中止执行并产生回溯日志。

{p 4 4 2}
{cmd:_error(}{it:errnum}{cmd:)} 
产生一个回溯日志，并显示标准 Mata 错误消息 {it:errnum}；
参见 {bf:{help m2_errors_zh:[M-2] Errors}} 获取标准 Mata 错误代码列表。

{p 4 4 2}
{cmd:_error(}{it:errtxt}{cmd:)} 
产生一个回溯日志，错误编号为 3498，附带自定义文本 {it:errtext}。

{p 4 4 2}
{cmd:_error(}{it:errnum}{cmd:,} {it:errtxt}{cmd:)}
产生一个回溯日志，错误编号为 {it:errnum}，附带自定义文本 
{it:errtext}。

{p 4 4 2}
如果指定了 {it:errtxt}，则其应包含纯文本；
SMCL 代码不会被解析。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 error()Remarksandexamples:备注和示例}

{pstd}
上面的部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几个部分：

	{help mf_error##remarks1:_error() 的使用}
	{help mf_error##remarks2:error() 的使用}


{marker remarks1}{...}
{title:_error() 的使用}

{p 4 4 2}
{cmd:_error()} 会中止执行并产生一个回溯日志：

	: {cmd:myfunction(A,B)}
	             {err}mysub():  3200  兼容性错误
	        myfunction():     -  函数返回错误
	             <istmt>:     -  函数返回错误{txt}
	r(3200);

{p 4 4 2}
上述输出是因为函数 {cmd:mysub()} 包含以下行

		{cmd:_error(3200)}

{p 4 4 2}
3200 是与标准消息“兼容性错误”相关联的错误编号；参见 {bf:{help m2_errors_zh:[M-2] Errors}}。 
可能，代码为

	{cmd:if (rows(A)!=rows(B) | cols(A)!=cols(B)) {c -(}}
		{cmd:_error(3200)}
	{cmd:{c )-}}

{p 4 4 2}
另一种类型的错误可能产生如下输出 

	: {cmd:myfunction(A,B)}
	             {err}mysub():  3498  不允许在对角线上为零
	        myfunction():     -  函数返回错误
	             <istmt>:     -  函数返回错误{txt}
	r(3498);

{p 4 4 2}
这可以由以下代码产生

	{cmd:if (diag0cnt(A)>0) {c -(}}
		{cmd:_error("不允许在对角线上为零")}
	{cmd:{c )-}}

{p 4 4 2}
如果我们想产生相同的文本但将错误编号改为 3300，我们可以编写

	{cmd:if (diag0cnt(A)>0) {c -(}}
		{cmd:_error(3300, "不允许在对角线上为零")}
	{cmd:{c )-}}

{p 4 4 2}
编码 {cmd:_error()} 并不总是必要。在我们的兼容性错误示例中，假设代码更多地写作

	...
	{cmd:if (rows(A)!=rows(B) | cols(A)!=cols(B)) {c -(}}
		{cmd:_error(3200)}
	{cmd:{c )-}}
	{cmd:C = A + B}
	...

{p 4 4 2}
如果我们将代码简化为

	...
	{cmd:C = A + B}
	...

{p 4 4 2}
兼容性错误仍会被检测到，因为 {cmd:+} 
要求 p 兼容性：

	: {cmd:myfunction(A,B)}
	                   {err}+:  3200  兼容性错误
	             mysub():     -  兼容性错误
	        myfunction():     -  函数返回错误
	             <istmt>:     -  函数返回错误{txt}
	r(3200);

{p 4 4 2}
然而，有时你必须自己检测错误。例如，

	...
	{cmd:if (rows(A)!=rows(B) | cols(A)!=cols(B) | rows(A)!=2*cols(A)) {c -(}}
		{cmd:_error(3200)}
	{cmd:{c )-}}
	{cmd:C = A + B}
	...

{p 4 4 2}
我们假设有某种正当理由需要 {cmd:A} 的行数是列数的两倍。  然而，{cmd:+} 不会要求这一点，或许我们后面会进行的其他计算也不会要求这一点。 或者可能它会在后面被检测到，但以一种导致调用者困惑的错误信息。


{marker remarks2}{...}
{title:error() 的使用}

{p 4 4 2}
{cmd:error(}{it:rc}{cmd:)} 不会导致程序终止。标准
用法是

	{cmd:exit(error(}{it:rc}{cmd:))}

{p 4 4 2}
例如

	{cmd:exit(error(503))}

{p 4 4 2}
无论如何，{cmd:error()} 不会产生回溯日志：


	: {cmd:myfunction(A,B)}
	{err:兼容性错误}
	r(503);

{p 4 4 2}
{cmd:error()} 用于 ado 文件的子例程中的函数：


	{hline 43} 示例.ado 开始 {hline 4}
	{cmd}program example
		version {ccl stata_version}
		{txt}...{cmd}
		mata: myfunction("`mat1'", "`mat2'")
		{txt}...{cmd}
	end

	version {ccl stata_version}
	mata:
	void myfunction(string scalar matname1, string scalar matname2)
	{
		{txt}...{cmd}
		A = st_matrix(matname1)
		B = st_matrix(matname2)
		if (rows(A)!=rows(B) | cols(A)!=cols(B)) {c -(}
			exit(error(503))
		{c )-}
		C = A + B
		{txt}...{cmd}
	}
	end{txt}
	{hline 43} 示例.ado 结束 {hline 6}

{p 4 4 2}
这样，当 {cmd:example} 命令被错误使用时，用户将看到 

	. {cmd:example} ...
	{err:兼容性错误}
	r(503);

{p 4 4 2}
而不是如果我们省略检测和 {cmd:exit(error(503))}，将产生的回溯日志：

	. {cmd:example} ...
	                   {err}+:  3200  兼容性错误
	        myfunction():     -  函数返回错误
	             <istmt>:     -  函数返回错误{txt}
	r(3200);


{marker conformability}{...}
{title:兼容性}

    {cmd:error(}{it:rc}{cmd:)}:
	       {it:rc}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

    {cmd:_error(}{it:errnum}{cmd:)}:
	   {it:errnum}:  1 {it:x} 1
	   {it:result}:  {it:无返回值}

    {cmd:_error(}{it:errtxt}{cmd:)}:
	   {it:errtxt}:  1 {it:x} 1
	   {it:result}:  {it:无返回值}

    {cmd:_error(}{it:errnum}{cmd:,} {it:errtxt}{cmd:)}:
	   {it:errnum}:  1 {it:x} 1
	   {it:errtxt}:  1 {it:x} 1
	   {it:result}:  {it:无返回值}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
   {cmd:error(}{it:rc}{cmd:)} 不会中止执行；如果这是你的要求，代码
   {cmd:exit(error(}{it:rc}{cmd:))}； 
   参见 {bf:{help mf_exit_zh:[M-5] exit()}}。

{p 4 4 2}
   {cmd:error(}{it:rc}{cmd:)} 返回的代码可能与 {it:rc} 不同，如果
   {it:rc} 不是标准代码或与之关联有更好的代码。

{p 4 4 2}
   {cmd:error(}{it:rc}{cmd:)} 当 {it:rc}=0 时不产生任何输出，并返回 0。

{p 4 4 2}
   {cmd:_error(}{it:errnum}{cmd:)}, 
   {cmd:_error(}{it:errtxt}{cmd:)}, 和 
   {cmd:_error(}{it:errnum}{cmd:,} {it:errtxt}{cmd:)}
   总是会中止并报错。 如果指定了小于 1 或大于 2,147,483,647 的 {it:errnum}，或指定了超过 100 个字符的 {it:errtxt}， {cmd:_error()} 会因为错误调用而中止。
   如果指定了一个非标准代码的 {it:errnum}，错误消息的文本将显示为 “Stata returned error”。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_error.sthlp>}