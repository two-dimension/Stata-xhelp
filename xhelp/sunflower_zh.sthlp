{smcl}
{* *! version 1.1.13  19oct2017}{...}
{viewerdialog sunflower "dialog sunflower"}{...}
{vieweralsosee "[R] sunflower" "mansection R sunflower"}{...}
{viewerjumpto "语法" "sunflower_zh##syntax"}{...}
{viewerjumpto "菜单" "sunflower_zh##menu"}{...}
{viewerjumpto "描述" "sunflower_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "sunflower_zh##linkspdf"}{...}
{viewerjumpto "选项" "sunflower_zh##options"}{...}
{viewerjumpto "备注" "sunflower_zh##remarks"}{...}
{viewerjumpto "示例" "sunflower_zh##examples"}{...}
{viewerjumpto "参考" "sunflower_zh##reference"}
{help sunflower:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] sunflower} {hline 2}}密度分布向日葵图{p_end}
{p2col:}({mansection R sunflower:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:sunflower} {it:yvar} {it:xvar}
{ifin}
[{it:{help sunflower##weight:weight}}]
[{cmd:,} {it:options}]

{synoptset 32 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主选项}
{synopt:{opt nograph}}不显示图形{p_end}
{synopt:{opt notab:le}}不显示摘要表；在指定 {opt by()} 时隐含此选项{p_end}
{synopt:{it:{help marker_options_zh:marker_options}}}影响绘制点处标记的表现{p_end}

{syntab:箱体/花瓣}
{synopt:{opt binw:idth(#)}}六边形箱体的宽度{p_end}
{synopt:{opt binar(#)}}六边形箱体的纵横比{p_end}
{synopt:{it:{help sunflower##bin_options:bin_options}}}影响六边形箱体的表现{p_end}
{synopt:{opt li:ght(#)}}轻型向日葵的最小观察数；默认值为 {cmd:light(3)}{p_end}
{synopt:{opt da:rk(#)}}深色向日葵的最小观察数；默认值为 {cmd:dark(13)}{p_end}
{synopt:{opt xcen:ter(#)}}参考箱体的 {it:x} 坐标{p_end}
{synopt:{opt ycen:ter(#)}}参考箱体的 {it:y} 坐标{p_end}
{synopt:{opt petalw:eight(#)}}深色向日葵花瓣中的观察数{p_end}
{synopt:{opt petall:ength(#)}}向日葵花瓣的长度（百分比）{p_end}
{synopt:{it:{help sunflower##petal_options:petal_options}}}影响向日葵花瓣的表现{p_end}
{synopt:{opt flower:sonly}}仅显示花瓣；不渲染箱体{p_end}
{synopt:{opt nosingle:petal}}抑制单一花瓣的显示{p_end}

{syntab:添加图形}
{synopt:{opth "addplot(addplot_option:plot)"}}将其他图形添加到生成的图形{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体, 按}
{synopt:{it:twoway_options}}任何在 {manhelpi twoway_options G-3} 中记录的选项{p_end}
{synoptline}

{synoptset 32}{...}
{marker bin_options}{...}
{synopthdr:箱体选项}
{synoptline}
{synopt:[{cmdab:l:}{c |}{cmdab:d:}]{opth bsty:le(areastyle)}}六边形箱体的整体外观{p_end}
{synopt:[{cmdab:l:}{c |}{cmdab:d:}]{opth bc:olor(colorstyle)}}轮廓和填充颜色{p_end}
{synopt:[{cmdab:l:}{c |}{cmdab:d:}]{opth bfc:olor(colorstyle)}}填充颜色{p_end}
{synopt:[{cmdab:l:}{c |}{cmdab:d:}]{opth blst:yle(linestyle)}}轮廓的整体外观{p_end}
{synopt:[{cmdab:l:}{c |}{cmdab:d:}]{opth blc:olor(colorstyle)}}轮廓颜色{p_end}
{synopt:[{cmdab:l:}{c |}{cmdab:d:}]{opth blw:idth(linewidthstyle)}}轮廓的厚度{p_end}
{synoptline}

{marker petal_options}{...}
{synopthdr:花瓣选项}
{synoptline}
{synopt:[{cmdab:l:}{c |}{cmdab:d:}]{opth fls:tyle(linestyle)}}向日葵花瓣的整体样式{p_end}
{synopt:[{cmdab:l:}{c |}{cmdab:d:}]{opth flc:olor(colorstyle)}}向日葵花瓣的颜色{p_end}
{synopt:[{cmdab:l:}{c |}{cmdab:d:}]{opth flw:idth(linewidthstyle)}}向日葵花瓣的厚度{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
所有选项都是 {it:rightmost}; 详见 {it:{help repeated_options_zh}}。
{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {opt fweight}；详见 {help weight_zh}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 平滑与密度 > 密度分布向日葵图}


{marker description}{...}
{title:描述}

{pstd}
{opt sunflower} 绘制密度分布向日葵图 ({help sunflower##PD2003:Plummer 和 Dupont 2003})。深色向日葵、轻型向日葵和标记符号分别表示数据的高、中、低密度区域。这些图用于显示双变量数据，而常规散点图无法有效表示这些数据的密度。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R sunflowerQuickstart:快速入门}

        {mansection R sunflowerRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主选项}

{phang}
{opt nograph} 防止生成图形。

{phang}
{opt notable} 防止显示摘要表。当指定 {opt by()} 选项时隐含此选项。

{phang}
{it:marker_options} 影响绘制点处标记的表现，包括它们的形状、大小、颜色和轮廓；详见 {manhelpi marker_options G-3}。

{dlgtab:箱体/花瓣}

{phang}
{opt binwidth(#)} 指定六边形箱体的水平宽度，采用与 {it:xvar} 相同的单位。默认情况下，

{pin2}
{it:binwidth} = {cmd:max(}rbw,nbw{cmd:)}

{pmore}
其中

{pin2}
rbw = {it:xvar} 的范围/40

{pin2}
nbw = {it:xvar} 的范围/{cmd:max(1,}nb{cmd:)}

{pmore}
和

{pin2}
nb = {cmd:int(min(sqrt(}{it:n}{cmd:),10*}{cmd:log10(}{it:n}{cmd:)}{cmd:)}{cmd:)}

{pmore}
其中

{pin2}
{it:n} = 数据集中的观察数

{phang}
{opt binar(#)} 指定六边形箱体的纵横比。箱体的高度由以下公式给出：

{pin2}
{it:binheight} = {it:binwidth} * {it:#} * 2/sqrt(3)

{pmore}
其中 {it:binheight} 和 {it:binwidth} 是以 {it:yvar} 和 {it:xvar} 的单位指定的。
默认值为 {opt binar(r)}，其中 {it:r} 导致渲染为规则六边形。

{phang}
{it:bin_options} 影响六边形箱体的渲染方式。

{phang2}
{opt lbstyle(areastyle)} 和 {opt dbstyle(areastyle)} 指定轻型和深色六边形箱体的外观。以下列出的选项允许您改变每个属性，但 {opt lbstyle()} 和 {opt dbstyle()} 提供了起始点。有关可用区域样式的列表，请参见 {manhelpi areastyle G-4}。

{phang2}
{opt lbcolor(colorstyle)} 和 {opt dbcolor(colorstyle)} 指定一种颜色，用于轮廓和填充轻型和深色六边形箱体的内部。
有关颜色选择的列表，请参见 {manhelpi colorstyle G-4}。

{phang2}
{opt lbfcolor(colorstyle)} 和 {opt dbfcolor(colorstyle)} 指定填充轻型和深色六边形箱体内部的颜色。
有关颜色选择的列表，请参见 {manhelpi colorstyle G-4}。

{phang2}
{opt lblstyle(linestyle)} 和 {opt dblstyle(linestyle)} 指定用于轮廓区域整体样式的线，包括其模式（实线、虚线等）、厚度和颜色。下面列出的其他选项允许您改变线的属性，但 {opt lblstyle()} 和 {opt dblstyle()} 是起始点。有关选择的列表，请参见 {manhelpi linestyle G-4}。

{phang2}
{opt lblcolor(colorstyle)} 和 {opt dblcolor(colorstyle)} 指定用于轮廓轻型和深色六边形箱体的颜色。
有关颜色选择的列表，请参见 {manhelpi colorstyle G-4}。

{phang2}
{opt lblwidth(linewidthstyle)} 和 {opt dblwidth(linewidthstyle)} 指定用于轮廓轻型和深色六边形箱体的线的厚度。
有关选择的列表，请参见 {manhelpi linewidthstyle G-4}。

{phang}
{opt light(#)} 指定表示轻型向日葵所需的最小观察数。默认值为 {cmd:light(3)}。

{phang}
{opt dark(#)} 指定表示深色向日葵所需的最小观察数。默认值为 {cmd:dark(13)}。

{phang}
{opt xcenter(#)} 和 {opt ycenter(#)} 指定参考箱体的中心。默认值分别为 {it:xvar} 和 {it:yvar} 的中位数。其他箱体的中心由参考箱体的位置及公共箱体的宽度和高度隐式定义。

{phang}
{marker petalweight}{...}
{opt petalweight(#)} 指定深色向日葵每个花瓣所代表的观察数。默认值选择以使深色向日葵上最多有 14 个花瓣。

{phang}
{opt petallength(#)} 指定向日葵花瓣的长度。指定的值按百分比解释为箱体宽度的一半。默认值为 100%。

{phang}
{it:petal_options} 影响向日葵花瓣的渲染方式。

{phang2}
{opt lflstyle(linestyle)} 和 {opt dflstyle(linestyle)} 分别指定轻型和深色向日葵花瓣的整体样式。

{phang2}
{opt lflcolor(colorstyle)} 和 {opt dflcolor(colorstyle)} 分别指定轻型和深色向日葵花瓣的颜色。

{phang2}
{opt lflwidth(linewidthstyle)} 和 {opt dflwidth(linewidthstyle)} 分别指定轻型和深色向日葵花瓣的宽度。

{phang}
{opt flowersonly} 抑制箱体的绘制。该选项相当于指定 {cmd:lbcolor(none)} 和 {cmd:dbcolor(none)}。

{phang}
{opt nosinglepetal} 抑制在仅包含 1 个观察值的轻箱体中绘制花朵，在深箱体中绘制的观察值与花瓣权重相等（参见 {helpb sunflower##petalweight:petalweight()} 选项）。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 提供一种将其他图形添加到生成的图形的方法；详见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体, 按}

{phang}
{it:twoway_options} 是 {manhelpi twoway_options G-3} 中记录的任何选项。这些选项包括图形标题（见 {manhelpi title_options G-3}）、将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）和 {opt by()} 选项（见 {manhelpi by_option G-3}）。


{marker remarks}{...}
{title:备注}

{pstd}
向日葵是由多个相等长度的线段（称为花瓣）从一个中心点辐射而成的。向日葵有两种类型：轻型和深色。每个轻型向日葵的花瓣代表 1 个观察值。每个深色向日葵的花瓣代表多个观察值。深色和轻型向日葵分别表示数据的高密度和中密度区域，而标记符号则表示低密度区域中的个别观察值。

{pstd}
{cmd:sunflower} 将由变量 {it:yvar} 和 {it:xvar} 定义的平面划分为连续的六边形箱体。箱体中包含的观察数决定了该箱体的表现形式。

{phang}
o  当箱体中少于 {opt light(#)} 个观察时，每个点使用散点图中的通常标记符号绘制。

{phang}
o  含有至少 {opt light(#)} 但少于 {opt dark(#)} 个观察的箱体由轻型向日葵表示。每个轻型向日葵的花瓣代表箱体中的一个观察值。

{phang}
o  含有至少 {opt dark(#)} 个观察的箱体由深色向日葵表示。每个深色向日葵的花瓣代表多个观察值。


{marker examples}{...}
{title:示例}

    {cmd:. sysuse auto}

    {cmd:. sunflower mpg displ}
      {it:({stata "gr_example auto: sunflower mpg displ":单击运行})}

{p 4 6 2}
{cmd:. sunflower mpg displ, xcenter(100) ycenter(100) binwidth(20)}{break}
{it:({stata "gr_example auto: sunflower mpg displ, xcenter(100) ycenter(100) binwidth(20)":单击运行})}

{p 4 6 2}
{cmd:. sunflower mpg weight, binwidth(500) petalweight(2) dark(8)}{break}
{it:({stata "gr_example auto: sunflower mpg weight, binwidth(500) petalweight(2) dark(8)":单击运行})}


{marker reference}{...}
{title:参考}

{marker PD2003}{...}
{phang}
Plummer, W. D., Jr., 和 W. D. Dupont. 2003. 密度分布向日葵图。 {it:统计软件杂志} 8: 1-11。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sunflower.sthlp>}