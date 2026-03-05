{smcl}
{* *! version 1.0.10  15may2018}{...}
{vieweralsosee "[MI] mi XXXset" "mansection MI miXXXset"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{viewerjumpto "Syntax" "mi_xxxset_zh##syntax"}{...}
{viewerjumpto "Description" "mi_xxxset_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_xxxset_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mi_xxxset_zh##remarks"}
{help mi_xxxset:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[MI] mi XXXset} {hline 2}}声明 mi 数据为 svy、st、ts、xt 等等。{p_end}
{p2col:}({mansection MI miXXXset:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{col 9}{...}
{cmd:mi} {cmd:fvset} ...{...}
{right:{it:见} {bf:{help fvset_zh:[R] fvset}}        }

{col 9}{...}
{cmd:mi} {cmd:svyset} ...{...}
{right:{it:见} {bf:{help svyset_zh:[SVY] svyset}}     }

{col 9}{...}
{cmd:mi} {cmd:stset} ...{...}
{right:{it:见} {bf:{help stset_zh:[ST] stset}}       }
{col 9}{...}
{cmd:mi} {cmd:streset} ...
{col 9}{...}
{cmd:mi} {cmd:st} ...

{col 9}{...}
{cmd:mi} {cmd:tsset} ...{...}
{right:{it:见} {bf:{help tsset_zh:[TS] tsset}}       }
{col 9}{...}
{cmd:mi} {cmd:xtset} ...{...}
{right:{it:见} {bf:{help xtset_zh:[XT] xtset}}       }


{marker description}{...}
{title:描述}

{p 4 4 2}
使用 Stata 的某些功能需要设置您的数据。上述命令允许您使用 {cmd:mi} 数据来完成此操作。{cmd:mi} 变体具有相同的语法，并以相同方式工作，正如原始命令一样。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miXXXsetRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
如果您在 {cmd:mi} {cmd:set} 数据之前使用上述任何命令设置了数据，则没有问题；该设置会被自动导入。然而，一旦您 {cmd:mi} {cmd:set} 数据，您会发现 Stata 的其他设置命令将不再有效。例如，以下是对一个 {cmd:mi} {cmd:set} 数据集输入 {cmd:stset} 的结果：

	. {cmd:stset} ...
{p 8 12 2}
{err}不；数据为 {bf:mi set}{break}
使用 {bf:mi stset} 来设置或查询这些数据；
{bf:mi stset} 的语法与 {bf:stset} 相同。{txt}

{pmore2}
{err}也许您没有输入 {bf:stset}。某些命令调用 {bf:stset} 来获取有关设置的信息。在这种情况下，该命令不适合直接在 {bf:mi} 数据上运行。使用 {bf:mi extract} 来选择您要运行该命令的数据，可能是 {it:m}=0。{txt}
{p_end}
	r(119);

{p 4 4 2}
此外，您有时可能会看到类似于上面的错误，当您给出一个依赖于数据由 Stata 的其他设置命令设置的命令时。通常，您在 {cmd:mi} 数据上直接运行这样的命令是奇怪的，因为您将获得的结果将取决于 {cmd:mi} 风格的数据。然而，您也许在使用 {cmd:mi} 宽数据，其中数据的结构或多或少地对应于非 {cmd:mi} 数据的结构，或者您可能已经巧妙地指定了适当的 {cmd:if} 语句，以考虑您使用的 {cmd:mi} 风格的数据。无论如何，结果可能是

	. {it:some_other_command}
{p 8 12 2}
{err}不；数据为 {bf:mi set}{break}
使用 {bf:mi XXXset} 来设置或查询这些数据；
{bf:mi XXXset} 的语法与 {bf:XXXset} 相同。{txt}
{p_end}

{pmore2}
{err}
也许您没有输入 {bf:stset}。某些命令调用 {bf:stset} 来获取有关设置的信息。在这种情况下，该命令不适合直接在 {bf:mi} 数据上运行。使用 {bf:mi extract} 来选择您要运行该命令的数据，可能是 {it:m}=0。{txt}
{p_end}
	r(119);

{p 4 4 2}
将上述列出的设置命令中的一个替换为 XXXset，然后理解刚刚发生了什么。您正确地使用了 {cmd:mi} {cmd:XXXset} 来设置您的数据，您认为您的数据已设置，但当您尝试使用依赖于数据被 XXXset 的命令时，您收到了这个错误。

{p 4 4 2}
如果您遇到这种情况，解决方案是使用 
{bf:{help mi_extract_zh:mi extract}} 
获取要运行该命令的数据 -- 可能是 {it:m}=0，因此您需要输入 {cmd:mi} {cmd:extract} 
{cmd:0} -- 然后再运行该命令。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_xxxset.sthlp>}