
{help f_ustrregexm:English Version}
{hline}
{* *! version 1.0.1  10mar2015}{...}
    {cmd:ustrregexm(}{it:s}{cmd:,}{it:re}[{cmd:,}{it:noc}]{cmd:)} 
{p2colset 8 22 22 2}{...}
{p2col: 描述：}进行正则表达式匹配，如果 Unicode 字符串 {it:s} 满足正则表达式 {it:re} 则返回 {cmd:1}，否则返回 {cmd:0}{p_end}

{p2col:}如果指定了 {it:noc} 且不为 0，则执行不区分大小写的匹配。如果发生错误，该函数可能返回负整数。{p_end}

{p2col:}{cmd:ustrregexm("12345", "([0-9]){5}")} = {cmd:1}{break}
        {cmd:ustrregexm("de TRÈS près", "rès")} = {cmd:1}{break}
        {cmd:ustrregexm("de TRÈS près", "Rès")} = {cmd:0}{break}
        {cmd:ustrregexm("de TRÈS près", "Rès", 1)} = {cmd:1}{p_end}
{p2col: 域 {it:s}:}Unicode 字符串{p_end}
{p2col: 域 {it:re}:}Unicode 正则表达式{p_end}
{p2col: 域 {it:noc}:}整数{p_end}
{p2col: 范围：}整数{p_end}
{p2colreset}{...}

    {cmd:ustrregexrf(}{it:s1}{cmd:,}{it:re}{cmd:,}{it:s2}[{cmd:,}{it:noc}]{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}将 Unicode 字符串 {it:s1} 中与 {it:re} 匹配的第一个子串替换为 {it:s2} 并返回结果字符串{p_end}
	
{p2col:}如果指定了 {it:noc} 且不为 0，则执行不区分大小写的匹配。如果发生错误，该函数可能返回空字符串。{p_end}

{p2col:}{cmd:ustrregexrf("très près", "rès", "X")} = {cmd:"tX près"}{break}
        {cmd:ustrregexrf("TRÈS près", "Rès", "X")} = {cmd:"TRÈS près"}{break}
        {cmd:ustrregexrf("TRÈS près", "Rès", "X", 1)} = {cmd:"TX près"}{p_end}
{p2col: 域 {it:s1}:}Unicode 字符串{p_end}
{p2col: 域 {it:re}:}Unicode 正则表达式{p_end}
{p2col: 域 {it:s2}:}Unicode 字符串{p_end}
{p2col: 域 {it:noc}:}整数{p_end}
{p2col: 范围：}Unicode 字符串{p_end}
{p2colreset}{...}

    {cmd:ustrregexra(}{it:s1}{cmd:,}{it:re}{cmd:,}{it:s2}[{cmd:,}{it:noc}]{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}将 Unicode 字符串 {it:s1} 中与 {it:re} 匹配的所有子串替换为 {it:s2} 并返回结果字符串{p_end}
	
{p2col:}如果指定了 {it:noc} 且不为 0，则执行不区分大小写的匹配。如果发生错误，该函数可能返回空字符串。{p_end}

{p2col:}{cmd:ustrregexra("très près", "rès", "X")} = {cmd:"tX pX"}{break}
        {cmd:ustrregexra("TRÈS près", "Rès", "X")} = {cmd:"TRÈS près"}{break}
        {cmd:ustrregexra("TRÈS près", "Rès", "X", 1)} = {cmd:"TX pX"}{p_end}
{p2col: 域 {it:s1}:}Unicode 字符串{p_end}
{p2col: 域 {it:re}:}Unicode 正则表达式{p_end}
{p2col: 域 {it:s2}:}Unicode 字符串{p_end}
{p2col: 域 {it:noc}:}整数{p_end}
{p2col: 范围：}Unicode 字符串{p_end}
{p2colreset}{...}

    {cmd:ustrregexs(}{it:n}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}从先前的 {cmd:ustrregexm()} 匹配中提取子表达式 {it:n}{p_end}
	
{p2col:}子表达式 0 保留给满足正则表达式的整个字符串。如果 {it:n} 大于上次匹配的子表达式最大计数，或者发生错误，该函数可能返回空字符串。{p_end}
{p2col: 域 {it:n}:}整数 {ul:>} 0{p_end}
{p2col: 范围：}字符串{p_end}
{p2colreset}{...}