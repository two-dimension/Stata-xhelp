
{help f_irecode:English Version}
{hline}
{* *! version 1.1.2  05mar2015}{...}
    {cmd:irecode(}{it:x}{cmd:,}{it:x1}{cmd:,}{it:x2}{cmd:,}{it:...}{cmd:,}{it:xn}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}{it:x} 为缺失值时，或 {it:x1},...,{it:xn} 不是弱递增的；
	{cmd:0} 如果 {it:x} {ul:<} {it:x1}；
	{cmd:1} 如果 {it:x1} < {it:x} {ul:<} {it:x2}；
	{cmd:2} 如果 {it:x2} < {it:x} {ul:<} {it:x3}; ...；
	{it:n} 如果 {it:x} > {it:xn}{p_end}

{p2col:}另见 {helpb autocode()} 和 {helpb recode()} 以获取其他样式的重编码函数。{p_end}

{p2col:}{cmd:irecode(3, -10, -5, -3, -3, 0, 15, .)} = {cmd:5}{p_end}
{p2col: 领域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 领域 {it:xi}:}-8e+307 到 8e+307{p_end}
{p2col: 范围：}非负整数{p_end}
{p2colreset}{...}