
{help f_runiform:English Version}
{hline}
{* *! version 1.1.3  02mar2015}{...}
    {cmd:runiform()}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}在区间 (0,1) 上均匀分布的随机变量{p_end}

{p2col:}{cmd:runiform()} 可以使用 {cmd:set seed} 命令设置种子；参见 {manhelp set_seed R:set seed}.{p_end}
{p2col: 范围：}{cmd:c(epsdouble)} 到 1-{cmd:c(epsdouble)}{p_end}
{p2colreset}{...}

    {cmd:runiform(}{it:a}{cmd:,}{it:b}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}在区间 ({it:a},{it:b}) 上均匀分布的随机变量{p_end}
{p2col: 域 {it:a}:}{cmd:c(mindouble)} 到 {cmd:c(maxdouble)}{p_end}
{p2col: 域 {it:b}:}{cmd:c(mindouble)} 到 {cmd:c(maxdouble)}{p_end}
{p2col: 范围：}{it:a}+{cmd:c(epsdouble)} 到 {it:b}-{cmd:c(epsdouble)}{p_end}
{p2colreset}{...}