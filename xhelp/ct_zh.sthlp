{smcl}
{* *! version 1.1.5  20sep2018}{...}
{vieweralsosee "[ST] ct" "mansection ST ct"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] ctset" "help ctset_zh"}{...}
{vieweralsosee "[ST] cttost" "help cttost_zh"}{...}
{vieweralsosee "[ST] st" "help st_zh"}{...}
{vieweralsosee "[ST] Survival analysis" "help survival_analysis_zh"}
{help ct:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[ST] ct} {hline 2}}计数时间数据{p_end}
{p2col:}({mansection ST ct:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{title:描述}

{pstd}
“ct”一词指的是计数时间数据，以及用于分析这些数据的所有以“ct”开头的命令。如果您拥有关于人群（无论是人还是发电机）的数据，观察记录在时间 t 处测试的单位数量（存活主题）以及因审查而失败或失去的主题的数量，那么您拥有的就是我们所称之为计数时间数据。

{pstd}
另一方面，如果您拥有关于个体主题的数据，观察记录表明该主题在时间 t0 下观察，到后来的时间 t1，观察到失败或审查，那么您拥有的就是我们所称之为生存时间数据。如果您拥有生存时间数据，请参见 {manhelp st ST}。

{pstd}
不要将计数时间数据与计数过程数据混淆，后者可以使用 st 命令进行分析；请参见 {manhelp st ST}。

{pstd}
有两个 ct 命令：

{p 8 29 2}{help ctset_zh} {space 5} 声明数据为计数时间数据{p_end}
{p 8 29 2}{help cttost_zh} {space 4} 将计数时间数据转换为生存时间数据

{pstd}
关键在于 {cmd:cttost} 命令。一旦您将计数时间数据转换为生存时间数据，您就可以使用 st 命令来分析数据。整个过程如下：

{phang2}1.  使用 {cmd:ctset} 设置您的数据，以便 Stata 知道它们是计数时间数据；参见 {manhelp ctset ST}。

{phang2}2.  输入 {cmd:cttost} 将数据转换为生存时间数据；参见 {manhelp cttost ST}。

{phang2}3.  使用 st 命令；参见 {manhelp st ST}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ct.sthlp>}