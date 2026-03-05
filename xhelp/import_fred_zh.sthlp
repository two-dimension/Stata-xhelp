{smcl}
{* *! version 1.0.6  01mar2018}{...}
{viewerdialog "import fred" "dialog import_fred_dlg"}{...}
{vieweralsosee "[D] import fred" "mansection D importfred"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{vieweralsosee "[D] import delimited" "help import delimited"}{...}
{vieweralsosee "[D] import haver" "help import haver"}{...}
{vieweralsosee "[D] odbc" "help odbc_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{viewerjumpto "Syntax" "import_fred_zh##syntax"}{...}
{viewerjumpto "Menu" "import_fred_zh##menu"}{...}
{viewerjumpto "Description" "import_fred_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "import_fred_zh##linkspdf"}{...}
{viewerjumpto "Options" "import_fred_zh##options"}{...}
{viewerjumpto "Examples" "import_fred_zh##examples"}{...}
{viewerjumpto "Stored results" "import_fred_zh##results"}
{help import_fred:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[D] import fred} {hline 2}}从联邦储备经济数据导入数据{p_end}
{p2col:}({mansection D importfred:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
设置 FRED 密钥

{p 8 32 2}
{cmd:set} {cmd:fredkey}
{it:key}
   [{cmd:,} {opt perm:anently}]


{phang}
导入 FRED 数据

{p 8 32 2}
{cmd:import} {cmd:fred}
{it:series_list}
[{cmd:,} {it:options}]

{phang}
或 

{p 8 32 2}
{cmd:import} {cmd:fred}{cmd:,}
{opth series:list(filename)}
[{it:options}]


{phang}
描述系列

{p 8 32 2}
{cmd:freddescribe}
{it:series_list}
[{cmd:,} {opt det:ail} {opt real:time(start end)}]


{phang}
搜索系列

{p 8 32 2}
{cmd:fredsearch}
{it:keyword_list}
[{cmd:,}  {help import fred##searchopts:{it:search_options}}]


{phang}
{it:key} 是有效的 API 密钥，由圣路易斯联邦储备提供，可以在
{browse "https://research.stlouisfed.org/docs/api/api_key.html"}获得。

{phang}
{it:series_list} 是 FRED 代码的列表，例如，{cmd:FEDFUNDS}。

{phang}
{it:keyword_list} 是一个关键词列表。

{synoptset 33 tabbed}{...}
{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{p2coldent:* {opth series:list(filename)}}使用文件指定系列 ID{p_end}
{synopt :{opt dater:ange(start end)}}限制为仅指定日期范围内的观察值{p_end}
{synopt :{cmdab:aggr:egate(}{help import_fred##freq:{it:frequency}} [{cmd:,} {help import_fred##method:{it:method}}]{cmd:)}}指定聚合级别和聚合类型{p_end}
{synopt :{opt real:time(start end)}}在指定日期之间导入历史版本{p_end}
{synopt :{opt vint:age(datespec)}}按版本日期导入历史数据{p_end}
{synopt :{opt nrobs}}仅导入新的和修订的观察值{p_end}
{synopt :{opt initial}}仅导入每个系列的第一个值{p_end}
{synopt :{opt long}}以长格式导入数据{p_end}
{synopt :{opt nosumm:ary}}抑制摘要表{p_end}

{synopt :{opt clear}}在导入 FRED 系列之前清除内存中的数据{p_end}
{synoptline}
{p 4 6 2}* {opt serieslist()} 是必需的，如果未指定 {it:series_list}。{p_end}
{p 4 6 2}{opt clear} 不会出现在对话框中。{p_end}
{p2colreset}{...}

{phang}
如果提供了 {it:start} 和 {it:end} 作为日期，它们必须是使用 {cmd:31Jan2016}、{cmd:2016-01-31}、{cmd:2016/01/31} 或 {cmd:01/31/2016} 格式的日常日期。

{marker datespec}{...}
{phang}
{it:datespec} 可以是

            {it:date}                        一个日常日期
            {it:date_1} {it:date_2} ... {it:date_n}    一系列日常日期
	    {cmd:_all}                        所有可用日期

{synoptset 33}{...}
{marker searchopts}{...}
{synopthdr :搜索选项}
{synoptline}
{synopt :{opt id:only}}要求 {it:keywords} 仅出现在系列 ID 中{p_end}
{synopt :{opt tags(tag_list)}}按 {it:tag_list} 搜索{p_end}
{synopt :{opt tagl:ist}}列出当前搜索结果中存在的标签{p_end}
{synopt :{cmd:sort(}{help import_fred##sortby:{it:sortby}}[{cmd:,} {help import_fred##sortorder:{it:sortorder}}])}按 {it:sortby} 指定的顺序列出匹配的系列{p_end}
{synopt :{opt det:ail}}列出每个搜索结果的完整元信息{p_end}

{synopt :{cmdab:sav:ing(}{it:{help filename_zh}} [{cmd:, replace}]{cmd:)}}将系列信息保存到 {it:filename}{cmd:.dta}{p_end}
{synoptline}
{p 4 6 2}{opt saving()} 不会出现在对话框中。{p_end}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 导入 > 联邦储备经济数据 (FRED)}

{pstd}
有关使用 FRED 接口的信息和示例，请参见 {mansection D importfredRemarksandexamplesTheFREDinterface:{it:FRED 接口}} 在 {bf:[D] import fred} 中。


{marker description}{...}
{title:描述}

{pstd}
{cmd:import fred} 从联邦储备经济数据 (FRED) 导入数据到 Stata。{cmd:import fred} 支持 FRED 数据以及历史版本数据来自存档 FRED (ALFRED)。{cmd:freddescribe} 和 {cmd:fredsearch} 提供了描述数据库中系列和根据关键字和标签搜索 FRED 数据的工具。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D importfredQuickstart:快速入门}

        {mansection D importfredRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd}
选项按以下标题呈现：

        {help import fred##option_setfredkey:设置 fredkey 的选项}
	{help import fred##option_importfred:导入 fred 的选项}
	{help import fred##option_freddescribe:freddescribe 的选项}
	{help import fred##option_fredsearch:fredsearch 的选项}


{marker option_setfredkey}{...}
    {title:设置 fredkey 的选项}

{phang}
{cmd:permanently} 
指定除设置当前 Stata 会话的密钥外，密钥将被记住并在调用 Stata 时成为默认密钥。


{marker option_importfred}{...}
    {title:导入 fred 的选项}

{phang}
{opth serieslist(filename)} 允许您导入在 {it:filename} 中指定的系列。系列文件必须包含一个名为 {cmd:seriesid} 的变量，该变量包含您希望导入的系列的 ID。如果未指定 {it:series_list}，则 {opt serieslist()} 是必需的。

{phang}
{opt daterange(start end)} 指定仅在 {it:start} 和 {it:end} 之间的观察值应被导入。{it:start} 和 {it:end} 必须指定为日常日期或缺失值 ({cmd:.})。使用 {bind:{cmd:daterange(.} {it:end}{cmd:)}} 导入从第一个可用值到 {it:end} 的所有观察值。使用 {bind:{cmd:daterange(}{it:start} {cmd:.)}} 导入从 {it:start} 到最近可用日期的所有观察值。

{phang}
{cmd:aggregate(}{it:frequency}[{cmd:,} {it:method}{cmd:)} 指定数据应以低于系列本身的频率导入，并附带选择的聚合方法。

{marker freq}{...}
{phang2}
	{it:frequency} 可以是 {cmdab:d:aily}、
	{cmdab:w:eekly}、{cmdab:biw:eekly}、
	{cmdab:m:onthly}、{cmdab:q:uarterly}、
	{cmdab:semia:nnual}、{cmdab:a:nnual}、
	{cmd:weekly ending friday}、
	{cmd:weekly ending thursday}、
	{cmd:weekly ending wednesday}、
	{cmd:weekly ending tuesday}、
	{cmd:weekly ending monday}、
	{cmd:weekly ending sunday}、
	{cmd:weekly ending saturday}、
	{cmd:biweekly ending wednesday}，或
	{cmd:biweekly ending monday}。

{marker method}{...}
{phang2}
	{it:method} 可以是 {cmd:avg}（期内平均值）、{cmd:sum}（期内总和）或 {cmd:eop}（期末值）。
	默认值为 {cmd:avg}。

{phang}
{opt realtime(start end)} 指定在一个实时期间，导入每个系列的所有版本。将导入 {it:start} 时有效的版本，以及 {it:start} 和 {it:end} 之间发布的所有版本。{it:start} 或 {it:end} 可以被缺失值 ({cmd:.}) 替换。如果 {it:start} 是缺失值，则将从第一个可用值开始导入所有版本，到 {it:end} 为止。如果 {it:end} 是缺失值，则将从 {it:start} 开始导入到最近的可用版本。{cmd:realtime()} 不能与 {cmd:vintage()} 一起使用。

{phang}
{opth vintage:(import_fred##datespec:datespec)}
    按照 {it:datespec} 导入历史版本数据。{it:datespec} 可以是日常日期列表或 {cmd:_all}。当 {it:datespec} 是日期列表时，指定系列将在 {it:datespec} 中所示的日期上进口。当 {it:datespec} 是 {cmd:_all} 时，所有指定系列的版本都将被导入。{cmd:vintage()} 不能与 {cmd:realtime()} 一起使用。

{phang}
{cmd:nrobs} 指定仅导入每个版本中新的或修订的观察值。旧的和未修订的观察值将作为缺失值 {cmd:.u} 导入。

{phang}
{cmd:initial} 指定仅导入每个系列的第一个观察值。此选项不能与 {cmd:nrobs} 结合使用。

{phang}
{cmd:long} 指定将每个系列以长格式导入。

{phang}
{cmd:nosummary} 抑制摘要表。

{pstd}
以下选项可与 {cmd:import fred} 一起使用，但未显示在对话框中：

{phang}
{cmd:clear} 指定用导入的 FRED 数据替换内存中的数据。


{marker option_freddescribe}{...}
    {title:freddescribe 的选项}

{phang}
{cmd:detail} 显示有关 {it:series_list} 的完整元信息。

{phang}
{opt realtime(start end)} 提供 {it:start} 和 {it:end} 之间的历史版本信息。{it:start} 或 {it:end} 可以被缺失值 ({cmd:.}) 替换。如果 {it:start} 是缺失值，则将描述从第一个可用到 {it:end} 的所有版本。如果 {it:end} 是缺失值，则将描述从 {it:start} 开始到最近可用版本的所有版本。


{marker option_fredsearch}{...}
    {title:fredsearch 的选项}

{phang}
{opt idonly} 指定在系列 ID 中找到 {it:keyword_list} 中的关键字，而不是在元数据的其他地方找到。

{phang}
{opt tags(tag_list)} 搜索具有 {it:tag_list} 中的所有标签的系列。FRED 提供可用标签的完整列表。标签形成以空格分隔的列表。标签是区分大小写的，所有 FRED 标签均为小写。

{phang}
{opt taglist} 列出当前搜索结果中存在的所有标签。

{phang}
{cmd:sort(}{it:sortby}[{cmd:,} {it:sortorder}]{cmd:)} 按照 {it:sortby} 指定的顺序列出搜索结果。

{marker sortby}{...}
{pmore}
    在搜索系列时，{it:sortby} 可以是
    {opt pop:ularity}、{opt id}、{opt title}、
    {opt lastup:dated}、{opt freq:uency}、
    {opt obss:tart}、{opt obse:nd}、
    {opt units}，或 {opt seas:onaladj}。默认情况下，使用 {opt popularity}。

{pmore}
    使用 {opt taglist} 选项进行搜索时，
    {it:sortby} 可以是 {opt name} 或 {opt series_count}。
    {opt name} 表示标签名称，{opt series_count} 是与标签相关联的系列计数在搜索结果中。默认情况下，使用 {opt series_count}。

{marker sortorder}{...}
{pmore}
    您可以选择将搜索结果的顺序从
    降序 ({opt descend:ing}) 更改为
    升序 ({opt ascend:ing})。
    搜索 {cmd:popularity}、{cmd:lastupdated} 或 {cmd:series_count} 时的默认顺序为 {cmd:descending}；否则，默认排序顺序为 {cmd:ascending}。

{phang}
{opt detail} 列出每个出现在搜索结果中的系列的完整元信息。

{pstd}
以下选项可与 {cmd:fredsearch} 一起使用，但未显示在对话框中：

{phang}
{cmd:saving(}{it:{help filename_zh}}[{cmd:, replace)} 将搜索结果保存到文件中。然后可以在 {cmd:import fred} 的 {cmd:serieslist()} 选项中指定该文件名以导入搜索找到的系列。可选的 {cmd:replace} 指定如果 {it:filename} 存在，则覆盖该文件。


{marker examples}{...}
{title:示例}

{pstd}
无论您计划使用 FRED 接口还是 {cmd:import fred} 命令，您必须首先拥有有效的 API 密钥。API 密钥由圣路易斯联邦储备提供，可以在 {browse "https://research.stlouisfed.org/docs/api/api_key.html"} 获得。密钥将是一个 32 个字符的字母数字字符串。首次打开 FRED 接口时会提示您输入此密钥。或者，您可以输入

{phang2}
{cmd:. set fredkey} {it:key}{cmd:, permanently}
{p_end}

{pstd}
其中 {it:key} 是您的 API 密钥。

{pstd}
查找有关美元和日元汇率的每月数据{p_end}
{phang2}
{cmd:. fredsearch us dollar yen exchange rate monthly}

{pstd}
从上述结果中导入该系列{p_end}
{phang2}
{cmd:. import fred EXJPUS}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:fredsearch} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 算子}{p_end}
{synopt:{cmd:r(series_ids)}}搜索结果中包含的系列 ID 列表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <import_fred.sthlp>}