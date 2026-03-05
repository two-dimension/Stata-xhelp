{smcl}
{* *! version 1.1.7  25sep2018}{...}
{vieweralsosee "[M-3] mata set" "mansection M-3 mataset"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] creturn" "help creturn_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] Intro" "help m3_intro_zh"}{...}
{viewerjumpto "语法" "mata_set_zh##syntax"}{...}
{viewerjumpto "描述" "mata_set_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mata_set_zh##linkspdf"}{...}
{viewerjumpto "选项" "mata_set_zh##option"}{...}
{viewerjumpto "备注" "mata_set_zh##remarks"}
{help mata_set:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-3] mata set} {hline 2}}设置和显示 Mata 系统参数
{p_end}
{p2col:}({mansection M-3 mataset:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
: {cmd:mata} {cmd:query}


{p 8 16 2}
: {cmd:mata} {cmd:set} 
{cmd:matacache}{bind:   }
{it:#} [{cmd:,} {cmdab:perm:anently} ]

{p 8 16 2}
: {cmd:mata} {cmd:set} 
{cmd:matalnum}{bind:    }
{c -(}{cmd:off} | {cmd:on}{c )-}

{p 8 16 2}
: {cmd:mata} {cmd:set} 
{cmd:mataoptimize} {c -(}{cmd:on} | {cmd:off}{c )-}

{p 8 16 2}
: {cmd:mata} {cmd:set} 
{cmd:matafavor}{bind:   }
{c -(}{cmd:space} | {cmd:speed}{c )-}
[{cmd:,} {cmdab:perm:anently} ]

{p 8 16 2}
: {cmd:mata} {cmd:set} 
{cmd:matastrict}{bind:  }
{c -(}{cmd:off} | {cmd:on}{c )-}
[{cmd:,} {cmdab:perm:anently} ]

{p 8 16 2}
: {cmd:mata} {cmd:set} 
{cmd:matalibs}{bind:    }
{cmd:"}{it:libname}{cmd:;}{it:libname}{cmd:;}...{cmd:"}

{p 8 16 2}
: {cmd:mata} {cmd:set} 
{cmd:matamofirst}{bind: }
{c -(}{cmd:off} | {cmd:on}{c )-}
[{cmd:,} {cmdab:perm:anently} ]


{p 4 4 2}
这些命令用于在 Mata 模式下，在 Mata 的冒号提示符后使用。
要在 Stata 的点提示符下使用这些命令，请输入

		. {cmd:mata: mata query}

		. {cmd:mata: mata set} ...


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mata} {cmd:query} 显示 Mata 系统参数的值。

{p 4 4 2}
{cmd:mata} {cmd:set} 设置系统参数的值：

{* index matacache tt}{...}
{p 8 12 2}
{cmd:mata} {cmd:set} {cmd:matacache} 指定在 Mata 开始查找并删除当前未使用的自动加载函数之前，最大可消耗的内存量（以千字节为单位）。默认值为 {cmd:2000}，意味着 2000 千字节。此参数影响 Stata 的运行效率。更大的值无害，但一旦 {cmd:matacache} 足够大，更大的值将不会改善性能。

{* index matalnum tt}{...}
{p 8 12 2}
{cmd:mata} {cmd:set} {cmd:matalnum} 启用或禁用程序行号跟踪 {cmd:on} 或 {cmd:off}。默认设置为 {cmd:off}。此设置修改程序的编译方式。当 {cmd:matalnum} 开启时编译的程序包括代码，以便在程序执行期间发生错误时，行号也会被报告。开启 {cmd:matalnum} 会阻止 Mata 优化程序，因此程序运行会更慢。除非调试，推荐将其设置为关闭。

{* index mataoptimize tt}{...}
{* index optimization}{...}
{p 8 12 2}
{cmd:mata} {cmd:set} {cmd:mataoptimize} 启用或禁用编译时代码优化 {cmd:on} 或 {cmd:off}。默认设置为 {cmd:on}。当 {cmd:mataoptimize} 关闭时编译的程序将运行更慢，并且有时会慢得多。将 {cmd:mataoptimize} 设置为关闭的唯一理由是怀疑优化器存在错误。

{* index matafavor tt}{...}
{p 8 12 2}
{cmd:mata} {cmd:set} {cmd:matafavor} 指定在执行代码时，Mata 是否应优先考虑节省内存 ({cmd:space}) 或快速运行 ({cmd:speed})。默认设置为 {cmd:space}。切换到 {cmd:speed} 会使 Mata 在某些情况下稍微快些，但会消耗更多内存。另请参见 
{bf:{help mf_favorspeed_zh:[M-5] favorspeed()}}。

{* index matastrict tt}{...}
{p 8 12 2}
{cmd:mata} {cmd:set} {cmd:matastrict} 设置是否可以在程序主体内部省略声明。默认设置为 {cmd:off}。如果 {cmd:matastrict} 开启，则编译时省略声明的程序将导致编译错误；
请参见 {bf:{help m2_declarations_zh:[M-2] 声明}}。
{cmd:matastrict} 在 ado 文件内部被设置/重置时表现出意外但令人愉快的行为；请参见 {bf:{help m1_ado_zh:[M-1] ado}}。
    
{* index matalibs tt}{...}
{* index .mlib library files}{...}
{p 8 12 2}
{cmd:mata} {cmd:set} {cmd:matalibs} 设置要搜索的 {cmd:.mlib} 库的名称和顺序；请参见 {bf:{help m1_how_zh:[M-1] 如何}}。
{cmd:matalibs} 通常设置为 {cmd:"lmatabase;lmataado"}。
不论如何设置，通常都是正确的，因为 Mata 在 Stata 会话中第一次调用时会自动搜索库。
如果在会话期间，您在 {help adopath:ado-path} 中删除或复制新的库，则重置 {cmd:matalibs} 的最佳方法是使用 {cmd:mata mlib index} 命令；请参见 {bf:{help mata_mlib_zh:[M-3] mata mlib}}。手动设置 {cmd:matalibs} 唯一的理由是修改库的搜索顺序。

{* index matamofirst tt}{...}
{p 8 12 2}
{cmd:mata} {cmd:set} {cmd:matamofirst}
    指明是优先搜索 {cmd:.mo} 文件还是 {cmd:.mlib} 库。默认设置为 {cmd:off}，意味着优先搜索库。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-3 matasetRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{p 4 8 2}
{cmd:permanently}
    指定除了现在进行更改之外，还要记住该设置，并在您将来调用 Stata 时成为默认设置。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注根据以下标题呈现：

	{help mata_set##remarks1:Mata 的 mata set 和 Stata 的 set 命令之间的关系}
	{help mata_set##remarks2:c() 值}


{marker remarks1}{...}
{title:Mata 的 mata set 和 Stata 的 set 命令之间的关系}

{p 4 4 2}
命令 

	: {cmd:mata set} ...

{p 4 4 2}
从 Mata 的冒号提示符发出，以及命令 

	. {cmd:set} ...

{p 4 4 2}
从 Stata 的点提示符发出是相同的命令，因此您可以以任何方式设置 Mata（甚至 Stata）的系统参数。

{p 4 4 2}
命令 

	: {cmd:mata query} 

{p 4 4 2}
从 Mata 的冒号提示符发出，以及命令 

	. {cmd:query mata}

{p 4 4 2}
从 Stata 的点提示符发出也是相同的命令。


{marker remarks2}{...}
{title:c() 值}

{p 4 4 2}
以下内容与 Stata 的关系大于与 Mata 的关系。

{p 4 4 2}
Stata 的 c 类 {cmd:c()} 包含系统参数和值，以及某些其他常量。{cmd:c()} 值可以在 Stata 中通过宏替换（例如 {cmd:`c(current_date)'}）或在表达式中引用（在这种情况下，可以省略宏引用字符）。Stata 的 {cmd:c()} 也可以通过 Mata 的 {bf:{help mf_c_lc_zh:[M-5] c()}} 函数在 Mata 中使用。

{p 4 4 2}
通过 {cmd:set} 设置的大多数内容可通过 {cmd:c()} 获得，包括 Mata 的设置参数：

{p 8 12 2}
{cmd:c(matacache)} 返回等于缓存大小的数值标量。

{p 8 12 2}
{cmd:c(matalnum)} 返回字符串等于 "{cmd:on}" 或 "{cmd:off}"。

{p 8 12 2}
{cmd:c(mataoptimize)} 返回字符串等于 "{cmd:on}" 或 "{cmd:off}"。

{p 8 12 2}
{cmd:c(matafavor)} 返回字符串等于 "{cmd:space}" 或 "{cmd:speed}"。

{p 8 12 2}
{cmd:c(matastrict)} 返回字符串等于 "{cmd:on}" 或 "{cmd:off}"。

{p 8 12 2}
{cmd:c(matalibs)} 返回以分号分隔的库名称字符串。

{p 8 12 2}
{cmd:c(matamofirst)} 返回字符串等于 "{cmd:on}" 或 "{cmd:off}"。

{p 4 4 2}
以上是 Stata 的说法。相对于 {cmd:c(matacache)}，我们在使用 Mata 的函数时会引用 {cmd:c("matacache")}。不过，这些值的真实用途是在 Stata 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mata_set.sthlp>}