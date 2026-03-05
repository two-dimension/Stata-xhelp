{smcl}
{* *! version 1.0.17  27feb2019}{...}
{viewerdialog power "dialog power_oneway"}{...}
{vieweralsosee "[PSS-2] power oneway" "mansection PSS-2 poweroneway"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power repeated" "help power repeated"}{...}
{vieweralsosee "[PSS-2] power twomeans" "help power twomeans"}{...}
{vieweralsosee "[PSS-2] power twoway" "help power twoway"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] anova" "help anova_zh"}{...}
{vieweralsosee "[R] contrast" "help contrast_zh"}{...}
{vieweralsosee "[R] oneway" "help oneway_zh"}{...}
{viewerjumpto "Syntax" "power_oneway_zh##syntax"}{...}
{viewerjumpto "Menu" "power_oneway_zh##menu"}{...}
{viewerjumpto "Description" "power_oneway_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_oneway_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_oneway_zh##options"}{...}
{viewerjumpto "Remarks: Using power oneway" "power_oneway_zh##remarks"}{...}
{viewerjumpto "Examples" "power_oneway_zh##examples"}{...}
{viewerjumpto "Video examples" "power_oneway_zh##video"}{...}
{viewerjumpto "Stored results" "power_oneway_zh##stored_results"}
{help power_oneway:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[PSS-2] power oneway} {hline 2}}单因素方差分析的权力分析{p_end}
{p2col:}({mansection PSS-2 poweroneway:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本大小

{p 8 20 2}
{opt power} {opt oneway}
{it:{help power_oneway##meanspec:meanspec}} 
[{cmd:,} {opth p:ower(numlist)} 
{it:{help power_oneway##synoptions:options}}] 


{phang}
计算权力 

{p 8 20 2}
{opt power} {opt oneway}  
{it:{help power_oneway##meanspec:meanspec}}, 
{opth n(numlist)}
[{it:{help power_oneway##synoptions:options}}]


{phang}
计算效应大小和目标组间方差 

{p 8 20 2}
{opt power} {opt oneway}{cmd:,} {opth n(numlist)} 
{opth p:ower(numlist)} {opt ng:roups(#)} 
[{opth varerr:or(numlist)} {it:{help power_oneway##synoptions:options}}]

{marker meanspec}{...}
{phang}
其中 {it:meanspec} 可以是包含组均值的矩阵 {it:matname} 或以矩阵形式指定的单个组均值：

{phang3}
{it:m1} {it:m2} [{it:m3} ... {it:mJ}]

{pmore}
{it:mj}，其中 {it:j} = 1, 2, ..., {it:J}，是替代组均值或第 {it:j} 组的替代假设下的组均值。每个 {it:mj} 可以指定为一个数字或以括号中的值列表形式；见 {help numlist_zh}。

{pmore}
{it:matname} 是 Stata 矩阵的名称，其 {it:J} 列包含替代组均值的值。允许多行，此时每行对应一组不同的 {it:J} 组均值，或者第 {it:j} 列对应于第 {it:j} 组均值的 {it:numlist}。


{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主}
{p2coldent:* {opth a:lpha(numlist)}}显著性水平；默认值为
   {cmd:alpha(0.05)}{p_end}
{p2coldent:* {opth p:ower(numlist)}}权力；默认值为 {cmd:power(0.8)}{p_end}
{p2coldent:* {opth b:eta(numlist)}}类型 II 错误的概率；默认值为
   {cmd:beta(0.2)}{p_end}
{p2coldent:* {opth n(numlist)}}总样本大小；计算权力或
效应大小时为必需{p_end}
{synopt:{opt nfrac:tional}}允许非整数样本大小{p_end}
{p2coldent:* {opth nperg:roup(numlist)}}每组的受试者数量；隐含
平衡设计{p_end}
{p2coldent:* {cmd:n}{it:#}{cmd:(}{help numlist_zh}{cmd:)}}第 {it:#} 组的受试者数量{p_end}
{synopt:{cmdab:grw:eights(}{help power_oneway##wgtspec:wgtspec}{cmd:)}}组权重；默认值为每组 1，表示组大小相等{p_end}
{synopt:{opt ng:roups(#)}}组的数量{p_end}
{p2coldent:* {opth varm:eans(numlist)}}组均值的方差或组间方差{p_end}
{p2coldent:* {opth varerr:or(numlist)}}错误（组内）方差；默认值为 {cmd:varerror(1)}{p_end}
{synopt:{cmd:contrast(}{it:{help power_oneway##contrastspec:contrastspec}}{cmd:)}}组均值的对比规范{p_end}
{synopt: {opt par:allel}}将多个值的星标选项或命令参数中的数字列表视为并行（不要列举所有可能的值组合）

{syntab:表格}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_oneway##tablespec:tablespec}}{cmd:)}]}抑制表格或以表格显示结果；见
{manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到 {it:filename}；使用 {cmd:replace} 覆盖现有的
{it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}用于样本大小或效应大小的初始值；
   默认使用二分法算法限制解决方案{p_end}
INCLUDE help pss_iteropts.ihlp

INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:notitle} 不会出现在对话框中。{p_end}


{marker wgtspec}{...}
{synoptset 15 tabbed}{...}
{synopthdr:wgtspec}
{synoptline}
{synopt: {it:#1} {it:#2} ... {it:#J}}{it:J} 组权重。权重必须为正整数，除非指定 {cmd:nfractional} 选项。
可以作为括号中的 {help numlist_zh} 指定每个组权重 {it:#j} 的多个值。{p_end}
{synopt: {it:matname}}具有 {it:J} 列的矩阵，包含 {it:J} 组权重。允许多行，此时每行对应一组不同的 {it:J} 权重，或，第 {it:j} 列对应于第 {it:j} 权重的 {it:numlist}。{p_end}
{synoptline}
{p2colreset}{...}

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 16 16 2}
{it:{help power_oneway##column:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:tableopts}}]

{pstd}
{it:column} 是下面定义的列之一，
{it:label} 是列标签（可以包含引号和复合引号）。

{synoptset 20}{...}
{marker column}{...}
{synopthdr :column}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}权力{p_end}
{synopt :{opt beta}}类型 II 错误概率{p_end}
{synopt :{opt N}}受试者总数{p_end}
{synopt :{opt N_per_group}}每组的受试者数量{p_end}
{synopt :{opt N_avg}}每组的平均受试者数量{p_end}
{synopt :{opt N}{it:#}}第 {it:#} 组的受试者数量{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt N_g}}组的数量{p_end}
{synopt :{opt m}{it:#}}组均值 {it:#}{p_end}
{synopt :{opt Cm}}均值对比{p_end}
{synopt :{opt c0}}零均值对比{p_end}
{synopt :{opt Var_m}}组均值（组间）方差{p_end}
{synopt :{opt Var_Cm}}对比方差{p_end}
{synopt :{opt Var_e}}错误（组内）方差{p_end}
{synopt :{opt grwgt}{it:#}}组权重 {it:#}{p_end}
{synopt :{opt target}}目标参数；{cmd:Var_m} 或 {cmd:Var_Cm} 的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}列 {cmd:beta} 如果指明则显示在默认表中替代列
{cmd:power}。{p_end}

{p 4 6 2}
列 {cmd:N_per_group} 可用且仅在默认表中对于
平衡设计显示。{p_end}

{p 4 6 2}
列 {cmd:N_avg} 和 {cmd:N}{it:#} 仅在默认表中对于
不平衡设计显示。{p_end}

{p 4 6 2}
列 {cmd:m}{it:#} 仅在指定了组均值时在默认表中显示。{p_end}

{p 4 6 2}
如果指定了 {cmd:contrast()} 选项，则不会在默认表中显示列 {cmd:Var_m}。{p_end}

{p 4 6 2}
仅在指定 {cmd:contrast()} 选项时在默认表中显示列 {cmd:Cm}, {cmd:c0}, 和 {cmd:Var_Cm}。{p_end}

{p 4 6 2}
列 {cmd:grwgt}{it:#} 不会在默认表中显示。{p_end}


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power oneway} 计算单因素方差分析（ANOVA）的样本大小、权力或效应大小。默认情况下，它计算给定权力和效应大小的样本大小。或者，它可以计算给定样本大小和效应大小的权力，也可以计算给定样本大小、权力和组数的效应大小。另见 {manhelp power PSS-2}，以获取使用假设检验的 {cmd:power} 命令的通用介绍。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection PSS-2 poweronewayQuickstart:快速入门}

        {mansection PSS-2 poweronewayRemarksandexamples:备注和示例}

        {mansection PSS-2 poweronewayMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{cmd:alpha()}, {cmd:power()}, {cmd:beta()}, {cmd:n()}, {cmd:nfractional}; 
见 {manhelp power##mainopts PSS-2: power}。

{phang}
{opth npergroup(numlist)} 指定组大小。仅允许正整数。此选项隐含平衡设计。 {cmd:npergroup()} 不能与 {opt n()}、 {cmd:n}{it:#}{cmd:()} 或
{cmd:grweights()} 一起指定。

{phang}
{cmd:n}{it:#}{cmd:(}{it:{help numlist_zh}}{cmd:)} 指定第 {it:#} 组的大小。仅允许正整数。必须指定所有组大小。例如，对于具有三组的设计，必须指定所有三个选项 {cmd:n1()}、{cmd:n2()} 和 {cmd:n3()}。
{cmd:n}{it:#}{cmd:()} 不能与 {cmd:n()}、{cmd:npergroup()} 或 {cmd:grweights()} 一起指定。

{phang}
{cmd:grweights(}{it:{help power_oneway##wgtspec:wgtspec}}{cmd:)} 指定用于不平衡设计的 {it:J} 组权重。权重可以既可以作为值列表指定，也可以作为矩阵，允许多个权重集；见 {it:{help power_oneway##wgtspec:wgtspec}} 了解详细信息。权重必须为正整数，除非指定 {cmd:nfractional} 选项。 {cmd:grweights()} 不能与 {cmd:npergroup()} 或
{cmd:n}{it:#}{cmd:()} 一起指定。

{phang}
{opt ngroups(#)} 指定组的数量。必须至少指定两个组。此选项在 {it:{help power_oneway##meanspec:meanspec}} 未指定时为必需。此选项在确定效应大小时也是必需的，除非指定 {cmd:grweights()}。

{phang}
{opth varmeans(numlist)} 指定组均值的方差或组间方差。 {cmd:varmeans()} 不能与 {it:{help power_oneway##meanspec:meanspec}} 或 {opt contrast()} 一起指定，也不允许在效应大小确定中使用。

{phang}
{opth varerror(numlist)} 指定错误（组内）方差。默认值为 {cmd:varerror(1)}。

{marker contrastspec}{...}
{phang}
{opt contrast(contrastspec)} 指定一个包含 {it:J} 对比系数的组均值对比，该系数必须相加为零。 {it:contrastspec} 是

{phang2}
{it:#1} {it:#2} [{it:#3} ... {it:#J}] [{cmd:,} {opth null(numlist)} {cmdab:onesid:ed}]

{phang2}
{opth null(numlist)} 指定均值对比的零或假设值。默认值为 {cmd:null(0)}。  

{phang2}
{cmd:onesided} 请求一个单边 t 检验。默认是 F 检验。

{phang}
{cmd:parallel}; 见 
{manhelp power##mainopts PSS-2: power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另见 {mansection PSS-2 poweronewaySyntaxcolumn:column} 表，以获取图表中使用的符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定样本大小确定的初始值或效应大小 {it:delta} 的初始值。默认使用二分法算法来限制解决方案。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项可与 {cmd:power oneway} 一起使用，但不显示在对话框中：

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注：使用 power oneway}

{pstd}
{cmd:power oneway} 计算为单因素固定效应方差分析的样本大小、权力或效应大小及效果的目标方差。所有计算假设显著性水平为 0.05。您可以通过指定 {cmd:alpha()} 选项来改变显著性水平。

{pstd}
默认情况下，计算是针对整体 F 检验进行的，该检验测试所有组均值的相等性。此检验的组内或误差方差假设为 1，但可以通过指定 {cmd:varerror()} 选项进行更改。

{pstd}
要计算总样本大小，必须指定替代 {it:{help power_oneway##meanspec:meanspec}}，并可选择在 {cmd:power()} 选项中指定检验的力量。默认的权力设为 0.8。

{pstd}
要计算权力，必须在 {cmd:n()} 选项中指定总样本大小和替代 {it:{help power_oneway##meanspec:meanspec}}。

{pstd}
在计算样本大小或权力时，您可以根据组数在 {cmd:ngroups()} 选项中指定组数，并在 {cmd:varmeans()} 选项中指定组均值的方差（或组间方差），而不是替代组均值。

{pstd}
要计算效应大小，计算组间方差与误差方差的比值的平方根，以及目标组间方差，您必须在 {cmd:n()} 选项中指定总样本大小，在 {cmd:power()} 选项中指定权力，并在 {cmd:ngroups()} 选项中指定组数。

{pstd}
要计算均值对比的样本大小或权力，除了相应的 {cmd:power()} 或 {cmd:n()} 选项外，您还必须指定替代 {it:{help power_oneway##meanspec:meanspec}} 和在 {cmd:contrast()} 选项中对应的对比系数。必须为每个组均值指定一个对比系数，并且指定的系数必须相加为零。假定指定对比的零值为零，但可以通过在 {cmd:contrast()} 中指定 {cmd:null()} 子选项进行更改。默认测试为 F 检验。您还可以通过在 {cmd:contrast()} 中指定 {cmd:onesided} 子选项请求单边 t 检验。在检验均值对比时不提供效应大小的确定。

{pstd}
对于上述所有计算，错误或组内方差假定为 1。您可以通过指定 {cmd:varerror()} 选项来更改此值。

{pstd}
默认情况下，所有计算都假定为平衡或等分配设计。您可以使用 {cmd:grweights()} 选项在权力、样本大小或效应大小计算中指定不平衡设计。

{pstd}
在权力和效应大小计算中，您可以在选项 {cmd:n1()}、{cmd:n2()} 等中指定各组的受试者数量，而不是组合 {cmd:n()} 和 {cmd:grweights()} 来适应不平衡设计。对于平衡设计，您还可以在 {cmd:npergroup()} 选项中指定组大小，而不是在 {cmd:n()} 中指定总样本大小。

{pstd}
在单因素 ANOVA 中，样本大小和效应大小取决于 F 分布的非中心参数，其估计需要迭代。默认的初始值来自二分法搜索，该搜索限制了解决方案。如果您愿意，可以通过在 {cmd:init()} 选项中指定自己的值进行更改。有关控制迭代过程的其他选项的描述，请参见 {manhelp power PSS-2}。


{marker examples}{...}
{title:示例}

{pstd}
在下面的示例中，我们考虑一个三组固定效应的 ANOVA 模型，假设组均值为 260、289 和 295，误差方差为 4900。

    {title:示例：计算样本大小}

{pstd}
直接计算整体 F 检验的均值相等的总样本大小，假定组大小相等，显著性水平为 5% 和权力为 80%{p_end}
{phang2}{cmd:. power oneway 260 289 295, varerror(4900)}

{pstd}
指定均值方差而不是单独的组均值{p_end}
{phang2}{cmd:. power oneway, varmeans(233.5556) ngroups(3) varerror(4900)}

{pstd}
指定不平衡设计{p_end}
{phang2}{cmd:. power oneway 260 289 295, varerror(4900) grweights(1 2 2)}

{pstd}
计算比较前两组的均值对比的样本大小{p_end}
{phang2}{cmd:. power oneway 260 289 295, varerror(4900) contrast(1 -1 0)}


    {title:示例：计算权力}

{pstd}
计算总样本大小为 300 时的权力{p_end}
{phang2}{cmd:. power oneway 260 289 295, n(300) varerror(4900)}

{pstd}
假定三组之间的不均衡分配，计算权力{p_end}
{phang2}{cmd:. power oneway 260 289 295, n(300) varerror(4900) grweights(1 2 2)}
 

    {title:示例：计算效应大小}

{pstd}
计算当样本大小为 300 且在 3 组中均匀分配时，可检测的最小效应大小，权力为 80%{p_end}
{phang2}{cmd:. power oneway, n(300) power(.80) ngroups(3)}

{pstd}
指定误差方差以计算相应的组间方差{p_end}
{phang2}{cmd:. power oneway, n(300) power(.80) ngroups(3) varerror(4900)}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=3trds1UO5C8":一因素方差分析的样本大小计算}

{phang}
{browse "https://www.youtube.com/watch?v=uo9q0elpvMI":一因素方差分析的权力计算}

{phang}
{browse "https://www.youtube.com/watch?v=rh8XFbFEn2k":一因素方差分析的最小可检测效应大小}


{marker stored_results}{...}
{title:存储结果}

{pstd}
{cmd:power oneway} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd: r(alpha)}}显著性水平{p_end}
{synopt:{cmd: r(power)}}权力{p_end}
{synopt:{cmd: r(beta)}}类型 II 错误的概率{p_end}
{synopt:{cmd: r(delta)}}效应大小{p_end}
{synopt:{cmd: r(N)}}总样本大小{p_end}
{synopt:{cmd: r(N_a)}}实际样本大小{p_end}
{synopt:{cmd: r(N_avg)}}平均样本大小{p_end}
{synopt:{cmd: r(N}{it:#}{cmd:)}}第 {it:#} 组的受试者数量{p_end}
{synopt:{cmd: r(N_per_group)}}每组的受试者数量{p_end}
{synopt:{cmd: r(N_g)}}组的数量{p_end}
{synopt:{cmd: r(nfractional)}}如果指定了 {cmd:nfractional} 则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd: r(balanced)}}如果为平衡设计，则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd: r(grwgt}{it:#}{cmd:)}}组权重 {it:#}{p_end}
{synopt:{cmd: r(onesided)}}如果是均值对比的单边检验，则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd: r(m}{it:#}{cmd:)}}组均值 {it:#}{p_end}
{synopt:{cmd: r(Cm)}}均值对比{p_end}
{synopt:{cmd: r(c0)}}零均值对比{p_end}
{synopt:{cmd: r(Var_m)}}组均值（组间）方差{p_end}
{synopt:{cmd: r(Var_Cm)}}对比方差{p_end}
{synopt:{cmd: r(Var_e)}}错误（组内）方差{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd: r(init)}}样本大小或效应大小的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:oneway}{p_end}
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat.ihlp

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_oneway.sthlp>}