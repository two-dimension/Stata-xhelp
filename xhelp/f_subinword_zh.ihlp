
{help f_subinword:English Version}
{hline}
{* *! version 1.1.3  12mar2015}{...}
    {cmd:subinword(}{it:s1}{cmd:,}{it:s2}{cmd:,}{it:s3}{cmd:,}{it:n}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{it:s1}，其中 {it:s1} 中的前 {it:n} 次
        {it:s2} 作为单词已被替换为 {it:s3}{p_end}

{p2col:}单词被定义为以空格分隔的标记。 {it:s1} 开头或结尾的标记被视为空格分隔。这与 Unicode 单词不同，后者是基于一组 
{browse "http://www.unicode.org/reports/tr29/#Word_Boundaries":word-boundary rules} 或几种语言（中文、日文和泰文）的字典的语言单位。
如果 {it:n} 为 {it:missing}，则替换所有出现的地方。{p_end}

{p2col:}另见 {helpb regexm()}、{cmd:regexr()} 和 {cmd:regexs()}.{p_end}

{p2col 5 22 26 2:}{cmd:subinword("this is the day","is","X",1)} = 
                          {cmd:"this X the day"}{p_end}
{p2col 5 22 26 2:}{cmd:subinword("this is the hour","is","X",.)} =
		          {cmd:"this X the hour"}{p_end}
{p2col 5 22 26 2:}{cmd:subinword("this is this","th","X",.)} =
		          {cmd:"this is this"}{p_end}
{p2col: 域 {it:s1}:}字符串（替换为的内容）{p_end}
{p2col: 域 {it:s2}:}字符串（替换自的内容）{p_end}
{p2col: 域 {it:s3}:}字符串（替换为的内容）{p_end}
{p2col: 域 {it:n}:}大于 0 或 {it:missing} 的整数{p_end}
{p2col: 范围:}字符串{p_end}
{p2colreset}{...}