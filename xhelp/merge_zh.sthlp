{smcl}
{* *! version 2.2.5  15may2019}{...}
{viewerdialog merge "dialog merge"}{...}
{vieweralsosee "[D] merge" "mansection D merge"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] append" "help append_zh"}{...}
{vieweralsosee "[D] cross" "help cross_zh"}{...}
{vieweralsosee "[D] frget" "help frget_zh"}{...}
{vieweralsosee "[D] frlink" "help frlink_zh"}{...}
{vieweralsosee "[D] joinby" "help joinby_zh"}{...}
{vieweralsosee "[D] save" "help save_zh"}{...}
{viewerjumpto "Syntax" "merge_zh##syntax"}{...}
{viewerjumpto "Menu" "merge_zh##menu"}{...}
{viewerjumpto "Description" "merge_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "merge_zh##linkspdf"}{...}
{viewerjumpto "Options" "merge_zh##options"}{...}
{viewerjumpto "Prior syntax" "merge_zh##oldsyntax"}{...}
{viewerjumpto "Examples" "merge_zh##examples"}{...}
{viewerjumpto "Video example" "merge_zh##video"}
{help merge:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] merge} {hline 2}}合并数据集{p_end}
{p2col:}({mansection D merge:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
对指定关键变量进行一对一合并

{p 8 15 2}
{opt mer:ge} {cmd:1:1} {varlist} 
{cmd:using} {it:{help filename_zh}} [{cmd:,} {it:options}]


{pstd}
对指定关键变量进行多对一合并

{p 8 15 2}
{opt mer:ge} {cmd:m:1} {varlist} 
{cmd:using} {it:{help filename_zh}} [{cmd:,} {it:options}]


{pstd}
对指定关键变量进行一对多合并 

{p 8 15 2}
{opt mer:ge} {cmd:1:m} {varlist} 
{cmd:using} {it:{help filename_zh}} [{cmd:,} {it:options}]


{pstd}
对指定关键变量进行多对多合并

{p 8 15 2}
{opt mer:ge} {cmd:m:m} {varlist} 
{cmd:using} {it:{help filename_zh}} [{cmd:,} {it:options}]


{pstd}
按观察值进行一对一合并

{p 8 15 2}
{opt mer:ge} {cmd:1:1 _n}
{cmd:using} {it:{help filename_zh}} [{cmd:,} {it:options}]


{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :选项}
{synopt :{opth keepus:ing(varlist)}}要保留的使用数据中的变量；
     默认是全部
{p_end}
{...}
{synopt :{opth gen:erate(newvar)}}用于标记合并结果的新变量名称；默认是 {cmd:_merge}
{p_end}
{...}
{synopt :{opt nogen:erate}}不创建 {cmd:_merge} 变量
{p_end}
{...}
{synopt :{opt nol:abel}}不从使用数据中复制值标签定义{p_end}
{...}
{synopt :{opt nonote:s}}不从使用数据中复制注释{p_end}
{...}
{synopt :{opt update}}用使用数据中的值更新主数据中同名变量的缺失值
{p_end}
{...}
{synopt :{opt replace}}用使用数据中的非缺失值替换主数据中同名变量的所有值（需要 {cmd:update}）
{p_end}
{...}
{synopt :{opt norep:ort}}不显示匹配结果摘要表
{p_end}
{synopt :{opt force}}允许字符串/数值变量类型不匹配而不报错
{p_end}

{syntab: 结果}
{synopt :{cmd:assert(}{help merge##results:{it:results}}{cmd:)}}指定所需的匹配结果
{p_end}
{...}
{synopt :{cmd:keep(}{help merge##results:{it:results}}{cmd:)}}指定要保留哪些匹配结果
{p_end}
{...}

{synopt :{opt sorted}}不排序；数据集已排序
{p_end}
{...}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt sorted} 在对话框中未出现。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 合并数据集 > 合并两个数据集}


{marker description}{...}
{title:描述}

{pstd}
{cmd:merge} 将当前内存中的数据集（称为主数据集）与
{it:{help filename_zh}}{cmd:.dta}（称为使用数据集）中对应的观察值进行合并，基于一个或多个关键变量匹配。{cmd:merge}
可以执行匹配合并（一对一、一对多、多对一和多对多），这些通常被数据库人员称为“联接”。{cmd:merge}
还可以执行顺序合并，后者在关系数据库中没有等效功能。

{pstd}
{cmd:merge} 用于从第二个数据集中添加新变量到现有观察值中。例如，当合并医院病人和出院数据集时，会使用 {cmd:merge}。如果您希望将新观察值添加到现有变量中，请参见 {bf:{help append_zh:[D] append}}。例如，当将当前出院数据添加到过去的出院数据时，您会使用 {cmd:append}。

{pstd}
要在不同的框架中关联数据集，您可以使用 {help frlink_zh} 和 {help frget_zh} 命令。关联和合并解决类似的问题，各有优缺点。例如，当处理个人级数据集和县级数据集时，您可能会更倾向于关联。当存在嵌套关联（如关联县数据集、县内学校数据集和学校内学生数据集）或需要将数据集与自身关联时，关联也效果不错。有关更多信息和示例，请参见 {manhelp frlink D}。

{pstd}
默认情况下，{cmd:merge} 创建一个新变量 {cmd:_merge}，包含关于合并数据集中每个观察值来源及其内容的数字代码。下面在 {help merge##results:匹配结果表} 中对此代码进行了解释。

{pstd}
关键变量不能是 {helpb data types:strL} 类型。

{pstd}
如果指定了 {it:filename} 而没有扩展名，则默认假设为 {cmd:.dta}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D mergeQuickstart:快速开始}

        {mansection D mergeRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:选项}

{phang}
{opth keepusing(varlist)}
    指定在合并的数据集中保留的使用数据中的变量。默认情况下，保留所有变量。
    例如，如果您的使用数据集中包含2,000个特征，但您只想保留 {cmd:sex} 和 {cmd:age}，则可以输入 {cmd:merge} ...{cmd:,}
    {cmd:keepusing(sex} {cmd:age)} ....

{phang}
{opth generate(newvar)} 指定包含匹配 {help merge##results:结果} 信息的变量应命名为 {it:newvar} 而不是 {cmd:_merge}。

{phang}
{cmd:nogenerate} 指定不创建 {cmd:_merge}。这在您也指定了 {cmd:keep(match)} 时非常有用，因为 {cmd:keep(match)} 确保所有 {cmd:_merge} 的值都将为3。

{phang}
{cmd:nolabel}
    指定忽略使用文件中的值标签定义。这个选项应该很少使用，因为主数据的定义已经在使用。

{phang}
{cmd:nonotes}
    指定不将使用数据集中的注释添加到合并的数据集中；请参见 {manhelp notes D:notes}。

{phang}
{cmd:update} 和 {cmd:replace}
    都执行更新合并，而不是标准合并。
    在标准合并中，主数据中的数据是权威且不可侵犯的。例如，如果主数据集和使用数据集都包含一个变量 {cmd:age}，则匹配的观察值将包含来自主数据集的值，而不匹配的观察值将包含其各自数据集的值。

{pmore}
    如果指定了 {cmd:update}，则匹配的观察值将用使用数据集中的值更新主数据集中的缺失值。
    主数据集中的非缺失值将保持不变。

{pmore}
    如果指定了 {cmd:replace}，则匹配的观察值将包含使用数据集中的值，除非使用数据集中的值为缺失。 

{pmore}
    指定 {cmd:update} 或 {cmd:replace} 将影响匹配代码的含义。有关详细信息，请参见 {mansection D mergeRemarksandexamplesTreatmentofoverlappingvariables:{it:重叠变量的处理}} 中的 {bf:[D] merge}。

{phang}
{cmd:noreport}
    指定 {cmd:merge} 不显示其匹配结果的摘要表。

{phang}
{opt force} 允许字符串/数值变量类型不匹配，从而导致使用数据集中出现缺失值。如果未指定，{cmd:merge} 将发出错误；如果指定，{cmd:merge} 将发出警告。

{dlgtab:结果}

{phang}
{cmd:assert(}{it:results}{cmd:)}
    指定所需的匹配结果。可能的 {it:results} 为 

{marker results}{...}
           数值    等效
            代码      单词 ({it:results})     描述
           {hline 67}
              {cmd:1}       {cmdab:mas:ter}             观察值仅出现在主数据集中
              {cmd:2}       {cmdab:us:ing}              观察值仅出现在使用数据集中
              {cmd:3}       {cmdab:mat:ch}              观察值同时出现在两个数据集中

              {cmd:4}       {cmdab:match_up:date}       观察值同时出现在两个数据集中，
{col 44}缺失值已更新
              {cmd:5}       {cmdab:match_con:flict}     观察值同时出现在两个数据集中，
{col 44}非缺失值存在冲突
           {hline 67}
           代码4和5只有在指定 {cmd:update} 选项时才能发生。
	   如果代码4和5都适用于某个观察值，则使用5。

{pmore}
数值代码和单词在 {cmd:assert()} 或 {cmd:keep()} 选项中使用时是等效的。

{pmore}
以下同义词是允许的：
{cmd:masters} 代替 {cmd:master}, 
{cmd:usings} 代替 {cmd:using},
{cmd:matches} 和 {cmd:matched} 代替 {cmd:match},
{cmd:match_updates} 代替 {cmd:match_update}, 
和 
{cmd:match_conflicts} 代替 {cmd:match_conflict}. 

{pmore}
    使用 {cmd:assert(match master)} 指定合并的文件必须只包含匹配的主观察值或使用观察值，以及不匹配的主观察值，而不能包含不匹配的使用观察值。指定 {cmd:assert()} 会导致 {cmd:merge} 在存在未明确允许的匹配结果时输出错误消息。

{pmore}
单词或代码的顺序并不重要，因此所有以下 {cmd:assert()} 规范都是相同的：

{pmore2}
{cmd:assert(match master)}

{pmore2}
{cmd:assert(master matches)}

{pmore2}
{cmd:assert(1 3)}

{pmore}
    当匹配结果包含不允许的代码时，返回代码9，并将包含意外结果的合并数据集保留在内存中，以便您进行调查。

{phang}
{cmd:keep(}{help merge##results:{it:results}}{cmd:)}
    指定要从合并数据集中保留哪些观察值。
    使用 {cmd:keep(match master)} 指定在合并之后保留仅匹配的观察值和不匹配的主观察值。

{pmore}
    {cmd:keep()} 与 {cmd:assert()} 不同，因为它从合并数据集中选择观察值，而不是强制要求。
    {cmd:keep()} 用于在不关心合并数据集中其他观察值的情况下选择给定的一组观察值。{cmd:assert()} 用于验证合并数据集中是否仅包含给定的一组观察值。

{pmore}
   您可以同时指定 {cmd:assert()} 和 {cmd:keep()}。如果您要求匹配的观察值和不匹配的主观察值，但只想要匹配的观察值，则可以指定 {cmd:assert(match master)} {cmd:keep(match)}。

{pmore}
    {cmd:assert()} 和 {cmd:keep()} 是简便的选项，其功能可以直接通过使用 {cmd:_merge} 实现。

            . {cmd:merge} ...{cmd:, assert(match master) keep(match)}

{pmore}
    与

            . {cmd:merge} ...
            . {cmd:assert _merge==1 | _merge==3}
            . {cmd:keep if _merge==3}

{pstd}
以下选项可与 {opt merge} 一起使用，但未在对话框中显示：

{phang}
{cmd:sorted}
    指定主数据集和使用数据集已按 {varlist} 排序。
    如果数据集已经排序，则 {cmd:merge} 的运行速度会快一些；这种差异几乎无法察觉，因此此选项仅在速度至关重要时才有意义。


{* 以下部分仅在线显示}{...}
{marker oldsyntax}{...}
{title:旧语法}

{pstd}
在 Stata 11 之前，{cmd:merge} 使用了一种更原始的语法。
使用旧语法的代码将无须修改即可运行。
为了帮助试图理解或调试过时代码的人，原始的 {cmd:merge} 帮助文件可以在 {help merge_10_zh:此处} 找到。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse autosize}{p_end}
{phang2}{cmd:. list}{p_end}
{phang2}{cmd:. webuse autoexpense}{p_end}
{phang2}{cmd:. list}{p_end}

{pstd}执行一对一匹配合并{p_end}
{phang2}{cmd:. webuse autosize}{p_end}
{phang2}{cmd:. merge 1:1 make using https://www.stata-press.com/data/r16/autoexpense}{p_end}
{phang2}{cmd:. list}{p_end}

    {hline}
{pstd}执行一对一匹配合并，要求仅有匹配{break}
（{cmd:merge} 命令故意导致错误消息。）{p_end}
{phang2}{cmd:. webuse autosize, clear}{p_end}
{phang2}{cmd:. merge 1:1 make using https://www.stata-press.com/data/r16/autoexpense, assert(match)}{p_end}
{phang2}{cmd:. tab _merge}{p_end}
{phang2}{cmd:. list}{p_end}

    {hline}
{pstd}执行一对一匹配合并，仅保留匹配并抑制 {cmd:_merge} 变量{p_end}
{phang2}{cmd:. webuse autosize, clear}{p_end}
{phang2}{cmd:. merge 1:1 make using https://www.stata-press.com/data/r16/autoexpense, keep(match) nogen}{p_end}
{phang2}{cmd:. list}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse dollars, clear}{p_end}
{phang2}{cmd:. list}{p_end}
{phang2}{cmd:. webuse sforce}{p_end}
{phang2}{cmd:. list}{p_end}

{pstd}在内存中执行多对一匹配合并与 {cmd:sforce}{p_end}
{phang2}{cmd:. merge m:1 region using https://www.stata-press.com/data/r16/dollars}
{p_end}
{phang2}{cmd:. list}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse overlap1, clear}{p_end}
{phang2}{cmd:. list, sepby(id)}{p_end}
{phang2}{cmd:. webuse overlap2}{p_end}
{phang2}{cmd:. list}{p_end}

{pstd}执行多对一匹配合并，展示更新选项{p_end}
{phang2}{cmd:. webuse overlap1}{p_end}
{phang2}{cmd:. merge m:1 id using https://www.stata-press.com/data/r16/overlap2, update}{p_end}
{phang2}{cmd:. list}{p_end}

    {hline}
{pstd}执行多对一匹配合并，展示更新替换选项{p_end}
{phang2}{cmd:. webuse overlap1, clear}{p_end}
{phang2}{cmd:. merge m:1 id using https://www.stata-press.com/data/r16/overlap2, update replace}{p_end}
{phang2}{cmd:. list}{p_end}

    {hline}
{pstd}执行一对多匹配合并，展示更新替换选项{p_end}
{phang2}{cmd:. webuse overlap2, clear}{p_end}
{phang2}{cmd:. merge 1:m id using https://www.stata-press.com/data/r16/overlap1, update replace}{p_end}
{phang2}{cmd:. list}{p_end}

    {hline}
{pstd}执行顺序合并{p_end}
{phang2}{cmd:. webuse sforce, clear}{p_end}
{phang2}{cmd:. merge 1:1 _n using https://www.stata-press.com/data/r16/dollars}{p_end}
{phang2}{cmd:. list}{p_end}

    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=niGZBRyyDuY":如何将文件合并为单个数据集}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <merge.sthlp>}