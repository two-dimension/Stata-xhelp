{smcl}
{* *! version 1.1.7  19oct2017}{...}
{vieweralsosee "[P] signestimationsample" "mansection P signestimationsample"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] datasignature" "help datasignature_zh"}{...}
{vieweralsosee "[D] describe" "help describe_zh"}{...}
{viewerjumpto "Syntax" "signestimationsample_zh##syntax"}{...}
{viewerjumpto "Description" "signestimationsample_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "signestimationsample_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "signestimationsample_zh##remarks"}{...}
{viewerjumpto "Stored results" "signestimationsample_zh##results"}
{help signestimationsample:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[P] signestimationsample} {hline 2}}确定估计样本是否已更改{p_end}
{p2col:}({mansection P signestimationsample:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:signestimationsample}
{it:{help varlist_zh}}

{p 8 12 2}
{cmd:checkestimationsample}


{marker description}{...}
{title:描述}

{pstd}
{cmd:signestimationsample} 和 
{cmd:checkestimationsample} 是用于估计命令的 
{cmd:datasignature} 的易用接口； 
请参见 {manhelp datasignature D}。

{pstd}
{cmd:signestimationsample} 获取估计样本的数据签名并将其存储在 {cmd:e()} 中。

{pstd}
{cmd:checkestimationsample} 
获取数据签名并将其与 {cmd:signestimationsample} 存储的签名进行比较，如果它们不同， 
则报告 
{err:data have changed since estimation}; r(459)。

{pstd} 
如果您只想知道自上次保存以来，内存中的数据是否发生了更改，请查看 {manhelp describe D}。
在 {cmd:describe} 之后检查存储结果 {cmd:r(changed)} 
；若数据未更改则为 {cmd:0}，否则为 {cmd:1}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P signestimationsampleRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help signestimationsample##use:使用 signestimationsample 和 checkestimationsample}
	{help signestimationsample##signing:签名}
	{help signestimationsample##checking:检查}
	{help signestimationsample##weights:处理权重}
	{help signestimationsample##seldom:不要不必要地签名}


{marker use}{...}
{title:使用 signestimationsample 和 checkestimationsample}

{pstd}
估计量通常以一组命令的形式出现：估计命令本身
（例如 {cmd:myest}）和后估计命令，如 {cmd:predict}、
{cmd:estat}，甚至是 {cmd:myest_stats}。后估计命令所做的计算有时适合与任何数据值集合一起使用——不仅仅是用于估计的数据——有时则不适合。例如，可以根据任何一组解释变量计算预测值，而分数仅在使用原始数据计算时有效。

{pstd}
仅在使用估计样本计算时有效的后估计计算属于例外情况，但当出现这种情况时， {cmd:signestimationsample} 和 {cmd:checkestimationsample} 提供了解决方案。
过程如下：

{p 8 12 2}
1.  在估计时，签名估计样本（将数据的
    签名存储在 {cmd:e()} 中）。

{p 8 12 2}
2.  在使用时，获取内存中数据的签名，并 
    将其与之前存储的原始签名进行比较。


{marker signing}{...}
{title:签名}

{pstd}
要签名估计样本，请在
设置 {cmd:e(sample)} 后（即，在 {cmd:ereturn} 
{cmd:post} 之后）在您的估计命令中包含以下行：

	{cmd:signestimationsample `varlist'}

{pstd}
{cmd:`varlist'} 应包含用于估计的所有变量，字符串和数字，直接或间接使用，因此您实际上可以代码为

	{cmd:signestimationsample `lhsvar' `rhsvars' `clustervar'}

{pstd} 
或类似的东西。如果您正在实施时间序列估计器，请不要忘记包含时间变量：

	{cmd:quietly tsset}
	{cmd:signestimationsample `r(timevar)' `lhsvar' `rhsvars' `othervars'}

{pstd}
时间变量可以在 {cmd:`rhsvars'} 中，但如果时间被重复指定也没关系。

{pstd}
如果您正在实施 xt 估计器，请不要忘记包括 
面板变量和可选的时间变量：

	{cmd:quietly xtset}
	{cmd:signestimationsample `r(panelvar)' `r(timevar)' `lhsvar' `rhsvars' ///}
					{cmd:`clustervar'}


{pstd}
无论如何，请指定所有相关变量，不必担心
重复。 {cmd:signestimationsample} 不产生输出，但在幕后，它向 {cmd:e()} 添加了两个新结果：

{p 8 12 2}
o  {cmd:e(datasignature)} -- 由指定变量形成的签名 
    在 {cmd:e(sample)} = 1 的观测值中

{p 8 12 2}
o  {cmd:e(datasignaturevars)} -- 用于形成
    签名的变量名称


{marker checking}{...}
{title:检查}

{pstd}
现在签名已存储，请在您的后估计命令中适当位置包含以下行：

	{cmd:checkestimationsample}

{pstd}
{cmd:checkestimationsample} 将比较 {cmd:e(datasignature)} 与一种基于 {cmd:e(datasignaturevars)} 和 {cmd:e(sample)} 的新获取签名。
如果数据没有改变，则结果将匹配， {cmd:checkestimationsample} 将静默返回。否则，它将发出错误消息 {err:data have changed since estimation} 并以返回代码 459 中止。


{marker weights}{...}
{title:处理权重}

{pstd}
当您编码

	{cmd:signestimationsample `lhsvar' `rhsvars' `clustervar'}

{pstd}
和 

	{cmd:checkestimationsample}

{pstd}
权重会自动处理。

{pstd}
也就是说，当您 {cmd:signestimationsample} 时，该命令会查找 {cmd:e(wexp)} 并自动在计算校验和时包含任何加权变量。 {cmd:checkestimationsample} 也执行同样的操作。


{marker seldom}{...}
{title:不要不必要地签名}

{pstd}
{cmd:signestimationsample} 和 {cmd:checkestimationsample}
是限制后估计 
计算仅适用于估计样本的优秀解决方案。然而，大多数
统计数据不需要如此限制。如果您的后估计
命令都不需要 {cmd:checkestimationsample}，则无须
{cmd:signestimationsample}。

{pstd}
计算校验和需要时间。这并不多，但也不是
零。在 2.8 GHz 的计算机上，计算 100 个变量和 50,000 个观测值的校验和需要大约四分之一秒。


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:signestimationsample} 将以下内容存储在 {cmd:e()} 中：

{synoptset 23 tabbed}{...}
{p2col 5 23 25 2: 宏}{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算
                                   校验和的变量{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{p2colreset}{...}

{pstd}
存储的签名格式由 
{cmd:datasignature,} {cmd:fast} {cmd:nonames} 生成；
请参见 {manhelp datasignature D}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <signestimationsample.sthlp>}