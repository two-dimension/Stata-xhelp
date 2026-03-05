
{help f_ustrunescape:English Version}
{hline}
{* *! version 1.0.1  10mar2015}{...}
    {cmd:ustrunescape(}{it:s}{cmd:)} 
{p2colset 8 22 22 2}{...}
{p2col: 描述:}与转义序列 {it:s} 对应的 Unicode 字符串 {p_end}
	
{p2col:}以下转义序列被识别: 4位十六进制形式 {bf:\uhhhh}; 8位十六进制形式 {bf:\Uhhhhhhhh}; 1-2位十六进制形式 {bf:\xhh}; 和 1-3位八进制形式 {bf:\ooo}，其中 {bf:h} 是 {bf:[0-9A-Fa-f]} 而 {bf:o} 是 {bf:[0-7]}。标准 ANSI C 转义 {bf:\a}, {bf:\b}, {bf:\t}, {bf:\n}, {bf:\v}, {bf:\f}, {bf:\r}, {bf:\e}, {bf:\"}, {bf:\'}, {bf:\?}, {bf:\\} 也被识别。 如果转义序列格式不正确，函数将返回空字符串。 请注意，8位十六进制形式 {bf:\Uhhhhhhhh} 以大写字母 "U" 开头。{p_end}

{p2col:}另请参见 {helpb ustrtohex()}.{p_end}

{p2col 5 22 26 2:}{cmd:ustrunescape("\u043d\u0443\u043b\u044e")} = {cmd:"нулю"}{p_end}
{p2col: 域 {it:s}:}转义十六进制值的字符串 {p_end}
{p2col: 范围:}Unicode 字符串 {p_end}
{p2colreset}{...}