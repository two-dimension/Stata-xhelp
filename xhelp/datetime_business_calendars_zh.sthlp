{smcl}
{* *! version 1.3.5  15oct2018}{...}
{vieweralsosee "[D] 日期时间商业日历" "mansection D Datetimebusinesscalendars"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] bcal" "help bcal_zh"}{...}
{vieweralsosee "[D] 日期时间商业日历创建" "help datetime_business calendars creation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] 日期时间" "help datetime_zh"}{...}
{viewerjumpto "语法" "datetime_business_calendars_zh##syntax"}{...}
{viewerjumpto "描述" "datetime_business_calendars_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "datetime_business_calendars_zh##linkspdf"}{...}
{viewerjumpto "选项" "datetime_business_calendars_zh##options"}{...}
{viewerjumpto "备注" "datetime_business_calendars_zh##remarks"}
{help datetime_business_calendars:English Version}
{hline}{...}
{p2colset 1 36 38 2}{...}
{p2col:{bf:[D] 日期时间商业日历} {hline 2}}商业日历{p_end}
{p2col:}({mansection D Datetimebusinesscalendars:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
应用商业日历格式

{p 8 25 2}
{cmd:format} {varlist} {cmd:%tb}{it:calname}


{pstd}
应用详细日期格式以及商业日历格式

{p 8 25 2}
{cmd:format} {varlist} {cmd:%tb}{it:calname}[{cmd::}{it:datetime-specifiers}]


{pstd}
在商业日期和常规日期之间转换

{p 8 25 2}
{c -(}{cmdab:g:enerate}|{cmd:replace}{c )-}{bind:      }
{it:bdate} = {cmd:bofd("}{it:calname}{cmd:",} {it:regulardate}{cmd:)}

{p 8 25 2}
{c -(}{cmdab:g:enerate}|{cmd:replace}{c )-}
{it:regulardate} = {cmd:dofb(}{it:bdate}{cmd:, "}{it:calname}{cmd:")}


{p 8 25 2}
文件 {it:calname}{cmd:.stbcal} 包含商业日历定义。


{p 4 4 2}
语法的详细说明如下：

{p 8 14 2}
1. 定义.{break}
    商业日历是一些日期被划掉的常规日历：

                               2011年11月    
                        日  一  二  三  四  五  六
                        ---------------------------
                                 1   2   3   4   X
                         X   7   8   9  10  11   X
                         X  14  15  16  17  18   X
                         X  21  22  23   X   X   X
                         X  28  29  30
                        ---------------------------

{p 14 14 2}
      在商业日历上出现的日期称为商业日期。
      2011年11月11日是商业日期。 2011年11月12日不是与此日历
      相关的商业日期。

{p 14 14 2}
      划掉的日期实际上是被省略的。 也就是说，

		2011年11月18日 + 1 = 2011年11月21日 

		2011年11月28日 - 1 = 2011年11月23日

{p 14 14 2}
      Stata 的领先和滞后运算符的工作方式相同。
     
{p 8 14 2}
2. 商业日历是有名称的。{break}
    假设上述商业日历的名称为 {cmd:simple}。

{p 8 14 2}
3. 商业日历在名为 {it:calname}{cmd:.stbcal} 的文件中定义，
     比如 {cmd:simple.stbcal}。
     日历可以由 StataCorp 提供并已经安装，
     直接从其他用户获取或通过 SSC 获取，或自定义编写。
     日历也可以通过 {cmd:bcal create} 命令从当前数据集自动生成；见 {help bcal_zh:[D] bcal}。
     Stbcal 文件与 ado 文件的处理方式相同。

{p 14 14 2}
     您可以通过键入 {cmd:bcal} {cmd:dir} 获取计算机上安装的所有商业日历的列表；见 
     {bf:{help bcal_zh:[D] bcal}}。

{p 8 14 2}
4. 日期时间格式。{break}
    与名为 {cmd:simple} 的商业日历相关的日期格式是 {cmd:%tbsimple}，
    这意味着 
    {bind:{cmd:%} + {cmd:t} + {cmd:b} + {it:calname}}。

		{cmd:%}        是格式
                {cmd:t}        是日期时间 
                {cmd:b}        依赖于商业日历
		{it:calname}  是日历的名称

{p 8 14 2}
5. 以常规方式格式化变量。{break}  
    您格式化变量以具有商业日历格式与格式化任何变量相同，使用
    {cmd:format} 命令。

                . {cmd:format mydate %tbsimple}

{p 14 14 2}
    指定现有变量 {cmd:mydate} 包含根据名为 {cmd:simple} 的商业日历的值。
    参见 {bf:{help format_zh:[D] format}}。

{p 14 14 2}
    您可以格式化变量 {cmd:%tb}{it:calname}，无论
    相应的 stbcal 文件是否存在。如果不存在，则
    底层的数值将以 {cmd:%g} 格式显示。

{p 8 14 2}
6. 详细日期格式。{break}
    您可以通过在日历名称后放置冒号和详细格式说明符来包含详细的日期时间格式说明符。

                . {cmd:format mydate %tbsimple:CCYY.NN.DD}

{p 14 14 2}
    将2011年11月21日显示为2011.11.21。
    有关详细日期时间格式说明符，请参见 {bf:{help datetime_display_formats_zh:[D] 日期时间显示格式}}。

{marker item7}{...}
{p 8 14 2}
7. 读取商业日期。{break}
    要读取包含商业日期的文件，忽略商业日期
    的特性，像读取常规日期一样读取文件。
    将这些日期转换并格式化为 {cmd:%td}；
    参见 {it:{help datetime##s3:HRF-to-SIF conversion functions}} 
    在 {bf:{help datetime_zh:[D] 日期时间}}中。
    然后将常规日期转换为 {cmd:%tb} 商业日期：

                . {cmd:generate mydate = bofd("simple", regulardate)}

                . {cmd:format mydate %tbsimple}

                . {cmd:assert mydate!=. if regulardate!=.}

{p 14 14 2}
    第一个语句执行转换。

{p 14 14 2}
    第二个语句将 {cmd:%tbsimple} 日期格式附加到
    新变量 {cmd:mydate}，以便它能正确显示。
  
{p 14 14 2}
    第三个语句验证在 {cmd:regulardate} 中记录的所有日期均适合商业日历。
    例如，2011年11月12日没有出现在 {cmd:simple} 日历上，当然，它出现在常规日历上。如果数据中包含2011年11月12日，那将是一个错误。
    函数 {cmd:bofd()} 返回缺失值，当日期不出现在指定的日历上。

{p 8 14 2}
8. 关于转换的更多信息。{break}
    针对商业日期，仅有两个特定的函数，即 {cmd:bofd()} 和 
    {cmd:dofb()}。它们的定义为

		     {it:bdate}  =  {cmd:bofd("}{it:calname}"{cmd:,} {it:regulardate}{cmd:)}

		{it:regulardate} =  {cmd:dofb(}{it:bdate}{cmd:, "}{it:calname}{cmd:")}

{p 14 14 2}
     {cmd:bofd()} 如果 {it:regulardate} 缺失或不出现在指定的商业日历上，则返回缺失值。
     {cmd:dofb()} 如果 {it:bdate} 包含缺失值，则返回缺失值。

{p 8 14 2}
9. 获取星期几等信息。{break}
    您可以通过将商业日期转换为
    常规日期，然后使用标准函数来获得星期几等信息。要获取 
    {it:bdate} 在商业日历 {it:calname} 上的星期几，请输入 

		. {cmd:generate dow = dow(dofb(}{it:bdate}{cmd:, "}{it:calname}{cmd:"))}

{p 14 14 2}
    请参见 {it:{help datetime##s8:从 SIF 中提取日期组件}}
    在 {bf:{help datetime_zh:[D] 日期时间}}中获取其他提取函数。

{p 7 14 2}
10. Stbcal 文件。{break}
     {cmd:simple} 的 stbcal 文件如下所示，

                               2011年11月    
                        日  一  二  三  四  五  六
                        ---------------------------
                                 1   2   3   4   X
                         X   7   8   9  10  11   X
                         X  14  15  16  17  18   X
                         X  21  22  23   X   X   X
                         X  28  29  30
                        ---------------------------

{p 14 14 2}
是

                {hline 40} simple.stbcal {hline 3}
                {cmd}*! version 1.0.0
                *  simple.stbcal

                version {ccl stata_version}
                purpose "手动示例"
                dateformat dmy
        
                range 01nov2011 30nov2011
                centerdate 01nov2011

                omit dayofweek (Sa Su)
                omit date 24nov2011
                omit date 25nov2011{txt}
                {hline 40} simple.stbcal {hline 3}

{p 14 14 2}
     这个日历是如此简单，以至于我们通过指定要省略的日期划掉了感恩节假期。在实际日历中，我们会将最后两行更改为，

                {cmd}omit date 24nov2011
                omit date 25nov2011{txt}

{p 14 14 2}
改为 

	        {cmd}omit dowinmonth +4 Th of Nov and +1{txt}

{p 14 14 2}
    这表明要省略每年11月的第四个（{cmd:+4}）星期四，以及之后的那一天（{cmd:+1}）。
    请参见 {bf:{help datetime_business_calendars_creation_zh:[D] 日期时间商业日历创建}}。


{marker description}{...}
{title:描述}

{p 4 4 2}
Stata 提供用户可定义的商业日历。


{* 请在帮助文件中保留备注，如果可以的话 * }{...}
{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D DatetimebusinesscalendarsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {help datetime_zh:[D] 日期时间} 以了解 Stata 
日期和时间功能的简介。

{pstd}
以下是一个从开始到完成的示例。

{pstd}
备注按以下标题呈现：

	{help datetime_business_calendars##r1:步骤 1: 读取数据，日期作为字符串}
	{help datetime_business_calendars##r2:步骤 2: 将日期变量转换为 %td 日期}
	{help datetime_business_calendars##r3:步骤 3: 将 %td 日期转换为 %tb 日期}
	{help datetime_business_calendars##r4:关键特性: 每个商业日历都有自己的编码}
	{help datetime_business_calendars##r5:关键特性: 被省略的日期确实被省略}
	{help datetime_business_calendars##r6:关键特性: 从 %tb 日期提取组件}
	{help datetime_business_calendars##r7:关键特性: 根据日期合并}


{marker r1}{...}
{title:步骤 1: 读取数据，日期作为字符串}

{pstd}
我们网站上的文件 {cmd:bcal_simple.raw} 提供了数据，包括一个
日期变量，该变量根据在 {it:{help datetime_business_calendars##syntax:语法}}
中显示的商业日历 {cmd:simple} 进行解释。

{* junk1.smcl}{...}
        {cmd}. type https://www.stata-press.com/data/r16/bcal_simple.raw
        {res}11/4/11 51
        11/7/11 9
        11/18/11 12
        11/21/11 4
        11/23/11 17
        11/28/11 22{txt}

{pstd}
我们首先读取数据，然后列出结果。请注意，我们
将日期读取为字符串变量：

{* junk2.smcl}{...}
{* edit for http://}{...}
{phang2}
        {cmd}. infile str10 sdate float x using https://www.stata-press.com/data/r16/bcal_simple{p_end}
        {txt}(6 observations read)

        {cmd}. list
        {txt}
             {c TLC}{hline 10}{c -}{hline 4}{c TRC}
             {c |} {res}   sdate    x {txt}{c |}
             {c LT}{hline 10}{c -}{hline 4}{c RT}
          1. {c |} {res} 11/4/11   51 {txt}{c |}
          2. {c |} {res} 11/7/11    9 {txt}{c |}
          3. {c |} {res}11/18/11   12 {txt}{c |}
          4. {c |} {res}11/21/11    4 {txt}{c |}
          5. {c |} {res}11/23/11   17 {txt}{c |}
             {c LT}{hline 10}{c -}{hline 4}{c RT}
          6. {c |} {res}11/28/11   22 {txt}{c |}
             {c BLC}{hline 10}{c -}{hline 4}{c BRC}


{marker r2}{...}
{title:步骤 2:将日期变量转换为 %td 日期}

{pstd}
现在我们根据字符串日期创建 Stata 内部格式 (SIF) {cmd:%td} 日期：

{* junk3.smcl}{...}
        {cmd}. generate rdate = date(sdate, "MD20Y")
        {txt}
        {cmd}. format rdate %td{txt}

{pstd}
请参见 {it:{help datetime##s3:HRF-to-SIF conversion functions}}
在 {bf:{help datetime_zh:[D] 日期时间}}中。
我们验证转换是否顺利，并删除字符串变量的
日期：

{* junk4.smcl}{...}
        {cmd}. list
        {txt}
             {c TLC}{hline 10}{c -}{hline 4}{c -}{hline 11}{c TRC}
             {c |} {res}   sdate    x       rdate {txt}{c |}
             {c LT}{hline 10}{c -}{hline 4}{c -}{hline 11}{c RT}
          1. {c |} {res} 11/4/11   51   04nov2011 {txt}{c |}
          2. {c |} {res} 11/7/11    9   07nov2011 {txt}{c |}
          3. {c |} {res}11/18/11   12   18nov2011 {txt}{c |}
          4. {c |} {res}11/21/11    4   21nov2011 {txt}{c |}
          5. {c |} {res}11/23/11   17   23nov2011 {txt}{c |}
             {c LT}{hline 10}{c -}{hline 4}{c -}{hline 11}{c RT}
          6. {c |} {res}11/28/11   22   28nov2011 {txt}{c |}
             {c BLC}{hline 10}{c -}{hline 4}{c -}{hline 11}{c BRC}

        {cmd}. drop sdate{txt}


{marker r3}{...}
{title:步骤 3:将 %td 日期转换为 %tb 日期}

{pstd}
我们按照 
{help datetime_business_calendars##item7:item 7} 的指示，
将 {cmd:%td} 日期转换为 {cmd:%tbsimple} 日期。

{* junk5.smcl}{...}
        {cmd}. generate mydate = bofd("simple", rdate)
        {txt}
        {cmd}. format mydate %tbsimple
        {txt}
        {cmd}. assert mydate!=. if rdate!=.{txt}

{pstd}
如果有任何日期无法从常规日期转换为
{cmd:simple} 商业日期， {cmd:assert} 将会报错：“断言为假”。不过，我们会列出数据以向您展示转换是否顺利。我们通常会删除日期的 {cmd:%td} 编码，
但我们希望它来展示下面的一个特性。 

{* junk6.smcl}{...}
        {cmd}. list
        {txt}
             {c TLC}{hline 4}{c -}{hline 11}{c -}{hline 11}{c TRC}
             {c |} {res} x       rdate      mydate {txt}{c |}
             {c LT}{hline 4}{c -}{hline 11}{c -}{hline 11}{c RT}
          1. {c |} {res}51   04nov2011   04nov2011 {txt}{c |}
          2. {c |} {res} 9   07nov2011   07nov2011 {txt}{c |}
          3. {c |} {res}12   18nov2011   18nov2011 {txt}{c |}
          4. {c |} {res} 4   21nov2011   21nov2011 {txt}{c |}
          5. {c |} {res}17   23nov2011   23nov2011 {txt}{c |}
             {c LT}{hline 4}{c -}{hline 11}{c -}{hline 11}{c RT}
          6. {c |} {res}22   28nov2011   28nov2011 {txt}{c |}
             {c BLC}{hline 4}{c -}{hline 11}{c -}{hline 11}{c BRC}


{marker r4}{...}
{title:关键特性: 每个商业日历都有自己的编码}

{pstd}
在上面的列表中， {cmd:rdate} 和 {cmd:mydate} 看起来相等。
但它们并不相同：

{* junk7.smcl}{...}
        {cmd}. format rdate mydate %9.0g           // 删除日期格式
        {txt}
        {cmd}. list
        {txt}
             {c TLC}{hline 4}{c -}{hline 7}{c -}{hline 8}{c TRC}
             {c |} {res} x   rdate   mydate {txt}{c |}
             {c LT}{hline 4}{c -}{hline 7}{c -}{hline 8}{c RT}
          1. {c |} {res}51   18935        3 {txt}{c |}
          2. {c |} {res} 9   18938        4 {txt}{c |}
          3. {c |} {res}12   18949       13 {txt}{c |}
          4. {c |} {res} 4   18952       14 {txt}{c |}
          5. {c |} {res}17   18954       16 {txt}{c |}
             {c LT}{hline 4}{c -}{hline 7}{c -}{hline 8}{c RT}
          6. {c |} {res}22   18959       17 {txt}{c |}
             {c BLC}{hline 4}{c -}{hline 7}{c -}{hline 8}{c BRC}

{pstd}
{cmd:%tb} 日期各自具有自己的编码，并且这些编码与 
{cmd:%td} 日期的编码不同。这并没有关系。两种编码并没有谁更好。您无需关注编码。
如果您有兴趣，可以通过键入 {cmd:bcal} {cmd:describe} {cmd:simple} 了解有关 
{cmd:%tbsimple} 所使用编码的更多信息；见 
{bf:{help bcal_zh:[D] bcal}}。

{pstd}
我们将删除变量 {cmd:rdate} 并将 {cmd:%tbsimple} 格式再次应用到变量 {cmd:mydate}：

{* junk8.smcl}{...}
        {cmd}. drop rdate
        {txt}
        {cmd}. format mydate %tbsimple{txt}


{marker r5}{...}
{title:关键特性: 被省略的日期确实被省略}

{pstd}
在 {it:{help datetime_business_calendars##syntax:语法}},
我们提到对于 {cmd:simple} 商业日历

		2011年11月18日 + 1 = 2011年11月21日 

		2011年11月28日 - 1 = 2011年11月23日

{pstd}
这是真实的：

{* junk9.smcl}{...}
        {cmd}. generate tomorrow  = mydate + 1
        {txt}
        {cmd}. generate yesterday = mydate - 1
        {txt}
        {cmd}. format tomorrow yesterday %tbsimple
        {txt}
        {cmd}. list
        {txt}
             {c TLC}{hline 4}{c -}{hline 11}{c -}{hline 11}{c -}{hline 11}{c TRC}
             {c |} {res} x      mydate    tomorrow   yesterday {txt}{c |}
             {c LT}{hline 4}{c -}{hline 11}{c -}{hline 11}{c -}{hline 11}{c RT}
          1. {c |} {res}51   04nov2011   07nov2011   03nov2011 {txt}{c |}
          2. {c |} {res} 9   07nov2011   08nov2011   04nov2011 {txt}{c |}
          3. {c |} {res}12   18nov2011   21nov2011   17nov2011 {txt}{c |}
          4. {c |} {res} 4   21nov2011   22nov2011   18nov2011 {txt}{c |}
          5. {c |} {res}17   23nov2011   28nov2011   22nov2011 {txt}{c |}
             {c LT}{hline 4}{c -}{hline 11}{c -}{hline 11}{c -}{hline 11}{c RT}
          6. {c |} {res}22   28nov2011   29nov2011   23nov2011 {txt}{c |}
             {c BLC}{hline 4}{c -}{hline 11}{c -}{hline 11}{c -}{hline 11}{c BRC}

        {cmd}. drop tomorrow yesterday{txt}

{pstd} 
Stata 的滞后和领先运算符 {cmd:L.}{it:varname} 和 {cmd:F.}{it:varname}
同样工作。


{marker r6}{...}
{title:关键特性: 从 %tb 日期提取组件}

{pstd}
您可以使用与 Stata 的常规 {cmd:%td} 日期相同的提取函数来从商业日期中提取组件，例如星期几、月份、日期和年份，即 {cmd:dow()}、{cmd:month()}、{cmd:day()} 和 
{cmd:year()}，并使用函数 {cmd:dofb()} 将商业日期转换为常规日期。以下我们将星期几添加到数据中，列出数据，然后删除新变量：

{* junk10.smcl}{...}
        {cmd}. generate dow = dow(dofb(mydate, "simple"))
        {txt}
        {cmd}. list
        {txt}
             {c TLC}{hline 4}{c -}{hline 11}{c -}{hline 5}{c TRC}
             {c |} {res} x      mydate   dow {txt}{c |}
             {c LT}{hline 4}{c -}{hline 11}{c -}{hline 5}{c RT}
          1. {c |} {res}51   04nov2011     5 {txt}{c |}
          2. {c |} {res} 9   07nov2011     1 {txt}{c |}
          3. {c |} {res}12   18nov2011     5 {txt}{c |}
          4. {c |} {res} 4   21nov2011     1 {txt}{c |}
          5. {c |} {res}17   23nov2011     3 {txt}{c |}
             {c LT}{hline 4}{c -}{hline 11}{c -}{hline 5}{c RT}
          6. {c |} {res}22   28nov2011     1 {txt}{c |}
             {c BLC}{hline 4}{c -}{hline 11}{c -}{hline 5}{c BRC}

        {cmd}. drop dow{txt}

{pstd}
请参见 {it:{help datetime##s8:从 SIF 中提取日期组件}}
在 {bf:{help datetime_zh:[D] 日期时间}}中。


{marker r7}{...}
{title:关键特性: 根据日期合并}

{pstd}
可能您有一个数据集包含商业日期，以及另一个数据集包含常规日期，例如经济条件，您想要合并它们。为此，您需要在第一个数据集中创建一个常规日期变量并根据该变量合并：

	{cmd}. generate rdate = dofb(mydate, "simple")

	. merge 1:1 rdate using econditions, keep(match)

	. drop rdate{txt}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <datetime_business_calendars.sthlp>}