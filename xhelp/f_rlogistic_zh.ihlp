
{help f_rlogistic:English Version}
{hline}
{* *! version 1.0.1  02mar2015}{...}
    {cmd:rlogistic()}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}生成均值为 0，标准差为
                     π/sqrt(3} 的 logistic 随机变量{p_end}

{p2col:}变量 {it:x} 的生成方式为 {it:x} = 
         {cmd:invlogistic(0,1,}{it:u}{cmd:)}, 其中 {it:u} 是一个随机
	 uniform(0,1) 变量。{p_end}
{p2col: 范围:}{cmd:c(mindouble)} 到 {cmd:c(maxdouble)}{p_end}
{p2colreset}{...}

    {cmd:rlogistic(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}生成均值为 0，比例 {it:s}，标准差为
                     {it:s}*π/sqrt(3} 的 logistic 随机变量{p_end}

{p2col:}变量 {it:x} 的生成方式为 {it:x} = 
         {cmd:invlogistic(0,}{it:s}{cmd:,}{it:u}{cmd:)}, 其中 {it:u} 是一个随机
	 uniform(0,1) 变量。{p_end}
{p2col: 域 {it:s}:}0 到 {cmd:c(maxdouble)}{p_end}
{p2col: 范围:}{cmd:c(mindouble)} 到 {cmd:c(maxdouble)}{p_end}
{p2colreset}{...}

    {cmd:rlogistic(}{it:m}{cmd:,}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}生成均值为 {it:m}，比例 {it:s}，标准差为
                     {it:s}*π/sqrt(3} 的 logistic 随机变量{p_end}

{p2col:}变量 {it:x} 的生成方式为 {it:x} = 
         {cmd:invlogistic(}{it:m}{cmd:,}{it:s}{cmd:,}{it:u}{cmd:)}, 其中 {it:u} 是一个随机
	 uniform(0,1) 变量。{p_end}
{p2col: 域 {it:m}:}{cmd:c(mindouble)} 到 {cmd:c(maxdouble)}{p_end}
{p2col: 域 {it:s}:}0 到 {cmd:c(maxdouble)}{p_end}
{p2col: 范围:}{cmd:c(mindouble)} 到 {cmd:c(maxdouble)}{p_end}
{p2colreset}{...}