{smcl}
{* *! version 1.1.3  15oct2018}{...}
{viewerdialog webdescribe "dialog webdescribe"}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] describe" "help describe_zh"}{...}
{vieweralsosee "[D] webuse" "help webuse_zh"}{...}
{viewerjumpto "Syntax" "webdescribe_zh##syntax"}{...}
{viewerjumpto "Description" "webdescribe_zh##description"}{...}
{viewerjumpto "Options" "webdescribe_zh##options"}{...}
{viewerjumpto "Examples" "webdescribe_zh##examples"}
{help webdescribe:English Version}
{hline}{...}
{title:标题}

{p2colset 5 24 26 2}{...}
{p2col :{hi:[D] webdescribe} {hline 2}}通过网页描述数据{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
通过网页描述数据

{p 8 17 2}
{cmd:webdescribe} {it:filename} [{cmd:,}
 {it:{help webdescribe##webdescribe_options:描述选项}}]


{phang}
报告将要描述数据的 URL

{p 8 17 2}
{cmd:webdescribe query}

{phang}
指定将要描述数据的 URL

{p 8 17 2}
{cmd:webdescribe set} {it:URL}


{phang}
将 URL 重置为默认

{p 8 17 2}
{cmd:webdescribe set}


{synoptset 20 tabbed}{...}
{marker webdescribe_options}{...}
{synopthdr :webdescribe_options}
{synoptline}
{syntab :主要}
{synopt :{opt s:hort}}仅显示一般信息{p_end}
{synopt :{opt var:list}}除了通常存储的结果外，还存储 {cmd:r(varlist)} 和 {cmd:r(sortlist)}；程序员选项{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:webdescribe} 生成关于通过将 {it:filename} 附加到 URL 后获取的 Stata 格式数据集的摘要。

{pstd}
在设置 {it:URL} 时，您可以仅指定网站的名称，但如果您在前面加上 {cmd:http://} 或 {cmd:https://}，或者在末尾加上斜杠，将不会产生错误。

{pstd}
使用 {cmd:webdescribe set} {it:URL} 可使您无需每次都指定 URL 即可从同一 URL 描述多个数据集。此命令是一个便利命令，仅仅调用 {help describe_zh} 和适当选项来描述位于该 URL 的文件。以下两个示例是等价的。

{pstd}
变量的名称、存储类型、显示格式、值标签和变量标签以及关于数据集的摘要信息会默认显示。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt short} 仅显示关于数据集的摘要信息：
观察值数量、变量数量、大小、排序顺序、数据集标签以及最后保存该文件的时间。

{phang} 
{opt varlist} 是程序员的选项，指定除了通常存储的结果外，还存储 {cmd:r(varlist)} 和 {cmd:r(sortlist)}。
{cmd:r(varlist)} 包含数据集中变量的名称。
{cmd:r(sortlist)} 包含排序数据的变量名称。


{marker examples}{...}
{title:示例}

    {cmd}. webdescribe census
    . webdescribe cancer, short
    . webdescribe set http://www.mydata.org/
    . webdescribe set www.mydata.org
    . webdescribe query
    . webdescribe set{txt}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <webdescribe.sthlp>}