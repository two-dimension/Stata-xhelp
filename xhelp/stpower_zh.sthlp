{smcl}
{* *! version 1.2.2  20aug2018}{...}
{viewerdialog "stpower cox" "dialog stpower_cox"}{...}
{viewerdialog "stpower logrank" "dialog stpower_logrank"}{...}
{viewerdialog "stpower exponential" "dialog stpower_exponential"}{...}
{vieweralsosee "先前文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stpower cox" "help stpower_cox_zh"}{...}
{vieweralsosee "[ST] stpower exponential" "help stpower_exponential_zh"}{...}
{vieweralsosee "[ST] stpower logrank" "help stpower_logrank_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] 术语表" "help st_glossary_zh"}{...}
{viewerjumpto "语法" "stpower_zh##syntax"}{...}
{viewerjumpto "描述" "stpower_zh##description"}{...}
{viewerjumpto "stpower 子命令介绍" "stpower_zh##remarks1"}{...}
{viewerjumpto "stpower 子命令中使用的方法的备注" "stpower_zh##remarks2"}{...}
{viewerjumpto "示例" "stpower_zh##examples"}{...}
{viewerjumpto "参考文献" "stpower_zh##references"}
{help stpower:English Version}
{hline}{...}
{pstd}
{cmd:stpower} 继续有效，但从 Stata 14 开始，它不再是 Stata 的官方网站部分。 这是原始帮助文件，我们将不再更新，因此一些链接可能不再有效。

{pstd}
请参考 {manhelp power PSS-2}，以获取对 {cmd:stpower} 的推荐替代方案，特别是查看 {manhelp power_cox PSS-2:power cox}、{manhelp power_logrank PSS-2:power logrank} 和 {manhelp power_exponential PSS-2:power exponential}。

{title:标题}

