{smcl}
{* *! version 2.2.0  22apr2019}{...}
{vieweralsosee "[R] estimates" "mansection R estimates"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] _estimates" "help _estimates_zh"}{...}
{viewerjumpto "语法" "estimates_zh##syntax"}{...}
{viewerjumpto "描述" "estimates_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "estimates_zh##linkspdf"}{...}
{viewerjumpto "备注" "estimates_zh##remarks"}
{help estimates:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] estimates} {hline 2}}保存和操作估计结果{p_end}
{p2col:}({mansection R estimates:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{col 9}命令{col 50}参考
{col 9}{hline 65}
{col 9}{it:从磁盘保存和使用结果}

{col 9}  {opt est:imates} {cmd:save} {it:{help filename_zh}}{...}
{col 50}{bf:{help estimates_save_zh:[R] estimates save}}
{col 9}  {opt est:imates} {cmd:use}  {it:{help filename_zh}}{...}
{col 50}{bf:{help estimates_save_zh:[R] estimates save}}

{col 9}  {opt est:imates} {opt des:cribe} {cmd:using} {it:{help filename_zh}}{...}
{col 50}{bf:{help estimates_describe_zh:[R] estimates describe}}

{col 9}  {opt est:imates} {opt esample}{cmd::} ...{...}
{col 50}{bf:{help estimates_save_zh:[R] estimates save}}

{col 9}{hline 65}
{col 9}{it:在内存中存储和恢复估计}

{col 9}  {opt est:imates} {opt sto:re}   {it:name}{...}
{col 50}{bf:{help estimates_store_zh:[R] estimates store}}
{col 9}  {opt est:imates} {opt res:tore} {it:name}{...}
{col 50}{bf:{help estimates_store_zh:[R] estimates store}}

{col 9}  {opt est:imates} {opt q:uery}{...}
{col 50}{bf:{help estimates_store_zh:[R] estimates store}}
{col 9}  {opt est:imates} {opt dir}{...}
{col 50}{bf:{help estimates_store_zh:[R] estimates store}}

{col 9}  {opt est:imates} {opt drop}    {it:namelist}{...}
{col 50}{bf:{help estimates_store_zh:[R] estimates store}}
{col 9}  {opt est:imates} {opt clear}{...}
{col 50}{bf:{help estimates_store_zh:[R] estimates store}}

{col 9}{hline 65}
{col 9}{it:设置标题和备注}

{col 9}  {opt est:imates} {opt title}{cmd::} {it:text}{...}
{col 50}{bf:{help estimates_title_zh:[R] estimates title}}
{col 9}  {opt est:imates} {opt title}{...}
{col 50}{bf:{help estimates_title_zh:[R] estimates title}}

{col 9}  {opt est:imates} {opt note:s}{cmd::} {it:text}{...}
{col 50}{bf:{help estimates_notes_zh:[R] estimates notes}}
{col 9}  {opt est:imates} {opt note:s}{...}
{col 50}{bf:{help estimates_notes_zh:[R] estimates notes}}
{col 9}  {opt est:imates} {opt note:s} {opt l:ist} ...{...}
{col 50}{bf:{help estimates_notes_zh:[R] estimates notes}}
{col 9}  {opt est:imates} {opt note:s} {cmd:drop} ...{...}
{col 50}{bf:{help estimates_notes_zh:[R] estimates notes}}

{col 9}{hline 65}
{col 9}{it:报告}

{col 9}  {opt est:imates} {opt des:cribe} [{it:name}]{...}
{col 50}{bf:{help estimates_describe_zh:[R] estimates describe}}
{col 9}  {opt est:imates} {opt r:eplay}   [{it:namelist}]{...}
{col 50}{bf:{help estimates_replay_zh:[R] estimates replay}}

{col 9}{hline 65}
{col 9}{it:表和统计}

{col 9}  {opt est:imates} {opt tab:le} [{it:namelist}]{...}
{col 50}{bf:{help estimates_table_zh:[R] estimates table}}
{col 9}  {opt est:imates} {opt sel:ected} [{it:namelist}]{...}
{col 50}{bf:{help estimates_selected_zh:[R] estimates selected}}
{col 9}  {opt est:imates} {opt stat:s} [{it:namelist}]{...}
{col 50}{bf:{help estimates_stats_zh:[R] estimates stats}}
{col 9}  {opt est:imates} {opt for} {it:namelist}{cmd::} ...{...}
{col 50}{bf:{help estimates_for_zh:[R] estimates for}}

{col 9}{hline 65}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estimates} 允许您存储和操作估计结果：

{p 8 12 2}
o  您可以将估计结果保存到文件中，以便在后来的会话中使用。

{p 8 12 2}
o  您可以将估计结果存储在内存中，以便您可以

{p 12 16 2}
a.  在不同的估计结果之间切换，以及

{p 12 16 2}
b.  形成结合不同估计结果的表格。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R estimatesRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:estimates} 用于您拟合模型之后，无论是使用 
{cmd:regress}、{cmd:logistic} 等等。 您可以在任何估计命令之后使用 {cmd:estimates} ，无论是 Stata 的官方估计命令还是社区贡献的命令。

