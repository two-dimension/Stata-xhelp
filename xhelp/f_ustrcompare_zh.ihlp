
{help f_ustrcompare:English Version}
{hline}
{* *! version 1.0.3  20mar2015}{...}
    {cmd:ustrcompare(}{it:s1}{cmd:,}{it:s2}[{cmd:,}{it:loc}]{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}比较两个 Unicode 字符串{p_end}

{p2col:}该函数返回 {cmd:-1}、 {cmd:1} 或 {cmd:0} ，分别表示 {it:s1} 小于、 大于或等于 {it:s2}。 如果发生错误，函数可能返回其他负数，而不仅仅是 -1。 比较结果依赖于地区设置。 例如，在瑞典语中， z < ö ，而在德语中， ö < z。 如果未指定 {it:loc} ，则使用
	{mansection U 12.4.2.4LocalesinUnicode:默认地区设置}。 比较是对重音符号和大小写敏感的。 如果需要不同的行为，例如不区分大小写的比较，则应使用扩展比较函数 {cmd:ustrcompareex()}。
	{mansection U 12.4.2.4LocalesinUnicode:Unicode 字符串比较} 是以语言敏感的方式比较 Unicode 字符串。 另一方面， {help sort_zh} 命令是按字符代码点（按二进制顺序）比较字符串的。 例如，大写的 "Z"（代码点值 90）在代码点顺序中排在小写的 "a"（代码点值 97）之前，但在任何英语词典中都排在 "a" 之后。{p_end}

{p2col:}{cmd:ustrcompare("z", "ö", "sv")} = {cmd:-1}{break}
	{cmd:ustrcompare("z", "ö", "de")} = {cmd: 1}{p_end}
{p2col: 域 {it:s1}:}Unicode 字符串{p_end}
{p2col: 域 {it:s2}:}Unicode 字符串{p_end}
{p2col: 域 {it:loc}:}Unicode 字符串{p_end}
{p2col: 范围：}整数{p_end}
{p2colreset}{...}