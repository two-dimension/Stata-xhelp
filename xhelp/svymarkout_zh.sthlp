{smcl}
{* *! version 1.1.5  30mar2018}{...}
{vieweralsosee "[SVY] svymarkout" "mansection SVY svymarkout"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] mark" "help mark_zh"}{...}
{vieweralsosee "[P] program properties" "help program_properties_zh"}{...}
{viewerjumpto "Syntax" "svymarkout_zh##syntax"}{...}
{viewerjumpto "Description" "svymarkout_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "svymarkout_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "svymarkout_zh##remarks"}{...}
{viewerjumpto "Example" "svymarkout_zh##example"}{...}
{viewerjumpto "Stored results" "svymarkout_zh##results"}
{help svymarkout:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[SVY] svymarkout} {hline 2}}根据调查特征标记观察以排除{p_end}
{p2col:}({mansection SVY svymarkout:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:svymarkout} [{it:markvar}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:svymarkout} 是一个程序命令，它将 {it:markvar} 的值重置为 0， 
在任何调查特征变量（之前通过 {help svyset_zh} 设置）包含缺失值的位置。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SVY svymarkoutRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:svymarkout} 假设 {it:markvar} 是通过 {cmd:marksample} 或 {cmd:mark} 创建的； 请参见 {manhelp mark P}。此命令对于开发使用 {opt ml} 直接拟合最大伪似然模型的估计命令非常有帮助，而不是依赖于 {cmd:svy} 前缀； 请参见 {manhelp program_properties P:程序属性} 讨论如何编写可与 {cmd:svy} 前缀一起使用的程序。


{marker example}{...}
{title:示例}

    {cmd:program} {it:mysvyprogram}{cmd:,} ...
	    ...
	    {cmd:syntax} ...
	    {cmd:marksample touse}
	    {cmd:svymarkout `touse'}
	    ...
    {cmd:end}
    

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:svymarkout} 将以下内容存储在 {cmd:s()} 中：

    宏
        {cmd:s(weight)}     通过 {cmd:svyset} 设置的权重变量

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svymarkout.sthlp>}