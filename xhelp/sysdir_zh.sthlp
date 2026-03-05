{smcl}
{* *! version 1.1.7  19oct2017}{...}
{vieweralsosee "[P] sysdir" "mansection P sysdir"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] net" "help net_zh"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{vieweralsosee "[R] update" "help update_zh"}{...}
{viewerjumpto "Syntax" "sysdir_zh##syntax"}{...}
{viewerjumpto "Description" "sysdir_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sysdir_zh##linkspdf"}{...}
{viewerjumpto "Option" "sysdir_zh##option"}{...}
{viewerjumpto "Examples" "sysdir_zh##examples"}
{help sysdir:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[P] sysdir} {hline 2}}查询和设置系统目录{p_end}
{p2col:}({mansection P sysdir:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    列出 Stata 的系统目录

    {cmd:sysdir} [{cmdab:l:ist}]


    重置 Stata 的系统目录

{p 8 15 2}{cmd:sysdir set} {it:codeword} [{cmd:"}]{it:path}[{cmd:"}]


    显示个人目录的路径并列出其中的文件

    {cmd:personal} [{cmd:dir}]


    显示 ado 文件路径

    {cmd:adopath}


    将目录添加到 ado-path 的末尾

{p 8 16 2}{cmd:adopath +}  {it:path_or_codeword}


    将目录添加到 ado-path 的开头

{p 8 16 2}{cmd:adopath ++} {it:path_or_codeword}


    从 ado-path 中移除目录

{p 8 16 2}{cmd:adopath -}  {c -(} {it:path_or_codeword} | {it:#} {c )-}


    设置 ado 文件可以消耗的最大内存

{phang2}{cmd:set} {cmdab:a:dosize} {it:#} [{cmd:,} {cmdab:perm:anently} ] {space 6} {bind:{cmd:10} {ul:<} {it:#} {ul:<} {cmd:10000}}


{pstd}
其中 {it:path} 如果包含空格或其他特殊字符，必须用双引号括起来，而 {it:codeword} 是

{pin}{c -(} {cmd:STATA} | {cmd:BASE} | {cmd:SITE} |
    {cmd:PLUS} | {cmd:PERSONAL} | {cmd:OLDPLACE} {c )-}


{marker description}{...}
{title:描述}

{pstd}
{cmd:sysdir} 列出 Stata 的系统目录。

{pstd}
{cmd:sysdir set} 更改 Stata 的系统目录路径。

{pstd}
{cmd:personal} 显示 {cmd:PERSONAL} 目录的路径。 {cmd:personal dir} 给出 {cmd:PERSONAL} 目录中包含的文件的目录列表。

{pstd}
{cmd:adopath} 显示存储在全局宏 {hi:S_ADO} 中的 ado 文件路径。

{pstd}
{cmd:adopath +} 将新目录添加到搜索路径的末尾，或将现有目录移动到末尾，该路径存储在全局宏 {hi:S_ADO} 中。

{pstd}
{cmd:adopath ++} 将新目录添加到搜索路径的开头，或将现有目录移动到开头，该路径存储在全局宏 {hi:S_ADO} 中。

{pstd}
{cmd:adopath -} 从存储在全局宏 {hi:S_ADO} 中的搜索路径中移除目录。

{pstd}
{cmd:set adosize} 设置自动加载的 do 文件可以消耗的最大内存（以千字节为单位）。默认值为 {cmd:set adosize 1000}。要查看当前设置，输入 {cmd:display} {cmd:c(adosize)}。

{pstd}
这些命令与 Stata 的实现的技术方面有关。除了 {cmd:sysdir list}，您不必使用它们。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection P sysdirRemarksandexamples:备注与示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除了立即进行更改外，还将 {cmd:adosize} 设置记住，并在您调用 Stata 时成为默认设置。


{marker examples}{...}
{title:示例}

{pstd}列出 Stata 的系统目录{p_end}
{phang2}{cmd:. sysdir list}

{pstd}显示 {cmd:PERSONAL} 目录的身份{p_end}
{phang2}{cmd:. personal}

{pstd}列出 {cmd:PERSONAL} 目录中的文件{p_end}
{phang2}{cmd:. personal dir}

{pstd}显示 ado 文件路径{p_end}
{phang2}{cmd:. adopath}

{pstd}将 {cmd:C:\myprogs} 添加到 ado-path 的末尾{p_end}
{phang2}{cmd:. adopath + C:\myprogs}

{pstd}从 ado-path 中移除 {cmd:C:\myprogs}{p_end}
{phang2}{cmd:. adopath - C:\myprogs}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sysdir.sthlp>}