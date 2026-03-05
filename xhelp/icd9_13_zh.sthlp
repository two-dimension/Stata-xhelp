{smcl}
{* *! version 1.3.4  12jan2015}{...}
{* 基于版本 1.3.3  27aug2014 的 icd9.sthlp}{...}
{* 本帮助文件不包含在手册中}{...}
{vieweralsosee "以前记录的文档" "help prdocumented_zh"}{...}
{viewerjumpto "语法" "icd9_zh##syntax"}{...}
{viewerjumpto "菜单" "icd9_zh##menu"}{...}
{viewerjumpto "描述" "icd9_zh##description"}{...}
{viewerjumpto "icd9[p] check 的选项" "icd9_zh##options_icd9_check"}{...}
{viewerjumpto "icd9[p] clean 的选项" "icd9_zh##options_icd9_clean"}{...}
{viewerjumpto "icd9[p] generate 的选项" "icd9_zh##options_icd9_gen"}{...}
{viewerjumpto "icd9[p] search 的选项" "icd9_zh##options_icd9_search"}{...}
{viewerjumpto "示例" "icd9_zh##examples"}{...}
{viewerjumpto "存储结果" "icd9_zh##results"}
{help icd9_13:English Version}
{hline}{...}
{title:标题}

{p2colset 5 17 19 2}{...}
{p2col :{hi:[D] icd9} {hline 2}}ICD-9-CM 诊断和程序代码{p_end}
{p2colreset}{...}

{p 12 12 8}
{it}[{bf:icd9} 和 {bf:icd9p} 的语法在第14版中发生了变化。此帮助文件记录了旧语法，因此可能对您没有兴趣。如果您在旧的 do 文件中将 {help version_zh} 设置为小于 14 ，则无需将 {cmd:icd9} 和 {cmd:icd9p} 转换为现代语法。此帮助文件提供给那些希望调试或理解旧代码的人。点击 {help icd9_zh:这里} 可获取现代 {cmd:icd9} 和 {cmd:icd9p} 命令的帮助文件。]{rm}

{marker syntax}{...}
{title:语法}

{phang}
验证变量是否包含定义的代码

{p 8 16 2}
{c -(}{cmd:icd9}|{cmd:icd9p}{c )-}
{cmd:check} {varname}
[{cmd:,}
{opt any}
{opt l:ist}
{opth g:enerate(newvar)}]

{phang}
验证并清理变量

{p 8 16 2}
{c -(}{cmd:icd9}|{cmd:icd9p}{c )-}
{opt clean} {varname}
[{cmd:,}
{opt d:ots}
{opt p:ad}]

{phang}
从现有变量生成新变量

{p 8 16 2}
{c -(}{cmd:icd9}|{cmd:icd9p}{c )-}
{opt gen:erate} {newvar} {cmd:=} {varname}{cmd:,}
{opt m:ain}

{p 8 16 2}
{c -(}{cmd:icd9}|{cmd:icd9p}{c )-}
{opt gen:erate} {newvar} {cmd:=} {varname}{cmd:,}
{opt d:escription}
[{opt l:ong} {opt e:nd}]

{p 8 16 2}
{c -(}{cmd:icd9}|{cmd:icd9p}{c )-}
{opt gen:erate} {newvar} {cmd:=} {varname}{cmd:,}
{opt r:ange(icd9rangelist)}

{phang}
显示代码描述

{p 8 16 2}
{c -(}{cmd:icd9}|{cmd:icd9p}{c )-}
{opt l:ookup} {it:icd9rangelist}

{phang}
根据描述搜索代码

{p 8 16 2}
{c -(}{cmd:icd9}|{cmd:icd9p}{c )-}
{opt sea:rch}
[{cmd:"}]{it:text}[{cmd:"}]
[[{cmd:"}]{it:text}[{cmd:"}] {it:...}]
[{cmd:,}
{opt or}]

{phang}
显示 ICD-9 代码来源

{p 8 16 2}
{c -(}{cmd:icd9}|{cmd:icd9p}{c )-}
{opt q:uery}

{pstd}
其中 {it:icd9rangelist} 为

{p2colset 9 30 32 2}{...}
{p2col :{it:icd9code}}（具体代码）{p_end}
{p2col :{it:icd9code}{cmd:*}}（以此开头的所有代码）{p_end}
{p2col :{it:icd9code}{cmd:/}{it:icd9code}}（代码范围）{p_end}
{p2colreset}{...}

