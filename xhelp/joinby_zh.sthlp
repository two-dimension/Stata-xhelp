{smcl}
{* *! version 1.2.3  15oct2018}{...}
{viewerdialog joinby "dialog joinby"}{...}
{vieweralsosee "[D] joinby" "mansection D joinby"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] append" "help append_zh"}{...}
{vieweralsosee "[D] cross" "help cross_zh"}{...}
{vieweralsosee "[D] fillin" "help fillin_zh"}{...}
{vieweralsosee "[D] merge" "help merge_zh"}{...}
{vieweralsosee "[D] save" "help save_zh"}{...}
{viewerjumpto "Syntax" "joinby_zh##syntax"}{...}
{viewerjumpto "Menu" "joinby_zh##menu"}{...}
{viewerjumpto "Description" "joinby_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "joinby_zh##linkspdf"}{...}
{viewerjumpto "Options" "joinby_zh##options"}{...}
{viewerjumpto "Example" "joinby_zh##example"}
{help joinby:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] joinby} {hline 2}}在组内形成所有配对组合{p_end}
{p2col:}({mansection D joinby:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:joinby} [{varlist}] {cmd:using} {it:{help filename_zh}}
[{cmd:,} {it:options}] 

{synoptset 21 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :选项}
{synopt :当观察匹配时:}{p_end}
{synopt :{opt update}}用来自{it:{help filename_zh}}的值替换内存中的缺失数据{p_end}
{synopt :{opt replace}}用来自{it:{help filename_zh}}的值替换内存中的所有数据{p_end}

{synopt :当观察不匹配时:}{p_end}
{synopt :{opt unm:atched}{cmd:(}{opt n:one}{cmd:)}}忽略所有; 默认选项{p_end}
{synopt :{opt unm:atched}{cmd:(}{opt b:oth}{cmd:)}}包含来自两个数据集的记录{p_end}
{synopt :{opt unm:atched}{cmd:(}{opt m:aster}{cmd:)}}包含内存中的数据{p_end}
{synopt :{opt unm:atched}{cmd:(}{opt u:sing}{cmd:)}}包含来自{it:{help filename_zh}}的数据{p_end}

{synopt :{opth _merge(varname)}}{it:varname}标记生成观测的来源; 默认值为 {opt _merge}{p_end}
{synopt :{opt nol:abel}}不从{it:{help filename_zh}}复制值标签定义{p_end}
{synoptline}
{p 4 6 2}{...}
{it:varlist} 不得包含 {helpb data types:strL}类型。
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 合并数据集 > 在组内形成所有配对组合}


{marker description}{...}
{title:描述}

{pstd}
{cmd:joinby} 在由 {varlist} 形成的组内，将内存中的数据集与 {it:{help filename_zh}} 进行连接。这里的连接是指形成所有配对组合。{it:filename} 需要按 {it:varlist} 排序。如果 {it:filename} 被指定但没有扩展名，则默认为 {cmd:.dta}。

{pstd}
如果未指定 {it:varlist}，则 {cmd:joinby} 将内存中的数据集及 {it:filename} 中的共同变量作为 {it:varlist}。

{pstd}
独属于一方或另一方的数据会被忽略，除非 {opt unmatched()} 指定其它方式。无论您是加载一个数据集并连接另一个数据集，还是反之，得到的观测数量均无差异。

{pstd}
然而，如果两个数据集之间有共同变量，在那些观测中合并的数据集将包含主数据的值。可以通过 {opt update} 和 {opt replace} 选项来修改此行为。 


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D joinbyQuickstart:快速入门}

        {mansection D joinbyRemarksandexamples:备注和示例}

{pstd}
上面的部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:选项}

{phang}
{opt update} 修改 {cmd:joinby} 的匹配观测时的操作。默认情况下，当在两个数据集中找到相同变量时，保留主数据的值。但是，如果指定了 {opt update}，则在主数据含有缺失值的地方，保留来自使用数据集的值。

{phang}
{opt replace} 仅与 {opt update} 一同使用，指定用使用数据集中相应的值替换主数据集中非缺失值。然而，非缺失值永远不会被缺失值替换。

{phang}
{opt unmatched}{cmd:(}{opt none}|{opt both}|{opt master}|{opt using}{cmd:)} 指定是否保留独属于其中一个数据集的观测，并将来自另一个数据集的变量设置为缺失。有效值为

{p 12 22 2}
{opt none}{space 4}忽略所有不匹配的观测（默认）{p_end}
{p 12 22 2}
{opt both}{space 4}包含来自主数据和使用数据的不匹配观测{p_end}
{p 12 22 2}
{opt master}{space 2}包含来自主数据的不匹配观测{p_end}
{p 12 22 2}
{opt using}{space 3}包含来自使用数据的不匹配观测

{phang}
{opth _merge(varname)} 指定将标记生成观测来源的变量名称。默认名称为 {cmd:_merge(_merge)}。为了与早期版本的 {cmd:joinby} 兼容，只有在指定 {cmd:unmatched} 时，{cmd:_merge} 才会被生成。

{phang}
{cmd:nolabel} 防止 Stata 将磁盘数据集中的值-标签定义复制到内存中的数据集中。即使您没有指定此选项，磁盘数据集的标签定义也不会替换内存中已有的标签定义。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse child}{p_end}
{phang2}{cmd:. describe}{p_end}
{phang2}{cmd:. list}{p_end}
{phang2}{cmd:. webuse parent}{p_end}
{phang2}{cmd:. describe}{p_end}
{phang2}{cmd:. list, sep(0)}{p_end}
{phang2}{cmd:. sort family_id}

{pstd}将内存中的父母信息与 https://www.stata-press.com 上的数据中的儿童信息连接{p_end}
{phang2}{cmd:. joinby family_id using}
            {cmd:https://www.stata-press.com/data/r16/child}

{pstd}描述结果数据集{p_end}
{phang2}{cmd:. describe}

{pstd}列出结果数据{p_end}
{phang2}{cmd:. list, sepby(family_id) abbrev(12)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <joinby.sthlp>}