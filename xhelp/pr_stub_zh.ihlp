
{help pr_stub:English Version}
{hline}
{phang}
{opt pr}（默认选项）计算所有结果或特定结果的预测概率。要计算所有结果的概率，您需要指定 k 个新变量，其中 k 是因变量的类别数。或者，您可以指定 {it:stub}{cmd:*}；在这种情况下，{cmd:pr} 将把预测的概率存储在变量 {it:stub}{cmd:1}，{it:stub}{cmd:2}，...，{it:stub}k 中。要计算特定结果的概率，您需要指定一个新变量，并可选地在选项 {cmd:outcome()} 中指定结果值；如果省略 {cmd:outcome()}，则默认假设第一个结果值，即 {cmd:outcome(#1)}。

{pmore}
假设您通过输入 {it:estimation_cmd} {cmd:y x1 x2} 拟合了一个模型，且 {cmd:y} 取四个值。那么，您可以输入 {cmd:predict p1 p2 p3 p4} 来获得所有四个预测概率；或者，您可以输入 {cmd:predict p*} 来生成这四个预测概率。要逐个计算特定概率，您可以输入 {cmd:predict p1,} {cmd:outcome(#1)}（或简单地输入 {cmd:predict p1}）、{cmd:predict p2,} {cmd:outcome(#2)}，依此类推。有关其他引用结果值的方法，请参见选项 {cmd:outcome()}。{p_end}