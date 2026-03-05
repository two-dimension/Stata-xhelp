{smcl}
{* *! version 1.0.13  21mar2019}{...}
{viewerdialog power "dialog power_trend"}{...}
{vieweralsosee "[PSS-2] power trend" "mansection PSS-2 powertrend"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] Epitab" "help epitab_zh"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{viewerjumpto "Syntax" "power_trend_zh##syntax"}{...}
{viewerjumpto "Menu" "power_trend_zh##menu"}{...}
{viewerjumpto "Description" "power_trend_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_trend_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_trend_zh##options"}{...}
{viewerjumpto "Remarks: Using power trend" "power_trend_zh##remarks"}{...}
{viewerjumpto "Examples" "power_trend_zh##examples"}{...}
{viewerjumpto "Stored results""power_trend##results"}
{help power_trend:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[PSS-2] power trend} {hline 2}}Cochran-Armitage 趋势检验的功效分析{p_end}
{p2col:}({mansection PSS-2 powertrend:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本量

{p 8 20 2}
{opt power} {opt trend}
{help power trend##probspec:{it:probspec}}
[{cmd:,} {opth p:ower(numlist)} 
{it:{help power_trend##synoptions:options}}] 


{phang}
计算功效 

{p 8 20 2}
{opt power} {opt trend}
{help power trend##probspec:{it:probspec}}{cmd:,}  
{opth n(numlist)}
[{it:{help power_trend##synoptions:options}}]


{marker probspec}{...}
{phang}
其中 {it:probspec} 可以是包含组概率的矩阵 {it:matname} 或个别组概率的列表：

            {it:p1}  {it:p2}  [ {it:p3}  ...  {it:pJ} ]

{pmore}
{it:pj}，其中 {it:j} = 1, 2, ..., {it:J}，是观察成功的替代组概率，适用于暴露于第 {it:j} 层次的个体。每个 {it:pj} 可以指定为一个数字或用括号括起来的数值列表（见 {help numlist_zh}）。

{pmore}
{it:matname} 是一个 Stata 矩阵的名称，具有 {it:J} 列，包含替代组概率的值。允许有多行，在这种情况下，每一行对应于一组不同的 {it:J} 组概率，或者，相当于列 {it:j} 对应于第 {it:j} 层次的 {it:{help numlist_zh}}。

{pmore}
替代概率应严格单调：全为递增或全为递减。


{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{p2coldent:* {opth a:lpha(numlist)}}显著性水平；默认值为
   {cmd:alpha(0.05)}{p_end}
{p2coldent:* {opth p:ower(numlist)}}功效；默认值为 {cmd:power(0.8)}{p_end}
{p2coldent:* {opth b:eta(numlist)}}类型 II 错误概率；默认值为
   {cmd:beta(0.2)}{p_end}
{p2coldent:* {opth n(numlist)}}总样本量；计算功效时必需{p_end}
{synopt:{opt nfrac:tional}}允许分数样本量{p_end}
{p2coldent:* {opth nperg:roup(numlist)}}每组的受试者数量；意味着均衡设计{p_end}
{p2coldent:* {cmd:n}{it:#}{cmd:(}{it:{help numlist_zh}}{cmd:)}}第 {it:#} 组的受试者数量{p_end}
{synopt:{cmdab:grw:eights(}{it:{help power_trend##wgtspec:wgtspec}}{cmd:)}}组权重；每组的默认值为 1，表示相等组大小{p_end}
{synopt:{cmdab:expos:ure(}{it:{help power_trend##exposspec:exposspec}}{cmd:)}}严格递增的暴露水平；默认值为等距的顺序值{p_end}
{synopt:{opt contin:uity}}应用连续性校正；默认情况下不应用连续性校正{p_end}
{synopt:{opt onesid:ed}}单侧检验；默认为双侧{p_end}
{synopt: {opt par:allel}}将带星号选项或命令参数中的数字列表视为并行，即在指定每个选项或参数的多个值时（不必列举所有可能的值组合）

{syntab:表格}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_trend##tablespec:tablespec}}{cmd:)}]}抑制表格或以表格形式显示结果；见
{manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到 {it:filename}；使用 {cmd:replace} 替换现有的
{it:filename}{p_end}

包含 help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}双侧检验样本量计算的初始值；
   默认使用单侧检验的样本量估计{p_end}
包含 help pss_iteropts.ihlp

包含 help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
包含 help pss_numlist.ihlp
{p 4 6 2}{cmd:notitle} 不会出现在对话框中.{p_end}


{synoptset 17}{...}
{marker wgtspec}{...}
{synopthdr :wgtspec}
{synoptline}
{synopt:{it:#1} {it:#2} ... {it:#J}}{it:J} 组权重。权重必须是正整数，除非指定了选项 {opt nfractional}。每个组权重的多个值 {it:#j} 可以作为括号中的 {it:{help numlist_zh}} 指定.{p_end}
{synopt:{it:matname}}包含 {it:J} 组权重的矩阵。允许多行，在这种情况下，每一行对应于一组不同的 {it:J} 权重，或者，相当于列 {it:j} 对应于第 {it:j} 权重的 {it:{help numlist_zh}}.{p_end}
{synoptline}


{marker exposspec}{...}
{synopthdr :exposspec}
{synoptline}
{synopt:{it:#1} {it:#2} ... {it:#J}}{it:J} 暴露水平。默认情况下，使用等距的暴露水平 1, 2, ..., {it:J}。
为每个暴露水平 {it:#j} 的多个值可以作为括号中的 {it:{help numlist_zh}} 指定.{p_end}
{synopt:{it:matname}}包含 {it:J} 暴露水平的矩阵。允许多行，在这种情况下，每一行对应于一组不同的 {it:J} 暴露水平，或者，相当于列 {it:j} 对应于第 {it:j} 层次的 {it:{help numlist_zh}}.{p_end}
{synoptline}


{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 16 16 2}
{it:{help power_trend##column:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:tableopts}}]

{pstd}
{it:column} 是下面定义的列之一，
{it:label} 是列标签（可以包含引号和复合引号）。


{synoptset 28}{...}
{marker column}{...}
{synopthdr :column}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}类型 II 错误概率{p_end}
{synopt :{opt N}}受试者总数{p_end}
{synopt :{opt N_per_group}}每组的受试者数量{p_end}
{synopt :{opt N_avg}}每组的平均受试者数量{p_end}
{synopt :{opt N}{it:#}}第 {it:#} 组的受试者数量{p_end}
{synopt :{opt N_g}}组数{p_end}
{synopt :{opt p}{it:#}}第 {it:#} 组的结果概率{p_end}
{synopt :{opt x}{it:#}}暴露水平 {it:#}{p_end}
{synopt :{opt grwgt}{it:#}}组权重 {it:#}{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定了选项 {cmd:beta()}，则在默认表中显示列 {cmd:beta} 代替列 {cmd:power}。{p_end}
{p 4 6 2}仅在均衡设计中，列 {cmd:N_per_group} 会显示在默认表中。{p_end}
{p 4 6 2}仅在不均衡设计中，列 {cmd:N_avg} 和 {cmd:N}{it:#} 会显示在默认表中。{p_end}
{p 4 6 2}仅在使用 {cmd:exposure()} 选项指定暴露水平时，列 {cmd:x}{it:#} 会被显示。


包含 help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power trend} 计算 Cochran-Armitage 趋势检验的样本量或功效，这是一个用于 {it:J} x 2 表中响应概率线性趋势的检验。它可以容纳不均衡设计和不等间隔的暴露水平（剂量）。在等间隔的暴露水平下，提供连续性校正。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection PSS-2 powertrendQuickstart:快速入门}

        {mansection PSS-2 powertrendRemarksandexamples:备注和示例}

        {mansection PSS-2 powertrendMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:alpha()}, {cmd:power()}, {cmd:beta()}, {cmd:n()}, {cmd:nfractional};
见 {manhelp power##mainopts PSS-2: power}。

{phang}
{opth npergroup(numlist)} 指定组大小。仅允许正整数。此选项意味着均衡设计。{cmd:npergroup()} 不能与 {cmd:n()}、 {cmd:n}{it:#}{cmd:()} 或 {cmd:grweights()} 一起指定。

{phang}
{cmd:n}{it:#}{cmd:(}{it:{help numlist_zh}}{cmd:)} 指定用于功效确定的第 {it:#} 组中的受试者数量。仅允许正整数。所有组大小必须被指定。
{cmd:n}{it:#}{cmd:()} 不能与 {cmd:n()}、 {cmd:npergroup()} 或 {cmd:grweights()} 一起指定。

{phang}
{opt grweights(wgtspec)} 指定不均衡设计的 {it:J} 组权重。权重可以作为值的列表或矩阵指定，并允许多个权重集；有关详细信息，请参见 {it:{help power_trend##wgtspec:wgtspec}}。权重必须是正整数，除非指定了 {cmd:nfractional} 选项。{cmd:grweights()} 不能与 {cmd:npergroup()} 或 {cmd:n}{it:#}{cmd:()} 一起指定。

{phang}
{cmd:exposure(}{it:{help power_trend##exposspec:exposspec}}{cmd:)} 指定 {it:J} 严格递增的暴露水平。默认值是等间隔的值 1，2，...，{it:J}.{p_end}

{phang}
{opt continuity} 请求应用连续性校正。此选项仅能在等间隔的暴露水平下指定。默认情况下，不应用连续性校正。

{phang}
{cmd:onesided}, {cmd:parallel}; 见 {manhelp power##mainopts PSS-2: power}。

包含 help pss_taboptsdes.ihlp

包含 help pss_graphoptsdes.ihlp
另请参见 {mansection PSS-2 powertrendSyntaxcolumn:column} 表，了解图形中使用的符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定双侧检验的样本量计算的初始值。默认的初始值是对应单侧检验的样本量。

包含 help pss_iteroptsdes.ihlp

{pstd}
以下选项可与 {cmd:power trend} 一起使用，但不会在对话框中显示：

包含 help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注：使用 power trend}

{pstd}
{cmd:power trend} 计算 {it:J} x 2 表的 Cochran-Armitage 趋势检验的样本量或功效。所有计算都为双侧假设检验执行，默认显著性水平设置为 0.05。您可以通过指定 {cmd:alpha()} 选项来更改显著性水平。您可以指定 {cmd:onesided} 选项请求单侧检验。

{pstd}
要计算总的和各组的样本量，您必须指定 {it:J} 层次的成功替代概率，并可选地指定 {cmd:power()} 选项中的检验功效。默认功效设置为 0.8。

{pstd}
要计算功效，您必须在 {cmd:n()} 选项中指定总样本量和替代概率。 

{pstd}
有多种方式可以指定替代概率；见 {mansection PSS-2 powertrendRemarksandexamplessub1:{it:指定概率的替代方法}}，在 {bf:[PSS-2] power trend} 中。

{pstd}
默认情况下，所有计算假定为均衡或等分配设计。您可以使用 {cmd:grweights()} 选项指定不均衡设计进行功效或样本量计算。对于功效计算，您可以在选项 {cmd:n1()}、 {cmd:n2()}、...、 {cmd:n}{it:J}{cmd:()} 中指定单独的组大小，而不是使用 {cmd:n()} 和 {cmd:grweights()} 的组合，以适应不均衡设计。对于均衡设计，您还可以指定 {cmd:npergroup()} 选项来指定组大小，而不是在 {cmd:n()} 中指定总样本量。

{pstd}
计算还假定暴露水平是等间隔的，并且不应用连续性校正。当暴露水平是等间隔时，您可以使用 {cmd:continuity} 选项请求应用连续性校正。您可以在 {cmd:exposure()} 选项中指定特定的暴露水平。指定水平的方法有多种；在 {mansection PSS-2 powertrendRemarksandexamplessub1:{it:指定概率的替代方法}} 中描述的任何方法也可以用于暴露水平的指定。

{pstd}
双侧检验的样本量确定需要迭代。默认初始值为对应单侧检验的样本量估算。您可以使用 {cmd:init()} 选项指定自己的值。
有关控制迭代过程的其他选项，请参见 {manhelp power PSS-2}。


{marker examples}{...}
{title:示例}

    {title:示例：计算样本量}

{pstd}
我们研究每日剂量（1，2，3或4）是否与在10天内成功治疗皮肤感染相关联。我们使用双侧检验，显著性水平为0.05，功效为0.8。

{phang2}{cmd:. power trend 0.80 0.85 0.90 0.95}

{pstd}
接下来我们变化每个层次的受试者数量。

{phang2}{cmd:. power trend 0.80 0.85 0.90 0.95, grweights(2 2 3 3)}

{pstd}
然后我们变化每日剂量。

{phang2}{cmd:. power trend 0.80 0.85 0.90 0.95, exposure(1 3 6 7)}


    {title:示例：计算功效}

{pstd}
继续上述示例，我们认为我们只能招募200名受试者。我们调查在这种情况下检验的功效。

{phang2}{cmd:. power trend 0.80 0.85 0.90 0.95, n(200)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:power trend} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(alpha)}}显著性水平{p_end}
{synopt:{cmd:r(power)}}功效{p_end}
{synopt:{cmd:r(beta)}}类型 II 错误的概率{p_end}
{synopt:{cmd:r(delta)}}效应量{p_end}
{synopt:{cmd:r(N)}}总样本量{p_end}
{synopt:{cmd:r(N_a)}}实际样本量{p_end}
{synopt:{cmd:r(N_avg)}}平均样本量{p_end}
{synopt:{cmd:r(N}{it:#}{cmd:)}}第 {it:#} 组的受试者数量{p_end}
{synopt:{cmd:r(N_per_group)}}每组的受试者数量{p_end}
{synopt:{cmd:r(N_g)}}组数{p_end}
{synopt:{cmd:r(nfractional)}}如果指定了 {cmd:nfractional} 则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd:r(balanced)}}如果为均衡设计则为 {cmd:1}，
	否则为 {cmd:0}{p_end}
{synopt:{cmd:r(grwgt}{it:#}{cmd:)}}组权重 {it:#}{p_end}
{synopt:{cmd:r(onesided)}}如果为单侧检验则为 {cmd:1}； 
	否则为 {cmd:0}{p_end}
{synopt:{cmd:r(p}{it:#}{cmd:)}}第 {it:#} 组的成功概率{p_end}
{synopt:{cmd:r(x}{it:#}{cmd:)}}第 {it:#} 组的暴露水平{p_end}
{synopt:{cmd:r(continuity)}}如果使用了连续性校正则为 {cmd:1}； 
	否则为 {cmd:0}{p_end}
{synopt:{cmd:r(c)}}连续性校正值{p_end}
包含 help pss_rrestab_sc.ihlp
{synopt:{cmd:r(init)}}双侧检验样本量的初始值{p_end}
包含 help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:trend}{p_end}
包含 help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
包含 help pss_rrestab_mat.ihlp
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_trend.sthlp>}