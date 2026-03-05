{smcl}
{* *! version 1.1.19  11may2018}{...}
{viewerdialog destring "dialog destring"}{...}
{viewerdialog tostring "dialog tostring"}{...}
{vieweralsosee "[D] destring" "mansection D destring"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] egen" "help egen_zh"}{...}
{vieweralsosee "[D] encode" "help encode_zh"}{...}
{vieweralsosee "[D] generate" "help generate_zh"}{...}
{vieweralsosee "[D] split" "help split_zh"}{...}
{vieweralsosee "[FN] String functions" "help string functions"}{...}
{viewerjumpto "Syntax" "destring_zh##syntax"}{...}
{viewerjumpto "Menu" "destring_zh##menu"}{...}
{viewerjumpto "Description" "destring_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "destring_zh##linkspdf"}{...}
{viewerjumpto "Options for destring" "destring_zh##options_destring"}{...}
{viewerjumpto "Options for tostring" "destring_zh##options_tostring"}{...}
{viewerjumpto "Examples" "destring_zh##examples"}{...}
{viewerjumpto "Video example" "destring_zh##video"}
{help destring:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[D] destring} {hline 2}}将字符串变量转换为数值变量，反之亦然{p_end}
{p2col:}({mansection D destring:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
将字符串变量转换为数值变量

{p 8 29 2}
{cmd:destring}
[{varlist}]
{cmd:,}
{c -(}{opth g:enerate(newvarlist)}{c |}{opt replace}{c )-}
[{it:{help destring##destring_options:destring_options}}]


{phang}
将数值变量转换为字符串变量

{p 8 27 2}
{cmd:tostring}
{varlist}
{cmd:,}
{c -(}{opth g:enerate(newvarlist)}{c |}{opt replace}{c )-}
[{it:{help destring##tostring_options:tostring_options}}]


{synoptset 32 tabbed}{...}
{marker destring_options}{...}
{synopthdr :destring_options}
{synoptline}
{p2coldent :* {opth g:enerate(newvarlist)}}为 {varlist} 中的每个变量生成 {it:newvar_1}, ..., {it:newvar_k}{p_end}
{p2coldent :* {opt replace}}用数值变量替换 {varlist} 中的字符串变量{p_end}
{synopt :{cmdab:i:gnore("}{it:chars}{cmd:"} [{cmd:,} {help destring##ignoreopts:{it:ignoreopts}}]{cmd:)}}移除指定的非数值字符，作为字符或字节，以及非法的 Unicode 字符{p_end}
{synopt :{opt force}}将非数值字符串转换为缺失值{p_end}
{synopt :{opt float}}将数值变量生成为类型 {opt float}{p_end}
{synopt :{opt percent}}将百分比变量转换为分数形式{p_end}
{synopt :{opt dpcomma}}将带有逗号的小数转换为点小数格式{p_end}
{synoptline}
{pstd}* 必须指定 {opt generate(newvarlist)} 或 {opt replace} 中的一个。
{p2colreset}{...}

{synoptset 32 tabbed}{...}
{marker tostring_options}{...}
{synopthdr :tostring_options}
{synoptline}
{p2coldent :* {opth g:enerate(newvarlist)}}为 {varlist} 中的每个变量生成 {it:newvar_1}, ..., {it:newvar_k}{p_end}
{p2coldent :* {opt replace}}用字符串变量替换 {it:varlist} 中的数值变量{p_end}
{synopt :{opt force}}强制转换，忽略信息丢失{p_end}
{synopt :{opth format(format)}}使用指定格式进行转换{p_end}
{synopt :{opt u:sedisplayformat}}使用显示格式进行转换{p_end}
{synoptline}
{pstd}* 必须指定 {opt generate(newvarlist)} 或 {opt replace} 中的一个。
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

    {title:destring}

{phang2}
{bf:数据 > 创建或更改数据 > 其他变量转换命令}
      {bf:> 将变量从字符串转换为数值}

    {title:tostring}

{phang2}
{bf:数据 > 创建或更改数据 > 其他变量转换命令}
      {bf:> 将变量从数值转换为字符串}


{marker description}{...}
{title:描述}

{pstd}
{cmd:destring} 将 {varlist} 中的变量从字符串转换为数值。
如果未指定 {it:varlist}，{cmd:destring} 将尝试将数据集中所有变量从字符串转换为数值。 在 {opt ignore()} 列表中的字符会被移除。 {it:varlist} 中已经是数值的变量不会被更改。 {cmd:destring} 将空字符串 "" 和 "." 都视为表示系统缺失值 ({cmd:.})，并将字符串 ".a", ".b", ..., ".z" 视为扩展缺失值 {cmd:.a}, {cmd:.b}, ..., {cmd:.z}; 参见 {manhelp missing U:12.2.1 缺失值}。 {cmd:destring} 还会忽略任何前导或尾随空格，因此，例如，" " 等同于 ""，而 ". " 等同于 "."。

{pstd}
{cmd:tostring} 将 {it:varlist} 中的变量从数值转换为字符串。 将使用尽可能紧凑的字符串格式。 {it:varlist} 中已经是字符串的变量不会被转换。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D destringQuickstart:快速入门}

        {mansection D destringRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options_destring}{...}
{title:destring 的选项}

{pstd}
必须指定 {opt generate()} 或 {opt replace}。 在这两个选项中，如果任何字符串变量包含未在 {opt ignore()} 中指定的非数值字符，则不会生成相应的变量，也不会替换该变量（除非指定了 {opt force}）。

{phang}
{opth generate(newvarlist)} 指定为 {varlist} 中的每个变量创建一个新变量。 {it:newvarlist} 必须包含与 {it:varlist} 中的变量数量相同的新变量名称。如果未指定 {it:varlist}，{opt destring} 将尝试为数据集中每个变量生成一个数值变量；此时，{it:newvarlist} 必须包含与数据集中变量数量相同的新变量名称。 任何变量标签或特征将被复制到新创建的变量中。

{phang}
{opt replace} 指定将 {varlist} 中的变量转换为数值变量。 如果未指定 {it:varlist}，{cmd:destring} 会尝试将所有变量从字符串转换为数值。 任何变量标签或特征都将被保留。

{marker ignoreopts}{...}
{phang}
{cmd:ignore("}{it:chars}{cmd:"} [{cmd:,} {it:ignoreopts}]{cmd:)} 指定移除非数值字符。 {it:ignoreopts} 可以是 {cmd:aschars}，{cmd:asbytes} 或 {cmd:illegal}。 默认行为是移除字符，等同于指定 {cmd:aschars}。 {cmd:asbytes} 指定移除忽略字符串中的所有字符所包含的字节，无论这些字节形成完整的 Unicode 字符与否。 {cmd:illegal} 指定移除所有非法 Unicode 字符，这通常用于移除高ASCII字符。 {cmd:illegal} 不能与 {cmd:asbytes} 同时指定。如果在忽略字符串移除后，任何字符串变量仍包含任何非数值字符或非法 Unicode 字符，则该变量不采取任何操作，除非还指定了 {opt force}。 请注意，对于 Stata 而言，逗号是非数值字符；参见下面的 {helpb destring##dpcomma:dpcomma} 选项。

{phang}
{opt force} 指定任何包含非数值字符的字符串值（除了用 {opt ignore()} 指定的字符）都应视为表示缺失的数值。

{phang}
{opt float} 指定任何新数值变量最初创建为 {opt float} 类型。 默认类型为 {opt double}; 参见 {manhelp data_types D:数据类型}。 {cmd:destring} 会自动尝试在创建后压缩每个新数值变量。

{phang}
{opt percent} 移除变量值中的任何百分号，并将该变量所有值除以100以转换为分数形式。 {opt percent} 本身意味着百分号 "{cmd:%}" 是 {opt ignore()} 的一个参数，但其反之不可。

{marker dpcomma}{...}
{phang}
{opt dpcomma} 指定带有逗号作为小数点的变量应转换为用句点作为小数点的变量。


{marker options_tostring}{...}
{title:tostring 的选项}

{pstd}
必须指定 {opt generate()} 或 {opt replace}。 如果将在转换任何数值变量为字符串时导致信息丢失，则不会生成变量，除非指定了 {opt force}。 有关更多详细信息，请参见下面的 {helpb destring##force:force}。

{phang}
{opth generate(newvarlist)} 指定为 {varlist} 中的每个变量创建一个新变量。 {it:newvarlist} 必须包含与 {it:varlist} 中的变量数量相同的新变量名称。 任何变量标签或特征将被复制到新创建的变量中。

{phang}
{opt replace} 指定将 {varlist} 中的变量转换为字符串变量。 任何变量标签或特征将被保留。

{marker force}{...}
{phang}
{opt force} 指定强制转换，即使这会导致信息丢失。 信息丢失有两种情况： 1) {cmd:real(string(}{varname}{cmd:, "}{it:{help format_zh}}{cmd:"))} 的结果不等于 {it:varname}；也就是说，该转换在没有信息丢失的情况下不可逆； 2) 指定了 {opt replace}，但一个变量有相关的值标签。 在情况1中，通常最好指定 {opt usedisplayformat} 或 {opt format()}。 在情况2中，值标签将在强制转换中被忽略。 {cmd:decode}（参见 {manhelp encode D}）是基于值标签生成字符串变量的标准方法。

{phang}
{opth format(format)} 指定使用数值格式作为 {opt string()} 函数的参数，该函数控制数值变量转换为字符串。 例如，格式 {opt %7.2f} 指定在转换为字符串之前将数字舍入到小数点后两位。 请参见 {manhelp string_functions FN:字符串函数} 和 {manhelp format D}。 {opt format()} 不能与 {opt usedisplayformat} 同时指定。

{phang}
{opt usedisplayformat} 指定使用当前显示格式进行每个变量的转换。 例如，当使用美国社会保障号码或具有某些 {cmd:%d} 或 {cmd:%t} 格式的日期时，这个选项可能会非常有用。 {opt usedisplayformat} 不能与 {opt format()} 同时指定。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse destring1}{p_end}
{phang2}{cmd:. describe}{p_end}
{phang2}{cmd:. list}

{pstd}从字符串变量生成数值变量{p_end}
{phang2}{cmd:. destring, generate(id2 num2 code2 total2 income2)}

{pstd}描述结果{p_end}
{phang2}{cmd:. describe}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse destring1, clear}{p_end}
{phang2}{cmd:. describe}{p_end}
{phang2}{cmd:. list}

{pstd}将字符串变量转换为数值变量，替换原始字符串变量{p_end}
{phang2}{cmd:. destring, replace}

{pstd}描述结果{p_end}
{phang2}{cmd:. describe}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse destring2, clear}{p_end}
{phang2}{cmd:. describe date}{p_end}
{phang2}{cmd:. list date}

{pstd}移除 {cmd:date} 中的空格并将其转换为数值变量，替换原始字符串变量{p_end}
{phang2}{cmd:. destring date, ignore(" ") replace}

{pstd}描述结果{p_end}
{phang2}{cmd:. describe}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse tostring, clear}{p_end}
{phang2}{cmd:. describe}{p_end}
{phang2}{cmd:. list}

{pstd}将数值变量 {cmd:year} 和 {cmd:day} 转换为字符串变量，替换原始字符串变量{p_end}
{phang2}{cmd:. tostring year day, replace}

{pstd}描述结果{p_end}
{phang2}{cmd:. describe}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}{p_end}
    {hline}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=Js_i3wI2-jY":如何将字符串变量转换为数值变量}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <destring.sthlp>}