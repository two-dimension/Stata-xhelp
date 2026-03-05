
{help f_filereaderror:English Version}
{hline}
{* *! version 1.1.2  25mar2015}{...}
    {cmd:filereaderror(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{cmd:0} 或正整数，该值的解释为返回代码{p_end}

{p2col:}用法如下

{p 24 26 2}{cmd:. generate strL} {it:s} {cmd:= fileread(}{it:filename}{cmd:) if fileexists(}{it:filename}{cmd:)}{p_end}
{p 24 26 2}{cmd:. assert filereaderror(}{it:s}{cmd:)==0}

{p2col:}或者这样

{p 24 26 2}{cmd:. generate strL} {it:s} {cmd:= fileread(}{it:filename}{cmd:) if fileexists(}{it:filename}{cmd:)}{p_end}
{p 24 26 2}{cmd:. generate} {it:rc} {cmd:= filereaderror(}{it:s}{cmd:)}{p_end}

{p2col:}也就是说，{opt filereaderror(s)} 用于检查 {opt fileread(filename)} 返回的结果，以确定是否发生了 I/O 错误。

{p2col:}在示例中，我们只对存在的文件使用 {cmd:fileread()}。这并不是必要的。如果文件不存在，{cmd:filereaderror()} 会将其检测为错误。我们展示该示例的方式是不希望将缺失文件视为错误。如果我们希望将缺失文件视为错误，我们可以这样编码

{p 24 26 2}{cmd:. generate strL} {it:s} {cmd:= fileread(}{it:filename}{cmd:)}{p_end}
{p 24 26 2}{cmd:. assert filereaderror(}{it:s}{cmd:)==0}

{p2col:}或者

{p 24 26 2}{cmd:. generate strL} {it:s} {cmd:= fileread(}{it:filename}{cmd:)}{p_end}
{p 24 26 2}{cmd:. generate} {it:rc} {cmd:= filereaderror(}{it:s}{cmd:)}{p_end}
{p2col: 域:}字符串{p_end}
{p2col: 范围:}整数{p_end}
{p2colreset}{...}