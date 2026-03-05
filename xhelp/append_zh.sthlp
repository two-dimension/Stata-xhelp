{smcl}
{* *! version 1.3.3  15oct2018}{...}
{viewerdialog append "dialog append"}{...}
{vieweralsosee "[D] append" "mansection D append"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] cross" "help cross_zh"}{...}
{vieweralsosee "[D] joinby" "help joinby_zh"}{...}
{vieweralsosee "[D] merge" "help merge_zh"}{...}
{vieweralsosee "[D] save" "help save_zh"}{...}
{vieweralsosee "[D] use" "help use_zh"}{...}
{viewerjumpto "Syntax" "append_zh##syntax"}{...}
{viewerjumpto "Menu" "append_zh##menu"}{...}
{viewerjumpto "Description" "append_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "append_zh##linkspdf"}{...}
{viewerjumpto "Options" "append_zh##options"}{...}
{viewerjumpto "Examples" "append_zh##examples"}{...}
{viewerjumpto "Video example" "append_zh##video"}
{help append:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] append} {hline 2}}追加数据集{p_end}
{p2col:}({mansection D append:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmdab:ap:pend} {cmd:using} {it:{help filename_zh}}
[{it:{help filename_zh}} {cmd:...}]
[{cmd:,} {it:options}]

{pstd}
如果 {it:filename} 包含空格或其他特殊字符，您可以将其用双引号括起来，并且在这种情况下必须这样做。

{synoptset 15}{...}
{synopthdr}
{synoptline}
{synopt :{opth gen:erate(newvar)}}{it:newvar} 标记结果观测的来源{p_end}
{synopt :{opth keep(varlist)}}保留被追加数据集中的指定变量{p_end}
{synopt :{opt nol:abel}}不从磁盘数据集复制值标签定义{p_end}
{synopt :{opt nonote:s}}不从磁盘数据集复制笔记{p_end}
{synopt :{opt force}}允许将字符串追加到数值中或将数值追加到字符串中而不报错{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 合并数据集 > 追加数据集}


{marker description}{...}
{title:描述}

{pstd}
{cmd:append} 将存储在磁盘上的 Stata 格式数据集追加到内存中的数据集末尾。如果指定的任何 {it:{help filename_zh}} 没有扩展名，则假定为 {.dta}。

{pstd}
Stata 还可以将两个数据集的观测值合并为一个；参见 {manhelp merge D}。有关 {cmd:append}、{cmd:merge} 和 {cmd:joinby} 的比较，请参见 {findalias frcombine}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D appendQuickstart:快速开始}

        {mansection D appendRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth generate(newvar)} 指定要创建的变量名称，该变量将标记观测的来源。主数据集（在 {cmd:append} 命令前内存中的数据）中的观测将包含 {cmd:0} 作为该变量的值。第一个使用数据集中的观测将包含 {cmd:1} 作为该变量的值；第二个使用数据集中的观测将包含 {cmd:2} 作为该变量的值；依此类推。

{phang}
{opth keep(varlist)} 指定要从使用数据集中保留的变量。如果未指定 {opt keep()}，则保留所有变量。

{pmore}
{opt keep(varlist)} 中的 {it:varlist} 与标准 Stata 变量列表有两个不同之处：{it:varlist} 中的变量名不能被缩写，除了使用通配符字符，并且您不能引用变量范围，例如 {opt price-weight}。

{phang}
{opt nolabel} 防止 Stata 将值标签定义从磁盘数据集复制到内存中的数据集中。即使您未指定此选项，来自磁盘数据集的标签定义也不会替换内存中已经存在的定义。

{phang}
{opt nonotes} 防止使用数据集中的 {opt notes} 被纳入结果中。默认情况下，将纳入使用数据集中未在主数据中出现的注释。

{phang}
{opt force} 允许将字符串变量追加到数值变量和 vice versa，导致来自使用数据集的缺失值。如果未指定，{cmd:append} 将发出错误消息；如果指定，{cmd:append} 将发出警告消息。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse even}{p_end}
{phang2}{cmd:. list}{p_end}
{phang2}{cmd:. webuse odd}{p_end}
{phang2}{cmd:. list}

{pstd}将偶数数据追加到奇数数据的末尾{p_end}
{phang2}{cmd:. append using https://www.stata-press.com/data/r16/even}{p_end}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

    {hline}
    设置
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. keep if foreign == 0}{p_end}
{phang2}{cmd:. save domestic}{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. keep if foreign == 1}{p_end}
{phang2}{cmd:. keep make price mpg rep78 foreign}{p_end}

{pstd}将国内汽车数据追加到国外汽车数据的末尾，仅保留来自国内汽车数据的变量 {cmd:make}、{cmd:price}、{cmd:mpg}、{cmd:rep78} 和 {cmd:foreign}{p_end}
{phang2}{cmd:. append using domestic, keep(make price mpg rep78 foreign)}{p_end}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}{p_end}

    {hline}
    设置
{phang2}{cmd:. sysuse citytemp, clear}{p_end}
{phang2}{cmd:. keep if region == 4}{p_end}
{phang2}{cmd:. save west}{p_end}
{phang2}{cmd:. sysuse citytemp, clear}{p_end}
{phang2}{cmd:. keep if region == 3}{p_end}
{phang2}{cmd:. save south}{p_end}
{phang2}{cmd:. sysuse citytemp, clear}{p_end}
{phang2}{cmd:. keep if region == 1}{p_end}

{pstd}将西部地区（{cmd:region==4}）和南部地区（{cmd:region==3}）的温度数据追加到新英格兰地区（{cmd:region==1}）的数据末尾，并生成新变量 {cmd:filenum} 来指示每个观测来自哪个文件。不要从 {cmd:west.dta} 或 {cmd:south.dta} 加载值标签定义。{p_end}
{phang2}{cmd:. append using west south, generate(filenum) nolabel}{p_end}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}{p_end}

    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=AZGW8tohiqw":如何将文件追加到单个数据集中}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <append.sthlp>}