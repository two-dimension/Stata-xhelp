{smcl}
{* *! version 1.11.1  02jul2019}{...}
{findalias asfrwhatsnew}{...}
{findalias asfrres}{...}
{findalias asfrwww}{...}
{findalias asfrstatapress}{...}
{findalias asfrstatalist}{...}
{findalias asfrstb}{...}
{findalias asfrweb}{...}
{findalias asfroffinstall}{...}
{findalias asfrupdate}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] net" "help net_zh"}{...}
{vieweralsosee "[R] sj" "help sj_zh"}{...}
{vieweralsosee "stb" "help stb_zh"}{...}
{vieweralsosee "[R] update" "help update_zh"}
{help whatsnew:English Version}
{hline}{...}
{title:标题}

{phang}
{hi:自16.0版本以来Stata的新增功能}


{title:描述}

    更新历史：

            {hi:Stata 16.0 基础版    26jun2019}
            {hi:更新至         02jul2019}

{pstd}
本文件记录了自16.0版本发布以来对Stata所做的新增和修复。文件末尾提供了早期新增和修复的链接。

{pstd}
更新可以通过互联网免费获得。
{update "来自 http://www.stata.com":点击这里}获取最新更新，或参见 {help updates} 以获取详细说明。

{pstd}
最近的更改列在最前面。


{hline 8} {hi:更新 02jul2019} {hline}

{p 5 9 2}
1.  在线帮助和搜索索引已更新至
    {help sj_zh:Stata Journal} 19(2)。

{p 5 9 2}
2.  {helpb odbc load} 进行了以下修复：

{p 9 13 2}
     a.  当 {cmd:odbcdriver} 设置为 {cmd:unicode} 时，{cmd:odbc load} 会产生 SQLSTATE 错误 42000 和 Stata 错误 {cmd:r(682)}。此问题已修复。

{p 9 13 2}
     b.  使用选项 {opt allstring} 的 {cmd:odbc load} 将 Unicode 列导入为 ISO Latin-1 列。这一问题已修复。


{hline 8} {hi:先前更新} {hline}

{pstd}
请参阅 {help whatsnew15to16_zh}。

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件        内容                     年份           {c |}
    {c LT}{hline 63}{c RT}
    {c |} {bf:本文件}        Stata 16.0                   2019年至今 {c |}
    {c |} {help whatsnew15to16_zh}   Stata 16.0 新版本       2019            {c |}
    {c |} {help whatsnew15_zh}       Stata 15.0 和 15.1          2017年至2019    {c |}
    {c |} {help whatsnew14to15_zh}   Stata 15.0 新版本       2017            {c |}
    {c |} {help whatsnew14_zh}       Stata 14.0, 14.1 和 14.2   2015年至2017    {c |}
    {c |} {help whatsnew13to14_zh}   Stata 14.0 新版本       2015            {c |}
    {c |} {help whatsnew13_zh}       Stata 13.0 和 13.1          2013年至2015    {c |}
    {c |} {help whatsnew12to13_zh}   Stata 13.0 新版本       2013            {c |}
    {c |} {help whatsnew12_zh}       Stata 12.0 和 12.1          2011年至2013    {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0 新版本       2011            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0, 11.1 和 11.2   2009年至2011    {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0 新版本       2009            {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0 和 10.1          2007年至2009    {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0 新版本       2007            {c |}
    {c |} {help whatsnew9_zh}        Stata  9.0, 9.1 和 9.2     2005年至2007    {c |}
    {c |} {help whatsnew8to9_zh}     Stata  9.0 新版本       2005            {c |}
    {c |} {help whatsnew8_zh}        Stata  8.0, 8.1 和 8.2     2003年至2005    {c |}
    {c |} {help whatsnew7to8_zh}     Stata  8.0 新版本       2003            {c |}
    {c |} {help whatsnew7_zh}        Stata  7.0                   2001年至2002    {c |}
    {c |} {help whatsnew6to7_zh}     Stata  7.0 新版本       2000            {c |}
    {c |} {help whatsnew6_zh}        Stata  6.0                   1999年至2000    {c |}
    {c BLC}{hline 63}{c BRC}
{hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew.sthlp>}