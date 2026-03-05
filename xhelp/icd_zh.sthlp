{smcl}
{* *! version 1.0.10  20sep2018}{...}
{vieweralsosee "[D] icd" "mansection D icd"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] icd9" "help icd9_zh"}{...}
{vieweralsosee "[D] icd9p" "help icd9p_zh"}{...}
{vieweralsosee "[D] icd10" "help icd10_zh"}{...}
{vieweralsosee "[D] icd10cm" "help icd10cm_zh"}{...}
{vieweralsosee "[D] icd10pcs" "help icd10pcs_zh"}{...}
{viewerjumpto "描述" "icd_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "icd_zh##linkspdf"}{...}
{viewerjumpto "备注" "icd_zh##remarks"}{...}
{viewerjumpto "参考文献" "icd_zh##references"}
{help icd:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[D] icd} {hline 2}}ICD 命令简介{p_end}
{p2col:}({mansection D icd:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
本条目简要介绍了国际疾病分类（ICD）的基本概念。如果您不熟悉 ICD 术语，我们建议您在继续查阅各个命令条目之前先阅读本条目。

{pstd}
本条目还概述了 Stata 的 {cmd:icd} 命令所支持的每个编码系统的代码格式。Stata 支持第九版代码（ICD-9）和第十版代码（ICD-10）。对于 ICD-9，Stata 使用美国的临床修改版本，即 ICD-9-CM。对于 ICD-10，Stata 使用世界卫生组织（WHO）用于国际发病率和死亡率报告的代码，以及美国的临床修改版本（ICD-10-CM）和程序编码系统（ICD-10-PCS）。我们鼓励您阅读本条目，以确保您选择正确的命令，并确保您的数据适合使用 {cmd:icd} 命令集合。

{pstd}
最后，本条目提供有关如何同时使用多个诊断或程序代码的 {cmd:icd} 命令的信息。没有任何命令接受 varlist，因此我们将演示处理多个代码的方法。

{pstd}
如果您熟悉 ICD 编码和 Stata 中的 {cmd:icd} 命令，您可能想跳过具体命令条目，直接查看语法和示例细节。


                {bf:ICD-9 代码命令}
             {help icd9_zh}      ICD-9-CM 诊断代码
             {help icd9p_zh}     ICD-9-CM 程序代码

                {bf:ICD-10 代码命令}
             {help icd10_zh}     ICD-10 诊断代码
             {help icd10cm_zh}   ICD-10-CM 诊断代码
             {help icd10pcs_zh}  ICD-10-PCS 程序代码


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D icdRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下标题：

        {help icd##intro:ICD 编码简介}
        {help icd##terminology:术语}
        {help icd##diagcodes:诊断代码}
        {help icd##prcodes:程序代码}


{marker intro}{...}
{title:ICD 编码简介}

{pstd}
Stata 中的 {cmd:icd} 命令适用于四种不同的诊断和程序编码系统：ICD-9-CM、ICD-10、ICD-10-CM 和 ICD-10-PCS。

{pstd}
国际疾病分类（ICD）编码系统由世界卫生组织（WHO）开发并享有版权。ICD 编码系统用于标准化死亡率报告，并被许多国家用于报告发病率和在医疗保健接触过程中对诊断进行编码。自1999年以来，ICD 系统已经进入第十版，即 ICD-10 （{help icd##who2011:世界卫生组织 2011}）。这些代码仅提供有关诊断的信息，而不涉及程序。

{pstd}
美国和其他一些国家也开发了特定于国家的编码系统，这些系统是 WHO 系统的扩展。这些系统用于编码医疗保健接触过程中提供的信息。在美国，编码系统称为国际疾病分类临床修改版。这些代码由美国疾病预防控制中心（CDC）和国立卫生统计中心（NCHS）维护和分发。

{marker terminology}{...}
{title:术语}

{pstd}
{cmd:icd9} 和 {cmd:icd10} 条目假设读者对 NCHS 或 CMS 的 ICD-9-CM 文档或 WHO 的 ICD-10 修订手册中使用的常见术语有一定了解。以下是一些用作参考的简要定义。

{phang}
{bf:版次。} ICD-9-CM 和 ICD-10 各自有版次，表示重大的定期变化。ICD-9-CM 当前为第六版 ({help icd##nchs2011:国立卫生统计中心 2011})。ICD-10 当前为第五版
({help icd##who2011:世界卫生组织 2011})。

{phang}
{bf:版本。} 在 ICD-9-CM 编码系统中，版本号是由 CMS 分配的顺序编号，每当新代码发布时在每个联邦财政年度进行更新。最后版本为 32，发布于 2014 年 10 月 1 日。在 ICD-10-CM/PCS 中，版本可以对应于联邦财政年度。

{phang}
{bf:更新。} 在 ICD-10 编码系统中，每年可能会进行更新。更新不是以数字发布，但可能会用发生的年份来识别。

{phang}
{bf:类别代码。} 类别代码是 ICD 代码中在小数点之前的部分。它可以表示单一疾病或一组相关的疾病或情况。

{phang}
{bf:有效代码。} 有效代码是在当前版本的 ICD-10-CM/PCS 或当前更新的 ICD-10 版次中可以使用的代码。什么构成有效代码会随着时间变化。

{phang}
{bf:定义代码。} 定义代码是任何当前有效的代码、以前有效的代码或作为代码组的意义的代码。有关各个命令如何处理定义代码的信息，请参阅 {manhelp icd9 D}、{manhelp icd9p D}、{manhelp icd10 D}、{manhelp icd10cm D} 和 {manhelp icd10pcs D}。

{marker diagcodes}{...}
{title:诊断代码}

{pstd}
我们先介绍由 {cmd:icd9} 处理的诊断代码。
ICD-9-CM 诊断代码可能具有两种格式。大多数使用以下格式：

{phang2}
{{cmd:0}-{cmd:9},{cmd:V}}{{cmd:0}-{cmd:9}}{{cmd:0}-{cmd:9}}[{cmd:.}][{cmd:0}-{cmd:9}[{cmd:0}-{cmd:9}]]

{pstd}
而 E 代码的格式为

{phang2}
{cmd:E}{{cmd:0}-{cmd:9}}{{cmd:0}-{cmd:9}}{{cmd:0}-{cmd:9}}[{cmd:.}][{cmd:0}-{cmd:9}]

{pstd}
其中花括号 {} 表示必填项，方括号 [] 表示选填项。

{pstd}
ICD-9-CM 代码以 0 到 9 的数字开头，或以字母 V 或 E 开头。E 代码总是后跟三个数字，并且可能在第五位有另一个数字。所有其他代码后跟两个数字，并且可能再有两个数字。

{pstd}
ICD-10 诊断代码的格式为

{phang2}
{{cmd:A}-{cmd:T},{cmd:V}-{cmd:Z}}{{cmd:0}-{cmd:9}}{{cmd:0}-{cmd:9}}[{cmd:.}][{cmd:0}-{cmd:9}]

{pstd}
每个 ICD-10 代码以一个字母开头，后跟两个数字。在小数点后可能有一个额外的数字。

{pstd}
ICD-10-CM 诊断代码最多可包含七个字符；否则，格式与 ICD-10 代码类似。每个 ICD-10-CM 代码以一个字母开头，后接一个数字。然而，ICD-10-CM 允许第三个字符可以是数字、字母 A 或字母 B。这形成了类别代码。第四和第五个字符可用于形成任何潜在的子类别代码。某些诊断仅存在三、四或五个字符的代码，因此诊断代码与（子）类别代码等价。

{pstd}
最后，第六和第七个字符提供更多详细信息。ICD-10-CM 编码系统的一个特殊之处在于，它并不是严格的层次结构。如果某个子类别在特定级别尚未定义，则使用字母 X 作为占位符。例如，代码 J09 表示由确定病毒引起的流感。J09 没有子类别，因此第四个字符为 X，第五个字符提供有关并发症的详细信息。

{pstd}
ICD-10-CM 中的代码在句点后最多可包含四个字母数字字符。只有在类别代码下具有最详细级别的代码才被认为是有效的。

{pstd}
诊断代码必须存储在字符串变量中（请参见 {manhelp data_types D:数据类型}）。对于任何修订版本的代码，如果小数点分隔类别代码和其他数字未出现，则视为隐含存在。

    {title:技术说明}

{pstd}
目前定义有五位和六位的 ICD-10 代码。然而，这些代码并不是 WHO 编纂的国际发病率和死亡率报告的标准四位编码系统的一部分，因此不被 {cmd:icd10} 视为有效。有关这些代码及其使用 {cmd:icd10} 时的选项的更多详细信息，请参见 {manhelp icd10 D}。

    {title:技术说明}

{pstd}
ICD-10 代码 U00-U49 为 WHO 保留，用于临时分配新疾病。代码 U50-U99 可用于研究，识别没有定义 ICD-10 代码的特定条件下的研究对象 
({help icd##who2011:世界卫生组织 2011})。

{pstd}
如果您正在处理这些特殊情况之一，请参阅 {bf:[D] icd10} 中的 {mansection D icd10Remarksandexamplesucodes:技术说明}。

{marker prcodes}{...}
{title:程序代码}

{pstd}
ICD-9-CM 编码系统还包括程序代码。ICD-9-CM 程序代码的格式为

{phang2}
{{cmd:0}-{cmd:9}}{{cmd:0}-{cmd:9}}[{cmd:.}][{cmd:0}-{cmd:9}[{cmd:0}-{cmd:9}]]

{pstd}
ICD-10-PCS 程序代码的一般格式是一个三字符的类别代码，后跟一个（隐含）小数点后的四个字母数字字符。完整的代码总是七个字符长，可以是字母和数字的任意组合。

{pstd}
程序代码必须存储在字符串变量中。
{p_end}


{marker references}{...}
{title:参考文献}

{marker nchs2011}{...}
{phang}
国立卫生统计中心. 2011. 国际疾病分类，第九版，临床修改版。
{browse "ftp://ftp.cdc.gov/pub/Health_Statistics/NCHS/Publications/ICD9-CM/2011/"}.

{marker who2011}{...}
{phang}
世界卫生组织. 2011. 国际疾病和相关健康问题的统计分类，第 2 卷：
2016 年版。说明手册。
{browse "http://apps.who.int/classifications/icd10/browse/Content/statichtml/ICD10Volume2_en_2016.pdf"}.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <icd.sthlp>}