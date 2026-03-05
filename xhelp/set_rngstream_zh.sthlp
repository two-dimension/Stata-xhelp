{smcl}
{* *! version 1.0.7  05feb2019}{...}
{vieweralsosee "[R] set rngstream" "mansection R setrngstream"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] clear" "help clear_zh"}{...}
{vieweralsosee "[FN] 随机数函数" "help random_number_functions_zh"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{vieweralsosee "[R] set rng" "help set_rng_zh"}{...}
{vieweralsosee "[R] set seed" "help set_seed_zh"}{...}
{viewerjumpto "语法" "set_rngstream_zh##syntax"}{...}
{viewerjumpto "描述" "set_rngstream_zh##description"}{...}
{viewerjumpto "PDF文档链接" "set_rngstream_zh##linkspdf"}{...}
{viewerjumpto "备注" "set_rngstream_zh##remarks"}{...}
{viewerjumpto "示例" "set_rngstream_zh##examples"}{...}
{viewerjumpto "参考文献" "set_rngstream_zh##reference"}
{help set_rngstream:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[R] set rngstream} {hline 2}}指定流随机数生成器的流{p_end}
{p2col:}({mansection R setrngstream:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{marker rngstream}{...}
{cmd:set rngstream} {it:#}

{phang}
{it:#} 是介于 1 到 32,767 之间的任何整数。


{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:rngstream} 指定Stata流随机数生成器应从中提取随机数的子序列，称为流。
在多个机器上并行执行自助估计或蒙特卡洛模拟时，应在所有机器上设置相同的种子，但在每台机器上设置不同的流。这将确保在不同机器上提取的随机数互不相关。我们强烈建议您在每个Stata会话中仅设置一次种子和流。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R setrngstreamRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
Stata的流随机数生成器，流64位梅森旋转器({cmd:mt64s})，允许Stata的独立实例同时提取独立的随机数。此功能使您能够使用{help bootstrap_zh}并在多台机器上并行运行蒙特卡洛模拟。

{pstd}
我们所称的随机数是一个确定性数字序列中的元素，这些数字看起来是随机的。种子指定该序列中的起始值。

{pstd}
流随机数生成器将随机数字序列划分为称为流的不重叠子序列。每个流中的随机数字与其他流中的数字是独立的，因为它们来自原始序列的不同非重叠子集。

{pstd}
与非流随机数生成器相比，为随机数生成器设置种子不仅控制序列的起始位置，还控制序列的划分方式。

{pstd}
{cmd:mt64s}生成器是Stata默认生成器的流版本，64位梅森旋转器在{cmd:mt64}中实现；请参见{help set rngstream##HM2008:Haramoto et al. (2008)}和{helpb set rng}以获取更多详细信息。我们的实现将{cmd:mt64}序列划分为32,767个流，每个流包含2^128个随机数字。其余数字未使用。{cmd:mt64s}种子决定梅森旋转器序列中每个流的起始位置。

{pstd}
{cmd:mt64s}的流1与{cmd:mt64}生成器具有相同的起始点。也就是说，在具有相同种子的情况下，{cmd:mt64s}与{cmd:rngstream}设置为1时将生成与{cmd:mt64}相同的随机数。

{pstd}
{cmd:mt64s}生成器设计用于在不同机器上同时提取独立随机数。要从不同的流中提取以确保独立性，请使用相同的种子并更改流。例如，要从种子123下的{cmd:mt64s}生成器的流10中提取一些uniform(0,1)随机数，请输入

{p 12 12 2}
{cmd:. set rng mt64s}

{p 12 12 2}
{cmd:. set rngstream 10}

{p 12 12 2}
{cmd:. set seed 123}

{p 12 12 2}
{cmd:. generate u = runiform()}

{pstd}
如果我们想在另一台机器上从{cmd:mt64s}生成器的流11同时提取一些uniform(0,1)随机数，我们将输入

{p 12 12 2}
{cmd:. set rng mt64s}

{p 12 12 2}
{cmd:. set rngstream 11}

{p 12 12 2}
{cmd:. set seed 123}

{p 12 12 2}
{cmd:. generate u = runiform()}

{pstd}
同样，每个种子都会将{cmd:mt64}序列划分为不同的非重叠子集。

{pstd}
我们强烈建议您在每个Stata会话中仅设置一次流和种子，并仅从该流中提取数字。

{pstd}
{cmd:c(rngstream)}返回当前的流号。{cmd:c(rngseed_mt64s)}返回最近为{cmd:mt64s}设置的种子。有关更多详细信息，请参见{help creturn_zh}。有关存储和恢复随机序列中当前位置的详细信息，请参见{helpb set seed}。

{pstd}
与单流生成器一样，使用{cmd:local state = c(rngstate)}存储当前在当前随机流中的位置；有关详细信息，请参见{helpb set seed}。{cmd:mt64s}状态包含除流号外，还编码所使用的种子，因为种子决定了每个流中每个随机数的位置。与单流生成器的情况不同，恢复状态还会恢复种子。例如，假设您使用{cmd:local state = c(rngstate)}保存一个{cmd:mt64s}状态，改变种子和流，然后稍后使用{cmd:set rngstate `state'}恢复该状态。当前{cmd:mt64s}种子将更改为{cmd:state}中编码的种子。此外，当前流将更改为{cmd:state}中编码的流。这种行为确保任何后续流变化均从非重叠子集中提取。

{pstd}
{cmd:set rngstream} 还将 {help set_rng_zh:随机数生成器} 设置为 {cmd:mt64s}。


{marker examples}{...}
{title:示例}

{pstd}在机器1上执行100次自助复制{p_end}
{phang2}{cmd:. clear all}{p_end}
{phang2}{cmd:. webuse auto}{p_end}
{phang2}{cmd:. set rng mt64s}{p_end}
{phang2}{cmd:. set rngstream 1}{p_end}
{phang2}{cmd:. set seed 12345}{p_end}
{phang2}{cmd:. bootstrap, reps(100) saving(machine1, replace): regress mpg weight gear foreign}

{pstd}在机器2上执行100次自助复制{p_end}
{phang2}{cmd:. clear all}{p_end}
{phang2}{cmd:. webuse auto}{p_end}
{phang2}{cmd:. set rng mt64s}{p_end}
{phang2}{cmd:. set rngstream 2}{p_end}
{phang2}{cmd:. set seed 12345}{p_end}
{phang2}{cmd:. bootstrap, reps(100) saving(machine2, replace): regress mpg weight gear foreign}

{pstd}在将{cmd:machine2.dta}从机器2复制到机器1的工作目录后，生成合并结果{p_end}
{phang2}{cmd:. clear all}{p_end}
{phang2}{cmd:. use machine1}{p_end}
{phang2}{cmd:. append using machine2}{p_end}
{phang2}{cmd:. bstat}{p_end}


{marker reference}{...}
{title:参考文献}

{marker HM2008}{...}
{phang}
Haramoto, H., M. Matsumoto, T. Nishimura, F. Panneton, 和 P. L'Ecuyer.
2008. 对F^2线性随机数生成器的有效跳跃。
{it:INFORMS Journal on Computing} 20: 385-390。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_rngstream.sthlp>}