{smcl}
{* *! version 1.1.17  19oct2017}{...}
{viewerdialog stset "dialog stset"}{...}
{vieweralsosee "[ST] stset" "mansection ST stset"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] snapspan" "help snapspan_zh"}{...}
{vieweralsosee "[ST] stdescribe" "help stdescribe_zh"}{...}
{viewerjumpto "语法" "stset_zh##syntax"}{...}
{viewerjumpto "菜单" "stset_zh##menu"}{...}
{viewerjumpto "描述" "stset_zh##description"}{...}
{viewerjumpto "PDF文档链接" "stset_zh##linkspdf"}{...}
{viewerjumpto "与stset和streset一起使用的选项" "stset_zh##options_stset"}{...}
{viewerjumpto "仅适用于streset的选项" "stset_zh##options_streset"}{...}
{viewerjumpto "与st一起使用的选项" "stset_zh##options_st"}{...}
{viewerjumpto "示例" "stset_zh##examples"}{...}
{viewerjumpto "视频示例" "stset_zh##video"}
{help stset:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[ST] stset} {hline 2}}声明数据为生存时间数据{p_end}
{p2col:}({mansection ST stset:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}每个主题单条记录的生存数据

{p 8 16 2}
{cmd:stset} {it:timevar} [{it:{help if_zh}}]
[{it:{help stset##weight:weight}}]
[{cmd:,} {it:{help stset##single_options:single_options}}]

{p 8 16 2}
{cmd:streset} [{it:{help if_zh}}]
[{it:{help stset##weight:weight}}]
[{cmd:,} {it:{help stset##single_options:single_options}}]

{p 8 16 2}
{cmd:st} [{cmd:,} {opt noc:md} {opt not:able}]

{p 8 16 2}
{cmd:stset, clear}


{phang}每个主题多条记录的生存数据

{p 8 16 2}
{cmd:stset} {it:timevar} [{it:{help if_zh}}]
[{it:{help stset##weight:weight}}]
{cmd:,}
        {opth id:(varname:idvar)}
        {cmdab:f:ailure(}{it:failvar}[{cmd:==}{it:{help numlist_zh}}]{cmd:)} 
        [{it:{help stset##multiple_options:multiple_options}}]

{p 8 16 2}
{cmd:streset} [{it:{help if_zh}}]
[{it:{help stset##weight:weight}}]
[{cmd:,} 
        {it:{help stset##multiple_options:multiple_options}}]

{p 8 16 2}
{cmd:streset,} {{opt p:ast}|{opt f:uture}|{opt p:ast} {opt f:uture}} 

{p 8 16 2}
{cmd:st} [{cmd:,} {opt noc:md} {opt not:able}]

{p 8 16 2}
{cmd:stset, clear}


{synoptset 30 tabbed}{...}
{marker single_options}{...}
{synopthdr :单条记录选项}
{synoptline}
{syntab :主要}
{synopt :{cmdab:f:ailure:(}{it:failvar}[{cmd:==}{it:{help numlist_zh}}]{cmd:)}}失败事件{p_end}
{synopt :{opt nos:how}}防止其他st命令显示st设置信息{p_end}

{syntab :选项}
{synopt :{cmdab:o:rigin(}{cmdab:t:ime} {it:{help exp_zh}}{cmd:)}}定义主题何时开始面临风险{p_end}
{synopt :{opt sc:ale(#)}}重新缩放时间值{p_end}
{synopt :{cmdab:en:ter(}{cmdab:t:ime} {it:{help exp_zh}}{cmd:)}}指定主题首次进入研究的时间{p_end}
{synopt :{cmdab:ex:it(}{cmdab:t:ime} {it:{help exp_zh}}{cmd:)}}指定主题退出研究的时间{p_end}

{syntab :高级}
{synopt :{opth if(exp)}}选择记录以符合 {it:exp} 为真；推荐使用
而不是 {cmd:if} {it:exp}{p_end}
{synopt :{opth time0(varname)}}关于数据集中记录的机械性解释；很少使用{p_end}
{synoptline}
{p2colreset}{...}


{synoptset 30 tabbed}{...}
{marker multiple_options}{...}
{synopthdr :多个选项}
{synoptline}
{syntab :主要}
{p2coldent :* {opth "id(varname:idvar)"}}多条记录ID变量{p_end}
{p2coldent :* {cmdab:f:ailure:(}{it:failvar}[{cmd:==} {it:{help numlist_zh}}]{cmd:)}}失败事件{p_end}
{synopt :{opt nos:how}}防止其他st命令显示st设置信息{p_end}

{syntab :选项}
{p2col 7 35 37 2:{cmdab:o:rigin(}[{varname} {cmd:==} {it:{help numlist_zh}}] {opt t:ime} {it:{help exp_zh}}|{cmd:min)}}{break}定义主题何时开始面临风险{p_end}
{synopt :{opt sc:ale(#)}}重新缩放时间值{p_end}
{p2col 7 35 37 2:{cmdab:en:ter(}[{varname} {cmd:==} {it:{help numlist_zh}}] {cmdab:t:ime} {it:{help exp_zh}}{cmd:)}}{break}指定主题首次进入研究的时间{p_end}
{p2col 7 35 37 2:{cmdab:ex:it(failure}|[{varname} {cmd:==} {it:{help numlist_zh}}] {cmdab:t:ime} {it:{help exp_zh}}{cmd:)}}{break}指定主题退出研究的时间{p_end}

{syntab :高级}
{synopt :{opth if(exp)}}选择相关记录。

{pmore}
{opt ever(exp)}仅选择 {it:exp} 曾为真的主题。

{pmore}
{opt never(exp)}仅选择 {it:exp} 从未为真的主题。

{pmore}
{opt after(exp)}选择主题内在第一次 {it:exp} 为真时及之后的记录。

{pmore}
{opt before(exp)}选择主题内在第一次 {it:exp} 为真时之前的记录。

{phang}
{opth time0(varname)} 很少被指定，因为大多数数据集不包含此信息。{opt time0()} 应仅用于多条记录数据，即便如此，你也应考虑使用 {opt origin()} 或 {opt enter()} 是否更合适。

{pmore}
{opt time0()} 指定关于数据集中记录的机械性解释，即每条记录所跨越期间的开始。 参见 
{mansection ST stsetRemarksandexamplesIntermediateexitandreentrytimes(gaps):{it:中间退出和重新进入时间（间隙）}}
在 {bf:[ST] stset} 中。


{marker options_streset}{...}
{title:仅适用于streset的选项}

{phang}
{opt past} 扩展 {cmd:stset} 样本，包括相关主题的整个记录过去，即包括成为风险之前的观察，以及因 {opt after()} 等而被排除的记录。

{phang}
{opt future} 扩展 {cmd:stset} 样本，在包含的最后一条记录之后，包括相关主题的记录（如果有），通常意味着包括所有在失败或审查之后的观察。

{phang}
{opt past future} 扩展 {cmd:stset} 样本，以包含与相关主题的所有记录。

{pstd}
输入 {cmd:streset} 而不带参数会重置样本到分析样本。 欲了解更多信息，请参见
{mansection ST stsetRemarksandexamplesPastandfuturerecords:{it:过去和未来记录}}
在 {bf:[ST] stset} 中。


{marker options_st}{...}
{title:用于st的选项}

{phang}
{opt nocmd} 抑制显示最后一次 {cmd:stset} 命令。

{phang}
{opt notable} 抑制显示总结已被 {cmd:stset} 的表格。


{marker examples}{...}
{title:示例：每个主题单条记录}

{pstd}失败时间（分析时间）变量是 {cmd:failtime}{p_end}
        {cmd:. webuse kva}
        {cmd:. stset failtime}


{title:示例：每个主题的单条记录，带有审查}

{pstd}分析时间变量是 {cmd:studytime}，失败/审查指示变量是 {cmd:died}，其中 {cmd:died==1} 表示失败事件
{p_end}
        {cmd:. webuse drugtr}
        {cmd:. stset studytime, failure(died)}

{pstd}分析时间变量是 {cmd:dox}，失败事件是与0不同的任何结果类别 ({cmd:fail!=0})。 主题首次在时间0（默认）变为风险并被观察到{p_end}
        {cmd:. webuse diet}
        {cmd:. stset dox, failure(fail)}

{pstd}主题首次在时间0变为风险并在变量 {cmd:doe} 记录的研究入组日期被观察{p_end}
{phang2}{cmd:. stset dox, failure(fail) enter(time doe)}

{pstd}主题首次在出生记录日期变为风险并被观察，而不是在时间0{p_end}
{phang2}{cmd:. stset dox, failure(fail) origin(time dob)}

{pstd}主题首次在出生日期变为风险，并在研究入组日期被观察{p_end}
{phang2}{cmd:. stset dox, failure(fail) origin(time dob) enter(time doe)}

{pstd}将自出生以来的时间（分析时间）的量测单位设置为年{p_end}
{phang2}{cmd:. stset dox, failure(fail) origin(time dob) enter(time doe)}
               {cmd:scale(365.25)}

{pstd}指定在1970年12月1日之后有 {cmd:dox} 的主题从分析风险池中移除{p_end}
{phang2}{cmd:. stset dox, failure(fail) origin(time dob) enter(time doe)}
               {cmd: scale(365.25) exit(time mdy(12,1,1970))}


{title:示例：每个主题多条记录}

{pstd}分析时间变量是 {cmd:dox}，主题标识符变量是 {cmd:id}。指示变量 {cmd:allfail} 在每个主题的最后一条记录中等于1，表示所有主题在研究结束时失败{p_end}
        {cmd:. webuse diet2}
        {cmd:. stset dox, id(id) failure(allfail)}


{title:示例：每个主题多条记录，带有审查}

{pstd}分析时间变量是 {cmd:t1}，失败/审查指示变量是 {cmd:died}，其中 {cmd:died==1} 表示失败事件{p_end}
        {cmd:. webuse stan3}
        {cmd:. stset t1, id(id) failure(died)}

{pstd}分析时间变量是 {cmd:dox}，失败事件是与0不同的任何结果类别 ({cmd:fail!=0})，主题标识符变量是 {cmd:id}。 主题首次在时间0（默认）变为风险并被观察到{p_end}
        {cmd:. webuse diet2}
        {cmd:. stset dox, id(id) failure(fail)}

{pstd}主题首次在时间0变为风险，在变量 {cmd:doe} 记录的研究入组日期被观察{p_end}
{phang2}{cmd:. stset dox, id(id) failure(fail) enter(time doe)}

{pstd}主题首次在出生日期变为风险，并在变量 {cmd:dob} 记录的出生日期被观察{p_end}
{phang2}{cmd:. stset dox, id(id) failure(fail) origin(time dob)}

{pstd}主题在出生日期首次成为风险，并在研究入组日期被观察{p_end}
{phang2}{cmd:. stset dox, id(id) failure(fail) origin(time dob) enter(time doe)}

{pstd}设置自出生以来的时间（分析时间）的量测单位为年{p_end}
{phang2}{cmd:. stset dox, id(id) failure(fail) origin(time dob) enter(time doe)}
                 {cmd:scale(365.25)}

{pstd}指定类别1、3和13的 {cmd:fail} 作为失败事件，并且类别5表示主题必须从分析风险池中移除{p_end}
{phang2}{cmd:. stset dox, id(id) failure(fail==1 3 13) origin(time dob)}
                 {cmd: enter(time doe) scale(365.25) exit(fail==1 3 13 5)}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=I53Ji4lXoyg":学习如何为生存分析设置数据}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stset.sthlp>}