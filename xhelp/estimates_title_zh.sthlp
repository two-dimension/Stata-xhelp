{smcl}
{* *! version 2.1.6  19oct2017}{...}
{viewerdialog "estimates title" "dialog estimates_title"}{...}
{vieweralsosee "[R] estimates title" "mansection R estimatestitle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estimates" "help estimates_zh"}{...}
{viewerjumpto "Syntax" "estimates_title_zh##syntax"}{...}
{viewerjumpto "Menu" "estimates_title_zh##menu"}{...}
{viewerjumpto "Description" "estimates_title_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "estimates_title_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "estimates_title_zh##remarks"}{...}
{viewerjumpto "Example" "estimates_title_zh##example"}
{help estimates_title:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[R] estimates title} {hline 2}}为估计结果设置标题{p_end}
{p2col:}({mansection R estimatestitle:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{opt est:imates} {cmd:title:}
[{it:text}]

{p 8 12 2}
{opt est:imates} {cmd:title}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 事后估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estimates} {cmd:title:} （注意冒号）设置或清除当前估计结果的标题。该标题被
{helpb estimates table}
和
{helpb estimates stats}所使用。

{pstd}
不带冒号的 {cmd:estimates} {cmd:title} 显示当前标题。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R estimatestitleQuickstart:快速开始}

        {mansection R estimatestitleRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
设置标题后，如果已有估计结果被存储，请务必再次存储它们。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress mpg gear turn}

{pstd}为估计结果添加标题并存储结果{p_end}
{phang2}{cmd:. estimates title: 最终模型}{p_end}
{phang2}{cmd:. estimates store reg}

{pstd}重放结果{p_end}
{phang2}{cmd:. estimates replay reg}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estimates_title.sthlp>}