{smcl}
{* *! version 1.0.4  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_doppelganger_zh##syntax"}{...}
{viewerjumpto "Description" "m2_doppelganger_zh##description"}{...}
{viewerjumpto "Remarks" "m2_doppelganger_zh##remarks"}
{help m2_doppelganger:English Version}
{hline}{...}
{title:标题}

{phang}
{bf:[M-2] doppelganger} {hline 2} 内置函数的幽灵库双重


{marker syntax}{...}
{title:语法}

	{{cmd:function} | {it:type}} {cmd:(doppelganger)} {...}
{it:functionname}{cmd:(}...{cmd:)}
	{cmd:{c -(}}
		....
	{cmd:{c )-}}


{marker description}{...}
{title:描述}

{p 4 4 2}
    Doppelganger 是 StataCorp 用来保持版本间兼容性的一种工具。
    它们没有其他用途。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
    假设你在 StataCorp 工作，负责改进 Mata 函数 {bf:{help mf_sin_zh:sinh()}}。 
    你发现 {cmd:sinh()} 当前是一个库函数，意味着 {cmd:sinh()} 的代码本身是用 Mata 编写的。经过仔细考虑后，你决定将 {cmd:sinh()} 从库函数转为用 C 编写的内置函数。如果你这样做，还需要创建 {cmd:sinh()} 的一个 doppelganger，以便包括在库中，其内容为

	{cmd}numeric matrix (doppelganger) sinh(Z) return(sinh(Z)){txt}

{p 4 4 2}
    你必须这样做，以便在你将改动发布给 Stata 用户时，他们不需要重新编译任何已编写的使用 {cmd:sinh()} 函数的现有 Mata 代码。

{p 4 4 2}
    在你将新的内置函数 {cmd:sinh()} 安装到 Mata 后，Mata 编译器会在 Mata 代码中每次使用该函数时，链接到你新的内置函数。在此之前，编译器已将 {it:call} 链接到名为 "{cmd:sinh}" 的外部函数。

{p 4 4 2}
    Mata 之前的做法很重要，因为没有重新编译其 Mata 源代码的 Mata 用户，仍会在他们的旧编译代码中调用名为 "{cmd:sinh}" 的外部函数。你可能会倾向于将旧的 {cmd:sinh()} 代码留在库中以应对这种情况，但这样做存在两个问题：1）仅仅因为用户没有重新编译，他们仍然希望能够受益于你的改进；2）Mata 本身不会允许你这样做。下次当 StataCorp 的某个人尝试重新编译包含旧 {cmd:sinh()} 代码的库时，Mata 会发出错误，通知该函数 {cmd:sinh()} 是内置函数，因此库函数不能以相同的名称进行编译。

{p 4 4 2}
    指令 {cmd:doppelganger} 告诉 Mata，你希望 Mata 反向检查，即验证确实存在同名的内置函数，然后继续编译同名的函数。在我们的例子中，该函数为

	{cmd}numeric matrix (doppelganger) sinh(Z) return(sinh(Z)){txt}

{p 4 4 2}
    因此 doppelganger {cmd:sinh(Z)} 的整个代码为 {cmd:return(sinh(Z))}。代码右侧的 {cmd:sinh()} 被解释为你编写的新内置函数的链接，因为现代 Mata 只能以此方式解释。因此，该语句的意义在于，若执行调用名为 "{cmd:sinh}" 的库函数，则结果是执行内置的 {cmd:sinh()}。

{p 4 4 2}
    由于现代 Mata 无法将 {cmd:sinh()} 的调用解释为其他含义，除了执行内置的 {cmd:sinh()}，因此没有现代代码将会调用 doppelganger {cmd:sinh()}。doppelganger 只会被未重新编译的旧代码调用。随着时间的推移，越来越多的代码将在更现代的 Stata 中被重新编译，doppelganger 的使用将会减少，最终消失。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_doppelganger.sthlp>}