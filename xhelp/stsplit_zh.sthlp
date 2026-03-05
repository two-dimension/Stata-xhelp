{smcl}
{* *! version 1.2.3  15oct2018}{...}
{viewerdialog stsplit "dialog stsplit"}{...}
{viewerdialog stjoin "dialog stjoin"}{...}
{vieweralsosee "[ST] stsplit" "mansection ST stsplit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{viewerjumpto "Syntax" "stsplit_zh##syntax"}{...}
{viewerjumpto "Menu" "stsplit_zh##menu"}{...}
{viewerjumpto "Description" "stsplit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "stsplit_zh##linkspdf"}{...}
{viewerjumpto "Options for stsplit" "stsplit_zh##options_stsplit"}{...}
{viewerjumpto "Options for stjoin" "stsplit_zh##options_stjoin"}{...}
{viewerjumpto "Examples" "stsplit_zh##examples"}
{help stsplit:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[ST] stsplit} {hline 2}}拆分和合并时间跨度记录{p_end}
{p2col:}({mansection ST stsplit:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
在指定时间拆分

{p 8 16 2}{cmd:stsplit} {newvar} [{it:{help if_zh}}]{cmd:,} 
{c -(}{cmd:at(}{it:{help numlist_zh}}{cmd:)} | {opt ev:ery(#)}{c )-}
[{it:{help stsplit##stsplitDT_options:stsplitDT_options}}]


{phang}
在失败时间拆分

{p 8 16 2}{cmd:stsplit} [{it:{help if_zh}}]{cmd:,} {cmd:at(}{opt f:ailures)} 
[{it:{help stsplit##stsplitFT_options:stsplitFT_options}}]


{phang}
合并事件

{p 8 15 2}{cmd:stjoin} [{cmd:,} {opth c:ensored(numlist)}]


{synoptset 18 tabbed}{...}
{marker stsplitDT_options}{...}
{synopthdr :stsplitDT_options}
{synoptline}
{syntab :主要}
{p2coldent :* {opth at(numlist)}}在指定的分析时间拆分记录{p_end}
{p2coldent :* {opt ev:ery(#)}}在分析时间是{it:#}的倍数时拆分记录{p_end}
{synopt :{opt af:ter(spec)}}在{opt at()}或{opt every()}中使用自{it:spec}起的时间，而不是从风险开始起的时间{p_end}
{synopt :{opt trim}}排除范围外的观察值{p_end}

{synopt :{opt nopre:serve}}不保存原始数据；程序员选项{p_end}
{synoptline}
{p2colreset}{...}
{pstd}
* 在指定时间使用{cmd:stsplit}时，{opt at(numlist)}或{opt every(#)}至少需要一个。


{synoptset 18 tabbed}{...}
{marker stsplitFT_options}{...}
{synopthdr :stsplitFT_options}
{synoptline}
{syntab :主要}
{p2coldent :* {cmd:at(}{cmdab:f:ailures)}}在观察到的失败时间拆分{p_end}
{synopt :{opth st:rata(varlist)}}将拆分限制在由{it:varlist}定义的层次内的失败{p_end}
{synopt :{opth r:iskset(newvar)}}创建一个名为{it:newvar}的风险集ID变量{p_end}

{synopt :{opt nopre:serve}}不保存原始数据；程序员选项{p_end}
{synoptline}
{p2colreset}{...}
{pstd}
* 在失败时间使用{cmd:stsplit}时，{cmd:at(failures)}是必需的。

{p 4 6 2}
在使用{cmd:stsplit}或{cmd:stjoin}之前，您必须使用{opt id()}选项对数据集进行{cmd:stset}；请参见 {manhelp stset ST}.{p_end}
{p 4 6 2}
{opt nopreserve}不在对话框中显示。{p_end}


{marker menu}{...}
{title:菜单}

    {title:stsplit}

{phang2}
{bf:统计 > 生存分析 > 设置和工具 >}
    {bf:拆分时间跨度记录}

    {title:stjoin}

{phang2}
{bf:统计 > 生存分析 > 设置和工具 >}
     {bf:合并时间跨度记录}


{marker description}{...}
{title:描述}

{pstd}
使用{cmd:stsplit}，并配合{opth at(numlist)}或{opt every(#)}选项，在被认定的风险开始后或者之后的指定时间点，将事件拆分为两个或多个事件。每个生成记录包含一个主题在一个时间区间的跟踪。在多个时间尺度上可以通过重复使用{cmd:stsplit}来实现扩展。
{newvar}指定创建的变量的名称，以包含观察的类别。新变量记录每个新观察所属的区间，并进行下限编制。

{pstd}
{cmd:stsplit, at(failures)}在失败时间（按层次）执行事件拆分。

{pstd}
{cmd:stjoin}执行相反操作，即在不丢失信息的情况下将事件重新合并在一起。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ST stsplitQuickstart:快速入门}

        {mansection ST stsplitRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options_stsplit}{...}
{title:stsplit选项}

{dlgtab:主要}

{phang}
{opth at(numlist)}或{opt every(#)}在语法一中是必需的；{cmd:at(failures)}在语法二中是必需的。这些选项指定了记录将要拆分的分析时间。

{pmore}
{cmd:at(5(5)20)}在t=5、t=10、t=15和t=20拆分记录。

{pmore}
如果指定了{cmd:at(}[{it:...}]{cmd:max)}，{opt max}将被替换为一个合适的大值。例如，要将记录每五个分析时间单位从时间零到我们数据中的最大跟踪时间进行拆分，可以通过键入{cmd:summarize _t}找出最大时间值，然后将其显式键入{cmd:at()}选项中，或者我们可以只指定{cmd:at(0(5)max)}。

{pmore}
{opt every(#)}是{cmd:at(}{it:#}{cmd:(}{it:#}{cmd:)max)}的简化；也就是说，事件在每个{it:#}的正倍数处拆分。

{phang}
{opt after(spec)}为{opt at()}或{opt every()}指定参考时间。语法一可以被视为对应于{cmd:after(}{it:风险开始时间}{cmd:)》，尽管您无法真正输入这个。您可以输入{cmd:after(time=birthdate)}或{cmd:after(time=marrydate)}或{cmd:after(marrydate)}。

{pmore}
{it:spec}的语法为

{p 12 20 2}[{c -(}{cmd:time} | {cmd:t} | {cmd:_t}{c )-} {cmd:=}]
{c -(}{it:exp} | {opt min(exp)} | {opt asis(exp)}{c )-}

	其中

{pmore}
{opt time}指定表达式在与{cmd:stset}中的{it:timevar}相同的时间单位中进行评估。 这是默认值。

{pmore}
{opt t}和{opt _t}指定表达式以分析时间单位进行评估。 {opt t}和{opt _t}是同义词；无论您指定其中一个还是另一个都没有区别。

{pmore}
{it:exp}指定参考时间。对于多事件数据，{it:exp}在主题ID内应该是常量。

{pmore}
{opt min(exp)}指定对于多事件数据，在ID内取{it:exp}的最小值。

{pmore}
{opt asis(exp)}指定对于多事件数据，允许{it:exp}在ID内变化。

{phang}
{cmd:trim}指定排除值少于{opt at()}中列出的最小值或超过最大值的观察值。这样的观察值不会从数据中删除；{opt trim}只是将它们在变量{hi:_st}中的值设置为0，以便它们不会被使用，但仍然可以在下次使用{cmd:stset}时检索。

{phang}
{opth strata(varlist)}指定最多五个层次变量。具有相等变量值的观察值被假定在同一层次中。{opt strata()}将事件拆分限制在发生的失败之内，并且当指定层次时内存要求降低。

{phang}
{opth riskset(newvar)}指定一个新变量的名称，该变量记录事件发生的独特风险集，其他情况下为缺失。

{pstd}
以下选项可与{cmd:stsplit}一起使用，但未显示在对话框中：

{phang}
{opt nopreserve}是供程序员使用的。通过不保存原始数据来加速转换，如果发生错误或您按下{hi:Break}，可以恢复原始数据。程序员通常在已经保存了原始数据时指定此选项。 {opt nopreserve}不影响转换。


{marker options_stjoin}{...}
{title:stjoin的选项}

{phang}
{opth censored(numlist)}指定失败变量{it:failvar}的值，从{cmd:stset} {it:...}{cmd:, failure(}{it:failvar}
{it:...}{cmd:)}表示“无事件”（删失）。

{pmore}
如果您使用{cmd:stjoin}在{cmd:stsplit}之后重新连接记录，您不需要指定{opt censored()}。只需在输入{cmd:stjoin}之前记得删除{cmd:stsplit}创建的变量。请参见{mansection ST stsplitRemarksandexamplesex4:示例 4}在{bind:{bf:[ST] stsplit}}中。

{pmore}
如果在对数据集进行{cmd:stset}时，您指定了{opt failure(failvar)}而不是{cmd:failure(}{it:failvar=}{it:...}{cmd:)}，则您也不需要指定{opt censored()}。那么{cmd:stjoin}就知道{it:failvar} = 0和{it:failvar} = .（缺失）对应于无事件。两个记录可以合并，如果它们是连续的并记录了相同的数据，并且第一条记录具有{it:failvar} = 0或{it:failvar} = .，这意味着在该时间没有事件。

{pmore}
如果在对数据集进行{cmd:stset}时指定了{cmd:failure(}{it:failvar=}{it:...}{cmd:)}，则您可能需要指定{opt censored()}，并且您可能确实需要它。如果{cmd:stjoin}要合并记录，则需要知道哪些事件不计入并可以被丢弃。如果唯一这样的事件是{it:failvar} = .，那么您不需要指定{opt censored()}。


{marker examples}{...}
{title:在指定时间拆分数据的示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse diet}

{pstd}描述数据集{p_end}
{phang2}{cmd:. describe}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset dox, failure(fail) origin(time dob) enter(time doe)}
           {cmd:scale(365.25) id(id)}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id dob doe dox fail _t0 _t if id == 1 | id == 34}

{pstd}按指定时间的年龄拆分数据{p_end}
{phang2}{cmd:. stsplit ageband, at(40(10)70)}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id _t0 _t ageband fail height if id == 1 | id == 34}

{pstd}按研究时间也拆分数据{p_end}
{phang2}{cmd:. stsplit timeband, at(0(5)25) after(time=doe)}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list id _t0 _t ageband timeband if id == 1 | id == 34}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse stanford, clear}

{pstd}创建变量以保持随访时间，使得所有患者的移植时间相同{p_end}
{phang2}{cmd:. generate enter = 320 - wait}{p_end}
{phang2}{cmd:. generate exit = 320 + stime}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset exit, enter(time enter) failure(died) id(id)}

{pstd}在移植时间拆分数据{p_end}
{phang2}{cmd:. stsplit posttran, at(0,320)}{p_end}
    {hline}


{title:在失败时间拆分数据的示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse ocancer, clear}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list in 1/6, sep(0)}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset time, failure(cens) id(patient)}

{pstd}在失败时间拆分数据{p_end}
{phang2}{cmd:. stsplit, at(failures)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse cancer, clear}

{pstd}生成ID变量{p_end}
{phang2}{cmd:. generate id = _n}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset studytime, failure(died) id(id)}

{pstd}在失败时间拆分数据，为每个观察添加风险集标识符{p_end}
{phang2}{cmd:. stsplit, at(failures) riskset(RS)}{p_end}
    {hline}


{title:合并事件的示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse diet, clear}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset dox, failure(fail) origin(time dob) enter(time doe)}
                {cmd:scale(365.25) id(id)}

{pstd}按指定时间的年龄拆分数据{p_end}
{phang2}{cmd:. stsplit ageband, at(40(10)70)}

{pstd}删除{cmd:stsplit}创建的变量{p_end}
{phang2}{cmd:. drop ageband}

{pstd}合并已拆分的数据{p_end}
{phang2}{cmd:. stjoin}

{pstd}确认数据与{cmd:diet.dta}匹配，除了由{cmd:stset}设置数据所创建的变量{p_end}
{phang2}{cmd:. cf _all using https://www.stata-press.com/data/r16/diet, all}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stsplit.sthlp>}