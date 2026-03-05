
{help cluster_dendro_optstab:English Version}
{hline}
{* *! version 1.0.7  14apr2011}{...}
{p 8 27 2}{cmd:cluster} {cmdab:dend:rogram} [{it:clname}] {ifin}
	[{cmd:,} {it:options} ]

{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主菜单}
{synopt:{opt quick}}不居中父分支{p_end}
{synopt:{opth la:bels(varname)}}包含叶标签的变量名称{p_end}
{synopt:{opt cutn:umber(#)}}仅显示前 # 个分支{p_end}
{synopt:{opt cutv:alue(#)}}仅显示高于 # （不）相似度度量的分支{p_end}
{synopt:{opt show:count}}显示每个分支的观察数{p_end}
{synopt:{opth countp:refix(strings:string)}}在分支计数前添加 {it:string} 前缀；默认值为 ``n=''{p_end}
{synopt:{opth counts:uffix(strings:string)}}在分支计数后添加 {it:string} 后缀；默认值为空字符串{p_end}
{synopt:{opt counti:nline}}将分支计数放置在分支标签的同一行{p_end}
{synopt:{opt vert:ical}}垂直排列树状图（默认）{p_end}
{synopt:{opt hor:izontal}}水平排列树状图{p_end}

{syntab :绘图}
{synopt :{it:{help line_options_zh}}}影响所绘制线条的表现{p_end}

{syntab :添加绘图}
{synopt :{opth "addplot(addplot_option:plot)"}}向树状图添加其他绘图{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}除 {opt by()} 以外的任何选项，详见 {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
注意： {cmd:cluster} {cmdab:tr:ee} 是 {cmd:cluster} {cmd:dendrogram} 的同义词。

{pstd}
除了 {cmd:if} 和 {cmd:in} 施加的限制外，观察结果自动限制为在聚类分析中使用的那些。
{p_end}