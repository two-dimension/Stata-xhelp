
{help f_collatorversion:English Version}
{hline}
{* *! version 1.0.3  06mar2015}{...}
    {cmd:collatorversion(}{it:loc}{cmd:)} 
{p2colset 8 22 22 2}{...}
{p2col: 描述:}基于语言环境的排序器的版本字符串
	{it:loc}{p_end}

{p2col:}Unicode 标准不断添加更多字符，排序键格式也可能会发生变化。这可能导致
	{help f_ustrsortkey_zh:ustrsortkey()} 和
	{help f_ustrsortkeyex_zh:ustrsortkeyex()} 在不同版本的国际组件 Unicode 之间生成不兼容的排序键。版本字符串可用于对排序键进行版本控制，以指示何时必须重新生成保存的排序键。{p_end}
{p2col: 范围:}字符串{p_end}
{p2colreset}{...}