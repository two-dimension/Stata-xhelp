{smcl}
{* *! version 1.5.4  05feb2019}{...}
{viewerdialog "describe" "dialog describe"}{...}
{vieweralsosee "[D] describe" "mansection D describe"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] ds" "help ds_zh"}{...}
{vieweralsosee "[D] varmanage" "help varmanage_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] cf" "help cf_zh"}{...}
{vieweralsosee "[D] codebook" "help codebook_zh"}{...}
{vieweralsosee "[D] compare" "help compare_zh"}{...}
{vieweralsosee "[D] compress" "help compress_zh"}{...}
{vieweralsosee "[D] format" "help format_zh"}{...}
{vieweralsosee "[D] label" "help label_zh"}{...}
{vieweralsosee "[D] lookfor" "help lookfor_zh"}{...}
{vieweralsosee "[D] notes" "help notes_zh"}{...}
{vieweralsosee "[D] order" "help order_zh"}{...}
{vieweralsosee "[D] rename" "help rename_zh"}{...}
{vieweralsosee "[D] sysdescribe" "help sysdescribe_zh"}{...}
{viewerjumpto "Syntax" "describe_zh##syntax"}{...}
{viewerjumpto "Menu" "describe_zh##menu"}{...}
{viewerjumpto "Description" "describe_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "describe_zh##linkspdf"}{...}
{viewerjumpto "Options to describe data in memory" "describe_zh##options_memory"}{...}
{viewerjumpto "Options to describe data in file" "describe_zh##options_file"}{...}
{viewerjumpto "Remarks" "describe_zh##remarks"}{...}
{viewerjumpto "Examples" "describe_zh##examples"}{...}
{viewerjumpto "Stored results" "describe_zh##results"}
{help describe:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[D] describe} {hline 2}}描述内存或文件中的数据{p_end}
{p2col:}({mansection D describe:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
描述内存中的数据

{p 8 17 2}
{cmdab:d:escribe} [{varlist}] [{cmd:,}
 {it:{help describe##memory_options:memory_options}}]


{phang}
描述文件中的数据

{p 8 17 2}
{cmdab:d:escribe} [{varlist}] {cmd:using} {it:{help filename_zh}}
 [{cmd:,} {it:{help describe##file_options:file_options}}]


{synoptset 20}{...}
{marker memory_options}{...}
{synopthdr :内存选项}
{synoptline}
{synopt :{opt si:mple}}仅显示变量名称{p_end}
{synopt :{opt s:hort}}仅显示一般信息{p_end}
{synopt :{opt f:ullnames}}不缩写变量名称{p_end}
{synopt :{opt n:umbers}}显示变量名称和编号{p_end}
{synopt :{opt replace}}生成数据集，而不是书面报告{p_end}
{synopt :{opt clear}}与 {cmd:replace} 一起使用{p_end}

{synopt :{opt varl:ist}}除了通常的存储结果外，存储 {cmd:r(varlist)} 和 {cmd:r(sortlist)}；程序员选项{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{cmd:varlist} 不会出现在对话框中。

{synoptset 20}{...}
{marker file_options}{...}
{synopthdr :文件选项}
{synoptline}
{synopt :{opt s:hort}}抑制每个变量的具体信息。仅显示一般信息（观察数量、变量数量、大小和排序顺序）{p_end}
{synopt :{opt si:mple}}仅以紧凑格式显示变量名称{p_end}

{synopt :{opt varl:ist}}除了通常的存储结果外，存储 {cmd:r(varlist)} 和 {cmd:r(sortlist)}；程序员选项{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{cmd:varlist} 不会出现在对话框中。


{marker menu}{...}
{title:菜单}

{phang2}
{bf:数据 > 描述数据 > 描述内存或文件中的数据}


{marker description}{...}
{title:描述}

{pstd}
{cmd:describe} 生成内存中的数据集或Stata格式数据集中存储数据的摘要。

{pstd}
要获得变量名称的紧凑列表，请使用 {cmd:describe, simple}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D describeQuickstart:快速入门}

        {mansection D describeRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options_memory}{...}
{title:描述内存中的数据选项}

{phang}
{opt simple} 仅以紧凑格式显示变量名称。  
{opt simple} 不能与其他选项组合。

{phang}
{opt short} 抑制每个变量的具体信息。仅显示一般信息（观察数量、变量数量、大小和排序顺序）。

{phang}
{opt fullnames} 指定 {cmd:describe} 显示变量的全名。如果变量名称超过15个字符，默认是使用缩写。{cmd:describe using} 始终显示变量全名，因此 {opt fullnames} 不能与 {cmd:describe using} 一起指定。

{phang}
{opt numbers} 指定 {cmd:describe} 与变量名称一起显示变量编号。如果指定了 {opt numbers}，当变量名称超过八个字符时，变量名称会被缩写。 {opt numbers} 和 {opt fullnames} 选项不能同时指定。{opt numbers} 不能与 {cmd:describe} {cmd:using} 一起指定。

{phang}
{opt replace} 和 {opt clear} 是上述选项的替代方案。{cmd:describe} 通常生成书面报告，而上述选项指定报告包含的内容。然而，如果您指定 {opt replace}，则不会生成报告；相反，内存中的数据将被包含报告将呈现的信息的数据所替代。新数据的每个观察值描述原始数据中的一个变量；请参见下面的 {it:{help describe##replace:describe, replace}}。

{pmore}
{opt clear} 仅在指定了 {opt replace} 时才可指定。  
{opt clear} 指定清除内存中的数据并用描述信息替代，即使原始数据尚未保存到磁盘。

{pstd}
以下选项可与 {cmd:describe} 一起使用，但在对话框中未显示：

{phang} 
{opt varlist}，程序员的选项，指定除了通常的存储结果外，还要存储 {cmd:r(varlist)} 和 {cmd:r(sortlist)}。{cmd:r(varlist)} 将包含数据集中变量的名称。{cmd:r(sortlist)} 将包含数据排序的变量名称。

{marker options_file}{...}
{title:描述文件中的数据选项}

{phang}
{opt short} 抑制每个变量的具体信息。仅显示一般信息（观察数量、变量数量、大小和排序顺序）。

{phang}
{opt simple} 仅以紧凑格式显示变量名称。  
{opt simple} 不能与其他选项组合。

{pstd}
以下选项可与 {cmd:describe} 一起使用，但在对话框中未显示：

{phang} 
{opt varlist}，程序员的选项，指定除了通常的存储结果外，还要存储 {cmd:r(varlist)} 和 {cmd:r(sortlist)}。{cmd:r(varlist)} 将包含数据集中变量的名称。{cmd:r(sortlist)} 将包含数据排序的变量名称。

{pmore} 
由于 {help statamp_zh:Stata/MP} 和 {help specialedition:Stata/SE} 可以创建真正大的数据集，因此数据集中可能存在太多变量以致于不能存储在 {cmd:r(varlist)} 中，考虑到由 {helpb maxvar:set maxvar} 确定的宏的当前最大长度。如果发生这种情况，{cmd:describe using} 将发出错误消息“变量太多”，r(103)。


{marker remarks}{...}
{title:备注}

{pstd}
备注根据以下标题给出：

	{help describe##noreplace:describe}
	{help describe##replace:describe, replace}


{marker noreplace}{...}
{title:describe}

{pstd}
如果输入 {cmd:describe} 而不带操作数，则描述当前内存中数据集的内容。

{pstd}
{cmd:describe using} 语法中的 {it:varlist} 与标准Stata {help varlist_zh:varlists} 在两个方面不同。首先，您不能缩写变量名称；也就是说，您必须输入 {cmd:displacement} 而不是 {cmd:displ}。但是，您可以使用通配符字符 ({cmd:~}) 来指示缩写，例如 {cmd:displ~}。其次，您不能引用变量的范围；指定 {cmd:age-income} 被视为错误。


{marker replace}{...}
{title:describe, replace}

{pstd}
带有 {cmd:replace} 选项的 {cmd:describe} 很少使用，尽管您有时可能会觉得它很方便。

{pstd}
将 {cmd:describe,} {cmd:replace} 看作与不带 {cmd:replace} 选项的 {cmd:describe} 分开但相关。{cmd:describe,} {cmd:replace} 生成的新数据集包含与书面报告相同的信息，而不是生成书面报告。例如，尝试以下操作：

	. {cmd:sysuse auto, clear}

	. {cmd:describe}
	{it:(报告出现；内存中的数据未更改)}

	. {cmd:list}
	{it:(直观证据表明数据未更改)}

	. {cmd:describe, replace}
	{it:(没有报告出现，但内存中的数据已更改！)}

	. {cmd:list}
	{it:(直观证据表明数据已更改)}

{pstd}
{cmd:describe,} {cmd:replace} 将原始内存中的数据更改为包含原始数据中每个变量的观察值的数据集。新数据中的每个观察值描述原始数据中的一个变量。新变量包括：

{p 8 12 2}
1.  {cmd:position}，包含原始变量的数字位置的变量（1，2，3，...）。

{p 8 12 2}
2.  {cmd:name}，包含原始变量名称的变量，例如 {cmd:"make"}，{cmd:"price"}，{cmd:"mpg"}，....

{p 8 12 2}
3.  {cmd:type}，包含原始变量的存储类型的变量，例如 {cmd:"str18"}，{cmd:"int"}，{cmd:"float"}，....

{p 8 12 2}
4.  {cmd:isnumeric}，如果原始变量为数值，则该变量等于1；如果为字符串，则等于0。 

{p 8 12 2}
5.  {cmd:format}，包含原始变量显示格式的变量，例如 {cmd:"%-18s"}，{cmd:"%8.0gc"}，....

{p 8 12 2}
6.  {cmd:vallab}，如果有，与原始变量关联的值标签的名称的变量。

{p 8 12 2}
7.  {cmd:varlab}，包含原始变量标签的变量，例如 {cmd:"Make and Model"}， 
    {cmd:"Price"}，{cmd:"Mileage (mpg)"}, ....

{pstd}
此外，数据还包含以下特征：

{p 12 12 2}
{cmd:_dta[d_filename]}，包含原始数据的文件名。

{p 12 12 2}
{cmd:_dta[d_filedate]}，文件的写入日期和时间。

{p 12 12 2}
{cmd:_dta[d_N]}，原始数据中观察值的数量。

{p 12 12 2}
{cmd:_dta[d_sortedby]}，原始数据的排序变量（如果有）。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse states}

{pstd}描述内存中的数据集{p_end}
{phang2}{cmd:. describe}

{pstd}描述内存中的数据集，显示完整的变量名称{p_end}
{phang2}{cmd:. describe, fullnames}

{pstd}描述内存中的数据集，抑制每个变量的具体信息{p_end}
{phang2}{cmd:. describe, short}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse census}

{pstd}描述内存中数据集中名称以 {cmd:pop*} 开头的所有变量{p_end}
{phang2}{cmd:. describe pop*}

{pstd}描述内存中数据集的变量 {cmd:state}、{cmd:region} 和 {cmd:pop18p}{p_end}
{phang2}{cmd:. describe state region pop18p}

{pstd}描述位于 https://www.stata-press.com 网站上的 {cmd:states} 数据集{p_end}
{phang2}{cmd:. describe using https://www.stata-press.com/data/r16/states}
{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:describe} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察值的数量{p_end}
{synopt:{cmd:r(k)}}变量的数量{p_end}
{synopt:{cmd:r(width)}}数据集的宽度{p_end}
{synopt:{cmd:r(changed)}}指示自上次保存以来数据已更改的标志{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(datalabel)}}数据集标签{p_end}
{synopt:{cmd:r(varlist)}}数据集中的变量（如果指定了 {cmd:varlist}）{p_end}
{synopt:{cmd:r(sortlist)}}用于排序的数据变量（如果指定了 {cmd:varlist}）{p_end}
{p2colreset}{...}

{pstd}
{cmd:describe,} {cmd:replace} 在 {cmd:r()} 中不存储任何内容。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <describe.sthlp>}