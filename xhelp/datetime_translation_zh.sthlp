{smcl}
{* *! version 2.0.12  15may2018}{...}
{vieweralsosee "[D] Datetime translation" "mansection D Datetimetranslation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] Datetime" "help datetime_zh"}{...}
{vieweralsosee "[D] Datetime business calendars" "help datetime_business_calendars_zh"}{...}
{vieweralsosee "[D] Datetime display formats" "help datetime_display_formats_zh"}{...}
{viewerjumpto "Syntax" "datetime translation##syntax"}{...}
{viewerjumpto "Description" "datetime translation##description"}{...}
{viewerjumpto "Links to PDF documentation" "datetime_translation_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "datetime translation##remarks"}
{help datetime_translation:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[D] Datetime translation} {hline 2}}字符串到数值日期转换函数{p_end}
{p2col:}({mansection D Datetimetranslation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 4 2}
字符串到数值的日期和时间转换函数为

	    所需的SIF类型  {c |}  字符串到数值转换函数
            {hline 18}{c +}{hline 39}
            datetime/c        {c |}        {cmd:clock(}{it:HRFstr}{cmd:,} {it:mask} [{cmd:,} {it:topyear}]{cmd:)}
	    datetime/C        {c |}        {cmd:Clock(}{it:HRFstr}{cmd:,} {it:mask} [{cmd:,} {it:topyear}]{cmd:)}
                              {c |}
            date              {c |}         {cmd:date(}{it:HRFstr}{cmd:,} {it:mask} [{cmd:,} {it:topyear}]{cmd:)}
                              {c |}
            weekly date       {c |}       {cmd:weekly(}{it:HRFstr}{cmd:,} {it:mask} [{cmd:,} {it:topyear}]{cmd:)}
            monthly date      {c |}      {cmd:monthly(}{it:HRFstr}{cmd:,} {it:mask} [{cmd:,} {it:topyear}]{cmd:)}
            quarterly date    {c |}    {cmd:quarterly(}{it:HRFstr}{cmd:,} {it:mask} [{cmd:,} {it:topyear}]{cmd:)}
            half-yearly date  {c |}   {cmd:halfyearly(}{it:HRFstr}{cmd:,} {it:mask} [{cmd:,} {it:topyear}]{cmd:)}
            yearly date       {c |}       {cmd:yearly(}{it:HRFstr}{cmd:,} {it:mask} [{cmd:,} {it:topyear}]{cmd:)}
            {hline 18}{c BT}{hline 39}

{p 4 4 2}
其中

{p 8 8 2}
{it:HRFstr} 是要转换的字符串值（HRF），

{p 8 8 2}
            {it:topyear} 在 {it:{help datetime_translation##twodigit:处理两位数年份}}中描述，

{p 8 8 2}
而 {it:mask} 指定了日期和时间组件的顺序，并且是由下面这些元素序列构成的字符串：

	    代码  {c |} 含义
	    {hline 6}{c +}{hline 39}
             {cmd:M}    {c |} 月
             {cmd:D}    {c |} 月内天数
             {cmd:Y}    {c |} 4位年份
	     {cmd:19Y}  {c |} 将2位年份解释为19{it:xx}
             {cmd:20Y}  {c |} 将2位年份解释为20{it:xx}
                  {c |}
             {cmd:h}    {c |} 白天的小时
             {cmd:m}    {c |} 小时内的分钟 
             {cmd:s}    {c |} 分钟内的秒钟
                  {c |}
             {cmd:#}    {c |} 忽略一个元素
	    {hline 6}{c BT}{hline 39}

{p 8 8 2}
在 {it:mask} 中也允许使用空格，这样可以让 {it:mask} 更容易阅读，但其他没有影响。

{p 8 8 2}
{it:mask} 的示例包括

{p 12 23 2}
{cmd:"MDY"}{bind:      }{it:HRFstr}
包含月份、日期和年份，顺序如此。

{p 12 23 2}
{cmd:"MD19Y"}{bind:    }与 {cmd:"MDY"} 意思相同，只不过在 {it:HRFstr} 中可能包含两位数年份，并且当存在时，它们会被处理为以19开头的4位数年份。

{p 12 23 2}
{cmd:"MDYhms"}{bind:   }{it:HRFstr}
包含月份、日期、年份、小时、分钟和秒，顺序如此。

{p 12 23 2}
{cmd:"MDY hms"}{bind:  }与 {cmd:"MDYhms"} 意思相同；空格没有含义。

{p 12 23 2} {cmd:"MDY#hms"}{bind:  }意味着年份和小时之间将忽略一个元素。例如，{it:HRFstr} 包含值如 {cmd:"1-1-2010 at 15:23:17"} 或者值如 {cmd:"1-1-2010 at 3:23:17 PM"}。


{marker description}{...}
{title:描述}

{pstd}
这些函数将以人类可读形式（HRF）记录的日期和时间转换为所需的Stata内部形式（SIF）。  
有关Stata的日期和时间功能的介绍，请参见 {bf:{help datetime_zh:[D] Datetime}}。

{pstd}
另请参见 {it:{help datetime##s11:使用来自其他软件的日期和时间}} 在 {bf:{help datetime_zh:[D] Datetime}} 中。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D DatetimetranslationRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注在以下标题下出现：

	    {help datetime_translation##intro:介绍}
	    {help datetime_translation##mask:指定掩码}
	    {help datetime_translation##imask:HRF到SIF函数如何解释掩码}
	    {help datetime_translation##twodigit:处理两位数年份}
	    {help datetime_translation##incomplete:处理不完整的日期和时间}
	    {help datetime_translation##runtogether:翻译连续的日期，例如 20060125}
	    {help datetime_translation##validtimes:有效时间}
	    {help datetime_translation##fcnclock:clock()和Clock()函数}
	    {help datetime_translation##whytwo:为什么有两种SIF日期时间编码}
	    {help datetime_translation##advice:使用datetime/c和datetime/C的建议}
	    {help datetime_translation##leapsecs:确定何时发生闰秒}
	    {help datetime_translation##fcndate:date()函数}
	    {help datetime_translation##fcnother:其他转换函数}


{marker intro}{...}
    {title:介绍}

{p 4 4 2}
HRF到SIF转换函数用于将字符串HRF日期，如 "08/12/06"、"12-8-2006"、"12 Aug 06"、
"12aug2006 14:23"，以及 "12 aug06 2:23 pm"， 转换为SIF。 
HRF到SIF转换函数通常在导入或读取数据后使用。 
您先将日期信息读入字符串变量，然后HRF到SIF函数将字符串转换为Stata可以使用的内容，即SIF数值变量。

{p 4 4 2}
您使用 {cmd:generate} 来创建SIF变量。
转换函数在表达式中使用，例如 

{p 8 8 2}
. {cmd:generate double time_admitted = clock(time_admitted_str, "DMYhms")}{break}
. {cmd:format time_admitted %tc}

{p 8 8 2}
. {cmd:generate date_hired = date(date_hired_str, "MDY")}{break}
. {cmd:format date_hired %td}

{p 4 4 2}
每个转换函数 -- 例如上面的 {cmd:clock()} 和 {cmd:date()} --
都需要这两个参数：

{p 8 11 2}
1. {it:HRFstr} 指定要转换的字符串

{p 8 11 2}
2. {it:mask} 指定日期和时间组件在 {it:HRFstr} 中出现的顺序

{pstd}
注意：

{p 8 11 2}
1.  您选择转换函数 {cmd:clock()}、{cmd:Clock()}、{cmd:date()}， 取决于您希望返回的SIF值类型。

{p 8 11 2}
2.  您根据 {it:HRFstr} 的内容来指定掩码。

{pstd}
通常，您将希望将包含 "2006.08.13 14:23" 的 {it:HRFstr} 转换为SIF datetime/c或datetime/C值，并将包含 "2006.08.13" 的 {it:HRFstr} 转换为SIF日期值。
但是，如果您愿意，也可以反过来。在这种情况下，详细字符串将转换为仅对应于日期部分的SIF日期值，13aug2006，而不太详细的字符串将转换为对应于13aug2006 00:00:00 的SIF datetime值。


{marker mask}{...}
    {title:指定掩码}

{pstd}
参数 {it:mask} 是一个字符串，指定 {it:HRFstr} 中日期和时间组件的顺序。 
HRF日期字符串的示例和翻译所需的掩码包括以下内容：

          {it:HRFstr}                       对应的掩码
	  {hline 52}
          01dec2006 14:22                   {cmd:"DMYhm"}
          01-12-2006 14.22                  {cmd:"DMYhm"}

	  1dec2006 14:22                    {cmd:"DMYhm"}
	  1-12-2006 14:22                   {cmd:"DMYhm"}

          01dec06 14:22                     {cmd:"DM20Yhm"}
          01-12-06 14.22                    {cmd:"DM20Yhm"}

          December 1, 2006 14:22            {cmd:"MDYhm"}

          2006 Dec 01 14:22                 {cmd:"YMDhm"}
          2006-12-01 14:22                  {cmd:"YMDhm"}

          2006-12-01 14:22:43               {cmd:"YMDhms"}
          2006-12-01 14:22:43.2             {cmd:"YMDhms"}
          2006-12-01 14:22:43.21            {cmd:"YMDhms"}
          2006-12-01 14:22:43.213           {cmd:"YMDhms"}

          2006-12-01  2:22:43.213 pm        {cmd:"YMDhms"}  (参见 {help datetime_translation##note1:注释1})
          2006-12-01  2:22:43.213 pm.       {cmd:"YMDhms"}
          2006-12-01  2:22:43.213 p.m.      {cmd:"YMDhms"}
          2006-12-01  2:22:43.213 P.M.      {cmd:"YMDhms"}

	  20061201 1422                     {cmd:"YMDhm"}

	  14:22                             {cmd:"hm"}      (参见 {help datetime_translation##note2:注释2})
          2006-12-01                        {cmd:"YMD"} 

	  Fri Dec 01 14:22:43 CST 2006      {cmd:"#MDhms#Y"}
	  {hline 52}

{pstd}
注意：

{marker note1}{...}
{p 8 11 2}
1.  在处理上午和下午标记时，{it:mask} 中不需要包含任何特殊内容。 
当您包含代码 {cmd:h} 时，HRF到SIF函数会自动注意到子午线标记。

{marker note2}{...}
{p 8 11 2}
2.  您根据 {it:HRFstr} 中的内容指定掩码。
如果这只是所选SIF类型可能记录的内容的一部分，剩余元素将被设置为默认值。
{cmd:clock("14:22", "hm")} 将产生 01jan1960 14:22:00，并且 
{cmd:clock("2006-12-01", "YMD")} 将产生 01dec2006 00:00:00。
{cmd:date("jan 2006", "MY")} 将产生 01jan2006。

{p 4 4 2}
{it:mask} 可以包含空格，使其更具可读性；空格没有意义。因此，您可以输入 

{p 8 8 2}
. {cmd:generate double admit = clock(admitstr, "#MDhms#Y")}

{p 4 4 2}
或者输入

{p 8 8 2}
. {cmd:generate double admit = clock(admitstr, "# MD hms # Y")}

{p 4 4 2}
使用哪种都没有区别。


{marker imask}{...}
    {title:HRF到SIF函数如何解释掩码}

{p 4 4 2}
HRF到SIF函数在解释 {it:HRFstr} 时适用以下规则：

{p 8 12 2}
1.  对于每一个要转换的HRF字符串，移除所有标点符号，但秒与十分之一、百分之一和千分之一秒之间的句点除外。用空格替换移除的标点。

{p 8 12 2}
2.  在字符串中，每当字母和数字相邻，或者反之，插入一个空格。

{p 8 12 2}
3.  根据 {it:mask} 解释结果元素。

{p 4 4 2}
例如，考虑字符串 

{p 12 12 2}
01dec2006 14:22

{p 4 4 2}
在规则1下，该字符串变为 

{p 12 12 2}
01dec2006 14 22

{p 4 4 2}
在规则2下，该字符串变为 

{p 12 12 2}
01 dec 2006 14 22

{p 4 4 2}
最后，HRF到SIF函数应用规则3。如果掩码是 {cmd:"DMYhm"}，则函数将 "01" 解释为天，"dec" 解释为月份，等等。

{p 4 4 2}
或者考虑字符串 

{p 12 12 2}
Wed Dec 01 14:22:43 CST 2006

{p 4 4 2}
在规则1下，该字符串变为 

{p 12 12 2}
Wed Dec 01 14 22 43 CST 2006

{p 4 4 2}
应用规则2对字符串没有改变。现在应用规则3。
如果掩码是 {cmd:"#MDhms#Y"}，则翻译函数跳过 "Wed"，将 "Dec" 解释为月份，等等。

{p 4 4 2}
{cmd:#} 代码还有第二个用途。如果它出现在掩码的末尾，则表示要忽略剩余的 {it:string}。
考虑翻译字符串

{p 12 12 2}
Wed Dec 01 14 22 43 CST 2006 patient 42

{p 4 4 2}
在字符串中 "patient 42" 之前的掩码代码 {cmd:"#MDhms#Y"} 在这种情况下将导致缺失值。函数在转换中非常谨慎，如果未使用整个字符串，它们将返回缺失值。
然而，如果您在掩码末尾加上 {cmd:#}，函数将忽略字符串的其余部分。将掩码从 {cmd:"#MDhms#Y"} 更改为 {cmd:"#MDhms#Y#"} 将产生预期的结果。


{marker twodigit}{...}
    {title:处理两位数年份}

{p 4 4 2}
考虑翻译字符串 01-12-06 14:22，它应该解释为 01dec2006 14:22:00。转换函数提供两种方法来实现这一点。

{p 4 4 2}
第一种是指定掩码中的假定前缀。字符串 01-12-06 14:22 可以通过指定掩码 
{cmd:"DM20Yhm"} 来读取。如果我们希望将年份解释为 1906，则指定掩码为 {cmd:"DM19Yhm"}。我们甚至可以通过指定 {cmd:"DM18Yhm"} 来将年份解释为 1806。

{p 4 4 2}
如果我们的数据同时包含 01-12-06 14:22 和 15-06-98 11:01 呢？我们希望将第一个年份解释为 2006，将第二个年份解释为 1998。这就是可选参数 {it:topyear} 的目的：

{p 12 12 2}
{cmd:clock(}{it:string}{cmd:,} {it:mask} [{cmd:,} {it:topyear}]{cmd:)}

{p 4 4 2}
当您指定 {it:topyear} 时，您声明当 {it:string} 中的年份为两位数时，完整年份应通过找到不超过 {it:topyear} 的最大年份来获取。
因此，您可以编码为 

{p 8 8 2}
. {cmd:generate double timestamp = clock(timestr, "DMYhm", 2020)}

{p 4 4 2}
两位数年份 06 将被解释为 2006，因为 2006 不超过 2020。两位数年份 98 将被解释为 1998，因为 2098 超过 2020。


{marker incomplete}{...}
    {title:处理不完整的日期和时间}

{p 4 4 2}
转换函数并不要求每个日期和时间组件都被指定。

{p 4 4 2}
将 2006-12-01 与掩码 {cmd:"YMD"} 进行翻译的结果为 01dec2006 00:00:00。

{p 4 4 2}
将 14:22 与掩码 {cmd:"hm"} 进行翻译的结果为 01jan1960 14:22:00。

{p 4 4 2}
将 11-2006 与掩码 {cmd:"MY"} 进行翻译的结果为 01nov2006 00:00:00。

{p 4 4 2}
如果未在掩码中指定某个组件，则该组件的默认值为

            代码  {c |} 默认值（如果未指定）
	    {hline 6}{c +}{hline 27}
             {cmd:M}    {c |} 01
             {cmd:D}    {c |} 01
             {cmd:Y}    {c |} 1960
                  {c |}
             {cmd:h}    {c |} 00
             {cmd:m}    {c |} 00
             {cmd:s}    {c |} 00
	    {hline 6}{c BT}{hline 27}

{p 4 4 2}
因此，如果您有数据记录 "14:22"，意味着持续时间为14小时22分钟或每天的时间14:22，您可以使用 {cmd:clock(}{it:HRFstr}{cmd:,} {cmd:"hm")} 进行翻译。  
请参见
{it:{help datetime##s10:获取和处理持续时间}}
在
{bf:{help datetime_zh:[D] Datetime}}中。


{marker runtogether}{...}
    {title:翻译连续的日期，例如 20060125}

{p 4 4 2}
转换函数将翻译连续的日期和时间，如 20060125、060125 和 20060125110215（即 25jan2006 11:02:15）。您无需做任何特殊处理即可转换它们：

	. {cmd:display %d date("20060125", "YMD")}
	25jan2006

	. {cmd:display %td date("060125", "20YMD")}
	25jan2006

	. {cmd:display %tc clock("20060125110215", "YMDhms")}
	25jan2006 11:02:15

{p 4 4 2}
在数据上下文中，您可以输入

	. {cmd:gen startdate = date(startdatestr, "YMD")}

	. {cmd:gen double starttime = clock(starttimestr, "YMDhms")}

{p 4 4 2}
请记得将原始日期读入字符串。如果您错误地将日期读取为数值，最佳建议是再次读取日期。数字如 20060125 和 20060125110215 将被四舍五入，除非它们以 {cmd:double} 形式存储。

{p 4 4 2}
如果您错误地将变量读取为数值并已验证没有发生四舍五入，您可以使用 {cmd:string()} 函数将变量从数值转换为字符串，该函数有一元和二元形式。您需要二元形式：

	. {cmd:gen str startdatestr = string(startdatedouble, "%10.0g")}

	. {cmd:gen str starttimestr = string(starttimedouble, "%16.0g")}

{p 4 4 2}
如果您省略格式，{cmd:string()} 将生成 2.01e+07 用于 20060125 和 2.01e+13 用于 20060125110215。我们使用的格式宽度比整数的长度大2个字符，尽管使用过宽的格式不会造成损害。


{marker validtimes}{...}
    {title:有效时间}

{p 4 4 2}
27:62:90 是无效时间。如果您尝试将 27:62:90 转换为日期时间值，您将获得缺失值。

{p 4 4 2}
24:00:00 也是无效的。正确的时间应为第二天的 00:00:00。

{p 4 4 2}
在 {it:hh}:{it:mm}:{it:ss} 中，要求是 
0 <= {it:hh} < 24, 
0 <= {it:mm} < 60, 
且 
0 <= {it:ss} < 60，尽管有时允许 60。
31dec2005 23:59:60 是无效的 datetime/c，但有效的 datetime/C。
31dec2005 23:59:60 包含一个插入的闰秒。

{p 4 4 2}
30dec2005 23:59:60 在两种日期时间编码中都是无效的。
30dec2005 23:59:60 没有包含插入的闰秒。正确的日期时间应为 31dec2005 00:00:00。


{marker fcnclock}{...}
    {title:clock() 和 Clock() 函数}

{p 4 4 2}
Stata 提供了两种不同的日期时间编码，我们称之为 SIF datetime/c 和 SIF datetime/C，而其他人称之为“假定一天有 86,400 秒的时间”和“按闰秒调整的时间”或同样的，UTC 时间。

{pstd}
这两个函数的语法是相同的： 

{p 12 12 2}
{cmd:clock(}{it:HRFstr}{cmd:,} {it:mask} [{cmd:,} {it:topyear}]{cmd:)}

{p 12 12 2}
{cmd:Clock(}{it:HRFstr}{cmd:,} {it:mask} [{cmd:,} {it:topyear}]{cmd:)}

{pstd}
函数 {cmd:Clock()} 与函数 {cmd:clock()} 几乎相同，除了 {cmd:Clock()} 返回 datetime/C 值，而非 datetime/c 值。例如，

       2010年11月23日中午 = 1,606,132,800,000  的 datetime/c
                         = 1,606,132,824,000  的 datetime/C

{pstd} 
它们有所不同，因为在 1960年1月1日到 2010年11月23日之间，datetime/C 中插入了 24 秒。相应地，{cmd:Clock()} 了解时间中存在闰秒，例如 1997年6月30日 23:59:60。 {cmd:clock()} 将认为 1997年6月30日 23:59:60 是无效时间，因此返回缺失值。


{marker whytwo}{...}
    {title:为何存在两种SIF日期时间编码}

{p 4 4 2}
Stata 提供了两种不同的日期时间编码，SIF datetime/c 和 SIF datetime/C。

{p 4 4 2}
SIF datetime/c 假设每天下有 24*60*60*1000 毫秒，就像原子钟一样。 原子钟计算原子内核与电子之间的振荡次数，从而提供实际时间经过的测量。

{p 4 4 2}
一天的时间测量历史上一直基于天文观测，这是一种复杂的说法，意味着这些测量基于观察太阳。太阳在中午时应该处于最高点，对吗？因此，不管您是通过沙子流逝还是绷紧的弹簧来记录时间，您都会定期校准您的时钟，然后按部就班。 在古代，人们理解每分钟的60秒，每小时的60分钟和每天的24小时都是理论目标，没有机械装置可以准确重现。如今，我们有更正式的时间测量定义。 一秒是133铯核基态中两个能级之间辐射的9192631770 辐射周期。显然，我们的设备比古代人的要好，因此问题得到解决，对吧？ 错了。实际上，有两个问题：正式定义的长度稍短，无法准确计算一天的长度，并且地球的自转正在减慢。

{p 4 4 2}
因此，自1972年起，原子钟每年添加一次或两次闰秒，以保持时间测量与地球自转同步。然而，与闰年不同，没有公式来预测闰秒的发生。地球平均上可能在减速，但这一过程具有很大的随机性。因此，闰秒的确定由委员会决定，并在插入前六个月公布。根据需要，在6月30日和12月31日的当天将插入闰秒。确切的时间被指定为23:59:60。

{p 4 4 2}
未调整的原子钟可能准确地标记真实时间的流逝，但您需要理解闰秒与其他每一秒同样真实。一旦插入闰秒，它就会像任何其他秒一样滴答作响，并且在此滴答中真实事件可以发生。

{p 4 4 2}
您可能听说过 GMT 和 UTC 等术语。  

{p 4 4 2}
GMT 是基于天文观测的旧格林威治标准时间。GMT 已被 UTC 所取代。

{p 4 4 2}
UTC 是协调世界时间。它由原子钟测量，并偶尔进行闰秒的校正。 
UTC 源自其他两个时间，UT1 和 TAI。
UT1 是平均太阳时间，UTC 是通过偶尔添加闰秒与其同步的。
TAI 是 UTC 的基础时间。
TAI 是各种原子计时器的统计组合，历史上并没有均匀计时； 参见 
{browse "http://www.ucolick.org/~sla/leapsecs/timescales.html":http://www.ucolick.org/~sla/leapsecs/timescales.html}，特别是 
{browse "http://www.ucolick.org/~sla/leapsecs/dutc.html#TAI":http://www.ucolick.org/~sla/leapsecs/dutc.html#TAI}。

{p 4 4 2}
UNK 是我们用于大多数人使用的时间标准。UNK 代表未知或无知。UNK 是基于最近的时间观测，可能是 UTC，之后仅假定每天有 86,400 秒。

{p 4 4 2}
UNK 标准适合许多用途，使用时您将希望使用 SIF datetime/c，而不是经过闰秒调整的datetime/C 编码。如果您使用计算机时间戳数据，则需要了解时间戳系统是否考虑了闰秒调整。即使您不关心每隔一秒的增减，问题仍可能出现。

{p 4 4 2}
例如，您可能从其他系统中导入记录自某个约定日期以来经过的毫秒数的时间戳值。您可能这样做，但如果选择了错误的编码方案（在应该选择 datetime/C 时选择 datetime/c，反之亦然），则较新的时间将偏差 24 秒。

{p 4 4 2}
为了避免此类问题，您可以决定使用HRF格式导入和导出数据，例如 "Fri Aug 18 14:05:36 CDT 2010"。这种方法有其优点，但对于 datetime/C（UTC）编码，像 23:59:60 这样的时间是可能的。某些系统将拒绝解码此类时间。

{p 4 4 2}
Stata 拒绝以 datetime/c 编码（函数 {cmd:clock()}）解码 23:59:60，而接受 datetime/C（函数 {cmd:Clock()}）。当 datetime/C 函数 {cmd:Clock()} 看到以60秒为单位的时间时， {cmd:Clock()} 验证该时间是否为官方闰秒之一。
因此，尝试从可打印形式进行转换时，首先尝试假设使用 datetime/c，并检查结果是否缺失。 如果没有缺失值，则可以假设使用 datetime/c 是有效的。然而，如果存在缺失值且为闰秒所致，而非其他错误，则必须使用 datetime/C 的 {cmd:Clock()} 来转换 HRF。之后，如果您仍希望在 datetime/c 单位中工作，请使用函数 {cmd:cofC()} 将 datetime/C 值转换为 datetime/c。

{p 4 4 2}
如果精度很重要，处理 datetime/C 数据的最佳方法就是将其视为此。 不便之处在于，您不能假定每天有 86,400 秒。 要获得两个日期之间的持续时间，您必须减去涉及的两个时间值。 另一个困难与处理未来的日期有关。 在 datetime/C（UTC）编码下，没有设定任何日期的值，大于六个月的将来日期。
以下是建议的摘要。


{marker advice}{...}
    {title:使用 datetime/c 和 datetime/C 的建议}

{p 4 4 2}
Stata 提供了两种日期时间编码：

{p 8 13 2}
1. datetime/C，也称为 UTC，考虑到闰秒

{p 8 8 2}
2. datetime/c，忽略闰秒（它假定每天下有 86,400 秒）

{p 4 4 2}
系统在处理时间变量时有所不同。 SAS 忽略闰秒。 Oracle 包含它们。 Stata可以处理这两种情况。
以下是我们的建议：

{p 8 12 2}
    o  如果您从考虑闰秒的系统获取数据，请使用 Stata 的 datetime/C 编码导入。

{p 12 16 2}
           a.  如果您后来需要将数据导出到未考虑闰秒的系统，请在导出之前使用 Stata 的 {cmd:cofC()} 函数转换时间值。

{p 12 16 2}
           b.  如果您打算 {cmd:tsset} 时间变量，并且分析将以秒级或更细的级别进行，只需 {cmd:tsset} datetime/C 变量，并在必要时指定适当的 {cmd:delta()}，例如， {cmd:delta(1000)} 表示秒。

{p 12 16 2}
           c.  如果您打算 {cmd:tsset} 时间变量，并且分析将粗略于秒级（分钟、小时等），请从 datetime/C 变量创建 datetime/c 变量 ({cmd:generate} {cmd:double} {it:tctime} = {cmd:cofC(}{it:tCtime}{cmd:)}) 并 {cmd:tsset}，如有必要，指定适当的 {cmd:delta()}。您必须这样做，因为在 datetime/C 变量中，不一定有60秒组成一分钟；某些分钟会有61秒。

{p 8 12 2}
    o  如果您从忽略闰秒的系统获取数据，请使用Stata的datetime/c编码。

{p 12 16 2}
            a.  如果您后来需要将数据导出到考虑闰秒的系统，请在导出之前使用 Stata 的 {cmd:Cofc()} 函数转换时间值。

{p 12 16 2}
            b.  如果您打算 {cmd:tsset} 时间变量，仅需 {cmd:tsset}，并指定适当的 {cmd:delta()}。

{p 4 4 2}
一些用户更喜欢始终使用 Stata 的 datetime/c，因为 {cmd:%tc} 值稍微容易处理。您可以始终使用 datetime/c，前提是 

{p 8 12 2}
o  您不介意最多 1 秒的误差，并且

{p 8 12 2}
o  您不从其他系统导入或导出使用闰秒的数值（时钟滴答），因为这样可能会引入接近 30 秒的误差。

{p 4 4 2}
如果使用 datetime/C 变量，请记住以下两点：

{p 8 12 2}
1.  两个日期之间的秒数取决于日期发生的时间。 从一个日期算起的五天并不只是将 5*24*60*60*1000 毫秒相加。这可能需要额外添加1,000毫秒。从现在起的365天可能需要增加1,000或2,000毫秒。 跨度越长，可能需要的越多。 
添加持续时间到 datetime/C 变量的最佳方法是提取组件，添加到它们，然后根据数值组件重构。

{p 8 12 2}
2.  您无法准确预测超过六个月后的日期时间。 我们不知道2026年12月25日 00:00:00 的 datetime/C 值是多少，因为在这段时间内，国际地球自转参考系统服务（IERS）将两次宣布是否插入闰秒。

{pstd}
您可以帮助缓解这些不便。 面朝西方并投掷石头。 只有当石头落回地球才会带来短暂的好处，因此您需要用力投掷它们。 我们知道您在想什么，但这不需要协调的努力。


{marker leapsecs}{...}
    {title:确定何时发生闰秒}

{p 4 4 2}
Stata 系统文件 {cmd:leapseconds.maint} 列出了发生闰秒的日期。该文件定期更新（参见 
{manhelp update R}；当您 {cmd:update all} 时将更新该文件），Stata 的 datetime/C 函数访问该文件以了解何时发生闰秒。

{p 4 4 2}
您也可以访问它。要查看文件，请输入 

	. {bf:{view leapseconds.maint, adopath asis:viewsource leapseconds.maint}}


{marker fcndate}{...}
    {title:date() 函数}

{p 4 4 2}
{cmd:date()} 函数的语法为 

{p 12 12 2}
{cmd:date(}{it:string}{cmd:,} {it:mask} [{cmd:,} {it:topyear}]{cmd:)}

{p 4 4 2}
{cmd:date()} 函数与 {cmd:clock()} 相同，只是在于它返回的是 SIF 日期值而非日期时间值。 {cmd:date()} 函数等同于 {cmd:dofc(clock())}。

{pstd}
{cmd:daily()} 是 {cmd:date()} 的同义词。


{marker fcnother}{...}
    {title:其他转换函数}

{p 4 4 2}
其他转换函数为

	    SIF类型          {c |}  HRF到SIF 转换函数
            {hline 18}{c +}{hline 38}
            weekly date       {c |}      {cmd:weekly(}{it:HRFstr}{cmd:,} {it:mask} [{cmd:,} {it:topyear}]{cmd:)}
            monthly date      {c |}     {cmd:monthly(}{it:HRFstr}{cmd:,} {it:mask} [{cmd:,} {it:topyear}]{cmd:)}
            quarterly date    {c |}   {cmd:quarterly(}{it:HRFstr}{cmd:,} {it:mask} [{cmd:,} {it:topyear}]{cmd:)}
            half-yearly date  {c |}  {cmd:halfyearly(}{it:HRFstr}{cmd:,} {it:mask} [{cmd:,} {it:topyear}]{cmd:)}
            {hline 18}{c BT}{hline 38}
            {it:HRFstr} 是要翻译的值。 
            {it:mask} 指定组件的顺序。
            {it:topyear} 在 {it:{help datetime_translation##twodigit:处理两位数年份}} 中描述，如上所述。

{p 4 4 2}
这些函数很少使用，因为数据很少以这些格式到达。

{p 4 4 2}
每个函数翻译一对数字： {cmd:weekly()} 翻译一年和周数（1-52）， {cmd:monthly()} 翻译一年和月份数（1-12）， {cmd:quarterly()} 翻译一年和季度数（1-4），而 {cmd:halfyearly()} 翻译一年和半年数（1-2）。

{p 4 4 2}
允许使用的掩码远比 {cmd:clock()}、{cmd:Clock()} 和 {cmd:date()} 的掩码有限：

	    代码  {c |} 含义
	    {hline 6}{c +}{hline 39}
             {cmd:Y}    {c |} 4位年份
	     {cmd:19Y}  {c |} 将2位年份解释为19{it:xx}
             {cmd:20Y}  {c |} 将2位年份解释为20{it:xx}
                  {c |}
             {cmd:W}    {c |} 周数       （仅 {cmd:weekly()}）
             {cmd:M}    {c |} 月数      （仅 {cmd:monthly()}）
             {cmd:Q}    {c |} 季度数    （仅 {cmd:quarterly()}）
             {cmd:H}    {c |} 半年数  （仅 {cmd:halfyearly()}）
	    {hline 6}{c BT}{hline 39}
            要翻译的一对数字必须用空格或标点分隔。 不允许有额外字符。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <datetime_translation.sthlp>}