{smcl}
{* *! version 1.0.15  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway contourline" "mansection G-2 graphtwowaycontourline"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway contour" "help twoway_contour_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway line" "help twoway_line"}{...}
{vieweralsosee "[G-2] graph twoway connected" "help twoway_connected_zh"}{...}
{viewerjumpto "Syntax" "twoway_contourline_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_contourline_zh##menu"}{...}
{viewerjumpto "Description" "twoway_contourline_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_contourline_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_contourline_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_contourline_zh##remarks"}
{help twoway_contourline:English Version}
{hline}{...}
{p2colset 1 35 37 2}{...}
{p2col:{bf:[G-2] graph twoway contourline} {hline 2}}双变量等高线图{p_end}
{p2col:}({mansection G-2 graphtwowaycontourline:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 53 2}
{cmdab:tw:oway}
{cmd:contourline}
{it:z} {it:y} {it:x}
{ifin}
[{cmd:,}
{it:选项}]

{synoptset 31}{...}
{synopthdr}
{synoptline}
{synopt:{cmdab:ccut:s:(}{it:{help numlist_zh}}{cmd:)}}等高线或切割值的值列表{p_end}
{synopt:{opt lev:els(#)}}等高线的数量{p_end}
{synopt:{opt minmax}}包括{it:z}的最小值和最大值的等高线{p_end}
{synopt:{cmd:format(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}}{cmd:ccuts()}或{cmd:levels()}的显示格式{p_end}

{synopt:{opt colorl:ines}}以不同颜色显示等高线{p_end}
{synopt:{opth crule:(twoway_contour##crule:crule)}}为创建等高线颜色的规则{p_end}
{synopt:{opth sc:olor(colorstyle)}}等高线规则的起始颜色{p_end}
{synopt:{opth ec:olor(colorstyle)}}等高线规则的结束颜色{p_end}
{synopt:{cmdab:cc:olors:(}{it:{help colorstyle_zh}列表}{cmd:)}}等高线的颜色列表{p_end}
{synopt:{cmdab:clw:idths:(}{it:{help linewidthstyle_zh}列表}{cmd:)}}等高线的宽度列表{p_end}
{synopt:{opt rev:ersekey}}反转{help legend_options_zh:contour-line legend}中图例的键的顺序{p_end}

{synopt: {opth int:erp(twoway_contour##interpolation:interpmethod)}}若（{it:z}, {it:y}, {it:x}）未填充规则网格，则使用插值方法{p_end}

INCLUDE help gr_twopt
{synoptline}

{synoptset 22}{...}
{marker crule}{...}
{synopthdr :crule}
{synoptline}
{synopt:{opt hue}}在{cmd:scolor()}和{cmd:ecolor()}之间使用均匀间隔的{help colorstyle_zh:hues}; 默认值{p_end}
{synopt:{opt chue}}在{cmd:scolor()}和{cmd:ecolor()}之间使用均匀间隔的{help colorstyle_zh:hues}; 与{opt hue}不同，如果{cmd:ecolor()}的色调小于{cmd:scolor()}的色调，则使用{cmd:ecolor()}的360+{opt hue}{p_end}
{synopt:{opt int:ensity}}使用均匀间隔的{help colorstyle_zh:intensities}，以{cmd:ecolor()}为基准;忽略{cmd:scolor()}{p_end}
{synopt:{opt lin:ear}}在{cmd:scolor()}和{cmd:ecolor()}之间使用均匀间隔的{help colorstyle_zh:RGB}值的插值{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 22}{...}
{marker interpolation}{...}
{synopthdr :interpmethod}
{synoptline}
{synopt :{opt thin:platespline}}薄板样条插值; 默认值{p_end}
{synopt :{opt shepard}}谢泼德插值{p_end}
{synopt :{opt none}}不插值; 按原样绘制数据{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双变量图（散点、线图等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} {cmd:contourline}将{it:z}作为等高线显示在({it:y},{it:x})。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowaycontourlineQuickstart:快速开始}

        {mansection G-2 graphtwowaycontourlineRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
    {cmd:ccuts()}, {cmd:levels()}, {cmd:minmax}和{cmd:format()}决定创建的等高线数量和这些等高线的值。

{phang2}
{cmd:ccuts}{cmd:(}{it:{help numlist_zh}}{cmd:)}
        指定等高线的{it:z}值。等高线是在{it:numlist}的每个值处绘制的。

{phang2}
{opt levels(#)}
        指定要创建的等高线数量; {it:#}-1等高线将被创建。

{phang2}
{opt minmax}
        是{cmd:levels()}的修饰符，指定为{it:z}的最小值和最大值绘制等高线。默认情况下，仅按级别所暗示的切割值绘制线，而不是{it:z}的完整范围。

{phang2}
    {cmd:format(}{help format_zh:{bf:%}{it:fmt}}{cmd:)} 
            指定用于在等高线图例中创建标签的显示格式。

{pmore}
    {cmd:ccuts()}和{cmd:levels()}是指定等高线切割的不同方式，不能结合使用。

{phang}
    {cmd:colorlines}, {cmd:crule()}, {cmd:scolor()}, {cmd:ecolor()},
    {cmd:ccolors()}和{cmd:clwidths()}决定每条等高线的颜色和宽度。

{phang2}
	{opt colorlines} 指定等高线以不同颜色绘制。除非指定{cmd:ccolors()}选项，否则颜色由{cmd:crule()}确定。

{phang2}
        {opth crule:(twoway_contour##crule:crule)}指定
        用于设置等高线颜色的规则。有效的{it:crule}包括{cmd:hue}、{cmd:chue}、{cmd:intensity}和{cmd:linear}。默认值为{cmd:crule(hue)}。

{phang2}
        {opt scolor:(colorstyle)}指定规则的起始颜色。请参阅{manhelpi colorstyle G-4}。

{phang2}
        {opt ecolor:(colorstyle)}指定规则的结束颜色。请参阅{manhelpi colorstyle G-4}。

{phang2}
        {opt ccolors(colorstylelist)}指定每条等高线使用的颜色{it:colorstyle}列表。
        如果指定RGB、CMYK、HSV或强度调整（例如，{cmd:red*.3}）的colorstyle，则应放在引号中。有效的{cmd:ccolors()}选项的示例包括{p_end}
{pmore3}
		{cmd:ccolors(red green magenta)}和{p_end}
{pmore3}
		{cmd:ccolors(red "55 132 22" ".3 .9 .3 hsv" blue)}.{p_end}
{pmore2}
        请参阅{manhelpi colorstyle G-4}。

{phang2}
    {opt clwidths(linewidthstylelist)}指定每条等高线使用的{it:linewidthstyle}列表。
        请参阅{manhelpi linewidthstyle G-4}。
        
{phang}
    {opt reversekey}指定在等高线图例中键的顺序要反转。默认情况下，键的排列是从上到下，从{it:z}的最高值的键开始。
	请参阅{it:plegend_option}在{manhelpi legend_options G-3}中。

{phang}
	{opth interp:(twoway_contourline##interpolation:interpmethod)}指定
	如果{it:z}、{it:y}和{it:x}未填充规则网格，则使用的插值方法。变量{it:z}、{it:y}和{it:x}填充规则网格，如果对于每个非缺失的({it:y},{it:x})组合，在数据集中至少有一个非缺失的{it:z}与该对相对应。例如，以下数据集形成一个2x2网格。

{pmore3}	
	      {cmd:. input z y x}
	
	              z y x
	          1.  {cmd:1 1 1}
	          2.  {cmd:2 4 1}
                  3.  {cmd:3 4 1}
	          4.  {cmd:1 1 2} 
                  5.  {cmd:1 4 2}
 	          6.  {cmd:end}

{pmore}        
        如果存在多个{it:z}值对应于一对({it:y},{it:x})，则在绘图时使用最小的{it:z}值。在上述例子中，有两个{it:z}值对应于对(4,1)，并使用最小值2。

{pmore3}	
	      {cmd:. input z y x}
	
	              z y x
	          1.  {cmd:1 1 1}
	          2.  {cmd:2 2 1}
	          3.  {cmd:1 1 2}
	          4.  {cmd:end}

{pmore}	
        由于不存在与对(2,2)对应的{it:z}值，因此不填充规则网格。

{phang} 
{it:twoway_options} 
        是在{manhelpi twoway_options G-3}中记录的任何选项。这些包括
        标题图形的选项（见{manhelpi title_options G-3}）;
        将图形保存到磁盘的选项（见{manhelpi saving_option G-3}）;
        控制轴的标签和外观的选项（见{manhelpi axis_options G-3}）;
        控制图例的外观、内容、位置和组织的选项（见{manhelpi legend_options G-3}）;
        添加线条的选项（见{manhelpi added_line_options G-3}）
        和文本（见{manhelpi added_text_options G-3}）;
        以及控制图形外观的其他方面的选项（见{manhelpi twoway_options G-3}）。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help twoway_contourline##ccuts:控制等高线的数量及其值}
	{help twoway_contourline##colors:控制等高线的颜色}
	{help twoway_contourline##interp:选择插值方法}


{marker ccuts}{...}
{title:控制等高线的数量及其值}

{pstd}   
我们可以通过输入默认值绘制等高线图
   
   	{cmd:. sysuse sandstone}
   
   	{cmd:. twoway contourline depth northing easting}
   	  {it:({stata `"gr_example sandstone: twoway contourline depth northing easting"':click to run})}
{* graph grctline1}{...}

{pstd}   
我们添加{cmd:colorlines}选项以显示等高线图例中的切割值。我们还包括{cmd:levels()}选项以在{cmd:min(depth)}和{cmd:max(depth)}之间生成#-1个等高线。

	{cmd:. twoway contourline depth northing easting, colorlines levels(10)}
          {it:({stata `"gr_example sandstone: twoway contourline depth northing easting, colorlines levels(10)"':click to run})}
{* graph grctline2}{...}

{pstd}
   {cmd:ccuts()}和{cmd:levels()}是控制等高线数量及其值的方法。

{pstd}   
{cmd:ccuts()}选项提供了对创建等高线的最细控制。在这里，我们使用它绘制一个在7500、7600、7700、7800、7900和8000处的六个切割的等高线图。

   	{cmd:. twoway contourline depth northing easting, colorlines}
                {cmd:ccuts(7500(100)8000)}
   	  {it:({stata `"gr_example sandstone: twoway contourline depth northing easting, colorlines ccuts(7500(100)8000)"':click to run})}
{* graph grctline3}{...}


{marker colors}{...}
{title:控制等高线的颜色}

{pstd}   
{cmd:crule()}、{cmd:scolor()}和{cmd:ecolor()}控制每条等高线的颜色。	

   	{cmd:. twoway contourline depth northing easting, level(10)}
   		{cmd:format(%9.1f) colorlines scolor(green) ecolor(red)}
   	  {it:({stata `"gr_example sandstone: twoway contourline depth northing easting, level(10) format(%9.1f) colorlines scolor(green) ecolor(red)"':click to run})}
{* graph grctline4}{...}

{pstd} 
   绘制一个在{cmd:min(depth)}和{cmd:max(depth)}之间的九个均匀间隔{it:z}值的等高线图。线条的起始颜色是绿色，结束颜色是红色。此外，图例标签的显示格式为{cmd:%9.1f}。

{pstd}   
   {cmd:ccolors()}指定每条等高线使用的颜色列表。
   
   	{cmd:. twoway contourline depth northing easting, ccuts(7600(100)8000)}
   		{cmd:colorlines ccolors(red green magenta blue yellow)}
   	  {it:({stata `"gr_example sandstone: twoway contourline depth northing easting, ccuts(7600(100)8000) colorlines ccolors(red green magenta blue yellow)"':click to run})}
{* graph grctline5}{...}


{marker interp}{...}
{title:选择插值方法}

{pstd}
请参见{it:{help twoway_contour##interp:选择插值方法}}在
{helpb twoway contour:[G-2] graph twoway contour}中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_contourline.sthlp>}