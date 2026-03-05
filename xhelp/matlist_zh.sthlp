{smcl}
{* *! version 1.2.6  19oct2017}{...}
{vieweralsosee "[P] matlist" "mansection P matlist"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "[P] matrix utility" "help matrix_utility_zh"}{...}
{viewerjumpto "语法" "matlist_zh##syntax"}{...}
{viewerjumpto "描述" "matlist_zh##description"}{...}
{viewerjumpto "PDF文档链接" "matlist_zh##linkspdf"}{...}
{viewerjumpto "样式选项" "matlist_zh##options_style"}{...}
{viewerjumpto "通用选项" "matlist_zh##options_general"}{...}
{viewerjumpto "第二种语法的必需选项" "matlist_zh##required"}{...}
{viewerjumpto "示例" "matlist_zh##examples"}
{help matlist:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[P] matlist} {hline 2}}显示矩阵并控制其格式{p_end}
{p2col:}({mansection P matlist:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    每列相同的显示格式

{p 8 16 2}{cmd:matlist} {it:matrix_exp}
[{cmd:,} {it:{help matlist##style_options_table:样式选项}}
{it:{help matlist##general_options_table:通用选项}}]


    每列有自己的显示格式

{p 8 16 2}{cmd:matlist} {it:matrix_exp} {cmd:,}
{opth csp:ec(matlist##cspec:cspec)}
{opth rsp:ec(matlist##rspec:rspec)}
[{it:{help matlist##general_options_table:通用选项}}]


{p2colset 5 28 30 2}{...}
{p2col:{marker style_options_table}{it:样式选项}}描述{p_end}
{p2line}
{p2col:{opth lin:es(matlist##lstyle:lstyle)}}线条样式；默认在标题/标签和数据之间{p_end}
{p2col:{opth bor:der(matlist##bspec:bspec)}}边框样式；默认无{p_end}
{p2col:{opt bor:der}}与 {cmd:border(all)} 相同{p_end}
{p2col:{opth for:mat(%fmt)}}显示格式；默认是 {cmd:format(%9.0g)}{p_end}
{p2col:{opt tw:idth(#)}}行标签宽度；默认是 {cmd:twidth(12)}{p_end}
{p2col:{opt left(#)}}表格左侧缩进；默认是 {cmd:left(0)}{p_end}
{p2col:{opt right(#)}}表格右侧缩进；默认是 {cmd:right(0)}{p_end}
{p2line}

{p2col:{marker lstyle}{it:lstyle}}线条绘制方式...{p_end}
{p2line}
{p2col:{opt o:neline}}在标题/标签和数据之间；默认无公式{p_end}
{p2col:{opt eq}}在公式之间；当存在公式时默认情况{p_end}
{p2col:{opt rowt:otal}}与 {cmd:oneline} 相同，且在最后一行之前有一条线{p_end}
{p2col:{opt colt:otal}}与 {cmd:oneline} 相同，且在最后一列之前有一条线{p_end}
{p2col:{opt rct:otal}}与 {cmd:oneline} 相同，且在最后一行和最后一列之前有一条线{p_end}
{p2col:{opt r:ows}}在所有行之间；在行标签和数据之间{p_end}
{p2col:{opt co:lumns}}在所有列之间；在列标题和数据之间{p_end}
{p2col:{opt ce:lls}}在所有行和列之间{p_end}
{p2col:{opt n:one}}抑制所有线条{p_end}
{p2line}

{p2col:{marker bspec}{it:bspec}}边框线绘制方式...{p_end}
{p2line}
{p2col:{opt n:one}}不绘制边框线；默认{p_end}
{p2col:{opt all}}在四个边的外部绘制{p_end}
{p2col:{opt row:s}}在顶部和底部绘制{p_end}
{p2col:{opt col:umns}}在左右两侧绘制{p_end}
{p2col:{opt l:eft}}在左侧绘制{p_end}
{p2col:{opt r:ight}}在右侧绘制{p_end}
{p2col:{opt t:op}}在顶部绘制{p_end}
{p2col:{opt b:ottom}}在底部绘制{p_end}
{p2line}

{p2col:{marker general_options_table}{it:通用选项}}描述{p_end}
{p2line}
{p2col:{opth tit:le(strings:string)}}标题显示在表格上方{p_end}
{p2col:{opt tind:ent(#)}}标题缩进 {it:#} 空格{p_end}
{p2col:{opth row:title(strings:string)}}在行名称上方显示的标题{p_end}
{p2col:{cmdab:nam:es:(}{cmdab:r:ows}{cmd:)}}显示行名称{p_end}
{p2col:{cmdab:nam:es:(}{cmdab:c:olumns}{cmd:)}}显示列名称{p_end}
{p2col:{cmdab:nam:es:(}{cmdab:a:ll}{cmd:)}}显示行和列名称；默认{p_end}
{p2col:{cmdab:nam:es:(}{cmdab:n:one}{cmd:)}}抑制行和列名称{p_end}
{p2col:{opt nonam:es}}与 {cmd:names(none)} 相同{p_end}
{p2col:{opth showcoleq:(matlist##ceq:ceq)}}指定如何显示列方程名称{p_end}
{p2col:{opt roweqonly}}仅显示行方程名称{p_end}
{p2col:{opt coleqonly}}仅显示列方程名称{p_end}
{p2col:{cmd:colorcoleq(}{cmdab:t:xt}|{cmdab:r:es}{cmd:)}}显示列方程名称的模式（颜色）；默认是 {cmd:txt}{p_end}
{p2col:{cmd:keepcoleq}}将相同方程的列保持在一起{p_end}
{p2col:{cmd:aligncolnames(}{cmdab:r:align}{cmd:)}}右对齐列名称{p_end}
{p2col:{cmd:aligncolnames(}{cmdab:l:align}{cmd:)}}左对齐列名称{p_end}
{p2col:{cmd:aligncolnames(}{cmdab:c:enter}{cmd:)}}居中列名称{p_end}
{p2col:{opt nob:lank}}在表格之前抑制空白行{p_end}
{p2col:{opt noha:lf}}即使对称也显示完整矩阵{p_end}
{p2col:{opt nodotz}}将缺失值 {cmd:.z} 显示为空白{p_end}
{p2col:{opt under:score}}在行和列名称中将下划线显示为空白{p_end}
{p2col:{opt linesize(#)}}覆盖 {cmd:linesize} 设置{p_end}
{p2line}

{p2col:{marker ceq}{it:ceq}}方程名称的显示方式{p_end}
{p2line}
{p2col:{opt f:irst}}仅在第一列上方；默认{p_end}
{p2col:{opt e:ach}}在每一列上方{p_end}
{p2col:{opt c:ombined}}在所有关联列上方居中{p_end}
{p2col:{opt l:combined}}在所有关联列上方左对齐{p_end}
{p2col:{opt r:combined}}在所有关联列上方右对齐{p_end}
{p2line}


{marker description}{...}
{title:描述}

{pstd}
{cmd:matlist} 显示一个矩阵，允许您控制显示格式。
行和列名称用作行和列标题。方程名称
以类似于估计结果的方式显示。

{pstd}
列可以具有不同的格式，并且可以在每列之间显示线条。
您无法以不同的方式格式化矩阵的行。

{pstd}
{cmd:matlist} 是 {cmd:matrix list} 命令的扩展
（参见 {helpb matrix utility:[P] matrix utility}）。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P matlistRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options_style}{...}
{title:样式选项}

{phang}
{opt lines(lstyle)}
指定在 {it:matrix_exp} 的显示中绘制线条的位置。允许以下值的 {it:lstyle}：

{phang2}{opt oneline}
在行和列标题与数值条目之间绘制线条。
如果 {it:matrix_exp} 没有方程名称，这是默认情况。

{phang2}{opt eq}
在方程之间绘制水平和垂直线条。
如果 {it:matrix_exp} 有行或列方程名称，这是默认情况。

{phang2}{opt rowtotal}
与 {cmd:oneline} 相同，并在最后一行（总计）与其他行之间有一条线。

{phang2}{opt coltotal}
与 {cmd:oneline} 相同，并在最后一列（总计）与其他列之间有一条线。

{phang2}{opt rctotal}
与 {cmd:oneline} 相同，并在最后一行和最后一列（总计）与其他行和列之间有线。

{phang2}{opt rows}
在所有行之间绘制水平线，并在行标签列与第一列数值之间绘制一条垂直线。

{phang2}{opt columns}
在所有列之间绘制垂直线，并在标题和第一行数值之间绘制一条水平线。

{phang2}{opt cells}
在所有行和列之间绘制水平和垂直线。

{phang2}{opt none} 抑制所有水平和垂直线。

{phang}{cmd:border}[{cmd:(}{it:bspec}{cmd:)}]
指定在表格周围绘制的边框类型。 {it:bspec} 是以下值的任意组合：

{space 12}{opt none} {space 4} 不绘制外部边框线；默认
{space 12}{opt all} {space 5} 绘制所有四个外部边框线
{space 12}{opt rows} {space 4} 在顶部和底部边距绘制水平线
{space 12}{opt columns} {space 1} 在左侧和右侧边距绘制垂直线
{space 12}{opt left} {space 4} 在左侧边距绘制一条线
{space 12}{opt right} {space 3} 在右侧边距绘制一条线
{space 12}{opt top} {space 5} 在顶部边距绘制一条线
{space 12}{opt bottom} {space 2} 在底部边距绘制一条线

{pmore}
{cmd:border} 无参数提供时等价于 {cmd:border(all)}，或者
等价于 {cmd:border(left right top bottom)}。

{phang}{opth format(%fmt)}
指定显示矩阵单个元素的格式。默认是 {cmd:format(%9.0g)}。

{phang}{opt twidth(#)}
指定行标签列（第一列）的宽度。默认是 {cmd:twidth(12)}。

{phang}{opt left(#)}
指定表格缩进 {it:#} 个空格；默认是 {cmd:left(0)}。要缩进标题，请参见
{helpb matlist##tindent():tindent()} 选项。

{phang}{opt right(#)}
指定表格的右边距为距离页面边距 {it:#} 个空格。默认是 {cmd:right(0)}。右边距
会影响在换行之前显示的列数。


{marker options_general}{...}
{title:通用选项}

{phang}{opth title:(strings:string)}
添加 {it:string} 作为显示在矩阵之前的标题。
{cmd:matlist} 没有默认标题或标题行。

{marker tindent()}{...}
{phang}{opt tindent(#)}
指定标题的缩进；默认是 {cmd:tindent(0)}。

{phang}{opth rowtitle:(strings:string)}
指定 {it:string} 用作行标签的列标题。
仅在显示行和列标签时才允许此选项。

{marker names()}{...}
{phang}{cmd:names(}{cmd:rows}|{cmd:columns}|{cmd:all}|{cmd:none}{cmd:)}
指定是否显示行和列名称；默认是
{cmd:names(all)}，同时显示两者。

{phang}{opt nonames}
抑制行和列名称，是 {cmd:names(none)} 的同义词。

{phang}{opt showcoleq(ceq)} 
指定列方程名称的显示方式。以下 {it:ceq} 是允许的：

{phang2}{opt f:irst} 在与名称关联的第一列上方显示一个方程名称；
这是默认情况。 

{phang2}{opt e:ach} 在每一列上方显示一个方程名称。 

{phang2}{opt c:ombined} 在与该名称关联的所有列上方居中显示一个方程名称。 

{phang2}{opt l:combined} 在与该名称关联的所有列上方左对齐显示一个方程名称。

{phang2}{opt r:combined} 在与该名称关联的所有列上方右对齐显示一个方程名称。 

{pmore}
如有必要，方程名称将被截断到显示名称的字段宽度。
使用 {opt combined}、{opt lcombined} 和 {opt rcombined} 时，字段包含所有列及其关联的
方程分隔符。

{phang}{opt roweqonly} 指定仅显示行方程名称
在输出中。此选项不能与 {cmd:names(columns)}、 
{cmd:names(none)} 或 {opt nonames} 一起使用。

{phang}{opt coleqonly} 指定仅显示列方程名称
在输出中。此选项不能与 {cmd:names(rows)}、 
{cmd:names(none)} 或 {opt nonames} 一起使用。

{phang}{cmd:colorcoleq(}{cmd:txt}|{cmd:res}{cmd:)}
指定显示在第一行的列方程名称的模式（颜色）。指定 {cmd:txt}（默认）以
与显示文本所使用的相同颜色显示方程名称。指定 {cmd:res} 将名称
以与显示结果相同的颜色显示。

{phang}{cmd:keepcoleq}
指定相同方程的列应尽可能保持在一起。

{phang}{cmd:aligncolnames(}{cmd:ralign}|{cmd:lalign}|{cmd:center}{cmd:)} 
指定列名称的对齐方式。 {cmd:ralign} 表示右对齐， {cmd:lalign} 表示左对齐， {cmd:center} 表示居中。 {cmd:aligncolnames(ralign)} 是默认值。

{phang}{opt noblank}
抑制在矩阵之前打印空白行。对此在程序中非常有用。

{phang}{opt nohalf}
指定即使矩阵是对称的，也应打印完整矩阵。默认是仅在这种情况下打印下三角矩阵。

{phang}{opt nodotz}
指定 {cmd:.z} {help missing_zh} 值应作为空白字段列出，而不是 {cmd:.z}。

{phang}{opt underscore}
将行和列名称中的下划线转换为空白。

{phang}{opt linesize(#)}
指定格式化表格的页面宽度。
指定的 {cmd:linesize()} 值超过屏幕宽度可能会在屏幕上产生难看的输出，尽管这些输出仍然有用
如果您正在记录输出，并且以后计划在宽打印机上打印日志。


{marker required}{...}
{title:第二种语法的必需选项}

{phang}{marker cspec}{opt cspec(cspec)}
指定列的格式和列的分隔符，

{pmore}
其中 {it:cspec} 是 {space 4} [{it:sep} [{it:qual}] {cmd:%}{it:#}{cmd:s}]
{it:sep} {it:nspec} [{it:nspec} [...]]

{pmore}
并且 {it:sep} 是 {space 6} [{cmd:o}{it:#}] {cmd:&}|{cmd:|} [{cmd:o}{it:#}]

{col 23}{c TLC}{hline 23}{c TRC}
{col 9}{it:qual} 是{...}
{col 23}{c |}{it:qual}     描述   {c |}
{col 23}{c LT}{hline 23}{c RT}
{col 23}{c |} {cmd:s}       标准字体 {c |}
{col 23}{c |} {cmd:b}       粗体字体 {c |}
{col 23}{c |} {cmd:i}       斜体字体   {c |}
{col 23}{c |} {cmd:t}       文本模式     {c |}
{col 23}{c |} {cmd:e}       错误模式    {c |}
{col 23}{c |} {cmd:c}       命令模式  {c |}
{col 23}{c |} {cmd:L}       左对齐  {c |}
{col 23}{c |} {cmd:R}       右对齐 {c |}
{col 23}{c |} {cmd:C}       居中      {c |}
{col 23}{c |} {cmd:w}{it:#}      字段宽度 {it:#} {c |}
{col 23}{c BLC}{hline 23}{c BRC}

{pmore}
{it:nspec} 是 {space 4} [{it:qual}] {it:nfmt sep}

{pmore}
而 {it:nfmt} 是 {space 1} {cmd:%}{it:#}{cmd:.}{it:#}{{cmd:f}|{cmd:g}}

{pmore}
第一个（可选）部分，[{it:spec} [{it:qual}] {cmd:%}{it:#s}]，指定包含行名称的列的格式。它
在行名称是显示的一部分时是必需的；请参阅 
{helpb matlist##names():names()} 选项。 {it:nspec} 的数量应等于 {it:matname} 的列数。

{pmore}
在分隔符规格中， {it:sep}， {cmd:|} 指定绘制垂直线。 {cmd:&} 指定不绘制线。  
如果显示列标题，{it:matname} 有 r 行，则需要 r+2 个字符，反之则需要 r+1 个字符。
第一个字符指定在表格的第一行之前是否绘制线；第二个字符指定第一行和第二行之间是否绘制线，依此类推；最后一个字符指定在表格最后一行之后是否绘制线。

{pmore}
您不能在水平线之前或之后添加空白行。

{pmore}例如，在具有列标题和三行数值的表中，

{phang3}
{cmd:rspec(||&&|)} {space 2} 或等效于 {space 2} {cmd:rspec(--&&-)}
{break}
指定在第一和第二行之前以及在最后一行之后绘制水平线，但在其他地方不绘制。


{marker examples}{...}
{title:示例}

    所有数值列格式相同

{p 8 16 2}
{cmd:. matrix A = (1, 2 \ 3, 4 \ 5, 6)}

{p 8 16 2}
{cmd:. matrix list A}

{p 8 16 2}
{cmd:. matlist A}

{p 8 16 2}
{cmd:. matlist A, border(rows) rowtitle(rows) left(4)}

{p 8 16 2}
{cmd:. matlist 2*A, border(all) lines(none) format(%6.1f) names(rows)}
          {cmd:twidth(8) left(4) title(Guess what, a title)}

    所有数值列格式不同
    
        {cmd:. matrix Htest = (  12.30,  2,  .00044642  \ }
                             {cmd:2.17,  1,  .35332874  \ }                   
			     {cmd:8.81,  3,  .04022625  \ }
			    {cmd:20.05,  6,  .00106763  )}

{p 8 16 2}
{cmd:. matrix rownames Htest = trunk length weight overall}

{p 8 16 2}
{cmd:. matrix colnames Htest = chi2 df p}

{p 8 16 2}
{cmd:. matrix list Htest}

{p 8 16 2}
{cmd:. matlist Htest}

{p 8 16 2}
{cmd:. matlist Htest, rowtitle(Variables) title(Test results)}
       {bind:{cmd:cspec(o4& %12s | %8.0g & %5.0f & %8.4f o2&)}}
       {bind:{cmd:rspec(&-&&--)}}

    带有扩展缺失值

{p 8 16 2}
{cmd:. matrix Z = ( .z, 1 \ .c, .z )}

{p 8 16 2}
{cmd:. matrix rownames Z = row_1 row_2}

{p 8 16 2}
{cmd:. matrix colnames Z = col1 col2}

{p 8 16 2}
{cmd:. matlist Z}

{p 8 16 2}
{cmd:. matlist Z, nodotz underscore}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matlist.sthlp>}