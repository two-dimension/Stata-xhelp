{smcl}
{* *! version 1.2.14  19sep2018}{...}
{viewerdialog "sts list" "dialog sts_list"}{...}
{vieweralsosee "[ST] sts list" "mansection ST stslist"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] sts" "help sts_zh"}{...}
{vieweralsosee "[ST] sts generate" "help sts_generate_zh"}{...}
{vieweralsosee "[ST] sts graph" "help sts_graph_zh"}{...}
{vieweralsosee "[ST] sts test" "help sts_test_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{viewerjumpto "语法" "sts_list_zh##syntax"}{...}
{viewerjumpto "菜单" "sts_list_zh##menu"}{...}
{viewerjumpto "描述" "sts_list_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "sts_list_zh##linkspdf"}{...}
{viewerjumpto "选项" "sts_list_zh##options"}{...}
{viewerjumpto "示例" "sts_list_zh##examples"}{...}
{viewerjumpto "视频示例" "sts_list_zh##video"}
{help sts_list:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[ST] sts list} {hline 2}}列出生存或累积风险函数{p_end}
{p2col:}({mansection ST stslist:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 21 2}{cmd:sts} {opt l:ist} {ifin} [{cmd:,} {it:options}]

{synoptset 29 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主}
{synopt :{opt sur:vival}}报告 Kaplan-Meier 生存函数；默认选项
{p_end}
{synopt :{opt f:ailure}}报告 Kaplan-Meier 失败函数{p_end}
{synopt :{opt cumh:az}}报告 Nelson-Aalen 累积风险函数{p_end}
{synopt :{opth by(varlist)}}为 {it:varlist} 形成的每个组估计单独的函数{p_end}
{synopt :{opth ad:justfor(varlist)}}调整估计值为 {it:varlist} 的零值{p_end}
{synopt :{opth st:rata(varlist)}}在 {it:varlist} 的不同组上分层{p_end}

{syntab:选项}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{cmd:at(}{it:#}|{it:{help numlist_zh}}{cmd:)}}在指定时间报告估计的生存/累积风险函数；默认是报告所有唯一时间值{p_end}
{synopt :{opt e:nter}}报告失踪人数作为纯被审查人数，而非被审查人数减失踪人数{p_end}
{synopt :{opt nosh:ow}}不显示 st 设置信息{p_end}
{synopt :{opt c:ompare}}并排报告生存/累积风险函数组{p_end}
{synopt :{cmdab:sav:ing:(}{it:{help filename_zh}}[{cmd:,} {cmd:replace}]{cmd:)}}将结果保存到 {it:filename}；使用 {opt replace} 重写现有 {it:filename}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用 {cmd:sts list} 之前，您必须先 {cmd:stset} 您的数据；请参阅 {manhelp stset ST}.{p_end}
{p 4 6 2}
可以使用 {cmd:stset} 指定 {opt fweight}s, {opt iweight}s 和 {opt pweight}s；请参阅 {manhelp stset ST}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 概要统计、检验和表格 >}
      {bf:列出生存和累积风险函数}


{marker description}{...}
{title:描述}

{pstd}
{cmd:sts list} 列出估计的生存（失败）或 Nelson-Aalen 估计的累积（积分）风险函数。有关此命令的介绍，请参见 {manhelp sts ST}。

{pstd}
{cmd:sts list} 可用于单记录或多记录，或单失败或多失败的 st 数据。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST stslistQuickstart:快速入门}

        {mansection ST stslistRemarksandexamples:备注和示例}

        {mansection ST stslistMethodsandformulas:方法和公式}

{pstd}
上述各节未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{opt survival}, {opt failure}, 和 {opt cumhaz} 指定报告的函数。

{phang2}
{opt survival} 指定列出 Kaplan-Meier 生存函数。
如果未指定函数，则此选项为默认选项。

{phang2}
{opt failure} 指定列出 Kaplan-Meier 失败函数 1 - S(t+0)。

{phang2}
{opt cumhaz} 指定列出 Nelson-Aalen 的累积风险函数的估计值。

{phang}
{opth by(varlist)} 为每个 by 组估计单独的函数。 by 组通过 {it:varlist} 中变量的相等值来识别。 {opt by()} 不能与 {opt strata()} 结合使用。

{phang}
{opth adjustfor(varlist)} 将生存（失败）函数的估计调整为 {it:varlist} 的零值。此选项不适用于 Nelson-Aalen 函数。有关如何调整非零值的示例，请参见 {manhelp sts_graph ST:sts graph}。

{pmore}
如果您在 {opt by()} 中指定 {opt adjustfor()}，则 {cmd:sts} 会针对每个组拟合单独的 Cox 回归模型，使用 {opt adjustfor()} 变量作为协变量。然后检索分别计算的基线生存函数。

{pmore}
如果您在 {opt strata()} 中指定 {opt adjustfor()}，则 {cmd:sts} 会拟合分层按组的 Cox 回归模型，使用 {opt adjustfor()} 变量作为协变量。然后检索分层的基线生存函数。

{phang}
{opth strata(varlist)} 请求按 {it:varlist} 中的变量分层的生存（失败）函数的估计。它要求指定 {opt adjustfor()}，并且不能与 {opt by()} 结合使用。

{dlgtab:选项}

{phang}
{opt level(#)} 指定置信水平（以百分比表示），用于生存（失败）函数的 Greenwood 点置信区间或用于 Nelson-Aalen 累积风险函数的点置信区间；请参见 {manhelp level R}。

{phang}
{cmd:at(}{it:#}|{it:{help numlist_zh}}{cmd:)} 指定在何时列出估计的生存（失败）或累积风险函数。

{pmore}
默认情况下，在数据中列出所有唯一时间值的函数，或者如果比较函数，则在观察到的区间内选择约 10 次。在任何情况下，您都可以控制所选择的点。

{pmore}
{cmd:at(5 10 20 30 50 90)} 将在指定的时间列出函数。

{pmore}
{cmd:at(10 20 to 100)} 将在时间 10、20、30、40,... 100 列出函数。

{pmore}
{cmd:at(0 5 10 to 100 200)} 将在时间 0、5、10、15,... 100 和 200 列出函数。

{pmore}
{cmd:at(20)} 将在数据观察到的区间内（大约）20 个等间距的时间上显示曲线。我们说大约是因为如果这会导致所选择时间的值更整齐，Stata 可能会稍微增加或减少您的数字。

{phang}
{opt enter} 指定表格包含进入人数，并且相应地，将失踪人数显示为纯被审查人数，而非被审查人数减进入人数。这一逻辑在 {manlink ST sts} 中有解释。

{phang}
{opt noshow} 阻止 {cmd:sts list} 显示关键的 st 变量。此选项不常用，因为大多数人会输入 {cmd:stset, show} 或 {cmd:stset, noshow} 来设置是否希望在每个 st 命令的输出顶部提及这些变量；请参见 {manhelp stset ST}。

{phang}
{opt compare} 仅在 {opt by()} 或 {opt strata()} 中指定。它比较生存（失败）或累积风险函数，并将它们并排列出，而不是依次列出。

{phang}
{cmd:saving(}{it:{help filename_zh}}[{cmd:,} {cmd:replace}]{cmd:)} 将结果保存到 Stata 数据文件（{opt .dta} 文件）。

{pmore}
{cmd:replace} 指定如果 {it:filename} 存在，则重写它。 


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse stan3}

{pstd}抑制显示 st 设置{p_end}
{phang2}{cmd:. stset, noshow}

{pstd}列出生存函数{p_end}
{phang2}{cmd:. sts list}

{pstd}列出 {cmd:posttran} 的两个类别的生存函数{p_end}
{phang2}{cmd:. sts list, by(posttran)}

{pstd}与上面相同，但在指定时间列出{p_end}
{phang2}{cmd:. sts list, at(10 40 to 160) by(posttran)}

{pstd}列出 {cmd:posttran} 的两个类别在指定时间的累积风险函数{p_end}
{phang2}{cmd:. sts list, cumhaz at(10 40 to 160) by(posttran)}

{pstd}并排列出 {cmd:posttran} 的两个类别的生存函数，使用指定的比较时间{p_end}
{phang2}{cmd:. sts list, at(10 40 to 160) by(posttran) compare}

{pstd}并排列出 {cmd:posttran} 的两个类别的累积风险函数，使用指定的比较时间{p_end}
{phang2}{cmd:. sts list, cumhaz at(10 40 to 160) by(posttran) compare}{p_end}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=9XZR32zElZ8&list=UUVk4G4nEtBS4tLOyHqustDA":如何计算 Kaplan-Meier 生存函数和 Nelson-Aalen 累积风险函数}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sts_list.sthlp>}