{pstd}
或上述任意组合，例如 {cmd:001* 018/019 E* 018.02}。
{it:icd9codes} 必须以零开头输入：{cmd:1} 是错误；应输入 {cmd:001}（诊断代码）或 {cmd:01}（程序代码）。

{p 4 6 2}
{opt icd9} 适用于 ICD-9 诊断代码，{opt icd9p} 适用于程序代码。这两个命令的语法相互平行。

{marker menu}{...}
{title:菜单}

    {title:{c -(}icd9|icd9p{c )-} check}

{phang2}
{bf:数据 > 其他实用工具 > ICD9 实用工具 > 验证变量是否有效}

    {title:{c -(}icd9|icd9p{c )-} clean}

{phang2}
{bf:数据 > 其他实用工具 > ICD9 实用工具 > 清理和验证变量}

    {title:{c -(}icd9|icd9p{c )-} generate}

{phang2}
{bf:数据 > 其他实用工具 > ICD9 实用工具 > 从现有变量生成新变量}

    {title:{c -(}icd9|icd9p{c )-} lookup}

{phang2}
{bf:数据 > 其他实用工具 > ICD9 实用工具 > 显示代码描述}

    {title:{c -(}icd9|icd9p{c )-} search}

{phang2}
{bf:数据 > 其他实用工具 > ICD9 实用工具 > 根据描述搜索代码}

    {title:{c -(}icd9|icd9p{c )-} query}

{phang2}
{bf:数据 > 其他实用工具 > ICD9 实用工具 > 显示 ICD-9 代码来源}

{marker description}{...}
{title:描述}

{pstd}
{opt icd9} 和 {opt icd9p} 有助于处理 ICD-9-CM 代码。

{pstd}
ICD-9 代码有两种形式：诊断代码和程序代码。在这个系统中，001（霍乱）和941.45（深度3级烧伤鼻部）是诊断代码的例子，虽然有些人写（且数据集中记录）94145，而不是941.45。同样，01（切除脑/颅骨）和55.01（肾切开术）是程序代码的例子，尽管有些人写5501，而不是55.01。{opt icd9} 和 {opt icd9p} 理解这两种记录代码的方式。

{pstd}
{* 这条注释确实很重要，因为需要让浏览者看到。}
重要注意事项：什么构成一个有效的 ICD-9 代码会随时间变化。对于本帮助文件的其余部分，{it:定义的代码} 是指当前有效的代码，自版本 V16（1998 年 10 月 1 日生效）以来某时有效的代码，或作为代码分组有意义的代码。一些例子会有所帮助。诊断代码 001 虽然单独无效，但由于它表示霍乱，因此很有用。它被保留为一个定义的代码，其描述以星号（*）结尾。诊断代码 645.01 在版本 V16 和 V18 之间被删除。它仍然作为一个定义的代码存在，其描述以井号（#）结尾。

{pstd}
{opt icd9} 和 {opt icd9p} 是相互平行的；{opt icd9} 用于诊断代码，{opt icd9p} 用于程序代码。

{pstd}
{opt icd9}[{opt p}]
{opt check} 验证现有变量 {varname} 是否包含定义的 ICD-9 代码。如果不含有，{opt icd9}[{opt p}] {opt check} 将提供有关问题的完整报告。
{opt icd9}[{opt p}] {opt check} 对于追踪问题非常有用，当其他 {opt icd9}[{opt p}] 命令告诉您 "变量不包含 ICD-9 代码" 时。{opt icd9}[{opt p}] {opt check} 验证每个记录的代码确实存在于定义代码列表中。

{pstd}
{opt icd9}[{opt p}]
{opt clean} 也验证现有变量 {it:varname} 是否包含定义的 ICD-9 代码，如果包含，{opt icd9}[{opt p}] {opt clean} 会修改该变量，以使其包含两种标准格式中的一种。
所有 {opt icd9}[{opt p}] 命令对于已清理或未清理的代码都一样有效。ICD-9 代码有多种写法，而 {opt icd9}[{opt p}] {opt clean} 的设计目的是确保一致性，并使后续输出看起来更好。

