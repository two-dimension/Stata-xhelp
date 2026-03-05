{smcl}
{* *! version 1.0.6  11feb2011}{...}
{vieweralsosee "scheme axes" "help scheme axes"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_grids:English Version}
{hline}{...}
{title:控制网格线的方案条目}

{p 3 3 2}
这些设置控制网格线是否绘制以及它们的外观。所有网格线都与一个坐标轴关联，并且它们的位置由与主轴或次轴标签或刻度的关联来决定。有关更改轴标签和刻度的条目，请参见 {help scheme axes}。

{p 3 3 2}
条目按以下标题呈现：

{p 8 12 0}{help scheme_grids##remarks1:网格线的外观}{p_end}
{p 8 12 0}{help scheme_grids##remarks2:是否绘制网格线}{p_end}
{p 8 12 0}{help scheme_grids##remarks3:网格线的构造}{p_end}
{p 8 12 0}{help scheme_grids##remarks4:整体网格样式}{p_end}

{marker remarks1}{...}
{title:网格线的外观}

{p2colset 4 45 48 0}{...}
{p 3 3 2}
这些条目控制网格线的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:linewidth     {space 2}major_grid} {space 1}{it:{help linewidthstyle_zh:linewidth}}}
	所有网格的线条厚度{p_end}
{p2col:{cmd:color         {space 6}major_grid} {space 1}{it:{help colorstyle_zh}}}
	所有网格的线条颜色{p_end}
{p2col:{cmd:linepattern   {space 0}major_grid} {space 1}{it:{help linepatternstyle_zh}}}
	所有网格的线条模式{p_end}

{p2col:{cmd:linestyle     {space 2}major_grid} {space 1}{it:{help linestyle_zh}}}
	所有网格的整体 {it:linestyle} (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。

{marker remarks2}{...}
{title:是否绘制网格线}

{p2colset 4 43 46 0}{...}
{p 3 3 2}
这些条目控制是否为一组坐标轴刻度和/或标签绘制网格线 {c -} 例如，{it:x} 轴上的主要标签或 {it:y} 轴上的次刻度。请注意，除非图形使用关联的 {help ticksetstyle_zh:tickset style}，否则更改将无效。

{p 3 3 2}
以下前8个条目之外的条目主要对程序员感兴趣，因为它们默认仅用于构造条形图、箱图和点图的复合轴。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:yesno draw_major_hgrid}       {space 6}{{cmd:yes}|{cmd:no}}}
	水平坐标轴，主要标签，默认{p_end}
{p2col:{cmd:yesno draw_minor_hgrid}       {space 6}{{cmd:yes}|{cmd:no}}}
	水平坐标轴，次标签，默认{p_end}
{p2col:{cmd:yesno draw_majornl_hgrid}     {space 4}{{cmd:yes}|{cmd:no}}}
	水平坐标轴，主要刻度，默认{p_end}
{p2col:{cmd:yesno draw_minornl_hgrid}     {space 4}{{cmd:yes}|{cmd:no}}}
	水平坐标轴，次刻度，默认{p_end}

{p2col:{cmd:yesno draw_major_vgrid}       {space 6}{{cmd:yes}|{cmd:no}}}
	垂直坐标轴，主要标签，默认{p_end}
{p2col:{cmd:yesno draw_minor_vgrid}       {space 6}{{cmd:yes}|{cmd:no}}}
	垂直坐标轴，次标签，默认{p_end}
{p2col:{cmd:yesno draw_majornl_vgrid}     {space 4}{{cmd:yes}|{cmd:no}}}
	垂直坐标轴，主要刻度，默认{p_end}
{p2col:{cmd:yesno draw_minornl_vgrid}     {space 4}{{cmd:yes}|{cmd:no}}}
	垂直坐标轴，次刻度，默认{p_end}

{p2col:{cmd:yesno draw_major_nl_hgrid}    {space 3}{{cmd:yes}|{cmd:no}}}
	水平坐标轴，主要标签，无标签刻度{p_end}
{p2col:{cmd:yesno draw_minor_nl_hgrid}    {space 3}{{cmd:yes}|{cmd:no}}}
	水平坐标轴，次标签，无标签刻度{p_end}
{p2col:{cmd:yesno draw_majornl_nl_hgrid}  {space 1}{{cmd:yes}|{cmd:no}}}
	水平坐标轴，主要刻度，无标签刻度{p_end}
{p2col:{cmd:yesno draw_minornl_nl_hgrid}  {space 1}{{cmd:yes}|{cmd:no}}}
	水平坐标轴，次刻度，无标签刻度{p_end}

{p2col:{cmd:yesno draw_major_nl_vgrid}    {space 3}{{cmd:yes}|{cmd:no}}}
	垂直坐标轴，主要标签，无标签刻度{p_end}
{p2col:{cmd:yesno draw_minor_nl_vgrid}    {space 3}{{cmd:yes}|{cmd:no}}}
	垂直坐标轴，次标签，无标签刻度{p_end}
{p2col:{cmd:yesno draw_majornl_nl_vgrid}  {space 1}{{cmd:yes}|{cmd:no}}}
	垂直坐标轴，主要刻度，无标签刻度{p_end}
{p2col:{cmd:yesno draw_minornl_nl_vgrid}  {space 1}{{cmd:yes}|{cmd:no}}}
	垂直坐标轴，次刻度，无标签刻度{p_end}

{p2col:{cmd:yesno draw_major_nt_hgrid}    {space 3}{{cmd:yes}|{cmd:no}}}
	水平坐标轴，主要标签，无刻度刻度{p_end}
{p2col:{cmd:yesno draw_minor_nt_hgrid}    {space 3}{{cmd:yes}|{cmd:no}}}
	水平坐标轴，次标签，无刻度刻度{p_end}
{p2col:{cmd:yesno draw_majornl_nt_hgrid}  {space 1}{{cmd:yes}|{cmd:no}}}
	水平坐标轴，主要刻度，无刻度刻度{p_end}
{p2col:{cmd:yesno draw_minornl_nt_hgrid}  {space 1}{{cmd:yes}|{cmd:no}}}
	水平坐标轴，次刻度，无刻度刻度{p_end}

{p2col:{cmd:yesno draw_major_nt_vgrid}    {space 3}{{cmd:yes}|{cmd:no}}}
	垂直坐标轴，主要标签，无刻度刻度{p_end}
{p2col:{cmd:yesno draw_minor_nt_vgrid}    {space 3}{{cmd:yes}|{cmd:no}}}
	垂直坐标轴，次标签，无刻度刻度{p_end}
{p2col:{cmd:yesno draw_majornl_nt_vgrid}  {space 1}{{cmd:yes}|{cmd:no}}}
	垂直坐标轴，主要刻度，无刻度刻度{p_end}
{p2col:{cmd:yesno draw_minornl_nt_vgrid}  {space 1}{{cmd:yes}|{cmd:no}}}
	垂直坐标轴，次刻度，无刻度刻度{p_end}

{p2col:{cmd:yesno draw_major_nlt_hgrid}   {space 2}{{cmd:yes}|{cmd:no}}}
	水平坐标轴，主要标签，无标签或刻度刻度{p_end}
{p2col:{cmd:yesno draw_minor_nlt_hgrid}   {space 2}{{cmd:yes}|{cmd:no}}}
	水平坐标轴，次标签，无标签或刻度刻度{p_end}
{p2col:{cmd:yesno draw_majornl_nlt_hgrid} {space 0}{{cmd:yes}|{cmd:no}}}
	水平坐标轴，主要刻度，无标签或刻度刻度{p_end}
{p2col:{cmd:yesno draw_minornl_nlt_hgrid} {space 0}{{cmd:yes}|{cmd:no}}}
	水平坐标轴，次刻度，无标签或刻度刻度{p_end}

{p2col:{cmd:yesno draw_major_nlt_vgrid}   {space 2}{{cmd:yes}|{cmd:no}}}
	垂直坐标轴，主要标签，无标签或刻度刻度{p_end}
{p2col:{cmd:yesno draw_minor_nlt_vgrid}   {space 2}{{cmd:yes}|{cmd:no}}}
	垂直坐标轴，次标签，无标签或刻度刻度{p_end}
{p2col:{cmd:yesno draw_majornl_nlt_vgrid} {space 0}{{cmd:yes}|{cmd:no}}}
	垂直坐标轴，主要刻度，无标签或刻度刻度{p_end}
{p2col:{cmd:yesno draw_minornl_nlt_vgrid} {space 0}{{cmd:yes}|{cmd:no}}}
	垂直坐标轴，次刻度，无标签或刻度刻度{p_end}
{p2line}

{marker remarks3}{...}
{title:网格线的构造}

{p2colset 4 41 44 0}{...}
{p 3 3 2}
这些条目控制网格线是否贯穿绘图区域的边距，以及它们是否为刻度的极端值绘制。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:yesno extend_majorgrid_low} {space 0}{{cmd:yes}|{cmd:no}}}
        为主要刻度或标签的网格线延伸到绘图区域的边距至绘图区域的边界框 ({cmd:yes})，或仅延伸到绘图区域的下内边距 ({cmd:no}){p_end}
{p2col:{cmd:yesno extend_majorgrid_high} {space 0}{{cmd:yes}|{cmd:no}}}
        为主要刻度或标签的网格线延伸到绘图区域的边距至绘图区域的边界框 ({cmd:yes})，或仅延伸到绘图区域的上内边距 ({cmd:no}){p_end}
{p2col:{cmd:yesno extend_minorgrid_low} {space 0}{{cmd:yes}|{cmd:no}}}
        为次刻度或标签的网格线延伸到绘图区域的边距至绘图区域的边界框 ({cmd:yes})，或仅延伸到绘图区域的下内边距 ({cmd:no}){p_end}
{p2col:{cmd:yesno extend_minorgrid_high} {space 0}{{cmd:yes}|{cmd:no}}}
        为次刻度或标签的网格线延伸到绘图区域的边距至绘图区域的边界框 ({cmd:yes})，或仅延伸到绘图区域的上内边距 ({cmd:no}){p_end}

