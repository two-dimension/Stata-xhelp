{smcl}
{* *! version 1.0.0  20nov2018}{...}
{vieweralsosee "[BAYES] bayes" "mansection BAYES bayes"}{...}
{vieweralsosee "[BAYES] bayesmh" "mansection BAYES bayesmh"}
{help j_bayes_nchainsinit:English Version}
{hline}{...}
{title:多链的默认初始值}

{pstd}
选项 {cmd:nchains()} 与 {help bayesmh_zh} 或 {help bayes_zh} 前缀结合使用时生成多个仿真链。每条链应使用不同的模型参数初始值。默认情况下，最大似然估计（如果可用）用于第一条链的初始值，而后续链使用随机初始值。每当 {help j_bayes_nchainsinit##feasible:可行} 时，将从先验分布中生成随机初始值；有关详细信息，请参见 {help j_bayes_nchainsinit##randinit:默认初始值是如何生成的？}。

{pstd}
提供默认初始值是为了方便。为了检测不收敛，您应使用 {help bayes_glossary##overdispersed_initial_value:过分散的初始值} 与多个链进行结合。随机生成的默认初始值并不保证对所有链都产生过分散的初始值。为了充分探索收敛性，我们建议您为多个链指定自己的初始值；请参见 {help j_bayes_nchainsinit##initspec:如何为多个链指定初始值？}

{pstd}
要查看使用的初始值，您可以在估计期间指定选项 {cmd:initsummary}。您还可以通过指定选项 {cmd:dryrun} 在估计之前检查初始值。初始值在估计后也会存储在矩阵 {cmd:e(init)} 中。

{pstd}
请参见 {mansection BAYES bayesmhRemarksandexamplesSpecifyinginitialvalues:{it:指定初始值}} 在 {bf:[BAYES] bayesmh} 和 {mansection BAYES bayesRemarksandexamplesInitialvalues:{it:初始值}} 在 {bf:[BAYES] bayes}。


{marker randinit}{...}
{title:默认初始值是如何生成的？}

{pstd}
选项 {cmd:nchains()} 与 {help bayesmh_zh} 或 {helpb bayes_prefix:bayes} 默认情况下会为除第一条链以外的所有链生成模型参数的随机初始值。当 {help j_bayes_nchainsinit##feasible:可行} 时，从先验分布中生成随机初始值，但您始终可以指定 {help j_bayes_nchainsinit##initspec:您自己的初始值}。

{pstd}
对于不当的先验如 {cmd:flat}、{cmd:jeffreys} 和 {opt jeffreys(#)}，{cmd:bayesmh} 和 {cmd:bayes} 前缀无法直接从这些先验中抽取随机初始值。这样做通常会为模型参数产生极端值，其对数似然值将缺失。有关 {cmd:bayesmh} 和 {cmd:bayes} 如何使用多个链生成默认初始值的详细信息，请参见 {mansection BAYES bayesmhRemarksandexamplesSpecifyinginitialvalues:{it:指定初始值}} 在 {bf:[BAYES] bayesmh} 和 {mansection BAYES bayesRemarksandexamplesInitialvalues:{it:初始值}} 在 {bf:[BAYES] bayes}。我们建议特别是在使用这些先验时，您为多个链提供自己的初始值；请参见 {help j_bayes_nchainsinit##initspec:如何为多个链指定初始值？}

{marker initspec}{...}
{title:如何为多个链指定初始值？}

{pstd}
在存在多个链的情况下，您通常需要指定自己的初始值。{help bayesmh_zh} 和 {helpb bayes_prefix:bayes} 为您提供了这样做的选项：{cmd:init1()} 为第一条链指定初始值，{cmd:init2()} 为第二条链，如此类推。选项 {cmd:init}{it:#}{cmd:()} 的指定方式与选项 {cmd:initial()} 相同，后者在只有一条链时指定初始值；有关详细信息，请参见 {help bayesmh##initspec:bayesmh, initial()} 和 {help bayes##initspec:bayes, initial()}。在存在多个链的情况下，选项 {cmd:initial()} 与选项 {cmd:init1()} 同义，并为第一条链指定初始值。

{pstd}
假设您有三条链。您可以使用选项 {cmd:init}{it:#}{cmd:()} 为所有三条链指定初始值：

{pstd}
{cmd:.} {it:...}{cmd:, init1({a} 0 {b} 0) init2({a} 100 {b} 0.5) init3({a} -10 {b} 1)}

{pstd}
或者，您可以只为第二条链指定初始值，而对第一条和第三条链使用默认初始值：

{pstd}
{cmd:.} {it:...}{cmd:, init2({a} 100 {b} .5)}

{pstd}
或者，您可以为任意链的组合指定初始值。

{pstd}
在上述示例中，我们使用了固定初始值。我们还可以随机生成初始值。例如，我们可以为参数 {cmd:{a}} 从正态分布中生成随机初始值，为参数 {cmd:{b}} 从均匀分布中生成随机初始值，命令如下：

{pstd}
{cmd:.} {it:...}{cmd:, init1({a} rnormal(0,1) {b} runiform(0,0.1))}{p_end}
{pstd}
>{cmd:      init2({a} rnormal(100,1) {b} runiform(0.4,0.6))}{p_end}
{pstd}
>{cmd:      init3({a} rnormal(-10,1) {b} runiform(0.9,1))}{p_end}

{pstd}
我们可以使用其他 {help random_number_functions_zh:随机数函数}。更一般地，我们可以使用任何评估为数字的 Stata {help exp_zh:表达式} 来指定初始值。

{pstd}
为了方便，还有选项 {cmd:initall()}，它将相同的初始值指定应用于所有链。当所有链使用随机初始值时，该选项特别有用。例如，

{pstd}
{cmd:.} {it:...}{cmd:, initall({a} rnormal(0, 100) {b} runiform(0,1))}

{pstd}
尽管将为所有链使用不同的初始值，但不保证它们会是 {help bayes_glossary##overdispersed_initial_value:过分散的}。要确保初始值是过分散的，您需要为所有链提供自己的初始值。

{pstd}
您不应在 {cmd:initall()} 中指定固定初始值，因为所有链将使用相同的初始值。

{pstd}
请参见 {mansection BAYES bayesmhRemarksandexamplesSpecifyinginitialvalues:{it:指定初始值}} 在 {bf:[BAYES] bayesmh}，
{mansection BAYES bayesRemarksandexamplesInitialvalues:{it:初始值}} 在 {bf:[BAYES] bayes}，以及
{mansection BAYES bayesmhRemarksandexamplesMultiplechainsusingoverdispersedinitialvalues:{it:使用过分散的初始值的多个链}} 在 {bf:[BAYES] bayesmh}。


{marker feasible}{...}
{title:运行多个链时未找到可行的初始值}

{pstd}
您为 {help bayesmh_zh} 或 {helpb bayes_prefix:bayes} 指定了选项 {cmd:nchains()} 以模拟多个链，但收到警告消息“未能找到可行的初始状态”针对某些链。如果您为失败的链指定了自己的初始值，请检查这些初始值的可行性。否则，您可能在默认随机初始化参数时遇到问题。

{pstd}
在您指定选项 {cmd:nchains()} 或选项 {cmd:initrandom} 并使用随机数函数来指定 {help j_bayes_nchainsinit##initspec:您自己的} 初始值时，会生成随机初始值。

{pstd}
当从先验分布中生成随机初始值时，某些先验分布可能会为模型参数产生极端值，特别是对于非信息性先验。这可能导致缺失的对数似然值。命令将尝试生成几组不同的初始值，然后终止特定链的仿真并发出警告消息。在这种情况下，您必须为该链指定自己的初始值；请参见 {help j_bayes_nchainsinit##initspec:如何为多个链指定初始值？}

{pstd}
请参见 {mansection BAYES bayesmhRemarksandexamplesSpecifyinginitialvalues:{it:指定初始值}} 在 {bf:[BAYES] bayesmh} 和 {mansection BAYES bayesRemarksandexamplesInitialvalues:{it:初始值}} 在 {bf:[BAYES] bayes}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_bayes_nchainsinit.sthlp>}