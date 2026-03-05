
{help f_plural:English Version}
{hline}
{* *! version 1.1.3  05mar2015}{...}
    {cmd:plural(}{it:n}{cmd:,}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}如果 {bind:{it:n} != +/-1}，则为 {it:s} 的复数形式{p_end}

{p2col:}复数形式通过在 {it:s} 后添加 "s" 来形成.{p_end}

{p2col:}{cmd:plural(1, "horse")} = {cmd:"horse"}{break}
	{cmd:plural(2, "horse")} = {cmd:"horses"}{p_end}
{p2col: 范围 {it:n}:}实数{p_end}
{p2col: 范围 {it:s}:}字符串{p_end}
{p2col: 范围:}字符串{p_end}
{p2colreset}{...}

    {cmd:plural(}{it:n}{cmd:,}{it:s1}{cmd:,}{it:s2}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}在 {bind:{it:n} != +/-1} 时，{it:s1} 的复数，由 {it:s2} 修改或替代

{p2col:}如果 {it:s2} 以字符 "{cmd:+}" 开头，则复数形式通过将 {it:s2} 的其余部分添加到 {it:s1} 来形成。如果 {it:s2} 以字符 "{cmd:-}" 开头，则复数形式通过从 {it:s1} 中减去 {it:s2} 的其余部分来形成。如果 {it:s2} 既不以 "{cmd:+}" 也不以 "{cmd:-}" 开头，则复数形式通过返回 {it:s2} 来形成.{p_end}

{p2col:}{cmd:plural(2, "glass", "+es")} = {cmd:"glasses"}{break}
        {cmd:plural(1, "mouse", "mice")} = {cmd:"mouse"}{break}
        {cmd:plural(2, "mouse", "mice")} = {cmd:"mice"}{break}
	{cmd:plural(2, "abcdefg", "-efg")} = {cmd:"abcd"}{p_end}
{p2col: 范围 {it:n}:}实数{p_end}
{p2col: 范围 {it:s1}:}字符串{p_end}
{p2col: 范围 {it:s2}:}字符串{p_end}
{p2col: 范围:}字符串{p_end}
{p2colreset}{...}