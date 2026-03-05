{smcl}
{* *! version 1.2.9  19oct2017}{...}
{vieweralsosee "[P] unab" "mansection P unab"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] syntax" "help syntax_zh"}{...}
{vieweralsosee "[P] varabbrev" "help novarabbrev_zh"}{...}
{viewerjumpto "语法" "unab_zh##syntax"}{...}
{viewerjumpto "描述" "unab_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "unab_zh##linkspdf"}{...}
{viewerjumpto "选项" "unab_zh##options"}{...}
{viewerjumpto "示例" "unab_zh##examples"}
{help unab:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[P] unab} {hline 2}}展开变量列表{p_end}
{p2col:}({mansection P unab:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
展开并扩展标准变量列表

{p 8 13 2}{cmd:unab} {it:lmacname} {cmd::} [{varlist}] [{cmd:,}
	{cmd:min(}{it:#}{cmd:)} {cmd:max(}{it:#}{cmd:)}
	{cmd:name(}{it:{help strings_zh:string}}{cmd:)}]


{pstd}
展开并扩展可能包含时间序列运算符的变量列表

{p 8 15 2}{cmd:tsunab} {it:lmacname} {cmd::} [{varlist}] [{cmd:,}
	{cmd:min(}{it:#}{cmd:)} {cmd:max(}{it:#}{cmd:)}
	{cmd:name(}{it:{help strings_zh:string}}{cmd:)}]


{pstd}
展开并扩展可能包含时间序列运算符或因子变量的变量列表

{p 8 15 2}{cmd:fvunab} {it:lmacname} {cmd::} [{varlist}] [{cmd:,}
	{cmd:min(}{it:#}{cmd:)} {cmd:max(}{it:#}{cmd:)}
	{cmd:name(}{it:{help strings_zh:string}}{cmd:)}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:unab} 扩展和展开已有变量的变量列表，结果放入局部宏 {it:lmacname} 中。{cmd:unab} 是一个低级解析命令。{cmd:syntax} 命令是一个高级解析命令，它同样展开变量列表；请参见 {manhelp syntax P}。

{pstd}
{cmd:unab} 与 {cmd:tsunab} 之间的区别在于 {cmd:tsunab} 允许在 {varlist} 中使用时间序列运算符；请参见 {help tsvarlist_zh}。

{pstd}
{cmd:tsunab} 与 {cmd:fvunab} 之间的区别在于 {cmd:fvunab} 允许在 {it:varlist} 中使用因子变量；请参见 {help fvvarlist_zh}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P unabRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}{cmd:min(}{it:#}{cmd:)} 指定允许的最小变量数量。默认值为 {hi:min(1)}。

{phang}{cmd:max(}{it:#}{cmd:)} 指定允许的最大变量数量。默认值为 {hi:max(120000)}。

{phang}{cmd:name(}{it:{help strings_zh:string}}{cmd:)} 提供在打印错误消息时使用的标签。


{marker examples}{...}
{title:示例：在程序中}

{pstd}
在使用 {help syntax_zh} 进行高级命令解析的程序中，如

{phang2}{cmd:syntax varname [if] [in], BY(string)} {it:...}

{pstd}
可能需要进一步的低级解析。例如，

	{cmd:capture confirm var `by'}
	{cmd:if _rc == 0 {c -(}}
		{cmd:unab by : `by', max(1) name(by())}
	{cmd:{c )-}}
	{cmd:else {c -(}}
		{it:...} {txt}对 {cmd:`by'} {it:...} 做其他操作
	{cmd:{c )-}}

{pstd}
在允许时间序列变量列表的程序中，您可能会有

	{cmd:tsunab myvar : `myvar'}

{pstd}
局部宏 {hi:myvar} 将包含不带缩写的变量列表，时间序列运算符（如有）将以标准形式显示。


{title:示例：交互式}

        {cmd:. sysuse auto}
	{cmd:. unab x : mpg wei for, name(myopt())}
	{cmd:. display "`x'"}
	{cmd:. unab x : junk}                                  (给出错误消息)
	{cmd:. unab x : mpg wei, max(1) name(myopt())}         (给出错误消息)
	{cmd:. unab x : mpg wei, max(1) name(myopt()) min(0)}  (给出错误消息)
	{cmd:. unab x : mpg wei, min(3) name(myopt())}         (给出错误消息)
	{cmd:. unab x : mpg wei, min(3) name(myopt()) max(10)} (给出错误消息)
	{cmd:. unab x : mpg wei, min(3) max(10)}               (给出错误消息)

        {cmd:. gen time = _n}
	{cmd:. tsset time}
	{cmd:. tsunab mylist : l(1/3).mpg}
	{cmd:. display "`mylist'"}
	{cmd:. tsunab mylist : l(1/3).(price turn displ)}
	{cmd:. di "`mylist'"}

	{cmd:. unab varn : mp}
	{cmd:. display "`varn'"}
	{cmd:. set varabbrev off}
	{cmd:. unab varn : mp}                                 (给出错误消息)
	{cmd:. set varabbrev on}
	{cmd:. unab varn : mp}
	{cmd:. display "`varn'"}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <unab.sthlp>}