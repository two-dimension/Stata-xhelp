{smcl}
{* *! version 1.0.0  19jun2019}{...}
{viewerdialog "estimates selected" "dialog estimates_selected"}{...}
{vieweralsosee "[R] estimates selected" "mansection R estimatesselected"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estimates" "help estimates_zh"}{...}
{vieweralsosee "[LASSO] lassocoef" "help lassocoef_zh"}{...}
{viewerjumpto "Syntax" "estimates_selected_zh##syntax"}{...}
{viewerjumpto "Menu" "estimates_selected_zh##menu"}{...}
{viewerjumpto "Description" "estimates_selected_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "estimates_selected_zh##linkspdf"}{...}
{viewerjumpto "Options" "estimates_selected_zh##options"}{...}
{viewerjumpto "Examples" "estimates_selected_zh##examples"}{...}
{viewerjumpto "Stored results" "estimates_selected_zh##results"}
{help estimates_selected:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[R] estimates selected} {hline 2}}显示选定的系数{p_end}
{p2col:}({mansection R estimatesselected:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{opt est:imates} {opt sel:ected} 
[{it:namelist}]
[{cmd:,}
{it:options}]

{phang}
{it:namelist}是指以前存储的估计结果的名称，
一个名称列表，{cmd:_all} 或 {cmd:*}。一个名称可以是 {cmd:.}，表示
当前（活动）估计结果。{cmd:_all} 和 {cmd:*} 意思相同。

{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{cmdab:di:splay(}{it:{help estimates selected##display:info}}{cmd:)}}显示
	{it:info}; 默认是 {cmd:display(x)}
{p_end}
{synopt:{cmd:sort(}{it:{help estimates selected##sort:on}}{cmd:)}}按 {it:on} 的顺序对
	行进行排序
{p_end}

{syntab:报告}
{synopt :{opt noabbrev}}不缩写变量名称
{p_end}
{synopt :{it:{help estimates_selected##display_options:display_options}}}控制
       行间距、行宽，以及省略变量和基础及空单元的显示
{p_end}
{synoptline}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 事后估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estimates} {cmd:selected} 报告一个或多个
估计结果中的系数。它创建一个表格，指明在每个模型中哪些系数被
估计，并在请求时报告这些系数的值。结果可以根据估计的
系数值或变量名称进行排序。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R estimatesselectedQuickstart:快速开始}

        {mansection R estimatesselectedRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{marker display}{...}
{phang}
{opt display(info)}指定要在表中显示的内容。
默认是 {cmd:display(x)}。

{pmore}
表中空单元表示相应的
协变量没有拟合值。对于一些没有拟合值的协变量，表中报告了一个
指示省略原因的代码。
因素和交互的基础水平用字母 {bf:b} 编码。
因素和交互的空水平用字母 {bf:e} 编码。
因共线性而省略的协变量用字母 {bf:o} 编码。

{phang2}
{cmd:display(x)} 在表格中显示协变量有拟合值的单元的 {cmd:x}。这是默认设置。

{phang2}
{cmd:display(u)} 与 {cmd:display(x)} 相同，除了当一个协变量 
未在模型中指定时，单元中显示 {cmd:u} （表示不可用），而非空单元。

{phang2}
{cmd:display(}{cmd:coef} [{cmd:,} {cmd:eform} {opth f:ormat(%fmt)}]{cmd:)}
指定在表格中显示系数值。

{phang3}
{cmd:eform}以指数形式显示系数值。
对于每个系数，显示 exp(b) 而不是 b。
该选项可用于显示 
赔率比、
发生率比、
相对风险比、
风险比和 
亚风险比
在适当的估计命令之后。

{phang3}
{cmd:format(}{cmd:%}{it:{help format_zh:fmt}}{cmd:)}
指定系数在表中的显示格式。
默认是 {cmd:format(%9.0g)}。

{marker sort}{...}
{phang}
{opt sort(on)}指定如何对表中行进行排序。
默认情况下，系数按照其在 
估计结果中的顺序显示。

{phang2}
{cmd:sort(none)} 指定行不进行排序。
这是默认设置。
系数的顺序取自 {cmd:e(b)} 中的顺序。

{phang2}
{cmd:sort(names)} 按协变量的变量名称字母顺序对行进行排序。
在因素变量的情况下，主要效应和非因素变量 
首先按字母顺序显示；接着所有两-way 交互 
按字母顺序显示，然后是所有三-way 交互，以此类推。

{phang2}
{cmd:sort(coef)}
按系数的绝对值降序对行进行排序。
当显示两个或多个估计结果的结果时，
结果首先按第一个估计结果的顺序排序，未在第一个估计结果中的系数
的行最后排列。在表示未在第一个估计结果中系数的行中，
这些行按第二个估计结果的排序进行排序，其中未在第一个或第二个估计结果中的系数的行最后排列。以此类推。

{dlgtab:报告}

{phang}
{cmd:noabbrev} 防止在表的行标题中缩写变量名称。 
如果长变量名称不适合，则会分成多行。

{marker display_options}{...}
{phang}
{it:display_options}：
{opt vsquish}、
{opt fvwrap(#)}、
{opt fvwrapon(style)} 和
{opt nolstretch}；
    请参见 {helpb estimation options##display_options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress mpg gear turn}{p_end}
{phang2}{cmd:. estimates store small}{p_end}
{phang2}{cmd:. regress mpg gear turn length}{p_end}
{phang2}{cmd:. estimates store large}

{pstd}显示在 {cmd:small} 和 {cmd:large}
估计结果中拟合了哪些协变量{p_end}
{phang2}{cmd:. estimates selected small large}

{pstd}与上述相同，但按协变量名称排序{p_end}
{phang2}{cmd:. estimates selected small large, sort(names)}

{pstd}与上述相同，但显示系数值{p_end}
{phang2}{cmd:. estimates selected small large, sort(names) display(coef)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estimates selected} 存储以下内容到 {cmd:r()}：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(names)}}使用的结果名称{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(coef)}}矩阵 {it:M}: {it:n} {it:x} {it:m}{p_end}
{synopt:}{it:M}[{it:i}, {it:j}] = 
{it:i}th系数估计值用于模型 {it:j};{break}
{it:i} = 1, ..., {it:n}; j = 1, ..., {it:m}
{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estimates_selected.sthlp>}