{smcl}
{* *!  version 1.0.1  23may2013}{...}
{* 本帮助文件由 sg__connections.dlg, sg__errvar.dlg, sg__variables.dlg 调用}{...}
{vieweralsosee "[SEM] sem 和 gsem 选项约束()" "help sem 和 gsem 选项约束"}{...}
{vieweralsosee "[SEM] sem 和 gsem 路径表示法" "help sem 和 gsem 路径表示法##item11"}
{help sg__constraints:English Version}
{hline}{...}
{title:约束}

{pstd}
可以在对话框字段中指定数值约束或符号约束。输入一个数字以将参数约束为该值。符号约束是通过输入一个名称（长度在 1 到 32 个字符之间）来指定的。具有相同符号约束的参数被约束为相等。

{pstd}
您还可以输入符号约束的线性组合。例如，输入 {cmd:2*c1} 将约束该参数为另一个符号约束为 {cmd:c1} 的参数的两倍。更复杂的线性组合，如 {cmd:3*c1+10} 也被允许。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sg__constraints.sthlp>}