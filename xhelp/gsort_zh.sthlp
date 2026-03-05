{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog gsort "dialog sort, message(-gsort-)"}{...}
{vieweralsosee "[D] gsort" "mansection D gsort"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] sort" "help sort_zh"}{...}
{viewerjumpto "语法" "gsort_zh##syntax"}{...}
{viewerjumpto "菜单" "gsort_zh##menu"}{...}
{viewerjumpto "描述" "gsort_zh##description"}{...}
{viewerjumpto "PDF文档链接" "gsort_zh##linkspdf"}{...}
{viewerjumpto "选项" "gsort_zh##options"}{...}
{viewerjumpto "示例" "gsort_zh##examples"}
{help gsort:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] gsort} {hline 2}}升序和降序排序{p_end}
{p2col:}({mansection D gsort:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:gsort}
[{cmd:+}|{cmd:-}]
{varname}
[[{cmd:+}|{cmd:-}]
{varname} {it:...}]
[{cmd:,}
{opth g:enerate(newvar)} {opt m:first}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 排序}


{marker description}{...}
{title:描述}

{pstd}
{opt gsort} 根据指定变量的升序或降序排列观测值，因此与 {opt sort} 不同，{opt sort} 仅生成升序排列；请参见 {manhelp sort D}。

{pstd}
每个 {varname} 可以是数字或字符串。

{pstd}
如果在名称前输入 {opt +} 或不输入任何内容，则观测值按 {it:varname} 的升序排列；如果输入 {opt -}，则按降序排列。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D gsortQuickstart:快速开始}

        {mansection D gsortRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth generate(newvar)} 创建 {it:newvar}，对于每组按顺序排列的数据包含 1、2、3，...。在后续的 {help by_zh} 操作中使用排序时非常有用。

{phang}
{opt mfirst} 指定在降序排列中缺失值放在前面，而不是最后。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}

{pstd}将观测值按 {cmd:price} 升序排列{p_end}
{phang2}{cmd:. gsort price}

{pstd}与上述命令相同{p_end}
{phang2}{cmd:. gsort +price} 

{pstd}列出数据中价格最低的 10 辆汽车{p_end}
{phang2}{cmd:. list make price in 1/10}

{pstd}将观测值按 {cmd:price} 降序排列{p_end}
{phang2}{cmd:. gsort -price}

{pstd}列出数据中价格最高的 10 辆汽车{p_end}
{phang2}{cmd:. list make price in 1/10}

{pstd}将观测值按 {cmd:make} 字母顺序排列{p_end}
{phang2}{cmd:. gsort make}

{pstd}按字母顺序列出 {cmd:make}{p_end}
{phang2}{cmd:. list make}

{pstd}将观测值按 {cmd:make} 字母逆序排列{p_end}
{phang2}{cmd:. gsort -make}

{pstd}按字母逆序列出 {cmd:make}{p_end}
{phang2}{cmd:. list make}

    {hline}
    设置
{phang2}{cmd:. webuse bp3}

{pstd}将在 {cmd:id} 的升序排列内，将观测值按 {cmd:time} 升序排列{p_end}
{phang2}{cmd:. gsort id time}

{pstd}按测量进行的顺序列出每个病人的血压{p_end}
{phang2}{cmd:. list id time bp}

{pstd}将在 {cmd:id} 的升序排列内，将观测值按 {cmd:time} 降序排列{p_end}
{phang2}{cmd:. gsort id -time}

{pstd}按逆时间顺序列出每个病人的血压{p_end}
{phang2}{cmd:. list id time bp}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gsort.sthlp>}