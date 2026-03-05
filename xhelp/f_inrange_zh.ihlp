
{help f_inrange:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:inrange(}{it:z}{cmd:,}{it:a}{cmd:,}{it:b}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{cmd:1} 如果已知 {it:a} {ul:<} {it:z} {ul:<} {it:b}; 否则，返回 {cmd:0}{p_end}
	
{p2col:}以下有序规则适用:{break}
	{it:z} {ul:>} {cmd:.} 返回 {cmd:0}.{break}
	{it:a} {ul:>} {cmd:.} 且 {it:b} = {cmd:.} 返回 {cmd:1}.{break}
	{it:a} {ul:>} {cmd:.} 如果 {it:z} {ul:<} {it:b} 返回 {cmd:1};
	     否则，返回 {cmd:0}.{break}
	{it:b} {ul:>} {cmd:.} 如果 {it:a} {ul:<} {it:z} 返回 {cmd:1};
	     否则，返回 {cmd:0}.{break}
        否则，如果 {it:a} {ul:<} {it:z} {ul:<} {it:b} 返回 {cmd:1}。
	      {break}
        如果参数是字符串，"{cmd:.}" 被解释为 {cmd:""}.{p_end}
{p2col: 定义域:}所有实数或所有字符串{p_end}
{p2col: 值域:}0 或 1{p_end}
{p2colreset}{...}