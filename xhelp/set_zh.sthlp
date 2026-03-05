{smcl}
{* *! version 1.0.4  13jun2019}{...}
{vieweralsosee "[R] set" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] creturn" "help creturn_zh"}{...}
{vieweralsosee "[M-3] mata set" "help mata set"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{vieweralsosee "[R] set_defaults" "help set_defaults_zh"}{...}
{viewerjumpto "Syntax" "set_zh##syntax"}{...}
{viewerjumpto "Description" "set_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "set_zh##linkspdf"}{...}
{viewerjumpto "Examples" "set_zh##examples"}
{help set:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[R] set} {hline 2}}系统参数概述{p_end}
{p2col:}({mansection R set:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}{cmd:set} [{it:setcommand ...}]

{pstd}
{it:setcommand} 是以下命令之一：

            {helpb adosize}
            {help autotabgraphs_zh}

            {helpb set cformat:cformat}
            {help checksum_zh}
            {help clevel_zh}
            {helpb set coeftabresults:coeftabresults}
            {help conren_zh}
            {helpb set printcolor:copycolor}

            {help dockable_zh}
            {helpb set dots:dots}
            {help doublebuffer_zh}
            {help format_zh:dp}

            {helpb emptycells}

            {help fastscroll_zh}
            {help floatwindows_zh}
            {helpb import fred:fredkey}
            {helpb set fvbase:fvbase}
            {helpb set showbaselevels:fvlabel}
            {helpb set fvtrack:fvtrack}
            {helpb set showbaselevels:fvwrap}
            {helpb set showbaselevels:fvwrapon}

            {helpb set graphics:graphics}
 
            {helpb import haver:haverdir}
            {help netio_zh:httpproxy}
            {help netio_zh:httpproxyauth}
            {help netio_zh:httpproxyhost}
            {help netio_zh:httpproxyport}
            {help netio_zh:httpproxypw}
            {help netio_zh:httpproxyuser}

            {help include_bitmap_zh}
            {helpb set iter:iterlog}
 
            {help java_utilities_zh:java_heapmax}
            {help java_utilities_zh:java_home}

            {help level_zh}
            {help linegap_zh}
            {help log_zh:linesize}
            {helpb set locale_functions:locale_functions}
            {helpb set locale_ui:locale_ui}
            {help locksplitters_zh}
            {helpb logtype}
            {help lstretch_zh}

            {helpb mata set:matacache}
            {helpb mata set:matafavor}
            {helpb mata set:matalibs}
            {helpb mata set:matalnum}
            {helpb mata set:matamofirst}
            {helpb mata set:mataoptimize}
            {helpb mata set:matastrict}
            {help db_zh:maxdb}
            {helpb set iter:maxiter}
            {help memory_zh:max_memory}
            {help preserve_zh:max_preservemem}
            {help memory_zh:maxvar}
            {help memory_zh:min_memory}
            {help more_zh}

            {help memory_zh:niceness}
            {help notifyuser_zh}

            {help obs_zh}
            {help odbc_zh:odbcdriver}
            {help odbc_zh:odbcmgr}
            {help quietly_zh:output}

            {help more_zh:pagesize}
            {helpb set cformat:pformat}
            {help pinnable_zh}
            {help playsnd_zh}
            {helpb set prefix:prefix}
            {helpb set printcolor:printcolor}
            {helpb processors}
            {help python_zh:python_exec}
            {help python_zh:python_userpath}

            {help reventries_zh}
            {help varkeyboard_zh:revkeyboard}
            {help rmsg_zh}
            {helpb set rng:rng}
            {helpb set rngstate:rngstate}
            {helpb set rngstream:rngstream}

            {helpb set scheme:scheme}
            {help scrollbufsize_zh}
            {help search_zh:searchdefault}
            {helpb set seed:seed}
            {help memory_zh:segmentsize}
            {helpb set cformat:sformat}
            {helpb set showbaselevels:showbaselevels}
            {helpb set showbaselevels:showemptycells}
            {helpb set showbaselevels:showomitted}
            {help smoothfonts_zh}

            {help netio_zh:timeout1}
            {help netio_zh:timeout2}
            {help trace_zh}
            {help trace_zh:tracedepth}
            {help trace_zh:traceexpand}
            {help trace_zh:tracehilite}
            {help trace_zh:traceindent}
            {help trace_zh:tracenumber}
            {help trace_zh:tracesep}
            {help generate_zh:type}

            {help update_zh:update_interval}
            {help update_zh:update_prompt}
            {help update_zh:update_query}

            {helpb varabbrev}
            {help varkeyboard_zh}


{marker description}{...}
{title:描述}

{pstd}
本帮助文件提供 Stata 的 {cmd:set} 命令的参考。

{pstd}
要将系统参数重置为出厂设置，请参见 {manhelp set_defaults R}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R setRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{phang}
为系数、标准误差和置信区间使用 %9.2f 格式{p_end}
{phang2}{cmd:. set cformat %9.2f}

{phang}
在启动 Stata 时，将 %9.2f 格式设为默认设置{p_end}
{phang2}{cmd:. set cformat %9.2f, permanently}

{phang}
将所有输出设置重置为其原始 Stata 默认值{p_end}
{phang2}{cmd:. set_defaults output}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set.sthlp>}