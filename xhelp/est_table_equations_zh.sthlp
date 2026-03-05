{smcl}
{* *! version 1.0.4  09jul2013}{...}
{vieweralsosee "[R] estimates" "help estimates_zh"}
{help est_table_equations:English Version}
{hline}{...}
关于为 {cmd:estimates table} 指定 {cmd:equations} 的帮助
{hline}

{pstd}
单个数字 # 在所有模型中匹配方程 #。用逗号（{cmd:,}）分隔多个项。

    {hline -2}
{p 4 20 2}
{cmd:1} {space 13} 在所有模型中匹配第一个方程到 {cmd:#1}，通过名称匹配其他方程。对话框提供一个单选按钮用于此常见特例。
{p_end}

{p 4 20 2}
{cmd:2} {space 13} 在所有模型中匹配第二个方程到 {cmd:#1}（不是 {cmd:#2}），通过名称匹配其他方程
{p_end}

{p 4 20 2}
{cmd:1,2} {space 11} 在所有模型中匹配第一个方程到 {cmd:#1}，在所有模型中匹配第二个方程到 {cmd:#2}，通过名称匹配其他方程
{p_end}
    {hline -2}


{pstd}
您可以为匹配的方程添加名称。请注意：您指定的名称不应与模型中现有的方程名称重复。

    {hline -2}
{p 4 20 2}
{cmd:mean = 1} {space 6} 在所有模型中匹配第一个方程到 {cmd:mean}，通过名称匹配其他方程
{p_end}

{p 4 20 2}
{cmd:mean=1, var=2} {space 1} 在所有模型中匹配第一个方程到 {cmd:mean}，在所有模型中匹配第二个方程到 {cmd:var}，通过名称匹配其他方程
{p_end}
    {hline -2}


{pstd}
您还可以为每个模型指定方程编号，可以选择性地用冒号（{cmd::}）分隔。以下示例假设您正在为三个模型制作表格。

    {hline -2}
{p 4 20 2}
{cmd:1:2:3} {space 9} 在模型 1 中匹配第 1 个方程，在模型 2 中匹配第 2 个方程，及在模型 3 中匹配第 3 个方程，所有匹配结果合成一个 {cmd:#1}，通过名称匹配所有其他方程。
{p_end}

{p 4 20 2}
{cmd:1:1:1} {space 9} 在所有三个模型中匹配第 1 个方程。如上所示，您也可以输入单个 {cmd:1}。
{p_end}

{p 4 20 2}
{cmd:lp = 1:.:2} {space 4} 在模型 1 中匹配第 1 个方程，及在模型 3 中匹配第 2 个方程到方程 {cmd:lp}；模型 2 中没有方程被匹配到 {cmd:lp}。同样，其他方程通过名称匹配。
{p_end}
    {hline -2}


{pstd}
如果您确实需要，您还可以编写复杂的匹配模式，结合所有这些构造：

    {hline -2}
    {cmd:one = 1, two = 2:.:2, three = .:3:3, four = 4}
    {hline -2}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <est_table_equations.sthlp>}