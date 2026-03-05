{smcl}
{* *! version 1.0.17  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi merge" "mansection MI mimerge"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] merge" "help merge_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi append" "help mi_append_zh"}{...}
{viewerjumpto "Syntax" "mi_merge_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_merge_zh##menu"}{...}
{viewerjumpto "Description" "mi_merge_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_merge_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_merge_zh##options"}{...}
{viewerjumpto "Remarks" "mi_merge_zh##remarks"}{...}
{viewerjumpto "Stored results" "mi_merge_zh##results"}
{help mi_merge:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[MI] mi merge} {hline 2}}合并 mi 数据{p_end}
{p2col:}({mansection MI mimerge:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi} {cmd:merge} {cmd:1:1} 
{varlist} {cmd:using} {it:{help filename_zh}} [{cmd:,} {it:options}]

{p 8 12 2}
{cmd:mi} {cmd:merge} {cmd:m:1} 
{varlist} {cmd:using} {it:{help filename_zh}} [{cmd:,} {it:options}]

{p 8 12 2}
{cmd:mi} {cmd:merge} {cmd:1:m} 
{varlist} {cmd:using} {it:{help filename_zh}} [{cmd:,} {it:options}]

{p 8 12 2}
{cmd:mi} {cmd:merge} {cmd:m:m} 
{varlist} {cmd:using} {it:{help filename_zh}} [{cmd:,} {it:options}]


{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:选项}
{synopt:{cmdab:gen:erate(}{newvar}{cmd:)}}创建 {it:newvar} 记录观察如何匹配{p_end}
{synopt:{cmdab:nol:abel}}不从使用数据复制值标签定义{p_end}
{synopt:{cmdab:nonote:s}}不复制使用数据中的注释{p_end}
{synopt:{cmdab:norep:ort}}不显示结果摘要表{p_end}
{synopt:{cmdab:force}}允许字符串/数值变量类型不匹配而不会报错{p_end}

{syntab:结果}
{synopt:{cmd:assert(}{it:results}{cmd:)}}要求观察结果匹配如指定{p_end}
{synopt:{cmd:keep(}{it:results}{cmd:)}}要保留的结果{p_end}

{synopt:{cmdab:noup:date}}见 {bf:{help mi_noupdate_option_zh:[MI] noupdate option}}{p_end}
{synoptline}
{p2colreset}{...}


{p 4 8 2}
注意：

{p 8 14 2}
1.  行话：{break}
    匹配变量 = {it:varlist}，用于执行匹配的变量{break}
    {bind:         }主数据 = 内存中的数据{break}
    {bind:          }使用数据 = 磁盘上的数据 ({it:filename})

{p 8 12 2}
2.  主数据必须是 {cmd:mi} {cmd:set}; 使用数据可以是 {cmd:mi} {cmd:set}。

{p 8 12 2}
3.  {cmd:mi} {cmd:merge} 在语法和逻辑上等同于 
    {bf:{help merge_zh:merge}}。  

{p 8 12 2}
4.  {cmd:mi} {cmd:merge} 在语法上与 {cmd:merge} 
    不同，因为 {cmd:nogenerate}, {cmd:sorted}, {cmd:keepusing()}, 
    {cmd:update} 和 {cmd:replace} 选项
    不被允许。并且， 
    除非指定 {cmd:generate()} 选项，否则不会创建 {cmd:_merge} 变量。

{p 8 12 2}
5.  如果 {it:filename} 包含空格或其他特殊字符，必须用双引号括起来。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:merge} 是 {cmd:mi} 数据的 {cmd:merge};
有关合并数据集的描述，请参阅 {bf:{help merge_zh:[D] merge}}。

{p 4 4 2}
建议匹配变量（语法图中的 {varlist}）不包括插补或被动变量，或任何变化或超级变化的变量。如果包含这些变量，则 {it:m}=0 中匹配变量的值将用于控制合并，即使在 {it:m}=1、{it:m}=2、...、{it:m}={it:M}。因此，{it:m}=0、{it:m}=1、...、{it:m}={it:M} 将都被相同地合并，并且在 {it:m}=0 中的观察与 {it:m}>0 中的观察之间将持续保持一对一关系。


