{smcl}
{* *! version 1.1.11  18may2019}{...}
{findalias asfrprefix}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 11 语言语法" "help language_zh"}{...}
{vieweralsosee "[U] 20 估计和后估计命令（估计）" "help estcom_zh"}{...}
{viewerjumpto "语法" "prefix_zh##syntax"}{...}
{viewerjumpto "描述" "prefix_zh##description"}{...}
{viewerjumpto "备注" "prefix_zh##remarks"}{...}
{viewerjumpto "示例" "prefix_zh##examples"}
{help prefix:English Version}
{hline}{...}
{title:标题}

{p 4 13 2}{findalias frprefix}


{marker syntax}{...}
{title:语法}

	{it:prefix ...}{cmd::} {it:command} {it:...}

{p2colset 5 18 20 2}{...}
{p2col:{it:prefix}}描述{p_end}
{p2line}
{p2col:{help by_zh}}在数据子集上运行命令{p_end}
{p2col:{helpb frames prefix:frame}}在指定帧中的数据上运行命令{p_end}
{p2col:{help statsby_zh}}与 {cmd:by} 相同，但从每次运行中收集统计数据{p_end}
{p2col:{help rolling_zh}}在移动子集上运行命令并收集统计数据{p_end}

{p2col:{help bootstrap_zh}}在 bootstrap 样本上运行命令{p_end}
{p2col:{help jackknife_zh}}在 jackknife 数据子集上运行命令{p_end}
{p2col:{help permute_zh}}在随机置换上运行命令{p_end}
{p2col:{help simulate_zh}}在制造的数据上运行命令{p_end}

{p2col:{help svy_zh}}运行命令并调整结果以适应调查抽样{p_end}
{p2col:{helpb mi estimate}}在多重插补数据上运行命令并调整多重插补 (MI) 的结果{p_end}

{p2col:{help bayes_zh}}将模型拟合为贝叶斯回归{p_end}
{p2col:{help fmm_zh}}使用有限混合建模拟合模型{p_end}

{p2col:{help nestreg_zh}}使用累积的回归变量块运行命令并报告嵌套模型比较测试{p_end}
{p2col:{help stepwise_zh}}使用逐步变量纳入/排除算法运行命令{p_end}

{p2col:{help xi_zh}}在展开因子变量和交互项后运行命令；对于大多数命令，使用因子变量更为理想，而不是使用 {cmd:xi}（参见 {help fvvarlist_zh}）{p_end}

{p2col:{help fp_zh}}使用一个回归变量的分数多项式运行命令{p_end}
{p2col:{help mfp_zh}}使用多个分数多项式回归变量运行命令{p_end}

{p2col:{help capture_zh}}运行命令并捕获其返回代码{p_end}
{p2col:{helpb noisily}}运行命令并显示输出{p_end}
{p2col:{help quietly_zh}}运行命令并抑制输出{p_end}
{p2col:{help version_zh}}在指定版本下运行命令{p_end}
{p2line}
{p2colreset}{...}

{pstd}
最后一组 -- {cmd:capture}、{cmd:noisily}、{cmd:quietly} 和 {cmd:version} -- 处理 Stata 的编程，并且出于历史原因，{cmd:capture}、{cmd:noisily} 和 {cmd:quietly} 允许你省略冒号。


{marker description}{...}
{title:描述}

{pstd}
前缀命令操作其他 Stata 命令。它们修改输入、修改输出或重复执行 {it:command}。例如，{help mfp_zh} 通过包括分数多项式项来修改 {it:command} 的变量列表。{help svy_zh} 调整 {it:command} 的结果以考虑复杂调查数据。{help by_zh} 在数据的子组上执行 {it:command}。

{pstd}
参见 {help language_zh} 以获取 Stata 语言的概述。


{marker remarks}{...}
{title:备注}

{pstd}
并非在所有上下文中都允许使用前缀命令。例如，{help svy_zh}、{help nestreg_zh} 和 {help stepwise_zh} 只能与受支持的估计命令一起使用。{help bootstrap_zh}、{help jackknife_zh} ... 与类似于 {help generate_zh} 的命令组合时没有意义。

{pstd}
许多前缀命令可以组合。例如，

{phang2}
{cmd:nestreg: svy: regress brate (medage) (medagesq) (reg2-reg4)}

{pstd}
但是，某些前缀命令的组合是不允许的。例如，

{phang2}
{cmd:bootstrap: statsby: logit diabetes female age}

{pstd}
是不允许的，因为 {cmd:statsby} 将结果保存到数据集，而不是在 {cmd:r()} 或 {cmd:e()} 中。

{marker examples}{...}
{title:示例}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. by foreign (make), sort: summarize rep78}{p_end}
{phang}{cmd:. statsby, by(foreign): regress mpg gear turn}

{phang}{cmd:. sysuse auto, clear}{p_end}
{phang}{cmd:. bootstrap, reps(100): regress mpg weight gear foreign}

{phang}{cmd:. webuse nhanes2d, clear}{p_end}
{phang}{cmd:. svy, subpop(female): logistic highbp height weight age c.age#c.age}

{phang}{cmd:. sysuse auto, clear}{p_end}
{phang}{cmd:. mfp: regress mpg weight displacement foreign}{p_end}
{phang}{cmd:. bayes: regress price length i.foreign}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <prefix.sthlp>}