{p2colset 5 21 23 2}{...}
{p2col :{hi:[ST] stpower} {hline 2}}生存分析的样本量、功效和效应大小{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
样本量确定

{p 8 16 2}
{opt stpow:er} {opt cox} [...] [{cmd:,} ...]

{p 8 16 2}
{opt stpow:er} {opt log:rank} [...] [{cmd:,} ...]

{p 8 16 2}
{opt stpow:er} {opt exp:onential} [...] [{cmd:,} ...]

{phang}
功效确定

{p 8 16 2}
{opt stpow:er} {opt cox } [...]{cmd:,} 
{opth n(numlist)} [...] 

{p 8 16 2}
{opt stpow:er} {opt log:rank} [...]{cmd:,} 
{opth n(numlist)} [...] 

{p 8 16 2}
{opt stpow:er} {opt exp:onential} [...]{cmd:,} 
{opth n(numlist)} [...] 

{phang}
效应量确定

{p 8 16 2}
{opt stpow:er} {opt cox}{cmd:,} 
{opth n(numlist)} {c -(}{opth p:ower(numlist)} | {opth b:eta(numlist)}{c )-} [...] 

{p 8 16 2}
{opt stpow:er} {opt log:rank} [...]{cmd:,} 
{opth n(numlist)} {c -(}{opth p:ower(numlist)} | {opth b:eta(numlist)}{c )-} [...] 


{pstd}
请参见 {manhelp stpower_cox ST: stpower cox}、{manhelp stpower_logrank ST: stpower logrank} 和 {manhelp stpower_exponential ST: stpower exponential}。

{marker description}{...}
{title:描述}

{pstd}
{cmd:stpower} 通过使用对数秩检验或指数检验（将在后面定义）来计算比较两个生存函数所需的样本量和功效，此外还可以进行更一般的生存分析，研究单个协变量在 Cox 比例风险回归模型中的影响，同时可能存在其他协变量。 它提供观察到事件（或预期事件数量）的估计值研究中所需的数量。 对于对数秩检验和 Wald 检验可以得到最小效应量（可检测的最小差异，以风险比或对数风险比表示）。

{pstd}
此条目提供相关术语、理论的简要概述及一些示例。 有关更多详细信息，请参见每个 {cmd:stpower} 子命令的特定条目。

{pstd}
另请参见 {manhelp power PSS-2} 以获取关于其他统计方法的功效和样本量分析的信息。

{marker remarks1}{...}
{title:stpower 子命令介绍}

{pstd}
{cmd:stpower} 提供三个子命令： {cmd:stpower} {cmd:cox}、{cmd:stpower} {cmd:logrank} 和 {cmd:stpower} {cmd:exponential}。

{pmore}
{cmd:stpower} {cmd:cox} 提供样本量、功效或最小可探测值的估计，当需要探索单个协变量对受试者生存的影响时，使用 Cox 比例风险回归假设该效应将使用部分似然从 Cox 模型进行测试（例如得分或 Wald 检验），在协变量上。

{pmore}
{cmd:stpower} {cmd:logrank} 报告样本量、功效或在使用对数秩检验时可探测的风险比的最小值的估计。 关于生存函数的分布唯一要求是两个生存函数必须满足比例风险假设。

{pmore}
{cmd:stpower} {cmd:exponential} 在使用 {it:exponential} {it:test} 进行测试时报告样本量或功效估计，该参数检验的统计量是两个指数风险率的最大似然估计的函数。 在这里，我们将（指数） {it:风险差} 检验称为测试风险之间差异的指数检验，而（指数） {it:对数风险比} 检验称为对数风险比的指数检验，或等价地，对数风险之间的差异的检验。

{pstd}
所有子命令共享相同的语法。 样本量确定的默认功效为 80％，或者等效地，{it:类型} {it:II} {it:错误} 的概率为 20％。 通过选项 {cmd:power()} 或 {cmd:beta()} 分别提供其他功效或类型 II 错误概率的值。 如果需要功效确定，则必须指定样本量 {cmd:n()}。 如果对最小可探测差异感兴趣，则必须指定样本量 {cmd:n()} 和功效 {cmd:power()} （或类型 II 错误概率 {cmd:beta()}）。

{pstd}
对于样本量和功效计算，默认效应量对应于风险比的值为 0.5，可以通过指定选项 {cmd:hratio()} 更改。 风险比定义为实验组与对照组（或两个组中较不利的一个组）的风险之比。 此外，还有特定于每个子命令的替代方法用于指定效应量。

{pstd}
检测的默认概率为 {it:type} {it:I} {it:错误}，即在零假设为真的情况下拒绝零假设的概率为 0.05，但可以通过使用选项 {cmd:alpha()} 更改。 可以通过选项 {cmd:onesided} 请求单边检验的结果。 为了更改在 {cmd:stpower} {cmd:logrank} 和 {cmd:stpower} {cmd:exponential} 中等大小组的默认设置，必须指定选项 {cmd:p1()} 或 {cmd:nratio()} 之一。

{pstd}
默认情况下，所有子命令假定为 {it:type} {it:I} {it:研究}，即对未审查数据执行计算。 另请参见 {bf:[ST] stpower} 中的 {it:理论和术语}。 通过指定适当的参数或选项，可以考虑审查信息。
有关详细信息，请参阅 {helpb stpower cox:[ST] stpower cox}、{helpb stpower logrank:[ST] stpower logrank} 和 {helpb stpower exponential:[ST] stpower exponential}。

{pstd}
所有子命令都可以以表格形式报告结果。 可以为不同输入参数的值制表结果；请参阅下面的示例和 {bf:[ST] stpower} 中的 {it:创建输出表} 部分。 下面给出如何生成功效曲线的示例；另请参见 {bf:[ST]} {bf:stpower} 中的 {it:功效曲线} 和 {bf:[ST] stpower logrank} 中的 {it:功效和效应量确定}。

{marker remarks2}{...}
{title:stpower 子命令中使用的方法的备注}

{pstd}
{cmd:stpower} 使用的所有样本量公式均依赖于比例风险假设，即风险比不依赖于时间的假设。 有关通过方法施加的附加假设，请查看每个子命令的文档条目。

{pmore}
{cmd:stpower} {cmd:cox} 采用 {help stpower##HL2000:Hsieh and Lavori (2000)} 的方法 
来计算处理Cox模型拟合后的协变量的样本量和功效。

{pmore}
{cmd:stpower} {cmd:logrank} 使用 {help stpower##F1982:Freedman (1982)} 和
{help stpower##S1981:Schoenfeld (1981)} 的方法进行样本量和功效计算。 
采用 {help stpower##S1983:Schoenfeld (1983)} 的方法在均匀招募的情况下获得估计值。

{pmore}
{cmd:stpower} {cmd:exponential} 实施 {help stpower##L1981:Lachin (1981)}; 
{help stpower##LF1986:Lachin and Foulkes (1986)}; 
{help stpower##GD1974:George and Desu (1974)}; 和
{help stpower##RGS1981:Rubinstein, Gail, and Santner (1981)} 的方法来进行对数生存函数的两样本检验。 
最后一种方法的显式样本量公式见于 {help stpower##LL1992:Lakatos and Lan (1992)}。

{marker examples}{...}
{title:示例}

    {title:Cox模型}

{pstd}
计算检测协变量 -1 的估计所需的样本量，协变量的标准差为 0.5，使用双侧 5% Wald 检验，功效为 80%（默认值）{p_end}
{phang2} 
{cmd:. stpower cox -1} 
{p_end}

{pstd}
计算刚描述的测试的功效，样本量为 50 个观察值{p_end}
{phang2}
{cmd:. stpower cox -1, n(50)}
{p_end}

{pstd}
计算可以检测到的系数的最小值，功效为 95%，样本量为 50，假设协变量的标准差为 0.5（默认）{p_end}
{phang2}
{cmd:. stpower cox, power(0.95) n(50)}
{p_end}


    {title:对数秩检验}

{pstd}
计算所需的样本量，以测试两个生存函数之间的差异，相应于实验组风险的 50% 降低（风险比为 0.5），使用默认双侧 5% 对数秩检验，功效为 80%{p_end}
{phang2} 
{cmd:. stpower logrank 0.6} 
{p_end}

{pstd}
计算刚描述的测试的功效，样本量为 300{p_end}
{phang2} 
{cmd:. stpower logrank 0.6, n(300)} 
{p_end}

{pstd}
计算可以检测到的风险比的最小值，功效为 80%，样本量为 300，当对照组幸存到研究结束的概率为 0.6 时{p_end}
{phang2} 
{cmd:. stpower logrank 0.6, n(300) power(0.8)} 
{p_end}

{pstd}
生成一条功效曲线，作为风险比的函数，样本量为 100{p_end}
{phang2} 
{cmd:. stpower logrank, hratio(0.01(0.01)0.99) n(100) saving(mypower)}{p_end}
{phang2}{cmd:. use mypower}{p_end}
{phang2}{cmd:. twoway line power hr, xtitle(风险比)}
         {cmd:title("功效 (n=100)")} 
{p_end}


    {title:指数检验}

{pstd}
计算所需的样本量，以测试两个指数生存函数之间的差异，相应于实验组的风险率从 0.2 降低到 0.4，使用默认双侧 5% 指数检验，功效为 80%{p_end}
{phang2} 
{cmd:. stpower exponential 0.2 0.4} 
{p_end}

{pstd}
计算刚描述的测试的功效，样本量为 100{p_end}
{phang2} 
{cmd:. stpower exponential 0.2 0.4, n(100)} 
{p_end}


{marker references}{...}
{title:参考文献}

{marker F1982}{...}
{phang}
Freedman, L. S. 1982.  
使用对数秩检验的临床试验中所需患者数量的表。  
{it:Statistics in Medicine} 1: 121-129.{p_end}

{marker GD1974}{...}
{phang}
George, S. L., 和 M. M. Desu. 1974. 
规划临床试验的规模和持续时间，研究某个关键事件的发生时间。 {it: Journal of Chronic Diseases} 27: 15-24.{p_end}

{marker HL2000}{...}
{phang}
Hsieh, F. Y., 和 P. W. Lavori. 2000.
对于具有非二元协变量的 Cox 比例风险回归模型进行样本量计算。
{it: Controlled Clinical Trials} 21: 552-560.{p_end}

{marker L1981}{...}
{phang}
Lachin, J. M. 1981.
临床试验的样本量确定和功效分析介绍。 {it: Controlled Clinical Trials} 2: 93-113.{p_end}

{marker LF1986}{...}
{phang}
Lachin, J. M., 和 M. A. Foulkes. 1986. 
评估生存分析的样本量和功效，以考虑非均匀患者进入、失访、不依从和分层。 {it: Biometrics} 42: 507-519.{p_end}

{marker LL1992}{...}
{phang}
Lakatos, E., 和 K. K. G. Lan. 1992.
对对数秩统计量的样本量方法的比较。 
{it: Statistics in Medicine} 11: 179-191.{p_end}

{marker RGS1981}{...}
{phang}
Rubinstein, L. V., M. H. Gail, 和 T. J. Santner. 1981.
规划一项比较临床试验的持续时间，考虑失访和继续观察期间。 {it: Journal of Chronic Diseases} 34: 469-479.{p_end}

{marker S1981}{...}
{phang}
Schoenfeld, D. A. 1981.
用于比较生存分布的非参数检验的渐近性质。
{it: Biometrika} 68: 316-319.

{marker S1983}{...}
{phang}
------. 1983.  
比例风险回归模型的样本量公式。  
{it:Biometrics} 39: 499-503.{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stpower.sthlp>}