{marker linkspdf}{...}
{title:指向 PDF 文档的链接}

        {mansection MI mimergeRemarksandexamples:备注和示例}

{pstd}
上述章节不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:选项}

{p 4 8 2}
{cmd:generate(}{newvar}{cmd:)}
    创建新变量 {it:newvar}，包含结果数据中每个观察的匹配状态。代码为 
    {cmd:1}、{cmd:2} 和 {cmd:3}，详见下表。

{p 4 8 2}
{cmd:nolabel}
    防止从使用数据复制值标签定义到主数据。即使未指定此选项，使用数据中的标签定义也不会替换主数据的标签定义。

{p 4 8 2}
{cmd:nonotes}
    防止将使用数据中的任何注释合并到主数据中；见 {bf:{help notes_zh:[D] notes}}。

{p 4 8 2}
{cmd:noreport}
    抑制 {cmd:mi} {cmd:merge} 通常会显示的报告。

{phang}
{opt force} 允许字符串/数值变量类型不匹配，导致使用数据集中的缺失值。如果省略此项，{cmd:mi merge} 会发出错误消息；如果指定此项，{cmd:mi merge} 会发出警告消息。

{dlgtab: 结果}

{p 4 8 2}
{cmd:assert(}{it:results}{cmd:)}
    指定观察应如何匹配。如果结果不如预期，将会发出错误消息，且主数据将保持不变。

            代码      字段           描述
           {hline 63}
              {cmd:1}       {cmdab:mas:ter}         观察只出现在主数据中
              {cmd:2}       {cmdab:us:ing}          观察只出现在使用数据中
              {cmd:3}       {cmdab:mat:ch}          观察同时出现在两者中
           {hline 63}
	   （数字代码和词汇是等价的；可以使用任一。）

{p 8 8 2}
    {cmd:assert(match)} 指定主数据与使用数据中的所有观察应匹配，如果不匹配，则应发出错误消息。  
    {cmd:assert(match} {cmd:master)} 意味着所有观察匹配或只出现在主数据中。
    欲了解更多信息，请参见 {bf:{help merge_zh:[D] merge}}。

{p 4 8 2}
{cmd:keep(}{it:results}{cmd:)}
    指定要从合并数据集中保留哪些观察。
    {cmd:keep(match)} 将指定仅保留匹配的观察。
    
{p 4 8 2}
{cmd:noupdate}
    在某些情况下，抑制该命令可能执行的自动 {cmd:mi} {cmd:update}; 
    见 {bf:{help mi_noupdate_option_zh:[MI] noupdate option}}。
    

{marker remarks}{...}
{title:备注}

{p 4 4 2}
当数据为 {cmd:mi} 时，使用 {cmd:mi} {cmd:merge} 将与使用 {cmd:merge} 一样。

