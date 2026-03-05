{smcl}
{* *! version 1.4.5  15may2018}{...}
{vieweralsosee "[R] Epitab" "mansection R Epitab"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stcox" "help stcox_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bitest" "help bitest_zh"}{...}
{vieweralsosee "[R] ci" "help ci_zh"}{...}
{vieweralsosee "[R] clogit" "help clogit_zh"}{...}
{vieweralsosee "[R] dstdize" "help dstdize_zh"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{vieweralsosee "[R] symmetry" "help symmetry_zh"}{...}
{vieweralsosee "[R] tabulate twoway" "help tabulate_twoway_zh"}{...}
{vieweralsosee "[U] 19 Immediate command" "help immed_zh"}
{help epitab:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] Epitab} {hline 2}}流行病学者的表格{p_end}
{p2col:}({mansection R Epitab:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{title:描述}

{pstd}
为了计算合适的统计数据并抑制不合适的统计数据，命令 {cmd:ir}、{cmd:cs}、{cmd:cc}、{cmd:tabodds}、{cmd:mhodds} 和 {cmd:mcc} 及其即时对应命令，按照流行病学家对数据的概念进行组织。{cmd:ir} 处理来自前瞻性研究的发生率数据； {cmd:cs} 处理具有相等随访时间（累积发生率）的队列研究数据； {cmd:cc}、{cmd:tabodds} 和 {cmd:mhodds} 处理病例对照或横断面（流行率）数据；而 {cmd:mcc} 处理匹配的病例对照数据。除 {cmd:mcc} 外，这些命令适用于简单与分层表。

{pstd}
流行病学数据通常在列联表中总结，从中计算出各种统计数据。表的行反映病例和非病例或病例和人时，列反映对风险因素的暴露。对流行病学家而言，病例和非病例指的是所研究过程中结果的表现。例如，病例可能是一个癌症患者，而非病例是一个没有癌症的人。

{pstd}
因素是指可能影响最终被认定为病例或非病例的几率的事物。因此，病例可能是一个癌症患者，而因素则可能是吸烟行为。一个人被称为暴露或未暴露于该因素。暴露可以被分类为二元（吸烟或不吸烟），也可以分为多个级别，例如每周吸烟的香烟数量。

            队列研究
                {help ir_zh:ir 和 iri}
                {help cs_zh:cs 和 csi}

            病例对照研究
                {help cc_zh:cc 和 cci}
                {help tabodds_zh}
                {help mhodds_zh}

            匹配病例对照研究
                {help mcc_zh:mcc 和 mcci}

{pstd}
另见 {mansection R EpitabRemarksandexamplesGlossary:{it:词汇表}}
在 {bf:[R] Epitab} 的 {it:备注和示例} 下。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <epitab.sthlp>}