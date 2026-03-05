{smcl}
{* *! version 1.0.3  29jan2013}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stcox" "help stcox_zh"}{...}
{vieweralsosee "[ST] streg" "help streg_zh"}{...}
{viewerjumpto "Syntax" "st_forceshared_zh##syntax"}{...}
{viewerjumpto "Description" "st_forceshared_zh##description"}{...}
{viewerjumpto "Remarks" "st_forceshared_zh##remarks"}{...}
{viewerjumpto "Reference" "st_forceshared_zh##reference"}
{help st_forceshared:English Version}
{hline}{...}
{title:标题}

{p2colset 4 28 32 2}{...}
{p2col:{hi:[ST] stcox, forceshared}}{hline 2} 强制估计共享脆弱性生存模型{p_end}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:stcox} ... {cmd:, forceshared} ...

{p 8 16 2}
{cmd:streg} ... {cmd:, forceshared} ...


{marker description}{...}
{title:描述}

{pstd}
{cmd:stcox, forceshared} 和 {cmd:streg, forceshared} 在存在延迟进入或缺口的情况下强制估计共享脆弱性生存模型。


{marker remarks}{...}
{title:备注}

{pstd}
您可以使用 {cmd:shared()} 选项在 {help stcox_zh} 或 {help streg_zh} 中拟合共享脆弱性生存模型。 但在存在延迟进入或缺口的情况下，不允许使用此选项。 您可以通过指定 {cmd:forceshared} 选项来覆盖这一点，但我们不建议这样做。 如果使用 {cmd:forceshared}，只有在假设样本中的脆弱性分布与协变量和截断点独立的情况下，才能获得一致的结果。 这是一个限制性假设，您应该在进行估计之前评估它是否对您的数据合理。 有关更多信息，请参见 {help st_forceshared##hdl11:van den Berg 和 Drepper (2011)}，这促使了 {cmd:shared()} 选项行为的变化。


{marker reference}{...}
{title:参考文献}

{marker hdl11}{...}
{phang}
van den Berg, G. J., 和 B. Drepper. 2011. 针对左截断数据的共享脆弱性生存模型的推断。 讨论论文系列。 未来工作研究所，编号6031， urn:nbn:de:101:1-201110263752。 {browse "http://hdl.handle.net/10419/58973"}.

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <st_forceshared.sthlp>}