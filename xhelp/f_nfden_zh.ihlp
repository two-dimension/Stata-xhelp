
{help f_nfden:English Version}
{hline}
{* *! version 1.1.2  27mar2017}{...}
    {cmd:nFden(}{it:df1}{cmd:,}{it:df2}{cmd:,}{it:np}{cmd:,}{it:f}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}非中心 F 分布的概率密度函数，具有 {it:df1} 分子和
        {it:df2} 分母的自由度以及非中心参数 {it:np}; {cmd:0} 如果 {it:f} < 0{p_end}

{p2col:}{cmd:nFden(}{it:df1}{cmd:,}{it:df2}{cmd:,0,}{it:f}{cmd:)} =
         {cmd:Fden(}{it:df1}{cmd:,}{it:df2}{cmd:,}{it:f}{cmd:)}, 但 
	 {helpb Fden()} 是用于中心 F 分布的首选函数.{p_end}

{p2col:}此外，如果 {it:F} 遵循具有 {it:df1} 和 {it:df2} 自由度及非中心参数
      {it:np} 的非中心 {it:F} 分布，则

                                 {it:df1 F}
		               {hline 11}
		               {it:df2} + {it:df1 F}

{p2col:}遵循一个具有形状参数 {it:a}={it:df1}/2, {it:b}={it:df2}/2 的非中心贝塔分布
	    和非中心参数 {it:np}，如 {cmd:nbetaden()} 所给出。{cmd:nFden()} 是基于这个关系计算得到的.{p_end}
{p2col: 域 {it:df1}:}1e-323 到 8e+307（可能是非整数）{p_end}
{p2col: 域 {it:df2}:}1e-323 到 8e+307（可能是非整数）{p_end}
{p2col: 域 {it:np}:}0 到 1,000{p_end}
{p2col: 域 {it:f}:}-8e+307 到 8e+307; 有趣的域是
	{it:f} {ul:>} 0{p_end}
{p2col: 范围:}0 到 8e+307{p_end}
{p2colreset}{...}