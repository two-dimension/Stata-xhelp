{smcl}
{* *! version 1.2.0  13apr2018}{...}
{viewerdialog "Variables Manager" "stata varmanage"}{...}
{viewerdialog copy "dialog label_copy"}{...}
{viewerdialog data "dialog label_data"}{...}
{viewerdialog list "dialog label_list"}{...}
{viewerdialog save "dialog label_save"}{...}
{vieweralsosee "[D] label" "mansection D label"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] label language" "help label_language_zh"}{...}
{vieweralsosee "[D] labelbook" "help labelbook_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] encode" "help encode_zh"}{...}
{vieweralsosee "[D] varmanage" "help varmanage_zh"}{...}
{viewerjumpto "Syntax" "label_zh##syntax"}{...}
{viewerjumpto "Menu" "label_zh##menu"}{...}
{viewerjumpto "Description" "label_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "label_zh##linkspdf"}{...}
{viewerjumpto "Options" "label_zh##options"}{...}
{viewerjumpto "Technical note" "label_zh##technote"}{...}
{viewerjumpto "Examples" "label_zh##examples"}{...}
{viewerjumpto "Video examples" "label_zh##video"}{...}
{viewerjumpto "Stored results" "label_zh##results"}
{help label:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] label} {hline 2}}操作标签{p_end}
{p2col:}({mansection D label:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}标记数据集

{p 8 15 2}
{opt la:bel} {opt da:ta} [{cmd:"}{it:label}{cmd:"}]


{phang}标记变量

{p 8 15 2}
{opt la:bel} {opt var:iable} {varname} [{cmd:"}{it:label}{cmd:"}]


{phang}定义值标签

{p 8 15 2}
{opt la:bel} {opt de:fine} {it:lblname #}
{cmd:"}{it:label}{cmd:"} [{it:#} {cmd:"}{it:label}{cmd:"} {it:...}]
[{cmd:,} {opt a:dd} {opt modify} {opt replace} {opt nofix}]


{phang}将值标签分配给变量

{p 8 15 2}
{opt la:bel} {opt val:ues} {varlist} {it:lblname} [{cmd:,} {cmd:nofix}]


{phang}移除值标签

{p 8 15 2}
{opt la:bel} {opt val:ues} {varlist} [{cmd:.}]


{phang}列出值标签的名称

{p 8 15 2}
{opt la:bel} {opt di:r}


{phang}列出值标签的名称及内容

{p 8 15 2}
{opt la:bel} {opt l:ist} [{it:lblname} [{it:lblname ...}]]


{phang}复制值标签

{p 8 15 2}
{opt la:bel} {opt copy} {it:lblname} {it:lblname} [{cmd:,} {opt replace}]


{phang}删除值标签

{p 8 15 2}
{opt la:bel} {opt drop} {c -(}{it:lblname} [{it:lblname ...}] | {cmd:_all}{c )-}


{phang}在do文件中保存值标签

{p 8 15 2}
{opt la:bel} {opt save} [{it:lblname} [{it:lblname...}]]
{cmd:using} {it:{help filename_zh}} [{cmd:,} {opt replace}]


{phang}用于多种语言的变量和值标签

        {opt la:bel} {opt lang:uage} ... {right:(参见 {manhelp label_language D:label language})  }


{phang}
其中 {it:#} 是一个整数或扩展缺失值 
({cmd:.a}, {cmd:.b}, ..., {cmd:.z}).


{marker menu}{...}
{title:菜单}

    {title:标记数据} 

{phang2}
{bf:数据 > 数据工具 > 标签工具 > 标记数据集}

    {title:标记变量}

{phang2}
{bf:数据 > 变量管理器}

    {title:标记定义}

{phang2}
{bf:数据 > 变量管理器}

    {title:标记值}

{phang2}
{bf:数据 > 变量管理器}

    {title:列出标签}

{phang2}
{bf:数据 > 数据工具 > 标签工具 > 列出值标签}

    {title:复制标签}

{phang2}
{bf:数据 > 数据工具 > 标签工具 > 复制值标签}

    {title:删除标签}

{phang2}
{bf:数据 > 变量管理器}

    {title:保存标签}

{phang2}
{bf:数据 > 数据工具 > 标签工具 > 将值标签保存为do文件}


{marker description}{...}
{title:描述}

{pstd}
{cmd:label data} 将标签（最多 80 个字符）附加到内存中的数据集。 
数据集标签在您 {cmd:use} 数据集时和 {cmd:describe} 它时显示。 
如果未指定标签，任何现有标签将被移除。

{pstd}
{cmd:label variable} 将标签（最多 80 个字符）附加到变量。 
如果未指定标签，任何现有变量标签将被移除。

{pstd}
{cmd:label define}  创建一个名为 {it:lblname} 的值标签，这是一个单独数字值及其对应标签的集合。 
{it:lblname} 可以包含多达 65,536 个单独标签；每个单独标签最长可以达到 32,000 个字符。

{pstd}
{cmd:label values} 将值标签附加到 {varlist}。 
如果 {cmd:.} 被指定而不是 {it:lblname}，任何现有值标签将从该 {it:varlist} 中分离。 
但是，值标签不会被删除。 
语法 {cmd:label values} {varname}（即，在 {it:varname} 后不跟任何内容）与指定 {cmd:.} 的效果相同。

{pstd}
{cmd:label dir} 列出存储在内存中的值标签名称。

{pstd}
{cmd:label list} 列出存储在内存中的值标签的名称和内容。

{pstd}
{cmd:label copy} 复制现有值标签。

{pstd}
{cmd:label drop} 消除值标签。

{pstd}
{cmd:label save} 将值标签定义保存到 do 文件中。这对于未附加到变量的值标签特别有用，因为这些标签不会随数据保存。 默认情况下，使用 .do 作为文件名扩展名。

{pstd}
有关 {cmd:label language} 命令的信息，请参见 {manhelp label_language D:label language}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D labelQuickstart:快速入门}

        {mansection D labelRemarksandexamples:备注和示例}

{pstd}
以上部分未包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt add} 允许您将 {it:#} 添加到 {it:label} 的对应关系{it:lblname}。 
如果未指定 {cmd:add}，则只能创建新 {it:lblname}。 
如果指定了 {cmd:add}，则可以创建新的 {it:lblname} 或将新条目添加到现有的 {it:lblname} 中。

{phang}
{opt modify} 允许您修改或删除现有的 {it:#} 与 {it:label} 的对应关系，并添加新的对应关系。 
指定 {opt modify} 意味着 {opt add}，即使您未输入 {opt add} 选项。

{phang}
{opt replace}，与 {opt label define} 一起，允许重新定义现有值标签。 
{opt replace}，与 {opt label copy} 一起，允许覆盖现有的值标签。 
{opt replace}，与 {opt label save} 一起，允许替换 {it:{help filename_zh}}。

{phang}
{opt nofix} 防止显示格式根据值标签的最大长度进行扩展。 
考虑 {opt label values myvar mylab}，假设 {opt myvar} 当前有 {opt %9.0g} 显示格式。 
假设 {opt mylab} 中字符串的最大长度是 12 个字符。 
{opt label values} 会将 {opt myvar} 的格式从 {opt %9.0g} 更改为 {opt %12.0g}。 
{opt nofix} 防止此情况。

{pmore}
{opt nofix} 在 {opt label define} 中也允许，但仅在您修改现有值标签时相关。 
没有 {opt nofix} 选项时，{opt label define} 会找到使用此值标签的所有变量，并考虑扩展它们的显示格式。 
{opt nofix} 防止此情况。


{marker technote}{...}
{title:技术说明}

{pstd}
尽管我们倾向于展示使用一条命令定义值标签的示例，例如

{phang2}{cmd:. label define answ 1 yes 2 no}

{pstd}
请记住，值标签可以包括多个关联，所有这些都在一行上输入可能会显得笨拙或不可能。 
例如，如果我们有 1,000 个位置的编码，可能会想象输入如下内容：

{phang2}{cmd:. label define fips 10060 "Anniston, AL" 10110 "Auburn, AL"}
	{cmd:10175 "Bessemer, AL"} {it:...} {cmd:560050 "Cheyenne, WY"}

{pstd}
即使在编辑器中，我们也不太可能正确输入该行。

{pstd}
输入较长的值标签的简单方法是逐个输入编码：

{phang2}{cmd:. label define fips 10060 "Anniston, AL"}{p_end}
{phang2}{cmd:. label define fips 10175 "Bessemer, AL", add}{p_end}
	{it:...}
{phang2}{cmd:. label define fips 560050 "Cheyenne, WY", add}

{pstd}
当然，我们可以缩写：

{phang2}{cmd:. lab def fips 10060 "Anniston, AL"}{p_end}
{phang2}{cmd:. lab def fips 10175 "Bessemer, AL", add}

{pstd}
允许多达 65,536 个关联。 


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse hbp4}

{pstd}描述数据集{p_end}
{phang2}{cmd:. describe}

{pstd}标记数据集{p_end}
{phang2}{cmd:. label data "虚构血压数据"}

{pstd}描述数据集{p_end}
{phang2}{cmd:. describe}

{pstd}标记 {cmd:hbp} 变量{p_end}
{phang2}{cmd:. label variable hbp "高血压"}

{pstd}定义值标签 {cmd:yesno}{p_end}
{phang2}{cmd:. label define yesno 0 "不" 1 "是"}

{pstd}列出所有值标签的名称及内容{p_end}
{phang2}{cmd:. label list}

{pstd}仅列出值标签 {cmd:yesno} 的名称及内容{p_end}
{phang2}{cmd:. label list yesno}

{pstd}列出值标签的名称{p_end}
{phang2}{cmd:. label dir}

{pstd}复制值标签 {cmd:yesno}{p_end}
{phang2}{cmd:. label copy yesno yesnomaybe}{p_end}

{pstd}向值标签 {cmd:yesnomaybe} 添加另一个值和标签{p_end}
{phang2}{cmd:. label define yesnomaybe 2 "也许", add}

{pstd}列出值标签 {cmd:yesnomaybe} 的名称及内容{p_end}
{phang2}{cmd:. label list yesnomaybe}

{pstd}修改值标签 {cmd:yesnomaybe} 中值 2 的标签{p_end}
{phang2}{cmd:. label define yesnomaybe 2 "不知道", modify}

{pstd}列出值标签 {cmd:yesnomaybe} 的名称及内容{p_end}
{phang2}{cmd:. label list yesnomaybe}

{pstd}列出数据集中的前 4 个观察值{p_end}
{phang2}{cmd:. list in 1/4}

{pstd}将值标签 {cmd:yesnomaybe} 附加到变量 {cmd:hbp}{p_end}
{phang2}{cmd:. label values hbp yesnomaybe}

{pstd}列出数据集中的前 4 个观察值{p_end}
{phang2}{cmd:. list in 1/4}

{pstd}将值标签 {cmd:sexlbl} 保存到 {cmd:mylabel.do}{p_end}
{phang2}{cmd:. label save sexlbl using mylabel}

{pstd}列出文件 {cmd:mlabel.do} 的内容{p_end}
{phang2}{cmd:. type mylabel.do}

{pstd}从数据集中删除值标签 {cmd:sexlbl}{p_end}
{phang2}{cmd:. label drop sexlbl}

{pstd}列出值标签的名称{p_end}
{phang2}{cmd:. label dir}

{pstd}运行 {cmd:mylabel.do} 以检索值标签 {cmd:sexlbl}{p_end}
{phang2}{cmd:. do mylabel}

{pstd}列出值标签的名称{p_end}
{phang2}{cmd:. label dir}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=l5QM2RzU3VM":如何标记变量}

{phang2}{browse "https://www.youtube.com/watch?v=CiSIeQVWxW0":如何标记分类变量的值}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:label list} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(k)}}映射值的数量，包括缺失值{p_end}
{synopt:{cmd:r(min)}}最小的非缺失值标签{p_end}
{synopt:{cmd:r(max)}}最大的非缺失值标签{p_end}
{synopt:{cmd:r(hasemiss)}}{cmd:1} 如果扩展缺失值被标记，{cmd:0}
                 否则{p_end}
{p2colreset}{...}

{pstd}
{cmd:label dir} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(names)}}值标签的名称{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <label.sthlp>}