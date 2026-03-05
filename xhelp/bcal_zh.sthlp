{smcl}
{* *! version 1.4.5  20sep2018}{...}
{viewerdialog bcal "dialog bcal"}{...}
{viewerdialog "bcal create" "dialog bcal_create"}{...}
{vieweralsosee "[D] bcal" "mansection D bcal"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] Datetime" "help datetime_zh"}{...}
{vieweralsosee "[D] Datetime business calendars" "help datetime_business_calendars_zh"}{...}
{vieweralsosee "[D] Datetime business calendars creation" "help datetime_business calendars creation"}{...}
{viewerjumpto "Syntax" "bcal_zh##syntax"}{...}
{viewerjumpto "Menu" "bcal_zh##menu"}{...}
{viewerjumpto "Description" "bcal_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bcal_zh##linkspdf"}{...}
{viewerjumpto "Option for bcal check" "bcal_zh##option_bcalcheck"}{...}
{viewerjumpto "Options for bcal create" "bcal_zh##options_bcalcreate"}{...}
{viewerjumpto "Remarks" "bcal_zh##remarks"}{...}
{viewerjumpto "Stored results" "bcal_zh##results"}
{help bcal:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[D] bcal} {hline 2}}商业日历文件操作{p_end}
{p2col:}({mansection D bcal:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
列出内存中数据使用的商业日历

{p 8 25 2}
{cmd:bcal} {cmdab:c:heck} [{it:{help bcal##define:varlist}}] [{cmd:, rc0}]


{pstd}
列出可用商业日历的文件名和目录

{p 8 25 2}
{cmd:bcal} {cmd:dir} [{it:{help bcal##define:pattern}}]


{pstd}
描述指定的商业日历

{p 8 25 2}
{cmd:bcal} {cmdab:d:escribe} {it:{help bcal##define:calname}}


{pstd}
加载指定的商业日历

{p 8 25 2}
{cmd:bcal} {cmd:load} {it:{help bcal##define:calname}}


{pstd}
从当前数据集创建商业日历

{p 8 25 2}
{cmd:bcal} {cmd:create} {it:{help bcal##define:filename}}
{ifin}
{cmd:,} {opth from(varname)}
[{it:{help bcal##bcal_create_options:bcal_create_options}}]


{marker define}{...}
{p 4 4 2}
其中

{p 8 12 2}
{it:varlist} 是需要检查是否使用商业日历的变量名列表。如果未指定，将检查所有变量。

{p 8 12 2}
{it:pattern} 是可能包含通配符 {cmd:*} 和 {cmd:?} 的商业日历名称。如果未指定 {it:pattern}，将列出所有可用的商业日历名称。

{p 8 12 2}
{it:calname} 是商业日历的名称，可以是名称或日期时间格式; 例如，{it:calname} 可以是 {cmd:simple} 或 {cmd:%tbsimple}。

{p 8 12 2}
{it:filename} 是由 {cmd:bcal} {cmd:create} 创建的商业日历文件的名称。 


{synoptset 37 tabbed}{...}
{marker bcal_create_options}{...}
{synopthdr :bcal_create_options}
{synoptline}
{syntab :主要}
{p2coldent:* {opth from(varname)}}指定日历的日期变量{p_end}
{synopt :{opth g:enerate(newvar)}}生成包含商业日期的 {it:newvar}{p_end}
{synopt :{cmdab:exclude:missing(}{it:{help varlist_zh}} [{cmd:, any}]{cmd:)}}排除{it:varlist}中缺失值的观察值{p_end}
{synopt :{cmd:personal}}将日历文件保存在您的{help sysdir_zh:PERSONAL}目录中{p_end}
{synopt :{cmd:replace}}如果文件已存在，则替换文件{p_end}

{syntab :高级}
{synopt :{opt purpose(text)}}描述日历的目的{p_end}
{synopt :{cmd:dateformat(ymd}|{cmd:ydm}|{cmd:myd}|{cmd:mdy}|{cmd:dym}|{cmd:dmy)}}指定日历文件中的日期格式{p_end}
{synopt :{opt range(fromdate todate)}}指定日历范围{p_end}
{synopt :{opt center:date(date)}}指定日历的中心日期{p_end}
{synopt :{opt maxgap(#)}}指定允许的最大间隔; 默认是 10 天{p_end}
{synoptline}
{p 4 6 2}
* {opt from(varname)} 是必需的。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 其他实用工具 > 创建商业日历}

{phang}
{bf:数据 > 其他实用工具 > 管理商业日历}

{phang}
{bf:数据 > 变量管理器}


{marker description}{...}
{title:描述}

{pstd}
请参见 {bf:{help datetime_business_calendars_zh:[D] 日期时间商业日历}}以获取商业日历和日期的介绍。

{pstd}
{cmd:bcal} {cmd:check} 列出内存中数据使用的商业日历（如果有）。

{pstd}
{cmd:bcal} {cmd:dir} {it:pattern} 列出所有可用商业日历的文件名和目录，匹配 {it:pattern}，或者如果未指定 {it:pattern}，则列出所有商业日历。

{pstd}
{cmd:bcal} {cmd:describe} {it:calname} 提供指定商业日历的描述。

{pstd}
{cmd:bcal} {cmd:load} {it:calname} 加载指定的商业日历。商业日历在需要时会自动加载，因此无需使用 {cmd:bcal} {cmd:load}。{cmd:bcal} {cmd:load} 由编写自己商业日历的程序员使用。{cmd:bcal} {cmd:load} {it:calname} 强制立即加载商业日历，并显示输出，包括由于日历构造不当而产生的任何错误消息。

{pstd}
{cmd:bcal} {cmd:create} {it:filename}{cmd:, from(}{it:varname}{cmd:)} 基于 {it:varname} 中的日期创建商业日历文件。商业假期由 {it:varname} 中的间隔推断。条件 {cmd:if} 和 {cmd:in} 以及选项 {opt excludemissing()} 也可用于排除新商业日历中的日期。 


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D bcalQuickstart:快速开始}

        {mansection D bcalRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker option_bcalcheck}{...}
{title:bcal check选项}

{dlgtab:主要}

{p 4 8 2}
{cmd:rc0} 
    指定即使某些日历不存在或有错误，{cmd:bcal} {cmd:check} 也要正常退出（返回 0）。程序员可以访问 {cmd:bcal} {cmd:check} 存储在 {cmd:r()} 中的结果，以获取有关问题的更多详细信息。如果您希望抑制 {cmd:bcal} {cmd:dir}，在 {cmd:bcal} {cmd:check} 命令前加上 {cmd:capture}，并在您希望访问 {cmd:r()} 结果的情况下指定 {cmd:rc0} 选项。


{marker options_bcalcreate}{...}
{title:bcal create选项}

{dlgtab:主要}

{p 4 8 2}
{opth from(varname)} 
指定用于创建商业日历的日期变量。{it:varname} 中日期之间的间隔定义了商业假期。可通过 {opt maxgap()} 选项设置允许的最长间隔。{opt from()} 是必需的。

{p 4 8 2}
{opth generate(newvar)} 指定创建 {it:newvar}。{it:newvar} 是 {cmd:%tb}{it:{help bcal##define:calname}} 格式中的一个日期变量，其中 {it:calname} 是根据 {it:{help bcal##define:filename}} 派生的商业日历名称。

{p 4 8 2}
{cmd:excludemissing(}{it:{help varlist_zh}} [{cmd:, any}]{cmd:)} 
指定缺失值的观察值的日期为商业假期。默认情况下，{it:varlist} 中所有变量的缺失值观察日期为假期。{cmd:any} 子选项指定 {it:varlist} 中任何变量的缺失值观察日期为假期。

{p 4 8 2}
{cmd:personal} 指定将日历文件保存在 {help sysdir_zh:PERSONAL} 目录中。如果 {it:{help bcal##define:filename}} 包含保存文件的目录路径，则无法使用此选项。

{p 4 8 2}
{cmd:replace} 指定如果商业日历文件已存在，则替换它。

{dlgtab:高级}

{p 4 8 2}
{opt purpose(text)} 指定创建的商业日历的目的。{it:text} 不能超过 63 个字符。

{p 4 8 2}
{cmd:dateformat(ymd}|{cmd:ydm}|{cmd:myd}|{cmd:mdy}|{cmd:dym}|{cmd:dmy)} 指定新商业日历中的日期格式。默认是 {cmd:dateformat(ymd)}。{cmd:dateformat()} 与在 {cmd:%tb}{it:{help bcal##define:calname}} 格式化变量时日期的外观无关; 它指定日期在日历文件中的输入方式。 

{p 4 8 2}
{opt range(fromdate todate)} 定义正在创建的日历的日期范围。{it:fromdate} 和 {it:todate} 应采用 {cmd:dateformat()} 选项指定的格式；若未指定，则假定为默认的 {cmd:ymd} 格式。

{p 4 8 2}
{opt centerdate(date)} 定义新商业日历的中心日期。如果未指定，假定为日历中的最早日期。{it:date} 应采用 {cmd:dateformat()} 选项指定的格式；若未指定，则假定为默认的 {cmd:ymd} 格式。

{p 4 8 2}
{opt maxgap(#)} 指定 {cmd:bcal} {cmd:create} 允许的最大连续商业假期数量。默认是 {cmd:maxgap(10)}。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:bcal} {cmd:check} 报告内存中数据使用的任何 {cmd:%tb} 格式：

        {cmd}. bcal check
        {res}{txt}
               {res}%tbsimple:  {txt}已定义，{txt}由变量 mydate 使用

{pstd}
{cmd:bcal} {cmd:dir} 报告可用的商业日历：

        {cmd}. bcal dir
        {res}{txt}  1 个日历文件找到：
          simple:  C:\Program Files\Stata16\ado\base\s\simple.stbcal

{pstd}
{cmd:bcal} {cmd:describe} 报告单个日历。

        {cmd}. bcal describe simple

        {txt}  商业日历 {res}simple{txt} (格式 {res}%tbsimple{txt}):

            目的:  {res}示例手册

        {txt}      范围:  {res}01nov2012  30nov2012
        {txt}             {res}    18932      18961{txt}{col 46}以 %td 单位
                     {res}        0         19{txt}{col 46}以 %tbsimple 单位

             中心:  {res}01nov2012
        {txt}             {res}    18932{txt}{col 46}以 %td 单位
                     {res}        0{txt}{col 46}以 %tbsimple 单位

            被遗漏: {res}       10{txt}{col 46}天
                     {res}      121.8{txt}{col 46}大约为每天{txt}

           包括: {res}       20{txt}{col 46}天
                     {res}      243.5{txt}{col 46}大约为每天{txt}

{pstd}
{cmd:bcal} {cmd:load} 用于编写新的 stbcal 文件的程序员。请参见 
{bf:{help datetime_business_calendars_creation_zh:[D] 日期时间商业日历创建}}。

{pstd}
{cmd:bcal} {cmd:create} 从当前数据集创建商业日历文件并描述新日历。例如，{cmd:sp500.dta} 是 Stata 随附的一个数据集，包含 2001 年 S&P 500 股票市场指数的每日记录。该数据集仅在交易日有观察。可以从此数据集自动创建股票交易的商业日历，如下所示：

        {cmd:. sysuse sp500}
	{phang2}
        {cmd:. bcal create sp500, from(date) purpose(S&P 500 for 2001) generate(bizdate)}{p_end}

	  商业日历 {bf:sp500} (格式 {bf:%tbsp500}):

    	    目的:  {bf:S&P 500 for 2001}

              范围:  {bf:02jan2001  31dec2001}
                         {bf:14977      15340}   以 %td 单位
                             {bf:0        247}   以 %tbsp500 单位

             中心:  {bf:02jan2001}
                         {bf:14977}              以 %td 单位
                             {bf:0}              以 %tbsp500 单位

            被遗漏:       {bf:116}              天
                           {bf:116.4}            大约为每天{txt}

           包括:       {bf:248}              天
                           {bf:248.9}            大约为每天{txt}

	  注意:
		
            商业日历文件 {bf:sp500.stbcal} 已保存

            变量 {bf:bizdate} 已创建; 它包含 {bf:%tbsp500} 格式的商业日期

{pstd}
创建的商业日历文件： 

        {hline 40} sp500.stbcal {hline 3}
	{cmd}* 商业日历 "sp500" 由 -bcal create- 创建
	* 创建/替换于 2017 年 9 月 23 日

        版本 {ccl stata_version}
        目的 "S&P 500 for 2001"
        日期格式 ymd

        范围 2001jan02 2001dec31
        中心日期 2001jan02

        排除星期几（周六 周日）
        排除日期 2001jan15
        排除日期 2001feb19
        排除日期 2001apr13
        排除日期 2001may28
        排除日期 2001jul04
        排除日期 2001sep03
        排除日期 2001sep11
        排除日期 2001sep12
        排除日期 2001sep13
        排除日期 2001sep14
        排除日期 2001nov22
        排除日期 2001dec25{txt}
        {hline 40} sp500.stbcal {hline 3}

{pstd}
{cmd:bcal} {cmd:create} {it:{help bcal##define:filename}}{cmd:,} {cmd:from()} 可以通过在 {it:filename} 中指定路径将日历文件保存到目录系统的任何位置。假设要保存文件的目录已经存在。{it:filename} 的模式应为 [{it:path}]{it:{help bcal##define:calname}}[{cmd:.stbcal}]。这里 {it:calname} 应没有 {cmd:%tb} 前缀； {it:calname} 必须是有效的 Stata 名称，但限制为 10 个字符。如果未指定 {it:path}，则文件将保存在当前工作目录中。如果未指定 {cmd:.stbcal} 扩展名，则将其添加。

{pstd}
将文件保存到 Stata 可以找到的目录中。
Stata 会像搜索 ado 文件一样自动搜索 stbcal 文件。Stata 会在官方 Stata 目录、您所在的站点目录 ({help sysdir_zh:SITE})、当前工作目录、个人目录 ({help sysdir_zh:PERSONAL}) 和其他用户编写材料的目录 ({help sysdir_zh:PLUS}) 中查找 ado 文件和 stbcal 文件。选项 {cmd:personal} 指定将日历文件保存在您的 {cmd:PERSONAL} 目录中，确保创建的日历在将来的工作中可以轻松找到。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:bcal} {cmd:check} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(defined)}}使用的商业日历，stbcal 文件存在，并且文件没有错误{p_end}
{synopt:{cmd:r(undefined)}}使用的商业日历，但不存在对应的 stbcal 文件{p_end}
{synopt:{cmd:r(varlist_}{it:{help bcal##define:calname}}{cmd:)}}使用商业日历 {it:calname} 的变量名列表{p_end}
{p2colreset}{...}

{pstd}
对程序员的警告：
    指定 {cmd:rc0} 选项以访问这些返回的结果。
    默认情况下，如果商业日历不存在或存在但有错误，{cmd:bcal} {cmd:check} 返回代码 459；在这种情况下，结果不会存储。

{pstd}
{cmd:bcal} {cmd:dir} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(calendars)}}可用的商业日历{p_end}
{synopt:{cmd:r(fn_}{it:{help bcal##define:calname}{cmd:)}}}商业日历 {it:calname} 的 stbcal 文件{p_end}
{p2colreset}{...}

{pstd}
{cmd:bcal} {cmd:describe} 和 {cmd:bcal} {cmd:create} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(min_date_td)}}日历的最小日期，以 {cmd:%td} 单位{p_end}
{synopt:{cmd:r(max_date_td)}}日历的最大日期，以 {cmd:%td} 单位{p_end}
{synopt:{cmd:r(ctr_date_td)}}日历的零日期，以 {cmd:%td} 单位{p_end}
{synopt:{cmd:r(min_date_tb)}}日历的最小日期，以 {cmd:%tb} 单位{p_end}
{synopt:{cmd:r(max_date_tb)}}日历的最大日期，以 {cmd:%tb} 单位{p_end}
{synopt:{cmd:r(omitted)}}从日历中遗漏的总天数{p_end}
{synopt:{cmd:r(included)}}日历中包含的总天数{p_end}
{synopt:{cmd:r(omitted_year)}}每年从日历中遗漏的约数日数{p_end}
{synopt:{cmd:r(included_year)}}每年在日历中包含的约数日数{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(name)}}纯日历名称（例如，{cmd:nyse}）{p_end}
{synopt:{cmd:r(purpose)}}日历目的的简短描述{p_end}
{synopt:{cmd:r(fn)}}stbcal 文件的名称{p_end}
{p2colreset}{...}

{pstd}
{cmd:bcal load} 在 {cmd:r()} 中存储与 {cmd:bcal describe} 相同的结果，但不存储 {cmd:r(omitted)}、{cmd:r(included)}、{cmd:r(omitted_year)} 和 {cmd:r(included_year)}。  
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bcal.sthlp>}