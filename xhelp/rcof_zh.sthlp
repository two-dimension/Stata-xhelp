{smcl}
{* *! version 1.0.5  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] cscript" "help cscript_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] assert" "help assert_zh"}{...}
{viewerjumpto "Syntax" "rcof_zh##syntax"}{...}
{viewerjumpto "Description" "rcof_zh##description"}{...}
{viewerjumpto "Remarks" "rcof_zh##remarks"}{...}
{viewerjumpto "Examples" "rcof_zh##examples"}
{help rcof:English Version}
{hline}{...}
{title:标题}

{p 4 18 2}
{hi:[P] rcof} {hline 2} 验证返回代码


{marker syntax}{...}
{title:语法}

{p 8 13 2}{cmd:rcof} [{cmd:"}]{it:stata_cmd}[{cmd:"}] {it:rest_of_expression}


{pstd}
此命令旨在用于认证脚本的作者——即用于测试命令是否正常工作的 do 文件；详见 {manhelp cscript P}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:rcof} 执行 {it:stata_cmd} 然后验证返回代码是否如所指示的那样。


{marker remarks}{...}
{title:备注}

{pstd}
在认证脚本中，可以故意发出一个应该产生错误的 {it:stata_cmd}，然后验证是否产生了预期的错误。如果断言为真，脚本继续执行。如果断言为假，脚本停止。


{marker examples}{...}
{title:示例}

{phang2}{cmd:. discard} {space 2} /* 因此删除估计结果 */{p_end}
{phang2}{cmd:. rcof "regress" == 301}

{phang2}{cmd:. rcof "regress mpg weight badvar" == 111}

{pstd}
如果命令的返回代码为 111，即如果您仅键入命令时会看到，

{phang2}{cmd:. regress mpg weight badvar}{p_end}
{phang2}{err:badvar not found}{p_end}
{phang2}{search r(111):r(111);}

{pstd}
那么认证脚本将继续。{it:stata_cmd} 的输出会被抑制。如果您希望看到输出（通常是错误信息），请在 {it:stata_cmd} 中包含 {cmd:noisily}（参见 {manhelp quietly P}）：

{phang2}{cmd:. rcof "noisily regress mpg weight badvar" == 111}

{pstd}
在这种情况下，您会看到

{phang2}{cmd:. rcof "noisily regress mpg weight badvar" == 111}{p_end}
{phang2}{err:badvar not found}

{pstd}
但认证脚本不会停止。另一方面，当返回代码与您断言的不符时，会发生以下情况：

{phang2}{cmd:. rcof "regress mpg weight badvar" == 198}

	{err}rcof:  _rc  == 198 *不正确* 来自
	       regress mpg weight badvar
	       _rc == 111{txt}
	{search r(9):r(9);}

{pstd}
当 {it:stata_cmd} 不包含字符 {cmd:=}、{cmd:<}、{cmd:>}、{cmd:~} 和 {cmd:!} 时，可以省略双引号。

{phang2}{cmd:. rcof noisily regress mpg weight badvar == 111}

    是有效的，但是

{phang2}{cmd:. rcof gen mpg = 3 == 110}

{pstd}
则无法达到预期效果。在这种情况下，您必须编写

{phang2}{cmd:. rcof "gen mpg = 3" == 110}

{pstd}
不鼓励省略双引号。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rcof.sthlp>}