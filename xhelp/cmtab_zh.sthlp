{smcl}
{* *! version 1.0.0  29apr2019}{...}
{viewerdialog cmtab "dialog cmtab"}{...}
{vieweralsosee "[CM] cmtab" "mansection CM cmtab"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmchoiceset" "help cmchoiceset_zh"}{...}
{vieweralsosee "[CM] cmsample" "help cmsample_zh"}{...}
{vieweralsosee "[CM] cmset" "help cmset_zh"}{...}
{vieweralsosee "[CM] cmsummarize" "help cmsummarize_zh"}{...}
{viewerjumpto "Syntax" "cmtab_zh##syntax"}{...}
{viewerjumpto "Menu" "cmtab_zh##menu"}{...}
{viewerjumpto "Description" "cmtab_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cmtab_zh##linkspdf"}{...}
{viewerjumpto "Options" "cmtab_zh##options"}{...}
{viewerjumpto "Examples" "cmtab_zh##examples"}{...}
{viewerjumpto "Stored results" "cmtab_zh##results"}
{help cmtab:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[CM] cmtab} {hline 2}}列出选择的替代方案{p_end}
{p2col:}({mansection CM cmtab:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:cmtab}
[{varname}] {ifin}
[{help cmtab##weight:{it:weight}}]{cmd:,}
{opt choice(choicevar)}
[{it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{p2coldent:* {opt choice(choicevar)}}指定指示选择的替代方案的0/1变量{p_end}
{synopt :{opt miss:ing}}在列出时包括{it:varname}的缺失值{p_end}
{synopt :{opt trans:pose}}在表格中转置行和列{p_end}
{synopt :{opt time}}按时间变量进行列出（仅适用于面板 CM 数据）{p_end}
{synopt :{opt timelast}}在三维列出中将时间变量放在最后；为每个{it:varname}级别列出替代方案的时间（仅适用于面板 CM 数据）{p_end}
{synopt :{opt comp:act}}紧凑显示三维列出（仅适用于面板 CM 数据）{p_end}
{synopt :{opt altwise}}使用替代方案逐个删除，而不是逐例删除{p_end}

{syntab:选项}
{synopt :{it:tab1_options}}单变量表的选项{p_end}
{synopt :{it:tab2_options}}双变量表的选项{p_end}
{synoptline}
{p 4 6 2}
* {cmd:choice()}是必需的。{p_end}

{synoptset 20}{...}
{synopthdr:tab1_options}
{synoptline}
{synopt :{opt sort}}按频率降序显示表格{p_end}
{synoptline}

{synopthdr:tab2_options}
{synoptline}
{synopt :{opt ch:i2}}报告 Pearson 的卡方{p_end}
{synopt :{opt lr:chi2}}报告似然比卡方{p_end}
{synopt :{opt co:lumn}}报告列百分比{p_end}
{synopt :{opt r:ow}}报告行百分比{p_end}
{synopt :{opt ce:ll}}报告单元格百分比{p_end}
{synopt :{opt rowsort}}按观察频率的顺序列出行{p_end}
{synopt :{opt colsort}}按观察频率的顺序列出列{p_end}
{synopt :[{cmd:no}]{cmd:key}}报告或抑制单元格内容的关键{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
使用 {cmd:cmtab} 之前，你必须 {cmd:cmset} 数据；请参见 {manhelp cmset CM}。{p_end}
{p 4 6 2}
允许使用 {cmd:by}；请参见 {manhelp by D}。{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight} 和 {cmd:iweight}；请参见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 选择模型 > 设置和实用工具 > 列出选择的替代方案}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cmtab} 列出选择的替代方案，包含独立的单变量列出或与另一个变量的双变量列出。

{pstd}
对于面板选择数据，{cmd:cmtab} 可以显示按时间的选择替代方案的双变量列出或按选择的替代方案和另一个变量的三维列出。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection CM cmtabQuickstart:快速入门}

        {mansection CM cmtabRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt choice(choicevar)} 指定指示选择的替代方案的变量。{it:choicevar} 必须编码为 0 和 1，其中 0 表示未选择的替代方案，1 表示已选择的替代方案。
{cmd:choice()} 是必需的。

{phang}
{opt missing} 指定将{it:varname}的缺失值视为{it:varname}的任何其他值。

{phang}
{cmd:transpose}转置表格显示中的行和列。

{phang}
{cmd:time}对于面板选择数据，按时间变量列出所选的替代方案。 请参见 {manhelp cmset CM}。

{phang}
{cmd:timelast} 在三维列出中将时间放在最后， 当数据为面板选择数据时。 当同时指定{it:varname}和 {cmd:time} 选项时，会创建三维列出。 默认情况下，三维列出为{it:timevar} x 选择的替代方案 x {it:varname}；即，对于每个{it:timevar}的值，显示选择的替代方案与{it:varname}的双变量表。 当指定{cmd:timelast}时，三维列出为{it:varname} x 选择的替代方案 x {it:timevar}；即，对于每个{it:varname}的值，显示选择的替代方案与{it:timevar}的双变量表。 要反转双变量列出的顺序，可以使用选项{cmd:transpose}。

{phang} {cmd:compact} 在数据为面板选择数据时生成紧凑的三维列出。

{phang}
{cmd:altwise} 指定在因变量缺失值而省略观察时使用替代方案逐个删除。 默认采用逐例删除；即，如果遇到任何缺失值，则省略组成一个案例的所有观察。 该选项不适用于通过{cmd:if}或{cmd:in}限定符或{cmd:by}前缀排除的观察；这些观察在处理时始终采用替代方案逐个删除，无论{cmd:altwise}是否被指定。

{dlgtab:选项}

{phang}
{cmd:sort} 在单变量表中按频率降序排列表格。

{phang}
{cmd:chi2} 计算并显示关于双变量表中行和列相互独立的假设的 Pearson 卡方。
如果使用了 {cmd:iweight}，则不能指定 {cmd:chi2}。
当指定{cmd:compact}时，{cmd:chi2}不可用。

{phang}
{cmd:lrchi2} 显示双变量表的似然比卡方统计量。如果使用了 {cmd:iweight}，则不能指定 {cmd:lrchi2}。
当指定{cmd:compact}时，{cmd:lrchi2}不可用。

{phang}
{cmd:column} 显示双变量表中每个单元格在其列内的相对频率（以百分比表示）。当指定{cmd:compact}时，{cmd:column}不可用。

{phang}
{cmd:row} 显示双变量表中每个单元格在其行内的相对频率（以百分比表示）。当指定{cmd:compact}时，{cmd:row}不可用。

{phang}
{cmd:cell} 在双变量表中每个单元格显示相对频率（以百分比表示）。当指定{cmd:compact}时，{cmd:cell}不可用。

{phang}
{cmd:rowsort} 和 {cmd:colsort} 分别指定行和列按观测频率排序。
当指定{cmd:compact}时，{cmd:rowsort} 和 {cmd:colsort}不可用。

{phang}
[{cmd:no}]{cmd:key} 在双变量表上方显示或抑制关键。 默认的显示设置是，当请求多个单元格统计时显示关键。当需要关键时使用{cmd:key}来显示。当使用{cmd:nokey}来抑制其显示时，[{cmd:no}]{cmd:key}不可用于 {cmd:compact} 的指定。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse carchoice}{p_end}
{phang2}{cmd:. cmset consumerid car}{p_end}

{pstd}显示所选替代方案的单变量列出{p_end}
{phang2}{cmd:. cmtab, choice(purchase)}{p_end}

{pstd}显示{cmd:gender}与所选替代方案的双变量列出{p_end}
{phang2}{cmd:. cmtab gender, choice(purchase)}{p_end}

{pstd}与上述相同，并报告行百分比以及{cmd:gender}与汽车选择的关联的p值{p_end}
{phang2}{cmd:. cmtab gender, choice(purchase) row chi2}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:cmtab} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt :{cmd:r(N)}}观察数{p_end}
{synopt :{cmd:r(r)}}行数{p_end}
{synopt :{cmd:r(c)}}列数{p_end}
{synopt :{cmd:r(chi2)}}Pearson 卡方{p_end}
{synopt :{cmd:r(p)}}Pearson 卡方检验的p值{p_end}
{synopt :{cmd:r(chi2_lr)}}似然比卡方{p_end}
{synopt :{cmd:r(p_lr)}}似然比检验的p值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cmtab.sthlp>}