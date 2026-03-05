{smcl}
{* *! version 1.0.17  21mar2019}{...}
{viewerdialog power "dialog power_cmh"}{...}
{vieweralsosee "[PSS-2] power cmh" "mansection PSS-2 powercmh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] Epitab (cc)" "help cc_zh"}{...}
{viewerjumpto "Syntax" "power_cmh_zh##syntax"}{...}
{viewerjumpto "Menu" "power_cmh_zh##menu"}{...}
{viewerjumpto "Description" "power_cmh_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_cmh_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_cmh_zh##options"}{...}
{viewerjumpto "Remarks: Using power cmh" "power_cmh_zh##remarks"}{...}
{viewerjumpto "Examples" "power_cmh_zh##examples"}{...}
{viewerjumpto "Stored results" "power_cmh_zh##results"}
{help power_cmh:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[PSS-2] power cmh} {hline 2}}Cochran-Mantel-Haenszel检验的功效分析{p_end}
{p2col:}({mansection PSS-2 powercmh:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本量

{p 8 20 2}
{opt power} {opt cmh}
{help power cmh##probspec:{it:probspec}}{cmd:,}
{opth or:atio(numlist)}
[{opth p:ower(numlist)} 
{it:{help power_cmh##synoptions:options}}] 


{phang}
计算功效 

{p 8 20 2}
{opt power} {opt cmh}
{help power cmh##probspec:{it:probspec}}{cmd:,}  
{opth or:atio(numlist)}
{opth n(numlist)}
[{it:{help power_cmh##synoptions:options}}]


{phang}
计算目标赔率比

{p 8 20 2}
{opt power} {opt cmh}
{help power cmh##probspec:{it:probspec}}{cmd:,}
{opth n(numlist)} {opth p:ower(numlist)}
[{it:{help power_cmh##synoptions:options}}]


{marker probspec}{...}
{phang}
其中 {it:probspec} 是一个矩阵 {it:matname}，包含每一个层次在对照组的成功概率，或者是个别层次概率的列表：

            {it:p11}  {it:p12}  ...  {it:p1K}  

{pmore}
{it:p1k}，其中 {it:k} = 1, 2, ..., {it:K}，是第{k}个层次中对照组的成功概率。每个 {it:p1k} 可以作为一个数字或在括号中作为一组值来指定（详见 {help numlist_zh}）。

{pmore}
{it:matname} 是一个包含 {it:K} 列的 Stata 矩阵，包含对照组的成功概率。允许多个行，在这种情况下，每一行对应不同的 {it:K} 层次概率，或者说，第 {it:k} 列对应第{k}个层次中对照组成功概率的 {it:{help numlist_zh}}。


{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主}
{p2coldent:* {opth a:lpha(numlist)}}显著性水平；默认值为 {cmd:alpha(0.05)}{p_end}
{p2coldent:* {opth p:ower(numlist)}}功效；默认值为 {cmd:power(0.8)}{p_end}
{p2coldent:* {opth b:eta(numlist)}}第二类错误概率；默认值为 {cmd:beta(0.2)}{p_end}
{p2coldent:* {opth n(numlist)}}总样本量；计算功效或效应大小时必填{p_end}
{synopt:{opt nfrac:tional}}允许部分样本量{p_end}
{p2coldent:* {opth nperstr:atum(numlist)}}每个层次的被试数量；意味着平衡设计{p_end}
{p2coldent:* {cmd:n}{it:#}{cmd:(}{it:{help numlist_zh}}{cmd:)}}第 {it:#} 个层次的被试数量{p_end}
{synopt:{cmdab:strw:eights(}{it:{help power_cmh##wgtspec:wgtspec}}{cmd:)} }层次权重；默认每个层次一个，表示层次大小相等{p_end}
{p2coldent:* {cmd:grratios(}{it:{help power_cmh##grspec:grspec}}{cmd:)}}实验组规模与层次规模的层次特定组比例，{it:n2k}/{it:nk}{p_end}
{p2coldent:* {opth or:atio(numlist)}}实验组与对照组的共同赔率比；计算功效或样本量时必填{p_end}
{synopt:{opt contin:uity}}应用连续性校正；默认情况下不进行连续性校正{p_end}
INCLUDE help pss_testmainopts3.ihlp

{syntab:表}
{synopt :[{cmdab:no:}]{cmdab:表: [{cmd:(}{it:{help power_cmh##tablespec:tablespec}}{cmd:)}]} }抑制表格或将结果以表格形式显示；参见 {manhelp power_opttable PSS-2: power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)} }将表格数据保存至 {it:filename}；使用 {cmd:replace} 替换现有的 {it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}样本量或效应大小的初始值{p_end}
INCLUDE help pss_iteropts.ihlp

{syntab:报告}
{synopt: [{cmd:no}]{opt showgrstrsizes}}抑制或显示每个组和层次的样本大小{p_end}
{synopt: {cmd:showasmatrix}}以矩阵形式显示所有样本大小{p_end}

INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:notitle} 不会出现在对话框中。{p_end}

{synoptset 17}{...}
{marker wgtspec}{...}
{synopthdr :wgtspec}
{synoptline}
{synopt:{it:#1} {it:#2} ... {it:#K}}{it:K}层次权重。权重必须为正并且必须是整数，除非指定了选项 {opt nfractional}。可以将每个层次的多个权重值 {it:#k} 作为括号中的 {it:{help numlist_zh}} 指定。{p_end}
{synopt:{it:matname}} 矩阵包含 {it:K} 列，包含 {it:K} 层次权重。允许多行，在这种情况下，每行对应一组不同的 {it:K} 权重，否则第 {it:k} 列对应第 {it:k} 权重的 {it:numlist}。{p_end}
{synoptline}


{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 16 16 2}
{it:{help power_cmh##column:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:tableopts}}]

{pstd}
{it:column} 是下面定义的列之一，而 {it:label} 是列标签（可以包含引号和复合引号）。


{synoptset 28}{...}
{marker column}{...}
{synopthdr :column}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}第二类错误概率{p_end}
{synopt :{opt N}}总被试数量{p_end}
{synopt :{opt N_per_stratum}}每个层次的被试数量{p_end}
{synopt :{opt N_avg}}每个层次的平均被试数量{p_end}
{synopt :{opt N}{it:#}}第 {it:#} 个层次的被试数量{p_end}
{synopt :{opt N_per_group}}每组的被试数量{p_end}
{synopt :{opt G1}}对照组的被试数量{p_end}
{synopt :{opt G2}}实验组的被试数量{p_end}
{synopt :{opt N_per_grstr}}每组每层的被试数量{p_end}
{synopt :{opt G1_}{it:#}}第 {it:#} 个层次中对照组的被试数量{p_end}
{synopt :{opt G2_}{it:#}}第 {it:#} 个层次中实验组的被试数量{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt N_s}}层次数量{p_end}
{synopt :{opt oratio}}赔率比{p_end}
{synopt :{opt p1_}{it:#}}第 {it:#} 个层次的对照组成功概率{p_end}
{synopt :{opt strwgt}{it:#}}第 {it:#} 个层次的权重{p_end}
{synopt :{opt grratio}{it:#}}第 {it:#} 个层次中实验组规模与层次规模的比例{p_end}
{synopt :{opt target}}目标参数；{cmd:oratio} 的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
如果指定选项 {cmd:beta()}，则将在默认表中用 {cmd:beta} 替代 {cmd:power} 列。{p_end}
{p 4 6 2}
默认表中，{cmd:N_per_stratum} 列仅在平衡层次设计下显示；否则，显示 {cmd:N}{it:#} 列。{p_end}
{p 4 6 2}
默认表中，{cmd:N_per_group} 列仅在组大小相同的情况下显示；否则，显示 {cmd:G1} 和 {cmd:G2} 列。{p_end}
{p 4 6 2}
默认表中，{cmd:N_per_grstr} 列仅在平衡设计条件下显示。{p_end}
{p 4 6 2}
默认情况下，仅在请求时或者指定选项 {cmd:showgrstrsizes} 时，才显示 {cmd:G1_}{it:#} 和 {cmd:G2_}{it:#} 列。{p_end}
{p 4 6 2}
默认情况下，仅在指定选项 {cmd:strweights()} 时，显示 {cmd:strwgt}{it:#} 列。{p_end}
{p 4 6 2}
默认情况下，仅在指定选项 {cmd:grratios()} 时，显示 {cmd:grratio}{it:#} 列。


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power cmh} 计算 Cochran-Mantel-Haenszel (CMH) 关联检验中的样本量、功效或效应大小（最小可检测的赔率比），用于分层的 2 x 2 表格。该命令适应于不平衡的层次大小以及每个层次中的不平衡组大小。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-2 powercmhQuickstart:快速开始}

        {mansection PSS-2 powercmhRemarksandexamples:备注和示例}

        {mansection PSS-2 powercmhMethodsandformulas:方法和公式}

{pstd}
上述章节未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{cmd:alpha()}, {cmd:power()}, {cmd:beta()}, {cmd:n()}, {cmd:nfractional}; 
见 {manhelp power##mainopts PSS-2: power}。

{phang}
{opth nperstratum(numlist)} 指定层次大小。只有正整数被允许。此选项意味着具有相等层次大小的平衡层次设计。{cmd:nperstratum()} 不能与 {cmd:n()}、{cmd:n}{it:#}{cmd:()} 或 {cmd:strweights()} 一起指定。

{phang}
{cmd:n}{it:#}{cmd:(}{it:{help numlist_zh}}{cmd:)} 指定第 {it:#} 个层次的大小。仅允许正整数。所有层次大小必须被指定。例如，对于有三个层次的设计，必须指定三个选项 {cmd:n1()}、{cmd:n2()} 和 {cmd:n3()}。{cmd:n}{it:#}{cmd:()} 不能与 {cmd:n()}、{cmd:nperstratum()} 或 {cmd:strweights()} 一起指定。

{phang}
{opt strweights(wgtspec)} 指定不平衡层次设计的 {it:K} 层次权重。权重可以作为值列表或矩阵指定，并且允许多组权重；详见 {it:{help power_cmh##wgtspec:wgtspec}}。权重必须为正并且必须为整数，除非指定了 {cmd:nfractional} 选项。{cmd:strweights()} 不能与 {cmd:nperstratum()} 或 {cmd:n}{it:#}{cmd:()} 一起指定。

{phang}
{opt grratios(grspec)} 指定 {it:K} 比例，每个层次实验组的被试数量与对应层次的被试数量之比，{it:n2k}/{it:nk}。默认情况下，假设平衡组设计（或每个层次中的对照组和实验组被试数量相同），这等同于将 {it:K} 比例设置为 0.5。

{marker grspec}{...}
{pmore}
{it:grspec} 类似于 {help power cmh##wgtspec:{it:wgtspec}}，但允许非整数值。

{phang}
{opth oratio(numlist)} 指定实验组与对照组的共同赔率比的替代值。此选项指定效应大小的幅度。计算功效或样本量时必填。

{phang}
{opt continuity} 请求应用连续性校正。默认情况下，不应用连续性校正。

{phang}
{cmd:direction()}, {cmd:onesided}, {cmd:parallel}; 见 
{manhelp power##mainopts PSS-2:power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另见 {mansection PSS-2 powercmhSyntaxcolumn:{it:column}} 表格中用于图形的符号列表。 

{dlgtab:迭代}

{phang}
{opt init(#)} 指定在需要迭代搜索时的估计样本大小或效应大小的初始值。当计算双尾检验的样本大小时，使用单尾检验的样本大小估计。计算效应大小的初始估计使用二分法搜索。

INCLUDE help pss_iteroptsdes.ihlp

{dlgtab:报告}

{phang}
{cmd:showgrstrsizes} 和 {cmd:noshowgrstrsizes} 显示或抑制在每个组和层次中样本大小的显示。一般输出的默认值是在矩阵中显示每个层次的组大小。表格输出的默认值是抑制显示每个层次的组大小。如果您在表格输出时指定此选项，每个组的层次大小将作为列显示在表格中。此选项对图形输出没有影响。

{phang}
{cmd:showasmatrix} 请求将报告的样本大小显示为包含每个层次大小的单元格的矩阵，总层次大小、总组大小和总样本大小作为边际总计。此选项不允许在表格或图形输出中使用。

{pstd}
以下选项适用于 {cmd:power cmh}，但不在对话框中显示：

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注: 使用 power cmh}

{pstd}
{cmd:power cmh} 计算样本量、功效或效应大小（最小可检测的赔率比）用于 2 x 2 x {it:K} 表的 CMH 关联检验。所有计算都是针对双尾假设检验进行的，默认显著性水平设为 0.05。您可以通过指定选项 {cmd:alpha()} 来更改显著性水平。您可以指定 {cmd:onesided} 选项请求单尾检验。

{pstd}
要计算总样本量，必须在命令名后指定 {it:p1k} 对照组中每个 {it:K} 层次的成功概率；在 {cmd:oratio()} 选项中指定共同赔率比；并且可以选择性地在 {cmd:power()} 选项中指定检验的功效。默认功效设置为 0.8。

{pstd}
要计算功效，您必须在 {cmd:n()} 选项中指定总样本量，在 {cmd:oratio()} 选项中指定共同赔率比，并在命令名后指定对照组成功概率 {it:p1k}。

{pstd}
要计算效应大小，即最小可检测的赔率比或目标赔率比，您必须在 {cmd:n()} 中指定总样本量；在 {cmd:power()} 中指定功效；在命令名后指定对照组成功概率；并可选择性地指定效应的方向。方向默认是上，{cmd:direction(upper)}，这意味着共同赔率比假定大于 1。您可以通过指定 {cmd:direction(lower)} 选项来更改方向为下，这意味着共同赔率比假定小于 1。

{pstd}
有多种方法可以指定对照组成功概率；请参见 {mansection PSS-2 powercmhRemarksandexamplessub1:{it:替代指定概率的方法}} 在 {bf:[PSS-2] power cmh}。

{pstd}
默认情况下，所有计算均假设每组和每层中有相等数量的被试。要更改每个层次中的组特定比例，请使用 {cmd:grratios(}{help power cmh##grspec:{it:grspec}}{cmd:)} 选项。可以为所有层次使用共同的比例，也可以为每个层次指定不同的比例。无论您选择共同比例还是选择让比例在各层次之间变化，您都必须在 {cmd:grratios()} 中指定 {it:K} 案例与层次样本大小之间的比率。

{pstd}
为了适应功效和效应大小计算的不平衡层次大小，您可以在选项 {cmd:n1()}、{cmd:n2()}、...、{cmd:n}{it:K}{cmd:()} 中指定单独的层次大小，或在 {cmd:n()} 中指定总样本量和在 {opth strweights:(power_cmh##wgtspec:wgtpec)} 中指定整数层次权重。对于平衡层次，您也可以指定 {cmd:nperstratum()} 选项以指定共同的层次大小，而不是在 {cmd:n()} 中指定总样本量。

{pstd}
默认情况下，所有计算假设不进行连续性校正。使用 {cmd:continuity} 选项可以更改这一点。

{pstd}
{cmd:power cmd} 在输出中以矩阵形式报告每层的组大小。要抑制此矩阵，请使用 {cmd:noshowgrstrsizes} 选项。或者，对于表格输出，您可以使用 {cmd:showgrstrsizes} 选项在默认表中包含包含组每层大小的列。

{pstd}
为了使 {cmd:power cmd} 的输出更加紧凑，您可以考虑使用 {cmd:showasmatrix} 选项以矩阵形式显示所有样本大小。

{pstd}
双尾检验的样本量确定和效应大小确定需要迭代。样本大小的默认初始值使用单尾检验的估计。效应大小的初始估计使用二分法搜索。如果要指定不同的起始值，可以使用选项 {cmd:init()}。有关控制迭代过程的更多选项，请参见 {manhelp power PSS-2}。


{marker examples}{...}
{title:示例}

    {title:示例: 计算样本量}

{pstd}
我们研究某种特定药物暴露是否与婴儿出生缺陷相关。使用先导数据获取对照组的缺陷概率，并在 4 个年龄组上进行分层，我们希望计算检测到的赔率比至少为 1.8 的样本量。我们使用默认功效 0.8 和显著性 0.05。

{phang2}{cmd:. power cmh 0.25 0.3 0.3 0.35, or(1.8)}

{pstd}
我们将赔率比从 1.2 变动到 2.0，每步 0.1，以生成所需样本量的表。

{phang2}{cmd:. power cmh 0.25 0.3 0.3 0.35, or(1.2(.1)2.0)}

{pstd}
我们调查如果将样本的 15% 分配给第一个年龄组，40% 分配给第二个年龄组，35% 分配给第三个年龄组，10% 分配给第四个年龄组，所需的样本量。

{phang2}{cmd:. power cmh 0.25 0.3 0.3 0.35, or(1.8) strweights(15 40 35 10)}

{pstd}
我们预期招募案例会比对照组更困难。我们计划将 40% 的样本作为案例，60% 作为对照。

{phang2}{cmd:. power cmh 0.25 0.3 0.3 0.35, or(1.8) strweights(15 40 35 10) grratios(0.4 0.4 0.4 0.4)}


    {title:示例: 计算功效}

{pstd}
继续上述示例，我们希望探索检测赔率比为 1.8 的功效，如果我们的总样本量范围从 100 到 400，每步 50，并且均匀分配在各年龄组中。我们使用单尾检验并绘制结果图。

{phang2}{cmd:. power cmh 0.25 0.3 0.3 0.35, or(1.8) n(100(50)400) onesided table graph}


    {title:示例: 计算最小可检测赔率比}

{pstd}
继续上述示例，我们确定最多只能招募 400 名受试者，并希望确定最小可检测的赔率比。

{phang2}{cmd:. power cmh 0.25 0.3 0.3 0.35, n(400) power(0.8)}

{pstd}
最后，我们认为单尾检验更合适。

{phang2}{cmd:. power cmh 0.25 0.3 0.3 0.35, n(400) power(0.8) onesided}



{marker results}{...}
{title:存储结果}

{pstd}
{cmd:power cmh} 存储以下信息在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd: r(alpha)}}显著性水平{p_end}
{synopt:{cmd: r(power)}}功效{p_end}
{synopt:{cmd: r(beta)}}第二类错误概率{p_end}
{synopt:{cmd: r(delta)}}效应大小{p_end}
{synopt:{cmd: r(N)}}总样本量{p_end}
{synopt:{cmd: r(N_a)}}实际样本量{p_end}
{synopt:{cmd: r(N_avg)}}平均样本量{p_end}
{synopt:{cmd: r(N}{it:#}{cmd:)}}第 {it:#} 个层次的被试数量{p_end}
{synopt:{cmd: r(N_per_stratum)}}每层的被试数量{p_end}
{synopt:{cmd: r(N_s)}}层次数量{p_end}
{synopt:{cmd: r(nfractional)}}{cmd:1} 如果指定了 {cmd:nfractional}，则为 {cmd:0}，否则{p_end}
{synopt:{cmd: r(balanced)}}{cmd:1} 针对平衡设计, {cmd:0} 否则{p_end}
{synopt:{cmd: r(strwgt}{it:#}{cmd:)}}第 {it:#} 层的权重{p_end}
{synopt:{cmd: r(onesided)}}{cmd:1} 表示单尾检验； {cmd:0} 否则{p_end}
{synopt:{cmd: r(N_per_group)}}每组的被试数量{p_end}
{synopt:{cmd: r(G1)}}对照组的被试数量{p_end}
{synopt:{cmd: r(G2)}}实验组的被试数量{p_end}
{synopt:{cmd: r(N_per_grstr)}}每组和层次的被试数量{p_end}
{synopt:{cmd: r(G1_}{it:#}{cmd:)}}第 {it:#} 层中对照组的被试数量{p_end}
{synopt:{cmd: r(G2_}{it:#}{cmd:)}}第 {it:#} 层中实验组的被试数量{p_end}
{synopt:{cmd: r(grratio}{it:#}{cmd:)}}实验组规模与层次规模比例，{it:#}{p_end}
{synopt:{cmd: r(p1_}{it:#}{cmd:)}}第 {it:#} 层的对照组成功概率{p_end}
{synopt:{cmd: r(oratio)}}实验组与对照组的赔率比{p_end}
{synopt:{cmd: r(continuity)}}{cmd:1} 如果使用了连续性校正，{cmd:0} 否则{p_end}
{synopt:{cmd: r(c)}}连续性校正值{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd: r(init)}}样本大小或效应大小的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:cmh}{p_end}
{synopt:{cmd:r(direction)}}{cmd:upper} 或 {cmd:lower}{p_end}
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat.ihlp
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_cmh.sthlp>}