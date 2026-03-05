{smcl}
{* *! version 1.0.14  27feb2019}{...}
{viewerdialog power "dialog power_twocorr"}{...}
{vieweralsosee "[PSS-2] power twocorrelations" "mansection PSS-2 powertwocorrelations"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] mvtest" "help mvtest_zh"}{...}
{vieweralsosee "[R] correlate" "help correlate_zh"}{...}
{viewerjumpto "语法" "power_twocorrelations_zh##syntax"}{...}
{viewerjumpto "菜单" "power_twocorrelations_zh##menu"}{...}
{viewerjumpto "描述" "power_twocorrelations_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "power_twocorrelations_zh##linkspdf"}{...}
{viewerjumpto "选项" "power_twocorrelations_zh##options"}{...}
{viewerjumpto "备注: 使用 power twocorrelations" "power_twocorrelations_zh##remarks"}{...}
{viewerjumpto "示例" "power_twocorrelations_zh##examples"}{...}
{viewerjumpto "存储结果" "power_twocorrelations_zh##stored_results"}
{help power_twocorrelations:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[PSS-2] power twocorrelations} {hline 2}}两样本相关性检验的功效分析{p_end}
{p2col:}({mansection PSS-2 powertwocorrelations:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本大小

{p 8 43 2}
{opt power} {opt twocorr:elations} {it:r1} {it:r2}
[{cmd:,} {opth p:ower(numlist)} 
{it:{help power_twocorrelations##synoptions:options}}]


{phang}
计算功效 

{p 8 43 2}
{opt power} {opt twocorr:elations} {it:r1} {it:r2}{cmd:,} 
{opth n(numlist)} [{it:{help power_twocorrelations##synoptions:options}}]


{phang}
计算效应大小和实验组相关性

{p 8 43 2}
{opt power} {opt twocorr:elations} {it:r1}{cmd:,}  {opth n(numlist)} 
{opth p:ower(numlist)} [{it:{help power_twocorrelations##synoptions:options}}]


{phang}
其中 {it:r1} 为对照（参考）组的相关性，{it:r2} 为实验（比较）组的相关性。
{it:r1} 和 {it:r2} 可以指定为一个数字或括号中的值列表（见 {it:{help numlist_zh}}）。{p_end}


{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
INCLUDE help pss_twotestmainopts1.ihlp
{synopt: {opt nfrac:tional}}允许分数样本大小{p_end}
{p2coldent:* {opth diff(numlist)}}实验组与对照组相关性之间的差异，{it:r2}-{it:r1}; 用于指定实验组相关性 {it:r2}{p_end}
INCLUDE help pss_testmainopts3.ihlp

{syntab:表格}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_twocorrelations##tablespec:tablespec}}{cmd:)}]}抑制表格或将结果显示为表格；参见
{manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到 {it:filename}; 使用 {cmd:replace} 以覆盖现有的 {it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}样本大小或实验组相关性的初始值{p_end}
INCLUDE help pss_iteropts.ihlp

INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:notitle} 不会出现在对话框中。{p_end}

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 为

{p 16 16 2}
{it:{help power_twocorrelations##column:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:tableopts}}]

{pstd}
{it:column} 是下面定义的列之一，
{it:label} 是列标签（可以包含引号和复合引号）。

{synoptset 28}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}第二类错误概率{p_end}
{synopt :{opt N}}总受试者数{p_end}
{synopt :{opt N1}}对照组的受试者数量{p_end}
{synopt :{opt N2}}实验组的受试者数量{p_end}
{synopt :{opt nratio}}样本大小比率，实验组与对照组{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt r1}}对照组相关性{p_end}
{synopt :{opt r2}}实验组相关性{p_end}
{synopt :{opt diff}}实验组相关性与对照组相关性的差异{p_end}
{synopt :{opt target}}目标参数；与 {cmd:r2} 的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定，列 {cmd:beta} 会在默认表中替代列 {cmd:power}。{p_end}
{p 4 6 2}如果指定，列 {cmd:diff} 和 {cmd:nratio} 会在默认表中显示。


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power twocorrelations} 计算两样本相关性检验的样本大小、功效或实验组相关性。默认情况下，它计算给定功效和对照组与实验组相关性的值所需的样本大小。或者，它可以计算给定样本大小和对照组与实验组相关性的值的功效，或者在给定样本大小、功效和对照组相关性的情况下计算实验组相关性。另请参见 {manhelp power PSS-2}，以获得关于 {cmd:power} 命令的通用介绍及其使用假设检验的方法。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection PSS-2 powertwocorrelationsQuickstart:快速开始}

        {mansection PSS-2 powertwocorrelationsRemarksandexamples:备注和示例}

        {mansection PSS-2 powertwocorrelationsMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:alpha()}, {cmd:power()}, {cmd:beta()}, {cmd:n()}, {cmd:n1()},
{cmd:n2()}, {cmd:nratio()}, {cmd:compute()}, {cmd:nfractional};
参见 {manhelp power##mainopts PSS-2:power}。

{phang}
{opt diff(numlist)} 指定实验组相关性与对照组相关性之间的差异，{it:r2} - {it:r1}。可以在命令参数中指定实验组相关性 {it:r2} 或两者之间的差异 {cmd:diff()}。如果指定 {opt diff(#)}，实验组相关性计算为 {it:r2} = {it:r1} + {it:#}。此选项在效应大小确定时不允许使用。

{phang}
{cmd:direction()}, {cmd:onesided}, {cmd:parallel}; 参见 
{manhelp power##mainopts PSS-2:power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另请参见 {mansection PSS-2 powertwocorrelationsSyntaxcolumn:column} 表以查看图形使用的符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定估计参数的初始值。对于样本大小确定，估计参数为对照组大小 n1，或者如果指定了 {cmd:compute(N2)}，则为实验组大小 n2。对于效应大小确定，估计参数为实验组相关性 {it:r2}。双侧检验的默认初始值作为相应单侧检验的封闭形式解获得，显著性水平为 alpha/2。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项在 {cmd:power twocorrelations} 中可用，但不会在对话框中显示：

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注: 使用 power twocorrelations}

{pstd}
{cmd:power twocorrelations} 计算两样本相关性检验的样本大小、功效或实验组相关性。所有计算均针对双侧假设检验进行，默认显著性水平设置为 0.05。您可以通过指定 {cmd:alpha()} 选项更改显著性水平。可以指定 {cmd:onesided} 选项请求单侧检验。默认情况下，所有计算均假定为平衡或均衡分配设计；有关如何指定不平衡设计的描述，请参见
{manlink PSS-4 不平衡设计}。

{pstd}
要计算总样本大小，您必须指定对照组与实验组的相关性，即 {it:r1} 和 {it:r2}，并可以选择在 {cmd:power()} 选项中指定测试的功效。默认功效设置为 0.8。

{pstd}
您可以在给定另一个组样本大小的情况下，计算其中一个组的样本大小。要计算对照组样本大小，必须在 {cmd:compute(N1)} 选项中指定，实验组的样本大小在 {cmd:n2()} 选项中指定。同样，要计算实验组样本大小，必须在 {cmd:compute(N2)} 选项中指定，对照组的样本大小在 {cmd:n1()} 选项中指定。

{pstd}
要计算功效，您必须在 {cmd:n()} 选项中指定总样本大小，以及对照组与实验组的相关性，即 {it:r1} 和 {it:r2}。

{pstd}
在计算样本大小或功效时，您可以在 {cmd:diff()} 选项中指定实验组相关性与对照组相关性之间的差异 {it:r2} - {it:r1}。

{pstd}
要计算效应大小、实验组和对照组相关性之间的差异，以及实验组相关性，您必须在 {cmd:n()} 选项中指定总样本大小，在 {cmd:power()} 选项中指定功效，指定对照组相关性 {it:r1}，并可以选择指定效应的方向。默认情况下，方向为上（{cmd:direction(upper)}），这意味着假定实验组相关性大于指定的对照组值。您可以通过指定 {cmd:direction(lower)} 选项将方向更改为下，即实验组相关性假定小于指定的对照组值。

{pstd}
在计算功效或效应大小时，除了总样本大小 {cmd:n()}，您还可以在 {cmd:n1()} 和 {cmd:n2()} 中指定各组样本大小，或指定其中一个组样本大小和 {cmd:nratio()}。有关更多细节，请参见在 {bf:[PSS-4] 不平衡设计} 中的 {mansection PSS-4 UnbalanceddesignsRemarksandexamplesTwosamples:{it:两样本}}。


{marker examples}{...}
{title:示例}

    {title:示例: 计算样本大小}

{pstd}
    计算所需的总样本大小，以在对照组相关性为 0 的情况下，以 80% 的功效检验实验组相关性为 0.5；假设显著性水平为 5%，每组观察数量相等（默认为）{p_end}
{phang2}{cmd:. power twocorrelations 0 0.5}

{pstd}
    与上述相同，但实验组将是对照组的两倍大小{p_end}
{phang2}{cmd:. power twocorrelations 0 0.5, nratio(2)}

{pstd}
   与第一个示例相同，但对照组有 60 个观察{p_end}
{phang2}{cmd:. power twocorrelations 0 0.5, n1(60) compute(N2)}

{pstd}
   与第一个示例相同，使用单侧检验和 10% 的显著性水平{p_end}
{phang2}{cmd:. power twocorrelations 0 0.5, alpha(0.1) onesided}

{pstd}
   与第一个示例相同，使用 {cmd:diff()} 选项来指定对照组与实验组相关性之间的差异{p_end}
{phang2}{cmd:. power twocorrelations 0, diff(0.5)}

{pstd}
    计算一系列实验组相关性和功效所需的总样本大小，并绘制结果{p_end}
{phang2}{cmd:. power twocorrelations 0 (0.1(0.1)0.9), power(0.8 0.9) graph}


    {title:示例: 计算功效}

{pstd}
    假设我们有 50 个受试者的样本，我们想计算在假定对照组相关性为 0.1 的情况下，检测实验组相关性为 0.5 的双侧检验的功效；假设显著性水平为 5%，并且组分配相等（默认为）{p_end}
{phang2}{cmd:. power twocorrelations 0.1 0.5, n(50)}

{pstd}
    与上述相同，指定每组的受试者数量{p_end}
{phang2}{cmd:. power twocorrelations 0.1 0.5, n1(20) n2(30)}

{pstd}
    与上述相同{p_end}
{phang2}{cmd:. power twocorrelations 0.1 0.5, n1(20) nratio(1.5)}

{pstd}
    与上述相同{p_end}
{phang2}{cmd:. power twocorrelations 0.1 0.5, n2(30) nratio(1.5)}

{pstd}
    计算一系列样本大小的功效，并绘制结果{p_end}
{phang2}{cmd:. power twocorrelations 0.1 0.5, n(50(10)100) graph}


    {title:示例: 计算实验组相关性}

{pstd}
    计算能被双侧检验以 80% 功效所检测到的超过对照组相关性 0.3 的最小实验组相关性，总样本为 100 个受试者；假设两个组的观察数量相等，显著性水平为 5%（默认为）{p_end}
{phang2}{cmd:. power twocorrelations 0.3, n(100) power(0.8)}

{pstd}
    与上述相同{p_end}
{phang2}{cmd:. power twocorrelations 0.3, n(100) power(0.8) direction(upper)}

{pstd}
    计算可以被检测到的实验组相关性，且小于对照组相关性 0.3 的最大值{p_end}
{phang2}{cmd:. power twocorrelations 0.3, n(100) power(0.8) direction(lower)}


{marker stored_results}{...}
{title:存储结果}

{pstd}
{cmd:power twocorrelations} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
INCLUDE help pss_rrestwotest_sc.ihlp
{synopt:{cmd: r(r1)}}对照组相关性{p_end}
{synopt:{cmd: r(r2)}}实验组相关性{p_end}
{synopt:{cmd: r(diff)}}实验组与对照组相关性之间的差异{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd: r(init)}}样本大小或实验组相关性的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:twocorrelations}{p_end}
INCLUDE help pss_rrestest_mac.ihlp
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat.ihlp

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_twocorrelations.sthlp>}