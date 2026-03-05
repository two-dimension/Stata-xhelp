{smcl}
{* *! version 1.1.9  20sep2018}{...}
{viewerdialog generate "dialog sts_generate"}{...}
{viewerdialog graph "dialog sts_graph"}{...}
{viewerdialog list "dialog sts_list"}{...}
{viewerdialog test "dialog sts_test"}{...}
{vieweralsosee "[ST] sts" "mansection ST sts"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stci" "help stci_zh"}{...}
{vieweralsosee "[ST] stcox" "help stcox_zh"}{...}
{vieweralsosee "[ST] sts generate" "help sts_generate_zh"}{...}
{vieweralsosee "[ST] sts graph" "help sts_graph_zh"}{...}
{vieweralsosee "[ST] sts list" "help sts_list_zh"}{...}
{vieweralsosee "[ST] sts test" "help sts_test_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{vieweralsosee "[ST] Survival analysis" "help survival_analysis_zh"}{...}
{viewerjumpto "Syntax" "sts_zh##syntax"}{...}
{viewerjumpto "Description" "sts_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sts_zh##linkspdf"}{...}
{viewerjumpto "Examples" "sts_zh##examples"}{...}
{viewerjumpto "Video examples" "sts_zh##video"}{...}
{viewerjumpto "Stored results" "sts_zh##results"}
{help sts:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[ST] sts} {hline 2}}生成、图形、列出和检验生存者和累积危险函数{p_end}
{p2col:}({mansection ST sts:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 21 2}
{cmd:sts} [{opt g:raph}] {ifin} [{cmd:,} ...]

{p 8 21 2}
{cmd:sts} {opt l:ist} {ifin} [{cmd:,} ...]

{p 8 21 2}
{cmd:sts} {opt t:est} {varlist} {ifin} [{cmd:,} ...]

{p 8 21 2}
{cmd:sts} {opt gen:erate} {newvar} {cmd:=} ... {ifin} [{cmd:,} ...]

{pstd}
您必须在使用 {cmd:sts} 之前 {cmd:stset} 您的数据；请参见 {manhelp stset ST}.{p_end}
{pstd}
{opt fweight}s, {opt iweight}s 和 {opt pweight}s 可以使用 {cmd:stset} 指定；请参见 {manhelp stset ST}。

{pstd}
有关语法的详细信息，请参见 {manhelp sts_graph ST:sts graph}、{manhelp sts_list ST:sts list}、{manhelp sts_test ST:sts test} 和 {manhelp sts_generate ST:sts generate}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:sts} 报告并创建包含估计的生存者和相关函数的变量，例如 Nelson-Aalen 累积危险函数。
对于生存者函数，{cmd:sts} 测试并生成 Kaplan-Meier 估计或通过 Cox 回归生成调整后的估计。

{pmore}
{cmd:sts graph} 等同于单独输入 {cmd:sts} -- 它绘制生存者函数。

{pmore}
{cmd:sts list} 列出估计的生存者和相关函数。

{pmore}
{cmd:sts test} 测试不同组之间生存者函数的相等性。

{pmore}
{cmd:sts generate} 创建新变量，包含估计的生存者函数、Nelson-Aalen 累积危险函数或相关函数。

{pmore}
{cmd:sts} 可以与单条或多条记录或单一或多个失败的生存时间数据一起使用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST stsRemarksandexamples:备注和示例}

        {mansection ST stsMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在本帮助文件中。


{marker examples}{...}
{title:示例：列出、绘图和生成变量}

{pstd}设置{p_end}
{phang2}{cmd:. webuse stan3}

{pstd}抑制显示生存时间设定{p_end}
{phang2}{cmd:. stset, noshow}

{pstd}列出生存者函数{p_end}
{phang2}{cmd:. sts list}

{pstd}绘制生存者函数{p_end}
{phang2}{cmd:. sts graph}

{pstd}创建包含生存者函数的变量 {cmd:survf}{p_end}
{phang2}{cmd:. sts gen survf = s}

{pstd}按时间变量排序{p_end}
{phang2}{cmd:. sort t1}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list t1 survf in 1/10}


{title:示例：比较生存者或累积危险函数}

{pstd}绘制两类 {cmd:posttran} 的生存者函数，结果显示在一张图上{p_end}
{phang2}{cmd:. sts graph, by(posttran)}

