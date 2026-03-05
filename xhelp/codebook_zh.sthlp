{smcl}
{* *! version 1.1.12  19oct2017}{...}
{viewerdialog codebook "dialog codebook"}{...}
{vieweralsosee "[D] codebook" "mansection D codebook"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "codebook problems" "help codebook problems"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] describe" "help describe_zh"}{...}
{vieweralsosee "[D] ds" "help ds_zh"}{...}
{vieweralsosee "[D] inspect" "help inspect_zh"}{...}
{vieweralsosee "[D] labelbook" "help labelbook_zh"}{...}
{vieweralsosee "[D] notes" "help notes_zh"}{...}
{vieweralsosee "[D] split" "help split_zh"}{...}
{viewerjumpto "Syntax" "codebook_zh##syntax"}{...}
{viewerjumpto "Menu" "codebook_zh##menu"}{...}
{viewerjumpto "Description" "codebook_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "codebook_zh##linkspdf"}{...}
{viewerjumpto "Options" "codebook_zh##options"}{...}
{viewerjumpto "Examples" "codebook_zh##examples"}{...}
{viewerjumpto "Stored results" "codebook_zh##results"}
{help codebook:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[D] codebook} {hline 2}}描述数据内容{p_end}
{p2col:}({mansection D codebook:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:codebook}
[{varlist}]
{ifin}
[{cmd:,} {it:options}]

{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :选项}
{synopt :{opt a:ll}}打印完整报告，忽略缺失值{p_end}
{synopt :{opt h:eader}}打印数据集名称和最后保存日期{p_end}
{synopt :{opt n:otes}}打印附加到变量上的任何注释{p_end}
{synopt :{opt m:v}}报告缺失值模式{p_end}
{synopt :{opt t:abulate(#)}}设置表格/汇总统计阈值；默认值为 {cmd:tabulate(9)}{p_end}
{synopt :{opt p:roblems}}报告数据集中的潜在问题{p_end}
{synopt :{opt d:etail}}显示变量的详细报告；仅与 {opt problems} 一起使用{p_end}
{synopt :{opt c:ompact}}显示变量的紧凑报告{p_end}
{synopt :{opt dots}}为每个处理的变量显示一个点；仅与 {opt compact} 一起使用{p_end}

{syntab :语言}
{synopt :{opt lang:uages}[{cmd:(}{it:namelist}{cmd:)}]}用于多语种数据集；有关详细信息，请参见 {manhelp label_language D: label language}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 描述数据 > 描述数据内容（代码簿）}


{marker description}{...}
{title:描述}

{pstd}
{opt codebook} 检查变量名称、标签和数据，以生成描述数据集的代码簿。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D codebookQuickstart:快速开始}

        {mansection D codebookRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:选项}

{phang}
{opt all}
相当于指定 {opt header} 和 {opt notes} 选项。它提供完整报告，仅排除执行 {opt mv}。

{phang}
{opt header}
在输出顶部添加一个标题，列出数据集名称、最后保存日期等。

{phang}
{opt notes}
列出附加到变量上的任何注释；请参见 {manhelp notes D}。

{phang}
{opt mv}
指定 {opt codebook} 搜索数据以确定缺失值的模式。这是一个占用 CPU 资源的任务。

{phang}
{opt tabulate(#)}
指定用于确定变量是分类变量还是连续变量的唯一值的数量。缺失值不包括在此计数中。默认值为 9；当唯一值数量大于九时，变量被分类为连续变量。扩展缺失值将包括在表格中。

{phang}
{opt problems}
指定生成总结报告，描述已诊断的潜在问题：

{phang2}- 变量被未定义的值标签标记{p_end}
{phang2}- 不完全标记值的变量{p_end}
{phang2}- 恒定变量，包括总是缺失{p_end}
{phang2}- 字符串变量中的前导、尾随和嵌入空格{p_end}
{phang2}- 字符串变量中嵌入的二进制 0 (\0){p_end}
{phang2}- 非整数值的日期变量{p_end}

{pmore}
请参见 {help codebook problems} 以获取有关这些问题的讨论和克服它们的建议。

{phang}
{opt detail}
仅可与 {opt problems} 选项一起使用。
它指定不抑制变量的详细报告。

{phang}
{opt compact}
指定显示变量的紧凑报告。
{opt compact} 不能与除了 {opt dots} 之外的任何选项一起指定。

{phang}
{opt dots}
指定为每个处理的变量显示一个点。{opt dots} 仅可与 {opt compact} 一起指定。

{dlgtab:语言}

{phang}
{cmd:languages}[{cmd:(}{it:namelist}{cmd:)}]
用于多语言数据集；请参阅 {manhelp label_language D:label language}。它指示代码簿与 {it:namelist} 中的语言相关，或者如果未指定此类列表作为 {opt languages()} 的参数，则与所有定义的语言相关。{opt codebook} 的输出列出这些语言中的数据标签和变量标签，并列出附加到这些语言变量的值标签。

{pmore}
这些语言中的问题也会被诊断。问题报告不会提供问题发生的语言的详细信息。我们建议您重新运行 {opt codebook} 针对有问题的变量；指定 {opt detail} 再次生成问题报告。

{pmore}
如果您有多语言数据集但不指定 {opt languages()}，所有输出，包括问题报告，都以“活动”语言显示。


{marker examples}{...}
{title:示例}

{pstd}对于标准（单语言）数据集，{p_end}

        {hline}
{pmore}设置{p_end}
{phang3}{cmd:. sysuse auto}{p_end}
{phang3}{cmd:. note rep78: "调查缺失值"}{p_end}
{phang3}{cmd:. label values rep78 repairlbl}

{pmore}显示数据集所有变量的代码簿{p_end}
{phang3}{cmd:. codebook}{p_end}

{pmore}与上述命令相同{p_end}
{phang3}{cmd:. codebook _all}{p_end}

{pmore}与上述命令相同，但打印数据集名称、最后保存日期、数据集标签、变量数和观察数及数据集大小{p_end}
{phang3}{cmd:. codebook, header}{p_end}

{pmore}显示 {cmd:rep78} 变量的代码簿{p_end}
{phang3}{cmd:. codebook rep78}{p_end}

{pmore}显示 {cmd:rep78} 变量的代码簿，包括附加到 {cmd:rep78} 的注释{p_end}
{phang3}{cmd:. codebook rep78, notes}{p_end}

{pmore}报告数据集的潜在问题{p_end}
{phang3}{cmd:. codebook, problems}{p_end}

{pmore}显示数据集所有变量的紧凑报告{p_end}
{phang3}{cmd:. codebook, compact}{p_end}

        {hline}
{pmore}设置{p_end}
{phang3}{cmd:. webuse citytemp}

{pmore}显示 {cmd:cooldd}、{cmd:heatdd}、{cmd:tempjan} 和 {cmd:tempjuly} 的代码簿，并报告缺失值模式{p_end}
{phang3}{cmd:. codebook cooldd heatdd tempjan tempjuly, mv}{p_end}
        {hline}


{pstd}
对于多语言数据集，语言为 {opt en} 和 {opt es}，活动语言为 {opt en}，{p_end}

{pmore}设置{p_end}
{phang3}{cmd:. webuse autom}

{pmore}在语言 {cmd:en} 中显示 {cmd:foreign} 的代码簿{p_end}
{phang3}{cmd:. codebook foreign}

{pmore}在语言 {cmd:es} 中显示 {cmd:foreign} 的代码簿{p_end}
{phang3}{cmd:. codebook foreign, language(es)}

{pmore}在 {cmd:en} 和 {cmd:es} 中显示 {cmd:foreign} 的代码簿{p_end}
{phang3}{cmd:. codebook foreign, languages}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:codebook} 将以下潜在问题的变量列表存储在 {cmd:r()} 中：

{synoptset 24 tabbed}{...}
{p2col 5 24 28 2: 宏}{p_end}
{synopt:{cmd:r(cons)}}恒定（或缺失的）{p_end}
{synopt:{cmd:r(labelnotfound)}}未定义的值标签{p_end}
{synopt:{cmd:r(notlabeled)}}已标记值但有未标记类别{p_end}
{synopt:{cmd:r(str_type)}}可压缩{p_end}
{synopt:{cmd:r(str_leading)}}前导空格{p_end}
{synopt:{cmd:r(str_trailing)}}尾随空格{p_end}
{synopt:{cmd:r(str_embedded)}}嵌入空格{p_end}
{synopt:{cmd:r(str_embedded0)}}嵌入的二进制 0 (\0){p_end}
{synopt:{cmd:r(realdate)}}非整数日期{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <codebook.sthlp>}