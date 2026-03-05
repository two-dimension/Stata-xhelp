
{help f_inv:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:inv(}{it:M}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}矩阵 {it:M} 的逆{p_end}

{p2col:}如果 {it:M} 是奇异的，将导致错误.{p_end}

{p2col:}函数 {helpb invsym()} 应优先于 {cmd:inv()} 使用，因为 {cmd:invsym()} 更加精确。结果的行名来源于 {it:M} 的列名，结果的列名来源于 {it:M} 的行名.{p_end}
{p2col: 定义域:}{it:n} x {it:n} 非奇异矩阵{p_end}
{p2col: 值域:}{it:n} x {it:n} 矩阵{p_end}
{p2colreset}{...}