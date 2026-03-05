{smcl}
{* *! version 1.1.5  20apr2018}{...}
{vieweralsosee "[P] numlist" "mansection P numlist"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 11.1.8 numlist" "help numlist_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] syntax" "help syntax_zh"}{...}
{viewerjumpto "语法" "nlist_zh##syntax"}{...}
{viewerjumpto "描述" "nlist_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "nlist_zh##linkspdf"}{...}
{viewerjumpto "选项" "nlist_zh##options"}{...}
{viewerjumpto "示例" "nlist_zh##examples"}{...}
{viewerjumpto "存储结果" "nlist_zh##results"}
{help nlist:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[P] numlist} {hline 2}}解析数字列表{p_end}
{p2col:}({mansection P numlist:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
     {cmd:numlist} {cmd:"}{it:numlist}{cmd:"} [{cmd:,} {cmdab:asc:ending}
       {cmdab:desc:ending} {cmdab:int:eger} {cmdab:miss:ingokay}
       {cmd:min(}{it:#}{cmd:)} {cmd:max(}{it:#}{cmd:)}
       {cmdab:r:ange:(}{it:operator#} [{it:operator#}]{cmd:)} {cmd:sort}]

{phang}其中 {it:numlist} 由一个或多个
{it:{help numlist_zh:numlist_elements}} 组成

{phang}并且 {it:operator} 为 {cmd:<} | {cmd:<=} | {cmd:>} | {cmd:>=}

{pmore}在 {it:operator} 和 {it:#} 之间没有空格；例如，

   		{cmd:range(>=0)}
		{cmd:range(>=0 <=20)}
		{cmd:range(>0 <=50)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:numlist} 命令扩展作为字符串参数提供的数字列表，并根据指定的选项执行错误检查。{it:numlist} 字符串中的任何数字序列运算符都会被评估，扩展后的数字列表将返回在 {hi:r(numlist)} 中。有关数字列表的讨论，请参见 {help numlist_zh}。另外，更多综合命令的解析请参见 {manhelp syntax P}，该命令也会解析数字列表。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P numlistRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}{cmd:ascending} 指示用户必须以递增顺序给出数字列表，且不能有重复值。这与 {cmd:sort} 选项不同。

{phang}{cmd:descending} 指示数字列表必须以递减顺序给出，且不能有重复值。

{phang}{cmd:integer} 指定用户只能在数字列表中给出整数值。

{phang}{cmd:missingokay} 指示数字列表中允许缺失值。默认情况下，不允许缺失值。

{phang}{cmd:min(}{it:#}{cmd:)} 指定数字列表中允许的最小元素数量。默认值为 {cmd:min(1)}。如果您想允许空数字列表，请指定 {cmd:min(0)}。

{phang}{cmd:max(}{it:#}{cmd:)} 指定数字列表中允许的最大元素数量。默认值为 {cmd:max(1600)}，这是允许的最大值。

{phang}{cmd:range(}{it:operator#} [{it:operator#}]{cmd:)} 指定数字列表中值的可接受范围。{it:operators} 为 {cmd:<}（小于）、{cmd:<=}（小于或等于）、{cmd:>}（大于）和 {cmd:>=}（大于或等于）。在 {it:operator} 和 {it:#} 之间不允许有空格。

{phang}{cmd:sort} 指定返回的数字列表应进行排序。这与 {cmd:ascending} 选项不同，后者将责任归于用户提供已排序的列表，用户将在输入未排序列表时被禁止。而 {cmd:sort} 则没有对用户施加限制，并处理排序。{cmd:sort} 还允许出现重复值。


{marker examples}{...}
{title:示例}

    {cmd:. numlist "5.3 1.0234 3 6:18 -2.0033 5.3/7.3"}
    {cmd:. display "`r(numlist)'"}

    {cmd:. numlist "5.3 1.0234 3 6:18 -2.0033 5.3/7.3", integer}
            （给出错误消息）

    {cmd:. numlist "1 5 8/12 15", integer descending} 
            （给出错误消息）

    {cmd:. numlist "1 5 8/12 15", integer ascending}
    {cmd:. display "`r(numlist)'"}

    {cmd:. numlist "100 1 5 8/12 15", integer ascending} 
            （给出错误消息）

    {cmd:. numlist "100 1 5 8/12 15", integer sort}
    {cmd:. display "`r(numlist)'"}

    {cmd:. numlist "3 5 . 28 -3(2)5"}
            （给出错误消息）

    {cmd:. numlist "3 5 . 28 -3(2)5", missingokay min(3) max(25)}
    {cmd:. display "`r(numlist)'"}

    {cmd:. numlist "28 36", min(3) max(6)}
            （给出错误消息）

    {cmd:. numlist "28 36 -3 5 2.8 7 32 -8", min(3) max(6)}
            （给出错误消息）

    {cmd:. numlist "3/6 -4 -1 to 5", range(>=1)}
            （给出错误消息）

    {cmd:. numlist "3/6", range(>=0 <30)}
    {cmd:. display "`r(numlist)'"}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:numlist} 将以下内容存储在 {cmd:r()} 中：

    宏
        {cmd:r(numlist)}    扩展的数字列表

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <nlist.sthlp>}