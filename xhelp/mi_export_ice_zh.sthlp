{smcl}
{* *! version 1.0.14  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi export ice" "mansection MI miexportice"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] mi export" "help mi_export_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi import ice" "help mi_import_ice_zh"}{...}
{viewerjumpto "Syntax" "mi_export_ice_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_export_ice_zh##menu"}{...}
{viewerjumpto "Description" "mi_export_ice_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_export_ice_zh##linkspdf"}{...}
{viewerjumpto "Option" "mi_export_ice_zh##option"}{...}
{viewerjumpto "Remarks" "mi_export_ice_zh##remarks"}{...}
{viewerjumpto "References" "mi_export_ice_zh##references"}
{help mi_export_ice:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[MI] mi export ice} {hline 2}}导出 mi 数据为 ice 格式{p_end}
{p2col:}({mansection MI miexportice:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi export ice} 
[{cmd:,}
{cmd:clear}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:export} {cmd:ice} 
将内存中的 {cmd:mi} 数据转换为 {cmd:ice} 格式。
请参见 Royston
({help mi export ice##R2004:2004},
 {help mi export ice##R2005a:2005a},
 {help mi export ice##R2005b:2005b},
 {help mi import ice##R2007a:2007},
 {help mi import ice##R2009a:2009}) 对 {cmd:ice} 的描述。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miexporticeRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker option}{...}
{title:选项}

{p 4 8 2}
{cmd:clear}
    指定即使自上次保存数据到磁盘以来数据已经更改，也可以替换内存中的数据。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:mi} {cmd:export} {cmd:ice} 是 
{bf:{help mi_import_ice_zh:mi import ice}} 的逆操作。
下面我们使用 {cmd:mi} {cmd:export} {cmd:ice} 将 
{cmd:miproto.dta} 转换为 {cmd:ice} 格式。 {cmd:miproto.dta} 正好 
处于宽格式，但这并不相关。

	. {cmd:webuse miproto}
	. {cmd:mi describe}
	. {cmd:list}
	. {cmd:mi export ice}
	. {cmd:list, separator(2)}


{marker references}{...}
{title:参考文献}

{marker R2004}{...}
{p 4 8 2}
Royston, P. 2004.
    {browse "http://www.stata-journal.com/sjpdf.html?articlenum=st0067":缺失值的多重插补.}
    {it:Stata Journal} 4: 227-241.

{marker R2005a}{...}
{p 4 8 2}
------. 2005a.
    {browse "http://www.stata-journal.com/sjpdf.html?articlenum=st0067_1":缺失值的多重插补：更新.}
    {it:Stata Journal} 5: 188-201.

{marker R2005b}{...}
{p 4 8 2}
------. 2005b.
    {browse "http://www.stata-journal.com/sjpdf.html?articlenum=st0067_2":缺失值的多重插补： ice 的更新.}
    {it:Stata Journal} 5: 527-536.

{marker R2007a}{...}
{p 4 8 2}
------. 2007.
    {browse "http://www.stata-journal.com/sjpdf.html?articlenum=st0067_3":缺失值的多重插补： ice 的进一步更新，强调区间审查.}
    {it:Stata Journal} 7: 445-464.

{marker R2009a}{...}
{p 4 8 2}
------. 2009.
    {browse "http://www.stata-journal.com/article.html?article=st0067_4":缺失值的多重插补： ice 的进一步更新，强调分类变量.}
    {it:Stata Journal} 9: 466-477.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_export_ice.sthlp>}