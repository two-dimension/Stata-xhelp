{smcl}
{* *! version 1.1.18  23jan2019}{...}
{viewerdialog permute "dialog permute"}{...}
{vieweralsosee "[R] permute" "mansection R permute"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bootstrap" "help bootstrap_zh"}{...}
{vieweralsosee "[R] jackknife" "help jackknife_zh"}{...}
{vieweralsosee "[R] simulate" "help simulate_zh"}{...}
{viewerjumpto "语法" "permute_zh##syntax"}{...}
{viewerjumpto "菜单" "permute_zh##menu"}{...}
{viewerjumpto "描述" "permute_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "permute_zh##linkspdf"}{...}
{viewerjumpto "选项" "permute_zh##options"}{...}
{viewerjumpto "示例" "permute_zh##examples"}{...}
{viewerjumpto "存储结果" "permute_zh##results"}
{help permute:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] permute} {hline 2}}Monte Carlo 置换检验{p_end}
{p2col:}({mansection R permute:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
计算置换检验

{p 8 16 2}
{cmd:permute}
	{it:permvar}
	{it:{help exp_list_zh}}
	[{cmd:,} {it:{help permute##options_table:选项}}]
	{cmd::} {it:command}


{pstd}
报告保存的结果

{p 8 16 2}
{cmd:permute}
	[{varlist}]
	[{cmd:using} {it:{help filename_zh}}]
	[{cmd:,} {it:{help permute##display_options:显示选项}}]


{synoptset 23 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{synopt :{opt r:eps(#)}}执行 {it:#} 次随机置换；默认是 {cmd:reps(100)}{p_end}
{synopt :{opt le:ft}|{opt ri:ght}}计算单边 p 值；默认是双边{p_end}

{syntab :选项}
{synopt :{opth str:ata(varlist)}}在分层内进行置换{p_end}
{synopt :{help prefix_saving_option_zh:{bf:{ul:sa}ving(}{it:filename}{bf:, ...)}}}将结果保存到 {it:filename}；以双精度保存统计数据；每 {it:#} 次重复将结果保存到 {it:filename}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt noh:eader}}抑制表头{p_end}
{synopt :{opt nol:egend}}抑制表图例{p_end}
{synopt :{opt v:erbose}}显示完整的表图例{p_end}
{synopt :{opt nodrop}}不删除观察值{p_end}
{synopt :{opt nodots}}抑制重复点{p_end}
{synopt :{opt dots(#)}}每 {it:#} 次重复显示点{p_end}
{synopt :{opt noi:sily}}显示来自 {it:command} 的任何输出{p_end}
{synopt :{opt tr:ace}}跟踪 {it:command}{p_end}
{synopt :{opt ti:tle(text)}}使用 {it:text} 作为置换结果的标题{p_end}

{syntab :高级}
{synopt :{opt eps(#)}}数值容差；很少使用{p_end}
{synopt :{opt nowarn}}不警告 {cmd:e(sample)} 未设置{p_end}
{synopt :{opt force}}不检查 {it:weights} 或 {cmd:svy} 命令；很少使用{p_end}
{synopt :{opth reject(exp)}}识别无效结果{p_end}
{synopt :{opt seed(#)}}将随机数种子设置为 {it:#}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{it:weights} 在 {it:command} 中是不允许的。

{synoptset 23}{...}
{marker display_options}{...}
{synopthdr :显示选项}
{synoptline}
{synopt :{opt le:ft}|{opt ri:ght}}计算单边 p 值；
	默认是双边{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt noh:eader}}抑制表头{p_end}
{synopt :{opt nol:egend}}抑制表图例{p_end}
{synopt :{opt v:erbose}}显示完整的表图例{p_end}
{synopt :{opt ti:tle(text)}}使用 {it:text} 作为结果的标题{p_end}
{synopt :{opt eps(#)}}数值容差；很少使用{p_end}
{synoptline}
{p2colreset}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 重抽样 > 置换检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:permute} 基于 Monte Carlo 模拟估计置换检验的 p 值。输入

{pin}
{cmd:. permute} {it:permvar} {it:exp_list}{cmd:,} {opt reps(#)}{cmd::} {it:command}

{pstd}
随机置换 {it:permvar} 中的值 {it:#} 次，每次执行 {it:command} 并收集 {it:exp_list} 中表达式的相关值。

{pstd}
这些 p 值估计可以是单边的： Pr(T* {ul:<} T) 或 Pr(T* {ul:>} T)。默认是双边的： Pr(|T*| {ul:>} |T|)。这里 T* 表示从随机置换数据集中得到的统计量值，T 表示在原始数据上计算的统计量。

{pstd}
{it:permvar} 标识将被随机置换的变量的观察值。

{pstd}
{it:command} 定义要执行的统计命令。大多数 Stata 命令和用户编写的程序都可以与 {cmd:permute} 一起使用，只要它们遵循 {help language_zh:标准 Stata 语法}。{cmd:by} 前缀不能是 {it:command} 的一部分。

{pstd}
{it:exp_list} 指定要从 {it:command} 的执行中收集的统计数据。

{pstd}
{cmd:permute} 可用于重放结果，但此功能仅在由 {cmd:permute} 生成的数据集当前在内存中或由 {opt using} 选项标识时适用。在此情况下，{varlist} 中指定的变量必须存在于相应的数据集中。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R permuteQuickstart:快速开始}

        {mansection R permuteRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt reps(#)} 指定要执行的随机置换数量。默认是 100。

{phang}
{opt left} 或 {opt right} 请求计算单边 p 值。如果指定了 {opt left}，则生成 Pr(T* {ul:<} T) 的估计，其中 T* 是检验统计量，T 是其观察值。如果指定了 {opt right}，则生成 Pr(T* {ul:>} T) 的估计。默认情况下，计算双边 p 值；即估计 Pr(|T*| {ul:>} |T|)。

{dlgtab:选项}

{phang}
{opth strata(varlist)} 指定在由 {it:varlist} 的值定义的每个层内进行置换。

包括帮助前缀_保存_选项

{pmore}
有关 {it:suboptions} 的详细信息，请参见 {it:{help prefix_saving_option_zh}}。

{dlgtab:报告}

{phang}
{opt level(#)} 指定置信区间的置信水平，作为百分比。默认是 {cmd:level(95)} 或由 {help level_zh:set level} 设置。

{phang}
{opt noheader} 抑制表头的显示。此选项隐含 {opt nolegend} 选项。

{phang}
{opt nolegend} 抑制表图例的显示。表图例将表中的行与它们所代表的表达式标识。

{phang}
{opt verbose} 请求显示完整的表图例。默认情况下，不显示系数和标准误。

{phang}
{cmd:nodrop} 防止 {cmd:permute} 删除超出 {cmd:if} 和 {cmd:in} 限定符的观察值。{cmd:nodrop} 还将使 {cmd:permute} 忽略运行 {it:command} 时如果存在的 {hi:e(sample)} 的内容。默认情况下，{cmd:permute} 会暂时删除超出样本的观察值。

包括帮助点

{phang}
{opt noisily} 请求显示来自 {it:command} 的任何输出。此选项隐含 {opt nodots} 选项。

{phang}
{opt trace} 会显示 {it:command} 执行的跟踪。此选项隐含 {opt noisily} 选项。

{phang}
{opt title(text)} 指定要在置换结果的表上方显示的标题；默认标题为 {cmd:Monte Carlo 置换结果}。

{dlgtab:高级}

{phang}
{opt eps(#)} 指定测试 |T*| {ul:>} |T|，T* {ul:<} T，或 T* {ul:>} T 时的数值容差。只有在|T*| {ul:>} |T| - {it:#}，T* {ul:<} T + {it:#}，或 T* {ul:>} T - {it:#} 时才认为它们是真实的。默认是 {cmd:1e-7}。在正常情况下，您不需要指定 {cmd:eps()}。

{phang}
{opt nowarn} 抑制当 {it:command} 不设置 {cmd:e(sample)} 时的警告信息的打印。

{phang}
{opt force} 抑制 {it:command} 不能指定权重或不可以是 {cmd:svy} 命令的限制。{cmd:permute} 不适合加权估计，因此不应与权重或 {cmd:svy} 一起使用。如果未指定 {cmd:force} 选项，当 {it:command} 遇到权重或 {cmd:svy} 时，{cmd:permute} 会报告错误。这是一个很少使用的选项，所以只有在您清楚自己在做什么时才使用它！

{phang}
{opth reject(exp)} 识别一个表达式，当结果应该被拒绝时。 当 {it:exp} 为真时，结果值将重置为缺失值。

{phang}
{opt seed(#)} 设置随机数种子。指定此选项等同于在调用 {cmd:permute} 之前输入以下命令：

{pin2}
{cmd:. set seed} {it:#}


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse permutexmpl}{p_end}

{pstd}测试药物治疗是否相对于安慰剂增加了细胞的发展{p_end}
{phang2}{cmd:. permute y sum=r(sum), saving(permdish) right nodrop nowarn:}
               {cmd:summarize y if treatment}

{pstd}重放结果，请求 80% 置信区间{p_end}
{phang2}{cmd:. permute using permdish, level(80)}

    {hline}
    设置
{phang2}{cmd:. webuse permute2}{p_end}

{pstd}使用 Wilcoxon 秩和检验确定两个独立样本是否来自具有相同分布的总体{p_end}
{phang2}{cmd:. permute y z=r(z), reps(10000) nowarn nodots: ranksum y,}
                {cmd:by(group)}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse lbw}

{pstd}使用逻辑回归测试吸烟与低出生体重之间的关联{p_end}
{phang2}{cmd:. permute smoke x2=e(chi2), reps(10000) nodots: logit low smoke}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:permute} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}样本大小{p_end}
{synopt:{cmd:r(N_reps)}}请求的重复次数{p_end}
{synopt:{cmd:r(level)}}置信水平{p_end}
{synopt:{cmd:r(k_exp)}}标准表达式数量{p_end}
{synopt:{cmd:r(k_eexp)}}{cmd:_b}/{cmd:_se} 表达式数量{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(cmd)}}{cmd:permute}{p_end}
{synopt:{cmd:r(command)}}冒号后面的 {it:command}{p_end}
{synopt:{cmd:r(permvar)}}置换变量{p_end}
{synopt:{cmd:r(title)}}输出中的标题{p_end}
{synopt:{cmd:r(exp}{it:#}{cmd:)}}第 {it:#} 个表达式{p_end}
{synopt:{cmd:r(left)}}{cmd:left} 或空{p_end}
{synopt:{cmd:r(right)}}{cmd:right} 或空{p_end}
{synopt:{cmd:r(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:r(event)}}T <= T(obs)，T >= T(obs)，或 |T| <= |T(obs)|{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(b)}}观察到的统计量{p_end}
{synopt:{cmd:r(c)}}当 {cmd:r(event)} 为真时的计数{p_end}
{synopt:{cmd:r(reps)}}非缺失结果的数量{p_end}
{synopt:{cmd:r(p)}}观察到的比例{p_end}
{synopt:{cmd:r(se)}}观察到的比例的标准误{p_end}
{synopt:{cmd:r(ci)}}观察到的比例的置信区间{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <permute.sthlp>}