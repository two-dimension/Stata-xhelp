{smcl}
{* *! version 1.1.6  10aug2012}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ml" "help ml_zh"}{...}
{viewerjumpto "语法" "minbound_zh##syntax"}{...}
{viewerjumpto "描述" "minbound_zh##description"}{...}
{viewerjumpto "选项" "minbound_zh##options"}{...}
{viewerjumpto "示例" "minbound_zh##examples"}{...}
{viewerjumpto "存储结果" "minbound_zh##results"}{...}
{viewerjumpto "参考文献" "minbound_zh##references"}
{help minbound:English Version}
{hline}{...}
{title:标题}

{p 4 16 2}
{hi:[R] minbound} {hline 2} 在范围内最小化标量函数{p_end}


{marker syntax}{...}
{title:语法}

{p 8 27 2}
{cmd:minbound} {it:progname}{cmd:,} {opt ran:ge(#1 #2)}
[
   {opt from(#)}
   {opt arg:uments(str)}
   {opt tol:erance(#)}
   {opt iter:ate(#)}
   {opt miss:ing}
   {opt tr:ace}
]


{marker description}{...}
{title:描述}

{pstd}
{cmd:minbound} 使用函数值在给定范围内最小化光滑的标量函数 
({help minbound##B1973:Brent 1973})。函数 {it:progname} 应当 
作为一个 {help program_zh:rclass} 程序实现；它应当接收第一个参数
作为待评估的值 x，以及通过选项 {cmd:arguments()} 转移的可选其他参数；
并且它应当在 {cmd:r(fx)} 中返回函数值。


{marker options}{...}
{title:选项}

{phang}{opt range(#1 #2)}
是必需的；它指定函数应当被最小化的范围。#1 和 #2 可以是字面值或表达式，并应以逗号或空格分隔。

{phang}{opt from(#)}
指定一个初始值。它应当满足范围条件。

{phang}{opt arguments(str)}
指定 {it:progname} 的可选参数。多个参数以空格分隔。

{phang}{opt tolerance(#)}
指定最小化器 x 的容差。默认值为 1e-5。

{phang}{opt iterate(#)}
指定最大迭代次数。默认值为 100。

{phang}{opt missing}
指定 {it:progname} 返回的缺失值被视为普通值（即，比任何非缺失值都要大）。默认行为是将缺失的函数值视为错误。

{phang}{opt trace}
显示迭代跟踪。


{marker examples}{...}
{title:示例}

{pstd}
我们希望最小化二次函数 f(x) = x^2。

{tab}{cmd:. program quadratic, rclass}
{tab}{cmd:          return scalar fx = (`1')^2}
{tab}{cmd:  end}

{tab}{cmd:. minbound quadratic, range(0 2)}
{tab}{cmd:. minbound quadratic, range(-4 4) from(2) trace}

{pstd}
注意：我们建议您将程序 {cmd:quadratic} 代码稍微写得冗长一些，如下所示：

{tab}{cmd:. program quadratic, rclass}
{tab}{cmd:          version 9}
{tab}{cmd:          args x}
{tab}{cmd:          return scalar fx = (`x')^2}
{tab}{cmd:  end}

{pstd}
我们还可以编写一个更一般的函数，使其最小化一般二次函数 ax^2+bx+c。

{tab}{cmd:. program quadratic2, rclass}
{tab}{cmd:          version 9}
{tab}{cmd:          args x a b c}
{tab}{cmd:          return scalar fx = `a'*(`x')^2 + `b'*`x' + `c'}
{tab}{cmd:  end}

{pstd}
若要最小化 2x^2-3x+1 对 x 的影响，范围是 [-100,100]，您可以输入：

{tab}{cmd:. minbound quadratic2, range(-100 100) arg(2 -3 1)}

{pstd}
我们还可以最小化反 U 形抛物线 -2x^2+3x+1 对 x 的影响，范围是 [-1,1] -- 最小值位于范围的边界，

{tab}{cmd:. minbound quadratic2, range(-1 1) arg(-2 3 1)}


{marker results}{...}
{title:存储结果}

{pstd}{cmd:minbound} 在 {cmd:r()} 中存储以下内容：

{tab}{cmd:r(x)}   最小化值
{tab}{cmd:r(fx)}  在 x 处的函数值
{tab}{cmd:r(gx)}  f 对 x 的一阶导数
{tab}{cmd:r(hx)}  f 对 x 的二阶导数


{marker references}{...}
{title:参考文献}

{marker B1973}{...}
{phang}
Brent, R. P. 1973.
{it:算法无导数最小化}.
New Jersey, Englewood Cliffs: Prentice Hall. （于2002年1月由 Dover Publications, Mineola, NY 再版）

{phang}
Press, W. H., B. P. Flannery, S. A. Teukolsky, 和 W. T. Vetterling. 1989.
{it:在 Pascal 中的数值食谱：科学计算的艺术}.
剑桥：剑桥大学出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <minbound.sthlp>}