{pstd}
{opt icd9}[{opt p}]
{opt generate}
基于包含（清理或未清理）ICD-9 代码的现有变量生成新变量。
{opt icd9}[{opt p}] {opt generate,} {opt main}
生成 {newvar}，其中包含主要代码。
{opt icd9}[{opt p}] {opt generate,} {opt description}
生成 {it:newvar}，其中包含 ICD-9 代码的文本描述。
{opt icd9}[{opt p}] {opt generate,} {opt range()} 
生成数字变量 {it:newvar} ，其中包含 1（当 {it:varname} 中记录的 ICD-9 代码在列出的范围内）和 0（否则）。

{pstd}
{opt icd9}[{opt p}]
{opt lookup}
和 {opt icd9}[{opt p}] {opt search}
是交互使用时非常有用的实用程序。
{opt icd9}[{opt p}] {opt lookup} 仅仅显示在命令行中指定的代码的描述，因此，要找出诊断 E913.1 的含义，您可以输入 {cmd:icd9 lookup e913.1}。您内存中的数据无关紧要——在使用 {opt icd9}[{opt p}] {opt lookup} 时保持不变。
{opt icd9}[{opt p}] {opt search} 与 {opt icd9}[{opt p}] {opt lookup} 类似，不同之处在于它反转了问题；{opt icd9}[{opt p}] {opt search} 从命令行给出的描述中查找相关的 ICD-9 代码。例如，您可以输入 {cmd:icd9 search liver} 或 {cmd:icd9p search liver} 来获取包含 "liver" 一词的代码列表。

{pstd}
{opt icd9}[{opt p}]
{opt query}
显示获取 ICD-9 代码的来源及 {opt icd9}[{opt p}] 使用的文本描述。

{pstd}
ICD-9 代码通常有两种书写方式：带和不带句点。例如，对于诊断代码，您可以写 001、86221、E8008 和 V822，或您可以写 001.、862.21、E800.8 和 V82.2。对于程序代码，您可以写 01、50、502 和 5021，或 01.、50.、50.2 和 50.21。{opt icd9}[{opt p}] 命令对您使用的语法或您是否保持一致并不在意。大小写也无关紧要：v822、v82.2、V822 和 V82.2 都是等价的。代码可以记录有或没有前导和尾随空格。

{pstd}
{opt icd9}[{opt p}] 适用于 V32、V31、V30、V29、V28、V27、V26、V25、V24、V22、V21、V19、V18 和 V16 代码。

{marker options_icd9_check}{...}
{title:icd9[p] check 的选项}

{phang}
{opt any} 指示 {opt icd9}[{opt p}] {opt check} 验证代码是否符合 ICD-9 代码的格式，而不检查代码是否真正定义。这可以加快 {opt icd9}[{opt p}] {opt check} 的运行速度。例如，诊断代码 230.52（或 23052，如果您愿意）看起来有效，但不存在这样一个 ICD-9 代码。如果没有 {opt any} 选项，230.52 将被标记为错误。使用 {opt any} 时，230.52 并不是错误。

{phang}
{opt list} 报告 {opt icd9}[{opt p}] {opt check} 在数据中发现的任何无效代码。例如，1、1.1.1，以及可能的230.52，如果未指定 {opt any} ，则需单独列出。

{phang}
{opth generate(newvar)} 指定 {opt icd9}[{opt p}] {opt check} 创建新变量 {it:newvar}，其包含每个观测值的值：如果代码定义则为 0，否则为 1 到 10 之间的数字。正数表示问题的种类，并对应于 {opt icd9}[{opt p}] {opt check} 生成的列表。例如，10 表示该代码可能有效，但实际上不在定义代码列表中。

{marker options_icd9_clean}{...}
{title:icd9[p] clean 的选项}

{phang}
{opt dots} 指定是否要将句点包括在最终格式中。您希望诊断代码记录为 86221 还是 862.21？如果没有 {cmd:dots} 选项，则将使用 86221 格式。如果有 {opt dots} 选项，则将使用 862.21 格式。

{phang}
{opt pad} 指定代码前后是否填充空格，以使代码在列表中垂直对齐。指定 {opt pad} 可使生成的代码在与大多数其他 Stata 命令一起使用时看起来更好。

{marker options_icd9_gen}{...}
{title:icd9[p] generate 的选项}

