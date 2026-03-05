{smcl}
{* *! version 1.0.0  30apr2019}{...}
{viewerdialog cmsample "dialog cmsample"}{...}
{vieweralsosee "[CM] cmsample" "mansection CM cmsample"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmchoiceset" "help cmchoiceset_zh"}{...}
{vieweralsosee "[CM] cmset" "help cmset_zh"}{...}
{vieweralsosee "[CM] cmsummarize" "help cmsummarize_zh"}{...}
{vieweralsosee "[CM] cmtab" "help cmtab_zh"}{...}
{viewerjumpto "Syntax" "cmsample_zh##syntax"}{...}
{viewerjumpto "Menu" "cmsample_zh##menu"}{...}
{viewerjumpto "Description" "cmsample_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cmsample_zh##linkspdf"}{...}
{viewerjumpto "Options" "cmsample_zh##options"}{...}
{viewerjumpto "Examples" "cmsample_zh##examples"}{...}
{viewerjumpto "Stored results" "cmsample_zh##results"}
{help cmsample:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[CM] cmsample} {hline 2}}显示样本排除原因{p_end}
{p2col:}({mansection CM cmsample:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:cmsample}
[{varlist}] {ifin}
[{help cmsample##weight:{it:weight}}]
[{cmd:,} {it:options}]

{phang}
{it:varlist} 是一组特定备选的数值变量。

{synoptset 30 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opt choice(choicevar)}}0/1变量，表示所选择的替代方案{p_end}
{synopt :{cmdab:casev:ars(}{varlist}_c{cmd:)}}个案特定变量{p_end}
{synopt :{opt altwise}}使用替代方式删除，而不是逐例删除{p_end}
{synopt :{opt ranks}}允许 {it:choicevar} 为排名{p_end}
{synopt :{cmdab:gen:erate(}{newvar}[{cmd:, replace}]{cmd:)}}创建包含省略观测原因和错误消息的新变量；可选择替换现有变量{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用 {cmd:cmsample} 之前，您必须 {cmd:cmset} 您的数据；请参见 {manhelp cmset CM}.{p_end}
{p 4 6 2}
{it:varlist} 和 {it:varlist}_c 可以包含因子变量；请参见 {help fvvarlists}.{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s；请参见 {help weights}。
权重会检查缺失值和其他错误，但不会用于制表。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 选择模型 > 设置和实用工具 > 显示样本排除原因}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cmsample} 显示一个表，说明选择模型中的观测值为何被排除在估计样本之外。它还标记选择模型数据错误，例如在替代变量、因变量或个案特定变量中的错误。通过其 {cmd:generate()} 选项，可以识别被排除的观测或导致错误消息的观测。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection CM cmsampleQuickstart:快速入门}

        {mansection CM cmsampleRemarksandexamples:说明和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt choice(choicevar)} 指定一个0/1变量，表示所选择的替代方案。通常，它是选择模型中的因变量。

{phang}
{cmd:casevars(}{varlist}_c{cmd:)} 指定个案特定的数值变量。这些变量在每个个案中是常数。

{phang}
{cmd:altwise} 指定在由于变量缺失而省略观测时使用替代方式删除。默认情况下使用逐例删除；即，如果遇到任何缺失值，则省略构成个案的整个观测组。此选项不适用于由 {cmd:if} 或 {cmd:in} 限定符排除的观测；这些观测始终以替代方式处理，无论是否指定了 {cmd:altwise}。

{phang}
{cmd:ranks} 允许 {it:choicevar} 为排名。 {it:choicevar} 中允许任何数值。

{phang}
{cmd:generate(}{newvar}[{cmd:, replace}]{cmd:)} 创建一个包含省略观测和错误消息原因类别的新变量。变量 {it:newvar} 为数值型，可能的值为 0、1、2、...、16。值 0 表示观测应包括在估计样本中。值 1-16 表示已被标记或会生成错误消息的个案和观测。请参阅 
{mansection CM cmsampleRemarksandexamplesmiss_category:省略观测和错误消息的原因类别表} 
以获取值及其含义的列表。指定 {cmd:replace} 允许替换任何名为 {it:newvar} 的现有变量。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse carchoice}{p_end}
{phang2}{cmd:. cmset consumerid car}{p_end}
{phang2}{cmd:. set seed 1}{p_end}
{phang2}{cmd:. replace dealers = . if runiform() < 0.05}{p_end}

{pstd}显示由于逐例删除（默认）而排除观测的原因{p_end}
{phang2}{cmd:. cmsample dealers, choice(purchase)}{p_end}

{pstd}显示由于替代方式删除而排除观测的原因{p_end}
{phang2}{cmd:. cmsample dealers, choice(purchase) altwise}{p_end}

{pstd}设置{p_end}
{phang2}{cmd:. webuse carchoice_missing, clear}{p_end}
{phang2}{cmd:. cmset consumerid car}{p_end}

