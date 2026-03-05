
{help f_ustrcompareex:English Version}
{hline}
{* *! version 1.0.2  13mar2015}{...}
    {cmd:ustrcompareex(}{it:s1}{cmd:,}{it:s2}{cmd:,}{it:loc}{cmd:,}{it:st}{cmd:,}{it:case}{cmd:,}{it:cslv}{cmd:,}{it:norm}{cmd:,}{it:num}{cmd:,}{it:alt}{cmd:,}{it:fr}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}比较两个Unicode字符串{p_end}

{p2col:}该函数返回 {cmd:-1}、{cmd:1} 或 {cmd:0}，分别表示 {it:s1} 小于、大于或等于 {it:s2}。如果出现错误，函数可能返回其他负数。比较结果取决于区域设置。例如，在瑞典语中 z < ö，而在德语中则是 ö < z。如果没有指定 {it:loc}，将使用 {mansection U 12.4.2.4LocalesinUnicode:默认区域设置} 。{p_end}

{p2col:}{it:st} 控制比较的强度。可选值为 {bf:1}（主要）、{bf:2}（次要）、{bf:3}（三级）、{bf:4}（四级）或 {bf:5}（完全相同）。{bf:-1} 表示使用该区域的默认值。任何其他数字将视为三级。主要差异代表基本字母的差异；例如，字母 "a" 和字母 "b" 具有主要差异。次要差异表示相同基本字母上的重音符号差异；例如，字母 "a" 和 "ä" 具有次要差异。三级差异表示相同基本字母的大小写差异；例如，字母 "a" 和 "A" 具有三级差异。四级强度有助于区分 JIS 4061 排序标准中的片假名和平假名。完全相同的强度本质上是字符串的字符点顺序，因此很少用到。{p_end}

{p2col 5 22 26 2:}{cmd:ustrcompareex("café","cafe","fr", 1, -1, -1, -1, -1, -1, -1)} = {cmd:0}{p_end}
{p2col 5 22 26 2:}{cmd:ustrcompareex("café","cafe","fr", 2, -1, -1, -1, -1, -1, -1)} = {cmd:1}{p_end}
{p2col 5 22 26 2:}{cmd:ustrcompareex("Café","café","fr", 3, -1, -1, -1, -1, -1, -1)} = {cmd:1}{p_end}

{p2col:}{it:case} 控制大写和小写字母的顺序。可选值为 {bf:0}（使用三级强度中指定的顺序）、{bf:1}（大写在前）或 {bf:2}（小写在前）。{bf:-1} 表示使用该区域的默认值。任何其他值将视为 {bf:0}。{p_end}

{p2col 5 22 26 2:}{cmd:ustrcompareex("Café","café","fr", -1, 1, -1, -1, -1, -1, -1)} = {cmd:-1}{p_end}
{p2col 5 22 26 2:}{cmd:ustrcompareex("Café","café","fr", -1, 2, -1, -1, -1, -1, -1)} = {cmd:1}{p_end}

{p2col:}{it:cslv} 控制是否在次要级别和三级之间生成一个额外的大小写级别。可能的值为 {bf:0}（关闭）或 {bf:1}（打开）。{bf:-1} 意味着使用区域的默认值。任何其他值都视为 {bf:0}。将此设置为“打开”与强度设置为主要，可实现忽略重音符号差异但保留大小写差异的效果。如果该设置为“打开”，结果也会受到 {it:case} 设置的影响。{p_end}

{p2col 5 22 26 2:}{cmd:ustrcompareex("café","Cafe","fr", 1, -1, 1, -1, -1, -1, -1)}={cmd:-1}{p_end}
{p2col 5 22 26 2:}{cmd:ustrcompareex("café","Cafe","fr", 1, 1, 1, -1, -1, -1, -1)}={cmd:1}{p_end}

{p2col:}{it:norm} 控制是否执行标准化检查和标准化。可能的值为 {bf:0}（关闭）或 {bf:1}（打开）。{bf:-1} 表示使用区域的默认值。任何其他值都视为 {bf:0}。大多数语言在比较时不需要标准化。某些语言（如阿拉伯语、古希腊语或希伯来语）需要标准化，因为它们使用多个组合字符。{p_end}

{p2col:}{it:num} 控制连续数字子串的排序方式。可选值为 {bf:0}（关闭）或 {bf:1}（打开）。{bf:-1} 表示使用区域的默认值。任何其他值都视为 {bf:0}。如果设置为“打开”，则由数字组成的子串将基于数值进行排序。例如，“100”位于“20”之后，而不是之前。注意，数字子串限制为254个数字，并且不支持正负号、小数或指数。{p_end}

{p2col 5 22 26 2:}{cmd:ustrcompareex("100", "20","en", -1, -1, -1, -1, 0, -1, -1)}={cmd:-1}{p_end}
{p2col 5 22 26 2:}{cmd:ustrcompareex("100", "20","en", -1, -1, -1, -1, 1, -1, -1)}={cmd:1}{p_end}

{p2col:}{it:alt} 控制空格和标点符号的处理方式。可选值为 {bf:0}（使用主要强度）或 {bf:1}（替代处理）。任何其他值都视为 {bf:0}。如果设置为 {bf:1}（替代处理），则“onsite”、“on-site”和“on site”被视为相等。{p_end}

{p2col 5 22 26 2:}{cmd:ustrcompareex("onsite", "on-site","en", -1, -1, -1, -1, -1, 1, -1)}={cmd:0}{p_end}
{p2col 5 22 26 2:}{cmd:ustrcompareex("onsite", "on site","en", -1, -1, -1, -1, -1, 1, -1)}={cmd:0}{p_end}
{p2col 5 22 26 2:}{cmd:ustrcompareex("onsite", "on-site","en", -1, -1, -1, -1, -1, 0, -1)}={cmd:1}{p_end}

{p2col:}{it:fr} 控制次要强度的方向。可选值为 {bf:0}（关闭）或 {bf:1}（打开）。{bf:-1} 表示使用区域的默认值。所有其他值都视为“关闭”。如果设置为“打开”，重音字母将按相反顺序排序。注意，对于加拿法语（区域设置 {bf:fr_CA}），默认设置为“打开”。{p_end}

{p2col 5 22 26 2:}{cmd:ustrcompareex("coté", "côte","fr_CA",-1,-1,-1,-1,-1,-1,0)} = {cmd:-1}{p_end}
{p2col 5 22 26 2:}{cmd:ustrcompareex("coté", "côte","fr_CA",-1,-1,-1,-1,-1,-1,1)} = {cmd:1}{p_end}
{p2col 5 22 26 2:}{cmd:ustrcompareex("coté", "côte","fr_CA",-1,-1,-1,-1,-1,-1,-1)} = {cmd:1}{p_end}
{p2col 5 22 26 2:}{cmd:ustrcompareex("coté", "côte","fr",-1,-1,-1,-1,-1,-1,-1)} = {cmd:1}{p_end}
{p2col: 域 {it:s1}:}Unicode 字符串{p_end}
{p2col: 域 {it:s2}:}Unicode 字符串{p_end}
{p2col: 域 {it:loc}:}Unicode 字符串{p_end}
{p2col: 域 {it:st}:}整数{p_end}
{p2col: 域 {it:case}:}整数{p_end}
{p2col: 域 {it:cslv}:}整数{p_end}
{p2col: 域 {it:norm}:}整数{p_end}
{p2col: 域 {it:num}:}整数{p_end}
{p2col: 域 {it:alt}:}整数{p_end}
{p2col: 域 {it:fr}:}整数{p_end}
{p2col: 范围:}整数{p_end}
{p2colreset}{...}