{pstd}绘制两类 {cmd:posttran} 的 Nelson-Aalen 累积危险函数{p_end}
{phang2}{cmd:. sts graph, cumhaz by(posttran)}

{pstd}列出两类 {cmd:posttran} 的生存者函数，包括进入人数列{p_end}
{phang2}{cmd:. sts list, by(posttran) enter}

{pstd}侧并列出两类 {cmd:posttran} 的生存者函数，选择一部分比较的时间{p_end}
{phang2}{cmd:. sts list, by(posttran) compare}

{pstd}侧并列出两类 {cmd:posttran} 的累积危险函数，选择一部分比较的时间{p_end}
{phang2}{cmd:. sts list, cumhaz by(posttran) compare}

{pstd}侧并列出两类 {cmd:posttran} 的生存者函数，使用指定的比较时间{p_end}
{phang2}{cmd:. sts list, by(posttran) compare at(0 100 to 1700)}


{title:示例：测试生存者函数的相等性}

{pstd}执行对生存者函数相等性的对数检验{p_end}
{phang2}{cmd:. sts test posttran}

{pstd}执行对生存者函数相等性的 Wilcoxon 检验{p_end}
{phang2}{cmd:. sts test posttran, wilcoxon}


{title:示例：调整后的估计}

{pstd}设置{p_end}
{phang2}{cmd:. webuse drug2, clear}

{pstd}抑制显示生存时间设定{p_end}
{phang2}{cmd:. stset, noshow}

{pstd}描述生存时间数据{p_end}
{phang2}{cmd:. stdescribe}

{pstd}显示生存时间设定{p_end}
{phang2}{cmd:. st}

{pstd}总结 {cmd:age} 和 {cmd:drug}{p_end}
{phang2}{cmd:. summarize age drug}

{pstd}绘制两类 {cmd:drug} 的生存者函数{p_end}
{phang2}{cmd:. sts graph, by(drug)}

{pstd}创建包含与50岁年龄差的变量{p_end}
{phang2}{cmd:. generate age50 = age - 50}

{pstd}绘制两类 {cmd:drug} 的生存者函数，调整年龄至50岁{p_end}
{phang2}{cmd:. sts graph, by(drug) adjustfor(age50)}

{pstd}列出 {cmd:sts graph} 刚刚绘制的信息，选择一部分比较时间{p_end}
{phang2}{cmd:. sts list, by(drug) adjustfor(age50) compare}

{pstd}与上面相同，但针对年龄调整，不调整至50岁{p_end}
{phang2}{cmd:. sts list, by(drug) adjustfor(age) compare}

{pstd}与上面相同，但限制 {cmd:age50} 的影响在各层间相同{p_end}
{phang2}{cmd:. sts list, by(drug) adjustfor(age50) compare}


{title:示例：计算因删失而失去的人数}

{pstd}列出生存者函数{p_end}
{phang2}{cmd:. sts list}

{pstd}绘制生存者函数，显示丢失人数的小数字{p_end}
{phang2}{cmd:. sts graph, lost}

{pstd}设置{p_end}
{phang2}{cmd:. webuse stan3, clear}

{pstd}抑制显示生存时间设定{p_end}
{phang2}{cmd:. stset, noshow}

{pstd}列出两类 {cmd:posttran} 的生存者函数，包括进入人数列{p_end}
{phang2}{cmd:. sts list, by(posttran) enter}

{pstd}与上面相同，但不包括进入人数列{p_end}
{phang2}{cmd:. sts list, by(posttran)}

{pstd}列出生存者函数，包括进入人数列{p_end}
{phang2}{cmd:. sts list, enter}

{pstd}列出生存者函数，但不包括进入人数列{p_end}
{phang2}{cmd:. sts list}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=3MoWoZQCrUI&list=UUVk4G4nEtBS4tLOyHqustDA":如何绘制生存曲线}

{phang}
{browse "https://www.youtube.com/watch?v=9XZR32zElZ8&list=UUVk4G4nEtBS4tLOyHqustDA":如何计算 Kaplan-Meier 生存者和 Nelson-Aalen 累积危险函数}

{phang}
{browse "https://www.youtube.com/watch?v=W1uympJV7Ko&list=UUVk4G4nEtBS4tLOyHqustDA":如何使用非参数检验测试生存者函数的相等性}


{marker results}{...}
{title:存储结果}

{pstd}
有关存储结果的详细信息，请参见 {helpb sts test}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sts.sthlp>}