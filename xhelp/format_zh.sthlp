{smcl}
{* *! version 2.1.18  15may2018}{...}
{viewerdialog "Variables Manager" "stata varmanage"}{...}
{vieweralsosee "[D] format" "mansection D format"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] 日期时间商业日历" "help datetime_business calendars"}{...}
{vieweralsosee "[D] 日期时间显示格式" "help datetime_display_formats_zh"}{...}
{vieweralsosee "[P] display" "help display_zh"}{...}
{vieweralsosee "[D] list" "help list_zh"}{...}
{vieweralsosee "[D] varmanage" "help varmanage_zh"}{...}
{viewerjumpto "语法" "format_zh##syntax"}{...}
{viewerjumpto "菜单" "format_zh##menu"}{...}
{viewerjumpto "描述" "format_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "format_zh##linkspdf"}{...}
{viewerjumpto "选项" "format_zh##option"}{...}
{viewerjumpto "备注" "format_zh##remarks"}
{help format:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] format} {hline 2}}设置变量的输出格式{p_end}
{p2col:}({mansection D format:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
设置格式

{p 8 15 2}
{opt form:at} {varlist} {cmd:%}{it:fmt}

{p 8 15 2}
{opt form:at} {cmd:%}{it:fmt} {varlist}


{phang}
设置小数点样式

{p 8 15 2}
{opt se:t} {opt dp}  {c -(}{opt com:ma}|{opt per:iod}{c )-}
[{cmd:,} {opt perm:anently}]


{phang}
显示长格式

{p 8 15 2}
{opt form:at} [{varlist}]


{p 4 4 2}
其中 {cmd:%}{it:fmt} 可以是数值、日期、商业日历或字符串格式。

	    数值
	      {cmd:%}{it:fmt}            描述                示例
	{hline 55}
	右对齐
	      {cmd:%}{it:#}{cmd:.}{it:#}{cmd:g}           常规                  {cmd:%9.0g}
	      {cmd:%}{it:#}{cmd:.}{it:#}{cmd:f}           固定                  {cmd:%9.2f}
	      {cmd:%}{it:#}{cmd:.}{it:#}{cmd:e}           指数                  {cmd:%10.7e}
	      {cmd:%21x}            十六进制              {cmd:%21x}
	      {cmd:%16H}            二进制，高位低位     {cmd:%16H}
	      {cmd:%16L}            二进制，低位高位     {cmd:%16L}
	      {cmd:%8H}             二进制，高位低位     {cmd:%8H}
	      {cmd:%8L}             二进制，低位高位     {cmd:%8L}

	右对齐，带逗号
	      {cmd:%}{it:#}{cmd:.}{it:#}{cmd:gc}          常规                  {cmd:%9.0gc}
	      {cmd:%}{it:#}{cmd:.}{it:#}{cmd:fc}          固定                  {cmd:%9.2fc}

	右对齐，带前导零
	      {cmd:%0}{it:#}{cmd:.}{it:#}{cmd:f}          固定                  {cmd:%09.2f}

	左对齐
	      {cmd:%-}{it:#}{cmd:.}{it:#}{cmd:g}          常规                  {cmd:%-9.0g}
	      {cmd:%-}{it:#}{cmd:.}{it:#}{cmd:f}          固定                  {cmd:%-9.2f}
	      {cmd:%-}{it:#}{cmd:.}{it:#}{cmd:e}          指数                  {cmd:%-10.7e}

	左对齐，带逗号
	      {cmd:%-}{it:#}{cmd:.}{it:#}{cmd:gc}         常规                  {cmd:%-9.0gc}
	      {cmd:%-}{it:#}{cmd:.}{it:#}{cmd:fc}         固定                  {cmd:%-9.2fc}
	{hline 55}
{p 8 8 2}
在上述格式中，您可以将逗号 ({cmd:,}) 替代句点 ({cmd:.})，使逗号成为小数点。在 {cmd:%9,2fc} 中，1000.03 为 1.000,03。或者您可以 {cmd:set} {cmd:dp} {cmd:comma}。


	      日期
	      %fmt            描述             示例
	{hline 55}
	右对齐
	      {cmd:%tc}             日期/时间                {cmd:%tc}
	      {cmd:%tC}             日期/时间                {cmd:%tC}
	      {cmd:%td}             日期                     {cmd:%td}
	      {cmd:%tw}             星期                     {cmd:%tw}
	      {cmd:%tm}             月                       {cmd:%tm}
	      {cmd:%tq}             季度                    {cmd:%tq}
	      {cmd:%th}             半年                    {cmd:%th}
	      {cmd:%ty}             年                       {cmd:%ty}
	      {cmd:%tg}             通用                    {cmd:%tg}

	左对齐
	      {cmd:%-tc}            日期/时间                {cmd:%-tc}
	      {cmd:%-tC}            日期/时间                {cmd:%-tC}
	      {cmd:%-td}            日期                     {cmd:%-td}
	      等等。
	{hline 55}
{p 8 8 2}
允许许多变化。请参见 {manhelp datetime_display_formats D:日期时间显示格式}。


	商业日历
	      %fmt               描述           示例
	{hline 55}
	{cmd:%tb}{it:calname}               一个商业日历  {cmd:%tbsimple}
          [{cmd::}{it:datetime-specifiers}]   在 {it:calname}{cmd:.stbcal} 定义
	{hline 55}
{p 8 8 2}
请参见 {manhelp datetime_business_calendars D:日期时间商业日历}。


	     字符串
	      %fmt            描述              示例
	{hline 55}
	右对齐
	      {cmd:%}{it:#}{cmd:s}             字符串                   {cmd:%15s}

	左对齐
	      {cmd:%-}{it:#}{cmd:s}            字符串                   {cmd:%-20s}

	居中
	      {cmd:%~}{it:#}{cmd:s}            字符串                   {cmd:%~12s}
	{hline 55}
{p 8 8 2}
居中格式仅适用于 {help display_zh}。 


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 变量管理器}


{marker description}{...}
{title:描述}

{pstd}
{cmd:format} {varlist} {cmd:%}{it:fmt} 和 {cmd:format} {cmd:%}{it:fmt} {it:varlist} 是相同的命令。它们设置与指定变量相关联的显示格式。默认格式是变量类型的函数：

			{cmd:byte}{space 4}{cmd:%8.0g}
			{cmd:int}{space 5}{cmd:%8.0g}
			{cmd:long}{space 4}{cmd:%12.0g}
			{cmd:float}{space 3}{cmd:%9.0g}
			{cmd:double}{space 2}{cmd:%10.0g}

			{cmd:str}{it:#}{space 4}{cmd:%}{it:#}{cmd:s}
			{cmd:strL}{space 4}{cmd:%9s}

{pstd}
{opt set dp} 设置 Stata 用来表示小数点的符号。默认是 {cmd:period}，这意味着一又二分之一显示为 1.5。

{pstd}
{cmd:format} [{it:varlist}] 显示与变量相关联的当前格式。单独使用 {cmd:format} 列出所有格式太长而无法在 {cmd:describe} 中完整列出的变量。{cmd:format} {it:varlist} 列出指定变量的格式，无论其长度如何。{cmd:format} {cmd:*} 列出所有变量的格式。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D formatQuickstart:快速入门}

        {mansection D formatRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt permanently} 指定除了现在进行更改外，{opt dp} 设置被记住并成为您调用 Stata 时的默认设置。


{marker remarks}{...}
{title:备注}

{pstd}
备注按照以下标题呈现：

	{help format##fformat:%f 格式}
	{help format##fcformat:%fc 格式}
	{help format##gformat:%g 格式}
	{help format##gcformat:%gc 格式}
	{help format##eformat:%e 格式}
	{help format##xformat:%21x 格式}
	{help format##16format:%16H 和 %16L 格式}
	{help format##8format:%8H 和 %8L 格式}
	{help format##tformat:%t 格式}
	{help format##sformat:%s 格式}
	{help format##examples:示例}
	{help format##video:视频示例}


{marker fformat}{...}
{title:%f 格式}

{pstd}
在 {cmd:%}{it:w}{cmd:.}{it:d}{cmd:f} 中，{it:w} 是总输出宽度，包括符号和小数点，{it:d} 是小数点右侧的数字位数。结果为右对齐。

{pstd}
格式为 {cmd:%12.2f} 的数字 5.139 显示为

	----+----1--
                5.14
	

{pstd}
当 {it:d}==0 时，小数点不显示。格式为 {cmd:%12.0f} 的数字 5.14 显示为

	----+----1--
                   5

{pstd} 
{cmd:%-}{it:w}{cmd:.}{it:d}{cmd:f} 的工作原理相同，只是输出左对齐。格式为 {cmd:%-12.2f} 的数字 5.139 显示为

	----+----1--
	5.14


{marker fcformat}{...}
{title:%fc 格式}

{pstd}
{cmd:%}{it:w}{cmd:.}{it:d}{cmd:fc} 的工作原理类似于 {cmd:%}{it:w}{cmd:.}{it:d}{cmd:f}，只是在数字中插入逗号以使较大的数字更易阅读。{it:w} 记录结果的总宽度，包括逗号。

{pstd}
格式为 {cmd:%12.2fc} 的数字 5.139 显示为 

	----+----1--
                5.14

{pstd}
格式为 {cmd:%12.2fc} 的数字 5203.139 显示为 

	----+----1--
	    5,203.14

{pstd}
与 {cmd:%f} 相同，如果 {it:d}==0，则不显示小数点。格式为 {cmd:%12.0fc} 的数字 5203.139 显示为

	----+----1--
	       5,203

{pstd}
与 {cmd:%f} 相同，可以插入负号以左对齐输出。格式为 {cmd:%-12.0fc} 的数字 5203.139 显示为 

	----+----1--
	5,203


{marker gformat}{...}
{title:%g 格式}

{pstd}
在 {cmd:%}{it:w}{cmd:.}{it:d}{cmd:g} 中，{it:w} 是整体宽度，{it:d} 通常指定为 0，这样由格式决定小数点右侧要显示的数字位数。如果指定 {it:d}!=0，则不超过 {it:d} 位数字将被显示。与 {cmd:%f} 相同，可以插入负号以左对齐结果。

{pstd}
{cmd:%g} 与 {cmd:%f} 的区别在于 (1) 它决定小数点右侧显示多少位数字，(2) 如果数字太大或太小，它将切换到 {cmd:%e} 格式。

{pstd}
格式为 {cmd:%12.0g} 的数字 5.139 显示为

	----+----1--
	       5.139

{pstd}
格式为 {cmd:%12.0g} 的数字 5231371222.139 显示为

	----+----1--
          5231371222

{pstd} 
格式为 52313712223.139 显示为

	----+----1--
         5.23137e+10

{pstd}
格式为 0.0000029394 显示为 

	----+----1--
         2.93940e-06


{marker gcformat}{...}
{title:%gc 格式}

{pstd}
{cmd:%}{it:w}{cmd:.}{it:d}{cmd:gc} 是 {cmd:%}{it:w}{cmd:.}{it:d}{cmd:g}，加上逗号。它的工作原理与 {cmd:%g} 和 {cmd:%fc} 格式相同。


{marker eformat}{...}
{title:%e 格式}

{pstd}
{cmd:%}{it:w}{cmd:.}{it:d}{cmd:e} 以指数格式显示数值。{it:w} 记录格式的宽度。{it:d} 记录小数位后的数字位数。{it:w} 应大于或等于 {it:d}+7，或者如果预计为 3 位指数，则为 {it:d}+8。

{pstd}
格式为 {cmd:%12.4e} 的数字 5.139 为

	----+----1--
	  5.1390e+00

{pstd}
格式为 {cmd:%12.4e} 的数字 5.139*10^220 为

	----+----1--
         5.1390e+220


{marker xformat}{...}
{title:%21x 格式}

{pstd}
{cmd:%21x} 格式适用于希望分析数字舍入错误的程序员。没有比计算机实际记录数字更好的观察方式。

{pstd}
格式为 {cmd:%21x} 的数字 5.139 为 

	----+----1----+----2-
        +1.48e5604189375X+002

{pstd}
数字 5.125 为

	----+----1----+----2-
        +1.4800000000000X+002

{pstd}
报告的是带符号的基数为 16 的数，基数 16 的小数点，字母 {cmd:X}，和带符号的 3 位基数 16 整数。将两个数字称为 {it:f} 和 {it:e}。其含义为 {it:f}*2^{it:e}。


{marker 16format}{...}
{title:%16H 和 %16L 格式}

{pstd}
{cmd:%16H} 和 {cmd:%16L} 格式以 IEEE 浮点、双精度形式显示值。{cmd:%16H} 以最高有效字节优先 (hilo) 形式显示值。{cmd:%16L} 以最低有效字节优先 (lohi) 形式显示数字。

{pstd}
格式为 {cmd:%16H} 的数字 5.139 为 

	----+----1----+-
        40148e5604189375

{pstd}
格式为 {cmd:%16L} 的数字 5.139 为 

	----+----1----+-
	75931804568e1440

{pstd}
这一格式有时被同时研究二进制文件的十六进制转储的程序员使用。


{marker 8format}{...}
{title:%8H 和 %8L 格式}

{pstd}
{cmd:%8H} 和 {cmd:%8L} 与 {cmd:%16H} 和 {cmd:%16L} 类似，但以 IEEE 单精度形式显示数字。

{pstd}
格式为 {cmd:%8H} 的数字 5.139 为 

	----+---
        40a472b0

{pstd}
格式为 {cmd:%8L} 的数字 5.139 为 

	----+---
	b072a440


{marker tformat}{...}
{title:%t 格式}

{pstd}
{cmd:%t} 格式将数值变量显示为日期和时间。请参阅 
{manhelp datetime_display_formats D:日期时间显示格式}。


{marker sformat}{...}
{title:%s 格式}

{pstd}
{cmd:%}{it:w}{cmd:s} 格式在宽度为 {it:w} 的字段中右对齐显示字符串。{cmd:%-}{it:w}{cmd:s} 左对齐显示字符串。

{pstd}
格式为 {cmd:%16s} 的字符串 "Mary Smith" 为

        ----+----1----+-
	      Mary Smith

{pstd}
格式为 {cmd:%-16s} 的字符串 "Mary Smith" 为

        ----+----1----+-
	Mary Smith

{pstd}
此外，在某些上下文中，特别是 {cmd:display}（见 {manhelp display P}），允许使用 {cmd:%~}{it:w}{cmd:s}，它使字符串居中。
格式为 {cmd:%~16s} 的字符串 "Mary Smith" 为

        ----+----1----+-
	   Mary Smith


{marker examples}{...}
{title:示例}

    {bf:以不同的数值显示格式显示四个值}
    {c TLC}{hline 69}{c TRC}
    {c |}   %9.0g   %9.0gc     %9.2f     %9.2fc %-9.0g       %09.2f     %9.2e {c |}
    {c LT}{hline 69}{c RT}
    {c |}   12345   12,345  12345.00  12,345.00  12345    012345.00  1.23e+04 {c |}
    {c |}  37.916   37.916     37.92      37.92  37.916   000037.92  3.79e+01 {c |}
    {c |} 3567890  3567890  3.57e+06   3.57e+06  3567890   3.57e+06  3.57e+06 {c |}
    {c |}   .9165    .9165      0.92       0.92  .9165    000000.92  9.16e-01 {c |}
    {c BLC}{hline 69}{c BRC}

    {bf:左对齐和右对齐字符串显示格式}
    {c TLC}{hline 31}{c TRC}
    {c |} %-17s                    %17s {c |}
    {c LT}{hline 31}{c RT}
    {c |} AMC Concord       AMC Concord {c |}
    {c |} AMC Pacer           AMC Pacer {c |} 
    {c |} AMC Spirit         AMC Spirit {c |}
    {c |} Buick Century   Buick Century {c |}
    {c |} Buick Opel         Buick Opel {c |}
    {c BLC}{hline 31}{c BRC}


    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse census10}

{pstd}描述数据{p_end}
{phang2}{cmd:. describe}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list in 1/8}

{pstd}左对齐 {cmd:state} 变量{p_end}
{phang2}{cmd:. format state %-14s}

{pstd}列出结果{p_end}
{phang2}{cmd:. list in 1/8}

{pstd}左对齐 {cmd:region}，一个带有附加值标签的数值变量{p_end}
{phang2}{cmd:. format region %-8.0g}

{pstd}列出结果{p_end}
{phang2}{cmd:. list in 1/8}

{pstd}在变量 {cmd:pop} 中插入逗号{p_end}
{phang2}{cmd:. format pop %12.0gc}

{pstd}列出结果{p_end}
{phang2}{cmd:. list in 1/8}

{pstd}垂直对齐 {cmd:medage} 中的小数点{p_end}
{phang2}{cmd:. format medage %8.1f}

{pstd}列出结果{p_end}
{phang2}{cmd:. list in 1/8}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse fmtxmpl}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list empid in 83/87}

{pstd}给 {cmd:empid} 值附加前导零{p_end}
{phang2}{cmd:. format empid %05.0f}

{pstd}列出结果{p_end}
{phang2}{cmd:. list empid in 83/87}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse fmtxmpl2}

{pstd}显示三个日期变量的格式{p_end}
{phang2}{cmd:. format hiredate login logout}

{pstd}给 {cmd:login} 和 {cmd:logout} 附加日期格式{p_end}
{phang2}{cmd:. format login logout %tcDDmonCCYY_HH:MM:SS.ss}

{pstd}列出结果{p_end}
{phang2}{cmd:. list login logout in 1/5}

{pstd}给 {cmd:hiredate} 变量附加日期格式{p_end}
{phang2}{cmd:. format hiredate %td}

{pstd}列出结果{p_end}
{phang2}{cmd:. list hiredate in 1/5}

{pstd}给 {cmd:hiredate} 变量附加不同的日期格式{p_end}
{phang2}{cmd:. format hiredate %tdDD/NN/CCYY}

{pstd}列出结果{p_end}
{phang2}{cmd:. list hiredate in 1/5}

{pstd}使用 {cmd:describe} 显示所有变量的当前格式{p_end}
{phang2}{cmd:. describe}

{pstd}显示在 {cmd:describe} 输出中格式太长的变量格式{p_end}
{phang2}{cmd:. format}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse census10}

{pstd}给变量 {cmd:pop} 和 {cmd:medage} 附加欧洲格式{p_end}
{phang2}{cmd:. format pop %12,0gc}{space 5}(注意逗号){p_end}
{phang2}{cmd:. format medage %9,2gc}

{pstd}列出结果{p_end}
{phang2}{cmd:. list in 1/8}

{pstd}从变量 {cmd:pop} 和 {cmd:medage} 中删除欧洲格式{p_end}
{phang2}{cmd:. format pop %12.0gc}{space 5}
               (将小数点恢复为句点){p_end}
{phang2}{cmd:. format medage %9.2gc}

{pstd}将小数点设置更改为逗号{p_end}
{phang2}{cmd:. set dp comma}

{pstd}执行单向表格{p_end}
{phang2}{cmd:. tabulate region [fw=pop]}

{pstd}恢复句点作为小数点设置{p_end}
{phang2}{cmd:. set dp period}{p_end}
    {hline}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=cF_pJtXWf3Y":如何更改变量的显示格式}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <format.sthlp>}