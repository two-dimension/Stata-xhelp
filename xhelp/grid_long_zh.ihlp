
{help grid_long:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{marker grid()}{...}
{phang}
{cmd:grid(}{it:#_g} [{cmd:,} {opt ratio(#)} {opt min(#)}]{cmd:)} 指定使用具有 {it:#_g} 个网格点的对数网格来设置可能的 lambda 集。

{phang2}
{it:#_g} 是 lambda 的网格点数量。默认为 {it:#_g} = 100。该网格为对数形式，其中第 i 个网格点 (i = 1, ..., n = {it:#_g}) 由 ln lambda_i = [(i - 1)/(n - 1)] ln r + ln lambda_{gmax} 给出，其中 lambda_{gmax} = lambda_1 是最大值，lambda_{gmin} = lambda_n = {opt min(#)} 是最小值，r = lambda_{gmin}/lambda_{gmax} = {opt ratio(#)} 是最小值与最大值的比率。

{phang2}
{opt ratio(#)} 指定 lambda_{gmin}/lambda_{gmax}。网格的最大值 lambda_{gmax} 设置为所有 lasso 中的系数被估计为零的最小 lambda（排除 {it:alwaysvars} 的系数）。然后根据 {opt ratio(#)} 设置 lambda_{gmin}。当 p < N 时，其中 p 是 {it:othervars} 和 {it:alwaysvars} 的总数（不包括常数项），N 是观察值的数量，{opt ratio(#)} 的默认值为 1e-4。当 p >= N 时，默认值为 1e-2。

{phang2}
{opt min(#)} 设置 lambda_{gmin}。默认情况下，lambda_{gmin} 是基于 {opt ratio(#)} 和从数据计算的 lambda_{gmax}。