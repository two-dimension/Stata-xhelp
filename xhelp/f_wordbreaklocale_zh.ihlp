
{help f_wordbreaklocale:English Version}
{hline}
{* *! version 1.0.1  02mar2015}{...}
    {cmd:wordbreaklocale(}{it:loc}{cmd:,}{it:type}{cmd:)} 
{p2colset 8 22 22 2}{...}
{p2col: 描述:}如果 {it:type} 为 {cmd:1}，则返回 ICU 支持的与 {it:loc} 最相关的区域设置；如果 {it:type} 为 {cmd:2}，则返回实际的词边界分析数据来源的区域设置；对于任何其他 {it:type}，将返回空字符串{p_end}

{p2col:}{cmd:wordbreaklocale("en_us_texas", 1)} = {cmd:en_US}{break}
	{cmd:wordbreaklocale("en_us_texas", 2)} = {cmd:root}{p_end}
{p2col: 域 {it:loc}:}区域设置名称的字符串{p_end}
{p2col: 域 {it:type}:}整数{p_end}
{p2col: 范围:}字符串{p_end}
{p2colreset}{...}