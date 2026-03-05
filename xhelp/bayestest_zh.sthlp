{smcl}
{* *! version 1.0.5  25sep2018}{...}
{vieweralsosee "[BAYES] bayestest" "mansection BAYES bayestest"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian postestimation"}{...}
{vieweralsosee "[BAYES] bayestest interval" "help bayestest interval"}{...}
{vieweralsosee "[BAYES] bayestest model" "help bayestest model"}{...}
{viewerjumpto "Description" "bayestest_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayestest_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "bayestest_zh##remarks"}
{help bayestest:English Version}
{hline}{...}
{p2colset 1 22 22 2}{...}
{p2col:{bf:[BAYES] bayestest} {hline 2}}贝叶斯假设检验{p_end}
{p2col:}({mansection BAYES bayestest:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayestest} 提供两种类型的贝叶斯假设检验，区间假设检验和模型假设检验，使用当前的贝叶斯估计结果。

{pstd}
{cmd:bayestest interval} 进行模型参数及模型参数函数的区间假设检验；参见 {helpb bayestest interval}。

{pstd}
{cmd:bayestest model} 通过计算模型的后验概率来检验关于模型的假设；参见 {helpb bayestest model}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayestestRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
贝叶斯假设检验与基于 p 值的传统频率假设检验在本质上是不同的。频率假设检验是基于是否拒绝虚无假设的决定，与获得的 p 值相对照。贝叶斯假设检验则建立在对感兴趣参数的概率性公式之上。例如，它可以提供关于感兴趣参数属于某些预设值集合的可能性的概率性总结。此外，贝叶斯检验可以根据观察到的数据赋予感兴趣的假设或模型一个概率。这在频率检验中是做不到的。赋予假设一个概率的能力通常为结果提供了更自然的解释。例如，贝叶斯假设检验可以直接回答以下问题：男性的平均身高大于六英尺的可能性有多大？一个人有罪与无罪的概率分别是多少？一个模型相对于另一个模型的可能性有多大？频率假设检验无法回答这些问题。

{pstd}
我们考虑两种形式的贝叶斯假设检验：区间假设检验和我们所称的模型假设检验。

{pstd}
区间假设检验的目标是估计模型参数落在某个区间内的概率；详见 {helpb bayestest interval}。

{pstd}
模型假设检验的目标是通过计算给定观察数据下指定模型的概率来检验关于模型的假设；详见 {helpb bayestest model}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayestest.sthlp>}