{pstd}使用 {cmd:cmset} 时会生成错误消息； 
重新运行命令并使用 {cmd:force} 选项{p_end}
{phang2}{cmd:. cmset consumerid car, force}{p_end}

{pstd}显示错误消息的原因以及为何会被删除的原因{p_end}
{phang2}{cmd:. cmsample}{p_end}


{marker results}{...}
{title:已存储的结果}

{pstd}
{cmd:cmsample} 在 {cmd:r()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt :{cmd:r(N)}}包含和排除的观测数量{p_end}
{synopt :{cmd:r(N_included)}}包含的观测数量{p_end}
{synopt :{cmd:r(nc_included)}}包含的个案数量{p_end}
{synopt :{cmd:r(N_ex_if_in)}}由 {cmd:if} 或 {cmd:in} 排除的观测数量{p_end}
{synopt :{cmd:r(N_ex_caseid)}}因缺少个案ID变量而排除的观测数量{p_end}
{synopt :{cmd:r(N_ex_size_1)}}因选择集大小为1而排除的观测数量{p_end}
{synopt :{cmd:r(nc_ex_size_1)}}因选择集大小为1而排除的个案数量{p_end}
{synopt :{cmd:r(N_ex_altvar)}}因缺少替代变量而排除的观测数量{p_end}
{synopt :{cmd:r(nc_ex_altvar)}}因缺少替代变量而排除的个案数量{p_end}
{synopt :{cmd:r(N_err_altvar)}}个案内重复替代的观测数量（错误）{p_end}
{synopt :{cmd:r(nc_err_altvar)}}个案内重复替代的个案数量（错误）{p_end}
{synopt :{cmd:r(N_ex_varlist)}}因 {it:varlist} 缺失而排除的观测数量{p_end}
{synopt :{cmd:r(nc_ex_varlist)}}因 {it:varlist} 缺失而排除的个案数量{p_end}
{synopt :{cmd:r(N_ex_wt)}}因缺少权重而排除的观测数量{p_end}
{synopt :{cmd:r(nc_ex_wt)}}因缺少权重而排除的个案数量{p_end}
{synopt :{cmd:r(N_err_wt_nc)}}个案内权重不恒定的观测数量（错误）{p_end}
{synopt :{cmd:r(nc_err_wt_nc)}}个案内权重不恒定的个案数量（错误）{p_end}
{synopt :{cmd:r(N_ex_choice)}}因缺少 {it:choicevar} 而排除的观测数量{p_end}
{synopt :{cmd:r(nc_ex_choice)}}因缺少 {it:choicevar} 而排除的个案数量{p_end}
{synopt :{cmd:r(N_ex_choice_0)}}因 {it:choicevar} 对于个案均为0而排除的观测数量{p_end}
{synopt :{cmd:r(nc_ex_choice_0)}}因 {it:choicevar} 对于个案均为0而排除的个案数量{p_end}
{synopt :{cmd:r(N_ex_choice_1)}}因 {it:choicevar} 对于个案均为1而排除的观测数量{p_end}
{synopt :{cmd:r(nc_ex_choice_1)}}因 {it:choicevar} 对于个案均为1而排除的个案数量{p_end}
{synopt :{cmd:r(N_ex_choice_011)}}因 {it:choicevar} 对于个案有多个1而排除的观测数量{p_end}
{synopt :{cmd:r(nc_ex_choice_011)}}因 {it:choicevar} 对于个案有多个1而排除的个案数量{p_end}
{synopt :{cmd:r(N_err_choice)}}有 {it:choicevar} 不为0/1的观测数量（错误）{p_end}
{synopt :{cmd:r(nc_err_choice)}}有 {it:choicevar} 不为0/1的个案数量（错误）{p_end}
{synopt :{cmd:r(N_ex_casevar)}}因缺少 {it:casevars} 而排除的观测数量{p_end}
{synopt :{cmd:r(nc_ex_casevar)}}因缺少 {it:casevars} 而排除的个案数量{p_end}
{synopt :{cmd:r(N_err_casevar_nc)}}个案内 {it:casevars} 不恒定的观测数量（错误）{p_end}
{synopt :{cmd:r(nc_err_casevar_nc)}}个案内 {it:casevars} 不恒定的个案数量（错误）{p_end}
{synopt :{cmd:r(N_ex_time)}}因 {it:timevar} 缺失而排除的观测数量{p_end}

{p2col 5 25 29 2: 宏}{p_end}
{synopt :{cmd:r(caseid)}}个案ID变量名称{p_end}
{synopt :{cmd:r(altvar)}}替代变量名称（如果已设置）{p_end}
{synopt :{cmd:r(timevar)}}时间变量名称（如果是面板数据）{p_end}
{synopt :{cmd:r(marktype)}}{cmd:casewise} 或 {cmd:altwise}，标记类型{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cmsample.sthlp>}