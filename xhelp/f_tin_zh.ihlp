
{help f_tin:English Version}
{hline}
{* *! version 1.2.0  31jan2019}{...}
    {cmd:tin(}{it:d1}{cmd:,} {it:d2}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{it:true} 如果 {it:d1} {ul:<} {it:t} {ul:<} {it:d2},
        其中 {it:t} 是之前 {cmd:tsset} 的时间变量{p_end}

{p2col:}您必须之前 {help tsset_zh} 数据以使用 {cmd:tin()}。当您 {cmd:tsset} 数据时，您指定一个时间变量 {it:t}，并且 {it:t} 的格式表示它是如何记录的。您根据该格式输入 {it:d1} 和 {it:d2}。{p_end}

{p2col:}如果 {it:t} 具有 {cmd:%tc} 格式，您可以输入
              {cmd:tin(5jan1992 11:15, 14apr2002 12:25)}.{p_end}

{p2col:}如果 {it:t} 具有 {cmd:%td} 格式，您可以输入
              {cmd:tin(5jan1992, 14apr2002)}.{p_end}

{p2col:}如果 {it:t} 具有 {cmd:%tw} 格式，您可以输入
              {cmd:tin(1985w1, 2002w15)}.{p_end}

{p2col:}如果 {it:t} 具有 {cmd:%tm} 格式，您可以输入
              {cmd:tin(1985m1, 2002m4)}.{p_end}

{p2col:}如果 {it:t} 具有 {cmd:%tq} 格式，您可以输入
              {cmd:tin(1985q1, 2002q2)}.{p_end}

{p2col:}如果 {it:t} 具有 {cmd:%th} 格式，您可以输入
              {cmd:tin(1985h1, 2002h1)}.{p_end}

{p2col:}如果 {it:t} 具有 {cmd:%ty} 格式，您可以输入
              {cmd:tin(1985, 2002)}.{p_end}

{p2col:}如果 {it:t} 具有 {cmd:%tb} 格式，您可以输入
	      {cmd:tin(5jan1992, 14apr2002)}。即使 {cmd:tin()} 的参数不是营业日，这也将按预期工作。{p_end}

{p2col:}否则，{it:t} 只是整数集，您可以输入 {cmd:tin(12, 38)}.{p_end}

{p2col:} {cmd:%t} 格式的细节并不重要。如果您的 {it:t} 格式为 {cmd:%tdmm/dd/yy}，因此 5jan1992 显示为 1/5/92，您仍然会以日-月-年顺序输入日期: {cmd:tin(5jan1992, 14apr2002)}.{p_end}
{p2col: 范围 {it:d1}:}日期或时间文字或字符串，以 {it:t} 为单位，之前 {cmd:tsset} 或空表示无最小日期{p_end}
{p2col: 范围 {it:d2}:}日期或时间文字或字符串，以 {it:t} 为单位，之前 {cmd:tsset} 或空表示无最大日期{p_end}
{p2col: 范围:}0 和 1，1 表示 {it:true}{p_end}
{p2colreset}{...}