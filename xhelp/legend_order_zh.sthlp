{smcl}
{* *! version 1.1.2  11feb2011}{...}
{* 此帮助文件由一个或多个图形对话框调用}{...}
{vieweralsosee "[G-3] legend_options" "help legend_options_zh"}
{help legend_order:English Version}
{hline}{...}
{title:标签（用于图例选项卡）}

{pstd}您在“标签”编辑字段中输入 {it:orderinfo}。 {it:orderinfo} 可以是

{pin3}
{it:#} "{it:text}" {it:#} "{it:text}" ... {space 5} 或 {space 5} {it:#} {it:#} ...

{pstd}
{it:orderinfo} 指定了要在图例中出现的键、它们应有的标签以及它们出现的顺序。

{phang}
{it:#} "{it:text}" {it:#} "{it:text}" ... 用于覆盖默认标签。

{pin3}
{cmd:1 "A" 2 "B" 3 "C"}

{pmore}
将指定键 1 首先出现，标签为 A，接着键 2 标签为 B，最后键 3 标签为 C。

{phang}
{it:#} {it:#} ... 在不改变默认文本的情况下更改键的顺序。

{pin3}
{cmd:2 1 3}

{pmore}
表示首先出现键 2，然后是键 1，最后是键 3。如果有四个键，则第四个键将被抑制。

{pstd}
一个短横线表示要在图例中插入文本。例如，

{pin3}
{cmd:1 2 - "}{it:text}{cmd:"} {cmd:3}

{pstd}
指定键 1 首先出现，接着键 2，然后是文本 {it:text}，最后是键 3。设想默认的键为

		{c TLC}{hline 19}{c TRC}
		{c |}  o   观察值     {c |}
		{c |} {hline 3}  线性       {c |}
		{c |} ---  二次      {c |}
		{c BLC}{hline 19}{c BRC}

{pstd}
指定 {cmd:1 - "Predicted:" 2 3} 将产生

		{c TLC}{hline 19}{c TRC}
		{c |}  o   观察值     {c |}
		{c |}      预测：     {c |}
		{c |} {hline 3}  线性       {c |}
		{c |} ---  二次      {c |}
		{c BLC}{hline 19}{c BRC}

{pstd}
而指定 {cmd:1 - " " "Predicted:" 2 3} 将产生

		{c TLC}{hline 19}{c TRC}
		{c |}  o   观察值     {c |}
		{c |}                   {c |}
		{c |}      预测：     {c |}
		{c |} {hline 3}  线性       {c |}
		{c |} ---  二次      {c |}
		{c BLC}{hline 19}{c BRC}

{pstd}
请注意文本插入的第一行文本指定为空白：我们输入了 {cmd:" "} 而不是 {cmd:""}。 {cmd:""} 将不会插入任何内容。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <legend_order.sthlp>}