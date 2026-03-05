{smcl}
{* *! version 1.2.1  20jun2019}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}
{help whatsnew13to14:English Version}
{hline}{...}
{title:版本14.0的新功能（与版本13比较）}

{pstd}
此文件列出了Stata版本14.0创建过程中所进行的更改：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件        内容                     年份           {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatsnew_zh}         Stata 16.0                   2019至今 {c |}
    {c |} {help whatsnew15to16_zh}   Stata 16.0新版本           2019            {c |}
    {c |} {help whatsnew15_zh}       Stata 15.0和15.1          2017至2019    {c |}
    {c |} {help whatsnew14to15_zh}   Stata 15.0新版本           2017            {c |}
    {c |} {help whatsnew14_zh}       Stata 14.0、14.1和14.2   2015至2017    {c |}
    {c |} {bf:本文件}        Stata 14.0新版本           2015            {c |}
    {c |} {help whatsnew13_zh}       Stata 13.0和13.1          2013至2015    {c |}
    {c |} {help whatsnew12to13_zh}   Stata 13.0新版本           2013            {c |}
    {c |} {help whatsnew12_zh}       Stata 12.0和12.1          2011至2013    {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0新版本           2011            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0、11.1和11.2   2009至2011    {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0新版本           2009            {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0和10.1          2007至2009    {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0新版本           2007            {c |}
    {c |} {help whatsnew9_zh}        Stata  9.0、9.1和9.2     2005至2007    {c |}
    {c |} {help whatsnew8to9_zh}     Stata  9.0新版本           2005            {c |}
    {c |} {help whatsnew8_zh}        Stata  8.0、8.1和8.2     2003至2005    {c |}
    {c |} {help whatsnew7to8_zh}     Stata  8.0新版本           2003            {c |}
    {c |} {help whatsnew7_zh}        Stata  7.0                   2001至2002    {c |}
    {c |} {help whatsnew6to7_zh}     Stata  7.0新版本           2000            {c |}
    {c |} {help whatsnew6_zh}        Stata  6.0                   1999至2000    {c |}
    {c BLC}{hline 63}{c BRC}

{pstd}
最近的更改列在前面。

{hline 3} {hi:更近的更新} {hline}

{pstd}
请参见 {help whatsnew14_zh}。

{hline 3} {hi:Stata 14.0 发布于2015年4月2日} {hline}

      {bf:目录}
{p 9 12 2}1.3  新功能{p_end}
{p 9 12 2}{help whatsnew13to14##highlights:1.3.1  亮点}{p_end}
{p 9 12 2}{help whatsnew13to14##NewStat:1.3.2  统计学的新功能（一般）}{p_end}
{p 9 12 2}{help whatsnew13to14##NewSEM:1.3.3  统计学的新功能（结构方程建模）}{p_end}
{p 9 12 2}{help whatsnew13to14##NewME:1.3.4  统计学的新功能（多层建模）}{p_end}
{p 9 12 2}{help whatsnew13to14##NewTE:1.3.5  统计学的新功能（处理效应）}{p_end}
{p 9 12 2}{help whatsnew13to14##NewXT:1.3.6  统计学的新功能（纵向/面板数据）}{p_end}
{p 9 12 2}{help whatsnew13to14##NewTS:1.3.7  统计学的新功能（时间序列）}{p_end}
{p 9 12 2}{help whatsnew13to14##NewST:1.3.8  统计学的新功能（生存分析）}{p_end}
{p 9 12 2}{help whatsnew13to14##NewSVY:1.3.9  统计学的新功能（调查数据）}{p_end}
{phang2}{help whatsnew13to14##NewPSS:1.3.10  统计学的新功能（功效和样本量）}{p_end}
{phang2}{help whatsnew13to14##NewMI:1.3.11  统计学的新功能（多重插补）}{p_end}
{phang2}{help whatsnew13to14##NewMV:1.3.12  统计学的新功能（多元）}{p_end}
{phang2}{help whatsnew13to14##NewD:1.3.13  数据管理的新功能}{p_end}
{phang2}{help whatsnew13to14##NewFN:1.3.14  函数的新功能}{p_end}
{phang2}{help whatsnew13to14##NewG:1.3.15  图形的新功能}{p_end}
{phang2}{help whatsnew13to14##NewM:1.3.16  Mata的新功能}{p_end}
{phang2}{help whatsnew13to14##NewP:1.3.17  编程的新功能}{p_end}
{phang2}{help whatsnew13to14##NewGUI:1.3.18  Stata界面的新功能}{p_end}
{phang2}{help whatsnew13to14##NewMore:1.3.19  更多内容}{p_end}

{pstd}
本节旨在为之前版本的Stata用户提供帮助。如果您是Stata新手，可以直接跳到下面的 
{it:{help whatsnew13to14##NewMore:更多内容}}。

{pstd}
一如既往，我们提醒程序员务必要在您旧的do和ado文件顶部添加
{cmd:version 14}、{cmd:version} {cmd:13.1}或{cmd:version 12}等，
以确保这些文件继续按您预期的方式运行。您本应在编写时就这样做，但如果您没有，请现在回去做。

{pstd}
我们将逐项列出所有更改，但首先，这里是亮点。


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew13to14.sthlp>}