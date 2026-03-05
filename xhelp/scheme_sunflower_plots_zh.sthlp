{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "方案共享图" "help scheme shared plots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "方案文件" "help scheme files"}
{help scheme_sunflower_plots:English Version}
{hline}{...}
{title:向日葵图方案条目}

{p 3 3 2}
这些图形方案条目控制 {help sunflower_zh} 图的外观。详情请参见
{it:{help scheme_files##remarks3:图条目}} 在 {help scheme files} 中的
关于图条目的一般讨论。

{p 3 3 2}
条目在以下标题下呈现：

{p 8 12 0}{help scheme_sunflower_plots##remarks1:主要向日葵图条目}{p_end}
{p 8 12 0}{help scheme_sunflower_plots##remarks1:向日葵图的复合条目}{p_end}


{marker remarks1}{...}
{title:主要向日葵图条目}

{p2colset 4 46 49 0}{...}
{p 3 3 2}
最常用于改变向日葵图外观的条目。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color       {space 6}sunflower}         {space 2}{it:{help colorstyle_zh}}}
	向日葵标记颜色{p_end}
{p2col:{cmd:symbol      {space 5}sunflower}         {space 2}{it:{help symbolstyle_zh}}}
	向日葵标记符号{p_end}
{p2col:{cmd:symbolsize  {space 1}sunflower}         {space 2}{it:{help markersizestyle_zh}}}
	向日葵图标记大小{p_end}

{p2col:{cmd:linewidth   {space 2}sunflower}         {space 2}{it:{help linewidthstyle_zh:linewidth}}}
	向日葵花瓣厚度{p_end}

{p2col:{cmd:color       {space 6}sunflowerlb}       {space 0}{it:{help colorstyle_zh}}}
	浅向日葵背景色{p_end}
{p2col:{cmd:color       {space 6}sunflowerdb}       {space 0}{it:{help colorstyle_zh}}}
	深向日葵背景色{p_end}
{p2col:{cmd:color       {space 6}sunflowerlf}       {space 0}{it:{help colorstyle_zh}}}
	浅向日葵线颜色{p_end}
{p2col:{cmd:color       {space 6}sunflowerdf}       {space 0}{it:{help colorstyle_zh}}}
	深向日葵线颜色{p_end}
{p2col:{cmd:intensity   {space 2}sunflower}         {space 2}{it:{help intensitystyle_zh}}}
	向日葵图的强度{p_end}
{p2line}

{p 3 3 2}
如果方案中不包含上述某些特定于向日葵图的条目，则这些向日葵图元素的外观将由所有图类型共享的默认条目决定；请参见
{help scheme shared plots}。


{marker remarks2}{...}
{title:向日葵图的复合条目}

{p2colset 4 42 45 0}{...}
{p 3 3 2}
上表中的条目假定以下条目没有被更改。 但是，如果复合条目的样式被更改，则可能会更改影响向日葵图的各个属性条目。
请参阅 {it:{help scheme_files##remarks4:复合条目}} 在 {help scheme files} 中的讨论。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:markerstyle  {space 1}sunflower}             {space 2}{it:{help markerstyle_zh}}}
	向日葵图标记{p_end}
{p2col:{cmd:shadestyle   {space 2}sunflowerlb}           {space 0}{it:{help shadestyle_zh}}}
	浅向日葵背景 {it:shadestyle}{p_end}
{p2col:{cmd:shadestyle   {space 2}sunflowerdb}           {space 0}{it:{help shadestyle_zh}}}
	深向日葵背景 {it:shadestyle}{p_end}
{p2col:{cmd:areastyle    {space 3}sunflowerlb}           {space 0}{it:{help areastyle_zh}}}
	浅向日葵背景 {it:areastyle}{p_end}
{p2col:{cmd:areastyle    {space 3}sunflowerdb}           {space 0}{it:{help areastyle_zh}}}
	深向日葵背景 {it:areastyle}{p_end}
{p2col:{cmd:linestyle    {space 3}sunflower}             {space 2}{it:{help linestyle_zh}}}
	向日葵标记的线样式{p_end}
{p2col:{cmd:linestyle    {space 3}sunflowerlf}           {space 0}{it:{help linestyle_zh}}}
	浅向日葵花瓣的线样式{p_end}
{p2col:{cmd:linestyle    {space 3}sunflowerdf}           {space 0}{it:{help linestyle_zh}}}
	深向日葵花瓣的线样式{p_end}
{p2col:{cmd:linestyle    {space 3}sunflowerlb}           {space 0}{it:{help linestyle_zh}}}
	浅向日葵背景的轮廓样式{p_end}
{p2col:{cmd:linestyle    {space 3}sunflowerdb}           {space 0}{it:{help linestyle_zh}}}
	深向日葵背景的轮廓样式{p_end}
{p2col:{cmd:sunflower    {space 3}sunflower}             {space 0}{it:{help sunflowerstyle_zh}}}
	向日葵图的整体 {it:sunflowerstyle}{p_end}
{p2col:{cmd:sunflower    {space 3}p}{it:#}               {space 7}{it:{help sunflowerstyle_zh}}}
	第 # 个向日葵图的整体 {it:sunflowerstyle}，很少使用{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_sunflower_plots.sthlp>}