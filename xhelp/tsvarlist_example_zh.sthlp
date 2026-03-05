{smcl}
{* *! version 1.0.4  11feb2011}{...}
{* 该帮助文件由 _tsdepvars.idlg 调用}{...}
{vieweralsosee "tsvarlist" "help tsvarlist_zh"}
{help tsvarlist_example:English Version}
{hline}{...}
{title:时间序列变量列表}

{pstd}
该列表中的变量可以进行时间序列操作，这意味着对于变量 {cmd:income}

{center:{c TLC}{hline 13}{c TT}{hline 37}{c TRC}}
{center:{c |}   输入    {c |}  意思是{space 30}{c |}}
{center:{c LT}{hline 13}{c +}{hline 37}{c RT}}
{center:{c |}   {cmd:L.income}  {c |}  {cmd:income} 的第一滞后{space 16}{c |}}
{center:{c |}  {cmd:L3.income}  {c |}  {cmd:income} 的第三滞后{space 16}{c |}}
{center:{c |}   {cmd:D.income}  {c |}  {cmd:income} 的第一差分{space 9}{c |}}
{center:{c |}  {cmd:D2.income}  {c |}  {cmd:income} 的第二差分{space 8}{c |}}
{center:{c |}   {cmd:F.income}  {c |}  {cmd:income} 的第一领先{space 15}{c |}}
{center:{c |}  {cmd:F2.income}  {c |}  {cmd:income} 的第二领先{space 14}{c |}}
{center:{c |} {cmd:S12.income}  {c |}  12期季节差分， {c |}}
{center:{c |}{space 13}{c |}      例如 ({cmd:income - L12.income})     {c |}}
{center:{c BLC}{hline 13}{c BT}{hline 37}{c BRC}}

{pstd}
一个方便的表示法是

	    {cmd:D2.(x y z)}

{pstd}
这意味着 {cmd:D2.x D2.y D2.z}，或者每个括号内变量的第二差分。这个方便的表示法可以与所有时间序列运算符一起使用。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tsvarlist_example.sthlp>}