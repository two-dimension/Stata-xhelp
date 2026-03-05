{smcl}
{* *! version 1.0.0  17jun2019}{...}
{viewerdialog "meta" "dialog meta"}{...}
{vieweralsosee "[META] meta update" "mansection META metaupdate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta data" "mansection META metadata"}{...}
{vieweralsosee "[META] meta esize" "help meta esize"}{...}
{vieweralsosee "[META] meta set" "help meta set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta" "help meta_zh"}{...}
{vieweralsosee "[META] Glossary" "help meta glossary"}{...}
{vieweralsosee "[META] Intro" "mansection META Intro"}{...}
{viewerjumpto "Syntax" "meta_update_zh##syntax"}{...}
{viewerjumpto "Menu" "meta_update_zh##menu"}{...}
{viewerjumpto "Description" "meta_update_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "meta_update_zh##linkspdf"}{...}
{viewerjumpto "Options" "meta_update_zh##options"}{...}
{viewerjumpto "Examples" "meta_update_zh##examples"}{...}
{viewerjumpto "Stored results" "meta_update_zh##results"}
{help meta_update:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[META] meta update} {hline 2}}更新、描述和清除元分析设置{p_end}
{p2col:}({mansection META metaupdate:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
更新使用 {cmd:meta esize} 声明的连续结果的元分析设置

{p 8 16 2}
{cmd:meta} {cmdab:up:date}
[{cmd:,} {help meta_update##cont_options:{it:options_continuous}}
         {help meta_update##optstbl:{it:options}}]


{pstd}
更新使用 {cmd:meta esize} 声明的二元结果的元分析设置

{p 8 16 2}
{cmd:meta} {cmdab:up:date}
[{cmd:,} {help meta_update##bin_options:{it:options_binary}}
         {help meta_update##optstbl:{it:options}}]


{pstd}
更新使用 {cmd:meta set} 声明的元分析设置

{p 8 16 2}
{cmd:meta} {cmdab:up:date}
[{cmd:,} {help meta_update##gen_options:{it:options_generic}}
         {help meta_update##optstbl:{it:options}}]


{pstd}
描述元数据

{p 8 16 2}
{cmd:meta} {cmdab:q:uery} [{cmd:,} {cmd:short}]


{pstd}
清除元数据

{p 8 16 2}
{cmd:meta} {cmd:clear}


{marker cont_options}{...}
{synoptset 22}{...}
{synopthdr:options_continuous}
{synoptline}
{synopt :{opth es:ize(meta_esize##esspeccnt:esspeccnt)}}指定用于元分析的连续结果的效应大小{p_end}
{synopt :{opt random}[{cmd:(}{help meta_esize##remethod:{it:remethod}}{cmd:)}]}随机效应元分析{p_end}
{synopt :{opt common}}共同效应元分析；隐含逆方差法{p_end}
{synopt :{opt fixed}}固定效应元分析；隐含逆方差法{p_end}
{synoptline}

{marker bin_options}{...}
{synopthdr:options_binary}
{synoptline}
{synopt :{opth es:ize(meta_esize##estypebin:estypebin)}}指定用于元分析的二元结果的效应大小{p_end}
{synopt :{opt random}[{cmd:(}{help meta_esize##remethod:{it:remethod}}{cmd:)}]}随机效应元分析{p_end}
{synopt :{opt common}[{cmd:(}{help meta_esize##cefemethod:{it:cefemethod}}{cmd:)}]}共同效应元分析{p_end}
{synopt :{opt fixed}[{cmd:(}{help meta_esize##cefemethod:{it:cefemethod}}{cmd:)}]}固定效应元分析{p_end}
{synopt :{opth zerocells:(meta_esize##zcspec:zcspec)}}在计算过程中调整零单元；默认是在所有包含零单元的 2 x 2 表格中添加 0.5{p_end}
{synoptline}

{marker gen_options}{...}
{synopthdr:options_generic}
{synoptline}
{synopt :{opt random}[{cmd:(}{help meta_esize##remethod:{it:remethod}}{cmd:)}]}随机效应元分析{p_end}
{synopt :{opt common}}共同效应元分析；隐含逆方差法{p_end}
{synopt :{opt fixed}}固定效应元分析；隐含逆方差法{p_end}
{synopt :{opth studysize(varname)}}每个研究的总样本量{p_end}
{synoptline}

{marker optstbl}{...}
{synopthdr:options}
{synoptline}
{synopt :{opth studylab:el(varname)}}用于标记所有元分析输出中的研究的变量{p_end}
{synopt :{opth eslab:el(strings:string)}}用于在所有元分析输出中使用的效应大小标签；默认是 {cmd:eslabel(效应大小)}{p_end}
{synopt :{opt l:evel(#)}}后续所有元分析命令的置信水平{p_end}
{synopt :[{cmd:no}]{opt metashow}}在输出中显示或抑制元设置{p_end}
{synoptline}


包含 help menu_meta


{marker description}{...}
{title:描述}

{pstd}
{cmd:meta update} 更新在 {helpb meta set} 或 {helpb meta esize} 声明之后元分析的某些组件。此命令对更新某些元设置非常有用，而无需完全重新指定元分析变量。更新的设置将在您接下来的元分析会话中使用。

{pstd}
{cmd:meta query} 报告内存中的数据是否为
{mansection META metadata:{bf:元}数据}，如果是，则显示与 {cmd:meta set} 或 {cmd:meta esize} 产生的当前元设置信息相同的信息。

{pstd}
{cmd:meta clear} 清除元设置，包括元数据特征和系统变量。原始数据保持不变。在执行另一个 {cmd:meta set} 或 {cmd:meta esize} 之前，您不需要使用 {cmd:meta clear}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection META metaupdateQuickstart:快速开始}

        {mansection META metaupdateRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd}
有关 {cmd:meta update} 选项，请参见
{help meta_set##options:{it:选项}}来自
{helpb meta set:[META] meta set} 和
{help meta_esize##options:{it:选项}}来自
{helpb meta esize:[META] meta esize}。

{phang}
{cmd:short} 与 {cmd:meta query} 一起使用。它显示一个简短的元设置摘要，其中包含有关声明的效应大小类型、效应大小和标准误差变量以及元分析模型和估计方法的信息。此选项不会出现在对话框中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse metaesbin}{p_end}
{phang2}{cmd:. meta esize tdead tsurv cdead csurv}

{pstd}将效应大小更新为风险差{p_end}
{phang2}{cmd:. meta update, esize(rdiff)}

{pstd}将 MA 方法更新为经验贝叶斯随机效应方法{p_end}
{phang2}{cmd:. meta update, random(ebayes)}

{pstd}描述当前的元分析设置{p_end}
{phang2}{cmd:. meta query}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:meta update} 更新存储在
{help meta set##results:{it:存储结果}}中的系统变量的特征和内容
来自 {helpb meta set:[META] meta set} 和
{help meta_esize##results:{it:存储结果}}中的系统变量
来自 {helpb meta esize:[META] meta esize}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meta_update.sthlp>}