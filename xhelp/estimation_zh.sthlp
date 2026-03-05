{smcl}
{* *! version 2.0.0  02mar2015}{...}
{findalias asfrestimate}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "help postestimation commands" "help postestimation_commands_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] ereturn" "help ereturn_zh"}{...}
{viewerjumpto "Description" "estimation_zh##description"}{...}
{viewerjumpto "Examples" "estimation_zh##examples"}
{help estimation:English Version}
{hline}{...}
{title:标题}

{pstd}
{findalias frestimate}


{marker description}{...}
{title:描述}

{pstd}
请参见 {help postestimation commands} 获取 Stata 的后估计命令列表。请参见 {help estcom_zh} 获取估计命令及其属性的描述。

{pstd}
估计命令将结果存储在 {hi:e()} 中。这些存储的结果在下一个估计命令执行之前保持可用。{hi:e()} 作为一个函数返回最后一个估计命令的命名估计结果的值。您可以通过输入

	{cmd:. ereturn list}

{pstd}
在执行估计命令后查看可用内容。请参见 
{help ereturn_zh} 和 {help return_zh}。

{pstd}
所有估计命令存储 {hi:e(sample)}，指示哪些观察值被用于估计。这可以在估计后与几乎任何 Stata 命令一起使用，以限制该命令仅作用于估计样本。


{marker examples}{...}
{title:示例}

{pstd}
我们使用 {help logit_zh}；其他估计命令也可以使用。{p_end}
{phang2}{cmd:. webuse lbw}{p_end}
{phang2}{cmd:. logit low i.smoke i.race age}

{pstd}
我们可以查看估计矩阵：{p_end}
{p 8 12 2}{cmd:. matrix list e(b)}{p_end}
{p 8 12 2}{cmd:. matrix list e(V)}

{pstd}
{helpb estat vce} 命令提供了查看协方差矩阵的另一种方法：{p_end}
{p 8 12 2}{cmd:. estat vce}{p_end}
{p 8 12 2}{cmd:. estat vce, corr}{p_end}
{p 8 12 2}{cmd:. estat vce, eigen}

{pstd}
我们可以检查 Akaike 和贝叶斯信息准则：{p_end}
{p 8 12 2}{cmd:. estat ic}

{pstd}
我们可以对涉及估计命令的变量在估计所用观察值上的汇总：{p_end}
{p 8 12 2}{cmd:. estat summarize}

{pstd}
其他后估计命令也可以使用。{p_end}
{p 8 12 2}{cmd:. margins smoke, at(age=15(5)45))}{p_end}
{p 8 12 2}{cmd:. marginsplot}{p_end}
{p 8 12 2}{cmd:. contrast race}{p_end}
{p 8 12 2}{cmd:. pwcompare race, effects mcompare(scheffe)}{p_end}
{p 8 12 2}{cmd:. lincom 1.smoke + 20*age}{p_end}
{p 8 12 2}{cmd:. linktest}{p_end}
{p 8 12 2}{cmd:. test 2.race = 3.race}{p_end}
{p 8 12 2}{cmd:. predict r, residuals}

{pstd}
{cmd:coeflegend} 选项告诉我们如何在后估计命令中指定系数，例如 {cmd:test}。{p_end}
{p 8 12 2}{cmd:. logit, coeflegend}

{pstd}
{hi:e(sample)} 可在估计后的任何其他 Stata 命令中使用。{p_end}
{p 8 12 2}{cmd:. summarize age if e(sample), detail}{p_end}
{p 8 12 2}{cmd:. summarize age if !e(sample), detail}

{pstd}
我们甚至可以在不同的数据上获得预测：{p_end}
{p 8 12 2}{cmd:. webuse newautos, clear}{p_end}
{p 8 12 2}{cmd:. predict mpg}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estimation.sthlp>}