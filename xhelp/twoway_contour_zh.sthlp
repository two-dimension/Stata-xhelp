{smcl}
{* *! version 1.0.17  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway contour" "mansection G-2 graphtwowaycontour"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway contourline" "help twoway_contourline_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway area" "help twoway_area_zh"}{...}
{vieweralsosee "[G-2] graph twoway rarea" "help twoway_rarea_zh"}{...}
{viewerjumpto "Syntax" "twoway_contour_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_contour_zh##menu"}{...}
{viewerjumpto "Description" "twoway_contour_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_contour_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_contour_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_contour_zh##remarks"}{...}
{viewerjumpto "Reference" "twoway_contour_zh##reference"}
{help twoway_contour:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[G-2] graph twoway contour} {hline 2}}带阴影的双变量等高线图{p_end}
{p2col:}({mansection G-2 graphtwowaycontour:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 53 2}
{cmdab:tw:oway}
{cmd:contour}
{it:z} {it:y} {it:x}
{ifin}
[{cmd:,}
{it:options}]

{synoptset 22}{...}
{synopthdr}
{synoptline}
{synopt:{cmdab:ccut:s:(}{it:{help numlist_zh}}{cmd:)}}等高线或切割值的列表{p_end}
{synopt:{opt lev:els(#)}}等高线的数量{p_end}
{synopt:{opt minmax}}在级别中包含{it:z}的最小值和最大值{p_end}

{synopt:{opth crule:(twoway_contour##crule:crule)}}用于创建等高线颜色的规则{p_end}
{synopt:{opth sc:olor(colorstyle)}}等高线规则的起始颜色{p_end}
{synopt:{opth ec:olor(colorstyle)}}等高线规则的结束颜色{p_end}
{synopt:{cmdab:cc:olors:(}{it:{help colorstyle_zh}list}{cmd:)}}等高线级别的颜色列表{p_end}

{synopt:{opt heatmap}}将等高线图绘制为热图{p_end}

{synopt: {opth int:erp(twoway_contour##interpolation:interpmethod)}}如果({it:z}, {it:y}, {it:x})未填充常规网格，则插值方法{p_end}

INCLUDE help gr_twopt
{synoptline}

{synoptset 22}{...}
{marker crule}{...}
{synopthdr :crule}
{synoptline}
{synopt:{opt hue}}在{cmd:scolor()}和{cmd:ecolor()}之间使用均匀间隔的{help colorstyle_zh:hues}; 默认值{p_end}
{synopt:{opt chue}}在{cmd:scolor()}和{cmd:ecolor()}之间使用均匀间隔的{help colorstyle_zh:hues}; 与{opt hue}不同，如果{cmd:ecolor()}的色相小于{cmd:scolor()}的色相，则使用{cmd:ecolor()}的360+{opt hue}{p_end}
{synopt:{opt int:ensity}}使用均匀间隔的{help colorstyle_zh:intensities}，以{cmd:ecolor()}为基础; {cmd:scolor()}被忽略{p_end}
{synopt:{opt lin:ear}}在{cmd:scolor()}和{cmd:ecolor()}之间使用均匀间隔的颜色值插值{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 22}{...}
{marker interpolation}{...}
{synopthdr :interpmethod}
{synoptline}
{synopt :{opt thin:platespline}}薄板样条插值; 默认值{p_end}
{synopt :{opt shepard}}Shepard插值{p_end}
{synopt :{opt none}}不进行插值; 原样绘制数据{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双变量图（散点图、线图等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} {cmd:contour} 将{it:z}显示为填充的等高线图（{it:y},{it:x}）。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowaycontourQuickstart:快速入门}

        {mansection G-2 graphtwowaycontourRemarksandexamples:备注和示例}

{pstd}
上面的部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
    {cmd:ccuts()}、{cmd:levels()}和{cmd:minmax}决定了创建多少个轮廓及这些轮廓的值。

{pmore}
    控制轮廓值的另一种方式是使用通过{cmd:zlabel()}选项提供的标准轴标签选项；请参阅{manhelpi axis_label_options G-3:axis_label_options}。即使指定了{cmd:ccuts()}或{cmd:levels()}，您仍可以使用{cmd:zlabel()}选项进一步控制轮廓标签的外观。

{phang2}
{cmd:ccuts}{cmd:(}{it:{help numlist_zh}}{cmd:)}
        指定轮廓线的{it:z}值。等高线在每个{it:numlist}的值处绘制，并为线之间的每个区域和超出最小和最大值的区域创建颜色或阴影填充。

{phang2}
{opt levels(#)}
        指定要创建的填充等高线的级别数量; 将创建{it:#}-1个轮廓切割。

{phang2}
{opt minmax}
        是{cmd:levels()}的修饰符，并指定包括{it:z}的最小值和最大值在切割中。  
       
{pmore}
    {cmd:ccuts()}和{cmd:levels()}是指定轮廓切割的不同方式，不能结合使用。

{phang}
    {cmd:crule()}、{cmd:scolor()}、{cmd:ecolor()}和{cmd:ccolors()}决定用于每个填充等高线级别的颜色。

{phang2}
        {opth crule:(twoway_contour##crule:crule)}指定用于设置等高线级别颜色的规则。有效的{it:crule}s为{cmd:hue}、{cmd:chue}、{cmd:intensity}和{cmd:linear}。默认值为{cmd:crule(hue)}。

{phang2}
        {opt scolor:(colorstyle)}指定规则的起始颜色。请参阅{manhelpi colorstyle G-4}。

{phang2}
        {opt ecolor:(colorstyle)}指定规则的结束颜色。请参阅{manhelpi colorstyle G-4}。

{phang2}
        {opt ccolors(colorstylelist)}指定用于每个等高线级别的{it:colorstyle}列表。如果指定了RGB、CMYK、HSV或强度调整（例如，{cmd:red*.3}）的colorstyle，它们应放在引号中。有效的{cmd:ccolors()}选项示例包括{p_end}
{pmore3}
		{cmd:ccolors(red green magenta)}和{p_end}
{pmore3}
		{cmd:ccolors(red "55 132 22" ".3 .9 .3 hsv" blue)}.{p_end}
{pmore2}
        请参阅{manhelpi colorstyle G-4}。

{phang}
    {cmd:heatmap}绘制以每个网格点为中心的彩色矩形。颜色由网格点的{it:z}值决定。  

{phang}
	{opth interp:(twoway_contour##interpolation:interpmethod)}指定插值方法，以防{it:z}、{it:y}和{it:x}未填充常规网格。如果对于每组非缺失的({it:y},{it:x})，数据集中都有一个相应的非缺失{it:z}值，则变量{it:z}、{it:y}和{it:x}才填充了常规网格。例如，以下数据集形成一个2x2网格。

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
        如果有多个{it:z}值与一对({it:y},{it:x})对应，则会在绘制时使用最小的{it:z}值。在上述示例中，一对(4,1)有两个{it:z}值，最小值2被使用。

{pmore3}	
	      {cmd:. input z y x}
	
	              z y x
	          1.  {cmd:1 1 1}
	          2.  {cmd:2 2 1}
	          3.  {cmd:1 1 2}
	          4.  {cmd:end}

{pmore}	
        由于没有与对(2,2)对应的{it:z}值，因此不填充一个常规网格。

{phang} 
{it:twoway_options} 
        是在{manhelpi twoway_options G-3}中记录的任何选项。这些包括用于 
        标题图形（请参见{manhelpi title_options G-3}）； 
        将图形保存到磁盘的选项（请参见{manhelpi saving_option G-3}）；
        控制轴的标签和外观的选项
        （请参见{manhelpi axis_options G-3}）；
        控制图例的外观、内容、位置和组织
        （请参见{manhelpi legend_option G-3}）；
        添加线（请参见{manhelpi added_line_options G-3}）
        和文本（请参见{manhelpi added_text_options G-3}）；
        以及控制图形外观的其他方面
        （请参见{manhelpi twoway_options G-3}）。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下标题：

	{help twoway_contour##ccuts:控制轮廓的数量及其值}
	{help twoway_contour##colors:控制等高线区域的颜色}
	{help twoway_contour##interp:选择插值方法}
	{help twoway contour##video:视频示例}


{marker ccuts}{...}
{title:控制轮廓的数量及其值}

{pstd}
我们可以通过键入以下命令绘制具有默认值的等高线图：

   	{cmd:. sysuse sandstone}
   
   	{cmd:. twoway contour depth northing easting}
   	  {it:({stata `"gr_example sandstone: twoway contour depth northing easting"':click to run})}
{* graph grcont1}{...}

{pstd}   
我们可以在上面的命令中添加{cmd:levels()}选项，以在{cmd:min(depth)}和{cmd:max(depth)}之间创建#-1个均匀间隔的轮廓。
   
   	{cmd:. twoway contour depth northing easting, levels(10)}
   	  {it:({stata "gr_example sandstone: twoway contour depth northing easting, levels(10)":click to run})}
{* graph grcont2}{...}

{pstd}   
我们可以使用{cmd:ccuts()}选项绘制一个由7500、7600、7700、7800、7900和8000确定的7级轮廓图。	
{cmd:ccuts()}为您提供了创建轮廓级别的最佳控制。

   	{cmd:. twoway contour depth northing easting, ccuts(7500(100)8000)}
   	  {it:({stata "gr_example sandstone: twoway contour depth northing easting, ccuts(7500(100)8000)":click to run})}
{* graph grcont3}{...}

{pstd}   
{cmd:zlabel()}控制等高线图例的坐标轴。当未指定{cmd:ccuts()}和{cmd:levels()}时，{cmd:zlabel()}还控制等高线的数量和值。为了获得7个均匀间隔的切割，指定{cmd:zlabel(#7)}：

   	{cmd:. twoway contour depth northing easting, zlabel(#7)}
   	  {it:({stata `"gr_example sandstone: twoway contour depth northing easting, zlabel(#7)"':click to run})}
{* graph grcont4}{...}

{pstd}   
使用{cmd:levels()}或{cmd:ccuts()}，{cmd:zlabel()}成为一个选项，仅影响等高线图例的标签。等高线图例可以标记与实际的等高线切割不同的值。图例的刻度可以比等高线级别数量多（或少）。有关详细信息，请参阅{manhelpi axis_label_options G-3:axis_label_options}。

{pstd}
现在，我们将{cmd:twoway} {cmd:contour}命令与{cmd:levels()}和{cmd:zlabel()}选项以及{cmd:format()}子选项结合使用，绘制一个具有7个标签的10级等高线图。标签的显示格式为{cmd:%9.1f}。

   	{cmd:. twoway contour depth northing easting, }
   		{cmd: levels(10) zlabel(#7, format(%9.1f))}
   	 {it:({stata `"gr_example sandstone: twoway contour depth northing easting, levels(10) zlabel(#7, format(%9.1f))"':click to run})}
{* graph grcont5}{...}


{marker colors}{...}
{title:控制等高线区域的颜色}

{pstd}   
  {cmd:crule()}、{cmd:scolor()}和{cmd:ecolor()}控制每个轮廓级别的颜色。	

   	{cmd:. twoway contour depth northing easting,}
   			{cmd:level(10) scolor(green) ecolor(red)}
   	  {it:({stata "gr_example sandstone: twoway contour depth northing easting, level(10) scolor(green) ecolor(red)":click to run})}
{* graph grcont5}{...}

{pstd}   
绘制一个具有起始颜色绿色和结束颜色红色的10级等高线图。
由于绿色的色相为120，红色的色相为0，默认的{cmd:crule(hue)}下，各级的色相顺序是向下移动的。因此你会看到黄色，但看不到蓝色和紫色。 
   
{pstd}
在上述示例中，如果您想使各级的色相向上移动，可以使用{cmd:crule(chue)}：

   	{cmd:. twoway contour depth northing easting,}
   			{cmd:level(10) crule(chue) scolor(green) ecolor(red)}
   	  {it:({stata "gr_example sandstone: twoway contour depth northing easting, level(10) crule(chue) scolor(green) ecolor(red)":click to run})}
{* graph grcont6}{...}

{pstd}   
现在您将看到蓝色和紫色，因为色相从120变化到360(0+360)，但不再出现黄色。  

{pstd}   
   {cmd:ccolors()}指定要用于每个轮廓级别的颜色列表。
   
   	{cmd:. twoway contour depth northing easting,}
   			{cmd:levels(5) ccolors(red green magenta blue yellow)}
   	  {it:({stata "gr_example sandstone: twoway contour depth northing easting, levels(5) ccolors(red green magenta blue yellow)":click to run})}
{* graph grcont7}{...}


{marker interp}{...}
{title:选择插值方法}

{pstd}
如果{it:z}、{it:y}和{it:x}未填充常规网格，则在网格点上缺失的{it:z}值需要进行插值。 

{pstd}
薄板样条插值使用从解决一个维度为{it:n+}3的线性方程组获得的权重向量（w_i），其中{it:n}是数据集中具有非缺失{it:z}值的唯一对({it:y},{it:x})的数量。然后，{it:y}和{it:x}的配对点上的{it:z}值可以插值为

{phang2}	
z=w_1*f(y-y1,x-x1)+...+w_n*f(y-yn,x-xn)+w_(n+1)+w_(n+2)*x+w_(n+3)*y
	      
{pstd} 
其中f(y,x)=sqrt(y^2 + x^2)。{cmd:interp(thinplatespline)}为默认值。

{pstd}
Shepard插值获得一对({it:y},{it:x})上的{it:z}值，计算公式为

{phang2}	
              z=(z_1*f(y-y1,x-x1)+...+z_n*f(y-yn,x-xn)/sum
	  
{pstd} 
其中sum为

{phang2}	
	      sum=f(y-y1,x-x1)+...+f(y-yn,x-xn)

{phang2}
且f(y,x)=1/(x^2 + y^2)。您指定{cmd:interp(shepard)}以使用该方法。 

{pstd}
有关薄板样条和Shepard插值的详细公式，请参见
{help twoway_contour##PTVF2007:Press et al. (2007, 140-144)}。

{pstd} 
薄板样条插值需要解决一个维度为{it:n+}3的线性系统，其中{it:n}是数据集中具有非缺失{it:z}值的唯一对({it:y},{it:x})的数量。当{it:n}变大时，这种方法的计算成本会很高。选择薄板样条方法的经验法则的数量为{it:n~}1000。

{pstd} 
Shepard插值通常不如薄板样条插值好，但速度较快。

{pstd}
方法{cmd:none}按照原样绘制数据，不进行插值。任何具有包含缺失{it:z}值的边界点的网格单元将使用背景色显示。如果数据集（{it:z}、{it:y}、{it:x}）比较密集（即，缺失网格点较少），{cmd:interp(none)}可能会足够。


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=G-t-NSkGm9Y":Stata中的等高线图}


{marker reference}{...}
{title:参考文献}

{marker PTVF2007}{...}
{phang}
Press, W. H., S. A. Teukolsky, W. T. Vetterling, and B. P. Flannery. 2007.
{it:Numerical Recipes: The Art of Scientific Computing Third Edition}.
Cambridge: Cambridge University Press.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_contour.sthlp>}