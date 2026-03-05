{smcl}
{* *! version 1.3.4  15may2018}{...}
{vieweralsosee "[D] 创建日期时间商务日历" "mansection D 创建日期时间商务日历"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] bcal" "help bcal_zh"}{...}
{vieweralsosee "[D] 日期时间商务日历" "help 日期时间商务日历"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] 日期时间" "help 日期时间"}{...}
{viewerjumpto "语法" "datetime_business_calendars_creation_zh##syntax"}{...}
{viewerjumpto "描述" "datetime_business_calendars_creation_zh##description"}{...}
{viewerjumpto "PDF文档链接" "datetime_business_calendars_creation_zh##linkspdf"}{...}
{viewerjumpto "备注" "datetime_business_calendars_creation_zh##remarks"}
{help datetime_business_calendars_creation:English Version}
{hline}{...}
{p2colset 1 45 47 2}{...}
{p2col:{bf:[D] 创建日期时间商务日历} {hline 2}}商务日历的创建{p_end}
{p2col:}({mansection D 创建日期时间商务日历:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 4 2}
商务日历 {it:calname} 及其对应的显示格式 {cmd:%tb}{it:calname} 是由文本文件 {it:calname}{cmd:.stbcal} 定义的，该文件包含以下内容：

{p 8 12 2}
{cmd:*} {it:注释}{p_end}

{p 8 12 2}
{cmd:version} {it:stata_version}{p_end}
{p 8 12 2}
{cmd:purpose "}{it:文本}{cmd:"}{p_end}
{p 8 12 2}
{cmd:dateformat} 
{c -(}{cmd:ymd} |
{cmd:ydm} | 
{cmd:myd} |
{cmd:mdy} |
{cmd:dym} |
{cmd:dmy}{c )-}{p_end}

{p 8 12 2}
{cmd:range}
{it:{help datetime_business_calendars_creation##date:日期}}
{it:{help datetime_business_calendars_creation##date:日期}}{p_end}
{p 8 12 2}
{cmd:centerdate}
{it:{help datetime_business_calendars_creation##date:日期}}

{p 8 12 2}
[{cmd:from}
{c -(}{it:{help datetime_business_calendars_creation##date:日期}}|{cmd:.}{c )-}
{cmd:to}
{c -(}{it:{help datetime_business_calendars_creation##date:日期}}|{cmd:.}{c )-}{cmd::}]{bind:  }{cmd:omit} ...
[{it:{help datetime_business_calendars_creation##if:如果}}]{p_end}
{p 8 8 2}
...{break}
...


{p 4 4 2}
其中

{p 8 8 2}
{cmd:omit} ... 可能是

{p 12 12 2}
{cmd:omit}
{cmd:date}
{it:{help datetime_business_calendars_creation##pdate:pdate}}
[{cmd:and} {it:{help datetime_business_calendars_creation##pmlist:pmlist}}]

{p 12 12 2}
{cmd:omit}
{cmd:dayofweek}
{it:{help datetime_business_calendars_creation##dowlist:dowlist}}

{p 12 12 2}
{cmd:omit}
{cmd:dowinmonth}
{it:{help datetime_business_calendars_creation##pm#:pm#}}
{it:{help datetime_business_calendars_creation##dow:dow}}
[{cmd:of} {it:{help datetime_business_calendars_creation##monthlist:monthlist}}]
[{cmd:and} {it:{help datetime_business_calendars_creation##pmlist:pmlist}}]

{marker if}{...}
{p 8 8 2}
[{it:如果}] 可能是

{p 12 12 2}
{cmd:if} {it:限制} [{cmd:&} {it:限制} ...]

{p 8 8 2}
{it:限制} 是以下之一

{p 12 12 2}
{cmd:dow(}{it:{help datetime_business_calendars_creation##dowlist:dowlist}}{cmd:)}{break}
{cmd:month(}{it:{help datetime_business_calendars_creation##monthlist:monthlist}}{cmd:)}{break}
{cmd:year(}{it:{help datetime_business_calendars_creation##yearlist:yearlist}}{cmd:)}{break}

{marker date}{...}
{p 8 12 2}
{it:date} 是一个日期，采用 
{it:{help datetime_business_calendars_creation##year:年}}, 
{it:{help datetime_business_calendars_creation##month:月}}, 和 
{it:日} 的顺序，具体由 {cmd:dateformat} 指定。  
例如，如果 {cmd:dateformat} 为 {cmd:dmy}， 则 {it:date} 可以为 {cmd:12apr2013}、{cmd:12-4-2013} 或 {cmd:12.4.2013}。

{marker pdate}{...}
{p 8 12 2}
{it:pdate} 是一个 {it:date}，或者是一个 {it:date}，其中字符 {cmd:*} 替代了通常应出现的年份。
如果 {cmd:dateformat} 为 {cmd:dmy}，则 {it:pdate} 可以是 
{cmd:12apr2013}、 
{cmd:12-4-2013} 或 
{cmd:12.4.2013}；或者它可以是 
{cmd:12apr*}、{cmd:12-4-*} 或 {cmd:12.4.*}。
{cmd:12apr*} 意味着每年的四月十二日。

{marker dow}{...}
{p 8 12 2}
{it:dow} 是一周中的某一天，使用英语表示。
它可以缩写为最少2个字符，且大小写无关紧要。
示例：
{cmd:Sunday}、 {cmd:Mo}、 {cmd:tu}、 {cmd:Wed}、 {cmd:th}、 
{cmd:Friday}、 {cmd:saturday}。

{marker dowlist}{...}
{p 8 12 2}
{it:dowlist} 可以是一个 {it:dow}，或者是一个由空格分隔的一个或多个 
{it:dow} 的列表，括在括号内。  
示例： {cmd:Sa}、 {cmd:(Sa)}、 {cmd:(Sa Su)}。

{marker month}{...}
{p 8 12 2}
{it:month} 是一年的月份，使用英语表示，或者是一个月份数字。
它可以缩写到最低限度，且大小写无关紧要。
示例：
{cmd:January}、 
{cmd:2}、 
{cmd:Mar}、 
{cmd:ap}、 
{cmd:may}、 
{cmd:6}、 
{cmd:Jul}、 
{cmd:aug}、 
{cmd:9}、 
{cmd:Octob}、 
{cmd:nov}、 
{cmd:12}。

{marker monthlist}{...}
{p 8 12 2}
{it:monthlist} 可以是一个 {it:month}，或者是一个由空格分隔的一个或多个 
{it:month} 的列表，括在括号内。  
示例：  
{cmd:Nov}、 
{cmd:(Nov)}、 
{cmd:11}、 
{cmd:(11)}、 
{cmd:(Nov Dec)}、 
{cmd:(11 12)}。

{marker year}{...}
{p 8 12 2}
{it:year} 是一个4位数的日历年份。
示例：  
{cmd:1872}、 
{cmd:1992}、 
{cmd:2013}、 
{cmd:2050}。

{marker yearlist}{...}
{p 8 12 2}
{it:yearlist} 可以是一个 {it:year}，或者是一个由空格分隔的一个或多个 
{it:year} 的列表，括在括号内。 示例：  
{cmd:2013}、 
{cmd:(2013)}、 
{cmd:(2013 2014)}。

{marker pm#}{...}
{p 8 12 2}
{it:pm#} 是一个非零整数，前面有加号或减号。 
示例： {cmd:-2}、 {cmd:-1}、 {cmd:+1}。
{it:pm#} 出现在 {cmd:omit} {cmd:dowinmonth} {it:pm#} {it:dow} {cmd:of}
{it:monthlist} 中，
其中 {it:pm#} 指定每月的哪一天。  
{cmd:omit} {cmd:dowinmonth} {cmd:+1} {cmd:Th} 意味着这个月的第一个星期四。 
{cmd:omit} {cmd:dowinmonth} {cmd:-1} {cmd:Th} 意味着该月的最后一个星期四。

{marker pmlist}{...}
{p 8 12 2}
{it:pmlist} 可以是一个 {it:pm#}，或者是 
一个由空格分隔的一个或多个 {it:pm#}，括在括号内。  
示例：
{cmd:+1}、 
{cmd:(+1)}、 
{cmd:(+1 +2)}、 
{cmd:(-1 +1 +2)}。
{it:pmlist} 出现在可选的 {cmd:and} {it:pmlist} 中，允许在 
{cmd:omit} {it:date} 和 {cmd:omit} {cmd:dowinmonth} 的末尾，指定 
要省略的附加日期。
{cmd:and} {cmd:+1} 意味着还有第二天。  
{cmd:and} {cmd:-1} 意味着还有前一天。


{marker description}{...}
{title:描述}

{pstd}
Stata 提供用户可定义的商务日历。
商务日历由 StataCorp 和其他用户提供，您也可以编写自己的日历。您还可以使用 {cmd:bcal create} 命令根据当前数据集自动创建商务日历；请参阅 {help bcal_zh:[D] bcal}。
本条目介绍如何编写自己的商务日历。

{pstd}
请参阅 {bf:{help datetime_business_calendars_zh:[D] 日期时间商务日历}}以获取有关商务日历的介绍。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D 创建日期时间商务日历Remark和示例:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help datetime_business_calendars_creation##r1:简介}
	{help datetime_business_calendars_creation##r2:概念}
	{help datetime_business_calendars_creation##r3:初步命令}
	{help datetime_business_calendars_creation##r4:省略命令：from/to和if}
	{help datetime_business_calendars_creation##r5:省略命令：和}
	{help datetime_business_calendars_creation##r6:省略命令：省略日期}
	{help datetime_business_calendars_creation##r7:省略命令：省略一周中的日子}
	{help datetime_business_calendars_creation##r8:省略命令：省略月中的某天}
	{help datetime_business_calendars_creation##r8.5:使用bcal create创建stbcal文件}
	{help datetime_business_calendars_creation##r9:stbcal文件存放的位置}
	{help datetime_business_calendars_creation##r10:如何调试stbcal文件}
	{help datetime_business_calendars_creation##r11:您可能未想到的日历创意}


{marker r1}{...}
{title:简介}

{pstd}
商务日历是一个常规日历，其中某些日期被划去，例如 

                               2011年11月    
                        日  一  二  三  四  五  六
                        ---------------------------
                                 1   2   3   4   X
                         X   7   8   9  10  11   X
                         X  14  15  16  17  18   X
                         X  21  22  23   X   X   X
                         X  28  29  30
                        ---------------------------

{pstd}
stbcal文件的目的是 

{p 8 12 2}
1.  指定日历涵盖的日期范围。

{p 8 12 2}
2.  指定将被编码为日期0的特定日期。

{p 8 12 2}
3.  指定常规日历中要划去的日期。

{pstd}
上述日历的stbcal文件可能简单到只有以下内容：

	{hline 40} example_1.stbcal {hline 3}
	{cmd}version {ccl stata_version}
	range 01nov2011 30nov2011
	centerdate 01nov2011
	omit date  5nov2011
	omit date  6nov2011
	omit date 12nov2011
	omit date 13nov2011
	omit date 19nov2011
	omit date 20nov2011
	omit date 24nov2011
	omit date 25nov2011
	omit date 26nov2011
	omit date 27nov2011{txt}
	{hline 40} example_1.stbcal {hline 3}

{pstd}
事实上，这个日历可以更紧凑地编写，因为我们可以指定划去所有星期六和星期日：


	{hline 40} example_2.stbcal {hline 3}
	{cmd}version {ccl stata_version}
	range 01nov2011 30nov2011
	centerdate 01nov2011
	omit dayofweek (Sa Su)
	omit date 24nov2011
	omit date 25nov2011{txt}
	{hline 40} example_2.stbcal {hline 3}

{pstd}
在此特定日历中，我们省略了2011年11月24日和25日，因为这是美国感恩节假期。感恩节在11月的第四个星期四庆祝，许多企业在随后的星期五也关闭。可以在stbcal文件中指定类似的规则：

{marker omit}{...}
	{hline 40} example_3.stbcal {hline 3}
	{cmd}version {ccl stata_version}
	range 01nov2011 30nov2011
	centerdate 01nov2011
	omit dayofweek (Sa Su)
	omit dowinmonth +4 Th of Nov and +1{txt}
	{hline 40} example_3.stbcal {hline 3}

{pstd}
请理解这个日历是一个人造示例，并且因为它覆盖的时间段太短，变得更加人造。真正的stbcal文件通常覆盖至少数十年，而有些甚至覆盖几个世纪。


{marker r2}{...}
{title:概念}

{pstd}
您需要在stbcal文件中指定四件事：

{p 8 12 2}
1.  使用的Stata版本，

{p 8 12 2}
2.  日历的范围，

{p 8 12 2}
3.  日历的中心日期，以及

{p 8 12 2}
4.  要省略的日期。

{phang}
版本.{break}
您指定Stata的版本是为了确保与未来版本的向前兼容性。 如果您的日历以行 {cmd:version}
{cmd:{ccl stata_version}} 开头，未来版本的Stata将知道如何解释该文件，即使stbcal文件语言的定义已经发生了重大变化。

{phang}
范围.{break}
日历是在特定日期范围内定义的，您必须明确说明该范围。 当您或其他人使用您的日历时，超出范围的日期将被视为无效，这通常意味着它们会被视为缺失值。

{phang}
中心日期.{break}
Stata将日期存储为整数。在日历中，57可能代表一个特定日期。如果是这样，则57-1=56代表前一天，57+1=58代表后一天。 上述声明同样适用于如果我们用-12,739替换57，因此特定值并不重要，关键在于我们必须达成一致以确立希望标准化的值，因为我们将把这些值存储在数据集中。

{pmore}
标准称为中心日期，这里中心并不意味着日历中间的日期。它意味着对应于整数中心的日期，也就是说，0。您必须选择范围内的一个日期作为标准。 您选择的具体日期并不重要，但大多数作者选择易于记忆的日期。 Stata内置的 {cmd:%td} 日历使用的是01jan1960，但该日期对您来说可能不可用，因为中心日期必须是商务日历上的日期，而大多数企业在01jan1960时都关闭。

{pmore}
有时您可能希望未来扩展日历的范围。今天，您创建一个覆盖1990年至2020年的日历，这对您来说已经足够了。后来，您需要将范围扩展到1970年或2030年，或两者。 更新日历时，请勿更改中心日期。 这样，新的日历将与旧日历向后兼容。

{phang}
省略的日期.{break}
显然，您需要指定要省略的日期。 
您可以在必要时指定具体要省略的日期，但尽量在可能的情况下指定规则而不是规则的结果。
规则会变化，因此了解可以在 {cmd:omit} 命令前使用的 {cmd:from}/{cmd:to} 前缀。 您可以编码如下内容：

        {cmd:from 01jan1960 to 31dec1968: omit} ...
	{cmd:from 01jan1979 to .:  omit} ...

{pmore}
在指定 {cmd:from}/{cmd:to} 时， {cmd:.} 表示的第一个日期与范围的起始日期同义。 {cmd:.} 的第二个日期与结束日期同义。

{marker r3}{...}
{title:初步命令}

{pstd}
stbcal文件应以以下命令开头：

	{cmd:version} {it:stata_version}
	{cmd:purpose "}{it:文本}{cmd:"}
	{cmd:dateformat} {...}
{c -(}{cmd:ymd} | {...}
{cmd:ydm} | {...}
{cmd:myd} | {...}
{cmd:mdy} | {...}
{cmd:dym} | {...}
{cmd:dmy}{c )-}
	{cmd:range} {it:日期} {it:日期}
	{cmd:centerdate} {it:日期}

{p 4 8 12}
{cmd:version} {it:stata_version}{break}
    在撰写时，您应该指定 {cmd:version}
    {cmd:{ccl stata_version}}。 更好的做法是，在Stata中输入命令 {cmd:version} 来发现您当前使用的Stata版本。 指定该版本后，请确保查看文档，以便正确使用现代语法。

{p 4 8 12}
{cmd:purpose "}{it:文本}{cmd:"}{break}
    此命令是可选的。 {cmd:purpose} 的目的是在您的文件中设置注释，而不是制作注释。如果您想添加注释，请在前面加上 {cmd:*}。 {cmd:purpose} 设置将由 {cmd:bcal} {cmd:describe} {it:calname} 显示的文本。

{p 4 8 12}
	{cmd:dateformat} 
{c -(}{cmd:ymd} | 
{cmd:ydm} |
{cmd:myd} |
{cmd:mdy} | 
{cmd:dym} |
{cmd:dmy}{c )-}{break}
    此命令是可选的。如果未指定，将假定为 {cmd:dateformat} {cmd:ymd}。此命令与变量格式化为 {cmd:%tb}{it:calname} 时的日期外观无关。此命令指定您在此stbcal文件中输入的日期格式。根据您觉得方便的格式进行指定。

{p 4 8 12}
{cmd:range} {it:日期} {it:日期}{break}
日期范围在{it:{help datetime_business_calendars_creation##r2:概念}}中讨论。
您必须明确指定。

{p 4 8 12}
{cmd:centerdate} {it:日期}{break}
中心日期在{it:{help datetime_business_calendars_creation##r2:概念}}中讨论。
您必须明确指定。
   

{marker r4}{...}
{title:省略命令：from/to和if}

{pstd}
stbcal文件通常包含多个 {cmd:omit} 命令。
{cmd:omit} 命令的语法为

{p 8 12 2}
[{cmd:from}
{c -(}{it:日期}|{cmd:.}{c )-}
{cmd:to}
{c -(}{it:日期}|{cmd:.}{c )-}{cmd::}]{bind:  }{cmd:omit} ...
[{it:if}]

{pstd}
也就是说，{cmd:omit} 命令可以选择性地以 {cmd:from}/{cmd:to} 开头，并且可以选择性地在末尾包含 {cmd:if}。

{pstd}
如果您不指定 {cmd:from}/{cmd:to}，结果与您指定

	{cmd:from . to .:  omit} ...

{pstd}
也就是说，{cmd:omit} 命令适用于范围内的所有日期。 在 
{it:{help datetime_business_calendars_creation##r1:简介}}，
我们展示了
{help datetime_business_calendars_creation##omit:命令}

	{cmd:omit dowinmonth +4 Th of Nov and +1}

{pstd} 
我们的示例日历仅涵盖了11月，但想象一下，它覆盖了更长的时间段，并且在感恩节后的星期五企业是开放的。 感恩节假期可以编码为

	{cmd:from . to 31dec1997: omit dowinmonth +4 Th of Nov}
	{cmd:from 01jan1998 to .: omit dowinmonth +4 Th of Nov and +1}

{pstd} 
同样的假期也可以编码为

	{cmd:omit dowinmonth +4 Th of Nov}
	{cmd:from 01jan1998 to .: omit dowinmonth +4 Th of Nov and +1}

{pstd}
我们更喜欢第一种风格，但请理解，虽然同样的日期可以多次从日历中省略，并出于多个原因，结果仍然与只省略一次是相同的。

{pstd}
可选的 {cmd:if} 还决定了 {cmd:omit} 声明何时生效。 让我们考虑一下圣诞节假期。 假设一个企业在12月24日和25日关闭。 这可以编码为

	{cmd:omit date 24dec*}
	{cmd:omit date 25dec*}

{pstd}
尽管如果我们编码为

	{cmd:from . to .: cmd:omit date 24dec*}
	{cmd:from . to .: cmd:omit date 25dec*}

{pstd}
记住， {cmd:from} {cmd:.} {cmd:to} {cmd:.} 默认为未指定。在任何情况下，我们在所有年份中省略 {cmd:24dec} 和 {cmd:25dec}。

{pstd} 
现在考虑一个更复杂的规则。 如果25日是星期二、星期三、星期四或星期五，则企业在12月24日和25日关闭。 如果25日是星期六或星期日，则假期是在前一星期五和接下来的星期一。 如果25日是星期一，则假期是星期一和星期二。 该规则可以编码为

	{cmd:omit date 25dec* and -1      if dow(Tu We Th Fr)}
	{cmd:omit date 25dec* and (-2 -1) if dow(Sa)}
	{cmd:omit date 25dec* and (-3 -2) if dow(Su)}
	{cmd:omit date 25dec* and +1      if dow(Mo)}

{pstd}
{cmd:if} 子句指定仅在 {cmd:25dec*} 是指定的一周中的某天时，才执行 {cmd:omit} 命令。 如果 {cmd:25dec*} 不是那些天中的一天，则该 {cmd:omit} 声明在该年中被忽略。 我们在这里关注的是 {cmd:if} 子句。 对于 {cmd:and} 子句，将在下一节中解释。

{pstd}
有时，您可以在使用 {cmd:from}/{cmd:to} 或 {cmd:if} 之间进行选择。 在这种情况下，请根据方便性进行使用。 例如，想象一下圣诞假期规则在2011年和2012年发生变化。 
您可以编码 

	{cmd:from . to 31dec2010: omit date 25dec* and +1 if dow(Mo)}
	{cmd:from 01jan2011 to .: omit date ... if dow(Mo)}

{pstd}
或者 

	{cmd:omit date 25dec* and +1 if dow(Mo) & year(2007 2008 2009 2010)}
	{cmd:omit date ... if dow(Mo) & year(2011 2012)}

{pstd}
通常，我们发现 {cmd:from}/{cmd:to} 比 {cmd:if} {cmd:year()} 更方便。

{marker r5}{...}
{title:省略命令：和}

{pstd}
 {cmd:omit} 命令中另一个常见的语法是 {cmd:and} {it:pmlist}。我们在编写圣诞假期时使用了它，

	{cmd:omit date 25dec* and -1      if dow(Tu We Th Fr)}
	{cmd:omit date 25dec* and (-2 -1) if dow(Sa)}
	{cmd:omit date 25dec* and (-3 -2) if dow(Su)}
	{cmd:omit date 25dec* and +1      if dow(Mo)}

{pstd}
{cmd:and} {it:pmlist} 指定了如果所指日期被省略，则也要省略的其它天。 额外的天数是根据它们与所指日期的相对天数来指定的。 请原谅不那么优雅的“所指日期”这个说法，但有时所指的日期是隐含的而不是明确地表达出来。 但是，对于这个问题，所指日期是在历史上几个年份的 {cmd:25dec}。
 
{pstd}
行 

	{cmd:omit date 25dec* and -1 if dow(Tu We Th Fr)}

{pstd}
表示如果 {cmd:25dec} 是星期二、星期三等，省略 {cmd:25dec} 和前一天。 行

	{cmd:omit date 25dec* and (-2 -1) if dow(Sa)}

{pstd}
表示如果 {cmd:25dec} 是星期六，则省略 {cmd:25dec} 以及前两天和前一天。 行 

	{cmd:omit date 25dec* and (-3 -2) if dow(Su)}

{pstd}
表示如果 {cmd:25dec} 是星期天，则省略 {cmd:25dec} 以及前3天和前2天。 行 

	{cmd:omit date 25dec* and +1 if dow(Mo)}

{pstd}
表示如果 {cmd:25dec} 是星期一，则省略 {cmd:25dec} 和后一天。

{pstd}
另一条 {cmd:omit} 命令用于解决不同的问题如下：

	{cmd:omit dowinmonth -1 We of (Nov Dec) and +1 if year(2009)}

{pstd}
请注意 {cmd:and} {cmd:+1}。 我们要省略所指日期以及如果年份是2009的后一天。这里的所指日期是 {cmd:-1} {cmd:We} {cmd:of} {cmd:(Nov Dec)}，也就是11月和12月的最后一个星期三。

{marker r6}{...}
{title:省略命令：省略日期}

{pstd}
{cmd:omit date} 的完整语法为 

{p 8 12 2}
[{cmd:from}
{c -(}{it:日期}|{cmd:.}{c )-}
{cmd:to}
{c -(}{it:日期}|{cmd:.}{c )-}{cmd::}]{bind:  }{cmd:omit} 
{cmd:date}
{it:pdate}
[{cmd:and} {it:pmlist}]
[{it:if}]

{pstd}
您可以省略特定日期， 

	{cmd:omit date 25dec2010}

{pstd}
或者您可以跨年份省略相同的日期：

	{cmd:omit date 25dec*}


{marker r7}{...}
{title:省略命令：省略一周中的日子}

{pstd}
{cmd:omit dayofweek} 的完整语法为 

{p 8 12 2}
[{cmd:from}
{c -(}{it:日期}|{cmd:.}{c )-}
{cmd:to}
{c -(}{it:日期}|{cmd:.}{c )-}{cmd::}]{bind:  }{cmd:omit} 
{cmd:dayofweek}
{it:dowlist}
[{it:if}]

{pstd}
指定的星期几（星期一、星期二等）将被省略。


{marker r8}{...}
{title:省略命令：省略月中的某天}

{pstd}
{cmd:omit dowinmonth} 的完整语法为 

{p 8 12 2}
[{cmd:from}
{c -(}{it:日期}|{cmd:.}{c )-}
{cmd:to}
{c -(}{it:日期}|{cmd:.}{c )-}{cmd::}]{bind:  }{cmd:omit} 
{it:pm#}
{it:dow}
[{cmd:of} {it:monthlist}]
[{cmd:and} {it:pmlist}]
[{it:if}]

{pstd}
{cmd:dowinmonth} 代表每月的某一天，指代比如每月的第一个星期一、第二个星期一、...、倒数第二个星期一以及最后一个星期一。  
这可以写成 
{cmd:+1} {cmd:Mo}， 
{cmd:+2} {cmd:Mo}， 
...，
{cmd:-2} {cmd:Mo}，以及
{cmd:-1} {cmd:Mo}。


{marker r8.5}{...}
{title:使用bcal create创建stbcal文件} 

{pstd}
商业日历可以从您的Stata安装中获取，或从其他Stata用户处获取。 您还可以编写自己的商务日历文件或使用 {cmd:bcal create} 命令根据当前数据集自动创建一个商务日历。 使用 {cmd:bcal create}，可以根据数据集中的间隔自动推断商业节假日，或者可以通过指定 {cmd:if} 和 {cmd:in} 限定词以及 {cmd:excludemissing()} 选项明确定义。 您还可以编辑使用 {cmd:bcal create} 创建的或从其他来源获取的商务日历。 建议使用 {cmd:bcal load} 或 {cmd:bcal describe} 来验证商务日历是否结构良好，并在编辑后保持良好。

{pstd}
有关 {cmd:bcal create} 的更多信息，请参阅 {help bcal_zh:[D] bcal}。


{marker r9}{...}
{title:stbcal文件的存放位置}

{pstd}
Stata会按照与ado文件相同的方式自动搜索stbcal文件。 Stata会在官方Stata目录、您的站点目录（{cmd:SITE}）、您当前的工作目录（{cmd:.}）、您的个人目录（{cmd:PERSONAL}）以及其他用户编写的材料目录（{cmd:PLUS}）中查找ado文件和stbcal文件。在此作者的计算机上，这些目录分别是

            {cmd}. sysdir
               {txt}STATA:  {res}C:\Program Files\Stata16\
                {txt}BASE:  {res}C:\Program Files\Stata16\ado\base\
                {txt}SITE:  {res}C:\Program Files\Stata16\ado\site\
                {txt}PLUS:  {res}C:\ado\plus\
            {txt}PERSONAL:  {res}C:\ado\personal\
            {txt}OLDPLACE:  {res}C:\ado\{txt}

{pstd}
请将您编写的日历放入 {cmd:.}、{cmd:PERSONAL} 或 {cmd:SITE}。您通过 {cmd:net} 或 {cmd:ssc} 获取的日历将由这些命令放入 {cmd:PLUS}。请参见 
{bf:{help sysdir_zh:[P] sysdir}}、 
{bf:{help net_zh:[R] net}}，以及
{bf:{help ssc_zh:[R] ssc}}。


{marker r10}{...}
{title:如何调试stbcal文件}

{pstd}
stbcal文件在需要时会自动加载，因为这可能发生在任何时候，甚至是一些不合时宜的时刻，因此不会生成任何输出。如果文件中存在错误，则不会提及该问题，此后Stata将简单地表现得好像从未找到该文件，换句话说，使用 {cmd:%tb}{it:calname} 格式的变量将以 {cmd:%g} 格式显示。

{pstd}
您可以告诉Stata立即加载日历文件并显示输出，包括错误消息。 输入 

	{cmd:. bcal load} {it:calname}

{pstd}
无论 {it:calname}{cmd:.stbcal} 存储在哪里，Stata都会找到它。 无论Stata是否已经加载了 {it:calname}{cmd:.stbcal}，无论是秘密加载还是由于您以前指示加载该文件，都会被重新加载，您将看到您所写的内容，以及任何错误消息。


{marker r11}{...}
{title:您可能未想到的日历创意}

{pstd}
商务日历显然不仅限于商业，也不必局限于日子。

{pstd}
假设您有每周数据，并希望创建一个只包含星期一的日历。您可以编码

	{hline 40} mondays.stbcal {hline 3}
	{cmd}version {ccl stata_version}

	purpose "只包含星期一"
	range 04jan1960 06jan2020
	centerdate 04jan1960

	omitdow (Tu We Th Fr Sa Su){txt}
	{hline 40} mondays.stbcal {hline 3}

{pstd}
假设您有半月数据，并希望包含每月的1日和15日。您可以编码

	{hline 40} smnth.stbcal {hline 3}
	{cmd}version {ccl stata_version}

	purpose "半月"
	range 01jan1960 15dec2020
	centerdate 01jan1960

	omit date 2jan*
	omit date 3jan*
	.
	.
	omit date 14jan*
	omit date 16jan*
	.
	.
	omit date 31jan*
	omit date  2feb*
	.
	.{txt}
	{hline 40} smnth.stbcal {hline 3}

{pstd}
请原谅省略号，但该文件会很长。即便如此，您只需创建一次。

{pstd}
作为最后一个例子，假设您只想要Stata的 {cmd:%td} 日期，但您希望它们以01jan1970为中心，而不是01jan1960。您可以编码

	{hline 40} rectr.stbcal {hline 3}
	{cmd}version {ccl stata_version}

	Purpose "%td中心在01jan1970"
	range 01jan1800 31dec2999
	centerdate 01jan1970{txt}
	{hline 40} rectr.stbcal {hline 3}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <datetime_business_calendars_creation.sthlp>}