{smcl}
{* *! version 1.1.6  24jan2019}{...}
{viewerdialog "import delimited" "dialog import_delimited_dlg"}{...}
{vieweralsosee "[D] import delimited" "mansection D importdelimited"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] export" "help export_zh"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{viewerjumpto "Syntax" "import_delimited_zh##syntax"}{...}
{viewerjumpto "Menu" "import_delimited_zh##menu"}{...}
{viewerjumpto "Description" "import_delimited_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "import_delimited_zh##linkspdf"}{...}
{viewerjumpto "Options for import delimited" "import_delimited_zh##import_options"}{...}
{viewerjumpto "Options for export delimited" "import_delimited_zh##export_options"}{...}
{viewerjumpto "Examples" "import_delimited_zh##examples"}{...}
{viewerjumpto "Video example" "import_delimited_zh##video"}
{help import_delimited:English Version}
{hline}{...}
{p2colset 1 25 26 2}{...}
{p2col:{bf:[D] import delimited} {hline 2}}导入和导出定界文本数据{p_end}
{p2col:}({mansection D importdelimited:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
加载定界文本文件

{p 8 16 2}
{cmd:import} {cmdab:delim:ited} [{cmd:using}] {it:{help filename_zh}}
[{cmd:,} {it:{help import_delimited##import_delimited_options:import_delimited_options}}]


{phang}
从定界文本文件中重命名指定的变量

{p 8 16 2}
{cmd:import} {cmdab:delim:ited} {it:{help import_delimited##extvarlist:extvarlist}} {cmd:using} {it:{help filename_zh}}
[{cmd:,} {it:{help import_delimited##import_delimited_options:import_delimited_options}}]


{phang}
将内存中的数据保存为定界文本文件

{p 8 32 2}
{cmd:export} {cmdab:delim:ited} [{cmd:using}] {it:{help filename_zh}} {ifin}
   [{cmd:,} {it:{help import_delimited##export_delimited_options:export_delimited_options}}]


{phang}
将内存中的变量子集保存为定界文本文件

{p 8 32 2}
{cmd:export} {cmdab:delim:ited} [{varlist}] {cmd:using} {it:{help filename_zh}}
{ifin} [{cmd:,} {it:{help import_delimited##export_delimited_options:export_delimited_options}}]


{pstd}
如果指定的{it:{help filename_zh}}没有扩展名，则对于{cmd:import delimited}和{cmd:export delimited}假设为{cmd:.csv}。如果{it:filename}包含嵌入空格，请用双引号括起来。

{marker extvarlist}{...}
{p 4 4 2}
{it:extvarlist}指定导入列的变量名。

{synoptset 40}{...}
{marker import_delimited_options}{...}
{synopthdr :import_delimited_options}
{synoptline}
{synopt :{opt rowr:ange([start][:end])}}要加载的数据的行范围{p_end}
{synopt :{opt colr:ange([start][:end])}}要加载的数据的列范围{p_end}
{synopt :{cmdab:varn:ames(}{it:#}|{cmd:nonames)}}将数据的第{it:#}行视为变量名，或者数据没有变量名{p_end}
{synopt :{cmd:case(preserve}|{cmd:lower}|{cmd:upper)}}保留大小写，或将变量名读取为小写（默认）或大写{p_end}
{synopt :{opt asflo:at}}将所有浮点数据导入为{cmd:float}s{p_end}
{synopt :{opt asdoub:le}}将所有浮点数据导入为{cmd:double}s{p_end}
{synopt :{cmdab:enc:oding(}{help import delimited##encoding:{it:encoding}}{cmd:)}}指定导入文本文件的编码{p_end}
{synopt :{cmdab:bindq:uotes(loose}|{cmd:strict}|{cmd:nobind)}}指定如何处理数据中的双引号{p_end}
{synopt :{cmdab:stripq:uotes(yes}|{cmd:no}|{cmd:default)}}去除或保留数据中的双引号{p_end}
{synopt :{cmdab:delim:iters("}{it:chars}{cmd:"}[{cmd:, }{cmd:collapse}|{cmd:asstring}]{cmd:)}}使用{it:chars}作为定界符{p_end}
{synopt :{cmdab:parsel:ocale(}{help import delimited##locale:{it:locale}}{cmd:)}}指定用于解析导入的文本文件中的数字的区域设置{p_end}
{synopt :{cmdab:decimals:eparator(}{it:character}{cmd:)}}解析数字时用于小数分隔符的字符{p_end}
{synopt :{cmdab:groups:eparator(}{it:character}{cmd:)}}解析数字时用于分组分隔符的字符{p_end}
{synopt :{cmdab:maxquotedr:ows(}{it:#} | {cmd:unlimited)}}在指定{cmd:bindquote(strict)}时，允许的行数{p_end}
{synopt :{cmdab:numericc:ols(}{it:{help numlist_zh}}|{cmd:_all)}}强制指定列为数字{p_end}
{synopt :{cmdab:stringc:ols(}{it:{help numlist_zh}}|{cmd:_all)}}强制指定列为字符串{p_end}
{synopt :{opt clear}}替换内存中的数据{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 40 tabbed}{...}
{marker export_delimited_options}{...}
{synopthdr :export_delimited_options}
{synoptline}
{syntab :Main}
{synopt :{cmdab:delim:iter("}{it:char}{cmd:"}|{cmd:tab})}使用{it:char}作为定界符{p_end}
{synopt :{opt novar:names}}在第一行不写入变量名{p_end}
{synopt :{opt nolab:el}}输出标记变量的数值（而不是标签）{p_end}
{synopt :{opt dataf:mt}}在导出时使用变量的显示格式{p_end}
{synopt :{opt q:uote}}始终用双引号括起字符串{p_end}
{synopt:{opt replace}}覆盖现有的{it:{help filename_zh}}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

    {title:导入定界文件}

{phang2}
{bf:文件 > 导入 > 文本数据（定界，*.csv，...）}

    {title:导出定界文件}

{phang2}
{bf:文件 > 导出 > 文本数据（定界，*.csv，...）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:import delimited}将文本文件加载到内存中，该文件每行有一个观察值，值之间由逗号、制表符或其他定界符分隔。最常见的两种文本数据类型是逗号分隔值（{cmd:.csv}）文本文件和制表符分隔文本文件，通常为{cmd:.txt}文件。类似地，{cmd:export delimited}将Stata的数据写入文本文件。

{pstd}
Stata还有其他导入数据的命令。如果您不确定{cmd:import delimited}是否能满足您的需求，请参见{manhelp import D}和{findalias frdatain}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D importdelimitedQuickstart:快速入门}

        {mansection D importdelimitedRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker import_options}{...}
{title:导入定界选项}

{phang}
{opt "rowrange([start][:end])"}指定要加载的数据的行范围。{it:start}和{it:end}是整数行号。

{phang}
{opt "colrange([start][:end])"}指定要加载的数据的变量范围。{it:start}和{it:end}是整数列号。

{phang}
{cmd:varnames(}{it:#}|{cmd:nonames)}指定变量名是否在数据中。默认情况下，{cmd:import delimited}会尝试确定文件是否包含变量名。{cmd:import delimited}将文件中的名称转换为有效的Stata变量名。文件中的原始名称将未修改地存储为变量标签。

{phang2}
{opt varnames(#)}指定变量名在数据的第{it:#}行；在{it:#}之前的数据不应导入。

{phang2}
{cmd:varnames(nonames)}指定数据中没有变量名。

{phang}
{cmd:case(}{cmd:preserve}|{cmd:lower}|{cmd:upper)}指定导入后变量名的大小写。默认是{cmd:case(lowercase)}。

{phang}
{cmd:asfloat}将浮点数据导入为类型{cmd:float}。导入变量的默认存储类型由{help generate_zh:set type}确定。

{phang}
{cmd:asdouble}将浮点数据导入为类型{cmd:double}。导入变量的默认存储类型由{help generate_zh:set type}确定。

{marker encoding}{...}
{phang}
{cmd:encoding(}{it:encoding}{cmd:)}指定要读取的文本文件的编码。默认是{cmd:encoding("latin1")}。对于UTF-8编码的文件指定{cmd:encoding("utf-8")}。{cmd:import delimited}使用Java编码。可用编码的列表可以在{browse "https://docs.oracle.com/javase/8/docs/technotes/guides/intl/encoding.doc.html"}中找到。

{pmore}
选项{cmd:charset()}是{cmd:encoding()}的同义词。

{phang}
{cmd:bindquotes(}{cmd:loose}|{cmd:strict}|{cmd:nobind)}指定{cmd:import delimited}如何处理数据中的双引号。指定{opt loose}（默认）告诉{cmd:import delimited}数据行上必须有匹配的开闭双引号。{opt strict}告诉{cmd:import delimited}一旦在数据行找到一个双引号，应该继续在数据中寻找匹配的双引号，即使该双引号在另一行。指定{opt nobind}告诉{cmd:import delimited}忽略绑定的双引号。

{phang}
{cmd:stripquotes(}{cmd:yes}|{cmd:no}|{cmd:default)}告诉{cmd:import delimited}如何处理双引号。{opt yes}导致所有双引号被去除。{opt no}使双引号在数据中保持不变。{opt default}会自动去除可以识别为绑定引号的双引号。{opt default}还会将两个相邻的双引号识别为一个双引号，因为某些软件以这种方式编码双引号。

{phang}
{cmd:delimiters("}{it:chars}{cmd:"}[{cmd:, collapse}|{cmd:asstring}]{cmd:)}允许您指定其他分隔字符。例如，如果文件中的值由分号分隔，请指定{cmd:delimiters(";")}。默认情况下，{cmd:import delimited}将根据数据的第一行检查文件是否由制表符或逗号分隔。指定{cmd:delimiters("\t")}以使用制表符，或指定{cmd:delimiters("whitespace")}以使用空格作为分隔符。

{phang2}
{opt collapse}强制{cmd:import delimited}将多个连续的分隔符视为一个分隔符。

{phang2}
{opt asstring}强制{cmd:import delimited}将{it:chars}视为一个分隔符。默认情况下，{it:chars}中的每个字符都被视为单独的分隔符。

{marker locale}{...}
{phang}
{cmd:parselocale(}{it:locale}{cmd:)}指定用于解析导入文本文件中的数字的区域设置。该选项调用替代解析方法，可能导致与不指定此选项时略有不同的行为。默认是在解析数字时不使用区域设置，行为是将{cmd:.}视为小数分隔符。可用区域设置的列表可以在{browse "https://www.oracle.com/technetwork/java/javase/java8locales-2095355.html"}中找到。

{phang}
{cmd:decimalseparator(}{it:character}{cmd:)}指定用于解析数字时的小数分隔符字符。该选项隐式地调用了选项{cmd:parselocale()}，并使用您系统的默认区域设置。可以指定{cmd:parselocale(}{it:locale}{cmd:)}来覆盖默认系统区域设置。

{phang}
{cmd:groupseparator(}{it:character}{cmd:)}指定用于解析数字时的分组分隔符字符。该选项隐式地调用了选项{cmd:parselocale()}，并使用您系统的默认区域设置。可以指定{cmd:parselocale(}{it:locale}{cmd:)}来覆盖默认系统区域设置。

{phang}
{cmd:maxquotedrows(}{it:#} | {cmd:unlimited)}指定在解析要导入的文件时，允许在引用字符串内的行数。默认是{cmd:maxquotedrows(20)}。如果此选项在未指定{cmd:bindquote(strict)}的情况下使用，那么{cmd:maxquotedrows()}将被忽略。

{pmore}
选项{cmd:maxquotedrows(0)}是{cmd:maxquotedrows(unlimited)}的同义词。

{phang}
{cmd:numericcols(}{it:{help numlist_zh}}|{cmd:_all)}强制{it:numlist}中的列数的数据类型为数字。指定{opt _all}会将所有数据导入为数字。

{phang}
{cmd:stringcols(}{it:{help numlist_zh}}|{cmd:_all)}强制{it:numlist}中的列数的数据类型为字符串。指定{opt _all}会将所有数据导入为字符串。

{phang}
{opt clear}指定可以替换内存中的数据，即使当前的数据未保存到磁盘上。


{marker export_options}{...}
{title:导出定界选项}

{phang}
{cmd:delimiter("}{it:char}{cmd:"}|{cmd:tab}{cmd:)}允许您指定其他分隔字符。例如，如果您希望文件中的值由分号分隔，请指定{cmd:delimiter(";")}。默认分隔符是逗号。

{pmore}
{cmd:delimiter(tab)}指定使用制表符作为分隔符。

{phang}{opt novarnames}指定文件的第一行不写入变量名称；文件中只包含数据值。

{phang}
{opt nolabel}指定将标记变量的数值写入文件，而不是与每个值关联的标签。

{phang}
{opt datafmt}指定所有变量在导出时使用其显示格式。例如，格式为{cmd:%4.2f}的数字1000将导出为{cmd:1000.00}，而不是{cmd:1000}。默认是在导出时使用未格式化的原始值。

{phang}
{opt quote}指定字符串变量始终用双引号括起。默认情况下，只有包含空格或分隔符的字符串才会用双引号括起。

{phang}
{opt replace}指定如果{it:{help filename_zh}}已存在，则将被替换。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}
{cmd:. copy https://www.stata.com/examples/auto.csv auto.csv}

{pstd}
将此文件读入Stata{p_end}
{phang2}{cmd:. import delimited auto}

{pstd}
查看我们刚刚加载的内容{p_end}
{phang2}{cmd:. list}

{pstd}
将{cmd:auto.csv}的第2到第5行读入Stata，然后列出数据{p_end}
{phang2}{cmd:. clear}{p_end}
{phang2}{cmd:. import delimited auto, rowrange(3:6)}{p_end}
{phang2}{cmd:. list}

{pstd}
将{cmd:auto.csv}的前3列和最后4行读入Stata并列出数据{p_end}
{phang2}{cmd:. clear}{p_end}
{phang2}{cmd:. import delimited auto, colrange(:3) rowrange(8)}{p_end}
{phang2}{cmd:. list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse auto, clear}

{pstd}将当前内存中的数据保存到{cmd:myauto.csv}{p_end}
{phang2}{cmd:. export delimited myauto}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse auto}

{pstd}同上，但仅保存数据的子集；注意使用{cmd:replace}选项，因为{cmd:myauto.csv}已经存在{p_end}
{phang2}{cmd:. export delimited make mpg rep78 foreign in 1/10 using myauto,}
      {cmd:replace}{p_end}

    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=60RBNsqzL6I&feature=youtu.be":导入定界数据}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <import_delimited.sthlp>}