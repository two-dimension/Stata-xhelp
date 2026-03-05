{smcl}
{* *! version 1.1.13  19sep2018}{...}
{viewerdialog "sts test" "dialog sts_test"}{...}
{vieweralsosee "[ST] sts test" "mansection ST ststest"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stcox" "help stcox_zh"}{...}
{vieweralsosee "[ST] sts" "help sts_zh"}{...}
{vieweralsosee "[ST] sts generate" "help sts_generate_zh"}{...}
{vieweralsosee "[ST] sts graph" "help sts_graph_zh"}{...}
{vieweralsosee "[ST] sts list" "help sts_list_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power exponential" "help power exponential"}{...}
{vieweralsosee "[PSS-2] power logrank" "help power logrank"}{...}
{viewerjumpto "Syntax" "sts_test_zh##syntax"}{...}
{viewerjumpto "Menu" "sts_test_zh##menu"}{...}
{viewerjumpto "Description" "sts_test_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sts_test_zh##linkspdf"}{...}
{viewerjumpto "Options" "sts_test_zh##options"}{...}
{viewerjumpto "Examples" "sts_test_zh##examples"}{...}
{viewerjumpto "Video example" "sts_test_zh##video"}{...}
{viewerjumpto "Stored results" "sts_test_zh##results"}
{help sts_test:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[ST] sts test} {hline 2}}检验生存函数的相等性{p_end}
{p2col:}({mansection ST ststest:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 21 2}
{cmd:sts} {opt t:est} {varlist} {ifin} [{cmd:,} {it:选项}]

{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{synopt :{opt l:ogrank}}执行对数秩检验；默认{p_end}
{synopt :{opt c:ox}}执行Cox检验{p_end}
{synopt :{opt w:ilcoxon}}执行Wilcoxon-Breslow-Gehan检验{p_end}
{synopt :{opt tw:are}}执行Tarone-Ware检验{p_end}
{synopt :{opt p:eto}}执行Peto-Peto-Prentice检验{p_end}
{synopt :{opt f:h(p q)}}执行广义Fleming-Harrington检验{p_end}
{synopt :{opt tr:end}}检验生存函数在三个或更多有序组中的趋势{p_end}
{synopt :{opth st:rata(varlist)}}对{it:varlist}执行分层检验，并显示整体检验结果{p_end}
{synopt :{opt d:etail}}显示各个检验结果；修改{opt strata()}{p_end}

{syntab:选项}
{synopt :{opt mat(mname_1 mname_2)}}将向量{cmd:u}存储在{it:mname_1}中，并将矩阵{cmd:V}存储在{it:mname_2}中{p_end}
{synopt :{opt nosh:ow}}不显示st设置信息{p_end}
{synopt :{opt not:itle}}抑制标题{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用{cmd:sts test}之前，您必须{cmd:stset}您的数据；见{manhelp stset ST}.{p_end}
{p 4 6 2}
注意，{opt fweight}s，{opt iweight}s和{opt pweight}s可以使用{cmd:stset}指定；见{manhelp stset ST}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 摘要统计、检验和表格 >}
        {bf:检验生存函数的相等性}


{marker description}{...}
{title:描述}

{pstd}
{cmd:sts test}测试两个或多个组中生存函数的相等性。 提供对数秩检验、Cox检验、Wilcoxon-Breslow-Gehan检验、Tarone-Ware检验、Peto-Peto-Prentice检验和Fleming-Harrington检验，支持分层和非分层形式。

{pstd}
{cmd:sts test}也提供了对趋势的检验。

{pstd}
{cmd:sts test}可以与单记录或多记录，单个故障或多个故障的生存（st）数据一起使用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ST ststestQuickstart:快速开始}

        {mansection ST ststestRemarksandexamples:备注和示例}

        {mansection ST ststestMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt logrank}，{opt cox}，{opt wilcoxon}，{opt tware}，{opt peto}， 
和{opt fh(p q)}指定所需的相等性检验。默认情况下使用{opt logrank}，除非数据是加权的，在这种情况下默认使用{opt cox}且为唯一选择。

{pmore}
{cmd:wilcoxon}指定Wilcoxon-Breslow-Gehan检验；{cmd:tware}为Tarone-Ware检验；{cmd:peto}为Peto-Peto-Prentice检验；{cmd:fh()}为广义Fleming-Harrington检验。Fleming-Harrington检验需要两个参数，{it:p}和{it:q}。当{it:p} = 0且{it:q} = 0时，Fleming-Harrington检验可以简化为对数秩检验；当{it:p} = 1且{it:q} = 0时，该检验简化为Mann-Whitney-Wilcoxon检验。

{phang}
{opt trend}指定 across 三个或更多有序组的生存函数趋势检验。

{phang}
{opth strata(varlist)}请求执行分层检验。

{phang}
{opt detail}修改{opt strata()}; 它请求报告整体分层检验的同时也报告各个分层的检验。{opt detail}不能与{opt cox}一起使用。

{dlgtab:选项}

{phang}
{opt mat(matname_1 matname_2)}请求将向量{cmd:u}存储在{opt mname_1}中，并将矩阵{cmd:V}存储在{it:mname_2}中。其他检验为形式为u'V^(-1)u的秩检验。该选项不能与{opt cox}一起使用。

{phang}
{opt noshow}阻止{cmd:sts test}显示关键信息。此选项很少使用，因为大多数人输入{cmd:stset, show}或{cmd:stset, noshow}来设置是否希望在每个st命令的输出顶部看到这些变量；见{manhelp stset ST}。

{phang}
{opt notitle}请求抑制打印在检验上方的标题。


{marker examples}{...}
{title:对数秩检验示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse stan3}

{pstd}对数秩检验{p_end}
{phang2}{cmd:. sts test posttran}

{pstd}创建反映不同接受期的变量{p_end}
{phang2}{cmd:. generate group = 1 if year <= 69}{p_end}
{phang2}{cmd:. replace group = 2 if year >= 70 & year <= 72}{p_end}
{phang2}{cmd:. replace group = 3 if year >= 73}

{pstd}分层对数秩检验{p_end}
{phang2}{cmd:. sts test posttran, strata(group)}

{pstd}分层对数秩检验，显示各分层检验{p_end}
{phang2}{cmd:. sts test posttran, strata(group) detail}


{title:Wilcoxon (Breslow-Gehan) 检验示例}

{pstd}Wilcoxon检验{p_end}
{phang2}{cmd:. sts test posttran, wilcoxon}

{pstd}分层Wilcoxon检验{p_end}
{phang2}{cmd:. sts test posttran, wilcoxon strata(group)}

{pstd}分层Wilcoxon检验，显示各分层检验{p_end}
{phang2}{cmd:. sts test posttran, wilcoxon strata(group) detail}


{title:Tarone-Ware 检验示例}

{pstd}Tarone-Ware检验{p_end}
{phang2}{cmd:. sts test posttran, tware}

{pstd}分层Tarone-Ware检验{p_end}
{phang2}{cmd:. sts test posttran, tware strata(group)}

{pstd}分层Tarone-Ware检验，显示各分层检验{p_end}
{phang2}{cmd:. sts test posttran, tware strata(group) detail}


{title:Peto-Peto-Prentice 检验示例}

{pstd}Peto-Peto-Prentice检验{p_end}
{phang2}{cmd:. sts test posttran, peto}

{pstd}分层Peto-Peto-Prentice检验{p_end}
{phang2}{cmd:. sts test posttran, peto strata(group)}

{pstd}分层Peto-Peto-Prentice检验，显示各分层检验{p_end}
{phang2}{cmd:. sts test posttran, peto strata(group) detail}


{title:广义Fleming-Harrington检验示例}

{pstd}在所有故障时间权重为1的广义Fleming-Harrington检验{p_end}
{phang2}{cmd:. sts test posttran, fh(0 0)}

{pstd}给予较晚故障更多权重的广义Fleming-Harrington检验{p_end}
{phang2}{cmd:. sts test posttran, fh(0 3)}

{pstd}给予较早故障更多权重的广义Fleming-Harrington检验{p_end}
{phang2}{cmd:. sts test posttran, fh(2 0)}

{pstd}对于较晚故障给予更多权重的分层广义Fleming-Harrington检验{p_end}
{phang2}{cmd:. sts test posttran, fh(0 3) strata(group)}

{pstd}与上述相同，但显示各分层检验{p_end}
{phang2}{cmd:. sts test posttran, fh(0 3) strata(group) detail}


{title:趋势检验示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse marubini, clear}

{pstd}列出一些数据{p_end}
{phang2}{cmd:. list in 1/9}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset time, fail(event) noshow}

{pstd}使用暴露变量{cmd:group}的对数秩检验{p_end}
{phang2}{cmd:. sts test group}

{pstd}使用暴露变量{cmd:dose}的对数秩检验{p_end}
{phang2}{cmd:. sts test dose}

{pstd}使用与对数秩检验相同权重的趋势检验，并使用暴露变量{cmd:group}{p_end}
{phang2}{cmd:. sts test group, trend}

{pstd}使用与对数秩检验相同权重的趋势检验，并使用暴露变量{cmd:dose}{p_end}
{phang2}{cmd:. sts test dose, trend}

{pstd}使用与Peto-Peto-Prentice检验相同权重的趋势检验，并使用暴露变量{cmd:dose}{p_end}
{phang2}{cmd:. sts test dose, peto trend}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=W1uympJV7Ko&list=UUVk4G4nEtBS4tLOyHqustDA":如何使用非参数检验测试生存函数的相等性}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:sts test}将以下内容存储在{cmd:r()}中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}
{synopt:{cmd:r(df_tr)}}自由度，趋势检验{p_end}
{synopt:{cmd:r(chi2)}}卡方{p_end}
{synopt:{cmd:r(chi2_tr)}}卡方，趋势检验{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sts_test.sthlp>}