{p2col:{cmd:yesno grid_draw_min}      {space 5}{{cmd:yes}|{cmd:no}}}
	始终绘制最小的网格线，即使绘制网格线的标准规则会使其未被绘制{p_end}
{p2col:{cmd:yesno grid_draw_max}      {space 5}{{cmd:yes}|{cmd:no}}}
	始终绘制最大的网格线，即使绘制网格线的标准规则会使其未被绘制{p_end}
{p2col:{cmd:yesno grid_force_nomin}   {space 2}{{cmd:yes}|{cmd:no}}}
	从不绘制最小的网格线{p_end}
{p2col:{cmd:yesno grid_force_nomax}   {space 2}{{cmd:yes}|{cmd:no}}}
	从不绘制最大的网格线{p_end}

{p2col:{cmd:numstyle grid_outer_tol}  {space 2}{it:#}}
	绘制顶部和底部网格线的容差（通常 < 1 并且很少使用）{p_end}
{p2line}

{marker remarks4}{...}
{title:整体网格样式}

{p2colset 4 38 41 0}{...}
{p 3 3 2}
这些复合条目指定网格的整体外观；请参见 {manhelpi gridstyle G-4}。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:gridstyle major} {space 0}{it:{help gridstyle_zh}}}
	主要刻度的默认网格线{p_end}
{p2col:{cmd:gridstyle minor} {space 0}{it:{help gridstyle_zh}}}
	次刻度的默认网格线{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_grids.sthlp>}