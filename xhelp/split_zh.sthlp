{smcl}
{* *! version 1.2.14  19oct2017}{...}
{viewerdialog split "dialog split"}{...}
{vieweralsosee "[D] split" "mansection D split"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] destring" "help destring_zh"}{...}
{vieweralsosee "[D] egen" "help egen_zh"}{...}
{vieweralsosee "[D] rename" "help rename_zh"}{...}
{vieweralsosee "[D] separate" "help separate_zh"}{...}
{vieweralsosee "[FN] String functions" "help string functions"}{...}
{viewerjumpto "Syntax" "split_zh##syntax"}{...}
{viewerjumpto "Menu" "split_zh##menu"}{...}
{viewerjumpto "Description" "split_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "split_zh##linkspdf"}{...}
{viewerjumpto "Options" "split_zh##options"}{...}
{viewerjumpto "Examples" "split_zh##examples"}{...}
{viewerjumpto "Stored results" "split_zh##results"}
{help split:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] split} {hline 2}}将字符串变量分割为多个部分{p_end}
{p2col:}({mansection D split:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 10 2}
{cmd:split}
{it:strvar}
{ifin}
[{cmd:,}
{it:options}]

{synoptset 24 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{synopt :{opt g:enerate(stub)}}以 {it:stub} 开头的新变量名称；默认值为 {it:strvar}{p_end}
{synopt :{opt p:arse(parse_strings)}}在指定的字符串上解析；默认值为使用空格进行解析{p_end}
{synopt :{opt l:imit(#)}}最多创建 {it:#} 个新变量{p_end}
{synopt :{opt not:rim}}不删除原始变量的前导或尾随空格{p_end}

{syntab :去字符串}
{synopt :{opt destring}}对新字符串变量应用 {opt destring}，在可能的情况下用数值变量替换初始字符串变量{p_end}
{synopt :{cmdab:i:gnore("}{it:chars}{cmd:")}}去除指定的非数字字符{p_end}
{synopt :{opt force}}将非数字字符串转换为缺失值{p_end}
{synopt :{opt float}}生成类型为 {opt float} 的数值变量{p_end}
{synopt :{opt percent}}将百分比变量转换为分数形式{p_end}
{synoptline}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 其他变量转换命令}
      {bf:> 将字符串变量分割为多个部分}


{marker description}{...}
{title:描述}

{pstd}
{opt split} 将字符串变量 {it:strvar} 的内容分割为一个或多个部分，使用一个或多个 {it:parse_strings}（默认情况下为空格），从而生成新的字符串变量。因此 {opt split} 对于分离字符串变量中的“单词”或其他部分非常有用。{it:strvar} 本身不会被修改。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D splitQuickstart:快速开始}

        {mansection D splitRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt generate(stub)} 指定新变量名称的开头字符，因此会生成新变量 {it:stub}{cmd:1}、{it:stub}{cmd:2} 等。默认值是 {it:strvar}。

{phang}
{opt parse(parse_strings)} 指定使用一个或多个 {it:parse_strings} 进行解析，而不是使用空格。最常见的是，会指定一个标点字符的字符串。例如，如果指定 {cmd:parse(,)}，则 {cmd:{bind:"1,2,3"}} 被分割为 {cmd:"1"}、{cmd:"2"} 和 {cmd:"3"}。

{pmore}
您还可以指定 1) 两个或更多的字符串作为“单词”的备用分隔符和 2) 由两个或更多字符组成的字符串。备用字符串应由空格分隔。包括空格的字符串应被 {cmd:{bind:" "}} 绑定。因此，如果指定 {cmd:{bind:parse(, " ")}}，则 {cmd:{bind:"1,2 3"}} 也被分割为 {cmd:"1"}、{cmd:"2"} 和 {cmd:"3"}。请特别注意 {cmd:{bind:parse(a b)}} 与 {cmd:parse(ab)} 的区别：前者将 {cmd:a} 和 {cmd:b} 都作为可接受的分隔符，而后者仅接受字符串 {cmd:ab}。

{phang}
{opt limit(#)} 指定要创建的新变量数量上限。因此 {cmd:limit(2)} 指定最多创建两个新变量。

{phang}
{opt notrim} 指定在解析之前不删除原始字符串变量的前导和尾随空格。{opt notrim} 与基于空格的解析不兼容，因为后者意味着应丢弃字符串中的空格。您可以选择指定一个解析字符，或者默认允许 {opt trim}。

{dlgtab:去字符串}

{phang}
{opt destring} 对新字符串变量应用 {cmd:destring}，在可能的情况下用数值变量替换最初作为字符串创建的变量。请参见 {manhelp destring D}。

{phang}
{opt ignore()}, {opt force}, {opt float}, {opt percent}; 请参见 {manhelp destring D}。


{marker examples}{...}
{title:示例}

{phang}
1. 假设输入以某种方式错误地读取为一个字符串变量，比如在数据编辑器中复制和粘贴，但数据是用空格分隔的：

{p 12 16 2}
{cmd:. split var1, destring}

{phang}
2. 在 {cmd:"@"} 处分割电子邮件地址：

{p 12 16 2}
{cmd:. split address, p(@)}

{phang}
3. 假设一个字符串变量包含应拆分为原告和被告的法律案件名称。分隔符可以是 {cmd:{bind:" V "}}、{cmd:{bind:" V. "}}、{cmd:{bind:" VS "}} 和 {cmd:{bind:" VS. "}}。特别注意我们详细说明分隔符时的前导和尾随空格：第一个分隔符是 {cmd:{bind:" V "}}，而不是 {cmd:"V"}，后者会错误地将 {cmd:"GOLIATH V DAVID"} 拆分为 {cmd:{bind:"GOLIATH "}}、{cmd:{bind:" DA"} } 和 {cmd:"ID"}。备用分隔符作为 {cmd:parse()} 的参数提供：

{p 12 16 2}
{cmd:. split case, p(" V " " V. " " VS " " VS. ")}

{pmore}问题的迹象是创建的变量数量超过两个，及任何变量包含空值，因此检查：

{p 12 16 2}
{cmd:. list case if case2 == ""}

{phang}
4. 假设一个字符串变量包含由制表符分隔的字段。例如，{helpb import delimited} 保持制表符不变。知道制表符是 {cmd:char(9)}，我们可以输入

{p 12 16 2}
{cmd:. split data, p(`=char(9)') destring}{p_end}

{pmore}
{cmd:p(char(9))} 将不起作用。{cmd:parse()} 的参数被逐字理解，但可以强制对函数进行求值，这作为宏替换的一部分。

{phang}
5. 假设一个字符串变量包含在括号内的子字符串，例如 {cmd:(1 2 3) (4 5 6)}。这里我们可以在右括号处分割，并且如果希望，可以在之后进行替换。例如，

{p 12 12 2}
{cmd:. split data, p(")")}{break}
{cmd:. foreach v in `r(varlist)' {c -(}}{break}
{space 8}{cmd:replace `v' = `v' + ")"}{break}
{cmd:. {c )-}}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse splitxmpl}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}基于空格将 {cmd:var1} 拆分为两个字符串变量{p_end}
{phang2}{cmd:. split var1}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

{pstd}删除新创建的变量 {cmd:var11} 和 {cmd:var12}{p_end}
{phang2}{cmd:. drop var11 var12}

{pstd}基于空格将 {cmd:var1} 拆分为两个变量，并将变量命名为 {cmd:geog1} 和 {cmd:geog2}{p_end}
{phang2}{cmd:. split var1, gen(geog)}

{pstd}列出结果{p_end}
{phang2}{cmd:. list var1 geog*}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse splitxmpl2, clear}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}使用逗号作为解析字符将 {cmd:var1} 拆分为两个变量，并将变量命名为 {cmd:geog1} 和 {cmd:geog2}{p_end}
{phang2}{cmd:. split var1, parse(,) gen(geog)}

{pstd}列出结果{p_end}
{phang2}{cmd:. list var1 geog*}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse splitxmpl3, clear}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}使用逗号-后跟空格和空格作为解析字符，将 {cmd:date} 拆分为变量，并使用 {cmd:ndate} 作为新变量名称的前缀{p_end}
{phang2}{cmd:. split date, parse(", "" ") gen(ndate)}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse splitxmpl4, clear}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}使用逗号作为解析字符将 {cmd:x} 拆分为变量，并尝试将新字符串变量替换为数值变量{p_end}
{phang2}{cmd:. split x, parse(,) destring}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}描述数据{p_end}
{phang2}{cmd:. describe}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:split} 在 {cmd:r()} 中存储以下信息：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(nvars)}}新创建的变量数量{p_end}
{synopt:{cmd:r(varlist)}}新创建变量的名称{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <split.sthlp>}