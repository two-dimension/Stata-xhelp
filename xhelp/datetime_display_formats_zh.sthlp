{smcl}
{* *! version 2.0.10  15may2018}{...}
{vieweralsosee "[D] 日期时间显示格式" "mansection D Datetimedisplayformats"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] 日期时间" "help datetime_zh"}{...}
{vieweralsosee "[D] 日期时间商业日历" "help datetime_business_calendars_zh"}{...}
{vieweralsosee "[D] 日期时间翻译" "help datetime_translation_zh"}{...}
{viewerjumpto "语法" "datetime display formats##syntax"}{...}
{viewerjumpto "描述" "datetime display formats##description"}{...}
{viewerjumpto "PDF文档链接" "datetime_display_formats_zh##linkspdf"}{...}
{viewerjumpto "备注" "datetime display formats##remarks"}
{help datetime_display_formats:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[D] 日期时间显示格式} {hline 2}}日期和时间的显示格式{p_end}
{p2col:}({mansection D Datetimedisplayformats:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
用于以人类可读形式 (HRF) 显示 Stata 内部格式 (SIF) 日期和时间的格式为

                            显示格式以 
         SIF 类型           以 HRF 呈现 SIF
	 {hline 37}
         datetime/c            {cmd:%tc}[{it:details}]
         datetime/C            {cmd:%tC}[{it:details}]

         date                  {cmd:%td}[{it:details}]

         weekly date           {cmd:%tw}[{it:details}]
         monthly date          {cmd:%tm}[{it:details}]
         quarterly date        {cmd:%tq}[{it:details}]
         half-yearly date      {cmd:%th}[{it:details}]
         yearly date           {cmd:%ty}[{it:details}]
	 {hline 37}

{pstd}
可选的 {it:details} 允许您控制结果的显示方式，并由以下代码的组合序列组成： 

	    代码      意义              输出
	    {hline 65}
	    {cmd:CC}        世纪-1          01 - 99
	    {cmd:cc}        世纪-1          1 - 99
	    {cmd:YY}        2位年份       00 - 99
	    {cmd:yy}        2位年份       0 - 99

            {cmd:JJJ}       年内天数        001 - 366
	    {cmd:jjj}       年内天数        1 - 366

	    {cmd:Mon}       月                  一月，二月，...，十二月
	    {cmd:Month}     月                  一月，二月，...，十二月
            {cmd:mon}       月                  1月，2月，...，12月
            {cmd:month}     月                  一月，二月，...，十二月
            {cmd:NN}        月                01 - 12
	    {cmd:nn}        月                1 - 12

            {cmd:DD}        月内天数        01 - 31
            {cmd:dd}        月内天数        1 - 31

            {cmd:DAYNAME}   星期几            星期日，星期一，... (对齐)
            {cmd:Dayname}   星期几            星期日，星期一，... (不对齐)
	    {cmd:Day}       星期几            周日，周一，...
            {cmd:Da}        星期几            周，周，...
            {cmd:day}       星期几            周日，周一，...
            {cmd:da}        星期几            周，周，...

            {cmd:h}         半年               1 - 2
            {cmd:q}         季度              1 - 4
            {cmd:WW}        周                  01 - 52
            {cmd:ww}        周                  1 - 52

	    {cmd:HH}        小时              00 - 23
	    {cmd:Hh}        小时              00 - 12
	    {cmd:hH}        小时              0 - 23
            {cmd:hh}        小时              0 - 12

            {cmd:MM}        分钟              00 - 59
	    {cmd:mm}        分钟              0 - 59

            {cmd:SS}        秒                00 - 60 (由于闰秒而如此)
            {cmd:ss}        秒                0 - 60 (由于闰秒而如此)
	    {cmd:.s}        十分之一            .0 - .9
	    {cmd:.ss}       百分之一           .00 - .99
	    {cmd:.sss}      千分之一           .000 - .999

	    {cmd:am}        显示 am 或 pm      am   或  pm
	    {cmd:a.m.}      显示 a.m. 或 p.m.  a.m. 或  p.m.
	    {cmd:AM}        显示 AM 或 PM      AM   或  PM
	    {cmd:A.M.}      显示 A.M. 或 P.M.  A.M. 或  P.M.

	    {cmd:.}         显示句点         .
	    {cmd:,}         显示逗号         ,
	    {cmd::}         显示冒号         :
	    {cmd:-}         显示连字符       -
	    {cmd:_}         显示空格
            {cmd:/}         显示斜杠       /
            {cmd:\}         显示反斜杠     \
            {cmd:!}{it:c}        显示字符  {it:c}

	    {cmd:+}         分隔符 (见注释)
	    {hline 65}
            注： {cmd:+} 不显示任何内容；它可用于分隔一个代码与下一个代码，使格式更易读。 {cmd:+} 从不
	    是必要的。例如， {cmd:%tchh:MM+am} 和 {cmd:%tchh:MMam} 意思相同， {cmd:%tc+hh+:+MM+am} 也是如此。

{pstd}
当未指定 {it:details} 时，相当于指定 

	    格式 {c |} 隐含 (完全指定) 格式
	    {hline 7}{c +}{hline 33}
	    {cmd:%tC}    {c |} {cmd:%tCDDmonCCYY_HH:MM:SS}
	    {cmd:%tc}    {c |} {cmd:%tcDDmonCCYY_HH:MM:SS}
                   {c |}
	    {cmd:%td}    {c |} {cmd:%tdDDmonCCYY}
                   {c |}
	    {cmd:%tw}    {c |} {cmd:%twCCYY!www}
	    {cmd:%tm}    {c |} {cmd:%tmCCYY!mnn}
	    {cmd:%tq}    {c |} {cmd:%tqCCYY!qq}
	    {cmd:%th}    {c |} {cmd:%thCCYY!hh}
            {cmd:%ty}    {c |} {cmd:%tyCCYY}
	    {hline 7}{c BT}{hline 33}

{pstd}
也就是说，输入 

{p 12 12 2}
. {cmd:format mytimevar %tc}

{pstd}
与输入

{p 12 12 2}
. {cmd:format mytimevar %tcDDmonCCYY_HH:MM:SS}

{pstd}
格式 {cmd:%tcDDmonCCYY_HH:MM:SS} 被解释为

{col 11}{c TLC}{hline 63}{c TRC}
          {c |}       {cmd:%}         {cmd:t}           {cmd:c}             {cmd:DDmonCCYY_HH:MM:SS}  {c |}
          {c |}       |         |           |                      |          {c |}
          {c |} 所有格式   它是一个    变量           格式编码             指定如何     {c |}
          {c |} 以 {cmd:%} 开头  日期时间  编码为           显示值         {c |}
          {col 11}{c BLC}{hline 63}{c BRC}


{marker description}{...}
{title:描述}

{pstd}
Stata 将日期和时间以数字形式存储在八种 SIF 之一中。一个 SIF 可能是 18,282 或甚至 1,579,619,730,000。将适当的格式应用于它，18,282 显示为 20jan2010 ({cmd:%td})。1,579,619,730,000 显示为 20jan2010 15:15:30 ({cmd:%tc})。

{pstd}
如果您指定额外的格式字符，可以更改结果的显示方式。
而不是 20jan2010，您可以更改为 
2010.01.20；2010年1月20日；或 1/20/10。  
而不是 20jan2010 15:15:30，您可以更改为 
2010.01.20 15:15；2010年1月20日 3:15 pm；或 
2010年1月20日 星期三 15:15:30。

{pstd}
请参见 {bf:{help datetime_zh:[D] 日期时间}} 以获取 Stata 日期和时间的介绍。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D DatetimedisplayformatsRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help datetime_display_formats##formats:指定显示格式}
	{help datetime_display_formats##rounding:显示时截断而非四舍五入}


{marker formats}{...}
    {title:指定显示格式}

{pstd}
与其使用默认格式 20jan2010，您可以以以下格式显示 SIF 日期变量：

	2010.01.20
	2010年1月20日
	1/20/10

{pstd}
同样，与其以默认格式 20jan2010 15:15:30 显示 SIF 日期时间/c 变量，您可以以以下格式显示：

	2010.01.20 15:15
	2010年1月20日 3:15 pm
	2010年1月20日 星期三 15:15:30

{pstd}
以下是执行此操作的方法：

{p 8 11 2}
1. 2010.01.20{break}
   {cmd:format} {it:mytdvar} {cmd:%tdCCYY.NN.DD}

{p 8 11 2}
2. 2010年1月20日{break}
   {cmd:format} {it:mytdvar} {cmd:%tdMonth_dd,_CCYY}

{p 8 11 2}
3. 1/20/10{break}
   {cmd:format} {it:mytdvar} {cmd: %tdnn/dd/YY}

{p 8 11 2}
4. 2010.01.20 15:15{break}
   {cmd:format} {it:mytcvar} {cmd:%tcCCYY.NN.DD_HH:MM}

{p 8 11 2}
5. 2010年1月20日 3:15 pm{break}
   {cmd:format} {it:mytcvar} {cmd:%tcMonth_dd,_CCYY_hh:MM_am}{break}
   代码 {cmd:am} 位于末尾表示应根据需要显示 am 或 pm。

{p 8 11 2}
6. 2010年1月20日 星期三 15:15:30{break}
   {cmd:format} {it:mytcvar} {cmd:%tcDay_Mon_DD_HH:MM:SS_CCYY}

{pstd}
在示例 1 至 3 中，格式均以 {cmd:%td} 开头，而在示例 4 至 6 中，格式以 {cmd:%tc} 开头。正确指定开头非常重要 — 即 
{cmd:%} + {cmd:t} + {it:third_character}。
第三个字符指示特定的 SIF 编码类型，换句话说，数字值的解释方式。您需指定 
{cmd:%tc}{it:...} 用于日期时间/c 变量，{cmd:%tC}{it:...} 用于日期时间/C，{cmd:%td}{it:...} 用于日期等。

{pstd}
日期时间/c 和日期时间/C 变量的默认格式省略了秒的小数部分；15:15:30.000 显示为 15:15:30。如果您希望看到小数秒，请指定格式

	    {cmd:%tcDDmonCCYY_HH:MM:SS.sss}
    或
	    {cmd:%tCDDmonCCYY_HH:MM:SS.sss}

{pstd}
根据需要。


{marker rounding}{...}
    {title:显示时截断而非四舍五入}

{p 4 4 2}
考虑时间 11:32:59.999。其他不太精确的写法为

	11:32:59.99
	11:32:59.9
	11:32:59
	11:32

{p 4 4 2}
也就是说，当您抑制更详细的时间组件的显示时，显示的部分不会进行四舍五入。Stata 按数字时钟的方式显示时间；时间为 11:32，直到变为 11:33。 
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <datetime_display_formats.sthlp>}