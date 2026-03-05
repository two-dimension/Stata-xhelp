{smcl}
{* *! version 1.3.16  19oct2017}{...}
{viewerdialog biplot "dialog biplot"}{...}
{vieweralsosee "[MV] biplot" "mansection MV biplot"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] ca" "help ca_zh"}{...}
{vieweralsosee "[MV] mds" "help mds_zh"}{...}
{vieweralsosee "[MV] pca" "help pca_zh"}{...}
{viewerjumpto "Syntax" "biplot_zh##syntax"}{...}
{viewerjumpto "Menu" "biplot_zh##menu"}{...}
{viewerjumpto "Description" "biplot_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "biplot_zh##linkspdf"}{...}
{viewerjumpto "Options" "biplot_zh##options"}{...}
{viewerjumpto "Examples" "biplot_zh##examples"}{...}
{viewerjumpto "Stored results" "biplot_zh##results"}
{help biplot:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[MV] biplot} {hline 2}}主成分图{p_end}
{p2col:}({mansection MV biplot:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang2}
{cmd:biplot}
{varlist} 
{ifin}
[{cmd:,} {it:options}]


{synoptset 29 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主选项}
{synopt:{opth rowover(varlist)}}根据{it:varlist}中变量的相等值来区分观察值（行）之间的组; 不能与 {cmd:separate} 或 {cmd:norow} 一起使用{p_end}
{synopt:{opt dim(# #)}}显示的维度; 默认值为{cmd:dim(2 1)}{p_end}
{synopt:{opt std}}使用标准化而不是集中化的变量{p_end}
{synopt:{opt alpha(#)}}行权重={it:#}; 列权重=1-{it:#}; 默认值为0.5{p_end}
{synopt:{opt stretch(#)}}拉伸列（变量）箭头{p_end}
{synopt:{opt mahalanobis}}近似马哈距离; 意味着{cmd:alpha(0)}{p_end}
{synopt:{opt xnegate}}相对于{it:x}轴否定数据{p_end}
{synopt:{opt ynegate}}相对于{it:y}轴否定数据{p_end}
{synopt:{opt autoaspect}}根据数据自动调整纵横比; 默认纵横比为1{p_end}
{synopt:{opt separate}}为行和列生成单独的图; 不能与 {opt rowover()} 一起使用{p_end}
{synopt:{opt nograph}}抑制图形{p_end}
{synopt:{opt table}}显示表格，显示主成分图坐标{p_end}

{syntab:行}
{synopt:{opth rowopts(biplot##rowopts:row_options)}}影响行（观察值）的呈现{p_end}
{synopt:{cmdab:row:}{ul:{it:#}}{opth opts:(biplot##rowopts:row_options)}}影响在第 {it:#} 组中定义的行（观察值）的呈现
{synopt:{opth rowlabel(varname)}}指定行（观察值）的标签变量{p_end}
{synopt:{opt norow}}抑制行点; 不能与 {cmd:rowover()} 一起使用{p_end}
{synopt :{cmdab:generate(}{it:{help newvar_zh:newvar_x}} {it:{help newvar_zh:newvar_y}}{cmd:)}}将主成分图坐标存储在变量 {it:newvar_x} 和 {it:newvar_y} 中{p_end}

{syntab:列}
{synopt:{opth colopts(biplot##colopts:col_options)}}影响列（变量）的呈现{p_end}
{synopt:{opt negcol}}在图形中包含负列（变量）箭头{p_end}
{synopt:{opth negcolopts(biplot##colopts:col_options)}}影响负列（变量）的呈现{p_end}
{synopt:{opt nocolumn}}抑制绘制列箭头{p_end}

{syntab:Y轴，X轴，标题，图例，总体}
{synopt:{it:twoway_options}}文档中任何选项，除了 {opt by()}，在{manhelpi twoway_options G-3}中记录{p_end}
{synoptline}
{p2colreset}{...}

{marker rowopts}{...}
{synoptset 29}{...}
{synopthdr:row_options}
{synoptline}
{synopt:{it:{help marker_options_zh}}}更改标记的外观（颜色、大小等）{p_end}
{synopt:{it:{help marker_label_options_zh}}}更改标记标签的外观或位置{p_end}
{synopt:{opt nolabel}}从图形中去除默认行（变量）标签{p_end}
{synopt:{opt name(name)}}覆盖行（观察值）给定的默认名称{p_end}
{synoptline}

{marker colopts}{...}
{synopthdr:col_options}
{synoptline}
{synopt:{it:{help twoway_pcarrow_zh:pcarrow_options}}}影响配对坐标箭头的呈现{p_end}
{synopt:{opt nolabel}}从图形中去除默认列（变量）标签{p_end}
{synopt:{opt name(name)}}覆盖列（变量）给定的默认名称{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元分析 > 主成分图}


{marker description}{...}
{title:描述}

{pstd}
{cmd:biplot}显示数据集的二维主成分图。主成分图同时显示观察值（行）和变量（列）的相对位置。观察值显示为标记符号（点），变量显示为箭头。观察值投影到两个维度，使观察值之间的距离大致得以保留。箭头之间角度的余弦值近似变量之间的相关性。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV biplotQuickstart:快速入门}

        {mansection MV biplotRemarksandexamples:备注和示例}

        {mansection MV biplotMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主选项}

{phang}{opth rowover(varlist)}
通过突出显示每组相同变量值的观察值来区分观察值（行）之间的组。默认情况下，图形中包含由组名组成的图例。 {cmd:rowover()} 不能与 {cmd:separate} 或 {cmd:norow} 一起使用。

{phang}{opt dim(# #)}
指定要显示的维度。例如，{cmd:dim(3 2)} 将第三维度（垂直）与第二维度（水平）绘制在一起。维度编号不能超过变量的数量。默认值为{cmd:dim(2 1)}。

{phang}{opt std}
生成标准化变量的主成分图，而不是集中变量的图。

{phang}{opt alpha(#)}
指定变量按lambda^{it:#}缩放，观察值按lambda^(1-{it:#})缩放，其中lambda为奇异值。要求0 <= {it:#} <= 1。最常用的值是0、0.5和1。默认值为{cmd:alpha(0.5)}，称为对称缩放主成分图或对称因式分解主成分图。使用{cmd:alpha(1)}的结果是主成分主成分图，也称为行保留度量（RPM）主成分图。使用{cmd:alpha(0)}的主成分图被称为列保留度量（CPM）主成分图。

{phang}{opt stretch(#)}
使箭头的长度乘以{it:#}。例如，{cmd:stretch(1)}将保持箭头的长度不变，{cmd:stretch(2)}将其长度加倍，而{cmd:stretch(0.5)}将其长度减半。

{phang}{opt mahalanobis}
意味着{cmd:alpha(0)}，并且点（观察值）的定位按sqrt(n-1)缩放，箭头（变量）的定位按1/sqrt(n-1)缩放。这种额外的缩放使观察值之间的距离从大致与马哈距离成比例转变为大致等于马哈距离。此外，变量之间的内积近似它们的协方差。

{phang}{opt xnegate}
指定第1维度（{it:x}轴）值被否定（乘以-1）。

{phang}{opt ynegate}
指定第2维度（{it:y}轴）值被否定（乘以-1）。

{marker autoaspect}{...}
{phang}{opt autoaspect}
指定自动根据将要绘制的数据范围调整纵横比。此选项可以使某些主成分图更易读。默认情况下，{cmd:biplot}使用1的纵横比，生成正方形图。一些主成分图在{it:y}轴方向上变化很小，使用{opt autoaspect}选项将更好地填充可用的图形空间，同时保持{it:x}和{it:y}轴距离的等效性。

{pmore}
作为{opt autoaspect}的替代选项，{it:twoway_option}
{help aspect_option_zh:aspectratio()}可以被用来覆盖默认的纵横比。{cmd:biplot}将{cmd:aspectratio()}选项仅视为建议，并在必要时予以覆盖，以生成平衡轴的图；即，{it:x}轴的距离等于{it:y}轴的距离。

{pmore}
{it:{help twoway_options_zh}}，例如{cmd:xlabel()}、{cmd:xscale()}、{cmd:ylabel()}和{cmd:yscale()}，应谨慎使用。这些{it:{help axis_options_zh}}会被接受，但可能会对纵横比产生意想不到的副作用。

{phang}{opt separate}
为行和列类别生成单独的图。默认是重叠绘制图。{cmd:separate}不能与{cmd:rowover()}一起使用。

{phang}{opt nograph}
抑制图形的显示。

{phang}{opt table}
显示一张包含主成分图坐标的表格。

{dlgtab:行}

{phang}{opt rowopts(row_options)}
影响绘制行（观察值）点的呈现。此选项不能与{cmd:rowover()}一起使用。允许以下{it:row_options}：

{phang2}
{it:marker_options}
影响绘制在绘制点处的标记的呈现，包括其形状、大小、颜色和轮廓；参见{manhelpi marker_options G-3}。

{phang2}
{it:marker_label_options}
指定标记标签的属性；参见{manhelpi marker_label_options G-3}。
在{opt rowopts()}中的 {opt mlabel()} 不能与 {opt rowlabel()}选项一起使用。

{phang2}
{opt nolabel}
从图中移除默认的行标签。

{phang2}
{opt name(name)}
覆盖行的默认名称。

{phang}
{opt row}{it:#}{opt opts(row_options)}影响在 {cmd:rowover()} 中定义的第{it:#}组（观察值）的呈现。此选项需要指定{cmd:rowover()}。有关允许的{it:row_options}，请参见上面的{cmd:rowopts()}，但不允许与{opt row}{it:#}{opt opts()}一起使用{cmd:mlabel()}。

{phang}
{opth rowlabel(varname)}
指定行（观察值）的标签变量。

{phang}{opt norow}
抑制绘制行点。此选项不能与{cmd:rowover()}一起使用。

{phang}
{cmd:generate(}{it:{help newvar_zh:newvar_x}} {it:newvar_y}{cmd:)}
将行的主成分图坐标存储在变量{it:newvar_x}和{it:newvar_y}中。

{dlgtab:列}

{phang}{opt colopts(col_options)}
影响绘制列（变量）的箭头和点的呈现。允许以下{it:col_options}：

{phang2}
{it:pcarrow_options}
影响配对坐标箭头的呈现；参见{manhelp twoway_pcarrow G-2:graph twoway pcarrow}。

{phang2}
{opt nolabel}
从图中移除默认的列标签。

{phang2}
{opt name(name)}
覆盖列的默认名称。

{phang}{opt negcol}
在图中包含负列（变量）箭头。

{phang}{opt negcolopts(col_options)}
影响负列（变量）的箭头和点的呈现。允许的{it:col_options}在{help biplot##colopts:above}中给出。

{phang}{opt nocolumn}
抑制绘制列箭头。

{dlgtab:Y轴，X轴，标题，图例，总体}

{phang}{it:twoway_options}
是{manhelpi twoway_options G-3}中记录的任何选项，除了{cmd:by()}。这些选项包括图形标题（见{manhelpi title_options G-3}）和将图形保存到磁盘的选项（见{manhelpi saving_option G-3}）。有关在上述{helpb biplot##autoaspect:autoaspect}中警告使用选项，如{cmd:xlabel()}、{cmd:xscale()}、{cmd:ylabel()}和{cmd:yscale()}。

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse renpainters}

{pstd}10位文艺复兴画家的四个属性的主成分图{p_end}
{phang2}{cmd:. biplot composition-expression, alpha(1) stretch(10) table}
	{cmd:rowlabel(painter) rowopts(name(Painters))}
	{cmd:colopts(name(Attributes))}
	{cmd:title(Renaissance painters) autoaspect}

{pstd}与上述相同，但突出显示具有相同色彩属性分数的观察值{p_end}
{phang2}{cmd:. biplot composition-expression, alpha(1) stretch(10) table}
        {cmd:rowover(colour) rowlabel(painter)}
        {cmd:colopts(name(Attributes))}
        {cmd:title(Renaissance painters) autoaspect}

{pstd}与上述相同，但使用定义的名称并抑制标记标签{p_end}
{phang2}{cmd:. biplot composition-expression, alpha(1) stretch(10) table}
        {cmd:rowover(colour)}
        {cmd:row1opts(name("Color score: 4") nolabel)}
        {cmd:row2opts(name("Color score: 7") nolabel)}
        {cmd:row3opts(name("Color score: 8") nolabel)}
        {cmd:row4opts(name("Color score: 9") nolabel)}
        {cmd:row5opts(name("Color score: 10") nolabel)}
        {cmd:row6opts(name("Color score: 12") nolabel)}
        {cmd:row7opts(name("Color score: 16") nolabel)}
        {cmd:colopts(name(Attributes))}
        {cmd:title(Renaissance painters) autoaspect}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:biplot} 在{cmd:r()}中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(rho1)}}组件1的解释方差{p_end}
{synopt:{cmd:r(rho2)}}组件2的解释方差{p_end}
{synopt:{cmd:r(rho)}}总解释方差{p_end}
{synopt:{cmd:r(alpha)}}{cmd:alpha()}选项值{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(U)}}观察值的主成分图坐标; 仅在行维度不超过Stata的最大矩阵大小时存储; 替代方法是使用{cmd:generate()}将观察值的主成分图坐标存储在变量中{p_end}
{synopt:{cmd:r(V)}}变量的主成分图坐标{p_end}
{synopt:{cmd:r(Vstretch)}}乘以{cmd:stretch()}因子的变量主成分图坐标{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <biplot.sthlp>}