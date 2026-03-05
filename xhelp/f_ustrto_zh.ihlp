
{help f_ustrto:English Version}
{hline}
{* *! version 1.0.3  17mar2015}{...}
    {cmd:ustrto(}{it:s}{cmd:,}{it:enc}{cmd:,}{it:mode}{cmd:)} 
{p2colset 8 22 22 2}{...}
{p2col: 描述:}将 UTF-8 编码的 Unicode 字符串 {it:s} 转换为编码 {it:enc} 的字符串{p_end}

{p2col:}有关可用编码的详细信息，请参见 {manhelp unicode_encoding D:unicode encoding}。 {it:s} 中的任何无效序列都将被 Unicode 替换字符 {bf:\ufffd} 替换。 {it:mode} 控制如何处理编码 {it:enc} 中不支持的 Unicode 字符。 可能的值是 {cmd:1}，这会将任何不支持的字符替换为 {it:enc} 的替换字符串（{cmd:ascii} 和 {cmd:latin1} 的替换字符为 {cmd:char(26)}）； {cmd:2}，跳过任何不支持的字符； {cmd:3}，在第一个不支持的字符处停止并返回空字符串；或者 {cmd:4}，将任何不支持的字符替换为转义的十六进制数字序列 {bf:\uhhhh} 或 {bf:\Uhhhhhhhh}。 十六进制数字序列包含 4 或 8 个十六进制数字，具体取决于 Unicode 字符的码点值是否小于或大于 {bf:\uffff}。 其他值将被视为 {cmd:1}。{p_end}

{p2col:}{cmd:ustrto("café", "ascii", 1)} = {cmd:"caf"+char(26)}{break}
	{cmd:ustrto("café", "ascii", 2)} = {cmd:"caf"}{break}
	{cmd:ustrto("café", "ascii", 3)} = {cmd:""}{break}
	{cmd:ustrto("café", "ascii", 4)} = {cmd:"caf\u00E9"}{p_end}

{p2col:}{cmd:ustrto()} 可用于去除基字母的变音符号。 首先，使用 {cmd:ustrnormalize()} 将 Unicode 字符串标准化为 {cmd:NFD} 形式，然后以值 {cmd:2} 调用 {cmd:ustrto()} 跳过所有非 ASCII 字符。{p_end}

{p2col:}另请参见 {helpb ustrfrom()}.{p_end}

{p2col 5 22 26 2:}{cmd:ustrto(ustrnormalize("café", "nfd"), "ascii", 2)} = {cmd:"cafe"}{p_end}
{p2col: 域 {it:s}:}Unicode 字符串{p_end}
{p2col: 域 {it:enc}:}Unicode 字符串{p_end}
{p2col: 域 {it:mode}:}整数{p_end}
{p2col: 范围:}编码为 {it:enc} 的字符串{p_end}
{p2colreset}{...}