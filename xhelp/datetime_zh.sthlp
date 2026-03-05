{smcl}
{* *! version 2.1.19  21jun2019}{...}
{vieweralsosee "[D] Datetime" "mansection D Datetime"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] Datetime business calendars" "help datetime_business_calendars_zh"}{...}
{vieweralsosee "[D] Datetime display formats" "help datetime_display_formats_zh"}{...}
{vieweralsosee "[D] Datetime translation" "help datetime_translation_zh"}{...}
{viewerjumpto "Syntax" "datetime_zh##syntax"}{...}
{viewerjumpto "Description" "datetime_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "datetime_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "datetime_zh##remarks"}
{help datetime:English Version}
{hline}{...}
{p2colset 1 17 26 2}{...}
{p2col:{bf:[D] Datetime} {hline 2}}日期和时间值及变量{p_end}
{p2col:}({mansection D Datetime:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 4 4 2}
语法分为以下几个部分：
    
	{help datetime##s1:日期类型及其可读形式 (HRF)}
	{help datetime##s2:Stata 内部形式 (SIF)}
	{help datetime##s3:HRF 到 SIF 转换函数}
	{help datetime##s4:以 HRF 显示 SIF}
	{help datetime##s5:从组成部分构建 SIF}
	{help datetime##s6:SIF 到 SIF 转换}
	{help datetime##s7:从 SIF 中提取时间组件}
	{help datetime##s8:从 SIF 中提取日期组件}
	{help datetime##s9:方便地输入 SIF 值}
	{help datetime##s10:获取和处理持续时间}
	{help datetime##s11:使用其他软件的日期和时间}

{p 4 4 2}
另见

{p2colset 9 39 41 2}{...}
{synopt: {bf:{help datetime_translation_zh:[D] Datetime translation}}}字符串到日期的数值转换函数
{p_end}
{synopt:{bf:{help datetime_display_formats_zh:[D] Datetime display formats}}}日期和时间的显示格式
{p_end}
{p2colreset}{...}

{marker s1}{...}
    {title:日期类型及其可读形式 (HRF)}

         日期类型         HRF 示例
	 {hline 44}
         时间戳          20jan2010 09:15:22.120  

         日期              20jan2010, 20/01/2010, ...
 
         每周日期       2010w3
         每月日期      2010m1
         每季度日期    2010q1
         半年日期      2010h1
         每年日期       2010
	 {hline 44}

{pstd}
     上表中的 HRF 样式仅为示例。
     您可能更喜欢 2010.01.20; Jan. 20, 2010; 2010-1; 等等。

{pstd}
     除每年日期外，HRF 通常存储在字符串变量中。如果您读取原始数据，请将 HRF 读入字符串。

{pstd}
     HRF 的可读性并不特别有用，因此 Stata 提供了另一种记录日期的方式，称为 Stata 内部形式 (SIF)。您可以将 HRF 日期转换为 SIF。

{marker s2}{...}
    {title:Stata 内部形式 (SIF)}

{pstd}下表中的数值等价于上表中
{help datetime##s1:前面的部分}中的字符串值。

         SIF 类型        SIF 示例       单位
	 {hline 65}
         时间戳/c      1,579,598,122,120     自 
                                               01jan1960 00:00:00.000 以来的毫秒， 
					       假设 86,400 秒/天

	 时间戳/C      1,579,598,146,120     自 
                                               01jan1960 00:00:00.000 以来的毫秒， 
                                               调整了闰秒*
    
         日期                       18,282     自 01jan1960 以来的天数
                                               (01jan1960 = 0)
     
         每周日期                 2,601     自 1960w1 以来的周数
         每月日期                  600     自 1960m1 以来的月数
         每季度日期                200     自 1960q1 以来的季度数
         半年日期                  100     自 1960h1 以来的半年数
         每年日期                  2010     自 0000 年以来的年数
	 {hline 65}
{p 9 13 2}
* SIF 时间戳/C 相当于协调世界时间 (UTC)。
             在 UTC 中，闰秒会定期添加 
             因为平均太阳日的长度正缓慢增加。
             请参见 {it:{help datetime_translation##whytwo:为什么有两种 SIF 时间戳编码}}
             在 {bf:{help datetime_translation_zh:[D] Datetime translation}} 中。
             
{pstd}
    SIF 值作为常规 Stata 数值变量存储。

{pstd}
    您可以通过使用 HRF 到 SIF 转换函数将 HRF 转换为 SIF；请参阅 
    接下来的部分，称为 {it:{help datetime##s3:HRF 到 SIF 转换函数}}。

{pstd}
    您可以通过对数值变量施加适当的 {cmd:%}{it:fmt} 来使数值 SIF 可读；请参阅
    {it:{help datetime##s4:以 HRF 显示 SIF}}，如下所述。

{pstd}
    您可以通过使用 SIF 到 SIF 转换函数从一种 SIF 类型转换为另一种；请参阅
    {it:{help datetime##s6:SIF 到 SIF 转换}}，
    以下。

{pstd}
    SIF 日期很方便，因为您可以相减以获得日期之间的时间，例如，

     datetime2 - datetime1 = datetime1 和 datetime2 之间的毫秒
                             （除以 1,000 以获得秒数）

         date2 - date1     = date1 和 date2 之间的天数

         week2 - week1     = week1 和 week2 之间的周数

        month2 - month1    = month1 和 month2 之间的月数

         half2 - half1     = half1 和 half2 之间的半年数

         year2 - year1     = year1 和 year2 之间的年数

{pstd}
    在其余文本中，我们将使用以下符号：

	{it:tc}: 包含 SIF 时间戳/c 值的 Stata 双精度变量
	{it:tC}: 包含 SIF 时间戳/C 值的 Stata 双精度变量

	{it:td}: 包含 SIF 日期值的 Stata 变量

        {it:tw}: 包含 SIF 每周日期值的 Stata 变量
        {it:tm}: 包含 SIF 每月日期值的 Stata 变量
        {it:tq}: 包含 SIF 每季度日期值的 Stata 变量
        {it:th}: 包含 SIF 半年日期值的 Stata 变量
        {it:ty}: 包含 SIF 每年日期值的 Stata 变量

{marker s3}{...}
    {title:HRF 到 SIF 转换函数}

{* 在此表中，“半年”不能更改为“半年制”，因为它不适合。}{...}
{* 表格无法增大。}{...}
                        转换函数
        SIF 类型        HRF 到 SIF                     注意
	{hline 69}
        时间戳/c      {it:tc} =      {cmd:clock(}{it:HRFstr}{cmd:,} {it:mask}{cmd:)}  {it:tc} 必须为 {cmd:double}
        时间戳/C      {it:tC} =      {cmd:Clock(}{it:HRFstr}{cmd:,} {it:mask}{cmd:)}  {it:tC} 必须为 {cmd:double}

        日期            {it:td} =       {cmd:date(}{it:HRFstr}{cmd:,} {it:mask}{cmd:)}  {it:td} 可为 {cmd:float} 或
                                                                  {cmd:long}

        每周日期     {it:tw} =     {cmd:weekly(}{it:HRFstr}{cmd:,} {it:mask}{cmd:)}  {it:tw} 可为 {cmd:float} 或 {cmd:int}
        每月日期    {it:tm} =    {cmd:monthly(}{it:HRFstr}{cmd:,} {it:mask}{cmd:)}  {it:tm} 可为 {cmd:float} 或 {cmd:int}
        每季度日期  {it:tq} =  {cmd:quarterly(}{it:HRFstr}{cmd:,} {it:mask}{cmd:)}  {it:tq} 可为 {cmd:float} 或 {cmd:int}
        半年日期  {it:th} = {cmd:halfyearly(}{it:HRFstr}{cmd:,} {it:mask}{cmd:)}  {it:th} 可为 {cmd:float} 或 {cmd:int}
        每年日期  {it:ty} = {cmd:yearly(}{it:HRFstr}{cmd:,} {it:mask}{cmd:)}  {it:ty} 可为 {cmd:float} 或 {cmd:int}
	{hline 69}
{p 8 8 2}
        警告：为防止精度丧失，时间戳 SIF 
        必须作为 {cmd:double} 存储。

{pstd}
示例：

{p 8 11 2}
1. 您在字符串变量 {cmd:mystr} 中存储了时间戳，例如
   "{bf:2010.07.12 14:32}".  要转换为 SIF 时间戳/c，您输入 

{col 16}{cmd:. gen double eventtime = clock(mystr, "YMDhm")}

{p 11 11 2}
遮罩 {cmd:"YMDhm"} 指定时间戳组件的顺序。在这种情况下，它们是年、月、日、小时和分钟。

{p 8 12 2}
2. 您在 {cmd:mystr} 中存储了时间戳，示例为 
   "{bf:2010.07.12 14:32:12}".  您输入 

{col 16}{cmd:. gen double eventtime = clock(mystr, "YMDhms")}

{p 11 11 2}
   遮罩元素 {cmd:s} 指定秒。在示例 1 中，没有
   秒；在这个例子中，有。

{p 8 11 2}
3. 您在 {cmd:mystr} 中存储了时间戳，示例为 
   "{bf:2010 Jul 12 14:32}".  您输入 

{col 16}{cmd:. gen double eventtime = clock(mystr, "YMDhm")}

{p 11 11 2}
    这是您在示例 1 中输入的相同命令。在遮罩中，
    您指定组件的顺序；Stata 自行确定样式。在示例 1 中，月份为数字；在这个例子中，月份的拼写是（碰巧是缩写）。

{p 8 11 2}
4. 您在 {cmd:mystr} 中存储了时间戳，示例为 
    "{bf:July 12, 2010 2:32 PM}".  您输入 

{col 16}{cmd:. gen double eventtime = clock(mystr, "MDYhm")}

{p 12 12 2}
    Stata 自动查找 AM 和 PM， 
    区分大小写，带或不带句点。

{p 8 11 2}
5. 您在 {cmd:mystr} 中存储了时间戳，示例为 
   "{bf:7-12-10 14.32}".  两位数年份应解释为 
   以 20 开头。您输入 

{col 16}{cmd:. gen double eventtime = clock(mystr, "MD20Yhm")}

{p 8 11 2}
6. 您在 {cmd:mystr} 中存储了时间戳，示例为 
   "{bf:14:32 on 7/12/2010}".  您输入
    
{col 16}{cmd:. gen double eventtime = clock(mystr, "hm#MDY")}

{p 11 11 2}
    在 {cmd:m} 和 {cmd:M} 之间的 {cmd:#} 符号意味着“忽略在分钟和月份之间的一件事”，在这种情况下就是单词“on”。
    如果您从遮罩中省略了 {cmd:#}，新变量 {cmd:eventtime} 
    将包含缺失值。

{p 8 11 2}
7. 您在 {cmd:mystr} 中存储了日期，示例为 "{bf:22/7/2010}". 
   在这种情况下，您想创建一个 SIF 日期，而不是时间戳。
   您输入

{col 16}{cmd:. gen eventdate = date(mystr, "DMY")}

{p 12 12 2}
    输入 
  
{col 16}{cmd:. gen double eventtime = clock(mystr, "DMY")}

{p 12 12 2}
    也可以。变量 {cmd:eventtime} 将包含 
    与 {cmd:eventdate} 不同的编码；即，它将包含 
    自 1jan1960 以来的毫秒，而不是天数（1,595,376,000,000 而不是
    18,465）。时间戳值 1,595,376,000,000 对应于
    22jul2010 00:00:00.000。

{pstd}
请参阅 {bf:{help datetime_translation_zh:[D] Datetime translation}} 
获取有关 HRF 到 SIF 转换函数的更多信息。

{marker s4}{...}
    {title:以 HRF 显示 SIF}

                          显示格式以 
         SIF 类型         以 HRF 表示 SIF
	 {hline 35}
         时间戳/c            {cmd:%tc}
         时间戳/C            {cmd:%tC}

         日期                  {cmd:%td}

         每周日期           {cmd:%tw}
         每月日期          {cmd:%tm}
         每季度日期        {cmd:%tq}
         半年日期      {cmd:%th}
         每年日期           {cmd:%ty}
	 {hline 35}

{pstd}
上面的显示格式是每种 SIF 的最简单形式。
您可以控制每种类型的 SIF 日期的显示方式；
请参阅 {bf:{help datetime_display_formats_zh:[D] Datetime display formats}}。

{pstd}
示例：

{p 8 11 2}
1. 您在字符串变量 {cmd:mystr} 中存储了时间戳，例如
   "{bf:2010.07.12 14:32}".  要转换为 SIF 时间戳/c 并且 
   在显示时使新变量可读，您输入 

{col 16}{cmd:. gen double eventtime = clock(mystr, "YMDhm")}
{col 16}{cmd:. format eventtime %tc}

{p 8 11 2}
2. 您在 {cmd:mystr} 中存储了日期，示例为 "{bf:22/7/2010}". 
   要转换为 SIF 日期并使新变量在 
   显示时可读，您输入 

{col 16}{cmd:. gen eventdate = date(mystr, "DMY")}
{col 16}{cmd:. format eventdate %td}

{marker s5}{...}
    {title:从组成部分构建 SIF}

                           函数构建
        SIF 类型           从组件
	{hline 48}
        时间戳/c         {it:tc} = {cmd:mdyhms(}{it:M}{cmd:,} {it:D}{cmd:,} {it:Y}{cmd:,} {it:h}{cmd:,} {it:m}{cmd:,} {it:s}{cmd:)}
                           {it:tc} = {cmd:dhms(}{it:td}{cmd:,} {it:h}{cmd:,} {it:m}{cmd:,} {it:s}{cmd:)}
                           {it:tc} = {cmd:hms(}{it:h}{cmd:,} {it:m}{cmd:,} {it:s}{cmd:)}

        时间戳/C         {it:tC} = {cmd:Cmdyhms(}{it:M}{cmd:,} {it:D}{cmd:,} {it:Y}{cmd:,} {it:h}{cmd:,} {it:m}{cmd:,} {it:s}{cmd:)}
                           {it:tC} = {cmd:Cdhms(}{it:td}{cmd:,} {it:h}{cmd:,} {it:m}{cmd:,} {it:s}{cmd:)}
                           {it:tC} = {cmd:Chms(}{it:h}{cmd:,} {it:m}{cmd:,} {it:s}{cmd:)}

        日期               {it:td} = {cmd:mdy(}{it:M}{cmd:,} {it:D}{cmd:,} {it:Y}{cmd:)}

        每周日期        {it:tw} = {cmd:yw(}{it:Y}{cmd:,} {it:W}{cmd:)}
        每月日期       {it:tm} = {cmd:ym(}{it:Y}{cmd:,} {it:M}{cmd:)}
        每季度日期     {it:tq} = {cmd:yq(}{it:Y}{cmd:,} {it:Q}{cmd:)}
        半年日期      {it:th} = {cmd:yh(}{it:Y}{cmd:,} {it:H}{cmd:)}
        每年日期        {it:ty} = {cmd:y(}{it:Y}{cmd:)}
	{hline 48}
        警告：时间戳的 SIF 必须存储为 {cmd:double}。

{pstd}
示例：

{p 8 11 2}
1. 您的数据集中有三个变量，{cmd:mo}, {cmd:da}, 和 {cmd:yr}，每个变量都包含数值形式的日期组成部分。要转换为 SIF 日期，您输入 

{col 16}{cmd:. gen eventdate = mdy(mo, da, yr)}
{col 16}{cmd:. format eventdate %td}

{p 8 11 2}
2. 您的数据集中有两个数值变量，{cmd:mo} 和 {cmd:yr}。
   要转换为 SIF 日期，表示该月的第一天，您输入 

{col 16}{cmd:. gen eventdate = mdy(mo, 1, yr)}
{col 16}{cmd:. format eventdate %td}

{p 8 11 2}
3. 您的数据集中有两个数值变量，{cmd:da} 和 {cmd:yr}，还有一个字符串变量，{cmd:month}，其内容为月份的拼写。在这种情况下，不要使用从组件构建的函数。而是构建一个新的字符串变量，其中包含 HRF，然后使用 HRF 到 SIF 转换函数转换字符串：

{col 16}{cmd:. gen str work  = month + " " + string(da) + " " + string(yr)}
{col 16}{cmd:. gen eventdate = date(work, "MDY")}
{col 16}{cmd:. format eventdate %td}

{marker s6}{...}
    {title:SIF 到 SIF 转换}

                   {c |} 转换为：
       从：       {c |}     时间戳/c   时间戳/C   日期
       {hline 12}{c +}{hline 42}
       时间戳/c  {c |}                  {it:tC}={cmd:Cofc(}{it:tc}{cmd:)}  {it:td}={cmd:dofc(}{it:tc}{cmd:)}
       时间戳/C  {c |}     {it:tc}={cmd:cofC(}{it:tC}{cmd:)}               {it:td}={cmd:dofC(}{it:tC}{cmd:)}
       日期        {c |}     {it:tc}={cmd:cofd(}{it:td}{cmd:)}  {it:tC}={cmd:Cofd(}{it:td}{cmd:)}  
       每周      {c |}                               {it:td}={cmd:dofw(}{it:tw}{cmd:)}
       每月     {c |}                               {it:td}={cmd:dofm(}{it:tm}{cmd:)}
       每季度   {c |}                               {it:td}={cmd:dofq(}{it:tq}{cmd:)}
       半年     {c |}                               {it:td}={cmd:dofh(}{it:th}{cmd:)}
       每年      {c |}                               {it:td}={cmd:dofy(}{it:ty}{cmd:)}
       {hline 12}{c BT}{hline 42}

                   {c |} 转换为：
       从：       {c |}     半年          每年
       {hline 12}{c +}{hline 42}
       日期        {c |}     {it:th}={cmd:hofd(}{it:td}{cmd:)}  {it:ty}={cmd:yofd(}{it:td}{cmd:)}
       {hline 12}{c BT}{hline 42}

{pstd}
       要转换缺失条目，请使用两个函数，
       视情况通过日期或时间戳进行转换。例如，每季度和每月为 {cmd:tq}={cmd:qofd(dofm(}{it:tm}{cmd:))}。

{pstd} 
示例：

{p 8 11 2}
1. 您有 SIF 时间戳/c 变量 {cmd:eventtime}，希望创建 
   新变量 {cmd:eventdate}，其中仅包含日期。您输入

{col 16}{cmd:. gen eventdate = dofc(eventtime)}
{col 16}{cmd:. format eventdate %td}

{p 8 11 2}
2. 您有 SIF 日期变量 {cmd:eventdate}，希望从中创建 
   新的 SIF 时间戳/c 变量 {cmd:eventtime}。您输入

{col 16}{cmd:. gen double eventtime = cofd(eventdate)}
{col 16}{cmd:. format eventtime %tc}

{p 11 11 2}
新变量的时间组件将设置为默认值 
00:00:00.000。

{p 8 11 2}
3. 您有 SIF 每季度变量 {cmd:eventqtr}，希望从中创建 
   新的 SIF 日期变量 {cmd:eventdate}。您输入

{col 16}{cmd:. gen eventdate = dofq(eventqtr)}
{col 16}{cmd:. format eventdate %tq}

{p 11 11 2}
新变量 {cmd:eventdate} 将包含第 1 季度的 01jan 日期，第 2 季度的 01apr 日期，第 3 季度的 01jul 日期，以及第 4 季度的 01oct 日期。

{p 8 11 2}
4. 您有 SIF 时间戳/c 变量 {cmd:admittime}，希望从中 
   创建新的 SIF 每季度变量 {cmd:admitqtr}。您输入

{col 16}{cmd:. gen admitqtr = qofd(dofc(admittime))}
{col 16}{cmd:. format admitqtr %tq}

{p 11 11 2}
由于没有 {cmd:qofc()} 函数，您使用 {cmd:qofd(dofc())}。

{marker s7}{...}
    {title:从 SIF 中提取时间组件}

       期望组件      函数                   示例
       {hline 57}
       小时            {cmd:hh(}{it:tc}{cmd:)} 或 {cmd:hhC(}{it:tC}{cmd:)}          14
       分钟            {cmd:mm(}{it:tc}{cmd:)} 或 {cmd:mmC(}{it:tC}{cmd:)}          42
       秒              {cmd:ss(}{it:tc}{cmd:)} 或 {cmd:ssC(}{it:tC}{cmd:)}          57.123
       {hline 57}
       注意：
              0 <= {cmd:hh(}{it:tc}{cmd:)} <= 23, 0 <= {cmd:hhC(}{it:tC}{cmd:)} <= 23
              0 <= {cmd:mm(}{it:tc}{cmd:)} <= 59, 0 <= {cmd:mmC(}{it:tC}{cmd:)} <= 59
              0 <= {cmd:ss(}{it:tc}{cmd:)} <  60, 0 <= {cmd:ssC(}{it:tC}{cmd:)} <  61  （注意）

{pstd}
示例：

{p 8 11 2}
1. 您有 SIF 时间戳/c 变量 {cmd:admittime}。 
   您希望创建的新变量 {cmd:admithour} 等于入院日期的小时 
   和小时中的分数。您输入 

{p 16 20 2}{cmd:. gen admithour = hh(admittime) + mm(admittime)/60 + ss(admittime)/3600}

{marker s8}{...}
    {title:从 SIF 中提取日期组件}

       期望组件      函数                示例*
       {hline 54}
       日历年          {cmd:year(}{it:td}{cmd:)}                   2013
       日历月         {cmd:month(}{it:td}{cmd:)}                     7
       日历日           {cmd:day(}{it:td}{cmd:)}                       5

       星期几            {cmd:dow(}{it:td}{cmd:)}                       2
       （0=星期天）

       年中的第几天     {cmd:doy(}{it:td}{cmd:)}                     186
       （1=第一天）

       年中的第几周       {cmd:week(}{it:td}{cmd:)}                     27
       （1=第一周）

       年中的第几季度    {cmd:quarter(}{it:td}{cmd:)}                   3
       （1=第一季度）

       年中的第几半       {cmd:halfyear(}{it:td}{cmd:)}                  2
       （1=第一半年）
       {hline 54}
{p 7 7 2}
* 所有示例都是 {cmd:td=mdy(7,5,2013)}.{p_end}
{p 7 7 2}
所有函数都需要一个 SIF 日期作为参数。要从其他 SIF 中提取组件，请使用适当的
{help datetime##s6:SIF 到 SIF 转换函数}
转换为 SIF 日期，例如 {cmd:quarter(dofq(tq))}。

{pstd}
示例：

{p 8 11 2}
1. 您希望获取星期几，对应于 SIF 日期变量 {cmd:eventdate}。您输入 

{col 16}{cmd:. gen day_of_week = dow(eventdate)}

{p 11 11 2}
新变量 {cmd:day_of_week} 将包含 0 表示星期天，1 表示星期一，...，6 表示星期六。

{p 8 11 2}
2. 您希望获取星期几，对应于 SIF 时间戳/c 变量 {cmd:eventtime}。您输入

{col 16}{cmd:. gen day_of_week = dow(dofc(eventtime))}

{p 8 11 2}
3. 您有 SIF 日期变量 {cmd:evdate}，希望从中创建新的 
   SIF 日期变量 {cmd:evdate_r}。{cmd:evdate_r}
   将包含与 {cmd:evdate} 相同的日期，但向前取整到 
   月初。您输入

{col 16}{cmd:. gen evdate_r = mdy(month(evdate), 1, year(evdate))}

{p 11 11 2}
在上述解决方案中，我们使用了日期组成部分提取函数 
{cmd:month()} 和 {cmd:year()}，并使用了从组件构建 
函数 {cmd:mdy()}。

{marker s9}{...}
    {title:方便地输入 SIF 值}

{pstd}
您可以通过简单输入数字来输入 SIF 值，例如 16,237 或
1,402,920,000,000，如下所示：

{p 11 16 2}{cmd:. gen before = cond(hiredon < 16237, 1, 0) if !missing(hiredon)}

{col 12}{cmd:. drop if admittedon < 1402920000000}

{pstd}
更容易输入的是

{p 11 16 2}{cmd:. gen before = cond(hiredon < td(15jun2004), 1, 0) if !missing(hiredon)}

{col 12}{cmd:. drop if admittedon < tc(15jun2004 12:00:00)}

{pstd} 
您可以通过将日期放入 
{cmd:td()} 中来输入 SIF 日期值，如 {cmd:td(15jun2004)}。

{pstd}
您可以通过将时间戳放入 
{cmd:tc()} 中来输入 SIF 时间戳/c 值，如 {cmd:tc(15jun2004 12:00:00)}。

{pstd}
{cmd:td()} 和 {cmd:tc()} 被称为伪函数，因为它们
将您输入的内容转换为其数值等价物。
伪函数仅要求您按照预期的顺序指定日期时间组件，因此在 {cmd:14jun2004} 中，我们可以指定 
14 June 2004、14-6-2004 或 14/6/2004。

{pstd}
SIF 伪函数及其期望的组件顺序为 

	    期望 SIF 类型  {c |}  伪函数
	    {hline 18}{c +}{hline 39}
	    时间戳/c        {c |}  {cmd:tc(}[{it:day-month-year}] {it:hh}{cmd::}{it:mm}[{cmd::}{it:ss}[{cmd:.}{it:sss}]]{cmd:)}
	    时间戳/C        {c |}  {cmd:tC(}[{it:day-month-year}] {it:hh}{cmd::}{it:mm}[{cmd::}{it:ss}[{cmd:.}{it:sss}]]{cmd:)}
                              {c |}
	    日期              {c |}  {cmd:td(}{it:day-month-year}{cmd:)}
                              {c |}
	    每周日期       {c |}  {cmd:tw(}{it:year-week}{cmd:)}
	    每月日期      {c |}  {cmd:tm(}{it:year-month}{cmd:)}
	    每季度日期    {c |}  {cmd:tq(}{it:year-quarter}{cmd:)}
	    半年日期      {c |}  {cmd:th(}{it:year-half}{cmd:)}
	    每年日期       {c |}  不需要；只需输入年份
	    {hline 18}{c BT}{hline 39}

{p 8 8 2}
在 {cmd:tc()} 和 {cmd:tC()} 中的 {it:day-month-year} 是可选的。
如果您省略它们，默认假定为 01jan1960。这样产生的时间将作为偏移量，这在以下情况下是有用的例如，

{p 12 12 2}
{cmd:. gen six_hrs_later = eventtime + tc(6:00)}

{marker s10}{...}
    {title:获取和处理持续时间}

{pstd}
    SIF 值仅表示自 1960 年以来的持续时间。SIF 时间戳/c
    值记录自 1jan1960 00:00:00 起的毫秒； 
    SIF 日期值记录自 1jan1960 以来的天数，等等。

{pstd}
    要获取两个 SIF 变量之间的时间-持续时间-它们之间的差，您只需相减：

{col 12}{cmd:. gen days_employed = curdate - hiredate}

{col 12}{cmd:. gen double ms_inside = discharge_time - admit_time}

{pstd}
    要获得与旧 SIF 相等的新 SIF，只需加或减去所需的持续时间：

{col 12}{cmd:. gen lastdate = hiredate + days_employed}
{col 12}{cmd:. format lastdate %td}

{col 12}{cmd:. gen double admit_time = discharge_time - ms_inside}
{col 12}{cmd:. format admit_time %tc}

{pstd}
记得使用 SIF 变量的单位。SIF 日期以天为单位，SIF 每周日期以周为单位，依此类推，而 SIF 时间戳以毫秒为单位。有关毫秒，通常使用不同的单位和转换函数来转换为毫秒更容易：

{col 12}{cmd:. gen hours_inside = hours(discharge_time - admit_time)}

{col 12}{cmd:. gen admit_time = discharge_time - msofhours(hours_inside)}
{col 12}{cmd:. format admit_time %tc}

{pstd}
函数 {cmd:hours()} 将毫秒转换为小时。函数
{cmd:msofhours()} 将小时转换为毫秒。
毫秒转换函数如下：

	    函数       {c |}  目的
	    {hline 15}{c +}{hline 34}
	    {cmd:hours(}{it:ms}{cmd:)}      {c |}  将毫秒转换为小时；
                           {c |}  返回 {it:ms}/(60*60*1000)
                           {c |}
            {cmd:minutes(}{it:ms}{cmd:)}    {c |}  将毫秒转换为分钟；
                           {c |}  返回 {it:ms}/(60*1000)
                           {c |}
	    {cmd:seconds(}{it:ms}{cmd:)}    {c |}  将毫秒转换为秒；
                           {c |}  返回 {it:ms}/1000 
                           {c |}
	    {cmd:msofhours(}{it:h}{cmd:)}   {c |}  将小时转换为毫秒；
                           {c |}  返回 {it:h}*60*60*1000
                           {c |}
	    {cmd:msofminutes(}{it:m}{cmd:)} {c |}  将分钟转换为毫秒；
                           {c |}  返回 {it:m}*60*1000
                           {c |}
	    {cmd:msofseconds(}{it:s}{cmd:)} {c |}  将秒转换为毫秒；
                           {c |}  返回 {it:s}*1000
	    {hline 15}{c BT}{hline 34}

{pstd}
如果您计划使用返回的值来加或减去时间戳 
SIF，请确保它们存储为 {cmd:double}。

{marker s11}{...}
    {title:使用其他软件的日期和时间}

{pstd}
大多数软件以从某个标志日期的持续时间为数值存储日期和时间，单位可能不同，但标志日期和单位也可能不同。如果您导入数据，通常可以调整数值日期和时间戳值以匹配 SIF。

{pstd}
转换 SAS 日期：
{p_end}
{p 8 8 2}
如果您的数据位于 SAS 格式的文件中，您可能希望使用
{helpb import sas} 命令。如果 SAS 文件包含数值编码的日期，{cmd:import sas} 将读取这些日期并正确编码为 SIF。导入数据后，您无需进行任何转换。

{p 8 8 2}
另一方面，如果您导入的是原始 SAS 数据，已保存为其他格式（例如文本文件），日期和时间戳可能以 SAS 所使用的基础数值存在。以下讨论涉及将这些数值转换为 SIF 数值。

{p 8 8 2}
    SAS 提供的日期以自 01jan1960 以来的天数表示。这是 Stata 使用的相同编码：

{col 12}{cmd:. gen statadate = sasdate}
{col 12}{cmd:. format statadate %td}

{p 8 8 2}
    SAS 提供的时间戳以自 01jan1960 00:00:00 以来的秒数表示，假设 86,400 秒/天。要转换为 SIF 时间戳/c，请输入

{col 12}{cmd:. gen double statatime = (sastime*1000)}
{col 12}{cmd:. format statatime %tc}

{p 8 8 2}
    重要的是，包含 SAS 时间戳的变量，例如
    上述 {cmd:sastime}，应作为 {cmd:double} 导入到 Stata。

{pstd}
转换 SPSS 日期：
{p_end}
{p 8 8 2}
如果您的数据位于 SPSS 格式的文件中，您可能希望使用
{helpb import spss} 命令。如果 SPSS 文件包含数值编码的日期，{cmd:import spss} 将读取这些日期并正确编码为 SIF。导入后，您无需执行任何转换。

{p 8 8 2}
另一方面，如果您导入原本来自 SPSS 的数据，已保存为其他格式（例如文本文件），日期和时间戳可能以 SPSS 使用的基础数值存在。以下讨论涉及将这些数值转换为 SIF 数值。

{p 8 8 2}
    SPSS 提供的日期和时间戳以自 14oct1582 00:00:00 以来的秒数表示，假设 86,400 秒/天。要转换为 SIF 时间戳/c，您输入

{col 12}{cmd:. gen double statatime = (spsstime*1000) + tc(14oct1582 00:00)}
{col 12}{cmd:. format statatime %tc}

{p 8 8 2}
要转换为 SIF 日期，您输入

{col 12}{cmd:. gen statadate = dofc((spsstime*1000) + tc(14oct1582 00:00))}
{col 12}{cmd:. format statadate %td}

{pstd}
转换 R 日期：
{p_end}
{p 8 8 2}
    R 将日期存储为自 01jan1970 以来的天数。要转换为 SIF 日期，您输入

{col 12}{cmd:. gen statadate = rdate - td(01jan1970)}
{col 12}{cmd:. format statadate %td}

{p 8 8 2}
    R 将时间戳存储为自 01jan1970 00:00:00 以来调整到 UTC 的秒数。要转换为 SIF 时间戳/C，您输入

{col 12}{cmd:. gen double statatime = rtime - tC(01jan1970 00:00)}
{col 12}{cmd:. format statatime %tC}

{p 8 8 2}
    要转换为 SIF 时间戳/c，您输入

{col 12}{cmd:. gen double statatime = cofC(rtime - tC(01jan1970 00:00))}
{col 12}{cmd:. format statatime %tc}

{p 8 8 2}
在处理时间戳/C 值时，您需要注意几个问题；请参见 
{it:{help datetime_translation##whytwo:为什么有两种 SIF 时间戳编码}}
和 
{it:{help datetime_translation##advice:关于使用时间戳/c 和时间戳/C 的建议}}，它们都在 {bf:{help datetime_translation_zh:[D] Datetime translation}} 中。

{pstd}
转换 Excel 日期：
{p_end}
{p 8 8 2}
    如果您的数据位于 Excel 格式文件中，您可能希望使用
    {cmd:import} {cmd:excel} 命令。如果 Excel 文件包含数值编码的日期，{cmd:import} {cmd:excel} 将读取这些日期并将其正确编码为 SIF。在使用 {cmd:import} {cmd:excel} 导入数据后，您无需执行任何转换。

{p 8 8 2}
    另一方面，如果您将电子表格复制并粘贴到 Stata 的
    编辑器中，日期和时间戳将作为 HRF 字符串粘贴。以下讨论涉及将此类 HRF 时间戳字符串转换为
    SIF 数值。

{p 8 8 2}
    Excel 在不同操作系统上使用过不同的日期系统。Excel 
    for Windows 使用“1900 日期系统”。Excel for Mac 使用“1904 日期系统”。最近，Excel 在所有操作系统上的标准化为“1900 日期系统”。

{p 8 8 2}
    不论操作系统如何，Excel 可以使用任一编码。 
    请参见 {browse "https://support.microsoft.com/kb/214330"}
    获取在日期系统之间转换工作簿的指示。

{p 8 8 2}
    如果选择了错误的日期系统，转换后的日期将偏差四年。

{pstd}
转换 Excel 1900 日期系统日期：
{p_end}
{p 8 8 2}
    对于 01mar1900 及以后的日期，Excel 将日期存储为自
    30dec1899 以来的天数。要转换为 Stata 日期，

{col 12}{cmd:. gen statadate = exceldate + td(30dec1899)}
{col 12}{cmd:. format statadate %td}

{p 8 8 2}
    Excel 可以存储的日期在 01jan1900 和 28feb1900 之间，但上述公式无法处理这两个月的日期。请参见
    {browse "http://www.cpearson.com/excel/datetime.htm":http://www.cpearson.com/excel/datetime.htm} 以获取更多信息。

{p 8 8 2}
    对于 01mar1900 00:00:00 及以后的时间戳，Excel 将时间戳存储为自 30dec1899 00:00:00 以来的天数加上天数的分数。要以一秒的精度转换为 Stata 时间戳，

{col 12}{cmd:. gen statatime = round((exceltime+td(30dec1899))*86400)*1000}
{col 12}{cmd:. format statatime %tc}

{pstd}
转换 Excel 1904 日期系统日期：
{p_end}
{p 8 8 2}
    对于 01jan1904 及以后的日期，Excel 将日期存储为自 
    01jan1904 以来的天数。要转换为 Stata 日期， 

{col 12}{cmd:. gen statadate = exceldate + td(01jan1904)}
{col 12}{cmd:. format statadate %td}

{p 8 8 2}
    对于 01jan1904 00:00:00 及以后的时间戳，Excel 将时间戳 
    存储为自 01jan1904 00:00:00 以来的天数加上天数的分数。要以一秒的精度转换为 Stata 时间戳， 

{col 12}{cmd:. gen statatime = round((exceltime+td(01jan1904))*86400)*1000}
{col 12}{cmd:. format statatime %tc}

{pstd}
转换 OpenOffice 日期：
{p_end}
{p 8 8 2}
    OpenOffice 使用上述的 Excel 1900 日期系统。

{pstd}
转换 Unix 时间：
{p_end}
{p 8 8 2}
    Unix 时间表示为自午夜以来的秒数,
    01jan1970。要转换为 Stata 时间戳，

{col 12}{cmd:. generate double statatime = unixtime * 1000 + mdyhms(1,1,1970,0,0,0)}

{p 8 8 2}
    要转换为 Stata 日期，

{col 12}{cmd:. generate statadate = dofc(unixtime * 1000 + mdyhms(1,1,1970,0,0,0))}

{marker description}{...}
{title:描述}

{p 4 4 2}
{it:语法} 上述内容提供了 Stata 日期和 
时间值的完整概述。 
另见 
{bf:{help datetime_translation_zh:[D] Datetime translation}}
和 
{bf:{help datetime_display_formats_zh:[D] Datetime display formats}}
以获取其他信息。

{marker linkspdf}{...}
{title:PDF 文档的链接}

        {mansection D DatetimeRemarksandexamples:备注与示例}

{pstd}
上述部分不包含在此帮助文件中。

{marker remarks}{...}
{title:备注}

{p 4 4 2}
学习 Stata 日期和时间函数的最佳方法 
是通过使用 {help display_zh} 命令进行实验。

	. {cmd:display date("5-12-1998", "MDY")}
        14011

	. {cmd:display %td date("5-12-1998", "MDY")}
	12may1998

        . {cmd:display clock("5-12-1998 11:15", "MDY hm")}
        1.211e+12

        . {cmd:display %20.0gc clock("5-12-1998 11:15", "MDY hm")}
	1,210,590,900,000

        . {cmd:display %tc clock("5-12-1998 11:15", "MDY hm")}
	12may1998 11:15:00

{p 4 4 2}
使用 {cmd:display}，您可以在表达式前面指定一个格式，以指定结果的格式。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <datetime.sthlp>}