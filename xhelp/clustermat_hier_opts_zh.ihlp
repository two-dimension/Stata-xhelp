
{help clustermat_hier_opts:English Version}
{hline}
{* *! version 1.0.8  07apr2011}{...}
{dlgtab:主要}

{phang}
{opt shape(shape)}
指定 {it:matname} 的存储模式，即不相似性矩阵。默认值为 {cmd:shape(full)}。允许以下 {it:shape}：

{phang2}
    {opt full}
    指定 {it:matname} 为一个 {it:n} x {it:n} 对称矩阵。

{phang2}
    {opt lower}
    指定 {it:matname} 为长度为 {it:n}({it:n}+1)/2 的行向量或列向量，其中包含不相似性矩阵的行优先下三角部分，包括零对角线。

{pin3}
	D(11)
	D(21) D(22)
	D(31) D(32) D(33) ... D({it:n}1) D({it:n}2) ... D({it:n}{it:n})

{phang2}
    {opt llower}
    指定 {it:matname} 为长度为 {it:n}({it:n}-1)/2 的行向量或列向量，其中包含不相似性矩阵的行优先下三角部分，不包括对角线。

{pin3}
	D(21)
	D(31) D(32)
	D(41) D(42) D(43) ... D({it:n}1) D({it:n}2) ... D({it:n},{it:n}-1)

{phang2}
    {opt upper}
    指定 {it:matname} 为长度为 {it:n}({it:n}+1)/2 的行向量或列向量，其中包含不相似性矩阵的行优先上三角部分，包括零对角线。

{pin3}
	D(11) D(12) ... D(1{it:n})
	D(22) D(23) ... D(2{it:n})
	D(33) D(34) ... D(3{it:n}) ... D({it:n}{it:n})

{phang2}
    {opt uupper}
    指定 {it:matname} 为长度为 {it:n}({it:n}-1)/2 的行向量或列向量，其中包含不相似性矩阵的行优先上三角部分，不包括对角线。

{pin3}
	D(12) D(13) ... D(1{it:n})
	D(23) D(24) ... D(2{it:n})
	D(34) D(35) ... D(3{it:n}) ... D({it:n}-1{it:n})

{phang}
{opt add}
指定将 {cmd:clustermat} 的结果添加到当前内存中的数据集中。观察值的数量（基于 {cmd:if} 和 {cmd:in} 限定符选择的观察值）必须等于 {it:matname} 的行数和列数。如果当前内存中有数据集，则需要 {cmd:clear} 或 {cmd:add}。

{phang}
{opt clear}
在生成 {cmd:clustermat} 的结果之前，删除当前内存中数据集中的所有变量和聚类解决方案（即使自上次保存数据以来该数据集已经更改）。如果当前内存中有数据集，则需要 {cmd:clear} 或 {cmd:add}。

{phang}
{opth labelvar(varname)}
指定要创建的新变量的名称，该变量包含矩阵 {it:matname} 的行名称。

{phang}
{opt name(clname)}
指定要附加到结果聚类分析的名称。如果未指定 {cmd:name()}，Stata 会查找可用的聚类名称，并显示供您参考，并将该名称附加到您的聚类分析中。

{dlgtab:高级}

{phang}
{opt force}
允许在 {it:matname} 不对称或对角线上有非零项时继续计算。默认情况下，当 {cmd:clustermat} 遇到这些条件时将会报错并退出。{cmd:force} 指定 {cmd:clustermat} 在对称矩阵 ({it:matname}*{it:matname}')/2 上操作，将任何非零对角项视为零。

{phang}
{opt generate(stub)}
为 {cmd:clustermat} 创建的变量名称提供前缀。默认情况下，变量名称前缀为在 {cmd:name()} 中指定的名称。创建并附加三个变量到聚类分析结果，后缀为 {hi:_id}、{hi:_ord} 和 {hi:_hgt}。用户通常不需要直接访问这些变量。

{pmore}
质心链接和中位链接可能会导致反转或交叉；有关详细信息，请参见 {manlink MV cluster}。当发生反转时，{cmd:clustermat centroidlinkage} 和 {cmd:clustermat medianlinkage} 还会创建一个具有后缀 {hi:_pht} 的第四个变量。这是一个伪高度变量，用于一些聚类后的命令以正确解释 {hi:_hgt} 变量。
{p_end}