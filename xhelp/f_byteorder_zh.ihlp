
{help f_byteorder:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:byteorder()}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{cmd:1} 如果
	您的计算机使用 hilo 字节序存储数字，则返回 {cmd:2} 如果您的计算机使用 lohi 字节序存储数字
	{p_end}

{p2col:}考虑将数字 1 表示为 2 字节整数。在某些计算机（称为 hilo）上，它被表示为 {bind:"00 01"}；而在其他计算机（称为 lohi）上，它被表示为 {bind:"01 00"}（最低有效字节优先）。对于 4 字节整数、4 字节浮点数和 8 字节浮点数也存在类似的问题。Stata 会自动处理 Stata 创建的文件的字节序差异。用户无需担心此问题。生成自定义二进制文件的程序员可以使用 {cmd:byteorder()} 来确定本机字节序；请参见 {manhelp file P}。{p_end}
{p2col: 范围:}1 和 2{p_end}
{p2colreset}{...}