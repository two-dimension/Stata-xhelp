
{help f_collatorlocale:English Version}
{hline}
{* *! version 1.0.1  02mar2015}{...}
    {cmd:collatorlocale(}{it:loc}{cmd:,}{it:type}{cmd:)} 
{p2colset 8 22 22 2}{...}
{p2col: 描述:}如果 {it:type} 为 {bf:1}，则返回 ICU 支持的与 {it:loc} 最相关的区域设置；如果 {it:type} 为 {bf:2}，则返回排序数据实际来源的区域设置。{p_end}

{p2col:}对于任何其他 {it:type}，将以规范化形式返回 {it:loc}。{p_end}

{p2col:}{cmd:collatorlocale("en_us_texas", 0)} = {cmd:en_US_TEXAS}{break}
	{cmd:collatorlocale("en_us_texas", 1)} = {cmd:en_US}{break}
	{cmd:collatorlocale("en_us_texas", 2)} = {cmd:root}{p_end}
{p2col: 域 {it:loc}:}区域名称字符串{p_end}
{p2col: 域 {it:type}:}整数{p_end}
{p2col: 范围:}字符串{p_end}
{p2colreset}{...}