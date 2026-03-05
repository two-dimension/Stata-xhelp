{smcl}
{* *! version 1.2.14  17may2019}{...}
{viewerdialog reshape "dialog reshape"}{...}
{vieweralsosee "[D] reshape" "mansection D reshape"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] char" "help char_zh"}{...}
{vieweralsosee "[D] save" "help save_zh"}{...}
{vieweralsosee "[D] stack" "help stack_zh"}{...}
{vieweralsosee "[D] xpose" "help xpose_zh"}{...}
{viewerjumpto "语法" "reshape_zh##syntax"}{...}
{viewerjumpto "菜单" "reshape_zh##menu"}{...}
{viewerjumpto "描述" "reshape_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "reshape_zh##linkspdf"}{...}
{viewerjumpto "选项" "reshape_zh##options"}{...}
{viewerjumpto "备注" "reshape_zh##remarks"}{...}
{viewerjumpto "示例" "reshape_zh##examples"}{...}
{viewerjumpto "视频示例" "reshape_zh##video"}{...}
{viewerjumpto "存储结果" "reshape_zh##results"}
{help reshape:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[D] reshape} {hline 2}}在宽格式和长格式之间转换数据{p_end}
{p2col:}({mansection D reshape:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{marker overview}{...}
{p 4 8 2}
概述

           {it:long}
        {c TLC}{hline 12}{c TRC}                  {it:wide}
        {c |} {it:i  j}  {it:stub} {c |}                 {c TLC}{hline 16}{c TRC}
        {c |}{hline 12}{c |}                 {c |} {it:i}  {it:stub}{bf:1} {it:stub}{bf:2} {c |}
        {c |} 1  {bf:1}   4.1 {c |}     reshape     {c |}{hline 16}{c |}
        {c |} 1  {bf:2}   4.5 {c |}   <{hline 9}>   {c |} 1    4.1   4.5 {c |}
        {c |} 2  {bf:1}   3.3 {c |}                 {c |} 2    3.3   3.0 {c |}
        {c |} 2  {bf:2}   3.0 {c |}                 {c BLC}{hline 16}{c BRC}
        {c BLC}{hline 12}{c BRC}

        从长格式转换到宽格式：

     {col 45}{it:j} 现有变量
     {col 44}/
     	        {cmd:reshape wide} {it:stub}{cmd:, i(}{it:i}{cmd:) j(}{it:j}{cmd:)}

        从宽格式转换到长格式：

     	        {cmd:reshape long} {it:stub}{cmd:, i(}{it:i}{cmd:) j(}{it:j}{cmd:)}
     {col 44}\
     {col 45}{it:j} 新变量

        在使用 {cmd:reshape wide} 后返回长格式：

    	        {cmd:reshape long}

        在使用 {cmd:reshape long} 后返回宽格式：

                {cmd:reshape wide}


{p 4 8 2}
基本语法

{phang2}
将数据从宽格式转换为长格式

{p 12 16 2}
{cmd:reshape} {helpb reshape##overview:long}
{it:stubnames}{cmd:,}
{cmd:i(}{varlist}{cmd:)}
[{it:{help reshape##options_table:options}}]

{phang2}
将数据从长格式转换为宽格式

{p 12 16 2}
{cmd:reshape} {helpb reshape##overview:wide}
{it:stubnames}{cmd:,}
{cmd:i(}{varlist}{cmd:)}
[{it:{help reshape##options_table:options}}]

{phang2}
在使用 reshape wide 后将数据重新转换为长格式

{p 12 16 2}
{cmd:reshape} {helpb reshape##overview:long}

{phang2}
在使用 reshape long 后将数据重新转换为宽格式

{p 12 16 2}
{cmd:reshape} {helpb reshape##overview:wide}

{phang2}
当 reshape 失败时列出问题观察值

{p 12 16 2}
{cmd:reshape error}

{marker options_table}{...}
{p2colset 10 37 39 2}{...}
{p2col :{it:options}}描述{p_end}
{col 8}{hline}
{p2col 8 37 37 2 :* {opth i(varlist)}}使用 {it:varlist} 作为 ID 变量{p_end}
{p2col :{cmd:j(}{varname} [{it:values}]{cmd:)}}长 -> 宽: {it:varname}, 现有变量{p_end}
{p2col :}宽 -> 长: {it:varname}, 新变量{p_end}
{p2col :}可选地指定值以子集 {it:varname}{p_end}
{p2col :{cmdab:s:tring}}{it:varname} 是字符串变量（默认为数字型）{p_end}
{col 8}{hline}
{p2colreset}{...}
{p 8 8 2}* {opt i(varlist)} 是必需的。{p_end}

{p 8 8 2}其中 {it:values} 是{space 2}{it:#}[{cmd:-}{it:#}] [...]
{space 13}如果 {it:varname} 是数值型{p_end}
{col 53}(默认)
{col 26}{cmd:"}{it:string}{cmd:"} [{cmd:"}{it:string}{cmd:"} ...]{...}
{col 51}如果 {it:varname} 是字符串型

{p 8 8 2}
并且 {it:stubnames} 是变量名称（长 -> 宽），或变量名称的存根（宽 -> 长），无论如何，都可以包含 {cmd:@}，表示 {it:j} 在名称中出现或将要出现的位置。

{p 8 8 2}
在上面的示例中，当我们写 "{cmd:reshape} {cmd:wide}
    {it:stub}" 时，我们可以写 "{cmd:reshape} {cmd:wide}
    {it:stub}{cmd:@}"，因为 {it:j} 默认作为后缀。
    如果我们写了 {it:stu}{cmd:@}{it:b}，那么宽变量将被命名为 {it:stu}{cmd:1}{it:b} 和 {it:stu}{cmd:2}{it:b}。


{p 4 8 2}
高级语法

{p 8 17 2}
{cmd:reshape i} {varlist}

{p 8 17 2}
{cmd:reshape j} {varname} [{it:values}] [{it:,} {opt s:tring}]

{p 8 17 2}
{cmd:reshape xij} {it:fvarnames} [{cmd:,} {opt at:wl(chars)}]

{p 8 17 2}
{cmd:reshape xi} [{varlist}]

{p 8 17 2}
{cmd:reshape} [{opt q:uery}]

{p 8 17 2}
{cmd:reshape clear}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 其他变量转换命令}
    {bf:> 在宽格式和长格式之间转换数据}


{marker description}{...}
{title:描述}

{pstd}
{cmd:reshape} 将数据从宽格式转换为长格式，反之亦然。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D reshapeQuickstart:快速开始}

        {mansection D reshapeRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth i(varlist)} 指定具有唯一值的变量，用于描述逻辑观察。 {opt i()} 是必需的。

{phang}
{cmd:j(}{varname} [{it:values}]{cmd:)} 指定具有唯一值的变量，用于描述子观察。 {it:values} 列出要用于 {it:varname} 的唯一值，这些值通常不明确说明，因为 {cmd:reshape} 会从数据中自动确定它们。

{phang}
{opt string} 指定 {cmd:j()} 可以包含字符串值。

{phang}
{cmd:atwl(}{it:chars}{cmd:)}, 仅在高级语法中可用，并且未显示在对话框中，指定
{help u_glossary##plainascii:plain ASCII} {it:chars} 在将数据从宽格式转换为长格式时替换 {cmd:@} 字符。


{marker remarks}{...}
{title:备注}

{pstd}
在使用 {cmd:reshape} 之前，您需要确定数据是以长格式还是宽格式存储。您还必须确定用于组织数据的逻辑观察 ({it:i}) 和子观察 ({it:j})。假设您有以下数据，可以以宽格式或长格式组织如下：


{center:         (宽格式)           }

{center:{it:i}{space 9}....... x_{it:ij} ........}
{center:{cmd:id  sex   inc80   inc81   inc82}}
{center:{hline 31}}
{center: 1    0    5000    5500    6000}
{center: 2    1    2000    2200    3300}
{center: 3    0    3000    2000    1000}


{center:      (长格式)      }

{center:{it:i}{space 5}{it:j}{space 11}x_{it:ij}}
{center:{cmd:id   year   sex    inc }}
{center:{hline 23}}
{center: 1     80     0   5000 }
{center: 1     81     0   5500 }
{center: 1     82     0   6000 }
{center: 2     80     1   2000 }
{center: 2     81     1   2200 }
{center: 2     82     1   3300 }
{center: 3     80     0   3000 }
{center: 3     81     0   2000 }
{center: 3     82     0   1000 }


{pstd}
给定这些数据，您可以使用 {cmd:reshape} 将数据从一种形式转换为另一种形式：

{p 8 43 2}{cmd:. reshape long inc, i(id) j(year)}{space 2}(从上面的形式到下面的形式){p_end}
{p 8 43 2}{cmd:. reshape wide inc, i(id) j(year)}{space 2}(从下面的形式到上面的形式)

{pstd}
有关基本和高级语法的详细讨论和示例，请参见 {manlink D reshape}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse reshape1}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}将数据从宽格式转换为长格式{p_end}
{phang2}{cmd:. reshape long inc ue, i(id) j(year)}

{pstd}列出结果{p_end}
{phang2}{cmd:. list, sepby(id)}

{pstd}快速将数据从长格式转换回宽格式{p_end}
{phang2}{cmd:. reshape wide}

{pstd}显式地将数据从长格式转换回宽格式{p_end}
{phang2}{cmd:. reshape wide inc ue, i(id) j(year)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse reshape2, clear}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}尝试将数据从宽格式转换为长格式{p_end}
{phang2}{cmd:. reshape long inc, i(id) j(year)}

{pstd}列出问题观察值{p_end}
{phang2}{cmd:. reshape error}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse reshape3, clear}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}将数据从宽格式转换为长格式{p_end}
{phang2}{cmd:. reshape long inc@r ue, i(id) j(year)}

{pstd}列出结果{p_end}
{phang2}{cmd:. list, sepby(id)}

{pstd}快速将数据从长格式转换回宽格式{p_end}
{phang2}{cmd:. reshape wide}

{pstd}显式地将数据从长格式转换回宽格式{p_end}
{phang2}{cmd:. reshape wide inc@r ue, i(id) j(year)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse reshape4, clear}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}将数据从宽格式转换为长格式，允许 {cmd:sex} 采用字符串值{p_end}
{phang2}{cmd:. reshape long inc, i(id) j(sex) string}

{pstd}列出结果{p_end}
{phang2}{cmd:. list, sepby(id)}

{pstd}快速将数据从长格式转换回宽格式{p_end}
{phang2}{cmd:. reshape wide}

{pstd}显式地将数据从长格式转换回宽格式{p_end}
{phang2}{cmd:. reshape wide inc, i(id) j(sex) string}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse reshape5, clear}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}将数据从长-长格式转换为宽-宽格式（两个 {it:j} 变量）{p_end}
{phang2}{cmd:. reshape wide @inc, i(hid year) j(sex) string}{p_end}
{phang2}{cmd:. reshape wide minc finc, i(hid) j(year)}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

{pstd}将数据从宽-宽格式转换回长-长格式{p_end}
{phang2}{cmd:. reshape long minc finc, i(hid) j(year)}{p_end}
{phang2}{cmd:. reshape long @inc, i(hid year) j(sex) string}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}{p_end}
    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=gkcYpw8CtCw":如何将数据从长格式调整为宽格式}

{phang}
{browse "https://www.youtube.com/watch?v=Bx9kVdkr9oY":如何将数据从宽格式调整为长格式}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:reshape} 将以下特征与数据一起存储（参见 {manhelp char P}）：

{synoptset 20 tabbed}{...}
{synopt:{cmd:_dta[ReS_i]}}{cmd:i} 变量名称{p_end}
{synopt:{cmd:_dta[ReS_j]}}{cmd:j} 变量名称{p_end}
{synopt:{cmd:_dta[ReS_jv]}}{cmd:j} 值，如果指定{p_end}
{synopt:{cmd:_dta[ReS_Xij]}}{cmd:X_ij} 变量名称{p_end}
{synopt:{cmd:_dta[ReS_Xij_n]}}{cmd:X_ij} 变量的数量{p_end}
{synopt:{cmd:_dta[ReS_Xij_long}{it:#}{cmd:]}}长格式中第 {it:#} 个 {cmd:X_ij} 变量的名称{p_end}
{synopt:{cmd:_dta[ReS_Xij_wide}{it:#}{cmd:]}}宽格式中第 {it:#} 个 {cmd:X_ij} 变量的名称{p_end}
{synopt:{cmd:_dta[ReS_Xi]}}{cmd:X_i} 变量名称，如果指定{p_end}
{synopt:{cmd:_dta[ReS_atwl]}}{cmd:atwl()} 值，如果指定{p_end}
{synopt:{cmd:_dta[ReS_str]}}{cmd:1} 如果指定 {cmd:string} 选项，{cmd:0}
    否则{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <reshape.sthlp>}