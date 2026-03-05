{smcl}
{* *! version 1.1.5  19oct2017}{...}
{vieweralsosee "[R] set rng" "mansection R setrng"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FN] 随机数函数" "help random_number_functions_zh"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{vieweralsosee "[R] set rngstream" "help set_rngstream_zh"}{...}
{vieweralsosee "[R] set seed" "help set_seed_zh"}{...}
{vieweralsosee "[P] version" "help version_zh"}{...}
{viewerjumpto "语法" "set_rng_zh##syntax"}{...}
{viewerjumpto "描述" "set_rng_zh##description"}{...}
{viewerjumpto "PDF文档链接" "set_rng_zh##linkspdf"}{...}
{viewerjumpto "注意事项" "set_rng_zh##remarks"}{...}
{viewerjumpto "参考资料" "set_rng_zh##reference"}
{help set_rng:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] set rng} {hline 2}}设置使用的随机数生成器（RNG）{p_end}
{p2col:}({mansection R setrng:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:set}
{cmd:rng}
{c -(}{cmd:default} |
      {cmd:mt64} |
      {cmd:mt64s} |
      {cmd:kiss32}{c )-}


{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:rng} 用于确定Stata的{help random:随机数函数}和命令将使用哪种随机数生成器（RNG）。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R setrngRemarksandexamples:备注和示例}

{pstd}
上述章节未包含在此帮助文件中。


{marker remarks}{...}
{title:注意事项}

{pstd}
注意事项按照以下标题呈现：

	{help set_rng##intro:介绍}
        {help set_rng##rngs:Stata中的随机数生成器}


{marker intro}{...}
{title:介绍}

{pstd}
默认情况下，Stata使用64位梅森旋转（{cmd:mt64}）RNG。
{cmd:mt64s}是基于64位梅森旋转的流RNG。 Stata的早期版本使用32位KISS（保持简单傻瓜）({cmd:kiss32}) RNG。

{pstd}
使用{cmd:set rng default}（默认选项），在{help version_zh:版本控制}下运行的代码将自动使用适当的RNG -- Stata 14及更高版本中的{cmd:mt64}，以及早期代码中的{cmd:kiss32}。

{pstd}
{cmd:set rng}的作用范围为设置了{cmd:rng}的Stata会话、do文件或程序。

{pstd}
除非您希望在Stata的不同实例中同时生成随机数，我们建议您不要更改Stata的RNG默认行为。有关在Stata的不同实例中同时生成随机数的介绍，请参见{manhelp set_rngstream R:set rngstream}。

{pstd}
有关更多信息，请参见{manhelp random_number_functions FN:随机数函数}、{manhelp set_seed R:set seed}和{manhelp set_rngstream R:set rngstream}。


{marker rngs}{...}
{title:Stata中的随机数生成器}

{pstd}
Stata中的默认RNG是64位梅森旋转。有关更多详细信息，请参见{help set rng##MN1998:Matsumoto和Nishimura（1998）}。 Stata 13及更早版本的默认RNG是George Marsaglia的32位KISS生成器（G. Marsaglia，1994，个人通信）。 KISS生成器仍可通过版本控制或{cmd:set rng}访问。支持多条独立的随机数流（基于64位梅森旋转），用于在多个同时的Stata实例中使用；有关更多信息，请参见{manhelp set_rngstream R:set rngstream}。在Stata命令和函数中，分别使用{cmd:mt64}、{cmd:kiss32}和{cmd:mt64s}来指定这三种生成器。

{pstd}
到目前为止，我们讨论了两种指定RNG的方法：通过{cmd:set rng}和版本控制。指定RNG的另一种方法是使用明确以生成器命名的函数和系统参数。实际上，所有随机数函数都有显式以每个生成器命名的变体，使用生成器缩写作为后缀。例如，{cmd:runiform_mt64()}、{cmd:runiform_kiss32()}和{cmd:runiform_mt64s()}是{helpb runiform()}在每个生成器下的变体。类似地，我们有{cmd:rnormal_mt64()}、{cmd:rnormal_kiss32()}、{cmd:rnormal_mt64s()}等。

{pstd}
系统参数{helpb seed}和{helpb rngstate}也有明确以每个生成器命名的变体：{cmd:seed_mt64}、{cmd:seed_kiss32}、{cmd:seed_mt64s}、{cmd:rngstate_mt64}、{cmd:rngstate_kiss32}和{cmd:rngstate_mt64s}。

{pstd}
例如，这里是如何使用特定于{cmd:mt64}的函数和参数来设置种子、生成随机数、保存状态、生成更多数字和恢复先前保存的状态的示例：

{p 12 12 2}
       {cmd:. set seed_mt64 482637}

{p 12 12 2}
       {cmd:. generate u = runiform_mt64()}

{p 12 12 2}
       {cmd:. local state = c(rngstate_mt64)}

{p 12 12 2}
       {cmd:. generate l = rlogistic_mt64()}

{p 12 12 2}
       {cmd:. set rngstate_mt64 `state'}

{pstd}
请注意，调用特定于，比如说，{cmd:kiss32}的函数和设置参数不会更改当前RNG、当前RNG的种子或当前RNG的状态 -- 除非当前RNG是{cmd:kiss32}。


{marker reference}{...}
{title:参考资料}

{marker MN1998}{...}
{phang}
Matsumoto, M., 和 T. Nishimura. 1998. 梅森旋转：一种623维均匀伪随机数生成器。
{it:ACM事务建模与计算机仿真} 8: 3-30。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_rng.sthlp>}