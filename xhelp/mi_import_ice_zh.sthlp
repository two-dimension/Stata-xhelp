{smcl}
{* *! version 1.0.16  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi import ice" "mansection MI miimportice"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] 介绍" "help mi_zh"}{...}
{vieweralsosee "[MI] mi import" "help mi_import_zh"}{...}
{viewerjumpto "语法" "mi_import_ice_zh##syntax"}{...}
{viewerjumpto "菜单" "mi_import_ice_zh##menu"}{...}
{viewerjumpto "描述" "mi_import_ice_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mi_import_ice_zh##linkspdf"}{...}
{viewerjumpto "选项" "mi_import_ice_zh##options"}{...}
{viewerjumpto "备注" "mi_import_ice_zh##remarks"}{...}
{viewerjumpto "参考文献" "mi_import_ice_zh##references"}
{help mi_import_ice:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[MI] mi import ice} {hline 2}}导入 ice 格式数据至 mi
{p_end}
{p2col:}({mansection MI miimportice:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi import ice} [{cmd:,} {it:options}]

{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt:{cmdab:auto:matic}}自动注册变量{p_end}
{synopt:{cmdab:imp:uted(}{varlist}{cmd:)}}要注册的 imputated 变量
{p_end}
{synopt:{cmdab:pas:sive(}{varlist}{cmd:)}}要注册的 passive 变量
{p_end}
{synopt:{cmd:clear}}允许替换未保存的数据{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:import} {cmd:ice} 将内存中的数据转换为 {cmd:mi} 数据，假设内存中的数据为 {cmd:ice} 格式。参考 
Royston ({help mi import ice##R2004:2004},
         {help mi import ice##R2005a:2005a},
         {help mi import ice##R2005b:2005b},
         {help mi import ice##R2007a:2007},
         {help mi import ice##R2009a:2009}) 获取有关 {cmd:ice} 的描述。

{p 4 4 2}
{cmd:mi} {cmd:import} {cmd:ice} 将数据转换为 {cmd:mi} 风格的 flong。
数据为 {cmd:mi} {cmd:set}.


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miimporticeRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{p 4 8 2}
{cmd:automatic}
    自动确定被插补变量的身份。建议使用此选项。

{p 4 8 2}
{cmd:imputed(}{varlist}{cmd:)} 指定插补变量的名称。此选项可以与 {cmd:automatic} 结合使用，在这种情况下，{cmd:automatic} 将意味着自动确定插补变量的身份以及指定的 {cmd:imputed()} 变量。实在难以想象为什么会想这样做。

{p 4 8 2}
{cmd:passive(}{varlist}{cmd:)} 指定被动变量的名称。此选项可以有效地与 {cmd:automatic} 结合使用。{cmd:automatic} 无法区分插补变量与被动变量，因此假设所有变动的变量都是插补变量。{cmd:passive()} 允许您指定被动的变动变量子集。

{p 4 4 2}
{it:关于上述选项}：
    如果未指定任何选项，则结果中的所有变量都将保持未注册状态。您随后可以使用 {cmd:mi} {cmd:varying} 确定变动变量并使用 {cmd:mi} {cmd:register} 适当地注册它们；请参阅 {bf:{help mi_varying_zh:[MI] mi varying}} 和 {bf:{help mi_set_zh:[MI] mi set}}。如果您遵循此方法，请记得在注册被动变量之前注册插补变量。

{p 4 8 2}
{cmd:clear}
    指定即使自上次保存到磁盘以来内存中的数据已更改，也可以替换内存中的数据。请记住， {cmd:mi} {cmd:import} {cmd:ice} 在内存中以 {cmd:ice} 数据开头，并以 {cmd:mi} 数据结束。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
将 {cmd:ice} 数据转换为 {cmd:mi} flong 的程序为

{p 8 12 2}
1.  {cmd:use} {cmd:ice} 数据。

{p 8 12 2}
2. 发出 {cmd:mi} {cmd:import} {cmd:ice} 命令，最好使用 {cmd:automatic} 选项，并可能还使用 {cmd:passive()} 选项，尽管其实无论被动变量是否被注册为插补变量，都无关紧要，只要它们被注册即可。

{p 8 12 2}
3. 执行 {it:{help mi_import##warning:使用 mi import nhanes1, ice, flong, 和 flongsep}} 中概述的检查 {bf:{help mi_import_zh:[MI] mi import}}。

{p 8 12 2}
4. 使用 {bf:{help mi_convert_zh:mi convert}} 将数据转换为更方便的宽格式或 mlong 格式。

{p 4 4 2}
例如，您有以下 ice 数据：

	. {cmd:webuse icedata}
	. {cmd:list, separator(2)}

{p 4 4 2}
{cmd:_mj} 和 {cmd:_mi} 是 {cmd:ice} 系统变量。这些数据包含原始数据和两个插补。变量 {cmd:b} 是插补的，变量 {cmd:c} 是被动的，实际上等于 {cmd:a}+{cmd:b}。这些数据与 {bf:{help mi_styles_zh:[MI] Styles}} 中讨论的相同，但为 {cmd:ice} 格式。

{p 4 4 2}
这些数据是否已很好地排序并不重要。要导入这些数据，您键入

	. {cmd:mi import ice, automatic}

{p 4 4 2}
尽管如果您键入 

	. {cmd:mi import ice, automatic passive(c)}

{p 4 4 2}
使用第一个命令，变量 {cmd:b} 和 {cmd:c} 都将被注册为插补。使用第二个命令，{cmd:c} 将被注册为被动。无论 {cmd:c} 被注册为插补还是被动，在统计上没有区别。

{p 4 4 2}
这些数据足够简短，以至于我们可以列出结果：

        . {cmd:list, separator(2)}

{p 4 4 2}
我们现在将执行 {it:{help mi_import##warning:使用 mi import nhanes1, ice, flong, 和 flongsep}} 中概述的检查 {bf:{help mi_import_zh:[MI] mi import}}, 
这些检查是运行 
{cmd:mi} {cmd:describe}
和 
{cmd:mi} {cmd:varying}
以验证变量是否已正确注册：

	. {cmd:mi describe}
	. {cmd:mi varying}

{p 4 4 2}
我们发现没有剩余问题，因此 
我们将数据转换为理想的宽格式：

	. {cmd:mi convert wide, clear}
	. {cmd:list}


{marker references}{...}
{title:参考文献}

{marker R2004}{...}
{p 4 8 2}
Royston, P. 2004.
    {browse "http://www.stata-journal.com/sjpdf.html?articlenum=st0067":缺失值的多重插补。}
    {it:Stata Journal} 4: 227-241.

{marker R2005a}{...}
{p 4 8 2}
------. 2005a.
    {browse "http://www.stata-journal.com/sjpdf.html?articlenum=st0067_1":缺失值的多重插补：更新。}
    {it:Stata Journal} 5: 188-201.

{marker R2005b}{...}
{p 4 8 2}
------. 2005b.
    {browse "http://www.stata-journal.com/sjpdf.html?articlenum=st0067_2":缺失值的多重插补：ice 的更新。}
    {it:Stata Journal} 5: 527-536.

{marker R2007a}{...}
{p 4 8 2}
------. 2007.
    {browse "http://www.stata-journal.com/sjpdf.html?articlenum=st0067_3":缺失值的多重插补：进一步更新 ice，重点在于区间截断。}
    {it:Stata Journal} 7: 445-464.

{marker R2009a}{...}
{p 4 8 2}
------. 2009.
    {browse "http://www.stata-journal.com/article.html?article=st0067_4":缺失值的多重插补：进一步更新 ice，关注分类变量。}
    {it:Stata Journal} 9: 466-477.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_import_ice.sthlp>}