{smcl}
{* *! version 1.6.11  27jun2019}{...}
{viewerdialog creturn "dialog creturn"}{...}
{vieweralsosee "[P] creturn" "mansection P creturn"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{vieweralsosee "[P] return" "help return_zh"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{viewerjumpto "Syntax" "creturn_zh##syntax"}{...}
{viewerjumpto "Menu" "creturn_zh##menu"}{...}
{viewerjumpto "Description" "creturn_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "creturn_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "creturn_zh##remarks"}
{help creturn:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[P] creturn} {hline 2}}返回 c 类值{p_end}
{p2col:}({mansection P creturn:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmdab:cret:urn} {cmdab:l:ist}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 其他实用工具 > 列出常量和系统参数}


{marker description}{...}
{title:描述}

{pstd}
Stata 的 c 类 {cmd:c()} 包含系统参数和设置的值，以及某些常量，例如 π 的值。{cmd:c()} 的值可以被引用，但不能被赋值。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P creturnRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

        {help creturn##values:系统值}
	{help creturn##directories:目录和路径}
	{help creturn##limits:系统限制}
	{help creturn##numerical:数值和字符串限制}
	{help creturn##currentdta:当前数据集}
	{help creturn##memory:内存设置}
	{help creturn##output:输出设置}
	{help creturn##interface:界面设置}
	{help creturn##graphics:图形设置}
	{help creturn##network:网络设置}
	{help creturn##update:更新设置}
	{help creturn##trace:跟踪（程序调试）设置}
	{help creturn##mata:Mata 设置}
	{help creturn##java:Java 设置}
	{help creturn##python:Python 设置}
	{help creturn##rng:RNG 设置}
	{help creturn##unicode:Unicode 设置}
	{help creturn##other:其他设置}
	{help creturn##misc:其他}


{marker values}{...}
{title:系统值}

{phang}
{cmd:c(current_date)} 返回当前日期，格式为
    {bind:"{it:dd Mon yyyy}"}, 其中 {it:dd} 是月份的天数（如果小于 10，则使用一个空格和一个数字）；{it:Mon} 是 {cmd:Jan}、{cmd:Feb}、{cmd:Mar}、{cmd:Apr}、{cmd:May}、{cmd:Jun}、{cmd:Jul}、{cmd:Aug}、{cmd:Sep}、{cmd:Oct}、{cmd:Nov} 或 {cmd:Dec} 中的一个；{it:yyyy} 是四位数的年份。

{phang2}
    示例:{break}
	{cmd: 1 Jan 2003}{break}
	{cmd:26 Mar 2007}{break}
	{cmd:{ccl current_date}}

{phang}
{cmd:c(current_time)} 返回当前时间，格式为
    {bind:"{it:hh}{cmd::}{it:mm}{cmd::}{it:ss}"}, 其中 {it:hh} 是 00 到 23 的小时数，{it:mm} 是 00 到 59 分钟，{it:ss} 是 00 到 59 秒。

{phang2}
    示例:{break}
	{cmd:09:42:55}{break}
	{cmd:13:02:01}{break}
	{cmd:{ccl current_time}}

{phang}
{cmd:c(rmsg_time)} 返回一个数字标量，等于最后报告的经过时间，该时间是经过 {cmd:set rmsg on} 设置得出的；请参见 {manhelp rmsg P}。

{phang}
{cmd:c(stata_version)} 返回一个数字标量，等于您正在运行的 Stata 版本。在 Stata 中，{ccl stata_version} 的值为 
    {ccl stata_version}; 在 Stata {ccl stata_version}.1 中，值为 {ccl stata_version}.1；在 Stata 14 中，值为 14。这是您正在运行的 Stata 版本，而不是 {cmd:version} 命令所模拟的版本。

{phang}
{cmd:c(version)} 返回一个数字标量，等于当前由 {cmd:version} 命令设定的版本；请参见 {manhelp version P}。

{phang}
{cmd:c(userversion)} 返回一个数字标量，等于当前由 {cmd:version} 命令设定的用户版本；请参见 {manhelp version P}。

{phang}
{cmd:c(dyndoc_version)} 返回一个数字标量，等于 Stata 理解的当前版本
      {help dynamic tags##version:动态文档} 的值，Stata 能够转换任何动态文档，其版本小于或等于 {cmd:c(dyndoc_version)}。动态文档版本由文档内的 {cmd:<<dd_version>>} 标签设定。

{phang}
{cmd:c(born_date)} 返回一个字符串，格式与
    {cmd:c(current_date)} 相同，包含您正在运行的 Stata 可执行文件的日期；请参见 {manhelp update R}。

{phang}
{cmd:c(flavor)} 返回一个包含 {cmd:"IC"} 的字符串，取决于您所运行的 Stata 版本。对于【help statamp:Stata/MP】和
    {help SpecialEdition:Stata/SE}，以及对于 {help stataic_zh:Stata/IC}，均有 {cmd:c(flavor)}={cmd:"IC"}。将 {cmd:c(flavor)}={cmd:"IC"} 理解为“IC 或更好”，因此 Stata/IC 和所有更高版本的 Stata 都被视为“IC”。

{phang}
{cmd:c(bit)} 返回一个数字标量，如果您使用的是 64 位版本的 Stata，值为 {cmd:64}；如果您使用的是 32 位版本的 Stata，值为 {cmd:32}。如果您使用的是旧版本的 Stata，您才会看到 {cmd:c(bit)}={cmd:32}；所有现代 Stata 可执行文件都是 64 位。

{phang}
{cmd:c(SE)} 返回一个数字标量，如果您正在运行 {help SpecialEdition:Stata/SE} 或 {help statamp_zh:Stata/MP}，值为 {cmd:1}，否则值为 {cmd:0}。将 {cmd:c(SE)}={cmd:1} 理解为“SE 或更好”，因此 Stata/SE 和 Stata/MP 都返回 {cmd:1}。

{phang}
{cmd:c(MP)} 返回一个数字标量，如果您正在运行 {help statamp_zh:Stata/MP}，返回值为 {cmd:1}，否则返回 {cmd:0}。

{phang}
{cmd:c(processors)} 返回一个数字标量，等于 Stata/MP 当前设置使用的处理器/核心数。如果您未运行 Stata/MP，则返回值为 {cmd:1}。

{phang}
{cmd:c(processors_lic)} 返回一个数字标量，等于您的 Stata/MP 许可证允许的处理器/核心数。如果您未运行 Stata/MP，则返回 {cmd:1}。

{phang}
{cmd:c(processors_mach)} 返回一个数字标量，等于您计算机的处理器/核心数（如果您正在运行 Stata/MP）。如果您未运行 Stata/MP，则返回缺失值（{cmd:.}）。

{phang}
{cmd:c(processors_max)} 返回一个数字标量，等于 Stata/MP 可能使用的最大处理器/核心数，等于 {cmd:c(processors_lic)} 和 
     {cmd:c(processors_mach)} 中的较小者。如果您未运行 Stata/MP，则返回值为 {cmd:1}。

{phang}
{cmd:c(mode)} 返回一个字符串，包含 {cmd:""} 或 {cmd:"batch"}，具体取决于 Stata 是在交互模式下启动（通常情况）还是在批处理模式下（可能使用 Stata 的 {cmd:-b} 选项）。

{phang}
{cmd:c(console)} 返回一个字符串，包含 {cmd:""} 或 {cmd:"console"}，具体取决于您是否在运行窗口版本的 Stata 或 Stata(console)。

{phang}
{cmd:c(os)} 返回一个字符串，包含 {cmd:"MacOSX"}、{cmd:"Unix"} 或 {cmd:"Windows"}，具体取决于您正在使用的操作系统。
    尽管截至撰写本文时，替代列表是完整的，但可能并不完整。

{phang}
{cmd:c(osdtl)} 返回一个额外的字符串，具体取决于操作系统，提供操作系统的发布编号或其他详细信息。{cmd:c(osdtl)} 通常是 {cmd:""}。

{phang}
{cmd:c(hostname)} 返回一个字符串，包含主机计算机的名称。

{* this is Macintosh, not Mac}{...}
{phang}
{cmd:c(machine_type)} 返回一个描述硬件平台的字符串，例如 {cmd:"PC"}、{cmd:"PC (64-bit x86-64)"} 或
    {cmd:"Macintosh (Intel 64-bit)"}。

{phang}
{cmd:c(byteorder)} 返回一个包含 {cmd:"lohi"} 或 {cmd:"hilo"} 的字符串，具体取决于硬件的字节顺序。考虑一个两个字节的整数。
    在某些计算机上，最重要的字节是首先写入的，因此 x'0001'
    （表示字节 00 后跟 01）将表示数字 1。这类计算机被称为 {cmd:"hilo"}。其他计算机则首先写入最低有效字节，因此 x`0001' 将是 256，而 1 将是 x'0100'。此类计算机被称为 {cmd:"lohi"}。

{phang}
{cmd:c(username)} 返回当前使用 Stata 的用户的用户 ID （由操作系统提供）。

{marker directories}{...}
{title:目录和路径}

{pstd}
注意：下面返回的目录路径通常以目录分隔符结尾，因此如果您希望构造文件 {cmd:abc.def} 在目录 {cmd:c(}...{cmd:)} 中的完整路径名，您可以编写

	...{cmd:`c(}...{cmd:)'abc.def}...

{pstd}而不是

	...{cmd:`c(}...{cmd:)'/abc.def}...

{pstd}
如果 {cmd:c(}...{cmd:)} 返回的目录名称未以目录分隔符结尾，则会特别标注这一事实。


{phang}
{cmd:c(sysdir_stata)} 返回一个字符串，包含 Stata 安装目录的名称。更技术上，{cmd:c(sysdir_stata)} 返回由 
    {cmd:sysdir} 定义的 STATA 目录；见 {manhelp sysdir P}。

{pin2}
    示例： {cmd:{ccl sysdir_stata}}

{phang}
{cmd:c(sysdir_base)} 返回一个字符串，包含与 Stata 一起安装的原始官方 ado 文件的目录名称。

{pin2}
    示例： {cmd:{ccl sysdir_base}}

{phang}
{cmd:c(sysdir_site)} 返回一个字符串，包含可供站点使用的社区贡献的附加文件的目录名称。更技术上，{cmd:c(sysdir_site)} 返回 {cmd:SITE}
    目录，该目录由 {cmd:sysdir} 定义；见 {manhelp sysdir P}。

{pin2}
    示例： {cmd:{ccl sysdir_site}}


{phang}
{cmd:c(sysdir_plus)} 返回一个字符串，包含您个人使用的其他附加文件的目录名称。更技术上，{cmd:c(sysdir_plus)} 返回 PLUS 目录，
    由 {cmd:sysdir} 定义；见 {manhelp sysdir P}。

{pin2}
    示例： {cmd:{ccl sysdir_plus}}

{phang}
{cmd:c(sysdir_personal)} 返回一个字符串，包含您编写的附加文件的目录名称。更技术上，{cmd:c(sysdir_personal)} 返回 PERSONAL 目录，
    由 {cmd:sysdir} 定义；见 {manhelp sysdir P}。

{pin2}
    示例： {cmd:{ccl sysdir_personal}}

{phang}
{cmd:c(sysdir_oldplace)} 标识可能安装社区贡献的 ado 文件的另一个目录。
    {cmd:c(sysdir_oldplace)} 与非常旧版本的 Stata 保持兼容性。

{phang}
{cmd:c(tmpdir)} 返回一个字符串，包含 Stata 用于临时文件的目录名称。

{pin2}
    示例： {cmd:{ccl tmpdir}}

{phang}
{cmd:c(adopath)} 返回一个字符串，包含当 Stata 尝试查找 ado 文件时要搜索的目录。路径元素用分号 ({cmd:;} ) 分隔，元素本身可以是目录名称、{cmd:"."} 表示当前目录，或 {help sysdir_zh} 引用。

{pin2}
    示例： {cmd:{ccl adopath}}

{phang}
{cmd:c(pwd)} 返回一个字符串，包含当前工作目录。

{pin2}
    示例： {cmd:{ccl pwd}}

{pin2}
    注意，{cmd:c(pwd)} 不以目录分隔符结尾，因此在程序中，要保存文件 {cmd:abc.def} 的名称并以当前目录为前缀（例如，因为您即将更改目录但仍想引用文件），您将编码为

	    {cmd:local file "`c(pwd)'/abc.def"}
或
	    {cmd:local file "`c(pwd)'`c(dirsep)'abc.def"}

{pin2}
    如果您希望构造"美观"的文件名，第二种形式是首选，但第一种形式是可接受的，因为 Stata 将了解正斜杠（{cmd:/}）作为目录分隔符。

{phang}
{cmd:c(dirsep)} 返回一个字符串，包含 {cmd:"/"}。

{pin2}
    示例： {cmd:{ccl dirsep}}

{pin2}
    对于 Windows 操作系统，返回正斜杠（{cmd:/}）而不是反斜杠（{cmd:\}）。Windows 版 Stata 可以理解两者，但是在程序中，建议使用正斜杠，因为反斜杠可能会干扰 Stata 对宏扩展字符的解释。如果您的代码结果是反斜杠和正斜杠字符的混合（例如： {cmd:\a\b/myfile.dta}），请不要担心，Stata 会理解它，就像它理解 {cmd:/a/b/myfile.dta} 或 {cmd:\a\b\myfile.dta} 一样。


{marker limits}{...}
{title:系统限制}

{phang}
{cmd:c(max_N_theory)} 返回一个数字标量，报告允许的最大观察数。

{pin2}
    {cmd:c(max_N_theory)} 报告 Stata 如果有足够内存可以处理的最大观察数。对于 Stata/SE 和 Stata/IC，通常为 2,147,483,619，对于 Stata/MP，通常为 1,099,511,627,775。

{phang}
{cmd:c(max_k_theory)} 返回一个数字标量，报告允许的最大变量数。如果您有 Stata/MP 或 Stata/SE，您可以使用 {cmd:set maxvar} 更改此数字；请参见 {help memory_zh:[D] memory}。

{phang}
    {cmd:c(max_width_theory)} 返回允许的理论最大宽度。数据集的宽度定义为其各个变量的字节长度之和。如果您有一个包含两个 {help int} 变量、三个 {help float}、一个 {help double} 和一个 {help data types:str20} 变量的数据集，则该数据集的宽度为 2*2 + 3*4 + 8 + 20 = 44 字节。

{marker max_matdim}{...}
{phang}
{cmd:c(max_matdim)} 返回 Stata 矩阵的最大行或列维度。此维度对于 Stata/MP 为 65,534，对于 Stata/SE 为 32,767，对于 Stata/IC 为 800。

{phang}
{cmd:c(max_it_cvars)} 返回一个数字标量，报告在交互中允许的最大连续变量数。

{phang}
{cmd:c(max_it_fvars)} 返回一个数字标量，报告在交互中允许的最大因子变量数。

{phang}
{cmd:c(max_macrolen)} 和 {cmd:c(macrolen)} 各返回一个数字标量，报告宏的最大长度。在 Stata/MP 或 Stata/SE 下，{cmd:c(max_macrolen)} 和 {cmd:c(macrolen)} 可能不相等，否则将相等。对于 {help statamp_zh:Stata/MP} 或 {help SpecialEdition:Stata/SE}，{cmd:macrolen} 是根据 {help maxvar} 设定的：长度足够容纳指向数据集中每个变量的宏。

{phang}
{cmd:c(charlen)} 返回一个数字标量，报告 {help char_zh:特征} 的最大长度。

{phang}
{cmd:c(max_cmdlen)} 和 {cmd:c(cmdlen)} 各返回一个数字标量，报告 Stata 命令的最大长度。在 Stata/MP 或 Stata/SE 下，{cmd:c(max_cmdlen)} 和 {cmd:c(cmdlen)} 可能不相等，否则将相等。对于 {help statamp_zh:Stata/MP} 或 {help SpecialEdition:Stata/SE}，{cmd:cmdlen} 是根据 {help maxvar} 设定的：长度足够容纳指向数据集中每个变量的命令。

{phang}
{cmd:c(namelenbyte)} 返回一个数字标量，等于 {ccl namelenbyte}，这是 Stata 中名称的当前最大长度（字节）。

{phang}
{cmd:c(namelenchar)} 返回一个数字标量，等于 {ccl namelenchar}，这是 Stata 中名称的当前最大长度（Unicode 字符）。

{phang}
{cmd:c(eqlen)} 返回 Stata 允许的方程名称的最大长度。


{marker numerical}{...}
{title:数值和字符串限制}

{phang}
{cmd:c(mindouble)}、{cmd:c(maxdouble)} 和 {cmd:c(epsdouble)} 各返回一个数字标量。{cmd:c(mindouble)} 是可以存储在 8 字节 {help double} 存储类型中的最大负数。{cmd:c(maxdouble)} 是可以存储在 {help double} 中的最大正数。
{cmd:c(epsdouble)} 是最小的非零正数（epsilon），在加 1 并存储为 {help double} 时不等于 1。

{phang}
{cmd:c(smallestdouble)} 返回一个数字标量，包含大于零的最小全精度 {help double}。可以存储更小的正值；这些是非标准化数字，且不具备完整的精度。

{phang}
{cmd:c(minfloat)}、{cmd:c(maxfloat)} 和 {cmd:c(epsfloat)} 各返回一个数字标量，报告 4 字节 {help float} 存储类型的 {cmd:c(mindouble)}、{cmd:c(maxdouble)} 和 {cmd:c(epsdouble)}。

{phang}
{cmd:c(minlong)} 和 {cmd:c(maxlong)} 返回标量，报告可以存储在 4 字节整数 {help long} 存储类型中的最大负值和最大正值。没有 {cmd:c(epslong)}，但如果有的话，它将返回 1。

{phang}
{cmd:c(minint)} 和 {cmd:c(maxint)} 返回标量，报告可以存储在 2 字节整数 {help int} 存储类型中的最大负值和最大正值。

{phang}
{cmd:c(minbyte)} 和 {cmd:c(maxbyte)} 返回标量，报告可以存储在 1 字节整数 {help byte} 存储类型中的最大负值和最大正值。

{phang}
{cmd:c(maxstrvarlen)} 返回允许的最长 {help data types:str}{it:#} 字符串存储类型，这为 {ccl maxstrvarlen}。请不要将 {cmd:c(maxstrvarlen)} 与 {cmd:c(macrolen)} 混淆。{cmd:c(maxstrvarlen)} 是指存储在数据中的字符串变量。

{phang}
{cmd:c(maxstrlvarlen)} 返回可以存储在 {help data types:strL} 中的最长字符串的长度，为 2,000,000,000。

{phang}
{cmd:c(maxvlabellen)} 返回一个值，表示允许的单个 {help label_zh:value label} 字符串的最大长度，为 32,000。


{marker currentdta}{...}
{title:当前数据集}

{phang}
{cmd:c(frame)} 返回一个字符串，包含当前框架的名称；见 {helpb frames intro:[D] frames intro}。

{phang}
{cmd:c(N)} 返回一个数字标量，等于 {cmd:_N}，即内存中数据集的观察数。在表达式中，引用 {cmd:_N} 或 {cmd:c(N)} 没有区别。
然而，在与 {cmd:by} 前缀一起使用的表达式中，{cmd:c(N)} 并不随 by 组变化，{cmd:_N} 则会变化。

{pmore}
  {cmd:c(N)} 的优点在于非表达式上下文。假设您正在调用一个子例程 {cmd:mysub}，该子例程接受数据集中观察数作为参数。那么您可以编码：

	    {cmd:local nobs = _N}
	    {cmd:mysub `nobs'}
或
	    {cmd:mysub `c(N)'}

{pin2}
    第二种形式需要更少的输入。

{phang}
{cmd:c(k)} 返回一个数字标量，等于内存中数据集中的变量数。
    {cmd:c(k)} 等于 {cmd:r(k)}，就是通过 {help describe_zh} 返回的。

{phang}
{cmd:c(width)} 返回一个数字标量，等于内存中数据集的宽度（以字节为单位）。
    如果您有一个包含两个 {help int} 变量、三个 {help float}、一个 {help double} 和一个 {help data types:str20} 变量的数据集，则该数据集的宽度为 2*2 + 3*4 + 8 + 20 = 44 字节。
    {cmd:c(width)} 等于 {cmd:r(width)}，这是由 {help describe_zh} 返回的。

{phang}
{cmd:c(changed)} 返回一个数字标量，如果内存中的数据集自上次保存以来未更改，则值为 {cmd:0}，否则为 {cmd:1}。
{cmd:c(changed)} 等于 {cmd:r(changed)}，这是由 {help describe_zh} 返回的。

{phang}
{cmd:c(filename)} 返回一个字符串，包含上次通过 {help use_zh} 或 {help save_zh} 指定的文件名，例如 {cmd:"C:\Data\auto.dta"}。{cmd:c(filename)} 等于 {cmd:$S_FN}。

{phang}
{cmd:c(filedate)} 返回一个字符串，包含文件在 {cmd:c(filename)} 中最后保存的日期和时间，例如 {cmd:"7 Jul 2016 13:51"}。
{cmd:c(filedate)} 等于 {cmd:$S_FNDATE}。


{marker memory}{...}
{title:内存设置}

{phang}
{cmd:c(memory)} 返回一个数字标量，报告 Stata 当前分配的内存量（以字节为单位）。

{phang}
{cmd:c(maxvar)} 返回一个数字标量，报告当前数据集中允许的最大变量数，这是通过 {helpb maxvar:set maxvar} 设定的，如果您正在运行 {help statamp_zh:Stata/MP} 或 {help SpecialEdition:Stata/SE}。否则，{cmd:c(maxvar)} 是一个常量。

{phang}
{cmd:c(niceness)} 返回一个数字标量，记录 Stata 多久将未使用的段返回给操作系统。

{phang}
{cmd:c(min_memory)} 返回一个数字标量，记录可在未使用时将内存减少到的最小值。

{phang}
{cmd:c(max_memory)} 返回一个数字标量，记录 Stata 可能分配的最大内存量。

{phang}
{cmd:c(segmentsize)} 返回一个数字标量，记录内存分配的段大小。

{phang}
{cmd:c(adosize)} 返回一个数字标量，等于当前 {helpb adosize:set adosize} 设置。

{phang}
{cmd:c(max_preservemem)} 返回一个数字标量，记录 {cmd:preserve} 可能在内存中存储数据集所使用的最大内存量，若您正在运行 {help statamp_zh:Stata/MP}，若不是，{cmd:c(max_preservemem)} 返回系统缺失值。


{marker output}{...}
{title:输出设置}

{phang}
{cmd:c(more)} 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"}，根据当前 {help more_zh:set more} 设置。

{phang}
{cmd:c(rmsg)} 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"}，根据当前 {help rmsg_zh:set rmsg} 设置。

{phang}
{cmd:c(dp)} 返回一个字符串，包含 {cmd:"period"} 或 {cmd:"comma"}，根据当前 {helpb dp:set dp} 设置。

{phang}
{cmd:c(linesize)} 返回一个数字标量，等于当前 {helpb linesize:set linesize} 设置。

{phang}
{cmd:c(pagesize)} 返回一个数字标量，等于当前 {helpb pagesize:set pagesize} 设置。

{phang}
{cmd:c(logtype)} 返回一个字符串，包含 {cmd:"smcl"} 或 {cmd:"text"}，根据当前 {helpb logtype:set logtype} 设置。

{phang}
{cmd:c(noisily)} 返回一个数字标量，如果输出被抑制则为 {cmd:0}，如果输出被显示则为 {cmd:1}；
见 {help quietly_zh:[P] quietly}。

{phang}
{cmd:c(notifyuser)} (仅限 Mac) 返回一个字符串，包含 {cmd:"on"}
或 {cmd:"off"}，根据当前 {help notifyuser_zh:set notifyuser}
设置。

{phang}
{cmd:c(playsnd)} (仅限 Mac) 返回一个字符串，包含 {cmd:"on"}
或 {cmd:"off"}，根据当前 {help playsnd_zh:set playsnd}
设置。

{phang}
{cmd:c(include_bitmap)} (仅限 Mac) 返回一个字符串，包含 {cmd:"on"}
或 {cmd:"off"}，根据当前 {help include_bitmap_zh:set include_bitmap}
设置。

{phang}
{cmd:c(iterlog)} 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"}，根据当前 {help set_iter_zh:set iterlog} 设置。

{phang}
{cmd:c(level)} 返回一个数字标量，等于当前 {help level_zh:set level} 设置。

{phang}
{cmd:c(clevel)} 返回一个数字标量，等于当前 {help clevel_zh:set clevel} 设置。

{phang}
{cmd:c(showbaselevels)} 返回一个包含 {cmd:""}、{cmd:"on"}、{cmd:"off"} 或 {cmd:"all"} 的字符串，具体取决于当前 {helpb set showbaselevels} 设置。

{phang}
{cmd:c(showemptycells)} 返回一个包含 {cmd:""}、{cmd:"on"} 或 {cmd:"off"} 的字符串，根据当前 {helpb set showemptycells} 设置。

{phang}
{cmd:c(showomitted)} 返回一个包含 {cmd:""}、{cmd:"on"} 或 {cmd:"off"} 的字符串，根据当前 {helpb set showomitted} 设置。

{phang}
{cmd:c(fvlabel)} 返回一个包含 {cmd:"on"} 或 {cmd:"off"} 的字符串，根据当前 {helpb set fvlabel} 设置。

{phang}
{cmd:c(fvwrap)} 返回一个数字标量，等于当前 {helpb set fvwrap} 设置。

{phang}
{cmd:c(fvwrapon)} 返回一个字符串，包含 {cmd:"word"} 或 {cmd:"width"}，根据当前 {helpb set fvwrapon} 设置。

{phang}
{cmd:c(lstretch)} 返回一个字符串，包含 {cmd:""}、{cmd:"on"} 或 {cmd:"off"}，根据当前 {helpb set lstretch} 设置。

{phang}
{cmd:c(cformat)} 返回一个字符串，包含当前的 {helpb set cformat} 设置。

{phang}
{cmd:c(sformat)} 返回一个字符串，包含当前的 {helpb set sformat} 设置。

{phang}
{cmd:c(pformat)} 返回一个字符串，包含当前的 {helpb set pformat} 设置。

{phang}
{cmd:c(coeftabresults)} 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"}，根据当前 {helpb set coeftabresults} 设置。

{phang}
{cmd:c(dots)} 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"}，根据当前 {helpb set dots} 设置。


{marker interface}{...}
{title:界面设置}

{phang}
{cmd:c(dockable)} (仅限 Windows) 返回一个字符串，包含 {cmd:"on"} 或
    {cmd:"off"}，根据当前 {help dockable_zh:set dockable} 设置。

{phang}
{cmd:c(locksplitters)} (仅限 Windows) 返回一个字符串，包含 {cmd:"on"} 或
    {cmd:"off"}，根据当前 {help locksplitters_zh:set locksplitters} 设置。

{phang}
{cmd:c(pinnable)} (仅限 Windows) 返回一个字符串，包含 
  {cmd:"on"} 或 {cmd:"off"}，根据当前 {help pinnable_zh:set pinnable} 设置。

{phang}
{cmd:c(doublebuffer)} (仅限 Windows) 返回一个字符串，包含
  {cmd:"on"} 或 {cmd:"off"}，根据当前 {help doublebuffer_zh:set doublebuffer} 设置。

{phang}
{cmd:c(reventries)} 返回一个数字标量，包含历史窗口存储的最大命令数；见 {help reventries_zh}。

{phang}
{cmd:c(fastscroll)} (仅限 Unix 和 Windows) 返回一个字符串，包含
{cmd:"on"} 或 {cmd:"off"}，根据当前 {help fastscroll_zh:set fastscroll} 设置。

{phang}
{cmd:c(revkeyboard)} (仅限 Mac) 返回一个字符串，包含 {cmd:"on"}
或 {cmd:"off"}，根据当前 {helpb revkeyboard:set revkeyboard}
设置。

{phang}
{cmd:c(varkeyboard)} (仅限 Mac) 返回一个字符串，包含 {cmd:"on"}
或 {cmd:"off"}，根据当前 {help varkeyboard_zh:set varkeyboard}
设置。

{phang}
{cmd:c(smoothfonts)} (仅限 Mac) 返回一个字符串，包含 {cmd:"on"}
或 {cmd:"off"}，根据当前 {help smoothfonts_zh:set smoothfonts}
设置。

{phang}
{cmd:c(linegap)} 返回一个数字标量，等于当前的
    {help linegap_zh:set linegap} 设置。如果 {cmd:set linegap} 在您正在运行的 Stata 版本下不相关，
    {cmd:c(linegap)} 返回系统缺失值。

{phang}
{cmd:c(scrollbufsize)} 返回一个数字标量，等于当前
    {help scrollbufsize_zh:set scrollbufsize} 设置。如果
    {cmd:set scrollbufsize} 在您正在运行的 Stata 版本下不相关，{cmd:c(scrollbufsize)} 返回系统缺失值。

{phang}
{cmd:c(maxdb)} 返回一个数字标量，包含会话期间记住的最大对话框数量；见 {manhelp db R}。


{marker graphics}{...}
{title:图形设置}

{phang}
{cmd:c(graphics)} 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"}，
    根据当前 {help set_graphics_zh:set graphics} 设置。

{phang}
{cmd:c(autotabgraphs)} (仅限 Windows) 返回一个字符串，包含 {cmd:"on"}
或 {cmd:"off"}，根据当前
{help autotabgraphs_zh:set autotabgraphs} 设置。

{phang}
{cmd:c(scheme)} 返回当前 {helpb set scheme} 设置的名称。

{phang}
{cmd:c(printcolor)} 返回 {cmd:"automatic"}、{cmd:"asis"}、
    {cmd:"gs1"}、{cmd:"gs2"} 或 {cmd:"gs3"}，根据当前
    {helpb set printcolor} 设置。

{phang}
{cmd:c(copycolor)} (仅限 Mac 和 Windows) 返回 {cmd:"automatic"}、
{cmd:"asis"}、{cmd:"gs1"}、{cmd:"gs2"} 或 {cmd:"gs3"}，根据当前
{helpb set printcolor:set copycolor} 设置。


{marker network}{...}
{title:网络设置}

{phang}
{cmd:c(checksum)} 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"}，
    根据当前 {help checksum_zh:set checksum} 设置。

{phang}
{cmd:c(timeout1)} 返回一个数字标量，等于当前
    {helpb timeout1:set timeout1} 设置。

{phang}
{cmd:c(timeout2)} 返回一个数字标量，等于当前
    {helpb timeout2:set timeout2} 设置。

{phang}
{cmd:c(httpproxy)} 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"}，
    根据当前 {helpb httpproxy:set httpproxy} 设置。

{phang}
{cmd:c(httpproxyhost)} 返回一个字符串，包含代理主机的名称，或 {cmd:""} 如果未设置代理主机。
    {cmd:c(httpproxyhost)} 仅在 {cmd:c(httpproxy)}={cmd:"on"} 时相关。

{phang}
{cmd:c(httpproxyport)} 返回一个数字标量，等于代理端口号。
    {cmd:c(httpproxyport)} 仅在 {cmd:c(httpproxy)}={cmd:"on"} 时相关。

{phang}
{cmd:c(httpproxyauth)} 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"}，
    根据当前 {helpb httpproxy:set httpproxyauth} 设置。
    {cmd:c(httpproxyauth)} 仅在 {cmd:c(httpproxy)}={cmd:"on"} 时相关。

{phang}
{cmd:c(httpproxyuser)} 返回一个字符串，包含代理用户的名称，如果设置，则返回此值，否则返回 {cmd:""}。
    {cmd:c(httpproxyuser)} 仅在 {cmd:c(httpproxyauth)}={cmd:"on"} 和 {cmd:c(httpproxy)}={cmd:"on"} 时相关。

{phang}
{cmd:c(httpproxypw)} 返回一个字符串，如果设置了密码，则为 {cmd:"*"}，否则返回 {cmd:""}。
    {cmd:c(httpproxypw)} 仅在 {cmd:c(httpproxyauth)}={cmd:"on"} 和 {cmd:c(httpproxy)}={cmd:"on"} 时相关。


{marker update}{...}
{title:更新设置}

{phang}
{cmd:c(update_query)} (仅限 Mac 和 Windows) 返回一个字符串，包含
    {cmd:"on"} 或 {cmd:"off"}，根据当前
    {helpb update_query:set update_query} 设置。

{phang}
{cmd:c(update_interval)} (仅限 Mac 和 Windows) 返回一个数字标量
   ，包含当前 {helpb update_interval:set update_interval} 设置。

{phang}
{cmd:c(update_prompt)} (仅限 Mac 和 Windows) 返回一个字符串，包含
    {cmd:"on"} 或 {cmd:"off"}，根据当前
    {helpb update_prompt:set update_prompt} 设置。


{marker trace}{...}
{title:跟踪（程序调试）设置}

{phang}
{cmd:c(trace)} 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"}，
    根据当前 {help trace_zh:set trace} 设置。

{phang}
{cmd:c(tracedepth)} 返回一个数字标量，报告当前
    {help trace_zh:set tracedepth} 设置。

{phang}
{cmd:c(tracesep)} 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"}，
    根据当前 {help trace_zh:set tracesep} 设置。

{phang}
{cmd:c(traceindent)} 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"}，
    根据当前 {help trace_zh:set traceindent} 设置。

{phang}
{cmd:c(traceexpand)} 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"}，
    根据当前 {help trace_zh:set traceexpand} 设置。

{phang}
{cmd:c(tracenumber)} 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"}，
    根据当前 {help trace_zh:set tracenumber} 设置。

{phang}
{cmd:c(tracehilite)} 返回一个字符串，包含 {it:"pattern"}，
    根据当前 {help trace_zh:set tracehilite} 设置。


{marker mata}{...}
{title:Mata 设置}

{phang}
{cmd:c(matastrict)}
 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"}，
    根据当前 {helpb matastrict:set matastrict} 设置。

{phang}
{cmd:c(matalnum)}
 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"}，
    根据当前 {helpb matalnum:set matalnum} 设置。

{phang}
{cmd:c(mataoptimize)}
 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"}，
    根据当前 {helpb mataoptimize:set mataoptimize} 设置。

{phang}
{cmd:c(matafavor)}
 返回一个字符串，包含 {cmd:"space"} 或 {cmd:"speed"}，
    根据当前 {helpb matafavor:set matafavor} 设置。

{phang}
{cmd:c(matacache)}
 返回一个数字标量，包含可被消耗的最大内存（以千字节为单位），
 在 Mata 开始寻找不再被使用的自动加载函数之前。

{phang}
{cmd:c(matalibs)}
 返回一个字符串，包含 {cmd:.mlib} 库中按顺序搜索的名称；
 见 {help m1_how_zh:[M-1] How}。

{phang}
{cmd:c(matamofirst)}
 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"}，
    根据当前 {helpb matamofirst:set matamofirst} 设置。


{marker java}{...}
{title:Java 设置}

{phang}
{cmd:c(java_heapmax)} 返回一个字符串，包含分配给 Java 虚拟机的最大堆内存，
 根据当前 {help java_utilities_zh:java set heapmax} 设置。

{phang}
{cmd:c(java_home)} 返回一个字符串，包含 Java 运行环境的路径，
 根据当前 {help java_utilities_zh:java set home} 设置。


{marker python}{...}
{title:Python 设置}

{phang}
{cmd:c(python_exec)} 返回一个字符串，包含 Python 可执行文件的路径，
 根据当前 {help python_zh:python set exec} 设置。

{phang}
{cmd:c(python_userpath)} 返回一个字符串，包含用户自己的 Python 模块要搜索的路径列表，
 根据当前 {help python_zh:python set userpath} 设置。


{marker rng}{...}
{title:RNG 设置}

{phang}
{cmd:c(rng)} 返回一个字符串，包含当前的 {helpb set rng} 设置。
    这控制 Stata 使用哪个随机数生成器。
    可能的值为 {cmd:"mt64"}，指定始终使用 64 位的 Mersenne Twister 随机数生成器；{cmd:"mt64s"}，指定始终使用 64 位的 Mersenne Twister 流随机数生成器；
    {cmd:"kiss32"}，指定始终使用 32 位的 KISS（keep it simple stupid）随机数生成器；或 {cmd:"default"}，指定让 Stata 根据 {help version_zh:version control} 在这些随机数生成器之间选择。在没有版本控制且使用 {cmd:set rng default} 的情况下，Stata 的默认随机数生成器为 64 位 Mersenne Twister。见 {manhelp set_rng R:set rng}。

{phang}
{cmd:c(rng_current)} 返回一个字符串，包含当前生效的随机数生成器，即 {cmd:"mt64"}、{cmd:"mt64s"} 或
    {cmd:"kiss32"}，具体取决于当前 {helpb set rng} 设置。如果 {cmd:set rng} 当前设置为 {cmd:"default"}，则 
    {cmd:c(rng_current)} 取决于当前用户版本。见 {help version_zh:[P] version}。

{marker rngstate}{...}
{phang}
{cmd:c(rngstate)} 返回一个字符串，包含当前的 
    {helpb random:runiform()} 随机数生成器的状态。您可以使用 
    {help set_seed_zh:set seed} 初始化随机数生成器的状态，并且可以使用 
    {helpb set_rngstate:set rngstate} 将随机数生成器的状态恢复到保存状态。见 {manhelp set_seed R:set seed}。

{phang}
{cmd:c(rngseed_mt64s)} 返回为流随机数生成器（{cmd:mt64s}）最后设置的种子。见 {help set_rngstream_zh:[R] set rngstream}。

{phang}
{cmd:c(rngstream)} 返回流随机数生成器（{cmd:mt64s}）的当前流。见 {help set_rngstream_zh:[R] set rngstream}。


{marker unicode}{...}
{title:Unicode 设置}

{phang}
{cmd:c(locale_ui)}
 返回一个字符串，包含指定用户界面本地化包的区域设置。见 {helpb set locale_ui:[P] set locale_ui}。
 
{phang}
{cmd:c(locale_functions)}
 返回一个字符串，包含字符串函数的默认区域设置。
 见 {helpb set locale_functions:[P] set locale_functions}。
 
{phang}
{cmd:c(locale_icudflt)}
 返回一个字符串，包含默认的 ICU 区域设置。见
 {findalias frlocales}。


{marker other}{...}
{title:其他设置}

{phang}
{cmd:c(type)} 返回一个字符串，包含 {cmd:"float"} 或 {cmd:"double"}，
    根据当前 {help generate_zh:set type} 设置。

{phang}
{cmd:c(maxiter)} 返回一个数字标量，等于当前 
{helpb maxiter:set maxiter} 设置。

{phang}
{cmd:c(searchdefault)} 返回一个字符串，包含 {cmd:"local"}、{cmd:"net"}，
    或 {cmd:"all"}，根据当前 {help search_zh:searchdefault}
    设置。

{phang}
{cmd:c(varabbrev)} 返回一个字符串，包含 {cmd:"on"} 或 {cmd:"off"},
根据当前 {helpb varabbrev:set varabbrev} 设置。

{phang}
{cmd:c(emptycells)} 返回一个字符串，包含 {cmd:"keep"} 或 {cmd:"drop"},
根据当前 {helpb set emptycells:set emptycells} 设置。

{phang}
{cmd:c(fvtrack)} 返回一个字符串，包含
    {cmd:"term"} 或 {cmd:"factor"}，根据当前
    {helpb set fvtrack} 设置。

{phang}
{cmd:c(fvbase)} 返回一个字符串，包含
    {cmd:"on"} 或 {cmd:"off"}，根据当前
    {helpb set fvbase} 设置。

{phang}
{cmd:c(haverdir)} (仅限 Windows) 返回一个字符串，包含您指定的目录名称，该目录包含 Haver 数据库；见
{cmd:set haverdir} 于 {helpb import haver:[D] import haver}。

{phang}
{cmd:c(odbcmgr)} (仅限 Mac 和 Unix) 返回一个字符串，包含 {cmd:"iodbc"}
或 {cmd:"unixodbc"}，根据当前 {help odbc_zh:set odbcmgr}
设置。

{phang}
{cmd:c(odbcdriver)} 返回一个字符串，包含 {cmd:"unicode"}
或 {cmd:"ansi"}，根据当前 {help odbc_zh:set odbcdriver}
设置。

{phang}
{cmd:c(fredkey)} 返回当前 API 密钥，根据当前
{help import_fred_zh:set fredkey} 设置。


{marker misc}{...}
{title:其他}

{phang}
{cmd:c(pi)} 返回一个数字标量，等于 {cmd:_pi}，即圆周与直径的比值。在表达式上下文中，使用 {cmd:c(pi)} 或 {cmd:_pi} 没有区别。
然而，{cmd:c(pi)} 可以在其他上下文中使用（用单引号括起来）。

{phang}
{cmd:c(alpha)} 返回一个字符串，包含 {cmd:"a b c d e f g h i.."}。

{phang}
{cmd:c(ALPHA)} 返回一个字符串，包含 {cmd:"A B C D E F G H I.."}。

{phang}
{cmd:c(Mons)} 返回一个字符串，包含 {cmd:"Jan Feb Mar Apr M.."}。

{phang}
{cmd:c(Months)} 返回一个字符串，包含 {cmd:"January February .."}。

{phang}
{cmd:c(Wdays)} 返回一个字符串，包含 {cmd:"Sun Mon Tue Wed T.."}。

{phang}
{cmd:c(Weekdays)} 返回一个字符串，包含 {cmd:"Sunday Monday Tue.."}。

{phang}
{cmd:c(rc)} 返回一个数字标量，等于 {cmd:_rc}，即 {help capture_zh} 命令设置的值。在表达式上下文中，使用 {cmd:c(rc)} 或 {cmd:_rc} 没有区别。{cmd:c(rc)}，
但可以在其他上下文中使用（用单引号括起来）。这比听起来要不重要，因为您可以同样容易地输入
    {cmd:`=_rc'}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <creturn.sthlp>}