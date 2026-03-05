{smcl}
{* *! version 1.0.1  13oct2015}{...}
{* 基于版本 1.1.13  30dec2014 的 ci.sthlp}{...}
{vieweralsosee "之前文档记录" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ameans" "help ameans_zh"}{...}
{vieweralsosee "[R] bitest" "help bitest_zh"}{...}
{vieweralsosee "[R] centile" "help centile_zh"}{...}
{vieweralsosee "[D] pctile" "help pctile_zh"}{...}
{vieweralsosee "[R] prtest" "help prtest_zh"}{...}
{vieweralsosee "[R] summarize" "help summarize_zh"}{...}
{vieweralsosee "[R] ttest" "help ttest_zh"}{...}
{viewerjumpto "语法" "ci_14_0_zh##syntax"}{...}
{viewerjumpto "菜单" "ci_14_0_zh##menu"}{...}
{viewerjumpto "描述" "ci_14_0_zh##description"}{...}
{viewerjumpto "选项" "ci_14_0_zh##options"}{...}
{viewerjumpto "示例" "ci_14_0_zh##examples"}{...}
{viewerjumpto "视频示例" "ci_14_0_zh##video"}{...}
{viewerjumpto "存储结果" "ci_14_0_zh##results"}{...}
{viewerjumpto "参考文献" "ci_14_0_zh##references"}
{help ci_14_0:English Version}
{hline}{...}
{title:标题}

{p2colset 5 15 17 2}{...}
{p2col :{hi:[R] ci} {hline 2}}均值、比例和计数的置信区间（版本 14.1 之前的语法）{p_end}
{p2colreset}{...}


{p 12 12 8}
{it}[{bf:ci} 和 {bf:cii} 的语法自版本 14.1 起已更改。此帮助文件记录了 {cmd:ci} 和 {cmd:cii} 的旧语法，因此可能对您没有兴趣。如果您在旧的 do 文件中将 {help version_zh} 设置为小于 14.1，则无需将 {cmd:ci} 或 {cmd:cii} 转换为现代语法。此帮助文件是为希望调试或理解旧代码的用户提供的。单击 {help ci_zh:这里} 以获取现代 {cmd:ci} 和 {cmd:cii} 命令的帮助文件。]{rm}


{marker syntax}{...}
{title:语法}

{phang}ci 的语法

{p 8 11 2}
{cmd:ci} [{varlist}] 
{ifin}
[{it:{help ci_14_0##weight:weight}}]
[{cmd:,} {it:{help ci_14_0##table_options:options}}]


{phang}用于正态分布变量的直接命令

{p 8 12 2}
{cmd:cii} {it:#obs} {it:#mean} {it:#sd} [{cmd:,} 
{it:{help ci_14_0##ciin_option:ciin_option}}] 


{phang}用于二项分布变量的直接命令

{p 8 12 2}
{cmd:cii} {it:#obs} {it:#succ} [{cmd:,}
{it:{help ci_14_0##ciib_options:ciib_options}}] 


{phang}用于泊松分布变量的直接命令

{p 8 12 2}
{cmd:cii} {it:#exposure} {it:#events} {cmd:,} {cmdab:p:oisson} 
[{it:{help ci_14_0##ciip_options:ciip_options}}] 


{phang}
{it:#succ} 和 {it:#events} 必须是整数或在 0 和 1 之间。如果数字在 0 与 1 之间，Stata 将其视为成功或事件的比例，并将其转换为代表成功或事件数量的整数。然后计算将像指定两个整数一样进行。


{synoptset 21 tabbed}{...}
{marker table_options}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opt b:inomial}}二项 0/1 变量; 计算精准置信区间{p_end}
{synopt :{opt p:oisson}}泊松变量; 计算精准置信区间{p_end}
{synopt :{opth exp:osure(varname)}}暴露变量; 
意味着 {opt poisson}{p_end}
{synopt :{opt exa:ct}}计算精准置信区间; 默认值{p_end}
{synopt :{opt wa:ld}}计算 Wald 置信区间{p_end}
{synopt :{opt w:ilson}}计算 Wilson 置信区间{p_end}
{synopt :{opt a:gresti}}计算 Agresti-Coull 置信区间{p_end}
{synopt :{opt j:effreys}}计算 Jeffreys 置信区间{p_end}
{synopt :{opt t:otal}}添加所有组的合并输出（仅用于 {opt by}）{p_end}
{synopt :{opt sep:arator(#)}}在每 {it:#} 变量后绘制分隔线; 默认值为 {cmd:separator(5)}{p_end}
{synopt :{opt l:evel(#)}}设置置信水平; 默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt by} 和 {opt statsby} 可与 {cmd:ci} 一起使用; 见 {help prefix_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt aweight}s 和 {opt fweight}s 是允许的，但 {opt aweight}s 不能与 {opt binomial} 或 {opt poisson} 选项一同指定，见 {help weight_zh}。
{p_end}

{synoptset 21}{...}
{marker ciin_option}{...}
{synopthdr :ciin_option}
{synoptline}
{synopt :{opt l:evel(#)}}设置置信水平; 默认值为 {cmd:level(95)}{p_end}
{p2line}
{p2colreset}{...}

{synoptset 21}{...}
{marker ciib_options}{...}
{synopthdr :ciib_options}
{synoptline}
{synopt :{opt l:evel(#)}}设置置信水平; 默认值为 {cmd:level(95)}{p_end}
{synopt :{opt exa:ct}}计算精准置信区间; 默认值{p_end}
{synopt :{opt wa:ld}}计算 Wald 置信区间{p_end}
{synopt :{opt w:ilson}}计算 Wilson 置信区间{p_end}
{synopt :{opt a:gresti}}计算 Agresti-Coull 置信区间{p_end}
{synopt :{opt j:effreys}}计算 Jeffreys 置信区间{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 21 tabbed}{...}
{marker ciip_options}{...}
{synopthdr :ciip_options}
{synoptline}
{p2coldent :* {opt p:oisson}}数字为泊松分布计数{p_end}
{synopt :{opt l:evel(#)}}设置置信水平; 默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt poisson} 是必需的。


{marker menu}{...}
{title:菜单}

    {title:ci} 

{phang2}
{bf:统计 > 摘要、表和测试 >}
     {bf:摘要和描述统计 > 置信区间}

    {title:cii 用于正态分布的变量}

{phang2}
{bf:统计 > 摘要、表和测试 >}
      {bf:摘要和描述统计 > 正态 CI 计算器}

    {title:cii 用于二项分布的变量}

{phang2}
{bf:统计 > 摘要、表和测试 >}
       {bf:摘要和描述统计 > 二项 CI 计算器}

    {title:cii 用于泊松分布的变量}

{phang2}
{bf:统计 > 摘要、表和测试 >}
        {bf:摘要和描述统计 > 泊松 CI 计算器}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ci} 计算 {varlist} 中每个变量的标准误差和置信区间。
默认情况下会生成正常置信区间。
但是，可以请求各种二项置信区间或精准的泊松置信区间。

{pstd}
{cmd:cii} 是 {cmd:ci} 的即时形式；请参阅 {help immed_zh} 以获取关于即时命令的常规讨论。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt binomial} 告诉 {cmd:ci} 变量是 0/1 变量，并且将计算二项置信区间。 ({cmd:cii} 当只指定两个数字时会生成二项置信区间。)

{phang}
{opt poisson} 指定变量（或 {cmd:cii} 的数字）为泊松分布计数；将计算精准的泊松置信区间。

{phang}
{opth exposure(varname)} 仅与 {opt poisson} 一起使用。如果指定 {opt exposure()}，则不需要指定 {opt poisson}；假定使用 {opt poisson}。{it:varname} 包含指观察到的事件数量所经历的总暴露（通常是时间或面积）。

{phang}
{opt exact}、{opt wald}、{opt wilson}、{opt agresti} 和 {opt jeffreys} 指定变量为 0/1，并指定二项置信区间的计算方式。

{pmore}
{opt exact} 是默认设置，指定精确的（文献中也称为 Clopper-Pearson [{help ci_14_0##CP1934:1934}]) 二项置信区间。

{pmore}
{opt wald} 指定计算 Wald 置信区间。

{pmore}
{opt wilson} 指定计算 Wilson 置信区间。

{pmore}
{opt agresti} 指定计算 Agresti-Coull 置信区间。

{pmore}
{opt jeffreys} 指定计算 Jeffreys 置信区间。

{pmore}
请参阅 {help ci_14_0##BCD2001:Brown, Cai, and DasGupta (2001)} 以获取对不同二项置信区间的讨论和比较。

{phang}
{opt total} 用于 {opt by} 前缀。它要求除了每个 by 组的输出外，还要添加所有组的合并输出。

{phang}
{opt separator(#)} 指定应在输出中插入分隔线的频率。默认值为 {cmd:separator(5)}，意味着在每五个变量后绘制一条线。 {cmd:separator(10)} 将在每十个变量后绘制线。 {cmd:separator(0)} 抑制分隔线。

{phang}
{opt level(#)} 指定置信区间的置信水平，百分比形式。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置的值。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}获取正态分布变量均值的 90% 置信区间的正态近似{p_end}
{phang2}{cmd:. ci mpg price, level(90)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse promonone}

{pstd}获取比例的各种二项置信区间{p_end}
{phang2}{cmd:. ci promoted, binomial}{p_end}
{phang2}{cmd:. ci promoted, binomial wilson}{p_end}
{phang2}{cmd:. ci promoted, binomial agresti}{p_end}
{phang2}{cmd:. ci promoted, binomial jeffreys}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse petri}

{pstd}获取计数变量的精准泊松置信区间{p_end}
{phang2}{cmd:. ci count, poisson}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse rm}{p_end}

{pstd}获取总暴露变量的置信区间{p_end}
{phang2}{cmd:. ci deaths, exposure(pyears)}

{pstd}获取 166 个观测值、均值=19509 和标准差=4379 的数据的均值置信区间{p_end}
{phang2}{cmd:. cii 166 19509 4379}

{pstd}与上述相同，但获取 90% 置信区间{p_end}
{phang2}{cmd:. cii 166 19509 4379, level(90)}

{pstd}获取 10 个二项事件和 1 个观察到的成功的数据的二项置信区间{p_end}
{phang2}{cmd:. cii 10 1}

{pstd}与上述相同，但获取 Wilson 置信区间{p_end}
{phang2}{cmd:. cii 10 1, wilson}

{pstd}获取 1 次暴露和 27 次事件的数据的泊松置信区间{p_end}
{phang2}{cmd:. cii 1 27, poisson}{p_end}
    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=vQab7Ot4qnE":Stata 中的即时命令：泊松数据的置信区间}

{phang}
{browse "http://www.youtube.com/watch?v=eaUs_LLV6gw":Stata 中的即时命令：二项数据的置信区间}

{phang}
{browse "http://www.youtube.com/watch?v=fFVBIpHY-RY":Stata 中的即时命令：正态数据的置信区间}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:ci} 和 {cmd:cii} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测值或暴露数量{p_end}
{synopt:{cmd:r(mean)}}均值{p_end}
{synopt:{cmd:r(se)}}标准误差的估计{p_end}
{synopt:{cmd:r(lb)}}置信区间的下限{p_end}
{synopt:{cmd:r(ub)}}置信区间的上限{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker BCD2001}{...}
{phang}
Brown, L. D., T. T. Cai, 和 A. DasGupta. 2001.  
二项比例的区间估计。 
{it:统计科学} 16: 101-133.

{marker CP1934}{...}
{phang}
Clopper, C. J., 和 E. S. Pearson. 1934.  
信心或保留限制的使用， 以二项的案例进行说明。  
{it:生物计量学} 26: 404-413.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ci_14_0.sthlp>}