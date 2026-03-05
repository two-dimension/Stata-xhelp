{smcl}
{* *! version 1.1.13  30apr2019}{...}
{vieweralsosee "[P] postfile" "mansection P postfile"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] frame post" "help frame_post_zh"}{...}
{vieweralsosee "[R] simulate" "help simulate_zh"}{...}
{viewerjumpto "语法" "post_zh##syntax"}{...}
{viewerjumpto "描述" "post_zh##description"}{...}
{viewerjumpto "PDF文档链接" "post_zh##linkspdf"}{...}
{viewerjumpto "选项" "post_zh##options"}{...}
{viewerjumpto "备注" "post_zh##remarks"}
{help post:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[P] postfile} {hline 2}}在Stata数据集中发布结果{p_end}
{p2col:}({mansection P postfile:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}声明变量名称和将保存结果的数据集文件名

{p 8 17 2}{cmd:postfile} {it:postname} {it:{help newvarlist_zh}} {cmd:using}
{it:{help filename_zh}} [{cmd:,} {cmdab:e:very:(}{it:#}{cmd:)} {cmd:replace}]


    向声明的数据集中添加新的观测值

{p 8 17 2}{cmd:post} {it:postname} {cmd:(}{it:{help exp_zh}}{cmd:)}
{cmd:(}{it:{help exp_zh}}{cmd:)} {it:...} {cmd:(}{it:{help exp_zh}}{cmd:)}


    声明结束观测值的发布

	{cmd:postclose} {it:postname}


    列出所有打开的postfile

	{cmd:postutil dir}


    关闭所有打开的postfile

	{cmd:postutil clear}


{marker description}{...}
{title:描述}

{pstd}
这些命令是帮助Stata程序员执行蒙特卡罗类型实验的工具。它们将结果发布到磁盘上的文件中。
要将结果发布到内存中的框架中，请参见 {manhelp frame_post P:frame post}。

{pstd}
{cmd:postfile} 声明变量名称和结果将保存的 (新) Stata 数据集的文件名。  

{pstd}
{cmd:post} 向声明的数据集添加新的观测值。

{pstd}
{cmd:postclose} 声明观测值发布的结束。在 {cmd:postclose} 之后，新数据集包含已发布的结果，可以使用 {cmd:use} 加载；请参见 {manhelp use D}。

{pstd}
{cmd:postutil dir} 列出所有打开的postfile。 {cmd:postutil clear} 关闭所有打开的postfile。

{pstd}
这五个命令在操作新数据集时不会干扰内存中的数据。

{pstd}
如果 {it:{help filename_zh}} 被指定而没有扩展名，则假定为 {cmd:.dta}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P postfileRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt every(#)} 指定在每第 {it:#} 次调用 {cmd:post} 时将结果写入磁盘。 {cmd:post} 暂时将结果保留在内存中，并定期打开正在构建的Stata数据集以附加已保存的结果。通常不应指定 {cmd:every()}，因为您不太可能选择一个 {it:#} 的值，效率能与 {cmd:post} 自动选择的值相媲美，这个值的选择取决于要写入的结果数量及其存储类型。

{phang}{cmd:replace} 表示指定的文件可能已经存在，如果存在，{cmd:postfile} 可以删除该文件并创建一个新文件。


{marker remarks}{...}
{title:备注}

{pstd}
post命令的典型用法是

	{cmd:tempname memhold}
	{cmd:tempfile results}
	{it:...}
	{cmd:postfile `memhold'} {it:...} {cmd:using `results'}
	{it:...}
	{cmd:while} {it:...} {cmd:{c -(}}
		{it:...}
		{cmd:post `memhold'} {it:...}
		{it:...}
	{cmd:{c )-}}
	{cmd:postclose `memhold'}
	{it:...}

{pstd}
在 {cmd:postfile} 中指定了两个名称： {it:postname} 是分配给内部内存缓冲区的名称， {it:filename} 是要创建的文件的名称。后续的 {cmd:post} 和 {cmd:postclose} 随后跟随 {it:postname}，以便Stata能够知道它们所指向的文件。

{pstd}
在我们的示例中，我们通过Stata的临时名称功能获取两个名称（请参见 {help macro_zh:[P] macro}），尽管在某些编程情况下，您可能希望替换为硬编码的 {it:filename}。我们建议 {it:postname} 总是通过 {cmd:tempname} 获取。这确保了您的程序可以嵌套在任何其他程序中，并确保如果出现错误，{cmd:post} 使用的内存会被释放。
使用临时文件名也确保如果用户按下 {hi:Break}，文件将被删除。有时，您可能希望保留不完整结果的文件。这是允许的，但请记住，如果没有执行 {cmd:postclose}，文件并非完全最新。 {cmd:post} 将结果缓冲在内存中，并且仅定期更新文件。

{pstd}
因为 {cmd:postfile} 接受 {it:newvarlist}，存储类型可以交错，因此您可以写成

{phang2}
        {cmd:postfile `memhold' a b str20 c double(d e f) using "`results'"}

{pstd}
请注意 {it:newvarlist} 不允许 {cmd:strL} 作为变量存储类型。 允许 {cmd:strL} 作为变量存储类型的类似实用程序是 {manhelp frame_post P:frame post}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <post.sthlp>}