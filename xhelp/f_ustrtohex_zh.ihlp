
{help f_ustrtohex:English Version}
{hline}
{* *! version 1.0.1  10mar2015}{...}
    {cmd:ustrtohex(}{it:s}[{cmd:,}{it:n}]{cmd:)} 
{p2colset 8 22 22 2}{...}
{p2col: 描述:}转义十六进制数字字符串，来自字符串 {it:s}，最多 200 个 Unicode 字符{p_end}

{p2col:}转义十六进制数字字符串的形式为
	{bf:\uhhhh}，适用于小于 {bf:\uffff} 的码点，或
	{bf:\Uhhhhhhhh}，适用于大于 {bf:\uffff} 的码点。
	如果指定了 {it:n} 且大于 0，函数将从字符串 {it:s} 的第 {it:n} 个 Unicode 字符开始。
	任何无效的 UTF-8 序列将被替换为 Unicode 替换字符 {bf:\ufffd}。
	请注意，空终止符 {cmd:char(0)} 是一个有效的 Unicode 字符。
	如果 {it:s} 不包含任何无效的 UTF-8 序列，则可以在结果上应用函数 {help f_ustrunescape_zh:ustrunescape()} 来恢复原始的 Unicode 字符串 {it:s}。{p_end}

{p2col:}另请参见 {helpb ustrunescape()}.{p_end}

{p2col:}{cmd:ustrtohex("нулю")} = {cmd:"\u043d\u0443\u043b\u044e"}{break}
	{cmd:ustrtohex("нулю", 2)} = {cmd:"\u0443\u043b\u044e"}{break}
	{cmd:ustrtohex("i"+char(200)+char(0)+"s")} = {cmd:"\u0069\ufffd\u0000\u0073"}{p_end}
{p2col: 领域 {it:s}:}Unicode 字符串{p_end}
{p2col: 领域 {it:n}:}整数 >= 1{p_end}
{p2col: 范围:}字符串{p_end}
{p2colreset}{...}