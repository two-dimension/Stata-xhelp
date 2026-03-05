{smcl}
{* *! version 1.0.2  22dec2016}{...}
{findalias asfrstrllist}{...}
{vieweralsosee "" "--"}
{help strllist:English Version}
{hline}{...}
{findalias asfrdatatypes}{...}
{title:标题}

    {findalias frstrllist}


{marker description}{...}
{title:描述}

{pstd}
默认情况下，{cmd:list} 命令仅显示长字符串的第一部分，后面跟着两个点。{cmd:list} 显示的内容由结果窗口的宽度决定。

{pstd}
如果您添加 {cmd:notrim} 选项，{cmd:list} 将显示长字符串的前 2,045 字节，无论是以 {cmd:strL} 还是 {cmd:str}{it:#} 存储。

{phang2}{cmd:. list, notrim}{p_end}
{phang2}{cmd:. list mystr, notrim}{p_end}
{phang2}{cmd:. list mystr in 5, notrim}{p_end}

{pstd}
显示长字符串的另一种方法是使用 {cmd:display} 命令。通过 {cmd:display}，您可以看到整个内容。要显示变量 {cmd:mystr} 的第五个观察值，请输入

{phang2}{cmd:. display _asis mystr[5]}{p_end}

{pstd}
如果字符串很长，那条命令可能会产生大量输出，甚至数十万页！请记住，您可以按 {it:Break} 来停止列表。

{pstd}
要查看字符串的前 5,000 个字符，请输入

{phang2}{cmd:. display _asis usubstr(mystr[5], 1, 5000)}{p_end}

{pstd}
有关显示超出普通 ASCII 字符的 Unicode 字符的详细信息，请参见 {findalias frdiunicode}。

{pstd}
非常少见的是，字符串变量可能包含 SMCL 输出。SMCL 是 Stata 的文本标记语言。如果您使用 {cmd:fileread()} 将 Stata 日志文件读取到变量中，则该变量可能包含 SMCL。在这种情况下，您可以输入以下命令查看正确格式化的文本

{phang2}{cmd:. display as txt mystr[1]}

{pstd}
要了解有关 {cmd:display} 的其他功能，请参见 {help display_zh}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <strllist.sthlp>}