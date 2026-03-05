{smcl}
{* *! version 1.1.0  22nov2016}{...}
{vieweralsosee "[G-2] graph7" "help graph7_zh"}{...}
{vieweralsosee "[G-2] graph" "help graph_zh"}{...}
{viewerjumpto "低级图形" "gph_zh##low_level"}{...}
{viewerjumpto "描述" "gph_zh##description"}
{help gph:English Version}
{hline}{...}
{title:过时的命令}

{p 4 4 2}
本帮助文件记录了 Stata 的 {hi:old} 版本 {cmd:graph} 命令。
请参见 {manhelp graph G-2} 获取现代版本。

{p 4 4 2}
{cmd:gph} 不再是 Stata 的一个命令。不过，Stata 仍然会在版本控制下运行
{cmd:gph} 每当 {cmd:gph} 被调用时（见 {manhelp version P}）。

{marker low_level}{...}
{title:低级图形}

{p 4 4 2}
{cmd:gph} 是一个用于构建图形的程序员命令。
在下面的图示中，{it:V} 代表 {it:varname}。

{p 8 30 2}{cmd:version 7: gph open} {space 1} [{cmd:,} {cmd:saving(}{it:filename}{cmd:)}
{cmdab:xsiz:e:(}{it:#}{cmd:)} {cmdab:ysiz:e:(}{it:#}{cmd:)}]

	{cmd:version 7: gph close}

{p 8 30 2}{cmd:version 7: gph clear}{space 2}{it:#r1 #c1 #r2 #c2}

{p 8 30 2}{cmd:version 7: gph pen} {space 2} {it:#}

{p 8 30 2}{cmd:version 7: gph text} {space 1} {it:#r #c #rotation #alignment text}

{p 8 30 2}{cmd:version 7: gph font} {space 1} {it:#delta_r #delta_c}

{p 8 30 2}{cmd:version 7: gph vtext}{space 2}{it:Vr Vc V_str}
[{cmd:if} {it:exp}] [{cmd:in} {it:range}]

{p 8 30 2}{cmd:version 7: gph line} {space 1} {it:#r1 #c1 #r2 #c2}

{p 8 30 2}{cmd:version 7: gph vline}{space 2}{it:Vr Vc}
[{cmd:if} {it:exp}] [{cmd:in} {it:range}]

{p 8 30 2}{cmd:version 7: gph vpoly}{space 2}{it:Vr1 Vc1  Vr2 Vc2 ... Vrp Vcp}
[{cmd:if} {it:exp}] [{cmd:in} {it:range}]

{p 8 30 2}{cmd:version 7: gph box} {space 2} {it:#r1 #c1 #r2 #c2 #shade}

{p 8 30 2}{cmd:version 7: gph point}{space 2}{it:#r #c #delta_c #symbol}

{p 8 30 2}{cmd:version 7: gph vpoint} {it:Vr Vc} [{it:Vdelta_c Vsymbol}]
[{cmd:if} {it:exp}] [{cmd:in} {it:range}]
[{cmd:,} {cmd:size(}{it:#delta_c}{cmd:)} {cmd:symbol(}{it:#symbol}{cmd:)} ]

{p 8 30 2}{cmd:version 7: gph arc} {space 2} {it:#r #c #delta_c #phi1 #phi2 #shade}

{p 8 30 2}{cmdab:gr:aph} {it:...} [{cmd:,}
{cmd:bbox(}{it:bounding_box}{cmd:)} {it:...}]


{p 4 4 2}图形屏幕为

{center:(r_min,c_min)   (r_min,c_max)}
{center:(0,0)               (0,32000)}
{center:  {c TLC}{hline 23}{c TRC}  }
{center:  {c |}{space 23}{c |}  }
{center:  {c |}{space 23}{c |}  }
{center:  {c |}{space 23}{c |}  }
{center:  {c |}{space 23}{c |}  }
{center:  {c |}{space 23}{c |}  }
{center:  {c BLC}{hline 23}{c BRC}  }
{center:(23063,0)       (23063,32000)}
{center:(r_max,c_min)   (r_max,c_max)}


{p 4 4 2}
一个 {it:bounding_box} 被定义为 7 个以逗号分隔的整数

{p 8 8 2}{it:#}{cmd:,} {it:#}{cmd:,} {it:#}{cmd:,} {it:#}{cmd:,}
{it:#}{cmd:,} {it:#}{cmd:,} {it:#}

{p 4 4 2}其解释为

{p 8 8 2}r_top,c_lft, r_bot,r_rgt, 文本高度, 文本宽度, 旋转角度


{p 4 4 2}
一个映射被定义为 (y_min,y_max,x_min,x_max,a_y,b_y,a_x,b_x)，
使得值 (y,x) 被映射到屏幕坐标 (r,c) 通过

{center:r = a_y*y + b_y    如果 y_min <= y <= y_max}
{center:c = a_x*x + b_x    如果 x_min <= x <= x_max}


    旋转 {it:#} 的值为
	    {cmd:0}  水平
	    {cmd:1}  垂直

    对齐 {it:#} 的值为
	   {cmd:-1}  左对齐
	    {cmd:0}  居中
	    {cmd:1}  右对齐

{p 4 4 2}
{it:#} 的文本大小建议为
{it:#delta_r}/{it:#delta_c} = 2。推荐的文本大小为
{it:#delta_r}={cmd:923} 和 {it:#delta_c}={cmd:444}。

    符号 {it:#} 的值为
	    {cmd:0}  点
	    {cmd:1}  大圆
	    {cmd:2}  方形
	    {cmd:3}  三角形
	    {cmd:4}  小圆
	    {cmd:5}  菱形
	    {cmd:6}  加号
	    {cmd:7}  x
	    {cmd:8}  箭头
	    {cmd:9}  尖头箭头
	   {cmd:10}  管道
	   {cmd:11}  v

{p 4 4 2}
{it:#delta_c} 的大小参数越大，符号越大。
推荐的 {it:#delta_c}={cmd:275}。

{p 4 4 2}
{it:#} 的阴影值为整数 {cmd:0} 到 {cmd:4}，其中 4 是最暗的阴影。

{p 4 4 2}
{it:#} 的角度以 {cmd:0} 到 {cmd:32767} 为测量，顺时针方向。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:gph} 为程序员提供访问 Stata 低级图形程序的功能。通过这些功能，可以编程几乎任何图形。

{p 4 4 2}
此外，高级 {cmd:graph} 命令有选项 {cmd:bbox(}{it:bounding_box}{cmd:)}，
指示 {cmd:graph} 在指定的屏幕部分放置其图形输出。因此，程序员可以将任何高级 {cmd:graph} 命令用作子程序。

{p 4 4 2}
{cmd:gph} 命令只能出现在 {cmd:program define} 内；{cmd:gph}
命令不能被交互输入。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gph.sthlp>}