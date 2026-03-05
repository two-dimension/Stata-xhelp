{smcl}
{* *! version 1.1.9  20sep2018}{...}
{vieweralsosee "[ST] st_is" "mansection ST st_is"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{vieweralsosee "[ST] sttoct" "help sttoct_zh"}{...}
{vieweralsosee "[ST] Survival analysis" "help survival_analysis_zh"}{...}
{viewerjumpto "Syntax" "st_is_zh##syntax"}{...}
{viewerjumpto "Description" "st_is_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "st_is_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "st_is_zh##remarks"}{...}
{viewerjumpto "Characteristics of st datasets" "st_is_zh##char"}
{help st_is:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[ST] st_is} {hline 2}}程序员的生存分析子程序{p_end}
{p2col:}({mansection ST st_is:查看完整PDF手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{phang}
验证内存中的数据是否为生存时间数据

{p 8 15 2}
{cmd:st_is 2} {c -(} {opt full} | {opt analysis} {c )-}


{phang}
显示或不显示生存时间变量的摘要

{p 8 15 2}
{cmd:st_show} [{opt noshow}]


{phang}
风险组摘要

{p 8 15 2}
{cmd:st_ct "}[{it:byvars}]{cmd:" ->} {it:newtvar} {it:newpopvar}
	{it:newfailvar} [{it:newcensvar} [{it:newentvar}]]


{pstd}
在使用 {cmd:st_is}、{cmd:st_show} 和 {cmd:st_ct} 之前，您必须先 {cmd:stset} 数据；请参见 {manhelp stset ST}。


{marker description}{...}
{title:描述}

{pstd}
这些命令适用于希望编写新的 st 命令的程序员。

{pstd}
{cmd:st_is} 验证内存中的数据是否为生存时间（st）数据。
如果不是，它会发出错误信息“{err:data not st}”，{search rc 119:r(119)}。

{pstd}
st 当前为“发布 2”，这意味着这是系统的第二个设计。为以前版本编写的程序仍然可以使用。
（st 的以前版本对应于 Stata 5。）

{pstd}
现代程序使用 {cmd:st_is 2 full} 或 {cmd:st_is 2 analysis}。 
{cmd:st_is 2} 验证内存中的数据集是否为发布 2 格式；如果是早期格式，则会转换为发布 2 格式。
（旧版本程序仅使用 {cmd:st_is}。这验证在数据中没有新特性 {help stset_zh} 会导致旧程序失效。）

{pstd}
{opt full} 和 {opt analysis} 部分指示数据集是否可能包含过去、未来或过去和未来的数据。如果命令适合在分析样本和过去及未来数据上运行，请使用 {cmd:st_is 2 full}（许多数据管理命令属于此类别）。如果命令仅适合用于分析样本，请使用 {cmd:st_is 2 analysis}（大多数统计命令属于此类别）。有关过去和未来的定义，请参见 {manhelp stset ST}。

{pstd}
{cmd:st_show} 显示生存时间变量的摘要或不执行任何操作，具体取决于您在 {cmd:stset} 数据时的指定。
{cmd:noshow} 请求 {cmd:st_show} 不显示任何内容。

{pstd}
{cmd:st_ct} 是一个低级实用程序，用于提供来自生存时间数据的风险组摘要。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST st_isRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
有关这些命令的更多信息，请参见 {manlink ST st_is}。 所有 st 数据集具有以下四个变量：

{p 8 20 2}{hi:_t0} {space 3} 进入风险池的时间（以 t 单位计）{p_end}
{p 8 20 2}{hi:_t} {space 4} 退出风险池的时间（以 t 单位计）{p_end}
{p 8 20 2}{hi:_d} {space 4} 如果失败则为 1，如果为审查则为 0{p_end}
{p 8 20 2}{hi:_st} {space 3} 如果观察值将被使用则为 1，否则为 0

{pstd}
某些 st 数据集还包含变量

{p 8 20 2}{hi:_origin} 包含 {cmd:origin()} 的计算值{p_end}
{p 8 20 2}{hi:_scale}{space 2}包含 {cmd:scale()} 的计算值

{pstd}
请记住，所有计算和操作至少应限制在 {hi:_st}!=0 的观察值内。应忽略 {hi:_st}==0 的观察值。


{marker char}{...}
{title:st 数据集的特征}

{pstd}
st 系统使用的特征如下

    {hline}
{p 4 24 2}{hi:char _dta[_dta]} {space 3} "{hi:st}" {space 2} (标记数据为 st){p_end}
{p 4 24 2}{hi:char _dta[st_ver]} {space 1} "{hi:2}" {space 3} (版本号){p_end}

{p 4 24 2}{hi:char _dta[st_id]} {space 2} {it:varname} 或空； {cmd:id()} 变量{p_end}
{p 4 24 2}{hi:char _dta[st_bt0]} {space 1} {it:varname} 或空； {cmd:t0()} 变量{p_end}
{p 4 24 2}{hi:char _dta[st_bt]} {space 2} {it:varname}; 来自 "{cmd:stset t ,} {it:...}" 的 t 变量{p_end}
{p 4 24 2}{hi:char _dta[st_bd]} {space 2} {it:varname} 或空；
	{cmd:failure()} 变量{p_end}

{p 4 24 2}{hi:char _dta[st_ev]} {space 2} 数字列表或空；
	{it:numlist} 来自
	{cmd:failure(}{it:varname}[{cmd:==}{it:numlist}]{cmd:)}{p_end}
{p 4 24 2}{hi:char _dta[st_enter]} {space 2} {cmd:enter()} 的内容或空；
	{it:numlist} 展开{p_end}
{p 4 24 2}{hi:char _dta[st_exit]}{space 2} {cmd:exit()} 的内容或空；
	{it:numlist} 展开{p_end}
{p 4 24 2}{hi:char _dta[st_orig]}{space 2} {cmd:origin()} 的内容或空；
	{it:numlist} 展开{p_end}
{p 4 24 2}{hi:char _dta[st_bs]} {space 2} {it:#} 或 "{hi:1}"; {cmd:scale()} 的值{p_end}

{p 4 24 2}{hi:char _dta[st_o]} {space 3} "{hi:_origin}" 或 {it:#}{p_end}
{p 4 24 2}{hi:char _dta[st_s]} {space 3} "{hi:_scale}" 或 {it:#}{p_end}

{p 4 24 2}{hi:char _dta[st_ifexp]} {it:exp} 或空；来自
	"{cmd:stset} {it:...} {cmd:if} {it:exp} {it:...}"{p_end}
{p 4 24 2}{hi:char _dta[st_if]} {space 2} {it:exp} 或空； 
	{cmd:if()} 的内容{p_end}
{p 4 24 2}{hi:char _dta[st_ever]}{space 2}{it:exp} 或空； 
	{cmd:ever()} 的内容{p_end}
{p 4 24 2}{hi:char _dta[st_never]} {it:exp} 或空； 
	{cmd:never()} 的内容{p_end}
{p 4 24 2}{hi:char _dta[st_after]} {it:exp} 或空； 
	{cmd:after()} 的内容{p_end}
{p 4 24 2}{hi:char _dta[st_befor]} {it:exp} 或空； 
	{cmd:before()} 的内容{p_end}

{p 4 24 2}{hi:char _dta[st_wt]} {space 2} 权重类型或空；
	用户指定的权重{p_end}
{p 4 24 2}{hi:char _dta[st_wv]} {space 2} {it:varname} 或空；
	用户指定的加权变量{p_end}
{p 4 24 2}{hi:char _dta[st_w]} {space 3} "{hi:[}{it:weighttype}{hi:=}{it:weightvar}{hi:]}" 或空{p_end}

{p 4 24 2}{hi:char _dta[st_show]}{space 2}"{hi:noshow}" 或空{p_end}

{p 4 24 2}{hi:char _dta[st_t]} {space 3} {hi:_t}  （与版本 1 兼容）{p_end}
{p 4 24 2}{hi:char _dta[st_t0]} {space 2} {hi:_t0} （与版本 1 兼容）{p_end}
{p 4 24 2}{hi:char _dta[st_d]} {space 3} {hi:_d}  （与版本 1 兼容）{p_end}

{p 4 24 2}{hi:char _dta[st_n0]} {space 2} {it:#} 或空；生存注释的数量{p_end}
{p 4 24 2}{hi:char _dta[st_n1]} {space 2} 第一条注释的文本或空{p_end}
{p 4 24 2}{hi:char _dta[st_n2]} {space 2} 第二条注释的文本或空{p_end}
    ...

{p 4 24 2}{hi:char _dta[st_set]} {space 1} 文本或空。如果填写，
	{helpb streset} 将拒绝执行并将此文本呈现为原因。{p_end}
    {hline}

{pstd}
有关这些命令的更多信息，请参见 {manlink ST st_is}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <st_is.sthlp>}