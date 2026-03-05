{smcl}
{* *! version 2.2.3  19oct2017}{...}
{viewerdialog "estimates save" "dialog estimates_save"}{...}
{viewerdialog "estimates use" "dialog estimates_use"}{...}
{vieweralsosee "[R] estimates save" "mansection R estimatessave"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estimates" "help estimates_zh"}{...}
{viewerjumpto "语法" "estimates_save_zh##syntax"}{...}
{viewerjumpto "菜单" "estimates_save_zh##menu"}{...}
{viewerjumpto "描述" "estimates_save_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "estimates_save_zh##linkspdf"}{...}
{viewerjumpto "选项" "estimates_save_zh##options"}{...}
{viewerjumpto "备注" "estimates_save_zh##remarks"}{...}
{viewerjumpto "存储结果" "estimates_save_zh##results"}
{help estimates_save:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[R] estimates save} {hline 2}}保存并使用估计结果{p_end}
{p2col:}({mansection R estimatessave:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{opt est:imates} {cmd:save}
{it:{help filename_zh}}
[{cmd:,} 
{cmd:append}
{cmd:replace}]

{p 8 12 2}
{opt est:imates} {cmd:use}{bind: }
{it:{help filename_zh}}
[{cmd:,} 
{opt number(#)}]


{p 8 28 2}
{opt est:imates} {cmd:esample:} 
[{it:{help varlist_zh}}]
{ifin}
{weight}{break}
[{cmd:,}
{cmd:replace}
{cmdab:str:ingvars(}{varlist}{cmd:)}
{cmdab:zero:weight}]

{p 8 12 2}
{opt est:imates} {cmd:esample} 


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estimates} {cmd:save} {it:{help filename_zh}} 将当前（活动）估计结果保存到 {it:filename} 中。

{pstd}
{cmd:estimates} {cmd:use} {it:filename} 将保存在 {it:filename} 中的结果加载到当前（活动）估计结果中。

{pstd}
在这两种情况下，如果 {it:filename} 没有指定扩展名，默认假定为 {cmd:.ster}。

{pstd}
{cmd:estimates} {cmd:esample:} （注意冒号）重置 {cmd:e(sample)}。在执行 
{cmd:estimates} {cmd:use} {it:filename} 后，{cmd:e(sample)} 被设置为 0，意味着当前内存中的观察样本均未参与估计。

{pstd}
{cmd:estimates} {cmd:esample} （没有冒号）显示当前如何设置 {cmd:e(sample)}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R estimatessaveQuickstart:快速开始}

        {mansection R estimatessaveRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt append}，与 {cmd:estimates} {cmd:save} 一起使用，指定将结果追加到现有文件中。如果文件尚不存在，将创建一个新文件。

{phang}
{cmd:replace}，与 {cmd:estimates} {cmd:save} 一起使用，指定 
    {it:{help filename_zh}} 可以被替换，如果它已经存在。

{phang}
{opt number(#)}，与 {cmd:estimates} {cmd:use} 一起使用，指定从 {it:{help filename_zh}} 中加载第 {it:#} 组估计结果。这假定多个估计结果组已通过 {cmd:estimates} {cmd:save,} {cmd:append} 保存在 {it:filename} 中。默认值为 {cmd:number(1)}。

{phang}
{cmd:replace}，与 {cmd:estimates} {cmd:esample:} 一起使用，指定即使 {cmd:e(sample)} 已经设置也可以被替换。

{phang}
{cmd:stringvars(}{varlist}{cmd:)}, 与 {cmd:estimates}
    {cmd:esample:} 一起使用，指定字符串变量。包含 {cmd:""} 的变量的观察样本将被省略在 {cmd:e(sample)} 中。

{phang}
{cmd:zeroweight}，与 {cmd:estimates} {cmd:esample:} 一起使用，指定包含零权重的观察样本也要包括在 {cmd:e(sample)} 中。


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {bf:{help estimates_zh:[R] estimates}} 以获取 {cmd:estimates} 命令的概述。

{pstd}
有关 {cmd:estimates} {cmd:save} 和 {cmd:estimates} {cmd:use} 的描述，请参见 {it:{help estimates##saving:保存和使用估计结果}} 在 {bf:{help estimates_zh:[R] estimates}} 中。

{pstd}
本条目的其余部分涉及 {cmd:e(sample)}。

{pstd}
备注按以下标题呈现：

	{help estimates_save##setting:设置 e(sample)}
	{help estimates_save##resetting:重置 e(sample)}
	{help estimates_save##determining:确定谁设置了 e(sample)}


{marker setting}{...}
{title:设置 e(sample)}

{pstd}
在执行 {cmd:estimates} {cmd:use} {it:filename} 后，情况与您刚刚拟合模型后的情况几乎相同。唯一的区别是 {cmd:e(sample)} 被设置为 0。

{pstd} 
{cmd:e(sample)} 是 Stata 用于标记哪些当前内存中的观察样本在生成估计时被使用的函数。例如，你可能键入 

	. {cmd:regress mpg weight displ if foreign}
	  {it:(输出省略)}

	. {cmd:summarize mpg if e(sample)}
	  {it:(输出省略)}

{pstd}
而 {cmd:summarize} 将报告 {cmd:regress} 实际使用的观察样本的摘要统计数据，这将排除不仅 {cmd:foreign} = 0 的观察样本，还排除了任何 {cmd:mpg}、{cmd:weight} 或 {cmd:displ} 缺失的观察样本。

{pstd} 
然而，如果您保存了上述估计结果并随后重新加载它们，{cmd:summarize} {cmd:mpg} {cmd:if} {cmd:e(sample)} 将产生

	. {cmd:summarize mpg if e(sample)}

	{txt}    变量 {c |}       观测        平均      标准差       最小        最大
	{hline 13}{c +}{hline 56}
                 mpg {c |}{txt}         0

{pstd}
Stata 认为没有这些观察样本被用于产生当前加载的估计。

{pstd}
Stata 还可能认为什么？当你 {cmd:estimates} {cmd:use}
{it:filename} 时，您无需在内存中保留原始数据。即使您在内存中拥有与原始数据看似相似的数据，它们也可能不是。将 {cmd:e(sample)} 设置为 0 是安全的做法。有些后估计统计量，例如，仅在对估计样本计算时才适用。将 {cmd:e(sample)} 设置为 0 确保如果您请求其中之一，您将获得空结果。

{pstd}
我们建议您将 {cmd:e(sample)} 保持在 0。但如果您确实需要计算该后估计统计量怎么办？好吧，您可以得到它，但您将负责正确设置 {cmd:e(sample)}。在这里我们恰好知道，所有 {cmd:foreign} = 1 的观察样本都被使用了，因此我们可以键入 

	. {cmd:estimates esample:  if foreign}

{pstd}
如果所有观察样本都被使用，那么我们可以简单地键入 

	. {cmd:estimates esample:}

{pstd} 
然而，安全的做法是查看估计命令 --
{cmd:estimates} {cmd:describe} 将向您展示 -- 然后键入 

	. {cmd:estimates esample:  mpg weight displ if foreign}

{pstd}
我们包括所有 {cmd:foreign} = 1 的观察样本，排除了 {cmd:mpg}、{cmd:weight} 或 {cmd:displ} 变量中缺失值的观察样本，这些将被视为估计样本。


{marker resetting}{...}
{title:重置 e(sample)}

{pstd}
{cmd:estimates} {cmd:esample:} 将允许您不仅设置还可以重置 {cmd:e(sample)}。如果 {cmd:e(sample)} 已经被设置（假设您刚刚拟合了模型）而您试图设置它，您将看到

	. {cmd:estimates esample:  mpg weight displ if foreign}
	{err:no; e(sample) already set}
	r(322);

{pstd}
在这里您可以指定 {cmd:replace} 选项：

	. {cmd:estimates esample:  mpg weight displ if foreign, replace}

{pstd}
我们不建议重置 {cmd:e(sample)}，但可能会出现需要的情况。假设您 {cmd:estimates} {cmd:use} 
{it:filename}，您设置了 {cmd:e(sample)}，然后您意识到您设置错了。这时您会想重置它。


{marker determining}{...}
{title:确定谁设置了 e(sample)}

{pstd}
{cmd:estimates} {cmd:esample} 没有冒号将报告 {cmd:e(sample)} 是否被设置及如何被设置。您可能会看到 

	. {cmd:estimates esample}
	  e(sample) 由估计命令设置

{pstd} 
或

	. {cmd:estimates esample}
	  e(sample) 由用户设置

{pstd} 
或

	. {cmd:estimates esample}
	  e(sample) 未设置（假定为 0）


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estimates} {cmd:esample} 没有冒号存储宏 {cmd:r(who)}， 
将包含 {cmd:cmd}、{cmd:user} 或 {cmd:zero'd}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estimates_save.sthlp>}