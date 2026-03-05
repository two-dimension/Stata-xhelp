{smcl}
{* *! version 1.0.9  21mar2019}{...}
{viewerdialog power "dialog power_logrank_cluster"}{...}
{vieweralsosee "[PSS-2] power logrank, cluster" "mansection PSS-2 powerlogrank,cluster"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power logrank" "help power_logrank_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stcox" "help stcox_zh"}{...}
{vieweralsosee "[ST] sts test" "help sts_test_zh"}{...}
{viewerjumpto "语法" "power_logrank_cluster_zh##syntax"}{...}
{viewerjumpto "菜单" "power_logrank_cluster_zh##menu"}{...}
{viewerjumpto "描述" "power_logrank_cluster_zh##description"}{...}
{viewerjumpto "链接到 PDF 文档" "power_logrank_cluster_zh##linkspdf"}{...}
{viewerjumpto "选项" "power_logrank_cluster_zh##options"}{...}
{viewerjumpto "备注: 使用 power logrank, cluster" "power_logrank_cluster_zh##remarks"}{...}
{viewerjumpto "示例" "power_logrank_cluster_zh##examples"}{...}
{viewerjumpto "存储结果" "power_logrank_cluster_zh##results"}
{help power_logrank_cluster:English Version}
{hline}{...}
{p2colset 1 35 37 2}{...}
{p2col:{bf:[PSS-2] power logrank, cluster} {hline 2}}用于 
log-rank 检验的功效分析，CRD{p_end}
{p2col:}({mansection PSS-2 powerlogrank,cluster:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算集群的数量

{p 8 20 2}
{opt power} {opt log:rank} [{it:surv1} [{it:surv2}]]{cmd:,}
{c -(}{it:{help power_logrank_cluster##mspec:mspec}} {c |}
      {it:{help power_logrank_cluster##nspec:nspec}} {cmd:cluster}{c )-}
[{it:{help power_logrank_cluster##synoptions:options}}] 


{phang}
计算集群大小

{p 8 20 2}
{opt power} {opt log:rank} [{it:surv1} [{it:surv2}]]{cmd:,}
{it:{help power_logrank_cluster##kspec:kspec}}
[{it:{help power_logrank_cluster##synoptions:options}}] 


{phang}
计算功效 

{p 8 20 2}
{opt power} {opt log:rank} [{it:surv1} [{it:surv2}]]{cmd:,}
{it:{help power_logrank_cluster##kspec:kspec}}
{c -(}{it:{help power_logrank_cluster##mspec:mspec}} {c |}
      {it:{help power_logrank_cluster##nspec:nspec}}{c )-}
[{it:{help power_logrank_cluster##synoptions:options}}]


{phang}
计算效应大小

{p 8 20 2}
{opt power} {opt log:rank} [{it:surv1}]{cmd:,}
{it:{help power_logrank_cluster##kspec:kspec}}
{c -(}{it:{help power_logrank_cluster##mspec:mspec}} {c |}
      {it:{help power_logrank_cluster##nspec:nspec}}{c )-}
{opth p:ower(numlist)}
[{it:{help power_logrank_cluster##synoptions:options}}]


{phang}
其中
{it:surv1} 是在研究结束时对照（参考）组的生存概率 {it:t*} 
而 {it:surv2} 是在研究结束时实验（比较）组的生存概率 {it:t*}。
{it:surv1} 和 {it:surv2} 可以被指定为一个数字，或作为括号内的值列表（参见 {help numlist_zh}）。

{marker mspec}{...}
{marker nspec}{...}
{marker kspec}{...}
{phang2}
{it:mspec} 取值为

            {cmd:m1()} {cmd:m2()}
	    {cmd:m1()} [{opt mrat:io()}]
	    {cmd:m2()} [{opt mrat:io()}]

{phang2}
{it:nspec} 取值为

            {cmd:n1()} {cmd:n2()}
	    {cmd:n1()} [{opt nrat:io()}]
	    {cmd:n2()} [{opt nrat:io()}]

{phang2}
{it:kspec} 取值为

            {cmd:k1()} {cmd:k2()}
	    {cmd:k1()} [{opt krat:io()}]
	    {cmd:k2()} [{opt krat:io()}]

{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt :{opt cluster}}对 CRD 进行计算; 在指定 {cmd:k1()}、 {cmd:k2()}、 {cmd:m1()} 或 {cmd:m2()} 时隐含{p_end}
{p2coldent:* {opth a:lpha(numlist)}}显著性水平; 默认为
   {cmd:alpha(0.05)}{p_end}
{p2coldent:* {opth p:ower(numlist)}}功效; 默认为 {cmd:power(0.8)}{p_end}
{p2coldent:* {opth b:eta(numlist)}}第二类错误概率; 默认为
   {cmd:beta(0.2)}{p_end}
{p2coldent:* {opth k1(numlist)}}对照组的集群数量{p_end}
{p2coldent:* {opth k2(numlist)}}实验组的集群数量{p_end}
{p2coldent:* {opth krat:io(numlist)}}集群比， {cmd:K2/K1};
    默认为 {cmd:kratio(1)}{p_end}
{p2coldent:* {opth m1(numlist)}}对照组的集群大小{p_end}
{p2coldent:* {opth m2(numlist)}}实验组的集群大小{p_end}
{p2coldent:* {opth mrat:io(numlist)}}集群大小比，{cmd:M2/M1};
默认为 {cmd:mratio(1)}{p_end}
{p2coldent:* {opth n1(numlist)}}对照组的样本大小{p_end}
{p2coldent:* {opth n2(numlist)}}实验组的样本大小{p_end}
{p2coldent:* {opth nrat:io(numlist)}}样本大小比，{cmd:N2/N1};
    默认为 {cmd:nratio(1)}{p_end}
{synopt:{opt nfrac:tional}}允许集群、集群大小和样本大小为分数{p_end}
{p2coldent:* {opth hr:atio(numlist)}}实验组与对照组的风险比; 默认为
   {cmd:hratio(0.5)}{p_end}
{p2coldent:* {opth lnhr:atio(numlist)}}实验组与对照组的对数风险比
{p_end}
{p2coldent:* {opth rho(numlist)}}班内相关性; 默认为 {cmd:rho(0.5)}{p_end}
{p2coldent:* {opth cvcl:uster(numlist)}}集群大小的变异系数{p_end}
INCLUDE help pss_testmainopts2.ihlp

{syntab:表格}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_logrank_cluster##tablespec:tablespec}}{cmd:)}]}抑制表格或将结果显示为表格; 参见
{manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将
表格数据保存到 {it:filename}; 使用 {cmd:replace} 重写现有
{it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}风险比的初始值{p_end}
INCLUDE help pss_iteropts.ihlp

INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:notitle} 不会出现在对话框中.{p_end}


{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 为

{p 16 16 2}
{it:{help power_logrank_cluster##column:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:tableopts}}]

{pstd}
{it:column} 是以下定义的列之一，
而 {it:label} 是列标签（可以包含引号和复合引号）。


{synoptset 28}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}第二类错误概率{p_end}
{synopt :{opt K1}}对照组的集群数量{p_end}
{synopt :{opt K2}}实验组的集群数量{p_end}
{synopt :{opt kratio}}集群数量比，实验组与对照组{p_end}
{synopt :{opt M1}}对照组的集群大小{p_end}
{synopt :{opt M2}}实验组的集群大小{p_end}
{synopt :{opt mratio}}集群大小比，实验组与对照组{p_end}
{synopt :{opt N}}总观察数{p_end}
{synopt :{opt N1}}对照组的观察数量{p_end}
{synopt :{opt N2}}实验组的观察数量{p_end}
{synopt :{opt nratio}}样本大小比，实验组与对照组{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt E}}总事件数（失败）{p_end}
{synopt :{opt hratio}}风险比{p_end}
{synopt :{opt lnhratio}}对数风险比{p_end}
{synopt :{opt s1}}对照组的生存概率{p_end}
{synopt :{opt s2}}实验组的生存概率{p_end}
{synopt :{opt Pr_E}}事件（失败）的总体概率{p_end}
{synopt :{opt rho}}班内相关性{p_end}
{synopt :{opt CV_cluster}}集群大小的变异系数{p_end}
{synopt :{opt target}}目标参数; {cmd:hratio}{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定，列 {cmd:beta} 在默认表中取代列
{cmd:power}显示.{p_end}
{p 4 6 2}如果指定，列 {cmd:N} 会在表中显示.{p_end}
{p 4 6 2}如果指定了 {cmd:n1()} 或 {cmd:n2()}，列 {cmd:N1} 和 {cmd:N2} 会在默认表中显示.{p_end}
{p 4 6 2}如果指定，列 {cmd:lnhratio} 在默认表中取代列
{cmd:hratio}显示.{p_end}
{p 4 6 2}仅当指定时，列 {cmd:s1} 和 {cmd:s2} 可用.{p_end}
{p 4 6 2}如果指定，列 {cmd:nratio} 和 {cmd:CV_cluster} 会在默认表中显示.


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power} {cmd:logrank,} {cmd:cluster} 计算群体特定的集群数量、群体特定的集群大小、功效或 log-rank 检验的风险比，该检验比较两组中的生存函数，采用的是集群随机设计 (CRD)。在没有删失的情况下，生存输入参数为风险比；否则，生存输入参数为对照组和实验组的生存概率。

{pstd}
{cmd:power} {cmd:logrank,} {cmd:cluster} 在给定集群大小、功效和生存参数的情况下计算群体特定的集群数量。它还可以在给定集群数量、功效和生存参数的情况下计算群体特定的集群大小。或者，它可以在给定集群数量、集群大小和生存参数的情况下计算功效，或者在给定集群数量、集群大小、功效和存在删失的情况下计算风险比。有关 log-rank 检验功效和样本大小分析的通用讨论，请参见 {manhelp power_logrank PSS-2:power logrank}。还请参阅 {manhelp power PSS-2} 以了解 {cmd:power} 命令的一般介绍，例如假设检验。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection PSS-2 powerlogrank,clusterQuickstart:快速开始}

        {mansection PSS-2 powerlogrank,clusterRemarksandexamples:备注和示例}

        {mansection PSS-2 powerlogrank,clusterMethodsandformulas:方法和公式}

{pstd}
上述章节未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:cluster} 指定计算应为 CRD 进行。此选项在指定 {cmd:k1()}、{cmd:k2()}、{cmd:m1()} 或 {cmd:m2()} 选项时隐含。{cmd:cluster} 需要在使用 {it:nspec} 指定样本大小而非 {it:mspec} 进行集群规模计算时计算集群数量。

{phang}
{cmd:alpha()}、{cmd:power()}、{cmd:beta()}；参见
{manhelp power##mainopts PSS-2: power}。

{phang}
{opth k1(numlist)} 指定对照组中的集群数量。

{phang}
{opth k2(numlist)} 指定实验组中的集群数量。

{phang}
{opth kratio(numlist)} 指定实验组与对照组的集群数量比，{cmd:K2/K1}。默认为 {cmd:kratio(1)}，表示两个组中的集群数量相等。

{phang}
{opth m1(numlist)} 指定对照组的集群大小。
{cmd:m1()} 可能包含非整数值。

{phang}
{opth m2(numlist)} 指定实验组的集群大小。
{cmd:m2()} 可能包含非整数值。

{phang}
{opth mratio(numlist)} 指定实验组与对照组的集群大小比，{cmd:M2/M1}。默认为 {cmd:mratio(1)}，表示两个组中的集群大小相等。

{phang}
{cmd:n1()}、{cmd:n2()}、{cmd:nratio()};
{manhelp power##mainopts PSS-2: power}。

{phang}
{cmd:nfractional}; 参见 {manhelp power##mainopts PSS-2: power}。
{cmd:nfractional} 选项显示集群、集群大小和样本大小的分数值（不四舍五入）。

{phang}
{opt hratio()}、{opt lnhratio()}; 参见
{manhelp power_logrank PSS-2:power logrank}。

{phang}
{opth rho(numlist)} 指定班内相关性。默认为 {cmd:rho(0.5)}。

{phang}
{opth cvcluster(numlist)} 指定集群大小的变异系数。此选项与变化的集群大小一起使用。

{phang}
{cmd:direction()}、{cmd:onesided}、{cmd:parallel}; 参见 
{manhelp power##mainopts PSS-2: power}。
{cmd:direction(lower)} 是默认设置。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另请参见 {mansection PSS-2 powerlogrank,clusterSyntaxcolumn:column} 表，以了解图形中使用的符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定风险比的初始值。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项适用于 {cmd:power logrank, cluster}，但未显示在对话框中：

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注: 使用 power logrank, cluster}

{pstd}
{cmd:power} {cmd:logrank,} {cmd:cluster} 请求为 CRD 执行 {cmd:power} {cmd:logrank} 命令的计算。在 CRD 中，受试者或集群的组被随机分配，而不是个别受试者，因此样本大小由集群的数量和集群大小决定。因此，样本大小的确定包括在给定集群大小的情况下确定集群数量，或者在给定集群数量的情况下确定集群大小。有关使用 {cmd:power} {cmd:logrank} 的一般讨论，请参见 {manhelp power_logrank PSS-2:power logrank}。以下讨论专门针对 CRD。

{pstd}
如果您指定了 {cmd:cluster} 选项，包含 {cmd:k1()} 或 {cmd:k2()} 来指定集群数量，或包含 {cmd:m1()} 或 {cmd:m2()} 来指定集群大小，{helpb power logrank} 命令将为 CRD 中的 log-rank 检验执行计算。CRD 的计算基于 Freedman 方法；有关详细信息，请参见 {mansection PSS-2 powerlogrankRemarksandexamplesIntroduction:{it:Introduction}} 在 {bf:[PSS-2] power logrank} 中。

{pstd}
所有计算均基于双侧假设检验，默认显著性水平设定为 0.05。您可以通过指定 {cmd:alpha()} 选项更改显著性水平。您可以指定 {cmd:onesided} 选项请求单侧检验。默认情况下，所有计算假设为平衡或均等分配设计，这意味着两个组中的集群数量和集群大小相等；有关如何指定不均衡设计的描述，请参见 {manlink PSS-4 Unbalanced designs}。

{pstd}
要计算两个组中的集群数量，您必须为两个组提供集群大小。提供集群大小的方式有多种，但最常见的是在 {cmd:m1()} 选项中指定对照组的集群大小，在 {cmd:m2()} 选项中指定实验组的集群大小。请参见 {help power_logrank_cluster##mspec:{it:mspec}} 和 {help power_logrank_cluster##nspec:{it:nspec}} 来查看其他规格。如果指定了 {it:nspec}，还需要 {cmd:cluster} 选项请求 {cmd:power} {cmd:logrank} 为 CRD 执行计算。假设两个组的集群数量相等，但您可以通过在 {cmd:kratio()} 选项中指定实验组与对照组的集群数量比来更改此设定。其他参数按 {mansection PSS-2 powerlogrankRemarksandexamplesUsingpowerlogrank:{it:Using power logrank}} 指定，在 {bf:[PSS-2] power logrank} 中。

{pstd}
要计算两个组中的集群大小，您必须提供两个组的集群数量。提供集群数量的方式有几种；请参见 {help power_logrank_cluster##kspec:{it:kspec}} 在 {help power_logrank_cluster##syntax:{it:语法}} 中。最常见的是在 {cmd:k1()} 和 {cmd:k2()} 选项中分别指定对照组和实验组的集群数量。假设两个组中的集群大小相等，但您可以通过在 {cmd:mratio()} 选项中指定实验组与对照组的集群大小比来更改此设定。其他参数按 {mansection PSS-2 powerlogrankRemarksandexamplesUsingpowerlogrank:{it:Using power logrank}} 指定，在 {bf:[PSS-2] power logrank} 中。

{pstd}
功效和效应大小的确定与 {mansection PSS-2 powerlogrankRemarksandexamplesUsingpowerlogrank:{it:Using power logrank}} 中描述的一样，但样本大小信息以集群数 {help power_logrank_cluster##kspec:{it:kspec}} 和使用 {help power_logrank_cluster##mspec:{it:mspec}} 的集群大小提供，或者，使用 {help power_logrank_cluster##nspec:{it:nspec}} 的样本大小较少见。

{pstd}
所有计算均假定班内相关性为 0.5。您可以通过指定 {cmd:rho()} 选项更改此设定。此外，假定所有集群大小相等，除非在 {cmd:cvcluster()} 选项中指定了集群大小的变异系数。

{pstd}
默认情况下，计算得出的集群数量、集群大小和样本大小被四舍五入。但是，您可以指定 {cmd:nfractional} 选项查看相应的分数值；有关示例，请参见 {mansection PSS-4 Unbalanced designs Remarks and examples Fractional sample sizes:{it:Fractional sample sizes}} 在 {bf:[PSS-4] Unbalanced designs} 中。如果在计算集群大小时指定了 {cmd:cvcluster()} 选项，则集群大小代表平均集群大小，因此不会进行四舍五入。当使用 {help power_logrank_cluster##nspec:{it:nspec}} 指定样本大小时，可能会报告分数集群大小以适配所指定的集群数量和样本大小。

{pstd}
某些 {cmd:power} {cmd:logrank,} {cmd:cluster} 的计算需要迭代；有关详细信息，请参见 {mansection PSS-2 powerlogrank,clusterMethodsandformulas:{it:Methods and formulas}} 和 {manhelp power PSS-2} 以获取对控制迭代的选项的描述。


{marker examples}{...}
{title:示例}

    {title:示例: 计算集群数量}

{pstd}
计算所需的集群数量，以检测风险比为 0.7 的无删失设计，假设两个组的集群大小均为 5；假设双侧检验，显著性水平为 5%，功效为 80%，班内相关性为 0.5，并假设两个组将有相同的集群数量（默认值）{p_end}

{phang2}{cmd:. power logrank, m1(5) m2(5) hratio(0.7)}

{pstd}
与上述相同，除了使用班内相关性为 0.2{p_end}

{phang2}{cmd:. power logrank, m1(5) m2(5) hratio(0.7) rho(0.2)}

{pstd}
与上述相同，除了集群大小的变异系数为 0.6{p_end}

{phang2}{cmd:. power logrank, m1(5) m2(5) hratio(0.7) rho(0.2) cvcluster(0.6)}

{pstd}
与第一个示例相同，但集群数量比为 2 {p_end}

{phang2}{cmd:. power logrank, m1(5) m2(5) hratio(0.7) kratio(2)}

{pstd}
指定一组班内相关性并绘制结果{p_end}

{phang2}{cmd:. power logrank, m1(5) m2(5) hratio(0.7) rho(0.1(0.1)0.5) graph}


    {title:示例: 计算集群大小}

{pstd}
计算集群大小，以测试风险比是否等于 1，假设对照组和实验组的生存概率为 0.3 和 0.5，为删失设计，假设两个组都有 60 个集群；假设双侧检验，显著性水平为 5%，功效为 80%，班内相关性为 0.5，并假设两个组将有相同的集群大小（默认值）{p_end}

{phang2}{cmd:. power logrank 0.3 0.5, k1(60) k2(60)}

{pstd}
与第一个示例相同，使用单侧检验，显著性水平为 1%{p_end}

{phang2}{cmd:. power logrank 0.3 0.5, k1(60) k2(60) alpha(0.01) onesided}


    {title:示例: 计算功效}
    
{pstd}
计算双侧检验的功效，针对 30 个集群，两个组的集群大小为 5，默认显著性水平为 5%，其中实验组的生存概率为 0.5，对照组的生存概率为 0.3；使用默认值 0.5 作为班内相关性{p_end}

{phang2}{cmd:. power logrank 0.3 0.5, k1(30) k2(30) m1(5) m2(5)}

{pstd}
计算实验组中一系列集群数量的功效，并绘制结果{p_end}

{phang2}{cmd:. power logrank 0.3 0.5, k1(30) k2(10(10)60) m1(5) m2(5) graph}


    {title:示例: 计算最小可检测风险比}

{pstd}
计算小于 1 的最大风险比，该风险比可以通过双侧检验检测，假设两个组各有 60 个集群，集群大小为 5；假设功效为 80%，显著性水平为 5%，班内相关性为 0.5（默认值）

{phang2}{cmd:. power logrank, k1(60) k2(60) m1(5) m2(5) power(0.8)}

{pstd}
计算大于 1 的最小风险比，该风险比可以被检测到{p_end}

{phang2}{cmd:. power logrank, k1(60) k2(60) m1(5) m2(5) power(0.8) direction(upper)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:power} {cmd:logrank,} {cmd:cluster} 将以下结果存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(alpha)}}显著性水平{p_end}
{synopt:{cmd:r(power)}}功效{p_end}
{synopt:{cmd:r(beta)}}第二类误差的概率{p_end}
{synopt:{cmd:r(delta)}}效应大小{p_end}
{synopt:{cmd:r(K1)}}对照组的集群数量{p_end}
{synopt:{cmd:r(K2)}}实验组的集群数量{p_end}
{synopt:{cmd:r(kratio)}}集群数量比，{cmd:K2/K1}{p_end}
{synopt:{cmd:r(M1)}}对照组的集群大小{p_end}
{synopt:{cmd:r(M2)}}实验组的集群大小{p_end}
{synopt:{cmd:r(mratio)}}集群大小比，{cmd:M2/M1}{p_end}
{synopt:{cmd:r(N)}}总样本大小{p_end}
{synopt:{cmd:r(N1)}}对照组的样本大小{p_end}
{synopt:{cmd:r(N2)}}实验组的样本大小{p_end}
{synopt:{cmd:r(nratio)}}样本大小比，{cmd:N2/N1}{p_end}
{synopt:{cmd:r(nfractional)}}{cmd:1} 如果指定了 {cmd:nfractional}，否则为 {cmd:0}{p_end}
{synopt:{cmd:r(onesided)}}{cmd:1} 表示为单侧检验，{cmd:0} 表示否{p_end}
{synopt:{cmd:r(E)}}事件总数（失败）{p_end}
{synopt:{cmd:r(hratio)}}风险比{p_end}
{synopt:{cmd:r(lnhratio)}}对数风险比{p_end}
{synopt:{cmd:r(s1)}}对照组的生存概率（如果指定）{p_end}
{synopt:{cmd:r(s2)}}实验组的生存概率（如果指定）{p_end}
{synopt:{cmd:r(Pr_E)}}事件（失败）的概率{p_end}
{synopt:{cmd:r(rho)}}班内相关性{p_end}
{synopt:{cmd:r(CV_cluster)}}集群大小的变异系数{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd:r(init)}}估计参数的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:logrank}{p_end}
{synopt:{cmd:r(design)}}{cmd:CRD}{p_end}
{synopt:{cmd:r(test)}}{cmd:Freedman}{p_end}
{synopt:{cmd:r(direction)}}{cmd:lower} 或 {cmd:upper}{p_end}
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(pss_table)}}结果表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_logrank_cluster.sthlp>}