{smcl}
{* *! version 1.1.12  18sep2018}{...}
{vieweralsosee "[P] 宏列表" "mansection P macrolists"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] 宏" "help macro_zh"}{...}
{viewerjumpto "语法" "macrolists_zh##syntax"}{...}
{viewerjumpto "描述" "macrolists_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "macrolists_zh##linkspdf"}{...}
{viewerjumpto "备注" "macrolists_zh##remarks"}
{help macrolists:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[P] 宏列表} {hline 2}}操作列表{p_end}
{p2col:}({mansection P macrolists:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{c -(}{cmdab:loc:al} | {cmdab:gl:obal}{c )-}
{it:macname}
{cmd::} {cmd:list}
{cmd:uniq}
{it:macname}

{p 8 14 2}
{c -(}{cmdab:loc:al} | {cmdab:gl:obal}{c )-}
{it:macname}
{cmd::} {cmd:list}
{cmd:dups}
{it:macname}

{p 8 14 2}
{c -(}{cmdab:loc:al} | {cmdab:gl:obal}{c )-}
{it:macname}
{cmd::} {cmd:list}
{cmd:sort}
{it:macname}

{p 8 14 2}
{c -(}{cmdab:loc:al} | {cmdab:gl:obal}{c )-}
{it:macname}
{cmd::} {cmd:list}
{cmdab:retok:enize}
{it:macname}

{p 8 14 2}
{c -(}{cmdab:loc:al} | {cmdab:gl:obal}{c )-}
{it:macname}
{cmd::} {cmd:list}
{cmd:clean}
{it:macname}


{p 8 14 2}
{c -(}{cmdab:loc:al} | {cmdab:gl:obal}{c )-}
{it:macname}
{cmd::} {cmd:list}
{it:macname}
{cmd:|}
{it:macname}

{p 8 14 2}
{c -(}{cmdab:loc:al} | {cmdab:gl:obal}{c )-}
{it:macname}
{cmd::} {cmd:list}
{it:macname}
{cmd:&}
{it:macname}

{p 8 14 2}
{c -(}{cmdab:loc:al} | {cmdab:gl:obal}{c )-}
{it:macname}
{cmd::} {cmd:list}
{it:macname}
{cmd:-}
{it:macname}


{p 8 14 2}
{c -(}{cmdab:loc:al} | {cmdab:gl:obal}{c )-}
{it:macname}
{cmd::} {cmd:list}
{it:macname}
{cmd:==}
{it:macname}

{p 8 14 2}
{c -(}{cmdab:loc:al} | {cmdab:gl:obal}{c )-}
{it:macname}
{cmd::} {cmd:list}
{it:macname}
{cmd:===}
{it:macname}

{p 8 14 2}
{c -(}{cmdab:loc:al} | {cmdab:gl:obal}{c )-}
{it:macname}
{cmd::} {cmd:list}
{it:macname}
{cmd:in}
{it:macname}

{p 8 14 2}
{c -(}{cmdab:loc:al} | {cmdab:gl:obal}{c )-}
{it:macname}
{cmd::} {cmd:list}
{cmd:sizeof}
{it:macname}

{p 8 14 2}
{c -(}{cmdab:loc:al} | {cmdab:gl:obal}{c )-}
{it:macname}
{cmd::} {cmd:list}
{cmd:posof}
{cmd:"}{it:element}{cmd:"}
{cmd:in}
{it:macname}


{phang}
注意：上述出现的 {it:macname} 是宏的名称，而不是其内容。 例如，你需要输入

{pin2}
{cmd:local result : list list1 | list2}

{pmore}
而不是

{pin2}
{cmd:local result : list "`list1'" | "`list2'"}

{pmore}
出现在冒号右侧的 {it:macname} 被视为局部宏的名称。 你可以输入 {cmd:local(}{it:macname}{cmd:)} 来强调这一点。如果你希望引用全局宏，请输入 {cmd:global(}{it:macname}{cmd:)}。


{marker description}{...}
{title:描述}

{pstd}
宏函数 {cmd:list} 用于操作列表。 请参见 
{help macro_zh:[P] 宏} 获取其他宏函数。

{phang}
{cmd:uniq} {it:A} 返回 {it:A}，同时删除重复元素。 结果列表的元素顺序与 {it:A} 相同；重复元素从它们右侧位置被移除。
如果 {it:A}="{it:a b a c a}"，则 {cmd:uniq} 返回 "{it:a b c}"。

{phang}
{cmd:dups} {it:A} 返回 {it:A} 的重复元素。
如果 {it:A}="{it:a b a c a}"，则 {cmd:dups} 返回 "{it:a a}"。

{phang}
{cmd:sort} {it:A} 返回按字母顺序（升序 ASCII 或代码点）排序的 {it:A}。

{phang}
{cmd:retokenize} {it:A} 返回 {it:A}，其中元素之间只有单个空格。
    从逻辑上讲，列表中元素之间有多少空格并没有区别，因此 {cmd:retokenize} 不改变列表的逻辑。

{phang}
{cmd:clean} {it:A} 返回 {it:A}，并且每个元素被简洁地修饰。  如果一个元素没有被引号包围（例如 {it:a}），则称之为未修饰。  一个元素可以被简单或复合引号修饰（例如 {cmd:"}{it:a}{cmd:"} 或 {cmd:`"}{it:a}{cmd:"'}）。  从逻辑上讲，只要元素修饰得当，它的装饰方式没有区别。 列表

{pin2}
{cmd:`"}{it:a}{cmd:"'} {cmd:`"}{it:b c}{cmd:"'} {cmd:`"}{it:b} {cmd:"}{it:c}{cmd:"} {it:d}{cmd:"'}

{pmore}
等同于

{pin2}
{it:a} {cmd:"}{it:b c}{cmd:"} {cmd:`"}{it:b} {cmd:"}{it:c}{cmd:"} {it:d}{cmd:"'}

{pmore}
{cmd:clean} 在执行 {cmd:retokenize} 的操作之外，还将每个元素以最小的方式修饰：如果元素不含有空格或引号，则不修饰；如果含有空格但没有引号，则用简单引号 ({cmd:"} 和 {cmd:"}) 修饰；其他情况下则用复合引号 ({cmd:`"} 和 {cmd:"'}) 修饰。

{phang}
{it:A} {cmd:|} {it:B} 返回 {it:A} 和 {it:B} 的并集，结果为 {it:A}，并将 {it:B} 中未在 {it:A} 中发现的元素添加到尾部。
例如，如果 {it:A}="{it:a b c}" 且 {it:B}="{it:b d e}"，则 {it:A} {cmd:|} {it:B} 为 "{it:a b c d e}"。 如果你想要列表连接，则需要编码，

{pin2}
{cmd:local} {it:newlist} {cmd:`"`}{it:A}{cmd:' `}{it:B}{cmd:'"'}

{pmore}
在上述示例中，这将返回 "{it:a b c b d e}"。

{phang}
{it:A} {cmd:&} {it:B} 返回 {it:A} 和 {it:B} 的交集。如果
{it:A}="{it:a b c d}" 且 {it:B}="{it:b c f g}"，则 {it:A} {cmd:&} {it:B} =
"{it:b c}"。

{phang}
{it:A} {cmd:-} {it:B} 返回一个列表，其中包含从 {it:A} 中删除 {it:B} 的元素，结果元素与 {it:A} 中的顺序相同。 例如，如果 {it:A}="{it:a b c d}" 且 {it:B}="{it:b e}"，结果为 "{it:a c d}"。

{phang}
{it:A} {cmd:==} {it:B} 返回 0 或 1；如果 {it:A} 等于 {it:B}，即 {it:A} 的元素与 {it:B} 相同且顺序相同，则返回 1。否则返回 0。

{phang}
{it:A} {cmd:===} {it:B} 返回 0 或 1；如果 {it:A} 与 {it:B} 等价，即 {it:A} 的元素与 {it:B} 相同时，无论元素出现的顺序如何，则返回 1。否则返回 0。

{phang}
{it:A} {cmd:in} {it:B} 返回 0 或 1；如果 {it:A} 的所有元素都在 {it:B} 中，则返回 1。如果 {it:A} 为空，则 {cmd:in} 返回 1。否则返回 0。

{phang}
{cmd:sizeof} {it:A} 返回 {it:A} 的元素数量。
如果 {it:A}="a b c"，则 {cmd:sizeof} {it:A} 为 3。
（{cmd:sizeof} 返回与宏函数 {helpb macro##parsing:word count} 相同的结果。）

{phang}
{cmd:posof} {cmd:"}{it:element}{cmd:"} {cmd:in} {it:A} 返回 {it:macname} 在 {it:A} 中的位置，如果未找到则返回 0。 例如，如果 {it:A} 包含 "{it:a b c d}"，则 {cmd:posof "}{it:b}{cmd:" in} {it:A} 返回 2。
（可以使用 {helpb macro##parsing:word # of} 从列表中提取位置元素，{help tokenize_zh} 和 {help gettoken_zh} 也可以。）

{pmore}
你需要输入的第一个参数是元素本身，而不是宏名称。 在一个程序中，如果宏 {cmd:tofind} 包含一个要在列表（宏） {cmd:variables} 中查找的元素，您可能会编写

{pin2}
{cmd:local i : list posof `"`tofind'"' in variables}

{pmore}
{it:element} 必须被简单或复合引号包围。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P macrolistsRemarksandexamples:备注和示例}

{pstd}
上面的部分没有包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

备注按照以下标题呈现：

{pmore}
{help macrolists##adornment:装饰的处理}{break}
{help macrolists##duplicate:列表中重复元素的处理}{break}

{pstd}
列表是由以空格分隔的一组元素依次列出的集合。
个别元素可以用引号括起来，显然包含空格的元素必须用引号括起来。 以下是列表的示例：

{pmore}
{cmd:this that what}

{pmore}
{cmd:"第一个元素" second "第三个元素" 4}

{pmore}
{cmd:this that what this that}

{pstd}
列表也可以是空的。

{pstd}
不要将 varlist 与 list 混淆。 varlist 是一种特殊的表示法，例如 “id m* pop*”，它是指定变量列表的简写方式；见 {it:{help varlist_zh}}。 一旦展开，varlist 就是一个列表。


{marker adornment}{...}
{title:装饰的处理}

{pstd}
如果列表的元素被引号包围，则称其为被修饰。 然而，装饰在列表的实质性解读中没有作用。 列表

{pmore}
{it:a} {cmd:"}{it:b}{cmd:"} {it:c}

{pstd}
与列表

{pmore}
{it:a b c}

{pstd}
是相同的。


{marker duplicate}{...}
{title:列表中重复元素的处理}

{pstd}
除了 {cmd:uniq} 和 {cmd:dups} 之外，所有列表函数都将重复项视为不同的部分。 例如，考虑列表 {it:A}，

{pmore}
{it:a b c b}

{pstd}
请注意，在此列表中 {it:b} 出现了两次。
你可以将列表看作包含 {it:a}、第一次出现的 {it:b}、{it:c} 和第二次出现的 {it:b}：

{pmore}
{it:a b_1 c b_2}

{pstd}
对所有列表中重复的元素执行相同的操作，在现在唯一的元素上执行，然后从结果中删除下标。

{pstd}
如果你问 {it:B}="{it:b b}" 是否在 {cmd:in} {it:A} 中，答案是肯定的，因为 {it:A} 包含两个 {it:b} 的出现。如果 {it:B} 包含 "{it:b b b}"，然而答案将是否定的，因为 {it:A} 不包含三个 {it:b} 的出现。

{pstd}
同样地，如果 {it:B}="{it:b b}"，那么 {it:A}{cmd:|}{it:B}="{it:a b c b}"，而如果 {it:B}="{it:b b b}"，则 {it:A}{cmd:|}{it:B}="{it:a b c b b}"。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <macrolists.sthlp>}