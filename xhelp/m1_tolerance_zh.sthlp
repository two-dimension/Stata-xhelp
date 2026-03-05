{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-1] Tolerance" "mansection M-1 Tolerance"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] epsilon()" "help mf_epsilon_zh"}{...}
{vieweralsosee "[M-5] solve_tol()" "help mf_solve_tol_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] Intro" "help m1_intro_zh"}{...}
{viewerjumpto "Syntax" "m1_tolerance_zh##syntax"}{...}
{viewerjumpto "Description" "m1_tolerance_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m1_tolerance_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m1_tolerance_zh##remarks"}
{help m1_tolerance:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-1] Tolerance} {hline 2}}容差的使用和说明{p_end}
{p2col:}({mansection M-1 Tolerance:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:somefunction}{cmd:(}...{cmd:,}
{it:real scalar tol}{cmd:,}
...{cmd:)}

{p 4 4 2}
其中，关于参数 {it:tol}，

{p 12 22 2}
可选{bind:  }参数 {it:tol} 通常是可选的；不指定 
{it:tol} 相当于指定 {it:tol}=1。

{p 12 22 2}
{it:tol}>0{bind:     }指定 {it:tol}>0 表示要将通常的容差乘以的数值： {it:tol}=2 意味着是通常容差的两倍； {it:tol}=.5 意味着是通常容差的一半。

{p 12 22 2}
{it:tol}<0{bind:     }指定 {it:tol}<0 表示使用容差的负值： {it:tol} = -1e-14 意味着使用 1e-14。

{p 12 22 2}
{it:tol}=0{bind:     }指定 {it:tol}=0 意味着所有数字都按面值计算，无论其与 0 的距离有多近。 唯一的例外是当 {it:tol} 应用于数学上必须大于或等于零的值时。此时，因舍入误差产生的负值视为零。

{p 4 4 2}
默认的容差由公式给出，例如 

		{it:eta} = {cmd:1e-14}

{p 4 4 2}
或

		{it:eta} = {cmd:epsilon(1)}{right:(参见 {bf:{help mf_epsilon_zh:[M-5] epsilon()}})    }

{p 4 4 2}
或

		{it:eta} = {cmd:1000*epsilon(trace(abs(}{it:A}{cmd:))/rows(}{it:A}{cmd:))}

{p 4 4 2}
指定 {it:tol}>0 指定一个值乘以 {it:eta}。指定 {it:tol}<0 表示使用 -{it:tol} 代替 {it:eta}。指定 {it:tol}=0 表示 {it:eta} 被设为 0。

{p 4 4 2}
关于 {it:eta} 的公式及其使用详见
{it:备注}。例如，{it:A} 被声明为奇异，如果其 LU 分解的 {it:U} 的任何对角元素小于或等于 {it:eta}。


{marker description}{...}
{title:描述}

{p 4 4 2}
许多 Mata 中的数值例程提供的结果依赖于容差。Mata 提供默认的容差，但可以被覆盖。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-1 ToleranceRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几个标题：

	{help m1_tolerance##remarks1:问题}
	{help m1_tolerance##remarks2:绝对容差与相对容差}
	{help m1_tolerance##remarks3:指定容差}


{marker remarks1}{...}
{title:问题}

{p 4 4 2}
在许多公式中，零是一个特殊的数字，当这个数字出现时，有时结果无法计算，或者有时需要进行特殊处理。

{p 4 4 2}
问题在于，零 -- 0.00000000000 -- 在数值计算中很少出现。由于舍入误差，原本应为零的情况在精确计算下实际上是 1.03948e-15，或 -4.4376e-16 等等。

{p 4 4 2}
如果按照这些小数字看作它们看起来的样子（1.03948e-15 被视为 1.03948e-15 而不是零），某些公式会产生极为不准确的结果；请参见 {bf:{help mf_lusolve_zh:[M-5] lusolve()}} 以获取示例。

{p 4 4 2}
因此，例程使用 {it:容差} -- 预设的数字 -- 来决定一个数字何时足够小以被视为零。

{p 4 4 2}
容差的问题在于确定它们应该是什么。


{marker remarks2}{...}
{title:绝对容差与相对容差}

{p 4 4 2}
容差有两种类型：绝对和相对。

{p 4 4 2}
绝对容差是一个固定的数字，用于进行直接比较。如果某个例程的容差为 1e-14，那么在某些计算中，8.99e-15 将被视为足够接近零而被当作零来处理，而 1.000001e-14 将被视为有效的非零数字。

{p 4 4 2}
但 1e-14 小吗？这个数字在你看来可能小，但是否 1e-14 小取决于所测量的内容及其测量单位。如果某个问题中的所有数字都在 1e-12 左右，你可能会怀疑 1e-14 是一个合适的数字。

{p 4 4 2}
这引出了相对容差。与其将某个预定的数量视为小到足以被认为是零，不如指定一个值（例如，1e-14）乘以某个东西，并将其作为小的定义。

{p 4 4 2}
考虑以下矩阵：

		+-                  -+
		| 5.5e-15    1.2e-16 |
		| 1.3e-16    6.4e-15 |
		+-                  -+

{p 4 4 2}
这个矩阵的秩是什么？  
一种回答这个问题的方法是进行矩阵的 LU 分解，然后计算 {it:U} 的对角元素中大于零的数量。但是，此处我们将只查看这个矩阵。

{p 4 4 2}
绝对主义的观点认为该矩阵充满了舍入误差，实际上这个矩阵与矩阵

		+-                  -+
		|     0          0   |
		|     0          0   |
		+-                  -+

是无法区分的。

{p 4 4 2}
这个矩阵的秩为 0。相对主义的观点认为该矩阵的秩为 2，因为，除了一个规模因子 1e-16 外，这个矩阵与

		+-                  -+
		|   55.0        1.2  |
		|    1.3       64.0  |
		+-                  -+

是无法区分的。

{p 4 4 2}
在没有告知你矩阵是如何产生的以及测量单位之前，这个问题是无法回答的。

{p 4 4 2}
尽管如此，大多数 Mata 例程（默认情况下）会采纳相对主义的观点：该矩阵的秩是满的。这是因为大多数 Mata 例程使用相对容差的措施，之所以选择这种方法是因为大多数使用 Mata 的人进行统计计算，倾向于在数据矩阵上进行 {it:X}{bf:'}{it:X} 和 {it:X}{bf:'}{it:Z} 等计算，因而结果矩阵中可以包含非常大的数字。此类矩阵可能包含

		+-                  -+
		| 5.5e+14    1.2e+12 |
		| 1.3e+13    2.4e+13 |
		+-                  -+

{p 4 4 2}
考虑到一个具有如此大元素的矩阵，人们很容易改变对小数字的看法。计算以下矩阵的秩：

		+-                             -+
		| 5.5e+14    1.2e+12    1.5e-04 |
		| 1.3e+13    2.4e+13    2.8e-05 |
		| 1.3e-04    2.4e-05    8.7e-05 |
		+-                             -+

{p 4 4 2}
这次我们将正确处理这个问题：我们将进行 LU 分解并计算 {it:U} 的对角线上的非零元素数量。对于上述矩阵，{it:U} 对角线的结果是 (5.5e+14, 2.4e+13,
.000087)。

{p 4 4 2}
绝对主义者会告诉你该矩阵的秩是满的；{it:U} 对角线上的最小数字是 .000087 (8.7e-5)，这仍然是一个合理的数字，至少与计算机精度相比，计算机的精度大约是 2.22e-16（见 {bf:{help mf_epsilon_zh:[M-5] epsilon()}}）。

{p 4 4 2}
大多数 Mata 例程会告诉你该矩阵的秩为 2。像 .000087 这样的数字在与机器精度相比时可能看起来是合理的，但 .000087 在相对上是一个非常小的数字，相对于对角元素的平均值大约是 4.6e-19。


{marker remarks3}{...}
{title:指定容差}

{p 4 4 2}
大多数 Mata 例程使用相对容差，但没有硬性规定。你必须阅读你所使用的函数的文档。

{p 4 4 2}
当某个函数的容差条目指引你到此处时，{bf:[M-1] Tolerance}，那么容差的工作方式如上述 {it:{help m1_tolerance##syntax:语法}} 所总结的那样。指定一个正数，该数字将乘以默认值；指定一个负数，则使用相应的正数代替默认值。  
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m1_tolerance.sthlp>}