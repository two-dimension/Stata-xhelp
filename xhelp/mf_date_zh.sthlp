{smcl}
{* *! version 2.1.9  15may2018}{...}
{vieweralsosee "[M-5] date()" "mansection M-5 date()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 标量" "help m4_scalar_zh"}{...}
{viewerjumpto "语法" "mf_date_zh##syntax"}{...}
{viewerjumpto "描述" "mf_date_zh##description"}{...}
{viewerjumpto "兼容性" "mf_date_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_date_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_date_zh##source"}
{help mf_date:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] date()} {hline 2}}日期和时间操作
{p_end}
{p2col:}({mansection M-5 date():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 16 8 2}
{it:{help mf_date##tc:tc}}
=
{cmd:clock(}{it:{help mf_date##strdatetime:strdatetime}}{cmd:,}
{it:{help mf_date##pattern:pattern}}
[{cmd:,} {it:{help mf_date##year:year}}]{cmd:)}

{p 16 8 2}
{it:{help mf_date##tc:tc}}
= 
{cmd:mdyhms(}{it:{help mf_date##month:month}}{cmd:,} 
{it:{help mf_date##day:day}}{cmd:,} 
{it:{help mf_date##year:year}}{cmd:,} 
{it:{help mf_date##hour:hour}}{cmd:,} 
{it:{help mf_date##minute:minute}}{cmd:,} 
{it:{help mf_date##second:second}}{cmd:)} 

{p 16 8 2}
{it:{help mf_date##tc:tc}} 
= 
{cmd:dhms(}{it:{help mf_date##td:td}}{cmd:,} 
{it:{help mf_date##hour:hour}}{cmd:,} 
{it:{help mf_date##minute:minute}}{cmd:,} 
{it:{help mf_date##second:second}}{cmd:)} 

{p 16 8 2}
{it:{help mf_date##tc:tc}}
= 
{cmd:hms(}{it:{help mf_date##hour:hour}}{cmd:,} 
{it:{help mf_date##minute:minute}}{cmd:,} 
{it:{help mf_date##second:second}}{cmd:)} 

{p 14 8 2}
{it:{help mf_date##hour:hour}} 
=
{cmd:hh(}{it:{help mf_date##tc:tc}}{cmd:)}

{p 12 8 2}
{it:{help mf_date##minute:minute}} 
=
{cmd:mm(}{it:{help mf_date##tc:tc}}{cmd:)}

{p 12 8 2}
{it:{help mf_date##second:second}} 
=
{cmd:ss(}{it:{help mf_date##tc:tc}}{cmd:)}

{p 16 8 2}
{it:{help mf_date##td:td}}
=
{cmd:dofc(}{it:{help mf_date##tc:tc}}{cmd:)}


{p 16 8 2}
{it:{help mf_date##tC:tC}}
=
{cmd:Cofc(}{it:{help mf_date##tc:tc}}{cmd:)}

{p 16 8 2}
{it:{help mf_date##tC:tC}}
=
{cmd:Clock(}{it:{help mf_date##strdatetime:strdatetime}}{cmd:,}
{it:{help mf_date##pattern:pattern}}
[{cmd:,} {it:{help mf_date##year:year}}]{cmd:)}

{p 16 8 2}
{it:{help mf_date##tC:tC}}
= 
{cmd:Cmdyhms(}{it:{help mf_date##month:month}}{cmd:,} 
{it:{help mf_date##day:day}}{cmd:,} 
{it:{help mf_date##year:year}}{cmd:,} 
{it:{help mf_date##hour:hour}}{cmd:,} 
{it:{help mf_date##minute:minute}}{cmd:,} 
{it:{help mf_date##second:second}}{cmd:)} 

{p 16 8 2}
{it:{help mf_date##tC:tC}}
= 
{cmd:Cdhms(}{it:{help mf_date##td:td}}{cmd:,} 
{it:{help mf_date##hour:hour}}{cmd:,} 
{it:{help mf_date##minute:minute}}{cmd:,} 
{it:{help mf_date##second:second}}{cmd:)} 

{p 16 8 2}
{it:{help mf_date##tC:tC}}
= 
{cmd:Chms(}{it:{help mf_date##hour:hour}}{cmd:,} 
{it:{help mf_date##minute:minute}}{cmd:,} 
{it:{help mf_date##second:second}}{cmd:)} 

{p 14 8 2}
{it:{help mf_date##hour:hour}} 
=
{cmd:hhC(}{it:{help mf_date##tC:tC}}{cmd:)}

{p 12 8 2}
{it:{help mf_date##minute:minute}}
=
{cmd:mmC(}{it:{help mf_date##tC:tC}}{cmd:)}

{p 12 8 2}
{it:{help mf_date##second:second}}
=
{cmd:ssC(}{it:{help mf_date##tC:tC}}{cmd:)}

{p 16 8 2}
{it:{help mf_date##td:td}}
=
{cmd:dofC(}{it:{help mf_date##tC:tC}}{cmd:)}

{p 16 8 2}
{it:{help mf_date##tc:tc}}
=
{cmd:cofC(}{it:{help mf_date##tC:tC}}{cmd:)}


{p 16 8 2}
{it:{help mf_date##td:td}}
=
{cmd:date(}{it:{help mf_date##strdate:strdate}}{cmd:,}
{it:{help mf_date##dpattern:dpattern}}
[{cmd:,} {it:{help mf_date##year:year}}]{cmd:)}

{p 16 8 2}
{it:{help mf_date##td:td}}
= 
{cmd:mdy(}{it:{help mf_date##month:month}}{cmd:,} 
{it:{help mf_date##day:day}}{cmd:,} 
{it:{help mf_date##year:year}}{cmd:)} 

{p 16 8 2}
{it:{help mf_date##tw:tw}}
= 
{cmd:yw(}{it:{help mf_date##year:year}}{cmd:,}
{it:{help mf_date##week:week}}{cmd:)}

{p 16 8 2}
{it:{help mf_date##tm:tm}}
= 
{cmd:ym(}{it:{help mf_date##year:year}}{cmd:,}
{it:{help mf_date##month:month}}{cmd:)}

{p 16 8 2}
{it:{help mf_date##tq:tq}}
= 
{cmd:yq(}{it:{help mf_date##year:year}}{cmd:,}
{it:{help mf_date##quarter:quarter}}{cmd:)}

{p 16 8 2}
{it:{help mf_date##th:th}}
= 
{cmd:yh(}{it:{help mf_date##year:year}}{cmd:,}
{it:{help mf_date##half:half}}{cmd:)}

{p 16 8 2}
{it:{help mf_date##tc:tc}}
= 
{cmd:cofd(}{it:{help mf_date##td:td}}{cmd:)}

{p 16 8 2}
{it:{help mf_date##tC:tC}}
= 
{cmd:Cofd(}{it:{help mf_date##td:td}}{cmd:)}


{p 16 8 2}
{it:{help mf_date##td:td}}
= 
{cmd:dofb(}{it:{help mf_date##tb:tb}}{cmd:,}
{cmd:"}{it:{help mf_date##calendar:calendar}}{cmd:")}

{p 16 8 2}
{it:{help mf_date##tb:tb}}
= 
{cmd:bofd("}{it:{help mf_date##calendar:calendar}}{cmd:",}
{it:{help mf_date##td:td}}{cmd:)}


{p 13 8 2}
{it:{help mf_date##month:month}}
= 
{cmd:month(}{it:{help mf_date##td:td}}{cmd:)} 

{p 15 8 2}
{it:{help mf_date##day:day}}
= 
{cmd:day(}{it:{help mf_date##td:td}}{cmd:)} 

{p 14 8 2}
{it:{help mf_date##year:year}}
= 
{cmd:year(}{it:{help mf_date##td:td}}{cmd:)} 

{p 15 8 2}
{it:{help mf_date##dow:dow}}
= 
{cmd:dow(}{it:{help mf_date##td:td}}{cmd:)} 

{p 14 8 2}
{it:{help mf_date##week:week}}
= 
{cmd:week(}{it:{help mf_date##td:td}}{cmd:)} 

{p 11 8 2}
{it:{help mf_date##quarter:quarter}}
= 
{cmd:quarter(}{it:{help mf_date##td:td}}{cmd:)} 

{p 14 8 2}
{it:{help mf_date##half:half}}
= 
{cmd:halfyear(}{it:{help mf_date##td:td}}{cmd:)} 

{p 15 8 2}
{it:{help mf_date##doy:doy}}
= 
{cmd:doy(}{it:{help mf_date##td:td}}{cmd:)} 


{p 16 8 2}
{it:{help mf_date##ty:ty}}
= 
{cmd:yearly(}{it:{help mf_date##strydate:strydate}}{cmd:,} 
{it:{help mf_date##ypattern:ypattern}}
[{cmd:,} {it:{help mf_date##year:year}}]{cmd:)}

{p 16 8 2}
{it:{help mf_date##ty:ty}}
= 
{cmd:yofd(}{it:{help mf_date##td:td}}{cmd:)} 

{p 16 8 2}
{it:{help mf_date##td:td}}
= 
{cmd:dofy(}{it:{help mf_date##ty:ty}}{cmd:)} 


{p 16 8 2}
{it:{help mf_date##th:th}}
= 
{cmd:halfyearly(}{it:{help mf_date##strhdate:strhdate}}{cmd:,} 
{it:{help mf_date##hpattern:hpattern}}
[{cmd:,} {it:{help mf_date##year:year}}]{cmd:)}

{p 16 8 2}
{it:{help mf_date##th:th}}
= 
{cmd:hofd(}{it:{help mf_date##td:td}}{cmd:)} 

{p 16 8 2}
{it:{help mf_date##td:td}}
= 
{cmd:dofh(}{it:{help mf_date##th:th}}{cmd:)} 


{p 16 8 2}
{it:{help mf_date##tq:tq}}
= 
{cmd:quarterly(}{it:{help mf_date##strqdate:strqdate}}{cmd:,} 
{it:{help mf_date##qpattern:qpattern}}
[{cmd:,} {it:{help mf_date##year:year}}]{cmd:)}

{p 16 8 2}
{it:{help mf_date##tq:tq}}
= 
{cmd:qofd(}{it:{help mf_date##td:td}}{cmd:)} 

{p 16 8 2}
{it:{help mf_date##td:td}}
= 
{cmd:dofq(}{it:{help mf_date##tq:tq}}{cmd:)} 


{p 16 8 2}
{it:{help mf_date##tm:tm}}
= 
{cmd:monthly(}{it:{help mf_date##strmdate:strmdate}}{cmd:,} 
{it:{help mf_date##mpattern:mpattern}}
[{cmd:,} {it:{help mf_date##year:year}}]{cmd:)}

{p 16 8 2}
{it:{help mf_date##tm:tm}}
= 
{cmd:mofd(}{it:{help mf_date##td:td}}{cmd:)} 

{p 16 8 2}
{it:{help mf_date##td:td}}
= 
{cmd:dofm(}{it:{help mf_date##tm:tm}}{cmd:)} 


{p 16 8 2}
{it:{help mf_date##tw:tw}}
= 
{cmd:weekly(}{it:{help mf_date##strwdate:strwdate}}{cmd:,} 
{it:{help mf_date##wpattern:wpattern}}
[{cmd:,} {it:{help mf_date##year:year}}]{cmd:)}

{p 16 8 2}
{it:{help mf_date##tw:tw}}
= 
{cmd:wofd(}{it:{help mf_date##td:td}}{cmd:)} 

{p 16 8 2}
{it:{help mf_date##td:td}}
= 
{cmd:dofw(}{it:{help mf_date##tw:tw}}{cmd:)} 


{p 13 8 2}
{it:{help mf_date##hours:hours}}
=
{cmd:hours(}{it:{help mf_date##ms:ms}}{cmd:)}

{p 11 8 2}
{it:{help mf_date##minutes:minutes}}
=
{cmd:minutes(}{it:{help mf_date##ms:ms}}{cmd:)}

{p 11 8 2}
{it:{help mf_date##seconds:seconds}}
=
{cmd:seconds(}{it:{help mf_date##ms:ms}}{cmd:)}

{p 16 8 2}
{it:{help mf_date##ms:ms}}
=
{cmd:msofhours(}{it:{help mf_date##hours:hours}}{cmd:)}

{p 16 8 2}
{it:{help mf_date##ms:ms}}
=
{cmd:msofminutes(}{it:{help mf_date##minutes:minutes}}{cmd:)}

{p 16 8 2}
{it:{help mf_date##ms:ms}}
=
{cmd:msofseconds(}{it:{help mf_date##seconds:seconds}}{cmd:)}

{p 4 4 2}
其中

{marker tc}{...}
{p 15 20 2}
{it:tc} = 从1960年1月1日00:00:00.000起的毫秒数，未调整闰秒

{marker tC}{...}
{p 15 20 2}
{it:tC} = 从1960年1月1日00:00:00.000起的毫秒数，已调整闰秒

{marker strdatetime}{...}
{p 6 20 2}
{it:strdatetime} = 字符格式的日期、时间或日期/时间，例如， 
    "15jan1992"，"1/15/1992"， 
    "15-1-1992"，"January 15, 1992"， 
    "9:15"，"13:42"，"1:42 p.m."，"1:42:15.002 pm"， 
    "15jan1992 9:15"，"1/15/1992 13:42"， 
    "15-1-1992 1:42 p.m."，"January 15, 1992 1:42:15.002 pm"

{marker pattern}{...}
{p 10 20 2}
{it:pattern} 
=
    在{it:strdatetime}中，月份、日、年、小时、分钟和秒的顺序，
    加上可选的默认世纪，例如，{cmd:"DMYhms"}（表示日、月、
    年、小时、分钟、秒），{cmd:"DMYhm"},{cmd:"MDYhm"},{cmd:"hmMDY"},
    {cmd:"hms"},{cmd:"hm"},{cmd:"MDY"},{cmd:"MD19Y"},{cmd:"MDY20Yhm"}

{marker td}{...}
{p 15 20 2}
{it:td} = 从1960年1月1日起的天数

{marker tb}{...}
{p 15 20 2}
{it:tb} = 工作日（天数）

{marker calendar}{...}
{p 9 20 2}
{it:calendar} = 包含日历名称的字符串标量或{cmd:%tb}格式

{marker strdate}{...}
{p 10 20 2}
{it:strdate} = 字符格式的日期，例如，"15jan1992"，"1/15/1992"， 
"15-1-1992"，"January 15, 1992"

{marker dpattern}{...}
{p 9 20 2}
{it:dpattern} 
=
    在{it:strdate}中，月份、日期和年份的顺序，加上可选的默认
    世纪，例如，{cmd:"DMY"}（表示日、月、年），{cmd:"MDY"},
    {cmd:"MD19Y"}

{marker hour}{...}
{p 13 20 2}
{it:hour} = 小时，0-23

{marker minute}{...}
{p 11 20 2}
{it:minute} = 分钟，0-59

{marker second}{...}
{p 11 20 2}
{it:second} = 秒，0.000-59.999（在闰秒情况下最大为60.999）

{marker month}{...}
{p 12 20 2}
{it:month} = 月份数，1-12

{marker day}{...}
{p 14 20 2}
{it:day} = 每月的日期数，1-31

{marker year}{...}
{p 13 20 2}
{it:year} = 年，例如，1942、1995、2008

{marker week}{...}
{p 13 20 2}
{it:week} = 年内的周数，1-52

{marker quarter}{...}
{p 10 20 2}
{it:quarter} = 年内的季度，1-4

{marker half}{...}
{p 13 20 2}
{it:half} = 年内的半年，1-2

{marker dow}{...}
{p 13 20 2}
{it:dow} = 星期几，0-6，0=星期日

{marker doy}{...}
{p 13 20 2}
{it:doy} = 每年的日期数，1-366


{marker ty}{...}
{p 15 20 2}
{it:ty} = 日历年

{marker strydate}{...}
{p 9 20 2}
{it:strydate} = 字符格式的日历年，例如，"1980"，"80"

{marker ypattern}{...}
{p 9 20 2}
{it:ypattern} 
= {it:strydate}的模式，例如，{cmd:"Y"}, {cmd:"19Y"}

{marker th}{...}
{p 15 20 2}
{it:th} = 从1960年上半年开始的半年的数量

{marker strhdate}{...}
{p 9 20 2}
{it:strhdate} = 字符格式的{it:hdate}，例如，"1982-1"，"1982h2"，"2 1982"

{marker hpattern}{...}
{p 9 20 2}
{it:hpattern} 
= {it:strhdate}的模式，例如，{cmd:"YH"}, {cmd:"19YH"}, {cmd:"HY"}

{marker tq}{...}
{p 15 20 2}
{it:tq} = 从1960年第一季度起的季度数量

{marker strqdate}{...}
{p 9 20 2}
{it:strqdate} = 字符格式的{it:qdate}，例如，"1982-3"，"1982q2"，"3 1982"

{marker qpattern}{...}
{p 9 20 2}
{it:qpattern} 
= {it:strqdate}的模式，例如，{cmd:"YQ"}, {cmd:"19YQ"}, {cmd:"QY"}

{marker tm}{...}
{p 15 20 2}
{it:tm} = 从1960年第一月起的月份数量

{marker strmdate}{...}
{p 9 20 2}
{it:strmdate} = 字符格式的{it:mdate}，例如，"1982-3"，"1982m2"，"3/1982"

{marker mpattern}{...}
{p 9 20 2}
{it:mpattern} 
= {it:strmdate}的模式，例如，{cmd:"YM"}, {cmd:"19YM"}, {cmd:"MR"}

{marker tw}{...}
{p 15 20 2}
{it:tw} = 从1960年第一周起的周数量

{marker strwdate}{...}
{p 9 20 2}
{it:strwdate} = 字符格式的{it:wdate}，例如，"1982-3"，"1982w2"，"1982-15"

{marker wpattern}{...}
{p 9 20 2}
{it:wpattern} 
= {it:strwdate}的模式，例如，{cmd:"YW"}, {cmd:"19YW"}, {cmd:"WY"}

{marker hours}{...}
{p 12 20 2}
{it:hours} = 时间间隔，以小时为单位（正数或负数，实数）

{marker minutes}{...}
{p 10 20 2}
{it:minutes} = 时间间隔，以分钟为单位（正数或负数，实数）

{marker seconds}{...}
{p 10 20 2}
{it:seconds} = 时间间隔，以秒为单位（正数或负数，实数）

{marker ms}{...}
{p 15 20 2}
{it:ms} = 时间间隔，以毫秒为单位（正数或负数，整数）


{p 4 4 2}
函数返回逐元素的结果。
函数通常与标量一起使用。

{p 4 4 2}
除了{it:str*}和{it:*pattern}变量外，所有变量都是{it:real matrix}，这些变量是 
{it:string matrix}。


{marker description}{...}
{title:描述}

{p 4 4 2}
这些函数与Stata的日期函数相对应；
请参见{manhelp Datetime D}。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
{cmd:clock(}{it:strdatetime}{cmd:,}
{it:pattern}{cmd:,}
{it:year}{cmd:)}, 
{cmd:Clock(}{it:strdatetime}{cmd:,}
{it:pattern}{cmd:,} {it:year}{cmd:)}:
{p_end}
      {it:strdatetime}:  {it:r1 x c1}
	  {it:pattern}:  {it:r2 x c2} （与{it:strdatetime}兼容的列）
	     {it:year}:  {it:r3 x c3} （可选，兼容的列）
	   {it:result}:  max({it:r1},{it:r2},{it:r3}) {it:x} max({it:c1},{it:c2},{it:c3})

{p 4 4 2}
{cmd:mdyhms(}{it:month}{cmd:,} 
{it:day}{cmd:,} 
{it:year}{cmd:,}
{it:hour}{cmd:,}
{it:minute}{cmd:,}
{it:second}{cmd:)},{break}
{cmd:Cmdyhms(}{it:month}{cmd:,} 
{it:day}{cmd:,} 
{it:year}{cmd:,}
{it:hour}{cmd:,}
{it:minute}{cmd:,}
{it:second}{cmd:)}:
{p_end}
	    {it:month}:  {it:r1 x c1}
	      {it:day}:  {it:r2 x c2}  
	     {it:year}:  {it:r3 x c3}  
	     {it:hour}:  {it:r4 x c4}  
	   {it:minute}:  {it:r5 x c5}  
	   {it:second}:  {it:r6 x c6}  （所有变量均兼容）
	   {it:result}:  max({it:r1},{it:r2},{it:r3},{it:r4},{it:r5},{it:r6}) {it:x} max({it:c1},{it:c2},{it:c3},{it:c4},{it:c5},{it:c6})

{p 4 4 2}
{cmd:hms(}{it:hour}{cmd:,}
{it:minute}{cmd:,}
{it:second}{cmd:)},
{cmd:Chms(}{it:hour}{cmd:,}
{it:minute}{cmd:,}
{it:second}{cmd:)}:
{p_end}
	     {it:hour}:  {it:r1 x c1}  
	   {it:minute}:  {it:r2 x c2}  
	   {it:second}:  {it:r3 x c3}
	   {it:result}:  max({it:r1},{it:r2},{it:r3}) {it:x} max({it:c1},{it:c2},{it:c3})

{p 4 4 2}
{cmd:dhms(}{it:td}{cmd:,} 
{it:hour}{cmd:,}
{it:minute}{cmd:,}
{it:second}{cmd:)},
{cmd:Cdhms(}{it:td}{cmd:,} 
{it:hour}{cmd:,}
{it:minute}{cmd:,}
{it:second}{cmd:)}:
{p_end}
	       {it:td}:  {it:r1 x c1}
	     {it:hour}:  {it:r2 x c2}  
	   {it:minute}:  {it:r3 x c3}  
	   {it:second}:  {it:r4 x c4}  （所有变量均兼容）
	   {it:result}:  max({it:r1},{it:r2},{it:r3},{it:r4}) {it:x} max({it:c1},{it:c2},{it:c3},{it:r4})

{p 4 4 2}
{cmd:hh(}{it:x}{cmd:)},
{cmd:mm(}{it:x}{cmd:)},
{cmd:ss(}{it:x}{cmd:)},
{cmd:hhC(}{it:x}{cmd:)},
{cmd:mmC(}{it:x}{cmd:)},
{cmd:ssC(}{it:x}{cmd:)}:
{p_end}
	     {it:x}:  {it:r x c}
	{it:result}:  {it:r x c}


{p 4 4 2}
{cmd:date(}{it:strdate}{cmd:,}
{it:dpattern}{cmd:,} {it:year}{cmd:)}:
{p_end}
	  {it:strdate}:  {it:r1 x c1}
         {it:dpattern}:  {it:r2 x c2}  （与{it:strdate}兼容的列）
	     {it:year}:  {it:r3 x c3}  （可选，兼容的列）
	   {it:result}:  max({it:r1},{it:r2},{it:r3}) {it:x} max({it:c1},{it:c2},{it:c3})

{p 4 4 2}
{cmd:mdy(}{it:month}{cmd:,} 
{it:day}{cmd:,} 
{it:year}{cmd:)}:
{p_end}
	    {it:month}:  {it:r1 x c1}
	      {it:day}:  {it:r2 x c2}  
	     {it:year}:  {it:r3 x c3}  （所有变量均兼容）
	   {it:result}:  max({it:r1},{it:r2},{it:r3}) {it:x} max({it:c1},{it:c2},{it:c3})

{p 4 4 2}
{cmd:yw(}{it:year}{cmd:,} {it:detail}{cmd:)},
{cmd:ym(}{it:year}{cmd:,} {it:detail}{cmd:)},
{cmd:yq(}{it:year}{cmd:,} {it:detail}{cmd:)},
{cmd:yh(}{it:year}{cmd:,} {it:detail}{cmd:)}:
{p_end}
	     {it:year}:  {it:r1 x c1}
	   {it:detail}:  {it:r2 x c2}  （与{it:year}兼容的列）
	   {it:result}:  max({it:r1},{it:r2}) {it:x} max({it:c1},{it:c2})


{p 4 4 2}
{cmd:month(}{it:td}{cmd:)},
{cmd:day(}{it:td}{cmd:)},
{cmd:year(}{it:td}{cmd:)},
{cmd:dow(}{it:td}{cmd:)},
{cmd:week(}{it:td}{cmd:)},
{cmd:quarter(}{it:td}{cmd:)},
{cmd:halfyear(}{it:td}{cmd:)},
{cmd:doy(}{it:td}{cmd:)}:
{p_end}
	       {it:td}:  {it:r x c}
	   {it:result}:  {it:r x c}

{p 4 4 2}
{cmd:yearly(}{it:str}{cmd:,} {it:pat}{cmd:,} {it:year}{cmd:)},
{cmd:halfyearly(}{it:str}{cmd:,} {it:pat}{cmd:,} {it:year}{cmd:)},
{cmd:quarterly(}{it:str}{cmd:,} {it:pat}{cmd:,} {it:year}{cmd:)},
{cmd:monthly(}{it:str}{cmd:,} {it:pat}{cmd:,} {it:year}{cmd:)},
{cmd:weekly(}{it:str}{cmd:,} {it:pat}{cmd:,} {it:year}{cmd:)}:
{p_end}
	      {it:str}:  {it:r1 x c1}
	      {it:pat}:  {it:r2 x c2}  （与{it:str}兼容的列）
	     {it:year}:  {it:r3 x c3}  （可选，兼容的列）
	   {it:result}:  max({it:r1},{it:r2},{it:r3}) {it:x} max({it:c1},{it:c2},{it:c3})


{p 4 4 2}
{cmd:Cofc(}{it:x}{cmd:)},
{cmd:cofC(}{it:x}{cmd:)},
{cmd:dofc(}{it:x}{cmd:)},
{cmd:dofC(}{it:x}{cmd:)},
{cmd:cofd(}{it:x}{cmd:)},
{cmd:Cofd(}{it:x}{cmd:)},
{cmd:yofd(}{it:x}{cmd:)},
{cmd:dofy(}{it:x}{cmd:)},
{cmd:hofd(}{it:x}{cmd:)},
{cmd:dofh(}{it:x}{cmd:)},
{cmd:qofd(}{it:x}{cmd:)},
{cmd:dofq(}{it:x}{cmd:)},
{cmd:mofd(}{it:x}{cmd:)},
{cmd:dofm(}{it:x}{cmd:)},
{cmd:wofd(}{it:x}{cmd:)},
{cmd:dofw(}{it:x}{cmd:)}:
{p_end}
	     {it:x}:  {it:r x c}
	{it:result}:  {it:r x c}


{p 4 4 2}
{cmd:dofb(}{it:tb}{cmd:,} {cmd:"}{it:calendar}{cmd:")}:
{p_end}
	    {it:tb}:  {it:r x c}
      {it:calendar}:  1 {it:x} 1
	{it:result}:  {it:r x c}

{p 4 4 2}
{cmd:bofd("}{it:calendar}{cmd:",}{it:td}{cmd:)}:
{p_end}
      {it:calendar}:  1 {it:x} 1
	    {it:td}:  {it:r x c}
	{it:result}:  {it:r x c}



{p 4 4 2}
{cmd:hours(}{it:x}{cmd:)},
{cmd:minutes(}{it:x}{cmd:)},
{cmd:seconds(}{it:x}{cmd:)},
{cmd:msofhours(}{it:x}{cmd:)},
{cmd:msofminutes(}{it:x}{cmd:)},
{cmd:msofseconds(}{it:x}{cmd:)}:
{p_end}
	     {it:x}:  {it:r x c}
	{it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_date.sthlp>}