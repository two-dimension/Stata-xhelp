{smcl}
{* *! version 1.4.6  22mar2018}{...}
{viewerdialog ds "dialog ds"}{...}
{vieweralsosee "[D] ds" "mansection D ds"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] cf" "help cf_zh"}{...}
{vieweralsosee "[D] codebook" "help codebook_zh"}{...}
{vieweralsosee "[D] compare" "help compare_zh"}{...}
{vieweralsosee "[D] compress" "help compress_zh"}{...}
{vieweralsosee "[D] describe" "help describe_zh"}{...}
{vieweralsosee "[D] format" "help format_zh"}{...}
{vieweralsosee "[D] label" "help label_zh"}{...}
{vieweralsosee "[D] lookfor" "help lookfor_zh"}{...}
{vieweralsosee "[D] notes" "help notes_zh"}{...}
{vieweralsosee "[D] order" "help order_zh"}{...}
{vieweralsosee "[D] rename" "help rename_zh"}{...}
{viewerjumpto "Syntax" "ds_zh##syntax"}{...}
{viewerjumpto "Menu" "ds_zh##menu"}{...}
{viewerjumpto "Description" "ds_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ds_zh##linkspdf"}{...}
{viewerjumpto "Options" "ds_zh##options"}{...}
{viewerjumpto "Examples" "ds_zh##examples"}{...}
{viewerjumpto "Stored results" "ds_zh##results"}
{help ds:English Version}
{hline}{...}
{p2colset 1 11 13 2}{...}
{p2col:{bf:[D] ds} {hline 2}}紧凑列出具有指定属性的变量{p_end}
{p2col:}({mansection D ds:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
简单语法

{p 8 17 2}
{cmd:ds} [{cmd:,} {opt a:lpha}]

{phang}
高级语法

{p 8 17 2}
{cmd:ds} [{varlist}] [{cmd:,} {it:options}]

{synoptset 24 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主}
{synopt :{opt not}}列出未在 {varlist} 中指定的变量{p_end}
{synopt :{opt a:lpha}}按字母顺序列出变量{p_end}
{synopt :{opt d:etail}}显示额外详细信息{p_end}
{synopt :{opt v:arwidth(#)}}显示变量名称的宽度；默认值为
{cmd:varwidth(12)}{p_end}
{synopt :{opt skip(#)}}变量之间的间隙；默认值为 {cmd:skip(2)}{p_end}

{syntab :高级}
{synopt :{opt has(spec)}}描述与 {it:spec} 匹配的子集{p_end}
{synopt :{opt not(spec)}}描述与 {it:spec} 不匹配的子集{p_end}

{synopt :{opt inse:nsitive}}执行不区分字母大小写的模式匹配{p_end}
{synopt :{opt indent(#)}}缩进输出；很少使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{opt insensitive} 和 {opt indent(#)} 在对话框中未显示。

{marker spec}{...}
{synoptset 24}{...}
{synopthdr :spec}
{synoptline}
{synopt :{opt t:ype} {it:typelist}}指定类型{p_end}
{synopt :{opt f:ormat} {it:patternlist}}显示匹配 {it:patternlist} 的格式{p_end}
{synopt :{opt varl:abel} [{it:patternlist}]}变量标签或与 {it:patternlist} 匹配的变量标签{p_end}
{synopt :{opt c:har} [{it:patternlist}]}特征或与 {it:patternlist} 匹配的特征{p_end}
{synopt :{opt vall:abel} [{it:patternlist}]}值标签或与 {it:patternlist} 匹配的值标签{p_end}
{synoptline}
{p2colreset}{...}

{phang}
{it:typelist} 在 {cmd:has(type} {it:typelist}{cmd:)} 和 
{cmd:not(type} {it:typelist}{cmd:)} 中使用的输入为一个或多个 
类型的列表，每种类型可以是 {cmd:numeric}、{cmd:string}、{cmd:str#}、{cmd:strL}、
{cmd:byte}、{cmd:int}、{cmd:long}、{cmd:float} 或 {cmd:double}，也可以是一个
{it:{help numlist_zh}}，例如 {cmd:1/8} 表示 
{bind:"{cmd:str1} {cmd:str2} ...  {cmd:str8}"}。 示例包括{p_end}
{p2colset 13 43 45 2}
{p2col :{cmd:has(type int)}}是类型 {opt int}{p_end}
{p2col :{cmd:has(type byte int long)}}是整数类型 {opt type}{p_end}
{p2col :{cmd:not(type int)}}不是类型 {opt int}{p_end}
{p2col :{cmd:not(type byte int long)}}不是整数类型 {opt type}{p_end}
{p2col :{cmd:has(type numeric)}}是数字变量{p_end}
{p2col :{cmd:not(type string)}}不是字符串 ({opt str}{it:#} 或 {opt strL}) 变量（与前相同）{p_end}
{p2col :{cmd:has(type 1/40)}}是 {opt str1}、{opt str2}、...、
{opt str40}{p_end}
{p2col :{cmd:has(type str#)}}是 {opt str1}、{opt str2}、...、
{opt str2045} 但不是 {opt strL}{p_end}
{p2col :{cmd:has(type strL)}}是类型 {opt strL} 但不是
{opt str}{it:#}{p_end}
{p2col :{cmd:has(type numeric 1/2)}}是数字或 {opt str1} 或
{opt str2}{p_end}
{p2colreset}{...}

{phang}
{it:patternlist} 在例如 {cmd:has(format} 
{it:patternlist}{cmd:)中使用，是一个或多个 {it:patterns} 的列表。一个模式是
预期文本加上字符 {cmd:*} 和 {cmd:?}。
{cmd:*} 表示此处有 0 个或多个字符，{cmd:?} 表示此处恰好有 1 个字符。 示例包括{p_end}
{p2colset 13 43 45 2}
{p2col :{cmd:has(format *f)}}格式为 {cmd:%}{it:#}{cmd:.}{it:#}{cmd:f}{p_end}
{p2col :{cmd:has(format %t*)}}具有时间或日期格式{p_end}
{p2col :{cmd:has(format %-*s)}}是左对齐字符串{p_end}
{p2col :{cmd:has(varl *weight*)}}变量标签中包含单词 {opt weight}{p_end}
{p2col :{cmd:has(varl *weight* *Weight*)}}变量标签中包含 {opt weight} 或
{opt Weight}{p_end}
{p2colreset}{...}

{phang}
要匹配短语，请将短语用引号括起来。

	    {cmd:has(varl "*some phrase*")}    变量标签包含 {opt some phrase}

{phang}
如果你使用 {cmd:has(varl *some phrase*)}，那么仅会列出标签以 {opt some} 结尾或以 {opt phrase} 开头的变量。


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 描述数据 > 紧凑列出变量名称}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ds} 列出当前内存中数据集的变量名称，采用紧凑或详细格式，并允许你根据名称或属性（例如，变量为数字的）指定要列出的变量子集。此外，{cmd:ds} 在 {cmd:r(varlist)} 中保存所选变量的名称，以便你在后续命令中使用。

{pstd}
如果不带参数输入 {cmd:ds}，则会以紧凑形式列出当前内存中数据集的所有变量名称。


{marker linkspdf}{...}
{title:链接至 PDF 文档}

        {mansection D dsQuickstart:快速入门}

        {mansection D dsRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{opt not} 指定不列出 {varlist} 中的变量。例如，{bind:{cmd:ds pop*, not}} 指定列出所有不以字母 {opt pop} 开头的变量。默认情况下，列出数据集中的所有变量，或者在指定 {it:varlist} 的情况下，列出指定的变量。

{phang}
{opt alpha} 指定按字母顺序列出变量。如果变量包含除纯 ASCII 以外的 Unicode 字符，则排序顺序严格根据底层字节顺序确定。
请参见 {findalias frunicodesort}。

{phang}
{opt detail} 指定生成与 {cmd:describe} 相同的详细输出。如果指定了 {opt detail}，则 {opt varwidth()}、{opt skip()} 和 {opt indent()} 将被忽略。

{phang}
{opt varwidth(#)} 指定变量名称的显示宽度；默认值为 {cmd:varwidth(12)}。

{phang}
{opt skip(#)} 指定变量名称之间的空格数，假定所有变量名称的长度与最长变量名称相同；默认值为 {cmd:skip(2)}。

{dlgtab:高级}

{phang}
{cmd:has(}{it:{help ds##spec:spec}}{cmd:)} 和 
{opt not(spec)} 从数据集（或 {varlist}）中选择符合或不符合 {it:spec} 的变量子集。选择可以根据存储类型、变量标签、值标签、显示格式或特征进行。只能指定一个 {opt not}、{opt has()} 或 {opt not()} 选项。

{pmore}
{cmd:has(type string)} 选择所有字符串变量。输入 
{cmd:ds, has(type string)} 将列出数据集中的所有字符串变量，而输入 {bind:{cmd:ds pop*, has(type string)}} 将列出所有名称以 {opt pop} 开头的字符串变量。

{pmore}
{cmd:has(varlabel)} 选择定义了变量标签的变量。 {cmd:has(varlabel *weight*)} 选择标签中包含单词 "weight" 的变量。 {cmd:not(varlabel)} 则选择所有没有变量标签的变量。

{pmore}
{cmd:has(vallabel)} 选择定义了值标签的变量。 {cmd:has(vallabel yesno)} 选择值标签为 {opt yesno} 的变量。 {cmd:has(vallabel *no)} 选择值标签以字母 {opt no} 结尾的变量。

{pmore}
{cmd:has(format} {it:patternlist}{cmd:)} 指定格式与 {it:patternlist} 中的任何模式匹配的变量。
{bind:{cmd:has(format *f)}} 将选择所有格式以 {cmd:f} 结尾的变量，这可能是所有格式为 {cmd:%}{it:#}{cmd:.}{it:#}{cmd:f}、{cmd:%0}{it:#}{cmd:.}{it:#}{cmd:f} 和 {cmd:%-}{it:#}{cmd:.}{it:#}{cmd:f} 的变量。 {cmd:has(format *f *fc)} 将选择所有格式以 {opt f} 或 {opt fc} 结尾的变量。 {bind:{cmd:not(format %t* %-t*)}} 将选择所有变量，除了日期或时间序列格式的变量。

{pmore}
{cmd:has(char)} 选择所有定义了特征的变量。 {cmd:has(char problem)} 选择所有具有特征名为 {cmd:problem} 的变量。

{phang}
以下选项可与 {cmd:ds} 一起使用，但在对话框中未显示：

{phang}
{opt insensitive} 指定 {opt has()} 和 {opt not()} 中的 {it:pattern} 匹配不区分大小写。请注意，大小写不敏感只适用于 ASCII 字符。

{phang}
{opt indent(#)} 指定行的缩进量。


{marker examples}{...}
{title:示例}

{p 4 4 2}
列出所有变量{p_end}
	{cmd:. ds}

{p 4 4 2}
列出所有字符串变量并打开包含它们的数据编辑器{p_end}
	{cmd:. ds, has(type string)}
	{cmd:. edit `r(varlist)'}

{p 4 4 2}
列出所有 {cmd:str1}、{cmd:str2}、{cmd:str3}、{cmd:str4} 变量{p_end}
	{cmd:. ds, has(type 1/4)}

{p 4 4 2}
列出所有数字变量并将它们迁移到数据集的开头{p_end}
	{cmd:. ds, has(type numeric)}
	{cmd:. order `r(varlist)'}

{p 4 4 2}
列出所有数字变量并对其进行汇总{p_end}
	{cmd:. ds, has(type numeric)}
	{cmd:. summarize `r(varlist)'}

{p 4 4 2}
列出所有 {cmd:byte} 或 {cmd:int} 变量{p_end}
	{cmd:. ds, has(type byte int)}

{p 4 4 2}
列出所有 {cmd:float} 变量{p_end}
	{cmd:. ds, has(type float)}

{p 4 4 2}
列出所有不是 {cmd:float} 的变量{p_end}
	{cmd:. ds, not(type float)}

{p 4 4 2}
列出所有附加了值标签的变量{p_end}
	{cmd:. ds, has(vall)}

{p 4 4 2}
列出所有附加了值标签 {cmd:origin} 的变量{p_end}
	{cmd:. ds, has(vall origin)}

{p 4 4 2}
列出所有日期变量，即，具有格式 {cmd:%t*}
或 {cmd:%-t*} 的变量{p_end}
	{cmd:. ds, has(format %t* %-t*)}

{p 4 4 2}
列出具有左对齐字符串格式的变量{p_end}
	{cmd:. ds, has(format %-*s)}

{p 4 4 2}
列出具有逗号格式的变量{p_end}
	{cmd:. ds, has(format *c)}

{p 4 4 2}
列出所有具有定义特征的变量{p_end}
	{cmd:. ds, has(char)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:ds} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(varlist)}}找到的变量的变量列表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ds.sthlp>}