{p 4 4 2}
备注分为以下几部分：

	{help mi_merge##nonmi:与非 mi 数据合并}
	{help mi_merge##mi:与 mi 数据合并}
	{help mi_merge##overlap:与包含重叠变量的 mi 数据合并}


{marker nonmi}{...}
{title:与非 mi 数据合并}

{p 4 4 2}
假设文件 {cmd:ipats.dta} 包含一所地方医院重症监护病房患者的数据。数据为 {cmd:mi} {cmd:set}，{it:M}=5，并且缺失值已被插补。文件 {cmd:nurses.dta} 包含护士信息，且不是 {cmd:mi} 数据。您希望将相关护士信息添加到每位患者中。输入：

	. {cmd:use ipats, clear}
	. {cmd:mi merge m:1 nurseid using nurses, keep(master)}

{p 4 4 2}
结果数据仍为 {cmd:mi} {cmd:set}，{it:M}=5。新变量未注册。


{marker mi}{...}
{title:与 mi 数据合并}

{p 4 4 2}
现在假设上述情况相同，但这次 {cmd:nurses.dta} 是 {cmd:mi} 数据。某些护士变量存在缺失值，并且已被插补。{it:M} 为 6。要合并数据集，您输入和之前一样：

	. {cmd:use ipats, clear}
	. {cmd:mi merge m:1 nurseid using nurses, keep(master)}

{p 4 4 2}
请记住，{it:M}=5 在 {cmd:ipats.dta} 中，而 {it:M}=6 在 {cmd:nurses.dta} 中。
结果数据具有 {it:M}=6，为更大的值。{it:m}=6 中的患者变量存在缺失值，因此我们需要插补它们或通过键入 {cmd:mi} {cmd:set} {cmd:M} 
{cmd:=} {cmd:5} 来删除额外的插补。


{marker overlap}{...}
{title:与含重叠变量的 mi 数据合并}

{p 4 4 2}
现在假设上述情况相同，但这次 {cmd:nurses.dta} 还包含 {cmd:nurseid} 以外的其他变量，这些变量也出现在 {cmd:ipats.dta} 中。这种变量——未用作匹配变量的公共变量——称为重叠变量。
假设 {cmd:seniornurse} 是这样的一个变量。
假设 {cmd:seniornurse} 没有缺失值且在 {cmd:ipats.dta} 中未注册，但在 {cmd:nurses.dta} 中存在缺失值并注册为插补。

{p 4 4 2}
如果合并 {cmd:nurses.dta} 添加的新观察有 {cmd:seniornurse} 等于缺失，则希望 {cmd:seniornurse} 注册为插补。另一方面，如果添加的观察中没有 {cmd:seniornurse} 等于缺失，则希望该变量保持未注册。
这正是 {cmd:mi} {cmd:merge} 所做的。
即：

{p 8 12 2}
o  唯一属于主数据的变量将根据它们在主数据中的注册方式进行注册。

{p 8 12 2}
o  唯一属于使用数据的变量将根据它们在使用数据中的注册方式进行注册。

{p 8 12 2}
o  重叠变量如果在最终结果中没有未匹配的使用观察，则将根据它们在主数据中的注册方式进行注册。

{p 8 12 2}
o  如果在最终结果中存在未匹配的使用观察，则不包含缺失值的唯一变量将在保留的观察中按照它们在主数据中的注册方式进行注册。所有在主数据中注册为插补的变量也如此。

{p 8 12 2}
o  在保留的未匹配观察中存在缺失值的变量，如果在使用数据中注册为插补，则将注册为插补；如果注册为被动，则将注册为被动。

{p 4 4 2}
因此，如果我们键入 

	. {cmd:mi merge m:1 nurseid using nurses, keep(master)}

{p 4 4 2}
而不是 

	. {cmd:mi merge m:1 nurseid using nurses, gen(howmatch)}
	. {cmd:keep if howmatch==3}

{p 4 4 2}
如果你想保留匹配的观察，最好指定 {cmd:merge} 的 {cmd:keep()} 选项。


{marker results}{...}
{title:存储的结果}

{p 4 4 2}
{cmd:mi merge} 在 {cmd:r()} 中存储以下内容：

	标量
	    {cmd:r(N_master)}	主数据中 {it:m}=0 的观察数量
	    {cmd:r(N_using)}	使用数据中 {it:m}=0 的观察数量
	    {cmd:r(N_result)}	结果中 {it:m}=0 的观察数量

	    {cmd:r(M_master)}	主数据中的插补数量（{it:M}）
	    {cmd:r(M_using)}	使用数据中的插补数量（{it:M}） 
	    {cmd:r(M_result)}	结果中的插补数量（{it:M}） 

	宏
	    {cmd:r(newvars)}        新添加的变量

{p 4 4 2}
因此，结果数据中的值为 

	{it:N} = {it:m}=0 中的观察数量 
	  = {cmd:r(N_result)}

	{it:k} = 变量数量 
          = {it:k_master} {cmd:+ `:word count `r(newvars)''}

	{it:M} = 插补数量
          = {cmd:max(r(M_master), r(M_using))}
          = {cmd:r(M_result)}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_merge.sthlp>}