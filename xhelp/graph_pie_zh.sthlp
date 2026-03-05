{smcl}
{* *! version 1.1.18  16apr2019}{...}
{viewerdialog "graph pie" "dialog graph_pie"}{...}
{vieweralsosee "[G-2] graph pie" "mansection G-2 graphpie"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph" "help graph_zh"}{...}
{vieweralsosee "[G-2] graph bar" "help graph_bar_zh"}{...}
{viewerjumpto "Syntax" "graph_pie_zh##syntax"}{...}
{viewerjumpto "Menu" "graph_pie_zh##menu"}{...}
{viewerjumpto "Description" "graph_pie_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_pie_zh##linkspdf"}{...}
{viewerjumpto "Options" "graph_pie_zh##options"}{...}
{viewerjumpto "Remarks" "graph_pie_zh##remarks"}{...}
{viewerjumpto "References" "graph_pie_zh##references"}
{help graph_pie:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[G-2] graph pie} {hline 2}}饼图{p_end}
{p2col:}({mansection G-2 graphpie:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 6 2}
切片作为每个变量的总数或百分比

{p 8 23 2}
{cmdab:gr:aph} {cmd:pie} {varlist} {ifin}
[{it:{help graph pie##weight:weight}}]
[{cmd:,} {it:options}]

{p 4 6 2}
切片作为 {cmd:over()} 类别内的总数或百分比

{p 8 23 2}
{cmdab:gr:aph} {cmd:pie} {varname} {ifin}
[{it:{help graph pie##weight:weight}}]{cmd:,} 
{cmd:over(}{varname}{cmd:)} [{it:options}]

{p 4 6 2}
切片作为 {cmd:over()} 类别内的频率

{p 8 23 2}
{cmdab:gr:aph} {cmd:pie} {ifin} 
[{it:{help graph pie##weight:weight}}]{cmd:,} 
	{cmd:over(}{varname}{cmd:)} [{it:options}]


{marker pie_options}{...}
{synoptset 22 tabbed}{...}
{p2col: {it:options}}描述{p_end}
{p2line}
{p2coldent:* {cmd:over(}{varname}{cmd:)}}切片为
      {it:varname}的不同值{p_end}
{synopt: {cmdab:miss:ing}}不忽略 {varname} 的缺失值{p_end}
{synopt: {cmdab:allc:ategories}}包含数据集中所有类别{p_end}

{synopt: {cmd:cw}}缺失值的逐案处理{p_end}

{synopt: {cmdab:nocl:ockwise}}逆时针饼图{p_end}
{synopt: {cmdab:ang:le0(}{it:#}{cmd:)}}第一片切片的角度；默认为
       {cmd:angle(90)}{p_end}

{synopt: {cmd:sort}}按大小排序切片{p_end}
{synopt: {cmd:sort(}{it:varname}{cmd:)}}按 {it:varname} 排序切片{p_end}
{synopt: {cmdab:des:cending}}反转默认或指定的顺序{p_end}

{synopt: {cmdab:p:ie:(...)}}切片的外观，包括爆炸效果{p_end}
{synopt: {cmdab:pl:abel(...)}}要显示在切片上的标签{p_end}
{synopt: {cmdab:pt:ext:(...)}}要显示在饼图上的文本{p_end}
{synopt: {cmdab:i:ntensity(}[{cmd:*}]{it:#}{cmd:)}}切片的颜色强度
      {p_end}
{synopt: {cmdab:li:ne(}{it:{help line_options_zh}}{cmd:)}}切片的轮廓{p_end}
{p2col:{cmdab:pcyc:le:(}{it:#}{cmd:)}}切片样式在 {help pstyle_zh:{it:pstyle}s} 之前回收{p_end}

{synopt: {bf:{help legend_options_zh:legend(...)}}}解释切片的图例{p_end}
{synopt: {it:{help std_options_zh}}}标题，保存到磁盘{p_end}

{synopt: {help by_option_zh:{bf:by(}{it:varlist}{bf:, ...)}}}为子组重复绘制
      {p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}* {opt over(varname)} 在语法 2 和 3 中是必需的.{p_end}

{marker pie_subopts}{...}
{pstd}
{cmd:pie()} 选项的语法是

{pin}
{cmdab:p:ie:(}{c -(}{it:{help numlist_zh}}|{cmd:_all}{c )-}
[{cmd:,}
{it:pie_subopts}]{cmd:)}

{synoptset 22}{...}
{p2col : {it:pie_subopts}}描述{p_end}
{p2line}
{p2col : {cmd:explode}}按照 {it:大小}=3.8 爆炸切片{p_end}
{p2col : {cmd:explode(}{it:{help size_zh}}{cmd:)}}按照 {it:大小} 爆炸切片{p_end}
{p2col : {cmdab:c:olor(}{it:{help colorstyle_zh}}{cmd:)}}切片的颜色和透明度{p_end}
{p2line}

{marker plabel_subopts}{...}
{pstd}
{cmd:plabel()} 选项的语法是

{pin}
{cmdab:pl:abel:(}{c -(}{it:#}|{cmd:_all}{c )-}
{c -(}{cmd:sum}|{cmdab:per:cent}|{cmd:name}|{cmd:"}{it:text}{cmd:"}{c )-}
[{cmd:,} {it:plabel_subopts}]{cmd:)}

{p2col : {it:plabel_subopts}}描述{p_end}
{p2line}
{p2col : {cmdab:for:mat:(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}}用于 {cmd:sum} 或 {cmd:percent} 的显示格式{p_end}
{p2col : {cmd:gap(}{it:{help size_zh}}{cmd:)}}额外的径向距离{p_end}
{p2col : {it:{help textbox_options_zh}}}标签的外观{p_end}
{p2line}

{marker ptext_subopts}{...}
{pstd}
{cmd:ptext()} 选项的语法是

{pin}
{cmdab:pt:ext:(}{it:#_a}
{it:#_r}
{cmd:"}{it:text}{cmd:"}
[{cmd:"}{it:text}{cmd:"} ...]
[{it:#_a} {it:#_r} ...]
[{cmd:,} {it:ptext_subopts}]{cmd:)}

{p2col:{it:ptext_subopts}}描述{p_end}
{p2line}
{p2col:{it:{help textbox_options_zh}}}添加文本的外观{p_end}
{p2line}

{marker weight}{...}
{pstd}
允许使用 {cmd:aweight}s，{cmd:fweight}s 和 {cmd:pweight}s；参见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 饼图}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:pie} 绘制饼图。

{pstd}
{cmd:graph} {cmd:pie} 有三种操作模式。第一种对应于指定两个或两个以上的变量：

{phang2}
	{cmd:. graph pie div1_revenue div2_revenue div3_revenue}

{pstd}
绘制三个饼图，第一片对应变量 {cmd:div1_revenue} 的总和，第二片对应变量 {cmd:div2_revenue} 的总和，第三片对应变量 {cmd:div3_revenue} 的总和。

{pstd}
第二种操作模式对应于指定一个变量和 {cmd:over()} 选项：

	{cmd:. graph pie revenue, over(division)}

{pstd}
为变量 {cmd:division} 的每个值绘制饼图；第一片对应第一组的收入总和，第二片对应第二组的收入总和，依此类推。

{pstd}
第三种操作模式对应于指定 {cmd:over()} 而没有变量：

	{cmd:. graph pie, over(popgroup)}

{pstd}
为变量 {cmd:popgroup} 的每个值绘制饼图；切片对应于每组的观察数。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphpieQuickstart:快速开始}

        {mansection G-2 graphpieRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:over(}{varname}{cmd:)}
    指定一个与饼图切片对应的分类变量。
    {it:varname} 可以是字符串或数字。

{phang}
{cmd:missing}
    用于 {cmd:over()}；指定不忽略 {varname} 的缺失值。
    相反，应该为 {it:varname}=={cmd:.}， {it:varname}=={cmd:.a}，... 或
    {it:varname}=="" 形成单独的切片。

{phang}
{cmd:allcategories}
    指定保留 {cmd:over()} 变量的整个数据集中所有类别。当指定 {cmd:if} 或 {cmd:in} 而不指定 {cmd:allcategories} 时，图形完全排除指定子样本中不存在的 {cmd:over()} 变量的任何类别。如果采用 {cmd:allcategories} 选项，则那些在子样本中不存在的类别仍在图例中出现，并且绘制零大小的切片。如果在比较未包含所有 {cmd:over()} 变量的通用类别的子样本图表时，该行为将是方便的。该选项仅在指定 {cmd:if} 或 {cmd:in} 时起作用，或者如果变量中存在缺失值时。 {cmd:allcategories} 不能与 {cmd:by()} 一起使用。

{phang}
{cmd:cw}
    指定逐案删除，仅在未指定 {cmd:over()} 时使用。 {cmd:cw} 指定在计算总和时，忽略任何在 {it:varlist} 中包含缺失值的观察。默认情况下，计算每个变量的总和时会使用所有非缺失观察。

{phang}
{cmd:noclockwise}
和
{cmd:angle0(}{it:#}{cmd:)}
    指定切片在饼图中的方向。默认情况下从 12 点开始（称为 {cmd:angle(90)}）并顺时针绘制。

{pmore}
    {cmd:noclockwise} 导致切片逆时针排列。

{pmore}
    {cmd:angle0(}{it:#}{cmd:)} 指定第一片切片出现的角度。角度以度为单位，按通常的数学方式测量：从水平线逆时针测量。

{phang}
{cmd:sort},
{cmd:sort(}{varname}{cmd:)}, 和
{cmd:descending}
    指定切片的排序方式。默认情况下按照指定的顺序排列切片；见 {it:{help graph pie##remarks4:切片的排序方式}} 下面的 {it:备注}。

{pmore}
    {cmd:sort} 指定最小的切片优先，依次是下一个最大的，以此类推。见 {it:{help graph pie##remarks5:按大小排序切片}} 下面的 {it:备注}。

{pmore}
    {cmd:sort(}{it:varname}{cmd:)} 指定切片按 {it:varname} 的 （升序） 排序。见 {it:{help graph pie##remarks6:重新排序切片}} 下面的 {it:备注}。

{pmore}
    {cmd:descending}，可在指定与否 {cmd:sort} 或 {cmd:sort(}{it:varname}{cmd:)} 的情况下使用，反转顺序。

{phang}
{cmd:pie(}{c -(}{it:{help numlist_zh}}|{cmd:_all}{c )-}{cmd:,} {it:pie_subopts}{cmd:)}
    指定一个或多个切片的外观。
    此选项允许您“爆炸”（偏移）一个或多个饼图切片，并控制切片的颜色。示例包括

{phang2}
	    {cmd:. graph pie ..., ... pie(2, explode)}

{phang2}
	    {cmd:. graph pie ..., ... pie(2, explode color(red))}

{phang2}
	    {cmd:. graph pie ..., ... pie(2, explode color(red)) pie(5, explode)}

{pmore}
    {it:numlist} 指定切片；见 {it:{help numlist_zh}}。
    切片（在任何排序后）称为切片 1，切片 2，等。 {cmd:pie(1} ...{cmd:)} 将更改第一片切片的外观。
    {cmd:pie(2} ...{cmd:)} 将更改第二片切片的外观。
    {cmd:pie(1 2 3} ...{cmd:)} 将更改第一到第三片切片的外观，如 {cmd:pie(1/3} ...{cmd:)} 也将如此。 {cmd:pie()} 选项可以多次指定，以为不同切片指定不同的外观。您也可以指定 {cmd:pie(_all} ...{cmd:)} 为所有切片指定一个共同特征。

{pmore}
    {it:pie_subopts} 为 {cmd:explode}，
    {cmd:explode(}{it:size}{cmd:)}，和
    {cmd:color(}{it:colorstyle}{cmd:)}。

{pmore}
    {cmd:explode} 和 {cmd:explode(}{it:size}{cmd:)} 指定切片被偏移。指定 {cmd:explode} 相当于指定 {cmd:explode(3.8)}。
    {cmd:explode(}{it:size}{cmd:)} 指定按多少（以径向测量）偏移切片；见 {manhelpi size G-4}。

{pmore}
    {cmd:color(}{it:colorstyle}{cmd:)} 设置切片的颜色和透明度。见 {manhelpi colorstyle G-4} 的颜色选择列表。

{phang}
{cmdab:pl:abel:(}{c -(}{it:#}|{cmd:_all}{c )-}
{c -(}{cmd:sum}|{cmdab:per:cent}|{cmd:name}|{cmd:"}{it:text}{cmd:"}{c )-}{cmd:,} {it:plabel_subopts}{cmd:)}
    指定要显示在切片上的标签。切片可以用它们的总和、它们的总和百分比、它们的身份或您指定的文本进行标签化。默认情况下不显示标签。可以将 {cmd:plabel()} 的语法视为

		     {it:哪个              什么                   如何}
		    {hline 7}   {hline 25}   {hline 14}
	    {cmd:plabel(} {c -(}{it:#}|{cmd:_all}{c )-}  {c -(}{cmd:sum}|{cmd:percent}|{cmd:name}|{cmd:"}{it:text}{cmd:"}{c )-} {cmd:,} {it:plabel_subopts} {cmd:)}
		    {hline 3}{c TT}{hline 3}   {hline 12}{c TT}{hline 12}   {hline 7}{c TT}{hline 6}
		       {c |}                  {c |}                      {c |}
	 {hline 14}{c BT}{hline 5}             {c |}            {hline 10}{c BT}{hline 13}
	 要为哪片切片标签             {c |}            标签外观的方式
					  {c |}
			      {hline 12}{c BT}{hline 16}
			      标签切片内容：
				{cmd:sum}       变量的总和
				{cmd:percent}   总和的百分比
				{cmd:name}      身份
				{cmd:"}{it:text}{cmd:"}    指定的文本

{pmore}
    因此您可能会输入

	    {cmd:. graph pie} ...{cmd:,} ... {cmd:plabel(_all sum)}

	    {cmd:. graph pie} ...{cmd:,} ... {cmd:plabel(_all percent)}

	    {cmd:. graph pie} ...{cmd:,} ... {cmd:plabel(1 "新拨款")}

{pmore}
    {cmd:plabel()} 选项可以多次出现，因此您也可以输入

	    {cmd:. graph pie} ...{cmd:,} ... {cmd:plabel(1 "新拨款") plabel(2 "旧")} 

{pmore}
    如果您选择用身份标签化切片，您可能还想抑制图例：

	    {cmd:. graph pie} ...{cmd:,} ... {cmd:plabel(_all name) legend(off)}

{pmore}
    {it:plabel_subopts} 为 {cmd:format(%}{it:fmt}{cmd:)},
    {cmd:gap(}{it:size}{cmd:)}, 和 {it:textbox_options}。

{pmore}
    {cmd:format(%}{it:fmt}{cmd:)} 指定在选择 {cmd:sum} 或 {cmd:percent} 时使用的显示格式；
    见 {manhelp format D}。

{pmore}
    {cmd:gap(}{it:size}{cmd:)}
    指定文本标签的常规位置从原点的径向距离进行调整。
    默认值为 {cmd:gap(0)}。
    {cmd:gap(}{it:#}{cmd:)}, {it:#<0}, 将文本向内移动。
    {cmd:gap(}{it:#}{cmd:)}, {it:#>0}, 将文本向外移动。
    见 {manhelpi size G-4}。

{pmore}
    {it:textbox_options} 指定文本的大小、颜色等；见 
    {manhelpi textbox_options G-3}。

{phang}
{cmd:ptext(}{it:#_a}
{it:#_r}
{cmd:"}{it:text}{cmd:"}
[{cmd:"}{it:text}{cmd:"} ...]
[{it:#_a} {it:#_r} ...]{cmd:,} {it:ptext_subopts}{cmd:)}
    指定要显示在饼图上的额外文本。文本的位置由极坐标 {it:#_a} 和 {it:#_r} 指定。 {it:#_a} 指定角度（以度为单位）， {it:#_r} 指定距离原点的距离；见 {manhelpi size G-4}。

{phang}
{cmd:intensity(}{it:#}{cmd:)}
和
{cmd:intensity(*}{it:#}{cmd:)}
    指定填充切片的颜色强度。
    {cmd:intensity(}{it:#}{cmd:)} 指定强度，
    {cmd:intensity(*}{it:#}{cmd:)} 指定相对于默认值的强度。

{pmore}
    指定 {cmd:intensity(*}{it:#}{cmd:)}, {it:#}<1，来减弱内部颜色，并指定 {cmd:intensity(*}{it:#}{cmd:)}, {it:#}>1,
    来增强它。

{pmore}
    如果您不希望任何切片被填充，请指定 {cmd:intensity(0)}。

{phang}
{cmd:line(}{it:line_options}{cmd:)}
    指定用于轮廓切片的线的外观。
    见 {manhelpi line_options G-3}，但忽略选项
    {cmd:lpattern()}，该选项不允许用于饼图。

{phang}
{cmd:pcycle(}{it:#}{cmd:)}
    指定在下一片切片开始时多少切片将绘制。{help pstyle_zh:{it:pstyle}} 的切片在第一个切片的 {it:pstyle} 上再次开始 -- {cmd:p1pie}（后续切片使用 
    {cmd:p2pie}, {cmd:p3pie}，等等）。换句话说：{it:#} 指定当指定超过 {it:#} 切片时切片外观被回收的速度。大多数 {help schemes_zh} 的默认值为 {cmd:pcycle(15)}。

{phang}
{cmd:legend()}
    允许您控制图例。
    见 {manhelpi legend_options G-3}。

{phang}
{it:std_options}
    允许您添加标题，将图形保存到磁盘等；见
    {manhelpi std_options G-3}。

{phang}
{cmd:by(}{it:varlist}{cmd:,} ...{cmd:)}
    在一个图形中绘制单独的饼图；见 
    {manhelpi by_option G-3} 以及下方 {it:备注} 中的 {it:{help graph pie##remarks7:与 by() 一起使用}}。


{marker remarks}{...}
{title:备注}

{pstd}
备注如下所述：

	{help graph pie##remarks1:典型用法}
	{help graph pie##remarks2:数据被求和}
	{help graph pie##remarks3:数据可能是长而非宽格式}
	{help graph pie##remarks4:切片的排序方式}
	{help graph pie##remarks5:按大小排序切片}
	{help graph pie##remarks6:重新排序切片}
	{help graph pie##remarks7:与 by() 一起使用}
	{help graph pie##video:视频示例}
	{help graph pie##remarks8:历史}


{marker remarks1}{...}
{title:典型用法}

{pstd}
我们得知 XYZ 公司在销售上花费了 1200 万美元，市场营销花费 1400 万美元，研发花费 200 万美元，开发花费 800 万美元：

	{cmd:. input sales marketing research development}

	     {txt}    sales  marketing   research  develop~t
	  1{cmd}. 12 14 2 8
	{txt}  2{cmd}. end{txt}

	{cmd}. label var sales "销售"{txt}

	{cmd}. label var market "市场营销"{txt}

	{cmd}. label var research "研发"{txt}

	{cmd}. label var develop  "开发"{txt}

	{cmd:. graph pie sales marketing research development,}
		{cmd:plabel(_all name, size(*1.5) color(white))}{col 66}{it:(注 1)}
		{cmd:legend(off)}{col 66}{it:(注 2)}
		{cmd:plotregion(lstyle(none))}{col 66}{it:(注 3)}
		{cmd:title("支出，XYZ 公司")}
		{cmd:subtitle("2002")}
		{cmd:note("来源：2002 财务报告（虚构数据）")}
	  {it:({stata "gr_example2 pie1":点击运行})}
{* graph grpie1}{...}

{pstd}
注释：

{phang2}
1.  我们指定了 {cmd:plabel(_all} {cmd:name)} 使部门名称出现在切片上。我们指定了 {cmd:plabel()}'s 文本框选项 {cmd:size(*1.5)}
    将文本放大 50%。
    我们指定了 {cmd:plabel()}'s 文本框选项 {cmd:color(white)} 使文本变为白色。
    请参见 {manhelpi textbox_options G-3}。

{phang2}
2.  我们指定了图例选项 {cmd:legend(off)} 防止在图形底部的图例中重复部门名称；
    请参见 {manhelpi legend_options G-3}。

{phang2}
3.  我们指定了区域选项 {cmd:plotregion(lstyle(none))} 避免在图形区域周围绘制边框；
    请参见 {manhelpi region_options G-3}。


{marker remarks2}{...}
{title:数据被求和}

{pstd}
与上述汇总数据不同，我们有

	{cmd:. list}
	     {c TLC}{hline 5}{c -}{hline 7}{c -}{hline 11}{c -}{hline 10}{c -}{hline 13}{c TRC}
	     {c |} {res}qtr   sales   marketing   research   development {txt}{c |}
	     {c LT}{hline 5}{c -}{hline 7}{c -}{hline 11}{c -}{hline 10}{c -}{hline 13}{c RT}
	  1. {c |} {res}  1       3         4.5         .3             1 {txt}{c |}
	  2. {c |} {res}  2       4           3         .5             2 {txt}{c |}
	  3. {c |} {res}  3       3           4         .6             2 {txt}{c |}
	  4. {c |} {res}  4       2         2.5         .6             3 {txt}{c |}
	     {c BLC}{hline 5}{c -}{hline 7}{c -}{hline 11}{c -}{hline 10}{c -}{hline 13}{c BRC}{txt}

{pstd}
这些数据的总和与前一部分的总和相同。相同的 {cmd:graph} {cmd:pie} 命令

{phang2}
	{cmd:. graph pie sales marketing research development,} ...

{pstd}
将得到相同的图表。


{marker remarks3}{...}
{title:数据可能是长而非宽格式}

{pstd}
与宽形式的季度数据不同，我们得到了长形式的数据：

	{cmd}. list, sepby(qtr)
	{txt}
	     {c TLC}{hline 5}{c -}{hline 13}{c -}{hline 6}{c TRC}
	     {c |} {res}qtr      division   cost {txt}{c |}
	     {c LT}{hline 5}{c -}{hline 13}{c -}{hline 6}{c RT}
	  1. {c |} {res}  1   开发         1 {txt}{c |}
	  2. {c |} {res}  1     市场营销   4.5 {txt}{c |}
	  3. {c |} {res}  1      研发      .3 {txt}{c |}
	  4. {c |} {res}  1         销售      3 {txt}{c |}
	     {c LT}{hline 5}{c -}{hline 13}{c -}{hline 6}{c RT}
	  5. {c |} {res}  2   开发         2 {txt}{c |}
	  6. {c |} {res}  2     市场营销    3 {txt}{c |}
	  7. {c |} {res}  2      研发      .5 {txt}{c |}
	  8. {c |} {res}  2         销售      4 {txt}{c |}
	     {c LT}{hline 5}{c -}{hline 13}{c -}{hline 6}{c RT}
	  9. {c |} {res}  3   开发         2 {txt}{c |}
	 10. {c |} {res}  3     市场营销    4 {txt}{c |}
	 11. {c |} {res}  3      研发      .6 {txt}{c |}
	 12. {c |} {res}  3         销售     3 {txt}{c |}
	     {c LT}{hline 5}{c -}{hline 13}{c -}{hline 6}{c RT}
	 13. {c |} {res}  4   开发         3 {txt}{c |}
	 14. {c |} {res}  4     市场营销   2.5 {txt}{c |}
	 15. {c |} {res}  4      研发      .6 {txt}{c |}
	 16. {c |} {res}  4         销售      2 {txt}{c |}
	     {c BLC}{hline 5}{c -}{hline 13}{c -}{hline 6}{c BRC}{txt}


{pstd}
在这种情况下，而不是输入

{phang2}
	{cmd:. graph pie sales marketing research development,} ...

{pstd}
我们输入

	{cmd:. graph pie cost, over(division)} ...

{pstd}
例如，

	{cmd:. graph pie cost, over(division),}
		{cmd:plabel(_all name, size(*1.5) color(white))}
		{cmd:legend(off)}
		{cmd:plotregion(lstyle(none))}
		{cmd:title("支出，XYZ 公司")}
		{cmd:subtitle("2002")}
		{cmd:note("来源：2002 财务报告（虚构数据）")}
	  {it:({stata "gr_example2 pie2":点击运行})}
{* graph grpie2}{...}

{pstd}
这与之前绘制的饼图相同，唯一不同的是部门呈现的顺序。


{marker remarks4}{...}
{title:切片的排序方式}

{pstd}
当我们输入

{phang2}
	{cmd:. graph pie sales marketing research development,} ...

{pstd}
切片按照我们指定的顺序显示。当我们输入

	{cmd:. graph pie cost, over(division)} ...

{pstd}
切片按照变量 division 暗含的顺序显示。
如果 division 为数字，切片按 division 的升序显示。如果 division 为字符串，切片按字母顺序排列（除了所有大写字母出现在小写字母之前）。


{marker remarks5}{...}
{title:按大小排序切片}

{pstd}
无论我们输入

{phang2}
	{cmd:. graph pie sales marketing research development,} ...

{pstd}
或

	{cmd:. graph pie cost, over(division)} ...

{pstd}
如果我们添加 {cmd:sort} 选项，切片将按照从小到大的顺序排列：

{phang2}
	{cmd:. graph pie sales marketing research development, sort} ...

	{cmd:. graph pie cost, over(division) sort} ...

{pstd}
如果我们还指定了 {cmd:descending} 选项，最大切片将首先显示：

{phang2}
	{cmd:. graph pie sales marketing research development, sort descending} ...

{phang2}
	{cmd:. graph pie cost, over(division) sort descending} ...


{marker remarks6}{...}
{title:重新排序切片}

{pstd}
如果我们希望强制特定顺序，则如果我们输入

{phang2}
	{cmd:. graph pie sales marketing research development,} ...

{pstd}
按所需的顺序指定变量。如果我们输入

	{cmd:. graph pie cost, over(division)} ...

{pstd}
然后创建一个与我们希望部门出现顺序一一对应的数值变量。例如，我们可以输入

	{cmd:. generate order     = 1 if division=="销售"}
	{cmd:. replace  order = 2 if division=="市场营销"}
	{cmd:. replace  order = 3 if division=="研发"}
	{cmd:. replace  order = 4 if division=="开发"}

{pstd}
然后输入

{phang2}
	{cmd:. graph pie cost, over(division) sort(order)} ...


{marker remarks7}{...}
{title:与 by() 一起使用}

{pstd}
我们有两年的 XYZ 公司数据：

	{cmd}. list
	{txt}
	     {c TLC}{hline 6}{c -}{hline 7}{c -}{hline 11}{c -}{hline 10}{c -}{hline 13}{c TRC}
	     {c |} {res}year   sales   marketing   research   development {txt}{c |}
	     {c LT}{hline 6}{c -}{hline 7}{c -}{hline 11}{c -}{hline 10}{c -}{hline 13}{c RT}
	  1. {c |} {res}2002      12          14          2             8 {txt}{c |}
	  2. {c |} {res}2003      15        17.5        8.5            10 {txt}{c |}
	     {c BLC}{hline 6}{c -}{hline 7}{c -}{hline 11}{c -}{hline 10}{c -}{hline 13}{c BRC}{txt}

	{cmd:. graph pie sales marketing research development,}
		{cmd:plabel(_all name, size(*1.5) color(white))}
		{cmd:by(year,}
			{cmd:legend(off)}
			{cmd:title("支出，XYZ 公司")}
			{cmd:note("来源：2002 财务报告（虚构数据）")}
		{cmd:)}
	  {it:({stata "gr_example2 pie3":点击运行})}
{* graph grpie3}{...}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=T_skwxG4sTk":Stata中的饼图}


{* index histories}{...}
{* index Playfair, William}{...}
{* index Beniger and Robyn 1978}{...}
{* index Funkhouser 1937}{...}
{* index Tufte 1983}{...}
{marker remarks8}{...}
{title:历史}

{pstd}
第一个饼图归功于
{help graph pie##P1801:威廉·普莱费尔（1801）}。 
参见 {help graph pie##BR1978:本尼杰尔和罗宾（1978）}，
{help graph pie##F1937:芬克豪瑟（1937, 283-285）}，或
{help graph pie##T2001:图夫特（2001, 44-45）}
以获得更多历史细节。


{marker references}{...}
{title:参考文献}

{marker BR1978}{...}
{phang}
Beniger, J. R., 和 D. L. Robyn. 1978.
统计中的定量图形：简要历史.
{it:美国统计学家} 32: 1-11.

{marker F1937}{...}
{phang}
Funkhouser, H. G. 1937. 
统计数据的图形表示法的历史发展.
{it:奥西里斯} 3: 269-404.

{marker P1801}{...}
{phang}
Playfair, W. 1801.
{it:统计简报：以一种全新的原则，展示}
{it:欧洲各国和王国的资源，附录中添加}
{it:对印度的一样展示。}
伦敦：Wallis。

{marker T2001}{...}
{phang}
Tufte, E. R. 2001.
{it:定量信息的视觉展示}. 第二版.
康涅狄格州切斯特：图形出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_pie.sthlp>}