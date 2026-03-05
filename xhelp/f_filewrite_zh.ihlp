
{help f_filewrite:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:filewrite(}{it:f}{cmd:,}{it:s}[{cmd:,}{it:r}]{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}将由 {it:s} 指定的字符串写入由 {it:f} 指定的文件，并返回结果文件中的字节数
{p_end}

{p2col:}如果可选参数 {it:r} 被指定为 1，且文件 {it:f} 已存在，则将会被替换。
如果 {it:r} 被指定为 2，则在文件 {it:f} 已存在的情况下将会追加内容。
任何其他值的 {it:r} 都被视为未指定 {it:r}；即，只有当 {it:f} 不存在时才会写入文件。
{p_end}

{p2col:}当文件 {it:f} 被新创建或被替换时，{cmd:filewrite()} 返回的值是写入文件的字节数，
即 {cmd:strlen(}{it:s}{cmd:)}。如果 {it:r} 被指定为 2，因此 {cmd:filewrite()} 是在向现有文件追加内容，
返回的值是结果文件中的字节总数；也就是说，返回值是 {cmd:filewrite()} 被调用前文件中字节数和新写入字节数的总和，即 {cmd:strlen(}{it:s}{cmd:)}。
{p_end}

{p2col:}如果文件已存在并且 {it:r} 没有被指定为 1 或 2，或者在写入文件时发生错误，则返回负数 ({it:#})，
其中 {cmd:abs(}{it:#}{cmd:)} 是标准的 Stata 错误返回代码。
{p_end}
{p2col: 域 {it:f}:}文件名{p_end}
{p2col: 域 {it:s}:}字符串{p_end}
{p2col: 域 {it:r}:}整数 1 或 2{p_end}
{p2col: 范围:}整数{p_end}
{p2colreset}{...}