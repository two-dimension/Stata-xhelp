{smcl}
{* *! version 1.4.8  16apr2019}{...}
{vieweralsosee "[G-3] axis_label_options" "mansection G-3 axis_label_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] axis_options" "help axis_options_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] axis_scale_options" "help axis_scale_options_zh"}{...}
{vieweralsosee "[G-3] axis_title_options" "help axis_title_options_zh"}{...}
{viewerjumpto "Syntax" "axis_label_options_zh##syntax"}{...}
{viewerjumpto "Description" "axis_label_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "axis_label_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "axis_label_options_zh##options"}{...}
{viewerjumpto "Suboptions" "axis_label_options_zh##suboptions"}{...}
{viewerjumpto "Remarks" "axis_label_options_zh##remarks"}
{help axis_label_options:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[G-3]} {it:axis_label_options} {hline 2}}指定坐标轴标签的选项{p_end}
{p2col:}({mansection G-3 axis_label_options:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{pstd}
{it:axis_label_options} 是 {it:axis_options} 的子集；请参见 
{manhelpi axis_options G-3}。{it:axis_label_options} 控制坐标轴上刻度和标签的放置及外观。

{synoptset 31}{...}
{p2col:{it:axis_label_options}} 描述{p_end}
{p2line}
{p2col:{c -(}{cmdab:y:}|{cmdab:x:}|{cmdab:t:}|{cmdab:z:}{c )-}{cmdab:lab:el:(}{it:rule_or_values}{cmd:)}}
	主刻度及标签{p_end}
{p2col:{c -(}{cmdab:y:}|{cmdab:x:}|{cmdab:t:}|{cmdab:z:}{c )-}{cmdab:ti:ck:(}{it:rule_or_values}{cmd:)}}
	仅主刻度{p_end}
{p2col:{c -(}{cmdab:y:}|{cmdab:x:}|{cmdab:t:}|{cmdab:z:}{c )-}{cmdab:mlab:el:(}{it:rule_or_values}{cmd:)}}
	次刻度及标签{p_end}
{p2col:{c -(}{cmdab:y:}|{cmdab:x:}|{cmdab:t:}|{cmdab:z:}{c )-}{cmdab:mti:ck:(}{it:rule_or_values}{cmd:)}}
	仅次刻度{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
以上选项为 {it:merged-explicit}；请参见
{manhelp repeated_options G-4:概念：重复选项}。

{pstd}
其中 {it:rule_or_values} 定义为：

{p 8 16 2}
[{it:rule}]
[{it:{help numlist_zh}} [{cmd:"}{it:label}{cmd:"} [{it:numlist}
[{cmd:"}{it:label}{cmd:"} [...]]]]]
[{cmd:,} {it:suboptions}]

{p 4 6 2}
必须指定 {it:rule} 或 {it:numlist}，并且可以同时指定两者。

    {it:rule}{col 14}示例{col 26}描述
    {hline 70}
    {cmd:#}{it:#}{...}
{col 14}{cmd:#6}{...}
{col 26}大约得到 6 个合适的数值
    {cmd:##}{it:#}{...}
{col 14}{cmd:##10}{...}
{col 26}在主要刻度之间的 10-1=9 个值；
{col 26}仅在 {cmd:mlabel()} 和 {cmd:mtick()} 中允许
    {it:#}{cmd:(}{it:#}{cmd:)}{it:#}{...}
{col 14}{cmd:-4(.5)3}{...}
{col 26}指定范围：-4 到 3，步长为0.5
    {cmd:minmax}{...}
{col 14}{cmd:minmax}{...}
{col 26}最小值和最大值
    {cmd:none}{...}
{col 14}{cmd:none}{...}
{col 26}不标记任何值
    {cmd:.}{...}
{col 14}{cmd:.}{...}
{col 26}跳过规则
    {hline 70}

{p 4 6 2}
以此类推，{it:numlist} 的描述与 {manhelp numlist U:11.1.8 numlist} 相同。

{p 4 6 2}
{cmd:tlabel()}, 
{cmd:ttick()},
{cmd:tmlabel()}，以及
{cmd:tmtick()} 也可以接受 {it:datelist} 和额外的 {it:rule}

    {it:rule}{col 18}示例{col 36}描述
    {hline 70}
    {it:date}{cmd:(}{it:#}{cmd:)}{it:date}{...}
{col 18}{cmd:1999m1(1)1999m12}{...}
{col 36}指定日期范围：每月
{col 38}假设坐标轴具有 {cmd:%tm} 格式
     {hline 70}

{p 4 6 2}
其中 {it:date} 和 {it:datelist} 可以包含日期，前提是 {it:t}
（时间）轴具有日期格式；详见 {manhelp datelist U:11.1.9 datelist}。

{synoptset 30}{...}
{p2col:{it:suboptions}}描述{p_end}
{p2line}
{p2col:{cmdab:ax:is:(}{it:#}{cmd:)}}指定该坐标轴所属的轴，{cmd:1} {ul:<} {it:#} {ul:<}
       {cmd:9}{p_end}
{p2col:{cmd:add}}合并选项{p_end}
{p2col:[{cmdab:no:}]{cmdab:tick:s}}抑制刻度{p_end}
{p2col:[{cmdab:no:}]{cmdab:lab:els}}抑制标签{p_end}
{p2col:{cmdab:val:uelabel}}使用第一个变量的值标签标记值{p_end}
{p2col:{cmd:format(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}}按照
         {cmd:%}{it:fmt} 格式化值{p_end}
{p2col:{cmd:angle(}{it:{help anglestyle_zh}}{cmd:)}}倾斜标签{p_end}
{p2col:{cmdab:alt:ernate}}错开相邻标签{p_end}
{p2col:{cmd:norescale}}不重新缩放坐标轴{p_end}

{p2col:{cmdab:tsty:le:(}{it:{help tickstyle_zh}}{cmd:)}}刻度和标签：整体样式{p_end}

{p2col:{cmd:labgap(}{it:{help size_zh}}{cmd:)}}标签：刻度和标签之间的间距{p_end}
{p2col:{cmd:labstyle(}{it:{help textstyle_zh}}{cmd:)}}标签：整体样式{p_end}
{p2col:{cmdab:labs:ize:(}{it:{help textsizestyle_zh}}{cmd:)}}标签：文本大小{p_end}
{p2col:{cmdab:labc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}标签：文本颜色和不透明度{p_end}

{p2col:{cmdab:tl:ength:(}{it:{help size_zh}}{cmd:)}}刻度：长度{p_end}
{p2col:{cmdab:tp:osition:(}{cmdab:o:utside}|{cmdab:c:rossing}|}{p_end}
{p2col 14 37 39 2:{cmdab:i:nside:)}}刻度：位置/方向{p_end}
{p2col:{cmdab:tlsty:le:(}{it:{help linestyle_zh}}{cmd:)}}刻度：线条样式{p_end}
{p2col:{cmdab:tlw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}刻度：线条粗细{p_end}
{p2col:{cmdab:tlc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}刻度：颜色和不透明度{p_end}

{p2col:{cmd:custom}}刻度和标签的渲染选项仅适用于这些标签{p_end}

{p2col:[{cmd:no}]{cmd:grid}}网格：包含{p_end}
{p2col:[{cmd:no}]{cmd:gmin}}网格：在最小值处绘制网格线{p_end}
{p2col:[{cmd:no}]{cmd:gmax}}网格：在最大值处绘制网格线{p_end}
{p2col:{cmdab:gsty:le:(}{it:{help gridstyle_zh}}{cmd:)}}网格：整体样式{p_end}
{p2col:[{cmdab:no:}]{cmdab:gex:tend}}网格：延伸进入绘图区域的边界{p_end}
{p2col:{cmdab:glsty:le:(}{it:{help linestyle_zh}}{cmd:)}}网格：线条样式{p_end}
{p2col:{cmdab:glw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}网格：线条粗细{p_end}
{p2col:{cmdab:glc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}网格：颜色和不透明度{p_end}
{p2col:{cmdab:glp:attern(}{it:{help linepatternstyle_zh}}{cmd:)}}网格：线条模式{p_end}
{p2line}
{p2colreset}{...}

{marker description}{...}
{title:描述}

{pstd}
{it:axis_label_options} 控制坐标轴上刻度和标签的放置及外观。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 axis_label_optionsQuickstart:快速入门}

        {mansection G-3 axis_label_optionsRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。

{marker options}{...}
{title:选项}

{phang}
{cmd:ylabel}({it:rule_or_values{cmd:)}},
{cmd:xlabel(}{it:rule_or_values{cmd:)}},
{cmd:tlabel(}{it:rule_or_values{cmd:)}}, 和
{cmd:zlabel(}{it:rule_or_values{cmd:)}}
    指定沿坐标轴标记和刻度的主要值。例如，要在 {it:x} 轴上标记值 0、5、10、...、25，
    请指定 {cmd:xlabel(0(5)25)}。如果 {it:t} 轴具有 {cmd:%tm}
    格式，使用 {cmd:tlabel(1999m1(1)1999m12)} 将标记 1999 年的所有月份。

{phang}
{cmd:ytick}({it:rule_or_values{cmd:)}},
{cmd:xtick(}{it:rule_or_values{cmd:)}},
{cmd:ttick(}{it:rule_or_values{cmd:)}}, 和
{cmd:ztick(}{it:rule_or_values{cmd:)}}
    指定要沿坐标轴标记但不标记的主要值。例如，要在 {it:x} 轴上标记值 0、5、10、...、25，
    请指定 {cmd:xtick(0(5)25)}。指定 {cmd:ttick(1999m1(1)1999m12)} 将为 1999 年的每个月放置刻度。

{phang}
{cmd:ymlabel(}{it:rule_or_values{cmd:)}},
{cmd:xmlabel(}{it:rule_or_values{cmd:)}},
{cmd:tmlabel(}{it:rule_or_values{cmd:)}}, 和
{cmd:zmlabel(}{it:rule_or_values{cmd:)}}
    指定沿坐标轴标记和刻度的次要值。

{phang}
{cmd:ymtick(}{it:rule_or_values{cmd:)}},
{cmd:xmtick(}{it:rule_or_values{cmd:)}},
{cmd:tmtick(}{it:rule_or_values{cmd:)}}, 和
{cmd:zmtick(}{it:rule_or_values{cmd:)}}
    指定沿坐标轴标记的次要值。

{phang}
{cmd:zlabel(}{it:rule_or_values{cmd:)}},
{cmd:ztick(}{it:rule_or_values{cmd:)}},
{cmd:zmlabel(}{it:rule_or_values{cmd:)}}, 和
{cmd:zmtick(}{it:rule_or_values{cmd:)}}; 见
    {it:{help axis_label_options##remarks8:等高线轴 -- zlabel() 等}} 
    于下文。

{marker suboptions}{...}
{title:子选项}

{phang}
{cmd:axis(}{it:#}{cmd:)}
    指定此坐标轴所属的比例，适用于处理多个 {it:x} ({it:t}) 或 {it:y} 坐标轴；见 
    {manhelpi axis_choice_options G-3}。

{phang}
{cmd:add}
    指定要添加到任何先前指定的 {cmd:xlabel()}、{cmd:ylabel()},
    {cmd:xtick()}、... 或 {cmd:ymtick()} 选项中的内容。标签
    或刻度将添加到任何默认标签或刻度，或添加到之前 {cmd:xlabel()}、{cmd:ylabel()},
    {cmd:xtick()}、... 或 {cmd:ymtick()} 选项中指定的任何标签或刻度。仅值规格将被添加；
    规则规格始终会替换任何现有规则。
    参见 {it:{help axis_label_options##appendix5:重复选项的解释}} 于下文。

{phang}
{cmd:noticks} 和 {cmd:ticks} 抑制/强制绘制刻度。
    {cmd:ticks} 是通常的默认值，因此 {cmd:noticks}
    会使得
    {c -(}{cmd:y}|{cmd:x}{c )-}{cmd:label()}
    和
    {c -(}{cmd:y}|{cmd:x}{c )-}{cmd:mlabel()}
    仅显示标签。

{phang}
{cmd:nolabels} 和 {cmd:labels}
    抑制/强制显示标签。
    {cmd:labels} 是通常的默认值，因此 {cmd:nolabels}
    会将
    {c -(}{cmd:y}|{cmd:x}{c )-}{cmd:label()}
    转变为
    {c -(}{cmd:y}|{cmd:x}{c )-}{cmd:tick()}
    和
    {c -(}{cmd:y}|{cmd:x}{c )-}{cmd:mlabel()}
    转变为
    {c -(}{cmd:y}|{cmd:x}{c )-}{cmd:mtick()}。
    难以想象有没有人想这样做。

{phang}
{cmd:valuelabel} 指定
    应使用第一个 {it:y} 变量的值标签进行映射的值 ({cmd:y}{it:*}{cmd:()} 选项)
    或 {it:x} 变量的值标签
    ({cmd:x}{it:*}{cmd:()} 选项)。
    考虑命令 {cmd:scatter yvar xvar}，假设 {cmd:xvar}
    先前已被赋予值标签：

	    {cmd:. label define cat 1 "Low" 2 "Med" 3 "Hi"}
	    {cmd:. label values xvar cat}

{p 8 8 2}
然后

{p 12 16 2}
	    {cmd:. scatter yvar xvar, xlabel(1 2 3, valuelabel)}

{p 8 8 2}
    将会将 1、2 和 3 转换为对应的标签 Low、Med 和 Hi 
    而不是将数字 1、2 和 3 放置在 {it:x} 轴上。其效果与

{p 12 16 2}
	    {cmd:. scatter yvar xvar, xlabel(1 "Low" 2 "Med" 3 "Hi")}
 
{phang}
{cmd:format(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}
    指定应如何格式化坐标轴上的数值。默认的
    {cmd:format()} 来自与 {cmd:graph} 命令指定的变量，通常对于 
    {cmd:ylabel()}、{cmd:ytick()}、{cmd:ymlabel()} 和 {cmd:ymtick()} 来说 
    是第一个 {it:y} 变量，对于 {cmd:xlabel()}、...、{cmd:xmtick()} 来说
    是 {it:x} 变量。例如，在

{p 16 20 2}
		{cmd:. scatter y1var y2var xvar}

{p 8 8 2}
    中，{it:y} 轴的默认格式将是 {cmd:y1var} 的格式，而 {it:x} 轴的默认格式将是 {cmd:xvar} 的格式。

{p 8 8 2}
    您可以在不指定值的情况下指定 {cmd:format()} 子选项（或任何子选项），
    如果您希望以不同的方式呈现默认标签。例如，

{p 16 20 2}
		{cmd:. scatter y1var y2var xvar, ylabel(,format(%9.2fc))}

{p 8 8 2}
    将在 {it:y} 轴上呈现默认标签，但数字将采用 {cmd:%9.2fc} 格式。
    注意 {cmd:format} 前的逗号。在 {cmd:ylabel()} 选项内，我们仅指定子选项。

{phang}
{cmd:angle(}{it:anglestyle}{cmd:)}
    使得标签以角度方式呈现。
    请参见 {manhelpi anglestyle G-4}。

{phang}
{cmd:alternate}
    使得相邻标签错开，适用于标记大量值的情况。例如，与

	     {hline 2}{c TT}{hline 3}{c TT}{hline 3}{c TT}{hline 3}{c TT}{hline 3}{c TT}{hline 3}{c TT}{hline 3}{c TT}{hline 3}{c TT}{hline 2}
	      1.0 1.1 1.2 1.3 1.4 1.5 1.6

{p 8 8 2}
    使用 {cmd:alternate} 将得到如下效果

	     {hline 2}{c TT}{hline 3}{c TT}{hline 3}{c TT}{hline 3}{c TT}{hline 3}{c TT}{hline 3}{c TT}{hline 3}{c TT}{hline 2}
	      1.0     1.2     1.4     1.6
		  1.1     1.3     1.5

{phang}
{cmd:norescale}
    指定刻度或标签被直接放置在图表上，而不重新缩放坐标轴或与新值相关的绘图区域。默认情况下，标签选项会自动重新缩放坐标轴和绘图区域，以包含新标签或刻度中的值范围。
    {opt norescale} 允许您在坐标轴的正常范围之外绘制刻度或标签。

{phang}
{opt tstyle(tickstyle)}
    指定刻度和标签的整体外观；见
    {manhelpi tickstyle G-3}。以下文档选项将允许您更改刻度及其标签的每个属性，但 {it:tickstyle} 指定了起始点。

{p 8 8 2}
    您不必因为想更改刻度或标签的外观而一定要指定 {cmd:tstyle()}。
    当存在另一种风格完全符合要求时，您需要指定 {cmd:tstyle()}，或者当另一种风格能够更少修改地实现您的需求时。

{phang}
{opt labgap(size)},
{opt labstyle(textstyle)},
{opt labsize(textsizestyle)}, 和
{opt labcolor(colorstyle)}
    指定标签呈现的细节。
    请参见 {manhelpi size G-4}、{manhelpi textstyle G-4}、{manhelpi textsizestyle G-4} 和 {manhelpi colorstyle G-4}。

{phang}
{cmd:tlength(}{it:size}{cmd:)}
    指定刻度的整体长度；见 {manhelpi size G-4}。

{phang}
{cmd:tposition(outside}|{cmd:crossing}|{cmd:inside)}
    指定刻度应向 {cmd:outside}（从轴向外，通常的默认值）、{cmd:crossing}（交叉坐标轴，向内外延伸）或 {cmd:inside}（从坐标轴进入绘图区域）。

{phang}
{opt tlstyle(linestyle)},
{opt tlwidth(linewidthstyle)}, 和
{opt tlcolor(colorstyle)}
    指定刻度外观的其他细节。
    请参见 {manhelpi linestyle G-4}、{manhelpi linewidthstyle G-4} 和 {manhelpi colorstyle G-4}。刻度仅是线条。
    有关更多信息，请参见 {manhelp lines G-4:概念：线条}。

{phang}
{opt custom} 指定标签呈现子选项、刻度渲染选项以及 {cmd:angle()} 选项仅适用于当前
{{cmd:y}|{cmd:x}[{cmd:m}]{cmd:t}}{cmd:label()} 或 
{{cmd:y}|{cmd:x}|{cmd:t}}{cmd:mlabel()} 选项中的标签，而不是应用于坐标轴上的所有主要或次要标签。可自定义的子选项包括 {opt tstyle()}、{opt labgap()}、 
{opt labstyle()}、{opt labsize()}、{opt labcolor()}、{opt tlength()}、 
{opt tposition()}、{opt tlstyle()}、{opt tlwidth()} 和 {opt tlcolor()}。

{pmore}
{opt custom} 通常与子选项 {opt add} 结合使用，以通过延长刻度长度、更改标签的颜色或大小，或其他方式改变自定义标签或刻度的外观来强调坐标轴上的点。

{phang}
{cmd:grid} 和 {cmd:nogrid}
    指定是否在绘图区域绘制网格线，除了在
    {c -(}{cmd:y}|{cmd:x}{c )-}[{cmd:m}]{cmd:label()} 或
    {c -(}{cmd:y}|{cmd:x}{c )-}[{cmd:m}]{cmd:tick()}
    选项中指定了 {cmd:grid} 或 {cmd:nogrid}。
    通常，{cmd:nogrid} 是默认值，而 {cmd:grid} 是除 {cmd:ylabel()} 以外的所有选项。
    在 {cmd:ylabel()} 中情况相反，{cmd:grid} 是默认值，{cmd:nogrid} 是选项。(默认是哪个，哪个是选项由方案控制；见 {manhelp schemes G-4:方案介绍})。

{p 8 8 2}
    例如，指定选项

	    {cmd:ylabel(, nogrid)}

{p 8 8 2}
    将抑制 {it:y} 方向上的网格线，而指定

	    {cmd:xlabel(, grid)}

{p 8 8 2}
    将在 {it:x} 方向上添加它们。指定
	
	    {cmd:xlabel(0(1)10, grid)}

{p 8 8 2}
    将在 {it:x} = 0、1、2、...、10 处放置主要标签、主要刻度和网格线。

{phang}
[{cmd:no}]{cmd:gmin} 和
[{cmd:no}]{cmd:gmax}
    仅在 {cmd:grid} 生效时相关（因为 {cmd:grid} 是默认且未指定 {cmd:nogrid} 或者因为指定了 {cmd:grid}）。
    [{cmd:no}]{cmd:gmin} 和
    [{cmd:no}]{cmd:gmax}
    指定是否在最小值和最大值处绘制网格线。考虑

{p 12 16 2}
	    {cmd:. scatter yvar xvar, xlabel(0(1)10, grid)}

{p 8 8 2}
    显然，值 0、1、...、10 将会被标记和标记，并且，显然， 
    网格线应绘制在 1、2、...、9；但是，网格线应否绘制在 0 和 10 呢？如果 0 和 10 在绘图区域的边缘，您可能不想在这里绘制网格线，因为它们将与坐标轴和图的边框太近。

{p 8 8 2}
    你想要的情况会因图形而异，因此 {cmd:graph} 命令试图智能处理，这意味着
    既不指定 {cmd:gmin} 也不指定 {cmd:nogmin}（同样，对于 {cmd:gmax} 和 {cmd:nogmax}）是默认值：默认情况下 {cmd:graph} 会决定哪个效果最好；这些选项强制以某种方式做出决定。

{p 8 8 2}
    如果 {cmd:graph} 决定在极值处抑制网格，而您希望显示它们，则可以键入

{p 12 16 2}
	    {cmd:. scatter yvar xvar, xlabel(0(1)10, grid gmin gmax)}

{phang}
{cmd:gstyle(}{it:gridstyle}{cmd:)}
    指定网格线的整体样式，包括这些线是否扩展到绘图区域的边界以及线条的样式、颜色、宽度和模式。
    后续选项允许您更改每个属性，但 {it:gridstyle} 提供了起始点。请参见 {manhelpi gridstyle G-4}。

{p 8 8 2}
    您不必因为有要更改的内容就一定要指定 {cmd:gstyle()}。当存在另一种样式完全符合您的要求时，您应当指定 {cmd:gstyle()}，或是另一种样式将允许您进行更少的更改，以达到您所需效果。

{phang}
{cmd:gextend} 和 {cmd:nogextend}
    指定网格线是否应扩展到绘图区域外并穿过绘图区域的边界；见 {manhelpi region_options G-3}。默认由 {cmd:gstyle()} 和方案决定，但通常来说，{cmd:nogextend} 是默认，{cmd:gextend} 是选项。

{phang}
{opt glstyle(linestyle)},
{opt glwidth(linewidthstyle)},
{opt glcolor(colorstyle)}, 和
{opt glpattern(linepatternstyle)}
    指定网格外观的其他细节。
    请参见 {manhelpi linestyle G-4}、{manhelpi linewidthstyle G-4}、{manhelpi colorstyle G-4} 和 {manhelpi linepatternstyle G-4}。
    网格仅是线条。
    有关更多信息，请参见 {manhelp lines G-4:概念：线条}。
    其中，{cmd:glpattern()} 尤为重要，因为它可以将网格线设置为虚线。

{marker remarks}{...}
{title:备注}

{pstd}
{it:axis_label_options} 是 {it:axis_options} 的子集；
见 {manhelpi axis_options G-3} 获取概述。
其他外观选项为

	{it:axis_scale_options}{right:(请参见 {manhelpi axis_scale_options G-3})  }

	{it:axis_title_options}{right:(请参见 {manhelpi axis_title_options G-3})  }

{pstd}
备注按以下标题列出：

	{help axis_label_options##remarks1:默认标记和刻度}
	{help axis_label_options##remarks2:控制标记和刻度}
	{help axis_label_options##remarks3:添加额外刻度}
	{help axis_label_options##remarks4:添加次要标签和刻度}
	{help axis_label_options##remarks5:添加网格线}
	{help axis_label_options##remarks6:抑制网格线}
	{help axis_label_options##remarks7:用文本替换标签}
	{help axis_label_options##remarks8:等高线轴 -- zlabel() 等}

	{help axis_label_options##appendix:附录：语法细节}
	    {help axis_label_options##appendix1:无规则、数值列表或标签的子选项}
	    {help axis_label_options##appendix2:规则}
	    {help axis_label_options##appendix3:规则和数值列表}
	    {help axis_label_options##appendix4:规则、数值列表和标签}
	    {help axis_label_options##appendix5:重复选项的解释}

{marker remarks1}{...}
{title:默认标记和刻度}

{pstd}
默认情况下，每个坐标轴上标记和刻度约有五个值。
例如，在

	{cmd:. sysuse auto}

	{cmd:. scatter mpg weight}
	  {it:({stata "gr_example auto: scatter mpg weight":点击运行})}
{* 图形 mpgweight}{...}

{pstd}
每个坐标轴上标记了四个值，因为选择五个会要求将比例设置得过高。

{marker remarks2}{...}
{title:控制标记和刻度}

{pstd}
如果我们键入

{phang2}
	{cmd:. scatter mpg weight, ylabel(#5) xlabel(#5)}

{pstd}
我们将获得与之前的示例相同的结果。选项 {cmd:ylabel()} 和 {cmd:xlabel()} 指定要标记和刻度的值，而 {cmd:#5} 指定让 Stata 为我们选择约五个值。如果我们希望标记许多值，可以键入

{phang2}
	{cmd:. scatter mpg weight, ylabel(#10) xlabel(#10)}
{p_end}
	  {it:({stata "gr_example auto: scatter mpg weight, ylabel(#10) xlabel(#10)":点击运行})}
{* 图形 axislab2}{...}

{pstd}
与 {cmd:#5} 类似，{cmd:#10} 并未被严格对待；{it:y} 和 {it:x} 轴上分别得到了七个和八个标签。

{pstd}
我们还可以通过指定 {it:#}{cmd:(}{it:#}{cmd:)}{it:#} 或指定一系列数字，
精确指定想要标记的值：

	{cmd:. scatter mpg weight, ylabel(10(5)45)}
	{cmd:                      xlabel(1500 2000 3000 4000 4500 5000)}
	  {it:({stata "gr_example auto: scatter mpg weight, ylabel(10(5)45) xlabel(1500 2000 3000 4000 4500 5000)":点击运行})}
{* 图形 axislab3}{...}

{pstd}
在选项 {cmd:ylabel()} 中，我们指定了规则 {cmd:10(5)45}，表示
要在 10 到 45 之间以步长 5 标记。在选项 {cmd:xlabel()} 中，我们手动输入了要标记的值。

{marker remarks3}{...}
{title:添加额外刻度}

{pstd}
选项 {cmd:ylabel()} 和 {cmd:xlabel()} 绘制刻度加标签。
选项 {cmd:ytick()} 和 {cmd:xtick()} 则仅绘制刻度，因此您可以执行类似以下操作

	{cmd:. scatter mpg weight, ytick(#10) xtick(#15)}
	  {it:({stata "gr_example auto: scatter mpg weight, ytick(#10) xtick(#15)":点击运行})}
{* 图形 axislab4}{...}

{pstd}
当然，正如使用 {cmd:ylabel()} 和 {cmd:xlabel()} 时，您可以指定您希望标记的确切值。

{marker remarks4}{...}
{title:添加次要标签和刻度}

{pstd}
次要刻度和次要标签小于常规刻度和常规标签。选项 {cmd:ymlabel()} 和 {cmd:xmlabel()} 允许您放置带标签的次要刻度，而 {cmd:ymtick()} 和 {cmd:xmtick()} 则允许您放置没有标签的次要刻度。当使用次要刻度和标签时，除了 {cmd:#5} 指代大约 5 个值，{cmd:10(5)45} 指代从 10 到 45 的刻度步长为 5 之外，还有一个额外的语法：{cmd:##5}。{cmd:##5} 指的是让每个主要区间划分为 5 个次要区间。

{pstd}
下面的图形主要用于演示，而不是作为美观图形的示例：

{phang2}
	{cmd:. scatter mpg weight, ymlabel(##5) xmtick(##10)}
{p_end}
	  {it:({stata "gr_example2 minorticks1":点击运行})}
{* 图形 axislab5}{...}

{pstd}
{cmd:##5} 意味着绘制四个刻度，而 {cmd:##10} 意味绘制九个刻度，因为大多数人用“倒数”来思考，他们说：“我想绘制四分之一，所以我希望有 4 个刻度在其中。”或者，“我希望绘制十分之一，所以我希望有 10 个刻度在其中。”但他们的想法是错误的。他们应该思考如果想要四分之一，他们希望在四分之一之间有 4-1=3 个刻度，或者如果想要十分之一，他们希望在十分之一之间有 10-1=9 个刻度。Stata 会减去一个，以便他们可以正确计算 -- 当他们希望在四分之一之间有 {cmd:##4} 个刻度，或者在十分之一之间有 {cmd:##10} 个刻度。

{pstd}
要使 {cmd:##}{it:#} 规则正常工作，主要刻度必须均匀分布。此格式仅在通过使用 {it:#}{cmd:(}{it:#}{cmd:)}{it:#} 规则指定主要刻度或标签时得到保证。 {cmd:##}{it:#}规则在几乎所有情况下都有效，唯一的例外是以日期格式指定的每日数据。 在这里，“合适”的每日标签之间的天数往往不一致，因此每个主要刻度之间的间隔不能均匀划分。如果主要刻度不均匀分布，则 {cmd:##}{it:#} 规则不会生成任何次要刻度。

{marker remarks5}{...}
{title:添加网格线}

{pstd}
要获得网格线，请指定 {cmd:grid} 子选项给 {cmd:ylabel()}、{cmd:xlabel()}、{cmd:ymlabel()} 或 {cmd:xmlabel()}。{cmd:grid} 指定在选项通常会执行的操作之外，网格线也将在相同的值上绘制。如下示例，

	{cmd:. sysuse uslifeexp, clear}

	{cmd:. line le year, xlabel(,grid)}
	  {it:({stata "gr_example uslifeexp: line le year, xlabel(,grid)":点击运行})}
{* 图形 axislab6}{...}

{pstd}
我们指定了 {cmd:xlabel(,grid)}，省略了任何关于所用具体值的提及。因此 {cmd:xlabel()} 执行它通常执行的操作（标记大约五个合适的值），并绘制以相同值为基础的网格线。

{pstd}
当然，我们还可以指定要标记和绘制为网格的值：

	{cmd:. line le year, xlabel(#10, grid)}

	{cmd:. line le year, xlabel(1900(10)2000, grid)}

{phang2}
	{cmd:. line le year, xlabel(1900 1918 1940(20)2000, grid)}

{pstd}
{cmd:grid} 子选项通常与 {cmd:xlabel()} 指定（并在给定方案的情况下，如果 {cmd:grid} 不是默认值也与 {cmd:ylabel()} 指定），但是它可以与任何 {it:axis_label_options} 一起指定。在下面的示例中，我们“借用” {cmd:ymtick()} 和 {cmd:xmtick()}，指定 {cmd:grid} 使它们绘制网格，并指定 {cmd:style(none)} 使得刻度本身不可见：

	{cmd:. sysuse auto, clear}

	{cmd:. scatter mpg weight, ymtick(#20, grid tstyle(none))}
	{cmd:                      xmtick(#20, grid tstyle(none))}
	  {it:({stata "gr_example auto: scatter mpg weight, ymtick(#20, grid tstyle(none)) xmtick(#20, grid tstyle(none))":点击运行})}
{* 图形 axislab7}{...}

{pstd}
如果您仔细观察上面的图形，您会发现没有在 {it:x}=5,000 的位置绘制网格线。Stata 会在网格线与坐标轴或图形边框过于接近时抑制网格线。如果您希望 Stata 强制绘制这些网格线，您可以指定 {cmd:gmin} 和 {cmd:gmax} 选项：

	{cmd:. scatter mpg weight, ymtick(#20, grid tstyle(none))}
	{cmd:                      xmtick(#20, grid tstyle(none) gmax)}

{marker remarks6}{...}
{title:抑制网格线}

{pstd}
某些命令，以及选项 {cmd:ylabel()}，默认情况下通常绘制网格线。
例如，在以下情况下，结果与您指定 {cmd:ylabel(,grid)} 是相同的：

	{cmd:. sysuse auto, clear}

	{cmd:. scatter mpg weight, by(foreign)}
	  {it:({stata "gr_example auto: scatter mpg weight, by(foreign)":点击运行})}
{* 图形 mpgweightby}{...}

{pstd}
要抑制网格线，请指定 {cmd:ylabel(,nogrid)}：

{phang2}
	{cmd:. scatter mpg weight, by(foreign) ylabel(,nogrid)}

{marker remarks7}{...}
{title:用文本替换标签}

{pstd}
除了通过显式指定要标记的值 {cmd:ylabel(10(10)50)} 或 {cmd:ylabel(10 20 30 40 50)}，
您还可以指定替代标签的文本。如果您键入

{phang2}
	{cmd:. graph} ...{cmd:,} ...{cmd:ylabel(10 20 30 "mean" 40 50)}

{pstd}
值 10、20、...、50 将按照预期进行标记，但是对于中间值，文本 "30" 将不会出现，而是会出现文本 "mean"（不带引号）。

{pstd}
在下面的高级例子中，我们指定

	{cmd:xlabel(1 "J"  2 "F"  3 "M"  4 "A"  5 "M"  6 "J"}
	{cmd:       7 "J"  8 "A"  9 "S" 10 "O" 11 "N" 12 "D")}

{pstd}
这样，我们看到的不是 1、2、...、12 的数字（即月份编号），而是 J、F、...、D；我们指定

{phang2}
	{cmd:ylabel(12321 "12,321 (mean)", axis(2) angle(0))}

{pstd}
以便我们标记 12321，但是并不是看到 12321，而是看到 "12,321 (mean)"。
{cmd:axis(2)} 选项将标签放在第二个 {it:y} 轴上（见 {manhelpi axis_choice_options G-3}），而 {cmd:angle(0)} 使文本以水平而不是垂直方式出现（见上文的 {it:选项}）。

	{cmd:. sysuse sp500, clear}

	. generate month = month(date)

	. sort month

	. by month: egen lo = min(volume)

	. by month: egen hi = max(volume)

	. format lo hi %10.0gc

	. summarize volume

	{txt}    变量 {c |}       观测        平均    标准差       最小        最大
	{hline 13}{c +}{hline 56}
	      volume {c |}{res}       248    12320.68    2585.929       4103    23308.3{cmd}

	. by month: keep if _n==_N

	. twoway rcap lo hi month,
	    xlabel(1 "J"  2 "F"  3 "M"  4 "A"  5 "M"  6 "J"
		   7 "J"  8 "A"  9 "S" 10 "O" 11 "N" 12 "D")
	    xtitle("2001 年的月份")
	    ytitle("最高和最低成交量")
	    yaxis(1 2) ylabel(12321 "12,321 (mean)", axis(2) angle(0))
	    ytitle("", axis(2))
	    yline(12321, lstyle(foreground))
	    msize(*2)
	    title("标准普尔 500 指数的成交量", margin(b+2.5))
	    note("来源：Yahoo!Finance 和商品系统公司"){txt}
	  {it:({stata "gr_example2 tworcap":点击运行})}
{* 图形 tworcap}{...}

{marker remarks8}{...}
{title:等高线轴 -- zlabel() 等}

{pstd}
{cmd:zlabel()}、{cmd:ztick()}、{cmd:zmlabel()} 和 {cmd:zmtick()} 选项不同寻常，因其不适用于绘图区域上的坐标轴，而是适用于显示 {help clegend_option_zh:等高线图例} 的比例。它们只在图形包含 {cmd:twoway contour} 绘图时有效；见 {help twoway_contour_zh:[G-2] 图形 twoway contour}。在所有其他方面，它们表现得像 {cmd:x}{it:*}、{cmd:y}{it:*} 和 {cmd:t}{it:*} 选项。

{pstd}
有关使用 {cmd:zlabel()} 的示例，请参见 
{it:{help twoway_contour##ccuts:控制等高线的数量及其值}} 
在 {help twoway_contour_zh:[G-2] 图形 twoway contour} 中。

{pstd}
在等高线轴上指定的网格相关选项无效。

{marker appendix}{...}
{title:附录：语法细节}

{marker appendix1}{...}
    {title:无规则、数值列表或标签的子选项}

{pstd}
每个选项中可能出现的内容
{c -(}{cmd:y}|{cmd:x}{c )-}{c -(}{cmd:label}|{cmd:tick}|{cmd:mlabel}|{cmd:mtick}{c )-}{cmd:()}
是一个规则或数值列表，后面跟着子选项：

{p 8 16 2}
[{it:rule}]
[{it:numlist} [{cmd:"}{it:label}{cmd:"} [{it:numlist}
[{cmd:"}{it:label}{cmd:"} [...]]]]]
[{cmd:,} {it:suboptions}]

{pstd}
{it:rule}、{it:numlist} 和 {it:label} 都是可选的。如果您移除它们，
将得到

{p 8 16 2}
{cmd:,} {it:suboptions}

{pstd}
也就是说，选项 
{c -(}{cmd:y}|{cmd:x}{c )-}{c -(}{cmd:label}|{cmd:tick}|{cmd:mlabel}|{cmd:mtick}{c )-}{cmd:()} 
可以仅使用子选项来指定，实际上，它们通常是以这种方式指定的。如果您想要 {it:y} 轴和 {it:x} 轴的默认标记，但想要 {it:x} 方向上的网格线以及 {it:y} 方向上的，请指定

{phang2}
	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, xlabel(,grid)}

{pstd}
当您没有指定第一部分 -- {it:rule}、{it:numlist} 和 {it:label} -- 时，您是在说您不希望该部分发生变化。您是在说您只是希望更改 {it:rule}、{it:numlist} 和 {it:label} 的显示方式。

{pstd}
当然，您可以指定多个子选项。您可以键入

{phang2}
	{cmd:. scatter} {it:yvar xvar}{cmd:, xlabel(,grid format(%9.2f))}

{pstd}
如果除了网格线外，您希望在 {it:x} 轴上的数字以 %9.2f 格式呈现。

{marker appendix2}{...}
    {title:规则}

{pstd}
每个坐标轴标签选项中可以出现的内容是一个规则或数值列表
{p 8 16 2}
[{it:rule}]
[{it:numlist} [{cmd:"}{it:label}{cmd:"} [{it:numlist}
[{cmd:"}{it:label}{cmd:"} [...]]]]]
[{cmd:,} {it:suboptions}]

{pstd}
其中必须指定 {it:rule} 或 {it:numlist}，并且可以同时指定两者。分别忽略 {cmd:"}{it:label}{cmd:"} 的部分。那么，以上内容简化为

{p 8 16 2}
[{it:rule}]
[{it:numlist}]
[{cmd:,} {it:suboptions}]

{pstd}
其中必须指定 {it:rule} 或 {it:numlist}，二者都可以指定，通常情况下您只需简单地指定 {it:rule}，该规则可以是以下任意一种：

	{it:rule}{col 18}示例{col 30}描述
	{hline 70}
	{cmd:#}{it:#}{...}
{col 18}{cmd:#6}{...}
{col 30}六个合适的数值
	{cmd:##}{it:#}{...}
{col 18}{cmd:##10}{...}
{col 30}在主要刻度之间的 10-1=9 个值；
{col 30}仅在 {cmd:mlabel()} 和 {cmd:mtick()} 中允许
	{it:#}{cmd:(}{it:#}{cmd:)}{it:#}{...}
{col 18}{cmd:-4(.5)3}{...}
{col 30}指定范围：-4 至 3，步长为 0.5
	{cmd:minmax}{...}
{col 18}{cmd:minmax}{...}
{col 30}最小值和最大值
	{cmd:none}{...}
{col 18}{cmd:none}{...}
{col 30}不标记任何值
	{cmd:.}{...}
{col 18}{cmd:.}{...}
{col 30}跳过规则
	{hline 70}

{pstd}
最常用的规则是 {cmd:#}{it:#} 和 {cmd:##}{it:#}。

{pstd}
指定 {cmd:#}{it:#} 表示选择 {it:#} 个合适的数值。
指定 {cmd:#5} 表示选择 5 个合适的数值， {cmd:#6} 指选择 6 个，依此类推。如果您指定 {cmd:ylabel(#5)}，那么将在 {it:y} 轴上标记 5 个值。如果您还指定了 {cmd:ymtick(#10)}，则还将在轴上放置 10 个次要刻度。实际上，
{cmd:ylabel(#5)} 和 {cmd:ymtick(#10)} 将花费大约 5 个标签和 10 个次要刻度，因为选择一个合适的数目的程序会根据情况稍微调整选择。如果它认为这样会产生更好的整体效果，您可能与它对什么是合适的看法不同，接下来的 {it:#}{cmd:(}{it:#}{cmd:)}{it:#} 规则将让您准确指定想要的内容，假设您希望均匀分布标签和数字。

{pstd}
{cmd:##}{it:#} 仅与 
{c -(}{cmd:y}|{cmd:x}{c )-}{cmd:mlabel()} 
和 
{c -(}{cmd:y}|{cmd:x}{c )-}{cmd:mtick()} 选项一起使用 -- 生成次要刻度的选项。 {cmd:##}{it:#} 表示在主要刻度之间放置 {it:#}-1 个次要刻度。 {cmd:##5} 将放置 4 个， {cmd:##10} 将放置 9 个。在此，{it:#} 被严格对待，至少在减法之后，您将得到准确的要求。 

{pstd}
{it:#}{cmd:(}{it:#}{cmd:)}{it:#} 可与主要或次要标签和刻度一起使用。该规则表示标记第一个指定的数字，按第二个数字递增，继续标记，只要结果小于或等于指定的最后一个数字。 {cmd:ylabel(1(1)10)} 将标记（并刻度）值 1、2、...、10。{cmd:ymtick(1(.5)10)} 将在 1、1.5、2、2.5、...、10 处放置次要刻度。您可以完全合法地同时指定这两个选项。在指定规则时，次要刻度和标签将检查主要刻度和标签所指定的内容，并删除交集以避免重叠。结果与指定 {cmd:ymtick(1.5(1)9.5)} 相同。

{pstd}
规则 {cmd:minmax} 指定您希望最小值和最大值。
{cmd:ylabel(minmax)} 仅标记最小值和最大值。

{pstd}
规则 {cmd:none} 意味着没有标签、没有刻度的规则。

{pstd}
规则 {cmd:.} 仅在指定了 {cmd:add} 时有意义，尽管在其他时间也允许，然后 {cmd:.} 意味着与 {cmd:none} 相同。

{marker appendix3}{...}
    {title:规则和数值列表}

{pstd}
在 {it:rule} 之后 -- 或者代替它 -- 您可以指定一个 {it:numlist}。 数值列表是数字的列表，例如，"{cmd:1 2 5 7}"（不带引号）或 "{cmd:3/9}"（不带引号）。 允许其他简写（请参见 {manhelp numlist U:11.1.8 numlist}），实际上，{it:numlist} 的一种语法看起来就像一个 {it:rule}：{it:#}{cmd:(}{it:#}{cmd:)}{it:#}。它也具有相同的含义。

{pstd}
然而，在例如

	{cmd:ylabel(1(1)10)}                          （一个 {it:rule}）
    和
	{cmd:ylabel(none 1(1)10)}                     （一个 {it:numlist}）

{pstd}
{it:规则} 更为高效。
在视觉上，没有区别。

{pstd}
当您希望标记或刻度的值不均匀间隔时，请使用数值列表，

	{cmd:ylabel(none 1 2 5 7)}

{pstd}
或当您想标记或刻度一个或多个额外的值时：

	{cmd:ylabel(1(1)10 3.5 7.5)}

{marker appendix4}{...}
    {title:规则、数值列表和标签}

{pstd}
{it:numlist} 具有额外的功能 -- 您可以指定要替换的文本。 例如，

	{cmd:ylabel(1(1)10 3.5 "Low" 7.5 "Hi")}

{pstd}
表示标记 1、2、...、10（即 {it:rule} 部分），并标记特殊值 3.5 和 7.5。 然而，不是在 3.5 和 7.5 的刻度旁边实际打印 "3.5" 和 "7.5"，而是 {cmd:graph} 将打印 "Low" 和 "Hi" 这个词。

{marker appendix5}{...}
    {title:重复选项的解释}

{pstd}
每个轴标签选项可以在同一个命令中多次指定。如果您这样做并且不指定子选项 {cmd:add}，则尊重最右侧选项。如果您指定了子选项 {cmd:add}，则将刚刚指定的选项与以前的选项合并。{cmd:add} 指定任何新刻度或标签将添加到坐标轴上的所有现有刻度或标签。所有子选项都是 {it:最右侧}；见
{manhelp repeated_options G-4:概念：重复选项}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <axis_label_options.sthlp>}