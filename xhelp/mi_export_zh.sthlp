{smcl}
{* *! version 1.0.13  11apr2019}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi export" "mansection MI miexport"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi export ice" "help mi_export_ice_zh"}{...}
{vieweralsosee "[MI] mi export nhanes1" "help mi_export_nhanes1_zh"}{...}
{viewerjumpto "Syntax" "mi_export_zh##syntax"}{...}
{viewerjumpto "Description" "mi_export_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_export_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mi_export_zh##remarks"}{...}
{viewerjumpto "Examples" "mi_export_zh##examples"}{...}
{viewerjumpto "References" "mi_export_zh##references"}
{help mi_export:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[MI] mi export} {hline 2}}导出 mi 数据{p_end}
{p2col:}({mansection MI miexport:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

        {cmd:mi export nhanes1} ...

        {cmd:mi export ice} ...

{pstd}
请参见 {bf:{help mi_export_nhanes1_zh:[MI] mi export nhanes1}} 和
{bf:{help mi_export_ice_zh:[MI] mi export ice}}。


{marker description}{...}
{title:描述}

{p 4 4 2}
使用 {cmd:mi}
{cmd:export} {cmd:nhanes1} 来导出国家健康与营养检查调查使用的数据格式。  

{p 4 4 2}
使用 {cmd:mi}
{cmd:export} {cmd:ice} 来导出 {cmd:ice}
(Royston {help mi export##R2004:2004},
         {help mi export##R2005a:2005a},
         {help mi export##R2005b:2005b},
         {help mi export##R2007a:2007},
         {help mi export##R2009a:2009}).

{p 4 4 2}
如果将来有其他标准出现用于记录多重插补数据，将会添加其他 {cmd:mi} {cmd:export} 子命令。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miexportRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
如果您希望将数据发送给其他 Stata 用户，请忽略 {cmd:mi} {cmd:export}，直接发送您的 {cmd:mi} 数据集。

{p 4 4 2}
然而，要将数据发送给其他软件的用户，您必须协商使用的格式。向非 Stata 用户发送数据最简单的方法可能是 {bf:{help mi_convert_zh:mi convert}}
您的数据为 flongsep 格式，然后使用
{cmd:outfile} （参见 {bf:{help outfile_zh:[D] outfile}})
或 {cmd:export delimited} （参见
{bf:{help import delimited:[D] import delimited}}）。
另请参见 {findalias frdatain}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse mheart1s20}

{pstd}描述 mi 数据{p_end}
{phang2}{cmd:. mi describe}

{pstd}以国家健康与营养检查调查使用的格式导出数据{p_end}
{phang2}{cmd:. mi export nhanes1 mheartnh}

{pstd}同上，但如果存在这些文件则替换{p_end}
{phang2}{cmd:. mi export nhanes1 mheartnh, replace}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse mheart1s20, clear}

{pstd}以 ice 使用的格式导出数据{p_end}
{phang2}{cmd:. mi export ice}

{pstd}列出一些导出的数据{p_end}
{phang2}{cmd:. list if _mj < 3 & (_mi == 7 | _mi == 8) , sepby(_mj)}

    {hline}


{marker references}{...}
{title:参考文献}

{marker R2004}{...}
{p 4 8 2}
Royston, P. 2004.
    {browse "http://www.stata-journal.com/sjpdf.html?articlenum=st0067":多重插补缺失值。}
    {it:Stata Journal} 4: 227-241.

{marker R2005a}{...}
{p 4 8 2}
------. 2005a.
    {browse "http://www.stata-journal.com/sjpdf.html?articlenum=st0067_1":多重插补缺失值： 更新。}
    {it:Stata Journal} 5: 188-201.

{marker R2005b}{...}
{p 4 8 2}
------. 2005b.
    {browse "http://www.stata-journal.com/sjpdf.html?articlenum=st0067_2":多重插补缺失值： ice 的更新。}
    {it:Stata Journal} 5: 527-536.

{marker R2007a}{...}
{p 4 8 2}
------. 2007.
    {browse "http://www.stata-journal.com/sjpdf.html?articlenum=st0067_3":多重插补缺失值： ice 的进一步更新，重点关注区间右删失。}
    {it:Stata Journal} 7: 445-464.

{marker R2009a}{...}
{p 4 8 2}
------. 2009.
    {browse "http://www.stata-journal.com/article.html?article=st0067_4":多重插补缺失值： ice 的进一步更新，重点关注分类变量。}
    {it:Stata Journal} 9: 466-477.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_export.sthlp>}