{pstd}
{cmd:estimates} 具有三个独立但相关的功能：

{p 8 12 2}
1.  您可以将估计结果保存到磁盘上的文件中，以便 
    以后使用，甚至在不同的 Stata 会话中。

{p 8 12 2}
2.  您可以在内存中存储最多 300 个估计结果，以便 
    随时使用。

{p 8 12 2}
3.  您可以制作比较您在内存中存储的任何结果的表格。

{pstd}
备注按以下标题呈现：

	{help estimates##saving:保存和使用估计结果}
	{help estimates##storing:存储和恢复估计结果}
	{help estimates##comparing:比较估计结果}


{marker saving}{...}
{title:保存和使用估计结果}

{pstd}
在您拟合模型之后，例如，使用 {cmd:regress}，输入

	. {cmd:sysuse auto}
	. {cmd:regress mpg weight displ foreign}

{pstd}
您可以将结果保存到文件中：

	. {cmd:estimates save basemodel}

{pstd}
稍后，比如在不同的会话中，您可以重新加载这些结果：

	. {cmd:estimates use basemodel}

{pstd}
此时的情况与您拟合模型后几乎相同。  您可以重新播放估计结果：

	. {cmd:regress}

{pstd} 
您可以执行测试：

	. {cmd:test foreign==0}

{pstd}
而且您可以使用 Stata 的任何后估计命令或后估计功能。 唯一的不同是 Stata 不再知道原始估计样本是什么，{cmd:e(sample)} 在 Stata 行话中。  当您重新加载估计结果时，您可能甚至在内存中没有原始数据。  这没关系。 Stata 会知道拒绝计算只能针对原始估计样本计算的任何内容。

{pstd}
如果您使用只能针对原始估计样本使用的后估计命令很重要，您可以用一种方式来做到这一点。 您 {cmd:use} 原始数据，然后使用 {cmd:estimates} {cmd:esample:} 告诉 Stata 原始样本是什么。

{pstd} 
有关详细信息，请参见 {bf:{help estimates_save_zh:[R] estimates save}}。


{marker storing}{...}
{title:存储和恢复估计结果}

{pstd}
在内存中存储和恢复估计结果与将它们保存到磁盘非常相似。 您输入

	. {cmd:estimates store base}

{pstd} 
以将当前估计结果保存为名称为 {cmd:base} 的文件，并且您输入

	. {cmd:estimates restore base}

{pstd} 
以便稍后取回它们。 您可以通过输入

	. {cmd:estimates dir}

{pstd}
来查看您存储了什么。

{pstd}
将估计结果保存到磁盘比存储在内存中更永久，那么您为什么只想存储它们？ 答案是，一旦它们被存储，您可以使用其他 {cmd:estimates} 命令从中生成表格和报告。

{pstd}
有关 {cmd:estimates} {cmd:store} 和 {cmd:restore} 命令的详细信息，请参见 {bf:{help estimates_store_zh:[R] estimates store}}。


{marker comparing}{...}
{title:比较估计结果}

{pstd}
假设您已经做了以下操作：

	. {cmd:sysuse auto}
	. {cmd:regress mpg weight displ}
	. {cmd:estimates store base}
	. {cmd:regress mpg weight displ foreign}
	. {cmd:estimates store alt}

{pstd} 
您现在可以获取一个比较系数的表：

	. {cmd:estimates table base alt}

{pstd}
{cmd:estimates} {cmd:table} 可以做更多；请参见 
{bf:{help estimates_table_zh:[R] estimates table}}。
还请参见 
{bf:{help estimates_stats_zh:[R] estimates stats}}。  
{cmd:estimates} {cmd:stats} 与 {cmd:estimates} {cmd:table} 的工作方式相似，但
以 BIC 和 AIC 的形式生成模型比较。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estimates.sthlp>}