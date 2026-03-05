{smcl}
{* *! version 1.0.4  11feb2011}{...}
{* 此 hlp 文件由 testnl.dlg 调用}{...}
{vieweralsosee "[R] testnl" "help testnl_zh"}
{help testnl_example:English Version}
{hline}{...}
{title:testnl 的非线性表达式示例}


{title:单方程模型仅一项规范：}

{pstd}
系数用 _b[varname] 表示。只有一项规范时，括号可选。

    {cmd:_b[x]/_b[y] = _b[z]}

    {cmd:_b[x] = exp((_b[y]+_b[z])/2)}


{title:单方程模型的多个规范：}

{pstd}
每个规范都需要括号。

{phang}
{cmd:(_b[x]/ _b[y] = _b[z]/2) (log(_b[a]) = _b[b])}

{phang}
{cmd:(exp(_b[y]) = _b[z]/2) (log(_b[x]) = log(_b[a])) (_b[c]/_b[d] = _b[b])}


{title:多方程模型的多个规范：}

{pstd}
要指定方程的系数，请使用 [equation]_b[varname]。在这些示例中，方程为 A 和 B。每个规范都需要括号。

{phang}
{cmd:([A]_b[x]/ [A]_b[y] = [B]_b[x]/[B]_b[y]) (log([A]_b[a]) = log([B]_b[a]))}

{phang}
{cmd:(exp([A]_b[y]) = exp([B]_b[y]) (log([A]_b[x]) = [B]_b[a]))}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <testnl_example.sthlp>}