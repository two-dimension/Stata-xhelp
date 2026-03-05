{smcl}
{* *! version 1.1.12  01apr2019}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] assert" "help assert_zh"}{...}
{vieweralsosee "[P] cscript_log" "help cscript_log_zh"}{...}
{vieweralsosee "[P] rcof" "help rcof_zh"}{...}
{vieweralsosee "[P] savedresults" "help savedresults"}{...}
{vieweralsosee "[R] which" "help which_zh"}{...}
{viewerjumpto "语法" "cscript_zh##syntax"}{...}
{viewerjumpto "描述" "cscript_zh##description"}{...}
{viewerjumpto "备注" "cscript_zh##remarks"}
{help cscript:English Version}
{hline}{...}
{title:标题}

{p 4 21 2}
{hi:[P] cscript} {hline 2} 开始认证脚本


{marker syntax}{...}
{title:语法}

{p 8 16 2}{cmd:cscript} [[{cmd:"}]{it:文本}[{cmd:"}]]
		[{cmdab:adofile:s} {it:adofile-列表}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:cscript} 开始一个 Stata 认证脚本。

{pstd}
它会显示一个标题，对列出的任何 ado 文件执行 {cmd:which}（见 {manhelp which R}），并丢弃所有

	数据
	框架
	值标签
	宏
	程序
	标量
	矩阵
	约束
	方程
	以前的估计结果

{pstd}
{cmd:cscript} 将 {cmd:linesize} 设置为 79；见 {help linesize}。 {cmd:cscript} 还将 {cmd:maxiter} 设置为 100；见 {help maxiter}。 {cmd:cscript} 还将 {cmd:emptycells} 设置为 {cmd:keep}；见 {manhelp set_emptycells R:set emptycells}。{cmd:cscript} 还丢弃所有框架，并将 Stata 恢复到名为 {cmd:default} 的单个空框架的初始状态。

{pstd}
其目的是将 Stata 重置为默认条件，以便认证脚本可以一个接一个地运行，而不影响其他认证脚本的结果。 Stata 中 {cmd:maxiter} 的默认值为 16000，但 {cmd:cscript} 将其设置为 100，这样有缺陷的模型的测试脚本就不会有过长的运行时间。
程序员必须在他们希望迭代超过 100 次的命令上指定 {cmd:iterate()} 选项；见 {help maximize_zh:[R] Maximize}。


{marker remarks}{...}
{title:备注}

{pstd}
备注以以下标题呈现：

