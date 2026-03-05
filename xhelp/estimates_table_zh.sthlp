{smcl}
{* *! version 2.2.18  14may2018}{...}
{viewerdialog "estimates table" "dialog estimates_table"}{...}
{vieweralsosee "[R] estimates table" "mansection R estimatestable"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estimates" "help estimates_zh"}{...}
{viewerjumpto "Syntax" "estimates_table_zh##syntax"}{...}
{viewerjumpto "Menu" "estimates_table_zh##menu"}{...}
{viewerjumpto "Description" "estimates_table_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "estimates_table_zh##linkspdf"}{...}
{viewerjumpto "Options" "estimates_table_zh##options"}{...}
{viewerjumpto "Examples" "estimates_table_zh##examples"}{...}
{viewerjumpto "Stored results" "estimates_table_zh##results"}
{help estimates_table:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[R] estimates table} {hline 2}}比较估计结果{p_end}
{p2col:}({mansection R estimatestable:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{opt est:imates} {opt tab:le} 
[{it:namelist}]
[{cmd:,}
{it:options}]

{phang}
{it:namelist} 是指先前存储的估计结果的名称，可以是名称列表、 {cmd:_all} 或 {cmd:*}。 一个名称可以是 {cmd:.}，表示当前（活动）估计。 {cmd:_all} 和 {cmd:*} 意思相同。


{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{cmd:stats(}{it:{help estimates table##scalarlist:scalarlist}}{cmd:)}}在表格中报告 {it:scalarlist}{p_end}
{synopt:{cmd:star}[{cmd:(}{it:{help estimates table##123:#1 #2 #3}}{cmd:)}]}使用星号标注显著性{p_end}

{syntab:选项}
{synopt:{cmdab:k:eep(}{it:{help estimates table##coeflist:coeflist}}{cmd:)}}按指定顺序报告系数{p_end}
{synopt:{cmdab:d:rop(}{it:{help estimates table##coeflist:coeflist}}{cmd:)}}从表中省略指定系数{p_end}
{synopt:{opt eq:uations}{cmd:(}{it:{help estimates table##matchlist:matchlist}}{cmd:)}}按指定的方式匹配模型的方程{p_end}

{syntab:数值格式}
{synopt:{cmd:b}[{cmd:(}{help %fmt:{bf:%}{it:fmt}}{cmd:)}]}如何格式化系数，始终报告{p_end}
{synopt:{cmd:se}[{cmd:(}{help %fmt:{bf:%}{it:fmt}}{cmd:)}]}报告标准误并使用可选格式{p_end}
{synopt:{cmd:t}[{cmd:(}{help %fmt:{bf:%}{it:fmt}}{cmd:)}]}报告 t 或 z 并使用可选格式{p_end}
{synopt:{cmd:p}[{cmd:(}{help %fmt:{bf:%}{it:fmt}}{cmd:)}]}报告 p 值并使用可选格式{p_end}
{synopt:{opt stf:mt}{cmd:(}{help %fmt:{bf:%}{it:fmt}}{cmd:)}}如何格式化标量统计量{p_end}

{syntab:通用格式}
{synopt:{opt var:width}{cmd:(}{it:#}{cmd:)}}使用 {it:#} 个字符显示变量名和统计量{p_end}
{synopt:{opt model:width}{cmd:(}{it:#}{cmd:)}}使用 {it:#} 个字符显示模型名称{p_end}

{synopt:{cmd:eform}}以指数形式显示系数{p_end}
{synopt:{opt varl:abel}}显示变量标签而不是变量名称{p_end}
{synopt:{opt new:panel}}在不同于系数表的表格中显示统计量{p_end}

{synopt:{opt sty:le}{cmd:(oneline)}}在变量名称后放置竖线；这是默认设置{p_end}
{synopt:{opt sty:le}{cmd:(columns)}}在每列之间放置竖线{p_end}
{synopt:{opt sty:le}{cmd:(noline)}}抑制所有竖线{p_end}

{synopt:{opt cod:ed}}显示紧凑表{p_end}

{syntab:报告}
{synopt :{it:{help estimates_table##display_options:display_options}}}控制行间距、线宽，以及省略的变量和基础单元格的显示{p_end}

{synopt:{opt ti:tle}{cmd:(}{it:{help strings_zh:string}}{cmd:)}}
表格标题{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{cmd:title()} 不会出现在对话框中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 估计结果后处理}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estimates} {cmd:table} 将一个或多个模型的估计结果组织成单个格式化的表格。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R estimatestableQuickstart:快速入门}

        {mansection R estimatestableRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{marker scalarlist}{...}
{phang}
{cmd:stats(}{it:scalarlist}{cmd:)} 指定要在表中显示的 {cmd:e()} 中存储的标量的任何或所有名称的列表。 {it:scalarlist} 还可以包含以下内容：

		{cmd:aic}        Akaike 信息准则
		{cmd:bic}        Schwarz 的贝叶斯信息准则
		{cmd:rank}       {cmd:e(V)} 的秩（模型中的自由参数数量）

{pmore} 
    指定的统计量不必在所有显示的估计结果中可用。

{pmore} 
    例如，{cmd:stats(N ll chi2 aic)} 指定 {cmd:e(N)}、 {cmd:e(ll)}、 {cmd:e(chi2)} 和 AIC 被包含。在 Stata 中， {cmd:e(N)} 记录观测值的数量； {cmd:e(ll)} 记录对数似然； {cmd:e(chi2)} 是全模型第一个方程中所有系数等于零的卡方检验。

{marker 123}{...}
{phang}
{cmd:star} 和 {cmd:star(}{it:#1 #2 #3}{cmd:)} 指定使用星号（星号）来标注显著性。第二种语法指定一个、两个和三个星号的显著性。如果您仅指定 {cmd:star}，则相当于指定 {cmd:star(.05} {cmd:.01} {cmd:.001}{cmd:)}, 这表示如果 {it:p} < 0.05 则为一个星号（*），如果 {it:p} < 0.01 则为两个星号（**），如果 {it:p} < 0.001 则为三个星号（***）。

{pmore}
    {cmd:star} 和 {cmd:star()} 选项不能与 {cmd:se}、 {cmd:t} 或 {cmd:p} 选项结合使用。

{dlgtab:选项}

{marker coeflist}{...}
{phang}
{cmd:keep(}{it:coeflist}{cmd:)} 
和 
{cmd:drop(}{it:coeflist}{cmd:)} 
    是可替代的；它们指定要包含或省略的系数。默认是显示所有系数。

{pmore}
    如果指定了 {cmd:keep()}，不仅指定要包含的系数，还指定它们出现的顺序。

{pmore}
    {it:coeflist} 是系数名称的列表，每个名称可以是简单的（例如， {cmd:price}）、方程名称后跟一个冒号（例如， {cmd:mean:}）或完整名称（例如， {cmd:mean:price}）。名称之间用空格分隔。

{pmore}
    当未指定完整名称时，所有匹配部分规格的系数将被包含。例如， {cmd:drop(_cons)} 将省略在所有方程中的 {cmd:_cons}。
 
{marker matchlist}{...}
{phang}
{cmd:equations(}{it:matchlist}{cmd:)} 指定在 {it:namelist} 中如何匹配模型的方程。 默认是按名称匹配方程。当您比较来自不同估计命令的结果时，指定 {cmd:equations()} 可能是必要的。

{pmore}
最常见的用法是 {cmd:equations(1)}，指示将所有第一方程匹配为一个名为 {cmd:#1} 的方程。

{pmore} 
{it:matchlist} 具有以下语法 

		{it:term} [{cmd:,} {it:term} ... ]

{pmore} 
{it:term} 是 

		[{it:eqname} {cmd:=}] {it:#}{cmd::}{it:#}...{cmd::}{it:#}{col 50}(语法 1)

		[{it:eqname} {cmd:=}] {it:#}{col 50}(语法 2)

{pmore}
在语法 1 中，每个 {it:#} 是一个数字或一个句点 ({cmd:.})。 如果是数字，则指定相应模型中方程的位置； {cmd:1:3:1} 表示第一个模型的方程 1 与第二个模型的方程 3 匹配，该方程与第三个模型的方程 1 匹配。句点表示在模型中没有相应的方程； {cmd:1:.:1} 表示第一个模型的方程 1 与第三个模型的方程 1 匹配。

{pmore} 
在语法 2 中，您只需指定一个数字，例如 {cmd:1} 或 {cmd:2}，这相当于 {cmd:1:1}...{cmd::1} 或 {cmd:2:2}...{cmd::2}，这意味着方程 1 在所有指定的模型中匹配，或方程 2 在所有指定的模型中匹配。

{pmore} 
现在您可以指定 {it:term}，您可以通过用逗号将一个项与另一个项分开，将其组合成 {it:matchlist}。接下来，我们将假设指定了三个名称，

		. {cmd:estimates table alpha beta gamma,} ...
	
{pmore} 
{cmd:equations(1)} 与 {cmd:equations(1:1:1)} 等价；我们会说第一方程在所有方面匹配。

{pmore} 
{cmd:equations(1:.:1)} 将指定方程 1 在模型 {cmd:alpha} 和 {cmd:gamma} 中匹配，但在模型 {cmd:beta} 中没有相应的内容。

{pmore} 
{cmd:equations(1,2)} 与 {cmd:equations(1:1:1, 2:2:2)} 等价。我们会说第一方程在所有方面匹配，第二方程也是。

{pmore} 
{cmd:equations(1, 2:.:2)} 将指定第一方程在所有方面匹配，第二方程在模型 {cmd:alpha} 和 {cmd:gamma} 中匹配，并且在模型 {cmd:beta} 中没有等价于方程 2 的内容。

{pmore} 
如果指定了 {cmd:equations()}，未按位置匹配的方程将按名称匹配。

{dlgtab:数值格式}

{phang}
{opth b(%fmt)} 指定系数的显示方式。 您可以指定 {cmd:b(%9.2f)} 使小数点对齐。 还有一个 {cmd:b} 选项，指定系数将被显示，但只为与 {cmd:se}、 {cmd:t} 和 {cmd:p} 选项一致而引入。 系数始终会显示。

{phang}
{cmd:se}、 {cmd:t} 和 {cmd:p} 指定标准误、 {it:t} 或 {it:z} 统计量和 p 值将被显示。 默认是不显示它们。 {opth se(%fmt)}、 {opt t(%fmt)} 和 {opt p(%fmt)} 指定每个的显示方式，并指定要使用的格式来进行格式化。

{phang}
{opth stfmt(%fmt)} 
    指定用来显示通过 {cmd:stats()} 选项包含的标量统计量的格式。

{dlgtab:通用格式}

{phang}
{cmd:varwidth(}{it:#}{cmd:)}    
    指定用于显示变量和统计量名称的字符位置数。 默认值为 12。

{phang}
{cmd:modelwidth(}{it:#}{cmd:)}    
    指定用于显示模型名称的字符位置数。 默认值为 12。

{phang}
{cmd:eform} 以指数形式显示系数。 对于每个系数，显示 exp({it:b}) 而不是 {it:b}，标准误也相应转换。 如果有截距，则抑制其显示。

{phang}
{cmd:varlabel}    
指示显示变量标签，而不显示变量名称。

{phang}
{cmd:newpanel} 指定将统计数据与系数表分隔开并在表中显示，显示方式与系数的另一方程分开，而不是在方程表中。

{phang}
{cmd:style(}{it:stylespec}{cmd:)} 指定系数表的样式。

{pmore} 
    {cmd:style(oneline)} 指定在变量后显示纵向线，但不在模型之间。 这是默认设置。

{pmore}
    {cmd:style(columns)} 指定在每列后显示纵向线。

{pmore} 
    {cmd:style(noline)} 指定不显示纵向线。

{phang}
{cmd:coded} 指定显示紧凑表。 这种格式特别适用于比较包含在大模型集合中的变量。

{dlgtab:报告}

{marker display_options}{...}
{phang}
{it:display_options}:
{opt noomit:ted}、 {opt vsquish}、 {opt noempty:cells}、 {opt base:levels}、 {opt allbase:levels}、 {opt nofvlab:el}、 {opt fvwrap(#)}，以及 {opt fvwrapon(style)};
    参见 {helpb estimation options##display_options:[R] 估计选项}。

{phang}
以下选项与 {cmd:estimates table} 一起可用，但未在对话框中显示：

{phang}
{cmd:title(}{it:{help strings_zh:string}}{cmd:)} 指定表格上方的标题。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress mpg gear turn}{p_end}
{phang2}{cmd:. estimates store small}{p_end}
{phang2}{cmd:. regress mpg gear turn length}{p_end}
{phang2}{cmd:. estimates store large}

{pstd}为 {cmd:small} 和 {cmd:large} 估计结果显示系数表{p_end}
{phang2}{cmd:. estimates table small large}

{pstd}与上面相同，但还显示标准误{p_end}
{phang2}{cmd:. estimates table small large, se}

{pstd}与上面相同，但将系数和标准误显示到小数点后 4 位{p_end}
{phang2}{cmd:. estimates table small large, b(%7.4f) se(%7.4f)}

{pstd}与上面相同，但还显示样本大小和调整后的 R 平方{p_end}
{phang2}{cmd:. estimates table small large, b(%7.4f) se(%7.4f) stats(N r2_a)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estimates table} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(names)}}使用的结果名称{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(coef)}}矩阵 {it:M}: {it:n} {it:x} 2*{it:m}{p_end}
{synopt:}{it:M}[{it:i}, 2{it:j}-1] = 
第 {it:j} 模型的第 {it:i} 参数估计； 
{p_end}
{synopt:}{it:M}[{it:i}, 2{it:j}{bind:  }] = 
{it:M}[{it:i}, 2{it:j}-1] 的方差；{break}
{it:i} = 1, ..., {it:n}; j = 1, ..., {it:m}
{p_end}

{synopt:{cmd:r(stats)}}矩阵 {it:S}: {it:k x m}
（如果指定了 {cmd:stats()} 选项）{p_end}
{synopt:}{it:S}[{it:i}, {it:j}] = 第 {it:i} 统计量用于模型 {it:j};{break}
i = 1, ..., {it:k}; {it:j} = 1, ..., {it:m}{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estimates_table.sthlp>}