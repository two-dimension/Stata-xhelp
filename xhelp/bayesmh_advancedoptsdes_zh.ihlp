
{help bayesmh_advancedoptsdes:English Version}
{hline}
{* *! version 1.0.1  12mar2017}{...}
{phang}
{marker search_options}
{opt search(search_options)} 用于搜索可行的初始值。
{it:search_options} 包括 {opt on}、{opt repeat(#)} 和 {opt off}。

{phang2}
{cmd:search(on)} 等价于 {cmd:search(repeat(500))}。这是默认选项。

{phang2}
{cmd:search(repeat(}{it:k}{cmd:))}，{it:k}>0，指定随机尝试找到可行的初始值向量或初始状态的次数。默认值为 {cmd:repeat(500)}。初始值向量是可行的，如果其对应的状态具有正的后验概率。如果在 {it:k} 次尝试后仍未找到可行的初始值，则会发出错误。{cmd:repeat(0)}（很少使用）指定不进行随机尝试来找到可行的起始点。在这种情况下，如果指定的初始向量不对应于一个可行的状态，则会发出错误。

{phang2}
{cmd:search(off)} 防止命令搜索可行的初始值。我们不建议指定此选项。

INCLUDE help bayesmh_corroptsdes