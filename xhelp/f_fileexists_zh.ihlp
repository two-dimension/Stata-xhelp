
{help f_fileexists:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:fileexists(}{it:f}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{cmd:1} 如果由 {it:f} 指定的文件存在；
	否则，{cmd:0}{p_end}

{p2col:}如果文件存在但不可读，{cmd:fileexists()}
	仍然会返回 {cmd:1}，因为它确实存在。如果 "文件" 是一个
	目录，{cmd:fileexists()} 将返回 {cmd:0}.{p_end}
{p2col: 领域:}文件名{p_end}
{p2col: 范围:}0 和 1{p_end}
{p2colreset}{...}