{smcl}
{* *! version 1.0.0  12jun2019}{...}
{vieweralsosee "[D] vl create" "mansection D vlcreate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] vl" "help vl_zh"}{...}
{vieweralsosee "[D] vl drop" "help vl drop"}{...}
{vieweralsosee "[D] vl list" "help vl list"}{...}
{vieweralsosee "[D] vl rebuild" "help vl rebuild"}{...}
{vieweralsosee "[D] vl set" "help vl set"}{...}
{viewerjumpto "Syntax" "vl create##syntax"}{...}
{viewerjumpto "Description" "vl create##description"}{...}
{viewerjumpto "Links to PDF documentation" "vl create##linkspdf"}{...}
{viewerjumpto "Examples" "vl create##examples"}
{help vl_create:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[D] vl create} {hline 2}}创建和修改用户定义的变量列表{p_end}
{p2col:}({mansection D vlcreate:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
创建用户定义的变量列表

{p 8 16 2}
{cmd:vl create} {it:vlusername} {cmd:=} {cmd:(}{varlist}{cmd:)}

{p 8 16 2}
{cmd:vl create} {it:vlusername} {cmd:=} {it:vlname} {cmd:+}{c |}{cmd:-}
             {cmd:(}{varlist}{cmd:)}

{p 8 16 2}
{cmd:vl create} {it:vlusername} {cmd:=} {it:vlname1} [{cmd:+}{c |}{cmd:-}
            {it:vlname2}]


{pstd}
修改用户定义的变量列表

{p 8 16 2}
{cmd:vl} {cmdab:mod:ify} {it:vlusername} {cmd:=} {cmd:(}{varlist}{cmd:)}

{p 8 16 2}
{cmd:vl} {cmdab:mod:ify} {it:vlusername} {cmd:=} {it:vlname}
           {cmd:+}{c |}{cmd:-} {cmd:(}{varlist}{cmd:)}

{p 8 16 2}
{cmd:vl} {cmdab:mod:ify} {it:vlusername} {cmd:=} {it:vlname1}
            [{cmd:+}{c |}{cmd:-} {it:vlname2}]


{pstd}
对变量列表名称应用因子变量操作符

{p 8 16 2}
{cmd:vl} {cmdab:sub:stitute} {it:vlusername} {cmd:=} {cmd:i.}{it:vlname}

{p 8 16 2}
{cmd:vl} {cmdab:sub:stitute} {it:vlusername} {cmd:=}
            {cmd:i.}{it:vlname1}{cmd:#i.}{it:vlname2}

{p 8 16 2}
{cmd:vl} {cmdab:sub:stitute} {it:vlusername} {cmd:=}
            {cmd:i.}{it:vlname1}{cmd:##c.}{it:vlname2}


{pstd}
为用户定义的变量列表名称打标签

{p 8 16 2}
{cmd:vl} {cmdab:lab:el} {it:vlusername} [{cmd:"}{it:label}{cmd:"}]


{phang}
{it:vlname} 是已有的用户定义变量列表名称或系统定义的变量列表名称。在指定 {it:varlist} 时，总是将其包含在括号中：{cmd:(}{it:varlist}{cmd:)}。请参见 {manhelp vl D}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:vl} {cmd:create} 创建用户定义的变量列表。

{pstd}
{cmd:vl} {cmd:modify} 修改现有的用户定义的变量列表。

{pstd}
{cmd:vl} {cmd:substitute} 使用作用于变量列表的因子变量操作符创建变量列表。

{pstd}
在创建名为 {it:vlusername} 的变量列表后，表达式 {cmd:$}{it:vlusername} 可以在 Stata 中用于任何允许 {varlist} 的地方。变量列表实际上是 {help macro_zh:global macros}，而 {cmd:vl} 命令是创建和操纵它们的便利方式。它们与数据集一起保存。请参见 {manhelp vl_rebuild D:vl rebuild}。

{pstd}
有关 {cmd:vl} 命令的介绍，请参见 {manhelp vl D}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D vlcreateQuickstart:快速入门}

        {mansection D vlcreateRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在本帮助文件中。
{p_end}


{marker examples}{...}
{title:示例}

{pstd}从变量列表中创建新的变量列表{p_end}
{phang2}{cmd:. vl create myxvars = (x1-x100)}

{pstd}从现有的变量列表中创建新的变量列表{p_end}
{phang2}{cmd:. vl create indepvars = myxvars}

{pstd}修改现有变量列表以包含两个其他变量列表，并去除重复项{p_end}
{phang2}{cmd:. vl modify indepvars = myxvars + othervars}

{pstd}修改该列表以获得两个变量列表的差集{p_end}
{phang2}{cmd:. vl modify indepvars = myxvars - othervars}

{pstd}创建一个带有因子变量的新变量列表，然后使用该列表进行 {cmd:regress}{p_end}
{phang2}{cmd:. vl substitute myinteractions = i.myfactors##c.mycontinuous}{p_end}
{phang2}{cmd:. regress y $myinteractions}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <vl_create.sthlp>}