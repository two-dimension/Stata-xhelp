{smcl}
{* *! version 1.1.12  19oct2017}{...}
{viewerdialog labelbook "dialog labelbook"}{...}
{viewerdialog numlabel "dialog numlabel"}{...}
{viewerdialog uselabel "dialog uselabel"}{...}
{vieweralsosee "[D] labelbook" "mansection D labelbook"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] codebook" "help codebook_zh"}{...}
{vieweralsosee "[D] describe" "help describe_zh"}{...}
{vieweralsosee "[D] ds" "help ds_zh"}{...}
{vieweralsosee "[D] encode" "help encode_zh"}{...}
{vieweralsosee "[D] label" "help label_zh"}{...}
{vieweralsosee "[M-3] matalabel" "help matalabel_zh"}{...}
{viewerjumpto "Syntax" "labelbook_zh##syntax"}{...}
{viewerjumpto "Menu" "labelbook_zh##menu"}{...}
{viewerjumpto "Description" "labelbook_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "labelbook_zh##linkspdf"}{...}
{viewerjumpto "Options for labelbook" "labelbook_zh##options_labelbook"}{...}
{viewerjumpto "Options for numlabel" "labelbook_zh##options_numlabel"}{...}
{viewerjumpto "Options for uselabel" "labelbook_zh##options_uselabel"}{...}
{viewerjumpto "Examples" "labelbook_zh##examples"}{...}
{viewerjumpto "Stored results" "labelbook_zh##results"}
{help labelbook:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[D] labelbook} {hline 2}}标签工具{p_end}
{p2col:}({mansection D labelbook:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}生成描述值标签的代码本

{p 8 19 2}{cmd:labelbook} [{it:lblname-list}]
[{cmd:,} {it:labelbook_options}]


{phang}为值标签前添加数字值

{p 8 18 2}{cmd:numlabel} [{it:lblname-list}]{cmd:,}
{{opt a:dd}|{opt r:emove}} [{it:numlabel_options}]


{phang}制作包含值标签信息的数据集

{p 8 18 2}{cmd:uselabel} [{it:lblname-list}] 
[{cmd:using} {it:{help filename_zh}}] [{cmd:,} {cmd:clear} {opt v:ar}]


{synoptset 19}{...}
{marker labelbook_options}{...}
{synopthdr :labelbook_options}
{synoptline}
{synopt :{opt a:lpha}}按字母顺序排列标签映射{p_end}
{synopt :{opt le:ngth(#)}}检查值标签的唯一长度为 {it:#}; 默认值为 {cmd:length(12)}{p_end}
{synopt :{opt li:st(#)}}列出最多 {it:#} 个映射；默认值为
{cmd:list(32000)}{p_end}
{synopt :{opt p:roblems}}在总结报告中描述潜在问题{p_end}
{synopt :{opt d:etail}}不抑制变量或值标签的详细报告 {p_end}
{synoptline}
{p2colreset}{...}

{synoptset 19}{...}
{marker numlabel_options}{...}
{synopthdr :numlabel_options}
{synoptline}
{p2coldent:*{opt a:dd}}为值标签添加数字值前缀{p_end}
{p2coldent:*{opt r:emove}}从值标签中移除数字值{p_end}
{synopt :{opt m:ask(str)}}格式化数字标签的掩码；默认掩码为
"{it:#}{cmd:.}"{p_end}
{synopt :{opt force}}强制添加或移除数字标签{p_end}
{synopt :{opt d:etail}}提供有关某些标签前缀中有数字、某些标签没有的值标签的详细信息{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* 必须指定 {cmd:add} 或 {cmd:remove}。


{marker menu}{...}
{title:菜单}

    {title:labelbook}

{phang2}
{bf:数据 > 数据工具 > 标签工具 > 生成值标签代码本}

    {title:numlabel}

{phang2}
{bf:数据 > 数据工具 > 标签工具 > 为值标签添加数字前缀}

    {title:uselabel}

{phang2}
{bf:数据 > 数据工具 > 标签工具 > 从值标签创建数据集}


{marker description}{...}
{title:描述}

{pstd}
{cmd:labelbook} 显示指定值标签的信息，或者如果没有指定标签，则显示数据中的所有标签。

{pstd}
对于多语言数据集（见 {manhelp label_language D:标签语言}），{cmd:labelbook} 列出在所有已定义语言中附加值标签的变量。

{pstd}
{cmd:numlabel} 为值标签添加数字前缀。例如，将值映射 {cmd:2} -> "{cmd:catholic}" 更改为 {cmd:2} -> "{cmd:2. catholic}"。有关不同格式，请参见选项 {helpb labelbook##mask():mask()}。显示值标签的 Stata 命令也会显示相关的数字值。前缀可以使用 {opt remove} 选项移除。

{pstd}
{cmd:uselabel} 是一个程序员命令，从当前加载的数据集中读取值标签信息或从可选指定的文件名中读取。

{pstd}
{cmd:uselabel} 创建一个内存中仅包含该值标签信息的数据集。新的数据集有四个变量，分别命名为 {opt label}、{opt lname}、{opt value} 和 {opt trunc}；按照 {opt lname value} 排序；每个映射有 1 个观测值。值标签可以长于 Stata 的最大字符串长度；请参见 {help limits_zh}。新变量 {opt trunc} 如果值标签被截断以适应由 {cmd:uselabel} 创建的数据集中字符串变量，则其值为 {cmd:1}。

{pstd}
{cmd:uselabel} 是 {cmd:label, save} 的补充，后者生成值标签的文本文件，以便于编辑值标签文本。

{pstd}
不指定列表或使用 {opt _all} 等同于指定所有值标签。值标签名称不能缩写或使用通配符。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D labelbookQuickstart:快速入门}

        {mansection D labelbookRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options_labelbook}{...}
{title:labelbook 的选项}

{phang}
{opt alpha} 指定值标签映射列表按标签的字母顺序排序。默认按值进行排序。

{phang}
{opt length(#)} 指定 {cmd:labelbook} 检查以确定缩短的值标签是否仍然唯一的最小长度。默认为 {opt 12}，这是大多数 Stata 命令使用的宽度。 {cmd:labelbook} 还报告值标签在其完整长度下是否唯一。

{phang}
{opt list(#)} 指定最大列出的值标签映射数。如果一个值标签定义了更多映射，则显示 {it:#} 个映射的随机子集。默认情况下，{cmd:labelbook} 显示所有映射。{cmd:list(0)} 抑制值标签定义的列出。

{phang}
{cmd:problems} 指定生成描述潜在问题的总结报告：

{p 8 11 2}
1. 值标签在映射值中存在缺口（例如，值 0 和 2 被标记，而 1 没有标记）{p_end}
{p 8 11 2}
2. 值标签字符串包含前导或后续空格{p_end}
{p 8 11 2}
3. 值标签包含重复标签，即不同的值映射到相同的字符串。{p_end}
{p 8 11 2}
4. 值标签在长度为 12 时包含重复标签{p_end}
{p 8 11 2}
5. 值标签包含数字 -> 数字映射{p_end}
{p 8 11 2}
6. 值标签包含数字 -> 空字符串映射{p_end}
{p 8 11 2}
7. 值标签未被任何变量使用{p_end}
 
{p 8 8 2}
有关这些问题的讨论及解决建议，请参见 {help labelbook_problems_zh}。

{phang}
{opt detail} 仅可与 {opt problems} 一起指定。它指定不抑制有关变量或值标签的详细报告。


{marker options_numlabel}{...}
{title:numlabel 的选项}

{phang}
{opt add} 指定将数字值作为前缀添加到值标签。已使用相同掩码的值标签不会被修改。

{phang}
{opt remove} 指定从值标签中移除数字值。如果您通过使用非默认掩码添加了数字值，则必须指定相同的掩码才能移除它们。未 {opt numlabeled} 或使用不同掩码的值标签不会被修改。

{marker mask()}{...}
{phang}
{opt mask(str)} 指定格式化数字标签的掩码。在掩码中，{it:#} 被替换为数字标签。默认掩码为 "{it:#.} "，因此数字值 {opt 3} 显示为 "{opt 3.} "。空格是相关的。对于掩码 "[{it:#}]"，数字值 {opt 3} 将显示为 "[{opt 3}]。

{phang}
{opt force} 指定强制执行添加或移除数字标签，即使某些值标签使用该掩码且某些值标签不使用。只有未 {opt numlabeled} 的标签才会被修改。

{phang}
{opt detail} 指定提供关于值标签的详细信息，这些值标签有时，但并不总是，使用该掩码的 {opt numlabeled}。


{marker options_uselabel}{...}
{title:uselabel 的选项}

{phang}
{opt clear} 允许创建数据集，即使内存中已有的数据集自上次保存后已更改。

{phang}
{opt var} 指定使用值标签 {it:vl} 的变量列表将返回在 {opt r(vl)} 中。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. label define repair 1 "非常差" 2 "差 " 4 "好"}
              {cmd:5 "非常好"}

{pstd}显示所有值标签的信息{p_end}
{phang2}{cmd:. labelbook}

{pstd}显示值标签 {cmd:origin} 的信息{p_end}
{phang2}{cmd:. labelbook origin}

{pstd}生成包含值标签 {cmd:origin} 问题的总结报告{p_end}
{phang2}{cmd:. labelbook origin, problems}

{pstd}生成包含值标签 {cmd:repair} 问题的总结报告{p_end}
{phang2}{cmd:. labelbook repair, problems}

{pstd}将值标签 {cmd:repair} 分配给变量 {cmd:rep78}{p_end}
{phang2}{cmd:. label values rep78 repair}

{pstd}生成值标签 {cmd:rep78} 的代码本{p_end}
{phang2}{cmd:. codebook rep78}

{pstd}通过去掉"差"后面的空格以及定义"3"的标签来修改 {cmd:repair} 值标签{p_end}
{phang2}{cmd:. label define repair 2 "差" 3 "平均", modify}

{pstd}生成包含值标签 {cmd:repair} 问题的总结报告{p_end}
{phang2}{cmd:. labelbook repair, problems}

{pstd}报告 {cmd:rep78} 的频率表{p_end}
{phang2}{cmd:. tabulate rep78}

{pstd}为值标签添加数字前缀{p_end}
{phang2}{cmd:. numlabel, add}

{pstd}报告 {cmd:rep78} 的频率表{p_end}
{phang2}{cmd:. tabulate rep78}

{pstd}从 {cmd:repair} 值标签中移除带前缀的数字值标签{p_end}
{phang2}{cmd:. numlabel repair, remove}

{pstd}报告 {cmd:rep78} 的频率表{p_end}
{phang2}{cmd:. tabulate rep78}

{pstd}使用指定的掩码为 {cmd:repair} 值标签添加数字前缀{p_end}
{phang2}{cmd:. numlabel repair, add mask([#])}

{pstd}报告 {cmd:rep78} 的频率表{p_end}
{phang2}{cmd:. tabulate rep78}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}创建一个包含值标签和对应值的数据集{p_end}
{phang2}{cmd:. uselabel}

{pstd}描述数据{p_end}
{phang2}{cmd:. describe}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}{p_end}
    {hline}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:labelbook} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(names)}}{it:lblname-list}{p_end}
{synopt:{cmd:r(gaps)}}映射值中的缺口{p_end}
{synopt:{cmd:r(blanks)}}前导或尾随空格{p_end}
{synopt:{cmd:r(null)}}包含空字符串的值标签名称{p_end}
{synopt:{cmd:r(nuniq)}}重复标签{p_end}
{synopt:{cmd:r(nuniq_sh)}}长度为 12 的重复标签{p_end}
{synopt:{cmd:r(ntruniq)}}最大字符串长度的重复标签{p_end}
{synopt:{cmd:r(notused)}}未被任何变量使用{p_end}
{synopt:{cmd:r(numeric)}}包含数字映射的值标签名称{p_end}
{p2colreset}{...}

{pstd}
{cmd:uselabel} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(}{it:lblname}{cmd:)}}使用值标签 {it:lblname} 的变量列表（仅在指定了 {cmd:var} 选项时）{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <labelbook.sthlp>}