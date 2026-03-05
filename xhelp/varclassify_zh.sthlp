{smcl}
{* *! version 1.0.0  15jun2019}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee vl "help vl"}{...}
{viewerjumpto "Syntax" "varclassify_zh##syntax"}{...}
{viewerjumpto "Description" "varclassify_zh##description"}{...}
{viewerjumpto "Options" "varclassify_zh##options"}{...}
{viewerjumpto "Remarks" "varclassify_zh##remarks"}{...}
{viewerjumpto "Stored results" "varclassify_zh##results"}
{help varclassify:English Version}
{hline}{...}
{title:标题}

{p2colset 5 24 26 2}{...}
{p2col:{hi:[P] varclassify} {hline 2}}将单个变量分类为分类变量或非分类变量{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:varclassify} {varname} {ifin} [{cmd:,} 
{opt cat:egorical(#)}
{opt uncer:tain(#)}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:varclassify} 用于对数值变量进行分类。该命令不会显示任何输出；分类结果可通过
{helpb varclassify##results:r(class)} 获得。


{marker options}{...}
{title:选项}

{phang}
{opt categorical(#)} 指定分类为 {cmd:categorical} 的变量的最大类别数。如果变量的非缺失值都是非负整数，并且不同值的数量小于或等于 {it:#}，则该变量将被分类为 {cmd:categorical}。默认为 {cmd:categorical(10)}。

{phang}
{opt uncertain(#)} 指定分类为 {cmd:uncertain} 的变量的最大类别数。如果变量的非缺失值都是非负整数，并且不同值数量小于或等于 {it:#} 且大于 {opt categorical(#)}，则该变量将被分类为 {cmd:uncertain}。默认为 {cmd:uncertain(100)}。如果指定 {cmd:uncertain(0)} 或者 {opt uncertain(#)} 其中 {it:#} 等于 {opt categorical(#)}，则没有变量会被分类为 {cmd:uncertain}。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:varclassify} 将一个数值变量的分类结果存储在 {cmd:r(class)} 中，包括 {cmd:categorical}、{cmd:uncertain}、{cmd:continuous integer}、{cmd:noninteger}、{cmd:negative}、{cmd:big}（一个或多个值大于 2,147,483,647，即因子变量的最大值）、{cmd:constant} 或 {cmd:all missing}。要被分类为 {cmd:categorical}、{cmd:uncertain} 或 {cmd:continuous integer}，值必须是非负整数，分类的界限由选项 {opt categorical(#)} 和 {opt uncertain(#)} 定义。分类为 {cmd:categorical} 旨在表示用户认为该变量适合用于特定分析的因子变量。分类为 {cmd:uncertain} 表示该变量可能适合或可能不适合用作因子变量。

{pstd}
分类是按照下面的 {it:存储结果} 中显示的顺序进行的。例如，同时具有非整数值和负值的变量将被分类为 {cmd:noninteger}。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:varclassify} 将以下内容存储在 {cmd:r()} 中：

{synoptset 12 tabbed}{...}
{p2col 5 12 14 2: 标量}{p_end}
{synopt:{cmd:r(N)}}非缺失观测数{p_end}
{synopt:{cmd:r(r)}}类别数量当 {ul:<} {opt uncertain(#)}；否则，{cmd:r(r)} 不被计算{p_end}
{synopt:{cmd:r(bound)}}类别数 > {cmd:r(bound)} 当 {cmd:r(class)} 为 {cmd:continuous integer} 时；否则，不设置{p_end}
{synopt:{cmd:r(min)}}最小值{p_end}
{synopt:{cmd:r(max)}}最大值{p_end}
{synopt:{cmd:r(mean)}}均值{p_end}
{synopt:{cmd:r(sum)}}总和{p_end}
{p2colreset}{...}

{synoptset 12 tabbed}{...}
{p2col 5 12 14 2: 宏}{p_end}
{synopt:{cmd:r(class)}}{cmd:all missing} 当所有值均缺失时{p_end}
{synopt:}{cmd:constant} 当所有非缺失值相同时{p_end}
{synopt:}{cmd:noninteger} 当存在一个或多个非整数值时{p_end}
{synopt:}{cmd:negative} 当存在一个或多个负值时{p_end}
{synopt:}{cmd:big} 当一个或多个值 > 2,147,483,647 (2^32 - 1) 时{p_end}
{synopt:}{cmd:categorical} 当值为非负整数且不同值的数量 {ul:<} {opt categorical(#)} 时{p_end}
{synopt:}{cmd:uncertain} 当值为非负整数且不同值的数量 > {opt categorical(#)} 且 {ul:<} {opt uncertain(#)} 时{p_end}
{synopt:}{cmd:continuous integer} 当值为非负整数且不同值的数量 > {opt uncertain(#)} 时{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <varclassify.sthlp>}