{phang}
{opt main}、{opt description} 和 {opt range(icd9rangelist)} 指定 {opt icd9}[{opt p}] {opt generate} 的计算内容。
{varname} 始终指定一个包含 ICD-9 代码的变量。

{phang2}
{opt main} 指定从 ICD-9 代码中提取主要代码。对于程序代码，主要代码是前两个字符。对于诊断代码，主要代码通常是前面三个或四个字符（如果代码中有句点，则为句点前的字符）。无论如何，{opt icd9}[{opt p}] {opt generate} 并不在意代码前是否填充空格，也不在意代码的书写方式有多奇怪；{opt icd9}[{opt p}] {opt generate} 会找到主要代码并提取之。结果变量本身是一个 ICD-9 代码，可以与其他 {opt icd9}[{opt p}] 子命令一起使用。其中包括 {opt icd9}[{opt p}] {opt generate, main}。

{phang2}
{opt description} 创建 {newvar}，其包含 ICD-9 代码的描述。

{pmore2}
{opt long} 用于 {opt description}。它指定新变量除了包含描述代码的文本外，还包含代码本身。如果没有 {opt long}，则在某一观测中的 {it:newvar} 可能包含 "bronchus injury-closed"。而如果有 {opt long}，它将包含 "862.21 bronchus injury-closed"。

{pmore2}
{opt end} 修改 {opt long}（指定 {opt end} 也意味着 {opt long}），并将代码放在字符串的末尾： "bronchus injury-closed 862.21"。

{phang2}
{opt range(icd9rangelist)} 允许您创建指示变量，当 ICD-9 代码在指定的包含范围内时，该变量等于 1。

{marker options_icd9_search}{...}
{title:icd9[p] search 的选项}

{phang}
{opt or} 指定对包含在 {opt icd9}[{opt p}] {opt search} 后指定的任何单词的条目进行搜索。默认情况下仅列出包含所有指定单词的条目。

{marker examples}{...}
{title:示例}

{pstd}显示代码 526.4 的描述 {p_end}
{phang2}{cmd:. icd9 lookup 526.4}{p_end}

{pstd}查找一系列代码 {p_end}
{phang2}{cmd:. icd9 lookup 526/527}{p_end}

{pstd}搜索包含 "jaw" 和 "disease" 的代码 {p_end}
{phang2}{cmd:. icd9 search jaw disease}{p_end}

{pstd}设置 {p_end}
{phang2}{cmd:. webuse patients}{p_end}

{pstd}尝试清理 {cmd:diag1} 诊断代码变量；将返回错误 {p_end}
{phang2}{cmd:. icd9 clean diag1}{p_end}

{pstd}标记包含无效代码的观测值 {p_end}
{phang2}{cmd:. icd9 check diag1, gen(prob)}{p_end}

{pstd}列出标记的观测值 {p_end}
{phang2}{cmd:. list patid diag1 if prob}{p_end}

{pstd}清理 {cmd:diag2} 诊断代码变量 {p_end}
{phang2}{cmd:. icd9 clean diag2}{p_end}

{pstd}为 {cmd:diag2} 变量添加句点 {p_end}
{phang2}{cmd:. icd9 clean diag2, dots}{p_end}

{pstd}清理 {cmd:proc1} 程序代码变量并添加句点 {p_end}
{phang2}{cmd:. icd9p clean proc1, dots}{p_end}

{pstd}检查 {cmd:proc1} 是否包含有效程序代码 {p_end}
{phang2}{cmd:. icd9p check proc1}{p_end}

{pstd}创建变量 {cmd:tp1}，其包含 {cmd:proc1} 中代码的描述 {p_end}
{phang2}{cmd:. icd9p generate tp1 = proc1, description}{p_end}

{pstd}创建变量 {cmd:main1}，其包含主要代码 {p_end}
{phang2}{cmd:. icd9 generate main1 = diag2, main}{p_end}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:icd9} {cmd:check} 和 {cmd:icd9p} {cmd:check} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(e}{it:#}{cmd:)}}类型 {it:#} 的错误数量 {p_end}
{synopt:{cmd:r(esum)}}错误的总数量 {p_end}
{p2colreset}{...}

{pstd}
{cmd:icd9} {cmd:clean} 和 {cmd:icd9p} {cmd:clean} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}更改的数量 {p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <icd9_13.sthlp>}