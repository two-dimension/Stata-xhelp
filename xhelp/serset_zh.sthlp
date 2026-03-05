{smcl}
{* *! version 1.1.16  14jun2019}{...}
{vieweralsosee "[P] serset" "mansection P serset"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] class" "help class_zh"}{...}
{vieweralsosee "[P] file" "help file_zh"}{...}
{vieweralsosee "[D] frames intro" "help frames intro"}{...}
{viewerjumpto "语法" "serset_zh##syntax"}{...}
{viewerjumpto "描述" "serset_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "serset_zh##linkspdf"}{...}
{viewerjumpto "serset create 选项" "serset_zh##options_create"}{...}
{viewerjumpto "serset create_xmedians 选项" "serset_zh##options_create_xmedians"}{...}
{viewerjumpto "serset create_cspline 选项" "serset_zh##option_create_cspline"}{...}
{viewerjumpto "serset summarize 选项" "serset_zh##option_summarize"}{...}
{viewerjumpto "serset use 选项" "serset_zh##option_use"}{...}
{viewerjumpto "备注" "serset_zh##remarks"}{...}
{viewerjumpto "存储结果" "serset_zh##results"}
{help serset:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[P] serset} {hline 2}}创建和操作 sersets{p_end}
{p2col:}({mansection P serset:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    从内存中的数据创建新的 serset

{p 8 22 2}
{cmd:serset}
{cmdab:cr:eate}
{varlist}
{ifin}
[{cmd:,}
{cmdab:omitanym:iss}
{cmdab:omitallm:iss}
{cmdab:omitdupm:iss}
{cmdab:omitn:othing}
{opth sort(varlist)}]


    创建交叉中位数的 serset

{p 8 22 2}
{cmd:serset}
{cmd:create_xmedians}
{it:{help serset##svn:svn}_y}
{it:{help serset##svn:svn}_x}
[{it:{help serset##svn:svn}_w}]
[{cmd:,}
{cmd:bands(}{it:#}{cmd:)}
{cmd:xmin(}{it:#}{cmd:)}
{cmd:xmax(}{it:#}{cmd:)}
{cmd:logx}
{cmd:logy}]


    从立方样条插值中创建插值点的 serset

{p 8 22 2}
{cmd:serset}
{cmd:create_cspline}
{it:{help serset##svn:svn}_y}
{it:{help serset##svn:svn}_x}
[{cmd:,}
{cmd:n(}{it:#}{cmd:)}]


    将以前创建的 serset 设为当前 serset

{p 8 22 2}
{cmd:serset}
[{cmd:set}]
{it:{help serset##numbers:#_s}}


    更改当前 serset 中观测值的顺序

{p 8 22 2}
{cmd:serset}
{cmd:sort}
[{it:{help serset##svn:svn}} [{it:{help serset##svn:svn}} [...]]]


    返回当前 serset 的摘要统计

{p 8 22 2}
{cmd:serset}
{cmdab:su:mmarize}
{it:{help serset##svn:svn}}
[{cmd:,}
{cmdab:d:etail}
]


    返回 r() 中有关当前 serset 的信息

{p 8 22 2}
{cmd:serset}


    将 serset 加载到内存中

{p 8 22 2}
{cmd:serset}
{cmd:use}
[{cmd:,}
{cmd:clear}
]


    更改当前 serset 的 ID 

{p 8 22 2}
{cmd:serset}
{cmd:reset_id}
{it:{help serset##numbers:#_s}}


    从内存中消除指定的 sersets

{p 8 22 2}
{cmd:serset}
{cmd:drop}
[{it:{help numlist_zh}} | {cmd:_all}]


    从内存中消除所有 sersets

{p 8 22 2}
{cmd:serset}
{cmd:clear}


    描述现有的 sersets

{p 8 22 2}
{cmd:serset}
{cmd:dir}


{pstd}
{help file_zh} 命令也扩展为允许

    将 serset 写入文件

{p 8 22 2}
{cmd:file}
{cmd:sersetwrite}
{it:handle}


    从文件中读取 serset

{p 8 22 2}
{cmd:file}
{cmd:sersetread}
{it:handle}


{pstd}
以下 {help macro_zh:macro functions} 也可用：

	宏函数                从当前 serset 返回
	{hline 61}
	{cmd:: serset id}                   ID
	{cmd:: serset k}                    变量数量
	{cmd:: serset N}                    观测值数量
	{cmd:: serset varnum} {it:svn}           {it:svnum} 的 {it:svn}
	{cmd:: serset type} {it:svn}             {it:svn} 的存储类型
	{cmd:: serset format} {it:svn}           {it:svn} 的显示格式
	{cmd:: serset varnames}             {it:svns} 的列表
	{cmd:: serset min} {it:svn}              {it:svn} 的最小值
	{cmd:: serset max} {it:svn}              {it:svn} 的最大值
	{hline 61}
	宏函数的语法
		{cmd:local} {it:macname} {cmd::} ...
	当前 serset 是最近创建的或最近通过 {cmd:serset set} 命令设置的。


{marker svn}{...}
{marker numbers}{...}
{pstd}
在上述语法图中，

{phang2}
{it:#_s} 指的是一个 serset 数字，0 {ul:<} {it:#_s} {ul:<} 1,999。

{phang2}
{varlist} 指的是通常的 Stata 变量列表，即当前数据集中出现的变量列表，而不是当前 serset。

{phang2}
{it:svn} 指的是 serset 中的一个变量。 变量可以通过其名称（例如，{cmd:mpg} 或 {cmd:l.gnp}）或其编号（例如，1 或 5）进行引用；使用哪一种没有区别。

{phang2}
{it:svnum} 指的是 serset 中的变量编号。


{marker description}{...}
{title:描述}

{pstd}
{cmd:serset} 创建和操作 sersets。

{pstd}
{cmd:file} {cmd:sersetwrite} 将 sersets 写入文件，而 {cmd:file} {cmd:sersetread} 从文件读取 sersets。

{pstd}
宏函数 {cmd::serset} 报告有关当前 serset 的信息。

{pstd}
{varlist} 可以包含 {helpb data types:strL} 变量或
{help data types:{bf:str}{it:#}} 变量。 如果包含，则每个值的前 244 字节将存储在 serset 中。

{pstd}
Sersets 主要由 Stata 的图形系统使用。 如果您有兴趣操作内存中的多个数据集，请使用 Stata 的数据框架。 请参见 {manhelp frames D}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P sersetRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options_create}{...}
{title:serset create 选项}

{phang}
{cmd:omitanymiss}, {cmd:omitallmiss}, {cmd:omitdupmiss} 和 {cmd:omitnothing}
    指定如何处理缺失值的观测值。

{pmore}
    {cmd:omitanymiss} 是默认值。 任何数字变量包含缺失的观测值会被排除在创建的 serset 之外。

{pmore}
    {cmd:omitallmiss} 指定仅排除所有数字变量均为缺失的观测值。

{pmore}
    {cmd:omitdupmiss} 指定仅排除所有数字变量均为缺失的重复观测值。 被排除的观测值将取决于原数据的排序顺序。

{pmore}
    {cmd:omitnothing} 指定不排除任何观测值（除了由 {cmd:if} {it:exp} 和 {cmd:in} {it:range} 排除的观测值）。

{phang}
{opth sort(varlist)} 指定创建的 serset 要按指定变量排序。 结果与创建后的使用 {cmd:serset sort} 命令没有区别，但总的执行时间稍快。 该选项不会影响内存中的数据排序顺序。


{marker options_create_xmedians}{...}
{title:serset create_xmedians 选项}

{phang}
{cmd:bands(}{it:#}{cmd:)} 指定 x 轴上的划分数，其中计算交叉中位数；默认为 {cmd:bands(200)}。 {cmd:bands()} 的值可以在 3 到 200 之间指定。

{pmore}
    让 {it:m} 和 {it:M} 指定 x 的最小值和最大值。 如果将比例划分为 {it:n} 个带（即，指定 {cmd:bands(}{it:n}{cmd:)}），则第一个带是 {it:m} 到 {it:m}+({it:M}-{it:m})/{it:n}，第二个是 {it:m}+({it:M}-{it:m})/{it:n} 到 {it:m}+2*({it:M}-{it:m})/{it:n}，以此类推，第 n 个带是 {it:m}+({it:n}-1)*({it:M}-{it:m})/{it:n} 到 {it:m}+{it:n}*({it:M}-{it:m})/{it:n} = {it:m}+{it:M}-{it:m} = {it:M}。

{phang}
{cmd:xmin(}{it:#}{cmd:)} 和 {cmd:xmax(}{it:#}{cmd:)} 指定用于带计算的 x 变量的最小值和最大值 -- 公式中的 {it:m} 和 {it:M}。 如果未指定这些选项，则使用实际的最小值和最大值。
另外，如果 {cmd:xmin()} 指定的数字大于实际的最小值，则使用实际的最小值；如果 {cmd:xmax()} 指定的数字小于实际的最大值，则使用实际的最大值。

{phang}
{cmd:logx} 和 {cmd:logy} 指定交叉中位数使用“对数”刻度创建。 在每个带中计算值的对数的中位数的指数。


{marker option_create_cspline}{...}
{title:serset create_cspline 选项}

{phang}
{cmd:n(}{it:#}{cmd:)} 指定在每对 x 值之间要评估的点的数量，这些点被视为节点。 默认值为 {cmd:n(5)}，且 {cmd:n()} 的值可以在 1 到 300 之间指定。


{marker option_summarize}{...}
{title:serset summarize 选项}

{phang}
{cmd:detail} 指定其他统计信息，包括偏度、峰度、四个最小和四个最大值，以及各百分位数。 此选项与 {cmd:detail} 选项相同 {help summarize_zh}。


{marker option_use}{...}
{title:serset use 选项}

{phang}
{cmd:clear} 允许加载 serset，即使内存中已经存在数据集，即使该数据集自上次保存以来已经更改。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下标题：

        {help serset##remarks1:介绍}
        {help serset##remarks2:serset create}
        {help serset##remarks3:serset create_xmedians}
        {help serset##remarks4:serset create_cspline}
        {help serset##remarks5:serset set}
        {help serset##remarks6:serset sort}
        {help serset##remarks7:serset summarize}
        {help serset##remarks8:serset}
        {help serset##remarks9:serset use}
        {help serset##remarks10:serset reset_id}
        {help serset##remarks11:serset drop}
        {help serset##remarks12:serset clear}
        {help serset##remarks13:serset dir}
        {help serset##remarks14:file sersetwrite 和 file sersetread}


{marker remarks1}{...}
{title:介绍}

{pstd}
Sersets 用于实现 Stata 的图形功能。当您制作图形时，图形所需的数据会提取到一个 serset 中，然后在 Stata 图形实现的最低层次上进行绘制。

{pstd}
Sersets 和数据集类似：它们包含一个或多个变量的观测值。每个 serset 被分配一个编号，在程序中使用该编号引用 serset。因此，多个 sersets 可以同时驻留在内存中。 （Sersets 实际上是存储在内存和临时磁盘文件的组合中，因此访问其内容的速度比访问内存中的数据要慢。然而，sersets 仍然足够快，以跟上图形操作的速度。）


{marker remarks2}{...}
{title:serset create}

{pstd}
{cmd:serset create} 从内存中的数据创建新的 serset。例如，

	{cmd:. serset create mpg weight}

{pstd}
创建一个包含变量 {cmd:mpg} 和 {cmd:weight} 的新 serset。以后使用 serset 时，可以通过其名称 {cmd:mpg} 和 {cmd:weight} 或通过其编号 {cmd:1} 和 {cmd:2} 引用这些变量。

{pstd}
{cmd:serset create} 还会将以下内容返回到 {cmd:r()} 中：

	{cmd:r(N)}    被放入 serset 的观测值数量
	{cmd:r(k)}    被放入 serset 的变量数量
	{cmd:r(id)}   分配给 serset 的编号

{pstd}
{cmd:r(N)} 和 {cmd:r(k)} 仅供参考；最重要的返回结果是 {cmd:r(id)}。 在后续命令中需要使用此编号来引用此 serset。

{pstd}
{cmd:serset create} 还将当前 serset 设置为刚创建的一个。 使用 sersets 的命令始终使用当前 serset。 如果在后续命令中，当前 serset 不是所需的，可以通过使用 {cmd:serset set} 设置所需的 serset，下面对此进行了描述。


{marker remarks3}{...}
{title:serset create_xmedians}

{pstd}
{cmd:serset create_xmedians} 创建一个基于当前设置的 serset 的新 serset。 基本语法是

{p 8 22 2}
{cmd:serset}
{cmd:create_xmedians}
{it:svn_y}
{it:svn_x}
[{it:svn_w}]
[{cmd:,}
...]

{pstd}
新 serset 将包含交叉中位数。 暂且搁置。在 {cmd:serset create_xmedians} 命令中，您指定要记录在当前 serset 中的两个或三个变量。 结果是创建一个新的 serset，包含两个变量（{it:svn_y} 和 {it:svn_x}）和不同的观测值数量。 与 {cmd:serset create} 一样，结果还会存储以下内容到 {cmd:r()}：

	{cmd:r(id)}   分配给 serset 的编号
	{cmd:r(k)}    serset 中的变量数量
	{cmd:r(N)}    serset 中的观测值数量

{pstd}
新创建的 serset 将成为当前 serset。

{pstd}
在实际使用中，您可能会编写

	{cmd:serset create `yvar' `xvar' `zvar'}
	{cmd:local base = r(id)}
	...
	{cmd:serset set `base'}
	{cmd:serset create_xmedians `yvar' `xvar'}
	{cmd:local cross = r(id)}
	...

{pstd}
{cmd:serset create_xmedians} 从原始 serset 获取数据，并计算 {it:svn_y} 的中位值和 {it:svn_x} 的中位值，以适应 {it:svn_x} 值的带。 结果是一个包含 {it:n} 个观测值（每个带一个）的新数据集，包含中位数 y 和中位数 x 值，变量名与原变量相同。 这些结果存储在新创建的 serset 中。如果指定了第三个变量 {it:svn_w}，则使用权重计算中位数。


{marker remarks4}{...}
{title:serset create_cspline}

{pstd}
{cmd:serset create_cspline} 的工作原理与 {cmd:serset create_xmedians} 相同：它从一个 serset 创建另一个 serset，而不更改第一个。 因此，与所有 serset 创建命令一样，在 {cmd:r()} 中返回

	{cmd:r(id)}   分配给 serset 的编号
	{cmd:r(k)}    serset 中的变量数量
	{cmd:r(N)}    serset 中的观测值数量

{pstd}
新创建的 serset 将成为当前 serset。

{pstd}
{cmd:serset create_cspline} 执行立方样条插值，并且新 serset 将包含插值点。 原始 serset 应包含立方样条要经过的节点。 {cmd:serset create_cspline} 还具有 {cmd:n(}{it:#}{cmd:)} 选项，该选项指定要插值的点的数量，因此结果数据集将具有 {it:N}+({it:N}-1)*{cmd:n()} 个观测值，其中 {it:N} 是原始数据集中观测值的数量。典型的 {cmd:serset create_cspline} 使用方法是

	{cmd:serset create `yvar' `xvar'}
	{cmd:local base = r(id)}
	...
	{cmd:serset set `base'}
	{cmd:serset create_xmedians `yvar' `xvar'}
	{cmd:local cross = r(id)}
	...
	{cmd:serset set `cross'}
	{cmd:serset create_cspline `yvar' `xvar'}
	...

{pstd}
在这里，样条不通过原始数据，而是通过数据的交叉中位数进行插值。


{marker remarks5}{...}
{title:serset set}

{pstd}
{cmd:serset set} 用于将先前创建的 serset 设为当前 serset。 您可以省略 {cmd:set}。 输入

	{cmd:serset 5}

{pstd}
相当于输入

	{cmd:serset set 5}

{pstd}
您实际不会提前知道需要编码的 serset 的编号。 相反，当您创建 serset 时，您应该将创建的 serset 的标识记录在本地宏中，例如，输入

	{cmd:local id = r(id)}

{pstd}
然后在后来的时候，您可以通过编码

	{cmd:serset set `id'}

将该 serset 设置为当前 serset。


{marker remarks6}{...}
{title:serset sort}

{pstd}
{cmd:serset sort} 更改当前 serset 的观测值顺序。例如，

	{cmd:serset create mpg weight length}
	{cmd:local id = r(id)}
	{cmd:serset sort weight mpg}

{pstd}
会将 serset 的观测值按变量 {cmd:weight} 升序排列，并在 {cmd:weight} 的相同值内按变量 {cmd:mpg} 升序排列。

{pstd}
如果在 {cmd:serset sort} 后未指定变量， {cmd:serset sort} 将不执行任何操作。这不被视为错误。


{marker remarks7}{...}
{title:serset summarize}

{pstd}
{cmd:serset summarize} 返回有关当前 serset 中变量的摘要统计。 它不会显示输出，也不会以任何方式更改当前 serset。

{pstd}
返回的内容与 {help summarize_zh} 命令在 {cmd:r()} 中返回的内容完全相同。


{marker remarks8}{...}
{title:serset}

{pstd}
不带参数输入 {cmd:serset} 不会产生输出，但在 {cmd:r()} 中返回有关当前 serset 的信息：

	{cmd:r(id)}   分配给当前 serset 的编号
	{cmd:r(k)}    当前 serset 中的变量数量
	{cmd:r(N)}    当前 serset 中的观测值数量

{pstd}
如果未使用任何 serset，则 {cmd:r(id)} 被设置为 -1， {cmd:r(k)} 和 {cmd:r(N)} 将保持未定义；不会产生错误消息。


{marker remarks9}{...}
{title:serset use}

{pstd}
{cmd:serset use} 将 serset 加载到内存中。 也就是说，它将当前 serset 复制到当前数据中。 serset 并未发生更改。


{marker remarks10}{...}
{title:serset reset_id}

{pstd}
{cmd:serset reset_id} 是一个很少使用的命令。其语法为

{p 8 22 2}
{cmd:serset}
{cmd:reset_id}
{it:#_s}

{pstd}
{cmd:serset reset_id} 将当前 serset 的 ID（其编号）更改为指定的数字，如果可能的话。 如果不可能，则会产生错误信息 {err:series {it:#_s} in use}; r(111)。

{pstd}
无论怎样，当前 serset 仍然是当前 serset（即，如果命令成功，则当前 serset 的编号会更改）。


{marker remarks11}{...}
{title:serset drop}

{pstd}
{cmd:serset drop} 消除（删除）内存中指定的 sersets。例如，

	{cmd:serset drop 5}

{pstd}
会消除 serset 5，而

	{cmd:serset drop 5/9}

{pstd}
会消除 serset 5 到 9。 使用 {cmd:serset drop} 删除不存在的 serset 不会产生错误；它不执行任何操作。

{pstd}
输入 {cmd:serset drop _all} 会删除所有现有的 sersets。

{pstd}
请小心不要删除不属于您的 sersets：Stata 的图形系统会频繁创建和持有 sersets，如果您删除了正在使用的 sersets，屏幕上的图形最终将“崩溃”，并且 Stata 会产生错误消息（但不会崩溃）。图形系统会在处理结束后自动删除 sersets。

{pstd}
{help discard_zh} 命令也会删除所有现有的 sersets。 但是，这样做是安全的，因为 {cmd:discard} 还会关闭任何打开的图形。


{marker remarks12}{...}
{title:serset clear}

{pstd}
{cmd:serset clear} 是 {cmd:serset drop _all} 的同义词。


{marker remarks13}{...}
{title:serset dir}

{pstd}
{cmd:serset dir} 显示所有现有 sersets 的描述。


{marker remarks14}{...}
{title:file sersetwrite 和 file sersetread}

{pstd}
{cmd:file} {cmd:sersetwrite} 和 {cmd:file} {cmd:sersetread} 是对 {cmd:file} 命令的扩展；请参见 {help file_zh:[P] file}。 这些扩展将 sersets 写入和从文件中读取。 文件可以以 {cmd:text} 或 {cmd:binary} 打开，但无论哪种方式，写入文件的内容都将采用二进制格式。

{pstd}
{cmd:file sersetwrite} 将当前 serset 写入。 代码片段可能如下所示：

	{cmd:serset create} ...
	{cmd:local base = r(id)}
	...
	{cmd:tempname hdl}
	{cmd:file open `hdl' using "`filename'", write} ...
	...
	{cmd:serset set `base'}
	{cmd:file sersetwrite `hdl'}
	...
	{cmd:file close `hdl'}

{pstd}
{cmd:file sersetread} 从文件读取 serset，在内存中创建一个新的 serset。 {cmd:file sersetread} 将新创建的 serset 的 serset ID 返回到 {cmd:r(id)} 中。 代码片段可能如下所示：

	{cmd:tempname hdl}
	{cmd:file open `hdl' using "`filename'", read} ...
	...
	{cmd:file sersetread `hdl'}
	{cmd:local new = r(id)}
	...
	{cmd:file close `hdl'}

{pstd}
有关 {cmd:file} 命令的更多信息，请参见 {manhelp file P}。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:serset create}, {cmd:serset create_xmedians}, {cmd:serset create_cspline}, {cmd:serset set} 和 {cmd:serset} 在 {cmd:r()} 中存储以下内容：

{synoptset 10 tabbed}{...}
{p2col 5 10 14 2: 标量}{p_end}
{synopt:{cmd:r(id)}}serset ID{p_end}
{synopt:{cmd:r(k)}}serset 中的变量数量{p_end}
{synopt:{cmd:r(N)}}serset 中的观测值数量{p_end}
{p2colreset}{...}

{pstd}
{cmd:serset summarize} 返回的 {cmd:r()} 的结果与 {cmd:summarize} 命令返回的结果相同。

{pstd}
{cmd:serset use} 在宏 {cmd:r(varnames)} 中返回新创建的数据集中的变量名称。

{pstd}
{cmd:file sersetread} 在标量 {cmd:r(id)} 中返回 serset ID，即分配给 serset 的识别编号。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <serset.sthlp>}