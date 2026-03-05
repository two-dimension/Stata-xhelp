{smcl}
{* *! version 1.1.13  27feb2019}{...}
{viewerdialog power "dialog power_repeated"}{...}
{vieweralsosee "[PSS-2] power repeated" "mansection PSS-2 powerrepeated"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power oneway" "help power oneway"}{...}
{vieweralsosee "[PSS-2] power pairedmeans" "help power pairedmeans"}{...}
{vieweralsosee "[PSS-2] power twoway" "help power twoway"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] anova" "help anova_zh"}{...}
{viewerjumpto "Syntax" "power_repeated_zh##syntax"}{...}
{viewerjumpto "Menu" "power_repeated_zh##menu"}{...}
{viewerjumpto "Description" "power_repeated_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_repeated_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_repeated_zh##options"}{...}
{viewerjumpto "Remarks: Using power repeated" "power_repeated_zh##remarks"}{...}
{viewerjumpto "Examples" "power_repeated_zh##examples"}{...}
{viewerjumpto "Stored results""power_repeated##stored_results"}
{help power_repeated:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[PSS-2] power repeated} {hline 2}}重复测量方差分析的功效分析{p_end}
{p2col:}({mansection PSS-2 powerrepeated:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本量

{p 8 20 2}
{opt power} {opt repeated}
{it:{help power_repeated##meanspec:meanspec}}{cmd:,}
{it:{help power_repeated##corrspec:corrspec}}
[{opth p:ower(numlist)} 
{it:{help power_repeated##synoptions:options}}] 


{phang}
计算功效 

{p 8 20 2}
{opt power} {opt repeated}
{it:{help power_repeated##meanspec:meanspec}}{cmd:,}
{opth n(numlist)} 
{it:{help power_repeated##corrspec:corrspec}}
[{it:{help power_repeated##synoptions:options}}]


{phang}
计算效应量 

{p 8 20 2}
{opt power} {opt repeated}{cmd:,}
{opth n(numlist)} 
{opth p:ower(numlist)} {opt ng:roups(#)}
{it:{help power_repeated##corrspec:corrspec}}
[{it:{help power_repeated##synoptions:options}}]

{marker meanspec}{...}
{phang}
其中 {it:meanspec} 为包含单元均值的矩阵 {it:matname} 或
以矩阵形式表示的单个单元均值：

{phang3}
{it:m1_1} {it:m1_2} [... {it:m1_K}] [{cmd:\} ... [{it:mJ_1} {it:mJ_2} [...  {it:mJ_K}]]]

{pmore}
{it:mj_k}，其中 j = 1, 2, ..., J 和 k = 1, 2, ..., K，为对立假设下的
第 {it:j} 行（组）和第 {it:k} 列（重复测量）的替代单元均值或单元均值。

{pmore}
{it:matname} 是一个 Stata 矩阵的名称，包含 {it:J} 行和 {it:K} 列
的替代单元均值的值。

{pmore}
必须指定至少一个组，{it:J} = 1，以及两个重复测量，{it:K} = 2。

{marker corrspec}{...}
{phang}
用于计算功效和样本量的 {it:corrspec} 为{break}
{c -(}{opth corr(numlist)} {c |} {opt covmat:rix(matname)}{c )-}，用于计算效应量的 {it:corrspec} 为
{c -(}{opt nrep:eated(#)} {opth corr(numlist)} {c |}
{opt covmat:rix(matname)}{c )-}。


{synoptset 31 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{p2coldent:* {opth a:lpha(numlist)}}显著性水平；默认值为
   {cmd:alpha(0.05)}{p_end}
{p2coldent:* {opth p:ower(numlist)}}功效；默认值为 {cmd:power(0.8)}{p_end}
{p2coldent:* {opth b:eta(numlist)}}II类错误概率；默认值为
   {cmd:beta(0.2)}{p_end}
{p2coldent:* {opth n(numlist)}}总样本量；计算功效或效果量所需{p_end}
{synopt:{opt nfrac:tional}}允许分数样本量{p_end}
{p2coldent:* {opth nperg:roup(numlist)}}每个组的受试者数量；意味着
	平衡设计{p_end}
{p2coldent:* {cmd:n}{it:#}{cmd:(}{help numlist_zh}{cmd:)}}第 {it:#} 组中的受试者数量{p_end}
{synopt:{cmdab:grw:eights(}{help power_repeated##wgtspec:wgtspec}{cmd:)}}组
   权重；默认值为每组一个，意味着组大小相等{p_end}
{synopt:{opt ng:roups(#)}}组的数量{p_end}
{synopt:{opt nrep:eated(#)}}重复测量的数量{p_end}
{p2coldent:* {opth corr(numlist)}}重复测量之间的相关性；必须提供 {cmd:corr()} 或 {cmd:covmatrix()}{p_end}
{synopt:{opt covmat:rix(matname)}}重复测量之间的协方差；必须提供 {cmd:corr()} 或 {cmd:covmatrix()}{p_end}
{synopt:{cmd:{ul on}f{ul off}actor({ul on}b{ul off}etween}|{cmd:{ul on}w{ul off}ithin}|{cmd:{ul on}bw{ul off}ithin)}}测试的效应：between、within 或 between-within；默认值为 {cmd:factor(between)}{p_end}
{p2coldent:* {opth vareff:ect(numlist)}}所测试效应的方差，在 {opt factor()} 中指定{p_end}
{p2coldent:* {opth varb:etween(numlist)}}由
	被试间效应解释的方差；
	{cmd:factor(between)} 和 {opt vareffect(numlist)} 的同义词{p_end}
{p2coldent:* {opth varw:ithin(numlist)}}由 
	被试内效应解释的方差；
	{cmd:factor(within)} 和 {opt vareffect(numlist)} 的同义词{p_end}
{p2coldent:* {opth varbw:ithin(numlist)}}由 
	between-within 效应解释的方差；
	{cmd:factor(bwithin)} 和 {opt vareffect(numlist)} 的同义词{p_end}
{p2coldent:* {opth varerr:or(numlist)}}错误方差；如果指定了 {opt corr()}，则默认值为 
	{cmd:varerror(1)}；不允许与 {cmd:covmatrix()} 一起使用{p_end}
{synopt: {opt showmat:rices}}显示单元均值矩阵和协方差矩阵{p_end}
{synopt: {opt showmea:ns}}显示单元均值{p_end}
{synopt: {opt par:allel}}将选项或命令参数中的数字列表视为并行，当指定每个选项或参数的多个值时（不列举所有可能的值组合）

{syntab:表}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_repeated##tablespec:tablespec}}{cmd:)}]}压制表格或将结果显示为表格；参见
{manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到 {it:filename}; 使用 {cmd:replace} 以覆盖现有的
{it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}样本量或效应量的初始值；
   默认情况下使用二分法算法来限制解的范围{p_end}
INCLUDE help pss_iteropts.ihlp

INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:notitle} 在对话框中不出现.{p_end}


{marker wgtspec}{...}
{synoptset 15}{...}
{synopthdr:wgtspec}
{synoptline}
{synopt: {it:#1} {it:#2} ... {it:#J}}{it:J} 个组权重。 权重必须为
正数，且除非指定 {cmd:nfractional} 选项外，必须为整数。
每个组权重 {it:#j} 的多个值可以作为
{help numlist_zh} 放在括号中指定.{p_end}
{synopt: {it:matname}}包含 {it:J} 列的矩阵，其中包含 {it:J} 组
权重。允许多行，在这种情况下，每行对应于一组不同的 {it:J} 权重，或等效地，第 {it:j} 列对应于第 {it:j} 权重的 {it:{help numlist_zh}}。{p_end}
{synoptline}
{p2colreset}{...}


{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 为

{p 16 16 2}
{it:{help power_repeated##column:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:tableopts}}]

{pstd}
{it:column} 为下面定义的列之一，
且 {it:label} 为列标签（可以包含引号和复合引号）。

{synoptset 28}{...}
{marker column}{...}
{synopthdr :column}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}II型错误概率{p_end}
{synopt :{opt N}}受试者总数{p_end}
{synopt :{opt N_per_group}}每组的受试者数量{p_end}
{synopt :{opt N_avg}}每组的平均受试者数量{p_end}
{synopt :{opt N}{it:#}}第 {it:#} 组中的受试者数量{p_end}
{synopt :{opt delta}}效应量{p_end}
{synopt :{opt N_g}}组的数量{p_end}
{synopt :{opt N_rep}}重复测量的数量{p_end}
{synopt :{opt m}{it:#1}{cmd:_}{it:#2}}单元均值 ({it:#1,#2}): 
         组 {it:#1}，场合 {it:#2}{p_end}
{synopt :{opt Var_b}}被试间方差{p_end}
{synopt :{opt Var_w}}被试内方差{p_end}
{synopt :{opt Var_bw}}被试间-内（按场合分组）的方差{p_end}
{synopt :{opt Var_be}}被试间错误方差{p_end}
{synopt :{opt Var_we}}被试内错误方差{p_end}
{synopt :{opt Var_bwe}}被试间-内（按场合分组）错误方差{p_end}
{synopt :{opt Var_e}}错误方差{p_end}
{synopt :{opt corr}}重复测量之间的相关性{p_end}
{synopt :{opt grwgt}{it:#}}组权重 {it:#}{p_end}
{synopt :{opt target}}目标参数；目标效应方差的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定，将在默认表中显示列 {cmd:beta} 代替列
{cmd:power}。{p_end}
{p 4 6 2}列 {cmd:N_per_group} 可用，仅在平衡设计中显示在默认
表中。{p_end}
{p 4 6 2}仅在不平衡设计中，列 {cmd:N_avg} 和 {cmd:N}{it:#} 在默认
表中显示。{p_end}
{p 4 6 2}列 {cmd:m}{it:#1}{cmd:_}{it:#2} 在默认
表中不显示。{p_end}
{p 4 6 2}列 {cmd:Var_b} 和 {cmd:Var_be} 在被试间测试的默认表中显示，列 {cmd:Var_w} 和 {cmd:Var_we} 在
被试内测试中显示，而列 {cmd:Var_bw} 和 {cmd:Var_bwe} 在被试间-内测试中显示.{p_end}
{p 4 6 2}列 {cmd:grwgt}{it:#} 不在默认表中显示。


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power repeated} 计算单向或双向重复测量方差分析（ANOVA）的样本量、功效或效应量。默认情况下，它根据给定的功效和效应量计算样本量。或者，它可以根据给定的样本量和效应量计算功效，或计算给定样本量、功效和组数的效应量。有关 {cmd:power} 命令使用假设检验的概述，另请参见 {manhelp power PSS-2}。

{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection PSS-2 powerrepeatedQuickstart:快速开始}

        {mansection PSS-2 powerrepeatedRemarksandexamples:备注和示例}

        {mansection PSS-2 powerrepeatedMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:alpha()}, {cmd:power()}, {cmd:beta()}, {cmd:n()}, {cmd:nfractional}; 
参见 {manhelp power##mainopts PSS-2: power}。

{phang}
{opth npergroup(numlist)} 指定组大小。只允许正整数。此选项隐含为平衡设计。不能与 {opt n()}、{cmd:n}{it:#}{cmd:()} 或 {opt grweights()} 一起指定。

{phang}
{cmd:n}{it:#}{cmd:(}{it:{help numlist_zh}}{cmd:)} 指定第 {it:#} 组的大小。只允许正整数。所有组的大小必须指定。 例如，对于三个组的设计，必须指定所有三个选项 {cmd:n1()}、{cmd:n2()} 和 {cmd:n3()}。
{cmd:n}{it:#}{cmd:()} 不能与 {opt n()}、{opt npergroup()} 或 {opt grweights()} 一起指定。

{phang}
{cmd:grweights(}{it:{help power_repeated##wgtspec:wgtspec}}{cmd:)} 指定 J 个组权重以实现不平衡设计。这些权重可以作为值列表或矩阵指定，并允许多组权重；有关详细信息，见 {it:{help power_repeated##wgtspec:wgtspec}}。权重必须为正数，并且除非指定 {cmd:nfractional} 选项外，也必须为整数。不能与 {cmd:npergroup()} 或 {cmd:n}{it:#}{cmd:()} 一起指定。

{phang}
{opt ngroups(#)} 指定组的数量。如果未指定 {it:{help power_repeated##meanspec:meanspec}}，则此选项是必需的。此选项在未指定 {cmd:grweights()} 的情况下也是效应量确定所必需的。对于单向重复测量 ANOVA，指定 {cmd:ngroups(1)}。

{phang}
{opt nrepeated(#)} 指定每个受试者内的重复测量数量。必须指定至少两个重复测量。如果指定了 {opt corr()} 选项且未指定 {it:{help power_repeated##meanspec:meanspec}}，则此选项是必需的。如果未指定 {opt covmatrix()}，此选项对于效应量的确定也是必需的。

{phang}
{opth corr(numlist)} 指定重复测量之间的相关性。{opt corr()} 不能与 {opt covmatrix()} 一起指定。此选项要求 {opt nrepeated()} 选项，除非指定了 {it:{help power_repeated##meanspec:meanspec}}。

{phang}
{opt covmatrix(matname)} 指定重复测量之间的协方差矩阵。{opt covmatrix()} 不能与 {opt corr()} 或 {opt varerror()} 一起指定。

{phang}
{cmd:factor(between}|{cmd:within}|{cmd:bwithin)} 指定要进行功效和样本量分析的感兴趣效应。对于单向重复测量 ANOVA，仅允许 {cmd:factor(within)}，且在仅指定一个组时隐含为该效应。在双向重复测量 ANOVA 中，测试的效应包括被试间效应或被试间因素的主效应、被试内效应或被试内因素的主效应，以及被试间-内效应或被试间因素与被试内因素的交互效应。双向重复设计的默认值为 {cmd:factor(between)}。

{phang}
{opth vareffect(numlist)} 指定在 {opt factor()} 中指定的被测效应解释的方差。例如，如果指定 {cmd:factor(between)}，则 {opt vareffect()} 指定由被试间因素解释的方差。如果指定了 {opt factor()} 选项但未指定 {it:{help power_repeated##meanspec:meanspec}}，则此选项是必需的。此选项不能与效应量的确定一起使用。只可以指定 {opt vareffect()}、{opt varbetween()}、{opt varwithin()} 或 {opt varbwithin()} 之一。

{phang}
{opth varbetween(numlist)} 指定由被试间因素解释的方差。此选项等同于指定 {cmd:factor(between)} 和 {opt vareffect(numlist)}，因此不能与 {opt factor()} 结合使用。此选项不能与效应量的确定一起使用。只可以指定 {opt vareffect()}、{opt varbetween()}、{opt varwithin()} 或 {opt varbwithin()} 之一。仅在指定一个组时，不允许此选项。

{phang}
{opth varwithin(numlist)} 指定由被试内因素解释的方差。此选项等同于指定 {cmd:factor(within)} 和 {opt vareffect(numlist)}，因此不能与 {opt factor()} 结合使用。此选项不能与效应量的确定一起使用。只可以指定 {opt vareffect()}、{opt varbetween()}、{opt varwithin()} 或 {opt varbwithin()} 之一。

{phang}
{opth varbwithin(numlist)} 指定被试间因素与被试内因素之间交互作用解释的方差。此选项等同于指定 {cmd:factor(bwithin)} 和 {opt vareffect(numlist)}，因此不能与 {opt factor()} 结合使用。此选项不能与效应量的确定一起使用。只可以指定 {opt vareffect()}、{opt varbetween()}、{opt varwithin()} 或 {opt varbwithin()} 之一。仅在指定一个组时，不允许此选项。

{phang}
{opth varerror(numlist)} 如果未指定 {opt covmatrix()}，则指定错误方差。仅在指定了 {opt corr()} 时允许此选项。当指定 {opt corr()} 时，默认值为 {cmd:varerror(1)}。

{phang}
{opt showmatrices} 指定显示单元均值矩阵和协方差矩阵（如果适用）。

{phang}
{opt showmeans} 指定报告单元均值。对于文本或图形输出，此选项等同于 {opt showmatrices}，但只报告单元均值矩阵。对于表格输出，包含单元均值的列将包含在默认表中。

{phang}
{cmd:parallel}; 参见 
{manhelp power##mainopts PSS-2: power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另请参见 {mansection PSS-2 powerrepeatedSyntaxcolumn:column} 表中
{bf:[PSS-2] power twomean} 中用于图形的符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定样本量确定的初始值或效应量 {it:delta} 的初始值。默认情况下使用二分法算法来限制解的范围。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项在 {cmd:power repeated} 中可用，但未在对话框中显示：

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注: 使用 power repeated}

{pstd}
{cmd:power repeated} 计算单向和双向固定效应重复测量 ANOVA 模型的样本量、功效或效应量。单向重复测量 ANOVA 模型包括一个固定的被试内因素。支持的双向重复测量 ANOVA 包括一个固定的被试间因素和一个固定的被试内因素。单向模型作为双向模型中的一个特例，且仅指定一个组。必须指定至少一个组和两个重复测量。

{pstd}
所有计算均假设显著性水平为 0.05。可通过指定 {cmd:alpha()} 选项更改显著性水平。

{pstd}
计算是针对感兴趣效应的 {it:F} 检验进行的。在单向模型中，唯一的感兴趣效应是被试内效应。在双向模型中，可以在三种感兴趣效应之间进行选择：包含 {cmd:factor(between)} 的被试间效应（默认），包含 {cmd:factor(within)} 的被试内效应，以及包含 {cmd:factor(bwithin)} 的被试间-内效应。

{pstd}
所有计算要求指定重复测量之间的残差协方差。可以在 {cmd:covmatrix()} 中指定任何非结构协方差矩阵，或在 {cmd:corr()} 和 {cmd:varerror()} 中指定重复测量之间的相关性和错误方差。如果指定了 {cmd:corr()}，则假定 {cmd:varerror(1)}。后者的规范意味着具有复合对称结构的残差协方差。

{pstd}
要计算总样本量，您还必须指定替代的 {it:{help power_repeated##meanspec:meanspec}}，并选择性地在 {cmd:power()} 中指定检验的功效。默认功效设置为 0.8。

{pstd}
要计算功效，必须在 {cmd:n()} 选项中指定总样本量，和替代的 {it:{help power_repeated##meanspec:meanspec}}。 

{pstd}
在计算样本量或功效时，除了替代单元均值外，还可以在 {cmd:ngroups()} 选项中指定组数（行），在 {cmd:nrepeated()} 选项中指定重复测量的数量（列），并在 {cmd:vareffect()} 选项中指定所测效应解释的方差。参见 
{it:{mansection PSS-2 powertwowayRemarksandexamplessub1:替代指定效应的方式}} 在 
{bf:[PSS-2] power twoway}中；将 {cmd:ngroups()} 替换为 {cmd:nrows()}，{cmd:nrepeated()} 替换为 {cmd:ncols()}，{cmd:varbetween()} 替换为 {cmd:varrow()}，{cmd:varwithin()} 替换为 {cmd:varcolumn()}，和 {cmd:varbwithin()} 替换为 {cmd:varrowcolumn()}。 如果指定了 {cmd:covmatrix()}，则不需要 {cmd:nrepeated()} 选项——重复测量的数量由指定的协方差矩阵的维度确定。

{pstd}
要计算效应量，您必须指定样本量 {cmd:n()}、功效 {cmd:power()}、组数 {cmd:ngroups()}，和如果指定了 {cmd:corr()}，则必须指定重复测量的数量 {cmd:nrepeated()}，以及所测因素解释的方差与比较错误方差之间的比率的平方根。

{pstd}
默认情况下，所有计算假设为平衡或均等分配设计。可以使用 {cmd:grweights()} 指定不平衡设计进行功效、样本量或效应量的计算。对于功效和效应量的计算，可以在 {cmd:n1()}、{cmd:n2()} 等中指定单独的组大小，而不是组合 {cmd:n()} 和 {cmd:grweights()} 来适应不平衡设计。对于平衡设计，您还可以指定 {cmd:npergroup()} 来指定一个组大小，而不是在 {cmd:n()} 中指定总样本量。

{pstd}
在重复测量 ANOVA 中，样本量和效应量依赖于 {it:F} 分布的非中心参数，其估计需要迭代。默认初始值来源于一个使用二分法搜索限制解的搜索。如果您希望，可以通过在 {cmd:init()} 选项中指定自己的值来更改此值。有关控制迭代过程的其他选项的描述，请参见 {manhelp power PSS-2}。


{marker examples}{...}
{title:示例}

    {title:示例: 计算样本量}

{pstd}
计算拒绝零假设所需的样本量，该假设认为治疗没有主效应，并且治疗与时间之间没有交互作用。{p_end}
{phang2}{cmd:. power repeated 145 135 130\145 130 120, covmat(225 158 158\158 225 158\158 158 225)}

{pstd}
将最后一次分析的数据作为矩阵；计算检测治疗与时间之间交互作用所需的样本量。{p_end}
{phang2}{cmd:. matrix M = (145,135,130\145,130,120)}{p_end}
{phang2}{cmd:. matrix cov = (225,158,158\158,225,158\158,158,225)}{p_end}
{phang2}{cmd:. power repeated M, covmat(cov) factor(bwithin)}

{pstd}
重复上一个示例，指定错误方差和重复测量相关性。{p_end}
{phang2}{cmd:. power repeated M, varerr(225) corr(0.7) factor(bwithin)}


    {title:示例: 计算功效}

{pstd}
使用相同的均值和协方差矩阵，在平衡设计和总样本量为 200 的情况下计算被试间效应的功效。{p_end}
{phang2}{cmd:. power repeated M, covmat(cov) n1(100) n2(100) factor(between)}

{pstd}
重复，但现在在两个治疗之间以不同方式分配样本量。{p_end}
{phang2}{cmd:. power repeated M, covmat(cov) n1(80) n2(120) factor(between)}


    {title:示例: 计算效应量}

{pstd}
询问在使用平衡设计的情况下，以获得 200 的总样本量和 80% 的功效，组间方差必须多大。{p_end}
{phang2}{cmd:. power repeated, covmat(cov) n(200) power(0.8) factor(between) ngroups(2)}


{marker stored_results}{...}
{title:存储结果}

{pstd}
{cmd:power repeated} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd: r(alpha)}}显著性水平{p_end}
{synopt:{cmd: r(power)}}功效{p_end}
{synopt:{cmd: r(beta)}}II型错误的概率{p_end}
{synopt:{cmd: r(delta)}}效应量{p_end}
{synopt:{cmd: r(N)}}总样本量{p_end}
{synopt:{cmd: r(N_a)}}实际样本量{p_end}
{synopt:{cmd: r(N_avg)}}平均样本量{p_end}
{synopt:{cmd: r(N}{it:#}{cmd:)}}第 {it:#} 组中的受试者数量{p_end}
{synopt:{cmd: r(N_per_group)}}每组中的受试者数量{p_end}
{synopt:{cmd: r(N_g)}}组的数量{p_end}
{synopt:{cmd: r(nfractional)}}如果指定了 {cmd:nfractional}，则为 {cmd:1}，
	否则为 {cmd:0}{p_end}
{synopt:{cmd: r(balanced)}}如果为平衡设计，则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd: r(grwgt}{it:#}{cmd:)}}组权重 {it:#}{p_end}
{synopt:{cmd: r(N_rep)}}行数{p_end}
{synopt:{cmd: r(m}{it:#1}_{it:#2}{cmd:)}}单元均值 ({it:#1}, {it:#2}){p_end}
{synopt:{cmd: r(Var_b)}}被试间方差{p_end}
{synopt:{cmd: r(Var_w)}}被试内方差{p_end}
{synopt:{cmd: r(Var_bw)}}被试间-内交互方差{p_end}
{synopt:{cmd: r(Var_be)}}被试间错误方差{p_end}
{synopt:{cmd: r(Var_we)}}被试内错误方差{p_end}
{synopt:{cmd: r(Var_bwe)}}被试间-内交互错误方差{p_end}
{synopt:{cmd: r(Var_e)}}错误方差{p_end}
{synopt:{cmd: r(spherical)}}如果协方差是球形，则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd: r(epsilon)}}非球面校正{p_end}
{synopt:{cmd: r(epsilon_m)}}均值非球面校正{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd: r(init)}}样本量或效应量的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:repeated}{p_end}
{synopt:{cmd:r(factor)}}{cmd:between}、{cmd:within} 或 {cmd:bwithin}{p_end}
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat.ihlp
{synopt:{cmd:r(means)}}单元均值矩阵{p_end}
{synopt:{cmd:r(Cov)}}重复测量协方差{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_repeated.sthlp>}