{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] stata()" "mansection M-5 stata()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] mata stata" "help mata_stata_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "Syntax" "mf_stata_zh##syntax"}{...}
{viewerjumpto "Description" "mf_stata_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_stata_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_stata_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_stata_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_stata_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_stata_zh##source"}
{help mf_stata:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-5] stata()} {hline 2}}执行 Stata 命令
{p_end}
{p2col:}({mansection M-5 stata():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}{bind:        }
{cmd:stata(}{it:cmd}{cmd:)}

{p 8 12 2}
{it:void}{bind:        }
{cmd:stata(}{it:cmd}{cmd:,}
{it:nooutput}{cmd:)}

{p 8 12 2}
{it:void}{bind:        }
{cmd:stata(}{it:cmd}{cmd:,}
{it:nooutput}{cmd:,}
{it:nomacroexpand}{cmd:)}


{p 8 12 2}
{it:real scalar}
{cmd:_stata(}{it:cmd}{cmd:)}

{p 8 12 2}
{it:real scalar}
{cmd:_stata(}{it:cmd}{cmd:,}
{it:nooutput}{cmd:)}

{p 8 12 2}
{it:real scalar}
{cmd:_stata(}{it:cmd}{cmd:,}
{it:nooutput}{cmd:,}
{it:nomacroexpand}{cmd:)}


{p 4 4 2}
其中

		{it:cmd}:  {it:string scalar}

           {it:nooutput}:  {it:real scalar}

      {it:nomacroexpand}:  {it:real scalar}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:stata(}{it:cmd}{cmd:)} 执行字符串标量 {it:cmd} 中包含的 Stata 命令。命令的输出出现在控制台上，{it:cmd} 中的任何宏都会被展开。

{p 4 4 2}
{cmd:stata(}{it:cmd}{cmd:,} {it:nooutput}{cmd:)} 的功能相同，但如果 {it:nooutput}!=0，执行所产生的输出将不显示。{cmd:stata(}{it:cmd}{cmd:,} {cmd:0)} 与 {cmd:stata(}{it:cmd}{cmd:)} 等效。

{p 4 4 2}
{cmd:stata(}{it:cmd}{cmd:,} {it:nooutput}{cmd:,} {it:nomacroexpand}{cmd:)} 的功能相同，但在执行前，如果 {it:nomacroexpand}!=0，则抑制任何宏的展开。{cmd:stata(}{it:cmd}{cmd:,} {cmd:0,} {cmd:0)} 与 {cmd:stata(}{it:cmd}{cmd:)} 等效。

{p 4 4 2}
{cmd:_stata()} 重复 {cmd:stata()} 的语法。不同之处在于，{cmd:stata()} 如果执行结果返回非零代码则会中止并报错，而 {cmd:_stata()} 会返回相应的返回代码。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 stata()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
你执行的命令可能会调用另一个实例的 Mata。例如，Stata 程序 {it:A} 调用 Mata 函数 {it:m1()}，该函数执行 {cmd:stata()} 以调用 Stata 程序 {it:B}，而后者又调用 Mata 函数 {it:m2()}，依此类推。

{p 4 4 2}
{cmd:stata(}{it:cmd}{cmd:)} 和 {cmd:_stata(}{it:cmd}{cmd:)} 在当前运行级别执行 {it:cmd}。这意味着任何局部宏都引用调用者的局部宏空间。考虑以下例子：

	{cmd:program example}
		...
		{cmd:local x = "来自 A 的值"}
		{cmd:mata: myfunc()}
		{cmd:display "`x'"}
		...
	{cmd:end}

	{cmd}mata void myfunc()
	{c -(}
		stata(`"local x = "新值""')
	{c )-}{txt}

{p 4 4 2}
在 {cmd:example} 执行 {cmd:mata: myfunc()} 后，{cmd:`x'} 将变为 {cmd:"新值"}。

{p 4 4 2}
{cmd:stata()} 和 {cmd:_stata()} 这样工作的原因是故意的：Mata 函数可以修改调用者的环境，以便它们可以为调用者创建临时变量等，你只需稍加小心。执行 {cmd:stata()} 函数来运行其他 ado 文件和程序不会造成问题，因为其他 ado 文件和程序会创建自己的新环境，其中的临时变量、局部宏等都是私有的。

{p 4 4 2}
此外，不要使用 {cmd:stata()} 或 {cmd:_stata()} 来执行多行命令或执行可能被认为是多行命令的第一行。一旦第一行被执行，Stata 将从调用者的环境中获取其余行。例如，考虑以下情况：

	{hline 43} 开始 myfile.do {hline 4}
	{cmd}mata void myfunc()
	{c -(}
		stata("if (1==1) {")
	{c )-}

	mata: myfunc()
	display "hello"
	{c )-}{txt}
	{hline 43} 结束 myfile.do {hline 6}

{p 4 4 2}
在上述示例中，{cmd:myfunc()} 将消耗 {cmd:display} {cmd:"hello"} 和 {cmd:{c )-}} 行。


{marker conformability}{...}
{title:符合性}

{p 4 8 2}
{cmd:stata(}{it:cmd}{cmd:,} {it:nooutput}{cmd:,} {it:nomacroexpand}{cmd:)}:
{p_end}
                        {it:cmd}:  1 {it:x} 1
                   {it:nooutput}:  1 {it:x} 1  (可选)
              {it:nomacroexpand}:  1 {it:x} 1  (可选)
                     {it:result}:  {it:void}

{p 4 8 2}
{cmd:_stata(}{it:cmd}{cmd:,} {it:nooutput}{cmd:,} {it:nomacroexpand}{cmd:)}:
{p_end}
                        {it:cmd}:  1 {it:x} 1
                   {it:nooutput}:  1 {it:x} 1  (可选)
              {it:nomacroexpand}:  1 {it:x} 1  (可选)
                     {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果 {it:cmd} 过长（非常不可能）、宏展开失败，或执行结果返回非零代码，则 {cmd:stata()} 会中止并报错。

{p 4 4 2}
如果 {it:cmd} 过长，{cmd:_stata()} 会中止并报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_stata.sthlp>}