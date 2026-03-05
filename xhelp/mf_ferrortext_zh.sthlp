{smcl}
{* *! version 1.1.5  26apr2019}{...}
{vieweralsosee "[M-5] ferrortext()" "mansection M-5 ferrortext()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] fopen()" "help mf_fopen_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "语法" "mf_ferrortext_zh##syntax"}{...}
{viewerjumpto "描述" "mf_ferrortext_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_ferrortext_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_ferrortext_zh##remarks"}{...}
{viewerjumpto "符合性" "mf_ferrortext_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_ferrortext_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_ferrortext_zh##source"}
{help mf_ferrortext:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] ferrortext()} {hline 2}}文件错误代码的文本和返回代码
{p_end}
{p2col:}({mansection M-5 ferrortext():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:字符串标量}
{cmd:ferrortext(}{it:实数标量 ec}{cmd:)}

{p 8 8 2}
{it:实数标量}{bind:  }
{cmd:freturncode(}{it:实数标量 ec}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:ferrortext(}{it:ec}{cmd:)}
返回与文件错误代码关联的文本，该代码由例如
{cmd:_fopen()}、{cmd:_fwrite()}、{cmd:fstatus()} 或任何其他
返回错误代码的文件处理函数返回。
请参见 {bf:{help mf_fopen_zh:[M-5] fopen()}}。

{p 4 4 2}
{cmd:freturncode(}{it:ec}{cmd:)}
返回与文件错误代码关联的 Stata 返回代码。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 ferrortext()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
大多数文件处理函数如果遇到问题会中止错误。当
尝试读取不存在的文件或尝试写入只读文件时，您使用的
文件函数，通常在 {bf:{help mf_fopen_zh:[M-5] fopen()}} 中记录，会中止并报告错误。
中止并报告错误意味着您调用的文件函数在出现错误时停止，
同时调用的函数也被中止。用户会看到记录回溯的日志，记录了发生了什么错误。

{pstd}
有时您可能希望编写代码来处理这种错误。
例如，您正在为 Stata 中的一个命令编写子例程，
如果文件不存在，您希望子例程
呈现一条信息性错误消息并退出，而不产生回溯日志，但返回非零的返回代码。或者在另外一个应用中，如果文件不存在，这根本不是错误；
您的代码会创建该文件。

{pstd}
大多数文件处理函数都有一个对应的下划线函数，
当出现问题时，它返回一个错误代码而不是中止。
{cmd:fopen()} 打开文件或中止并报告错误。
{cmd:_fopen()} 打开文件或返回错误代码。错误代码足够让您的程序
采取适当的措施。使用下划线函数时，调用程序将处理可能出现的任何错误。

{pstd}
让我们来看一个简单的避免回溯日志的例子。
如果您编写如下代码：

		{cmd:fh = fopen(filename, "r")}

{pstd} 
并且该文件不存在，则执行将中止，您会看到一个回溯
日志。如果您编写如下代码：

		{cmd}if ((fh = _fopen(filename, "r"))<0) {c -(}
			errprintf("%s\n", ferrortext(fh))
			exit(freturncode(fh))
		{c )-}{txt}

{pstd}
执行仍然会停止，如果该文件不存在，但这次
它是因为您编写了 {help mf_exit_zh:exit()}。
您仍然会看到错误消息，但这次，您会看到这个消息，因为您编写了
{help mf_errprintf_zh:errprintf()}。没有回溯日志被生成，因为您并没有插入生成一个的代码。
如果您希望生成一条日志，可以使用 {cmd:_exit()}。

{pstd}
文件错误代码及其相关的消息如下：

       负
	代码    含义
	{hline 61}
	    0    一切正常
	   -1    文件结束 {it:(该代码通常不是错误)}

	 -601    找不到文件
	 -602    文件已存在
	 -603    文件无法打开
	 -608    文件是只读的

	 -610    文件不是 Stata 格式
	 -612    文件意外结束

	 -630    此版本的 Stata 不支持 Web 文件
	 -631    找不到主机
	 -632    此上下文不允许 Web 文件
	 -633    可能无法写入 Web 文件
	 -639    文件传输错误 -- 校验和不匹配

	 -660    找不到代理主机
	 -662    代理服务器拒绝发送请求
	 -663    远程连接到代理失败
	 -665    无法设置套接字为非阻塞
	 -667    {cmd:winsock.dll} 版本错误
	 -668    找不到有效的 {cmd:winsock.dll} 或 {cmd:astsys0.lib}
	 -669    无效的 URL

	 -670    无效的网络端口号
	 -671    未知的网络协议
	 -672    服务器拒绝发送文件
         -673    服务器需要授权
	 -674    服务器返回意外响应
	 -675    服务器报告错误
	 -676    服务器拒绝发送请求
	 -677    远程连接失败 -- 请参见 {cmd:r(677)} 进行故障排除
	 -678    无法打开本地网络套接字
	 -679    意外的网络错误

	 -680    找不到有效的 {cmd:odbc32.dll}
	 -681    打开的文件过多
	 -682    无法连接到 ODBC 数据源名称
	 -683    无法在 ODBC 表中获取变量
	 -684    找不到有效的 {cmd:dlxabi32.dll}

	 -691    输入/输出错误
         -699    可用磁盘空间不足

	-3601    无效的文件句柄
	-3602    无效的文件名
	-3611    打开的文件过多
	-3621    尝试写入只读文件
	-3622    尝试读取只写文件
	-3623    尝试定位仅追加文件
	-3698    文件定位错误
	{hline 61}

{pstd}
文件错误代码通常是负数，但 {cmd:ferrortext(}{it:ec}{cmd:)} 和 {cmd:freturncode(}{it:ec}{cmd:)} 不关心 {it:ec} 是正数还是负数。


{marker conformability}{...}
{title:符合性}

{p 4 4 2}
{cmd:ferrortext(}{it:ec}{cmd:)},
{cmd:freturncode(}{it:ec}{cmd:)}:
{p_end}
	       {it:ec}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:ferrortext(}{it:ec}{cmd:)}
和 
{cmd:freturncode(}{it:ec}{cmd:)} 将 {it:ec} = -1（文件结束）
视为与 {it:ec} = 612（文件意外结束）相同。
代码 -1 通常不是错误；它只是表示文件结束。
假定您不会在这种情况下调用 {cmd:ferrortext()} 和 {cmd:freturncode()}。
如果您确实调用了这些函数，假定您是认为文件结束是意外的。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view ferrortext.mata, adopath asis:ferrortext.mata} 获取两个函数的源代码。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ferrortext.sthlp>}