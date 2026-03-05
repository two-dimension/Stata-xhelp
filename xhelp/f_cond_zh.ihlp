
{help f_cond:English Version}
{hline}
{* *! version 1.1.3  12mar2015}{...}
    {cmd:cond(}{it:x}{cmd:,}{it:a}{cmd:,}{it:b}[{cmd:,}{it:c}]{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}{it:a} 如果
	{it:x} 为真且非缺失, {it:b} 如果 {it:x} 为假, 并且 {it:c} 如果
	{it:x} 为 {it:missing}; {it:a} 如果 {it:c} 未指定且 {it:x}
	评估为 {it:missing}{p_end}

{p2col:}请注意，类似于 {it:x}>2 的表达式永远不会评估为
{it:missing}.{p_end}

{p2col:}{cmd:cond(x>2,50,70)} 如果
		     {cmd:x} > {cmd:2}（包含
                     {cmd:x} {ul:>} {cmd:.}）返回 {cmd:50}{p_end}
{p2col:}{cmd:cond(x>2,50,70)} 如果
		     {cmd:x} {ul:<} {cmd:2} 返回 {cmd:70}{p_end}

{p2col:}如果您需要上述示例中缺失值的情况，试试{p_end}

{p2col:}{cmd:cond(missing(x), ., cond(x>2,50,70))} 如果
		     {cmd:x} 为 {it:missing} 返回 {cmd:.}，如果 {cmd:x} >
		     {cmd:2} 返回 {cmd:50}，如果
		     {cmd:x} {ul:<} {cmd:2} 返回 {cmd:70}{p_end}

{p2col: }如果第一个参数是可能包含缺失值的标量
或者包含缺失值的变量，则第四个参数会有影响。{p_end}

{p2col:}{cmd:cond(wage,1,0,.)} 如果 {cmd:wage} 不为零且不缺失返回 {cmd:1}{p_end}
{p2col:}{cmd:cond(wage,1,0,.)} 如果 {cmd:wage} 为零返回 {cmd:0}{p_end}
{p2col:}{cmd:cond(wage,1,0,.)} 如果 {cmd:wage} 为 {it:missing} 返回 {cmd:.}{p_end}

{p2col: }注意：如果 {cmd:cond()} 的第一个参数是逻辑
表达式，即 {cmd:cond(x>2,50,70,.)}，则第四个参数永远不会被
触及。{p_end}
{p2col: 范围 {it:x}:}-8e+307 到 8e+307 或 {it:missing}; 0 表示假，
                 其他则解释为真{p_end}
{p2col: 范围 {it:a}:}数值和字符串{p_end}
{p2col: 范围 {it:b}:}如果 {it:a} 是数字则为数值；如果 {it:a} 是字符串则为字符串{p_end}
{p2col: 范围 {it:c}:}如果 {it:a} 是数字则为数值；如果 {it:a} 是字符串则为字符串{p_end}
{p2col: 范围:}{it:a}, {it:b}, 和 {it:c}{p_end}
{p2colreset}{...}