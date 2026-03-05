
{help f_lngamma:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:lngamma(}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}x的伽马函数的自然对数{p_end}
	
{p2col:}对于整数值{x} > 0，这是ln(({it:x}-1)!)。{p_end}

{p2col:}{cmd:lngamma(}{it:x}{cmd:)} 对于{x} < 0 返回一个数字
                  使得 {cmd:exp(lngamma(}{it:x}{cmd:))} 等于
		  伽马函数的绝对值。也就是说，
		  {cmd:lngamma(}{it:x}{cmd:)} 总是返回一个实数（不是
		  复数）结果。{p_end}
{p2col: 定义域:}-2,147,483,648 到 1e+305（不包括负整数）{p_end}
{p2col: 值域:}-8e+307 到 8e+307{p_end}
{p2colreset}{...}