{phang2}{help cscript##remarks1:简介}{p_end}
{phang2}{help cscript##remarks2:编写认证脚本的其他文档和未文档命令}{p_end}
{phang2}{help cscript##remarks3:认证脚本示例}{p_end}
{phang2}{help cscript##remarks4:合并认证脚本}{p_end}
{phang2}{help cscript##remarks5:编写一个好的认证脚本}{p_end}


{marker remarks1}{...}
{title:简介}

{pstd}
{cmd:cscript} 在手册中未记录，因为这将对许多用户没有兴趣。

{pstd}
认证脚本是一个 do-file，用于测试 Stata 的一个特性、一个 ado 文件，甚至一个社区贡献的命令是否有效。

{pstd}
认证脚本的第一行应为

{phang2}{cmd:cscript} {it:测试描述}

{pstd}
例如，

{phang2}{cmd:cscript sktest}{p_end}
    或
{phang2}{cmd:cscript sktest 一般条件下}{p_end}

{pstd}
可能是测试 {cmd:sktest} 的 do-file 开头。如果 {cmd:sktest} 是一个 ado 文件——正如它是的那样——那么更好的开头将是

{phang2}{cmd:cscript sktest adofile sktest}{p_end}
    或
{phang2}{cmd:cscript "sktest 一般条件下" adofile sktest}

{pstd}
或者，如果你愿意，可以在 {cmd:cscript} 命令后执行 {cmd:which}：

{phang2}{cmd:cscript sktest}{p_end}
{phang2}{cmd:which sktest}

{pstd}
使用哪种风格都没有区别，但你应该执行 {cmd:which}。 这样，如果你保存了运行认证脚本的日志，你将知道上次测试的 {cmd:sktest} 的版本。


{marker remarks2}{...}
{title:编写认证脚本的其他文档和未文档命令}

{p 4 19 2}{help assert_zh} {space 7} 验证声明的真实性{p_end}
{p 4 19 2}{help confirm_zh} {space 6} 参数验证{p_end}
{p 4 19 2}{help cscript_log_zh} {space 2} 控制 SMCL 日志文件{p_end}
{p 4 19 2}{help lrecomp_zh} {space 6} 显示日志相对错误{p_end}
{p 4 19 2}{help mkassert_zh} {space 5} 生成 {cmd:assert}s{p_end}
{p 4 19 2}{help rcof_zh} {space 9} 验证返回代码{p_end}
{p 4 19 2}{helpb savedresults} {space 1} 操作和验证存储结果 {hi:r()} 和 {hi:e()}{p_end}
{p 4 19 2}{help version_zh} {space 6} 在版本控制下运行命令

{pstd}
键入 {cmd:help} 后加命令名称以获取更多信息。

{pstd}
{cmd:reldif()}（相对差异）和 {cmd:mreldif()}（矩阵相对差异）函数在认证脚本中也很有用；见 {helpb reldif()}。


{marker remarks3}{...}
{title:认证脚本示例}

{pstd}
在 StataCorp，如果我们有一个名为 {cmd:mycmd.ado} 的 ado 文件，我们会写一个相应的认证脚本，称为 {cmd:mycmd.do}。 该脚本可能是

	{hline 3} 开始 {hline 3} mycmd.do {hline 48}
	{cmd}cscript mycmd adofile mycmd

	use xmpl
	mycmd x1 x2
	assert abs(r(z)-2.5)<=1e-15

	keep if x3==2
	mycmd x1 x2
	local hold = r(z)

	use xmpl, clear
	mycmd x1 x2 if x3==2
	assert r(z) == `hold'

	rcof "noisily mycmd x1" == 102       /* 指定的变量太少 */
	rcof "noisily mycmd x1 x2 x3" == 103 /* 指定的变量太多 */{txt}
	{hline 5} 结束 {hline 3} mycmd.do {hline 48}

{pstd}
一个真实的认证脚本可能会长得多。


{marker remarks4}{...}
{title:合并认证脚本}

{pstd}
在 StataCorp，我们将所有认证脚本组合成一个超级认证脚本。 {cmd:mycmd.do} 然后成为超级脚本的一个元素：

	{hline 3} 开始 {hline 3} super.do {hline 3}
	{cmd}do anova
	do assert{txt}
	...
	{cmd}do merge
	do mycmd{txt}
	...
	{hline 5} 结束 {hline 3} super.do {hline 3}

{pstd}
我们可以通过键入 {cmd:do super} 来运行所有认证脚本。


{marker remarks5}{...}
{title:编写一个好的认证脚本}

{pstd}
认证脚本的目的是

{phang2}1.  测试命令在已知解的几个情况下是否产生正确答案；

{phang2}2.  确定命令在极端条件下是否正常工作，例如 R^2=1 的回归；

{phang2}3.  验证命令是否以一种得体的方式响应用户可能犯的错误。

{pstd}
编写认证脚本的原因有两个：

{phang2}1.  在第一天（命令编写的那一天）就确认命令有效。

{phang2}2.  允许对命令进行将来的更改，以确保这些更改确实是改进。（只需重新运行认证脚本。）

{pstd}
一个好的认证脚本在遇到问题时停止。 这样，键入

	{cmd:. do mycmd}
	[输出省略]
	do-file 结束

{pstd}
并看到其完整运行（即，看到 Stata 响应“do-file 结束”并返回代码 0），表明至少对于记录的问题，命令按预期工作。 你不想要一个需要查看输出以确定是否存在任何错误的脚本。因此，一个包含以下行的脚本

{phang2}{cmd:regress mpg weight}{p_end}
{phang2}{cmd:regress mpg weight displ}

{pstd}
将是对 {cmd:regress} 的一个糟糕测试。如果结果错误，你会注意到吗？ 一个更好的测试脚本将是

{phang2}{cmd:regress mpg weight}{p_end}
{phang2}{cmd:assert abs(_b[weight]- -.0060087) < 1e-7}{p_end}
{phang2}{cmd:assert abs(_b[_cons]- 39.44028) < 1e-5}

{phang2}{cmd:regress mpg weight displ}{p_end}
{phang2}{cmd:assert abs(_b[weight]- -.0065671) < 1e-7}{p_end}
{phang2}{cmd:assert abs(_b[displ]- -.0052808) < 1e-7}{p_end}
{phang2}{cmd:assert abs(_b[_cons]- 40.08452) < 1e-5}

{pstd}
而一个包含

{phang2}{cmd:regress mpg weight}{p_end}
{phang2}{cmd:assert abs(_b[weight]- -.0060087) < 1e-7}{p_end}
{phang2}{cmd:assert abs(_b[_cons]- 39.44028) < 1e-5}{p_end}
{phang2}{cmd:assert abs(_se[weight]-.0005179) < 1e-7}{p_end}
{phang2}{cmd:assert abs(_se[_cons]- 1.614003) < 1e-6}

{phang2}{cmd:regress mpg weight displ}{p_end}
{phang2}{cmd:assert abs(_b[weight]- -.0065671) < 1e-7}{p_end}
{phang2}{cmd:assert abs(_b[displ]- -.0052808) < 1e-7}{p_end}
{phang2}{cmd:assert abs(_b[_cons]- 40.08452) < 1e-5}{p_end}
{phang2}{cmd:assert abs(_se[weight]-.0011662) < 1e-7}{p_end}
{phang2}{cmd:assert abs(_se[displ]-.0098696) < 1e-7}{p_end}
{phang2}{cmd:assert abs(_se[_cons]- 2.02011) < 1e-6}

{pstd}
将是更好的。

{pstd}
要确认命令对错误的响应，可见 {help rcof_zh}。脚本应包含故意错误并验证结果是否如预期。例如，

{phang2}{cmd:discard} {space 15} /* 消除回归结果         */{p_end}
{phang2}{cmd:rcof "regress" == 301} {space 1} /* 应该是“未找到最后估计” */

{pstd}
{cmd:rcof} 抑制命令的所有输出，因此诱发的错误通常用放在命令前面的 {cmd:noisily} 编码。

{phang2}{cmd:rcof "noisily regress" == 301}

{pstd}
参见 {manhelp quietly P}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cscript.sthlp>}