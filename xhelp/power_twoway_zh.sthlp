{smcl}
{* *! version 1.0.16  27feb2019}{...}
{viewerdialog power "dialog power_twoway"}{...}
{vieweralsosee "[PSS-2] power twoway" "mansection PSS-2 powertwoway"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power oneway" "help power oneway"}{...}
{vieweralsosee "[PSS-2] power repeated" "help power repeated"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] anova" "help anova_zh"}{...}
{viewerjumpto "Syntax" "power_twoway_zh##syntax"}{...}
{viewerjumpto "Menu" "power_twoway_zh##menu"}{...}
{viewerjumpto "Description" "power_twoway_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_twoway_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_twoway_zh##options"}{...}
{viewerjumpto "Remarks: Using power twoway" "power_twoway_zh##remarks"}{...}
{viewerjumpto "Examples" "power_twoway_zh##examples"}{...}
{viewerjumpto "Stored results" "power_twoway_zh##stored_results"}
{help power_twoway:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[PSS-2] power twoway} {hline 2}}两因素方差分析的功效分析{p_end}
{p2col:}({mansection PSS-2 powertwoway:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本量

{p 8 20 2}
{opt power} {opt twoway} 
{it:{help power_twoway##meanspec:meanspec}} 
[{cmd:,} {opth p:ower(numlist)} 
{it:{help power_twoway##synoptions:options}}] 


{phang}
计算功效 

{p 8 20 2}
{opt power} {opt twoway} 
{it:{help power_twoway##meanspec:meanspec}}{cmd:,}
{opth n(numlist)}
[{it:{help power_twoway##synoptions:options}}]


{phang}
计算效应大小和目标效应方差 

{p 8 20 2}
{opt power} {opt twoway}{cmd:,} {opth n(numlist)} 
{opth p:ower(numlist)} {opt nr:ows(#)} {opt nc:ols(#)}
[{it:{help power_twoway##synoptions:options}}]

{marker meanspec}{...}
{phang}
其中 {it:meanspec} 是一个包含单元均值的矩阵 {it:matname} 或以矩阵形式表示的单个单元均值：

{phang3}
{it:m1_1} {it:m1_2} [...] {cmd:\} {it:m2_1} {it:m2_2} [...] [{cmd:\}...{cmd:\} {it:mJ_1} ... {it:mJ_K}]

{pmore}
{it:mj_k}，其中 j = 1, 2, ..., J 和 k = 1, 2, ..., K，是备择假设下的替代单元均值或第 {it:j} 行和第 {it:k} 列的单元均值。

{pmore}
{it:matname} 是一个 Stata 矩阵的名称，具有 {it:J} 行和 {it:K} 列，包含替代单元均值的值。


{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{p2coldent:* {opth a:lpha(numlist)}}显著性水平；默认值为
	{cmd:alpha(0.05)}{p_end}
{p2coldent:* {opth p:ower(numlist)}}功效；默认值为 {cmd:power(0.8)}{p_end}
{p2coldent:* {opth b:eta(numlist)}}第二类错误的概率；默认值为
	{cmd:beta(0.2)}{p_end}
{p2coldent:* {opth n(numlist)}}总样本量；计算功效或
效应大小所需{p_end}
{synopt:{opt nfrac:tional}}允许分数样本量{p_end}
{p2coldent:* {opth nperc:ell(numlist)}}每个单元的受试者数量；意味着
平衡设计{p_end}
{synopt:{cmdab:cellw:eights(}{it:{help power_twoway##wgtspec:wgtspec}}{cmd:)}}单元权重；默认为每个单元一个，表示单元大小相等{p_end}
{synopt:{opt nr:ows(#)}}行数{p_end}
{synopt:{opt nc:ols(#)}}列数{p_end}
{synopt:{cmd:{ul on}f{ul off}actor(row}|{cmd:{ul on}col{ul off}umn}|{cmd:rowcol)}}被检验的效应{p_end}
{p2coldent:* {opth vareff:ect(numlist)}}被检验的效应在 {cmd:factor()} 中解释的方差{p_end}
{p2coldent:* {opth varrow(numlist)}}行效应解释的方差；
与 {cmd:factor(row)} 和 {opt vareffect(numlist)} 同义{p_end}
{p2coldent:* {opth varcol:umn(numlist)}}列效应解释的方差；与 {cmd:factor(column)} 和 
	{opt vareffect(numlist)} 同义{p_end}
{p2coldent:* {opth varrowcol:umn(numlist)}}行-列交互效应解释的方差；与 {cmd:factor(rowcol)} 和 
	{opt vareffect(numlist)} 同义{p_end}
{p2coldent:* {opth varerr:or(numlist)}}误差方差；默认值为 
	{cmd:varerror(1)}{p_end}
{synopt: {opt showmat:rices}}以矩阵形式显示单元均值和样本量{p_end}
{synopt: {opt showmea:ns}}显示单元均值{p_end}
{synopt: {opt showcells:izes}}显示单元样本量{p_end}
{synopt: {opt par:allel}}将带星号选项或命令参数中的数字列表视为并行处理，当为选项或参数指定多个值时（不对所有可能的值组合进行枚举）


{syntab:表}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_twoway##tablespec:tablespec}}{cmd:)}]}抑制表或以表格形式显示结果；见
{manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表数据保存到 {it:filename}；使用 {cmd:replace} 来覆盖现有的
{it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}样本量或效应大小的初始值；
 默认值使用二分法算法来限制解的范围{p_end}
INCLUDE help pss_iteropts.ihlp

INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:notitle} 不出现在对话框中。{p_end}


{marker wgtspec}{...}
{synoptset 35}{...}
{synopthdr:wgtspec}
{synoptline}
{synopt:{it:#1_1} ... {it:#1_K} {cmd:\}...{cmd:\} {it:#J_1} ... {it:#J_K}}
{it:J}x{it:K} 单元权重；权重必须为正且必须为整数，
除非指定了选项 {cmd:nfractional}{p_end}
{synopt: {it:matname}}{it:J}x{it:K} 矩阵，包含单元权重{p_end}
{synoptline}
{p2colreset}{...}


{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 16 16 2}
{it:{help power_twoway##column:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:tableopts}}]

{pstd}
{it:column} 是下面定义的列之一，
而 {it:label} 是列标签（可以包含引号和复合引号）。

{synoptset 20}{...}
{marker column}{...}
{synopthdr :column}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}第二类错误概率{p_end}
{synopt :{opt N}}受试者总数{p_end}
{synopt :{opt N_per_cell}}每个单元的受试者数量{p_end}
{synopt :{opt N_avg}}每个单元的平均受试者数量{p_end}
{synopt :{opt N}{it:#1}{cmd:_}{it:#2}}单元中的受试者数量 ({it:#1,#2}){p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt N_rc}}单元的数量{p_end}
{synopt :{opt N_r}}行数{p_end}
{synopt :{opt N_c}}列数{p_end}
{synopt :{opt m}{it:#1}{cmd:_}{it:#2}}单元均值 ({it:#1},{it:#2}){p_end}
{synopt :{opt Var_r}}行效应解释的方差{p_end}
{synopt :{opt Var_c}}列效应解释的方差{p_end}
{synopt :{opt Var_rc}}行-列交互解释的方差{p_end}
{synopt :{opt Var_e}}误差方差{p_end}
{synopt :{opt cwgt}{it:#1}{cmd:_}{it:#2}}单元权重 ({it:#1},{it:#2}){p_end}
{synopt :{opt target}}目标参数；与目标效应方差同义
{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定，则列 {cmd:beta} 会出现在默认表中以替代列
{cmd:power}。{p_end}
{p 4 6 2}
列 {cmd:N_per_cell} 可用，并且只显示在默认表中
对于平衡设计。{p_end}
{p 4 6 2}
列 {cmd:N_avg} 仅在不平衡设计的默认表中显示。
{p_end}
{p 4 6 2}
列 {cmd:N}{it:#1}{cmd:_}{it:#2}、{cmd:N_rc}、
{cmd:m}{it:#1}{cmd:_}{it:#2} 和 {cmd:cwgt}{it:#1}{cmd:_}{it:#2} 不
在默认表中显示。{p_end}

INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power twoway} 计算两因素方差分析（ANOVA）的样本量、功效或效应大小。默认情况下，它计算给定功效和效应大小的样本量。或者，它可以计算给定样本量和效应大小的功效，或计算给定样本量、功效和单元数的效应大小。您可以选择检验主行效应或列效应或它们的交互作用。另见 {manhelp power PSS-2}，以获得关于使用假设检验的 {cmd:power} 命令的概述。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-2 powertwowayQuickstart:快速开始}

        {mansection PSS-2 powertwowayRemarksandexamples:备注和示例}

        {mansection PSS-2 powertwowayMethodsandformulas:方法和公式}

{pstd}
以上章节未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:alpha()}, {cmd:power()}, {cmd:beta()}, {cmd:n()}, {cmd:nfractional}；见
{manhelp power##mainopts PSS-2: power}。

{phang}
{opth npercell(numlist)} 指定单元大小。仅允许正整数。此选项意味着平衡设计。 {opt npercell()} 不能与 {opt n()} 或 {opt cellweights()} 一起指定。

{phang}
{cmd:cellweights(}{it:{help power_twoway##wgtspec:wgtspec}}{cmd:)} 指定 
{it:J}x{it:K} 单元权重，用于不平衡设计。权重必须为正，且除非指定了 {cmd:nfractional} 选项，必须为整数。 {cmd:cellweights()} 不能与 {cmd:npercell()} 一起指定。

{phang}
{opt nrows(#)} 指定两因素 ANOVA 中行因子的行数或水平数。必须指定至少两个行。此选项在未指定 
{it:{help power_twoway##meanspec:meanspec}} 时为必需。此选项对于效应大小的确定也为必需，除非指定了 {cmd:cellweights()}。

{phang}
{opt ncols(#)} 指定两因素 ANOVA 中列因子的列数或水平数。必须指定至少两个列。此选项在未指定 
{it:{help power_twoway##meanspec:meanspec}} 时为必需。此选项对于效应大小的确定也为必需，除非指定了 {cmd:cellweights()}。

{phang}
{cmd:factor(row}|{cmd:column}|{cmd:rowcol)} 指定要执行功效和样本量分析的感兴趣的效应。在两因素 ANOVA 中，被检验的效应包括行因子的主效应（行效应）、列因子的主效应（列效应）或行与列因子之间的交互效应（行-列效应）。默认值为 {cmd:factor(row)}。

{phang}
{opth vareffect(numlist)} 指定经过 {cmd:factor()} 指定的被检验效应解释的方差。例如，如果指定了 {cmd:factor(row)}，则 {cmd:vareffect()} 指定行因子解释的方差。此选项在指定了 {cmd:factor()} 选项且未指定单元均值时为必需。此选项在效应大小的确定中不允许。 {cmd:vareffect()}/{cmd:varrow()}/{cmd:varcolumn()}/{cmd:varrowcolumn()} 只能指定其一。

{phang}
{opth varrow(numlist)} 指定行因子解释的方差。此选项等同于指定 {cmd:factor(row)} 和 
{opt vareffect(numlist)}，因此不能与 {cmd:factor()} 组合。此选项在效应大小的确定中不允许。 {cmd:vareffect()}/{cmd:varrow()}/{cmd:varcolumn()}/{cmd:varrowcolumn()} 只能指定其一。

{phang}
{opth varcolumn(numlist)} 指定列因子解释的方差。此选项等同于指定 {cmd:factor(column)} 和 
{opt vareffect(numlist)}，因此不能与 {cmd:factor()} 组合。此选项在效应大小的确定中不允许。 {cmd:vareffect()}/{cmd:varrow()}/{cmd:varcolumn()}/{cmd:varrowcolumn()} 只能指定其一。

{phang}
{opth varrowcolumn(numlist)} 指定行与列因子之间交互解释的方差。此选项等同于指定 {cmd:factor(rowcol)} 和 {opt vareffect(numlist)}，因此不能与 {cmd:factor()} 组合。此选项在效应大小的确定中不允许。 {cmd:vareffect()}/{cmd:varrow()}/{cmd:varcolumn()}/{cmd:varrowcolumn()} 只能指定其一。

{phang}
{opth varerror(numlist)} 指定误差（单元内）方差。默认值为 {cmd:varerror(1)}。

{phang}
{opt showmatrices} 指定在适用时显示单元均值和单元大小的矩阵。仅在指定时显示单元均值。仅在不平衡设计中显示单元大小。

{phang}
{opt showmeans} 指定报告单元均值。对于文本或图形输出，此选项等同于 {cmd:showmatrices}，但仅报告单元均值矩阵。对于表格输出，将包括包含单元均值的列在默认表中。

{phang}
{opt showcellsizes} 指定报告单元大小。对于文本或图形输出，此选项等同于 {cmd:showmatrices}，但仅报告单元大小矩阵。对于表格输出，将包括包含单元大小的列在默认表中。

{phang}
{cmd:parallel}；见 
{manhelp power##mainopts PSS-2: power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另请参见 {bf:[PSS-2] power twoway} 中的 {mansection PSS-2 powertwowaySyntaxcolumn:column} 表，以获取图表中使用的符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定样本量确定的初始样本量值或效应大小 {it:delta} 的初始值。默认情况下使用二分法算法来限制解的范围。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项可与 {cmd:power twoway} 一起使用，但在对话框中未显示：

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注：使用 power twoway}

{pstd}
{cmd:power twoway} 计算两因素固定效应 ANOVA 的样本量、功效或效应大小以及效应的目标方差。所有计算均假设显著性水平为 0.05。您可以通过指定 {cmd:alpha()} 选项来更改显著性水平。

{pstd}
默认情况下，计算是针对主行效应的 F 检验进行的；假设为 {cmd:factor(row)}。您可以通过指定 {cmd:factor(column)} 请求检验主列效应，或通过指定 {cmd:factor(rowcol)} 请求检验行与列的交互效应。所有检验的误差方差假设为 1，但可以通过指定 {cmd:varerror()} 选项进行更改。

{pstd}
要计算总样本量，您必须指定替代的
{it:{help power_twoway##meanspec:meanspec}}，并在 {cmd:power()} 选项中可选地指定检验的功效。默认功效设置为 0.8。

{pstd}
要计算功效，您必须在 {cmd:n()} 选项中指定总样本量，以及替代的
{it:{help power_twoway##meanspec:meanspec}}。

{pstd}
在计算样本量或功效时，您可以指定行数（在 {cmd:nrows()} 选项中）、列数（在 {cmd:ncols()} 选项中），以及在 {cmd:vareffect()} 选项中指定被检验效应解释的方差，而无需提供替代单元均值。

{pstd}
要计算效应大小，必须指定全样本量在 {cmd:n()} 选项中，功效在 {cmd:power()} 选项中，以及行数和列数在 {cmd:nrows()} 和 {cmd:ncols()} 中对应。

{pstd}
默认情况下，所有计算假设为平衡设计或均等分配设计。您可以使用 {cmd:cellweights()} 选项来指定不平衡设计以计算功效、样本量或效应大小。对于平衡设计的功效和效应大小计算，您还可以指定 {cmd:npercell()} 选项以指定单元大小，而不是在 {cmd:n()} 中指定总样本量。

{pstd}
在两因素 ANOVA 中，样本量和效应大小取决于 F 分布的非中心参数，其估计需要迭代。默认的初始值通过二分法搜索获得，其范围限制了解。如果需要，您可以在 {cmd:init()} 选项中指定您自己的值。有关控制迭代过程的其他选项的描述，请参见 {manhelp power PSS-2}。


{marker examples}{...}
{title:示例}

{pstd}
在以下示例中，我们考虑一个两行三列的两因素固定效应 ANOVA
模型，假设单元-矩阵均值和误差方差为 1417。

                   |      列
                   |   1   2   3 
            -------|-----------
            行  1 | 134 143  91
                 2 | 106 173 145


    {title:示例：计算样本量}

{pstd} 
计算行效应的样本量，以进行 5% 水平检验，功效为 80%{p_end}
{phang2}{bf:. power twoway 134 143 91 \ 106 173 145, varerror(1417)}

{pstd} 
计算列效应检验所需的样本量{p_end}
{phang2}{bf:. power twoway 134 143 91 \ 106 173 145, varerror(1417) factor(column)}

{pstd} 
计算行与列交互效应检验所需的样本量{p_end}
{phang2}{bf:. power twoway 134 143 91 \ 106 173 145, varerror(1417) factor(rowcol)}

{pstd}
指定行效应的方差，而不是单个单元均值{p_end}
{phang2}{bf:. power twoway, varerror(1417) varrow(87.1111) nrows(2) ncols(3)}

{pstd}
指定不平衡设计{p_end}
{phang2}{bf:. power twoway 134 143 91 \ 106 173 145, varerror(1417) cellweights(2 2 2 \ 1 1 1) showcellsizes}


    {title:示例：计算功效}

{pstd}
计算假设总样本量为 90 的行效应的功效{p_end}
{phang2}{bf:. power twoway 134 143 91 \ 106 173 145, n(90) varerror(1417)}

{pstd}
指定单元均值矩阵，而不是单个单元均值{p_end}
{phang2}{bf:. matrix meanmat = (134, 143, 91 \ 106, 173, 145)}{p_end}
{phang2}{bf:. power twoway meanmat, n(90) varerror(1417)}


    {title:示例：计算效应大小}

{pstd}
计算样本量为 90、功效为 80% 的最小可检测效应大小{p_end}
{phang2}{cmd:. power twoway, n(90) power(.80) nrows(2) ncols(3)}

{pstd}
指定误差方差以计算行效应对应的解释方差{p_end}
{phang2}{cmd:. power twoway, n(90) power(.80) varerror(1417) nrows(2) ncols(3)}


{marker stored_results}{...}
{title:存储结果}

{pstd}
{cmd:power twoway} 会将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd: r(alpha)}}显著性水平{p_end}
{synopt:{cmd: r(power)}}功效{p_end}
{synopt:{cmd: r(beta)}}第二类错误的概率{p_end}
{synopt:{cmd: r(delta)}}效应大小{p_end}
{synopt:{cmd: r(N)}}总样本量{p_end}
{synopt:{cmd: r(N_a)}}实际样本量{p_end}
{synopt:{cmd: r(N_avg)}}每样本的平均样本量{p_end}
{synopt:{cmd: r(N}{it:#1}{cmd:_}{it:#2}{cmd:)}}单元中的受试者数量
({it:#1},{it:#2}){p_end}
{synopt:{cmd: r(N_per_cell)}}每个单元的受试者数量{p_end}
{synopt:{cmd: r(N_rc)}}单元数{p_end}
{synopt:{cmd: r(N_r)}}行数{p_end}
{synopt:{cmd: r(N_c)}}列数{p_end}
{synopt:{cmd: r(m}{it:#1}{cmd:_}{it:#2}{cmd:)}}单元均值 
({it:#1},{it:#2}){p_end}
{synopt:{cmd: r(Var_r)}}行方差{p_end}
{synopt:{cmd: r(Var_c)}}列方差{p_end}
{synopt:{cmd: r(Var_rc)}}行-列方差{p_end}
{synopt:{cmd: r(Var_e)}}误差方差{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd: r(init)}}样本量或效应大小的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:twoway}{p_end}
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat.ihlp
{synopt:{cmd:r(Nij)}}单元大小矩阵{p_end}
{synopt:{cmd:r(means)}}单元均值矩阵{p_end}
{synopt:{cmd:r(cwgt)}}单元权重矩阵{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_twoway.sthlp>}