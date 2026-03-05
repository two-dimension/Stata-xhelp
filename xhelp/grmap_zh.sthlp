{smcl}
{* *! version 1.0.10  16apr2019}{...}
{vieweralsosee "[SP] grmap" "mansection SP grmap"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] spcompress" "help spcompress_zh"}{...}
{viewerjumpto "Attribution" "grmap_zh##attribution"}{...}
{viewerjumpto "Syntax" "grmap_zh##syntax"}{...}
{viewerjumpto "Menu" "grmap_zh##menu"}{...}
{viewerjumpto "Description" "grmap_zh##desc"}{...}
{viewerjumpto "Options" "grmap_zh##options"}{...}
{viewerjumpto "Examples" "grmap_zh##examples"}{...}
{viewerjumpto "References" "grmap_zh##references"}
{help grmap:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[SP] grmap} {hline 2}}空间数据可视化{p_end}
{p2col:}({mansection SP grmap:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker attribution}{...}
{title:归属}

{pstd}
{cmd:grmap} 是用户社区贡献的软件。
它是基于 Pisati 的 {help grmap##P2007:(2007)} {cmd:spmap} 命令进行调整的，
而该命令则是在他的 {cmd:tmap} 命令之后推出的（{help grmap##P2004:Pisati 2004}）。
要使用 {cmd:grmap}，请通过单击或输入
{bf:{stata grmap, activate}} 来激活它。


{marker syntax}{...}
{title:语法}

{phang}基本语法

{p 8 15 2}
{cmd:grmap} [{help grmap##choromap:{it:attribute}}] {ifin}
[{cmd:,}
{it:{help grmap##basemap1:basemap_options}}
{it:{help grmap##supplots:supplots}}]


{phang}面板数据语法

{p 8 15 2}
{cmd:grmap} [{help grmap##choromap:{it:attribute}}] {ifin}{cmd:,}
{opt t(#)}
[{it:{help grmap##basemap1:basemap_options}}
{it:{help grmap##supplots:supplots}}]


{synoptset 35}{...}
{synopthdr:{help grmap##panel2:panel_data_option}{col 41}}
{synoptline}
{synopt :{opt t(#)}}选择面板数据中的时间 {it:#}{p_end}
{synoptline}

{synoptset 35 tabbed}{...}
{marker basemap1}{synopthdr:{help grmap##basemap2:basemap_options}{col 41}}
{synoptline}
{syntab: 统计图}
{synopt :{cmdab:a:rea(}{help varname_zh:{it:areavar}}{cmd:)}}绘制区域与变量 {it:areavar} 成比例的基础地图
   多边形{p_end}
{synopt :{opt split}}分割多部分基础地图多边形{p_end}
{synopt :{cmdab:m:ap(}{help grmap##spatdata:{it:backgroundmap}}{cmd:)}} 绘制
   在 Stata 数据集中定义的背景地图 {it:backgroundmap}{p_end}
{synopt :{opth mfc:olor(colorstyle)}}背景地图的填充颜色{p_end}
{synopt :{opth moc:olor(colorstyle)}}背景地图的轮廓颜色{p_end}
{synopt :{opth mos:ize(linewidthstyle)}}背景地图的轮廓厚度{p_end}
{synopt :{opth mop:attern(linepatternstyle)}}背景地图的轮廓图案{p_end}
{synopt :{opth moa:lign(linealignmentstyle)}}背景地图的轮廓对齐（内部，
   外部，中心）{p_end}

{syntab: 分层地图}
{synopt :{opt clm:ethod(method)}}{it:attribute} 分类方法，其中
   {it:method} 是以下之一： {cmdab:q:uantile}, {cmdab:b:oxplot},
   {cmdab:e:qint}, {cmdab:s:tdev}, {cmdab:k:means}, {cmdab:c:ustom},
   {cmdab:u:nique}{p_end}
{synopt :{opt cln:umber(#)}}类别数量{p_end}
{synopt :{opth clb:reaks(numlist)}}自定义类区间{p_end}
{synopt :{opt eir:ange(min max)}}{it:attribute} {cmd:eqint} 分类方法
   的范围{p_end}
{synopt :{opt kmi:ter(#)}} {cmd:kmeans} 分类方法的迭代次数{p_end}
{synopt :{opth ndf:color(colorstyle)}}分布空白（无数据）
   基础地图多边形的填充颜色{p_end}
{synopt :{opth ndo:color(colorstyle)}}分布空白（无数据）
   基础地图多边形的轮廓颜色{p_end}
{synopt :{opth nds:ize(linewidthstyle)}}分布空白（无数据）
   基础地图多边形的轮廓厚度{p_end}
{synopt :{opth ndp:attern(linepatternstyle)}}分布空白（无数据）
   基础地图多边形的轮廓图案{p_end}
{synopt :{opth nda:lign(linealignmentstyle)}}分布空白（无数据）
   基础地图多边形的轮廓对齐（内部， 外部，中心）{p_end}
{synopt :{opt ndl:abel(string)}}分布空白（无数据）
   基础地图多边形的图例标签{p_end}

{syntab: 格式}
{synopt :{cmdab:fc:olor(}{help grmap##color:{it:colorlist}}{cmd:)}}填充颜色
   基础地图多边形{p_end}
{synopt :{cmdab:oc:olor(}{help grmap##color:{it:colorlist}}{cmd:)}}基础地图多边形的轮廓颜色{p_end}
{synopt :{cmdab:os:ize(}{it:{help linewidthstyle_zh}_list}{cmd:)}}基础地图多边形的轮廓厚度{p_end}
{synopt :{cmdab:op:attern(}{it:{help linepatternstyle_zh}_list}{cmd:)}}基础地图多边形的轮廓图案{p_end}
{synopt :{cmdab:oa:lign(}{it:{help linealignmentstyle_zh}_list}{cmd:)}}基础地图多边形的轮廓对齐（内部， 外部，中心）{p_end}

{syntab: 图例}
{synopt :{cmdab:legenda(on}|{cmd:off)}}显示/隐藏基础地图图例{p_end}
{synopt :{opt legt:itle(string)}}基础地图图例标题{p_end}
{synopt :{opt legl:abel(string)}}单键基础地图图例标签{p_end}
{synopt :{cmdab:lego:rder(hilo}|{cmd:lohi)}}基础地图图例顺序{p_end}
{synopt :{cmdab:legs:tyle(0}|{cmd:1}|{cmd:2}|{cmd:3)}}基础地图图例
   样式{p_end}
{synopt :{opt legj:unction(string)}}字符串连接基础地图图例标签中
   的上下级限制，当 {cmd:legstyle(2)} 时才有效{p_end}
{synopt :{opt legc:ount}}显示属于每个类别的基础地图多边形的数量{p_end}

{syntab: 杂项}
{synopt :{opt polyfirst}}在基础地图之前绘制补充多边形{p_end}
{synopt :{opt gs:ize(#)}}{it:available area} 的最短边的长度（以英寸为单位）{p_end}
{synopt :{opt free:style}}忽略内置图形格式设置预设和限制{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}任何 
选项在 {manhelpi twoway_options G-3} 文档中都有说明，除了
   {cmd:aspectratio()}, {cmd:scheme()}, {cmd:by()}，和
   {it:advanced_options}{p_end}
{synoptline}

{synoptset 35 tabbed}{...}
{marker supplots}{synopthdr:补充映射数据}
{synoptline}
{syntab: 追加数据}
{synopt :{cmdab:pol:ygon(}{help grmap##polygon1:{it:polygon_suboptions}}{cmd:)}}从补充数据集中添加 {it:{help grmap##sd_polygon:polygons}}{p_end}
{synopt :{cmdab:lin:e(}{help grmap##line1:{it:line_suboptions}}{cmd:)}}从补充数据集中添加 {it:{help grmap##sd_line:lines}}{p_end}
{synopt :{cmdab:poi:nt(}{help grmap##point1:{it:point_suboptions}}{cmd:)}}从补充数据集中添加 {it:{help grmap##sd_point:points}}{p_end}
{synopt :{cmdab:dia:gram(}{help grmap##diagram1:{it:diagram_suboptions}}{cmd:)}}从补充数据集中添加 {it:{help grmap##sd_diagram:diagrams}}{p_end}
{synopt :{cmdab:arr:ow(}{help grmap##arrow1:{it:arrow_suboptions}}{cmd:)}}从补充数据集中添加 {it:{help grmap##sd_arrow:arrows}}{p_end}
{synopt :{cmdab:lab:el(}{help grmap##label1:{it:label_suboptions}}{cmd:)}}从补充数据集中添加 {it:{help grmap##sd_label:labels}}{p_end}
{synopt :{cmdab:sca:lebar(}{help grmap##scalebar1:{it:scalebar_suboptions}}{cmd:)}}添加 {it:scalebar}{p_end}
{synoptline}

{synoptset 35 tabbed}{...}
{marker polygon1}{synopthdr:{help grmap##polygon2:polygon_suboptions}{col 41}}
{synoptline}
{syntab: 主要}
{p2coldent :* {cmdab:d:ata(}{help grmap##spatdata:{it:polygon}{bf:.dta}}{cmd:)}}Stata
   数据集定义一个或多个补充多边形，叠加在基础地图上{p_end}
{synopt :{cmdab:s:elect(}{help drop_zh:{it:command}}{cmd:)}}保留/删除数据集 {it:polygon} 的指定记录{p_end}
{synopt :{cmdab:by(}{help varname_zh:{it:byvar_pl}}{cmd:)}}通过变量 {it:byvar_pl} 对补充多边形进行分组{p_end}

{syntab: 格式}
{synopt :{cmdab:fc:olor(}{help grmap##color:{it:colorlist}}{cmd:)}}补充多边形的填充颜色{p_end}
{synopt :{cmdab:oc:olor(}{help grmap##color:{it:colorlist}}{cmd:)}}补充多边形的轮廓颜色{p_end}
{synopt :{cmdab:os:ize(}{it:{help linewidthstyle_zh}_list}{cmd:)}}补充多边形的轮廓厚度{p_end}
{synopt :{cmdab:op:attern(}{it:{help linepatternstyle_zh}_list}{cmd:)}}补充多边形的轮廓图案{p_end}
{synopt :{cmdab:oa:lign(}{it:{help linealignmentstyle_zh}_list}{cmd:)}}补充多边形的轮廓对齐（内部，外部，中心）{p_end}

{syntab: 图例}
{synopt :{cmdab:legenda(on}|{cmd:off)}}显示/隐藏补充多边形图例{p_end}
{synopt :{opt legt:itle(string)}}补充多边形图例标题{p_end}
{synopt :{opt legl:abel(string)}}单键补充多边形图例标签{p_end}
{synopt :{opth legs:how(numlist)}}仅显示补充多边形图例中所选关键字{p_end}
{synopt :{opt legc:ount}}显示属于每个组的补充多边形数量{p_end}
{synoptline}
{p 4 6 2}* 当指定选项 {cmd:polygon()} 时为必须{p_end}

{synoptset 35 tabbed}{...}
{marker line1}{synopthdr:{help grmap##line2:line_suboptions}{col 41}}
{synoptline}
{syntab: 主要}
{p2coldent :* {cmdab:d:ata(}{help grmap##spatdata:{it:line}{bf:.dta}}{cmd:)}}Stata
   数据集定义一个或多个多条线，叠加在基础地图上{p_end}
{synopt :{cmdab:s:elect(}{help drop_zh:{it:command}}{cmd:)}}保留/删除数据集 {it:line} 的指定记录{p_end}
{synopt :{cmdab:by(}{help varname_zh:{it:byvar_ln}}{cmd:)}}通过变量 {it:byvar_ln} 对多条线进行分组{p_end}

{syntab: 格式}
{synopt :{cmdab:co:lor(}{help grmap##color:{it:colorlist}}{cmd:)}}多条线的颜色{p_end}
{synopt :{cmdab:si:ze(}{it:{help linewidthstyle_zh}_list}{cmd:)}}多条线的厚度{p_end}
{synopt :{cmdab:pa:ttern(}{it:{help linepatternstyle_zh}_list}{cmd:)}}多条线的图案{p_end}

{syntab: 图例}
{synopt :{cmdab:legenda(on}|{cmd:off)}}显示/隐藏多条线图例{p_end}
{synopt :{opt legt:itle(string)}}多条线图例标题{p_end}
{synopt :{opt legl:abel(string)}}单键多条线图例标签{p_end}
{synopt :{opth legs:how(numlist)}}仅显示多条线图例中所选关键字{p_end}
{synopt :{opt legc:ount}}显示属于每个组的多条线数量{p_end}
{synoptline}
{p 4 6 2}* 当指定选项 {cmd:line()} 时为必须{p_end}

{synoptset 35 tabbed}{...}
{marker point1}{synopthdr:{help grmap##point2:point_suboptions}{col 41}}
{synoptline}
{syntab: 主要}
{synopt :{cmdab:d:ata(}{help grmap##spatdata:{it:point}{bf:.dta}}{cmd:)}}Stata
   数据集定义一个或多个点，叠加在基础地图上{p_end}
{synopt :{cmdab:s:elect(}{help drop_zh:{it:command}}{cmd:)}}保留/删除数据集 {it:point} 的指定记录{p_end}
{synopt :{cmdab:by(}{help varname_zh:{it:byvar_pn}}{cmd:)}}通过变量 {it:byvar_pn} 对点进行分组{p_end}
{p2coldent :* {cmdab:x:coord(}{help varname_zh:{it:xvar_pn}}{cmd:)}}包含点的 x 坐标的变量{p_end}
{p2coldent :* {cmdab:y:coord(}{help varname_zh:{it:yvar_pn}}{cmd:)}}包含点的 y 坐标的变量{p_end}

{syntab: 成比例大小}
{synopt :{cmdab:prop:ortional(}{help varname_zh:{it:propvar_pn}}{cmd:)}}请求将点标记绘制为与变量 {it:propvar_pn} 的值成比例的大小{p_end}
{synopt :{opt pr:ange(min max)}}请求使用范围 [{it:min}, {it:max}] 对指定于子选项 {opt proportional(propvar_pn)} 的变量 {it:propvar_pn} 进行归一化。此子选项覆盖默认的基于范围 [0, max({it:propvar_pn})] 的归一化{p_end}
{synopt :{cmd:ps:ize(relative}|{cmd:absolute)}}绘制点标记的参考系统{p_end}

{syntab: 偏差}
{synopt :{cmdab:dev:iation(}{help varname_zh:{it:devvar_pn}}{cmd:)}}请求将点标记绘制为与指定的变量 {it:devvar_pn} 的参考值的偏差{p_end}
{synopt :{cmd:refv:al(}{cmd:mean}|{cmd:median}|{it:#}{cmd:)}指定变量 {it:devvar_pn} 的参考值{p_end}
{synopt :{cmd:refw:eight(}{help varname_zh:{it:weightvar_pn}}{cmd:)}}请求按变量 {it:weightvar_pn} 加权观察值计算变量 {it:devvar_pn} 的参考值{p_end}
{synopt :{opt dm:ax(#)}}请求使用值 {it:#} 作为最大绝对偏差{p_end}

{syntab: 格式}
{synopt :{cmdab:si:ze(}{it:{help markersizestyle_zh}_list}{cmd:)}指明点标记的大小{p_end}
{synopt :{cmdab:sh:ape(}{it:{help symbolstyle_zh}_list}{cmd:)}指明点标记的形状{p_end}
{synopt :{cmdab:fc:olor(}{help grmap##color:{it:colorlist}}{cmd:)}指明点标记的填充颜色{p_end}
{synopt :{cmdab:oc:olor(}{help grmap##color:{it:colorlist}}{cmd:)}指明点标记的轮廓颜色{p_end}
{synopt :{cmdab:os:ize(}{it:{help linewidthstyle_zh}_list}{cmd:)}指明点标记的轮廓厚度{p_end}

{syntab: 图例}
{synopt :{cmdab:legenda(on}|{cmd:off)}}显示/隐藏点图例{p_end}
{synopt :{opt legt:itle(string)}}点图例标题{p_end}
{synopt :{opt legl:abel(string)}}单键点图例标签{p_end}
{synopt :{opth legs:how(numlist)}}仅显示点图例中所选关键字{p_end}
{synopt :{opt legc:ount}}显示属于每个组的点的数量{p_end}
{synoptline}
{p 4 6 2}* 当指定选项 {cmd:point()} 时为必须{p_end}

{synoptset 35 tabbed}{...}
{marker diagram1}{synopthdr:{help grmap##diagram2:diagram_suboptions}{col 41}}
{synoptline}
{syntab: 主要}
{synopt :{cmdab:d:ata(}{help grmap##spatdata:{it:diagram}{bf:.dta}}{cmd:)}}Stata
   数据集定义一个或多个图表，叠加在给定的参考点的基础地图上{p_end}
{synopt :{cmdab:s:elect(}{help drop_zh:{it:command}}{cmd:)}}保留/删除数据集 {it:diagram} 的指定记录{p_end}
{synopt :{cmdab:by(}{help varname_zh:{it:byvar_dg}}{cmd:)}}通过变量 {it:byvar_dg} 对图表进行分组{p_end}
{p2coldent :* {cmdab:x:coord(}{help varname_zh:{it:xvar_dg}}{cmd:)}}包含图表参考点的 x 坐标的变量{p_end}
{p2coldent :* {cmdab:y:coord(}{help varname_zh:{it:yvar_dg}}{cmd:)}}包含图表参考点的 y 坐标的变量{p_end}
{p2coldent :* {cmdab:v:ariables(}{help varlist_zh:{it:diagvar_dg}}{cmd:)}}要由图表表示的变量{p_end}
{synopt :{cmdab:t:ype(frect}|{cmd:pie)}}图表类型{p_end}

{syntab: 成比例大小}
{synopt :{cmdab:prop:ortional(}{help varname_zh:{it:propvar_dg}}{cmd:)}}请求绘制面积比例与变量 {it:propvar_dg} 成比例的图表{p_end}
{synopt :{opt prange(min max)}}请求对子选项 {opt proportional(propvar_dg)} 中指定的变量 {it:propvar_dg} 进行基于范围 [{it:min}, {it:max}] 的归一化。此子选项覆盖默认的基于范围 [0, max({it:propvar_dg})] 的归一化{p_end}

{syntab: 带框矩形图}
{synopt :{opt range(min max)}}请求对在子选项 {opt variables(diagvar_dg)} 中指定的变量 {it:diagvar_dg} 进行基于范围 [{it:min}, {it:max}] 的归一化。此子选项覆盖默认的基于范围 [0, max({it:diagvar_dg})] 的归一化{p_end}
{synopt :{cmd:refval(}{cmd:mean}|{cmd:median}|{it:#}{cmd:)}指定用于绘制参考线的变量 {it:diagvar_dg} 的参考值{p_end}
{phang2}{cmd:refval(mean)} 是默认值，表示取变量 {it:diagvar_dg} 的算术平均数作为参考值。{p_end}
{phang2}{cmd:refval(median)} 指定取变量 {it:diagvar_dg} 的中位数作为参考值。{p_end}
{phang2}{cmd:refval(}{it:#}{cmd:)} 请求将任意实值 {it:#} 作为参考值。{p_end}

{phang}
{cmdab:refweight(}{help varname_zh:{it:weightvar_dg}}{cmd:)} 请求按变量 {it:weightvar_dg} 的值加权观察值，计算变量 {it:diagvar_dg} 的参考值{p_end}
{phang}
{opth refcolor(colorstyle)}指定参考线的颜色。默认值为 {cmd:refcolor(black)}。
{phang}
{opth refsize(linewidthstyle)} 指定参考线的厚度。默认值为 {cmd:refsize(medium)}。

{dlgtab: 格式}

{phang}
{opt size(#)} 指定一个乘数，该乘数影响图表的大小。例如，{cmd:size(1.5)} 请求增大所有图表的默认大小 50%。默认值为 {cmd:size(1)}。

{phang}
{cmdab:fcolor(}{help grmap##color:{it:colorlist}}{cmd:)} 指定所绘制图表的填充颜色列表。当在子选项 {opt variables(diagvar_dg)} 中仅指定一个变量且未指定子选项 {opt by(byvar_dg)} 时，列表应仅包含一个元素。当在子选项 {opt variables(diagvar_dg)} 中仅指定一个变量且已指定子选项 {opt by(byvar_dg)} 时，该列表应包含 {it:kdg} 元素或表示预定义 {help grmap##colorscheme:color scheme} 的名称。最后，当在子选项 {opt variables(diagvar_dg)} 中指定 {it:J}>1 个变量时，该列表应包含 {it:J} 元素或表示预定义 {help grmap##colorscheme:color scheme} 的名称。默认填充颜色为 {cmd:black}，当{it:J}=1 时的默认规格为 {cmd:fcolor(black{space 1}...)}, 当 {it:J}>1 时的默认规格为 {cmd:fcolor(red blue orange green lime navy sienna ltblue}
{cmd:cranberry emerald eggshell magenta olive brown yellow dkgreen)}。

{phang}
{cmdab:ocolor(}{help grmap##color:{it:colorlist}}{cmd:)} 指定轮廓颜色列表。当在子选项 {opt variables(diagvar_dg)} 中仅指定一个变量且未指定子选项 {opt by(byvar_dg)} 时，列表应仅包含一个元素。当在子选项 {opt variables(diagvar_dg)} 中仅指定一个变量且已指定子选项 {opt by(byvar_dg)} 时，该列表应包含 {it:kdg} 元素或表示预定义 {help grmap##colorscheme:color scheme} 的名称。最后，当在子选项 {opt variables(diagvar_dg)} 中指定 {it:J}>1 个变量时，该列表应包含 {it:J} 元素或表示预定义 {help grmap##colorscheme:color scheme} 的名称。默认填充颜色为 {cmd:black}; 默认规格为 {cmd:ocolor(black{space 1}...)}。

{phang}
{cmdab:osize(}{it:{help linewidthstyle_zh}_list}{cmd:)} 指定挤压的厚度列表。当在子选项
{opt variables(diagvar_dg)} 中指定的变量较少时。

{dlgtab: 图例}

{phang}
{cmdab:legenda(on}|{cmd:off)} 指定图例显示与否。

{phang2}{cmd:legenda(on)} 请求显示；{p_end}
{phang2}{cmd:legenda(off)} 是默认设置并请求隐藏。{p_end}

{phang}
{opt legtitle(string)} 指定图例标题；{p_end}

{marker scalebar2}{title:选项 scalebar() 子选项}

{dlgtab: 主要}

{phang}
{opt units(#)} 指定比例条的长度，以任意单位表示用。

{phang}
{opt scale(#)} 指定比例条单位与地图单位的比例。例如，假设地图坐标以米表示：如果比例条长度也要以米表示，则比例条单位与地图单位的比例将为 1; 另一方面，如果比例条长度要以公里表示，则比例条单位与地图单位的比例将为 1/1000。默认值为 {cmd:scale(1)}。

{phang}
{opt xpos(#)} 指定比例条相对于 {help region_options_zh:plot region} 中心的水平位置，单位为
   plot region 的宽度的一半的百分比。正值请求从中央向右计算，负值请求从中央向左计算。默认值为 {cmd:xpos(0)}。

{phang}
{opt ypos(#)} 指定比例条相对于 {help region_options_zh:plot region} 中心的垂直位置，单位为
   plot region 的高度的一半的百分比。正值请求从中央向上计算，负值请求从中央向下计算。默认值为 {cmd:ypos(-110)}。

{dlgtab: 格式}

{phang}
{opt size(#)} 指定一个乘数，该乘数影响比例条的高度。例如，{cmd:size(1.5)} 请求增大比例条的默认高度 50%。默认值为 {cmd:size(1)}。

{phang}
{opth fcolor(colorstyle)} 指定比例条的填充颜色。默认值为 {cmd:fcolor(black)}。

{phang}
{opth ocolor(colorstyle)} 指定比例条的轮廓颜色。默认值为 {cmd:ocolor(black)}。

{phang}
{opth osize(linewidthstyle)} 指定比例条的轮廓厚度。默认值为 {cmd:osize(vthin)}。

{phang}
{opt label(string)} 指定比例条的描述性标签。默认值为 {cmd:label(Units)}。

{phang}
{opth oalign(linealignmentstyle)} 指定比例条的内部，外部，或居中。默认值为 {cmd:oalign(center)}。

{phang}
{opth tcolor(colorstyle)} 指定比例条文本的颜色。默认值为 {cmd:tcolor(black)}。

{phang}
{opth tsize(textsizestyle)} 指定比例条文本的大小。默认值为 {cmd:tsize(*1)}。

{phang}
{opth talign(linealignmentstyle)} 指定比例条文本是绘制在内部、外部还是居中。默认值为 {cmd:talign(center)}。{reset}

{marker graph2}{title:图形选项}

{dlgtab: 主要}

{phang}
{opt polyfirst} 请求在基础地图之前绘制选取的多边形。默认情况下，基础地图会在所有其他空间对象之前绘制。

{phang}
{opt gsize(#)} 指定图形 {it:available area} 的最短边的长度（以英寸为单位）。
   （最长边的长度由 {cmd:grmap} 内部设置以减少地图周围的空白空间）。默认值在 1 到 4 之间，取决于地图的纵横比。或者，可以使用标准的
   {bf:{help region_options_zh:xsize()}} 和 {bf:{help region_options_zh:ysize()}} 选项设置图形 {it:available area} 的高度和宽度。

{phang}
{opt freestyle} 请求在绘图时忽略所有内置 {cmd:grmap} 中的格式预设和限制。
   默认情况下，{cmd:grmap} 预设某些图形选项的值并限制其他选项的使用，以便自动生成“良好”的图形。如指定选项 {cmd:freestyle} 会使用户失去这个特性，但能获得对大多数图形格式选项的完全控制。

{phang}
{it:{help twoway_options_zh}} 包括在 {bind:{bf:[G] {it:twoway_options}}} 中文档化的所有选项，除了
   {it:aspect_option}，{it:scheme_option}，{it:by_option}，和
   {it:advanced_options}。这些包括 {it:{help added_line_options_zh}}， {it:{help added_text_options_zh}}， {it:{help axis_options_zh}}，
   {it:{help title_options_zh}}， {it:{help legend_option}}，
   和 {it:{help region_options_zh}}，以及选项 {bf:{help nodraw_option_zh:nodraw}}，
   {bf:{help name_option_zh:name()}}，和 {bf:{help saving_option_zh:saving()}}。当指定选项 {cmd:freestyle} 时，也可能控制
   {it:{help aspect_option_zh}} 和 {it:{help scheme_option_zh}}。

{marker examples}{...}
{title:示例}

{pstd}
要使用 {bf:grmap}，请通过单击或输入
{bf:{stata grmap, activate}} 激活它。

{pstd}
单击 {stata grmap_copy:这里} 获取以下示例中使用的所有数据集的副本。
这些数据集将放入当前工作目录中。

{title:示例 1: 统计图}
{cmd}
    . use "italy-regionsdata.dta", clear
    . grmap relig1

    . use "italy-regionsdata.dta", clear
    . grmap relig1,                                                      ///
        title("百分比 （无保留的天主教徒）", size(*0.8))         ///
        subtitle("意大利，1994-98" " ", size(*0.8))                       

    . use "italy-regionsdata.dta", clear
    . grmap relig1,                                                      ///
        title("百分比 （无保留的天主教徒）", size(*0.8))         ///
        subtitle("意大利，1994-98" " ", size(*0.8))                       ///
        legstyle(2) legend(region(lcolor(black)))                        

    . use "italy-regionsdata.dta", clear
    . grmap relig1m,                                                     ///
        ndfcolor(red)                                                    ///
        title("百分比 （无保留的天主教徒）", size(*0.8))         ///
        subtitle("意大利，1994-98" " ", size(*0.8))                       ///
        legstyle(2) legend(region(lcolor(black)))                        

    . use "italy-regionsdata.dta", clear
    . grmap relig1,                                                      ///
        clmethod(eqint) clnumber(5) eirange(20 70)                       ///
        title("百分比 （无保留的天主教徒）", size(*0.8))         ///
        subtitle("意大利，1994-98" " ", size(*0.8))                       ///
        legstyle(2) legend(region(lcolor(black)))                        

    . use "italy-regionsdata.dta", clear
    . grmap relig1,                                                      ///
        clnumber(20) fcolor(Reds2) ocolor(none ..)                       ///
        title("百分比 （无保留的天主教徒）", size(*0.8))         ///
        subtitle("意大利，1994-98" " ", size(*0.8))                       ///
        legstyle(3)                                                      

    . use "italy-regionsdata.dta", clear
    . grmap relig1,                                                      ///
        clnumber(20) fcolor(Reds2) ocolor(none ..)                       ///
        title("百分比 （无保留的天主教徒）", size(*0.8))         ///
        subtitle("意大利，1994-98" " ", size(*0.8))                       ///
        legstyle(3) legend(ring(1) position(3))                          

    . use "italy-regionsdata.dta", clear
    . grmap relig1,                                                      ///
        clnumber(20) fcolor(Reds2) ocolor(none ..)                       ///
        title("百分比 （无保留的天主教徒）", size(*0.8))         ///
        subtitle("意大利，1994-98" " ", size(*0.8))                       ///
        legstyle(3) legend(ring(1) position(3))                          ///
        plotregion(margin(vlarge))                                       

    . use "italy-regionsdata.dta", clear
    . grmap relig1,                                                      ///
        clnumber(20) fcolor(Reds2) ocolor(none ..)                       ///
        title("百分比 （无保留的天主教徒）", size(*0.8))         ///
        subtitle("意大利，1994-98" " ", size(*0.8))                       ///
        legstyle(3) legend(ring(1) position(3))                          ///
        plotregion(icolor(stone)) graphregion(icolor(stone))

    . use "italy-regionsdata.dta", clear
    . grmap relig1,                                                      ///
        clnumber(20) fcolor(Greens2) ocolor(white ..) osize(medthin ..)  ///
        title("百分比 （无保留的天主教徒）", size(*0.8))         ///
        subtitle("意大利，1994-98" " ", size(*0.8))                       ///
        legstyle(3) legend(ring(1) position(3))                          ///
        plotregion(icolor(stone)) graphregion(icolor(stone))

    . use "italy-regionsdata.dta", clear
    . grmap relig1,                                                      ///
        clnumber(20) fcolor(Greens2) ocolor(white ..) osize(thin ..)     ///
        title("百分比 （无保留的天主教徒）", size(*0.8))         ///
        subtitle("意大利，1994-98" " ", size(*0.8))                       ///
        legstyle(3) legend(ring(1) position(3))                          ///
        plotregion(icolor(stone)) graphregion(icolor(stone))             ///
        polygon(data("italy-highlights.dta") ocolor(white)               ///
        osize(medthick))

    . use "italy-regionsdata.dta", clear
    . grmap relig1,                                                      ///
      clnumber(20) fcolor(Greens2) ocolor(white ..) osize(medthin ..)    ///
      title("百分比 （无保留的天主教徒）", size(*0.8))           ///
      subtitle("意大利，1994-98" " ", size(*0.8))                       ///
      legstyle(3) legend(ring(1) position(3))                          ///
      plotregion(icolor(stone)) graphregion(icolor(stone))               ///
      scalebar(units(500) scale(1/1000) xpos(-100) label(公里))
{reset}

{title:示例 2: 成比例符号地图}
{cmd}
    . use "italy-outlinedata.dta", clear
    . grmap,                                                             ///
        title("百分比 （无保留的天主教徒）", size(*0.8))         ///
        subtitle("意大利，1994-98" " ", size(*0.8))                       ///
        point(data("italy-regionsdata.dta") xcoord(xcoord)               ///
        ycoord(ycoord) proportional(relig1) fcolor(red) size(*1.5))

    . use "italy-outlinedata.dta", clear
    . grmap,                                                             ///
        title("百分比 （无保留的天主教徒）", size(*0.8))         ///
        subtitle("意大利，1994-98" " ", size(*0.8))                       ///
        point(data("italy-regionsdata.dta") xcoord(xcoord)               ///
        ycoord(ycoord) proportional(relig1) fcolor(red)                  ///
        shape(s))

    . use "italy-outlinedata.dta", clear
    . grmap,                                                             ///
        title("百分比 （无保留的天主教徒）", size(*0.8))         ///
        subtitle("意大利，1994-98" " ", size(*0.8))                       ///
        point(data("italy-regionsdata.dta") xcoord(xcoord)               ///
        ycoord(ycoord) proportional(relig1) fcolor(red)                  ///
        ocolor(white) size(*3))                                          ///
        label(data("italy-regionsdata.dta") xcoord(xcoord)               ///
        ycoord(ycoord) label(relig1) color(white) size(*0.7))

    . use "italy-outlinedata.dta", clear
    . grmap,                                                             ///
        title("百分比 （无保留的天主教徒）", size(*0.8))         ///
        subtitle("意大利，1994-98" " ", size(*0.8))                       ///
        point(data("italy-regionsdata.dta") xcoord(xcoord)               ///
        ycoord(ycoord) deviation(relig1) fcolor(red) dmax(30)            ///
        legenda(on) leglabel(偏差均值))

    . use "italy-outlinedata.dta", clear
    . grmap, fcolor(white)                                               ///
        title("无保留的天主教徒", size(*0.9) box bexpand               ///
        span margin(medsmall) fcolor(sand)) subtitle(" ")                ///
        point(data("italy-regionsdata.dta") xcoord(xcoord)               ///
        ycoord(ycoord) proportional(relig1) prange(0 70)                 ///
        psize(absolute) fcolor(red) ocolor(white) size(*0.6))            ///
        plotregion(margin(medium) color(stone))                          ///
        graphregion(fcolor(stone) lcolor(black))                         ///
        name(g1, replace) nodraw
    . grmap, fcolor(white)                                               ///
        title("有保留的天主教徒", size(*0.9) box bexpand              ///
        span margin(medsmall) fcolor(sand)) subtitle(" ")                ///
        point(data("italy-regionsdata.dta") xcoord(xcoord)               ///
        ycoord(ycoord) proportional(relig2) prange(0 70)                 ///
        psize(absolute) fcolor(green) ocolor(white) size(*0.6))          ///
        plotregion(margin(medium) color(stone))                          ///
        graphregion(fcolor(stone) lcolor(black))                         ///
        name(g2, replace) nodraw
    . grmap, fcolor(white)                                               ///
        title("其他", size(*0.9) box bexpand                            ///
        span margin(medsmall) fcolor(sand)) subtitle(" ")                ///
        point(data("italy-regionsdata.dta") xcoord(xcoord)               ///
        ycoord(ycoord) proportional(relig3) prange(0 70)                 ///
        psize(absolute) fcolor(blue) ocolor(white) size(*0.6))           ///
        plotregion(margin(medium) color(stone))                          ///
        graphregion(fcolor(stone) lcolor(black))                         ///
        name(g3, replace) nodraw
    . graph combine g1 g2 g3, rows(1) title("宗教倾向")                 ///
        subtitle("意大利，1994-98" " ") xsize(5) ysize(2.6)               ///
        plotregion(margin(medsmall) style(none))                         ///
        graphregion(margin(zero) style(none))                            ///
        scheme(s1mono)
{reset}

{title:示例 3: 其他地图}
{cmd}
    . use "italy-regionsdata.dta", clear
    . grmap, fcolor(stone)                                               ///
        title("百分比 （无保留的天主教徒）", size(*0.8))         ///
        subtitle("意大利，1994-98" " ", size(*0.8))                       ///
        diagram(variable(relig1) range(0 100) refweight(pop98)           ///
        xcoord(xcoord) ycoord(ycoord) fcolor(red))

    . use "italy-regionsdata.dta", clear
    . grmap, fcolor(stone)                                               ///
        diagram(variable(relig1 relig2 relig3) proportional(fortell)     ///
        xcoord(xcoord) ycoord(ycoord) legenda(on))                       ///
        legend(title("1998年人口", size(*0.5) bexpand                    ///
        justification(left)))                                            ///
        note(" "                                                         ///
        "注：图表大小与每百万居民的占星师数量成比例",                             ///
        size(*0.75))

    . use "italy-regionsdata.dta", clear
    . grmap,                                                             ///
        clmethod(stdev) clnumber(5)                                      ///
        title("无保留的天主教徒的比例", size(*0.8))         ///
        subtitle("意大利，1994-98" " ", size(*0.8))                       ///
        area(pop98)                                                      ///
        note(" "                                                         ///
        "注：区域大小与人口成比例", size(*0.75))

    . use "italy-regionsdata.dta", clear
    . grmap,                                                             ///
        clmethod(stdev) clnumber(5)                                      ///
        title("无保留的天主教徒的比例", size(*0.8))         ///
        subtitle("意大利，1994-98" " ", size(*0.8))                       ///
        area(pop98)                                                      ///
        map("italy-outlinecoordinates.dta") mfcolor(stone)               ///
        note(" "                                                         ///
        "注：区域大小与人口成比例", size(*0.75))

    . use "italy-outlinedata.dta", clear
    . grmap, fc(bluishgray)                                              ///
        ocolor(none)                                                     ///
        title("省会" " ", size(*0.9) color(white))                        ///
        point(data("italy-capitals.dta") xcoord(xcoord)                  ///
        ycoord(ycoord) fcolor(emerald))                                  ///
        plotregion(margin(medium) icolor(dknavy) color(dknavy))          ///
        graphregion(icolor(dknavy) color(dknavy))

    . use "italy-outlinedata.dta", clear
    . grmap, fc(bluishgray)                                              ///
        ocolor(none)                                                     ///
        title("省会" " ", size(*0.9) color(white))                        ///
        point(data("italy-capitals.dta") xcoord(xcoord)                  ///
        ycoord(ycoord) by(size) fcolor(orange red maroon) shape(s ..)    ///
        legenda(on))                                                     ///
        legend(title("1998年人口", size(*0.5) bexpand               ///
        justification(left)) region(lcolor(black) fcolor(white))         ///
        position(2))                                                     ///
        plotregion(margin(medium) icolor(dknavy) color(dknavy))          ///
        graphregion(icolor(dknavy) color(dknavy))

    . use "italy-outlinedata.dta", clear
    . grmap, fc(sand)                                                    ///
        title("主要湖泊和河流" " ", size(*0.9))                   ///
        polygon(data("italy-lakes.dta") fcolor(blue) ocolor(blue))       ///
        line(data("italy-rivers.dta") color(blue) )

    . use "italy-regionsdata.dta", clear
    . grmap relig1 if zone==1,                                           ///
        fcolor(Blues2) ocolor(white ..) osize(medthin ..)                ///
        title("百分比 （无保留的天主教徒）", size(*0.8))         ///
        subtitle("北部意大利，1994-98" " ", size(*0.8))              ///
        polygon(data("italy-outlinecoordinates.dta") fcolor(gs12)        ///
        ocolor(white) osize(medthin)) polyfirst

    . use "italy-outlinedata.dta", clear
    . grmap, fc(sand)                                                    ///
        title("主要湖泊和河流" " ", size(*0.9))                   ///
        polygon(data("italy-lakes.dta") fcolor(blue) ocolor(blue))       ///
        line(data("italy-rivers.dta") color(blue) )                      ///
        freestyle aspect(1.4) xlab(400000 900000 1400000, grid)
{reset}

{marker references}{...}
{title:参考文献}

{p 4 8 2}Armstrong, M.P., Xiao, N. and D.A. Bennett. 2003. 使用遗传
算法创建多标准类区间用于统计图。 {it:美国地理学会年报} 93: 595{c -}623.

{p 4 8 2}Brewer, C.A. 1999. 数据表示的颜色使用指南。 {it:统计学会发布的讨论部分}
{it: 图形，美国统计协会}. 弗吉尼亚州亚历山德里亚, 55{c -}60.

{p 4 8 2}Brewer, C.A., Hatchard, G.W. and M.A. Harrower. 2003. ColorBrewer
印刷：地图颜色方案目录。 {it:制图与地理}
{it: 信息科学} 30: 5{c -}32.

{p 4 8 2}Cleveland, W.S. 1994. {it:数据绘图元素}. Summit: Hobart
Press.

{p 4 8 2}Cleveland, W.S. and R. McGill. 1984. 图形感知：理论，
实验和应用于图形方法的开发。 {it:美国统计协会杂志} 79: 531{c -}554.

{p 4 8 2}Evans, I.S. 1977. 分类区间的选择。 {it:英国地理学会交易}
2: 98{c -}124.

{p 4 8 2}Olson, J.M. 1976. 非连续区域
统计图。 {it:专业地理学家} 28: 371{c -}380.

{marker P2004}{...}
{p 4 8 2}Pisati, M. 2004.
{browse "http://www.stata-journal.com/sjpdf.html?articlenum=gr0008":简单的主题制图}.
{it:Stata Journal} 4: 361{c -}378.

{marker P2007}{...}
{p 4 8 2}------. 2007.
spmap：用于可视化空间数据的 Stata 模块。统计软件
组件 S456812, 波士顿学院经济系。
{browse "https://ideas.repec.org/c/boc/bocode/s456812.html"}.

{p 4 8 2}Slocum, T.A., McMaster, R.B., Kessler, F.C 和
H.H. Howard. 2005. {it:主题制图和地理可视化}. 第2版. Upper Saddle River: Pearson Prentice Hall.

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <grmap.sthlp>}