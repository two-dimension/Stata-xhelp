{smcl}
{* *! version 1.0.4  13mar2015}{...}
{vieweralsosee "方案文件" "help scheme files"}
{help scheme_legends:English Version}
{hline}{...}
{title:图例方案条目}

{p 3 3 2}
这些图形方案条目控制所有图形类别中图例的外观。{p_end}

{p 3 3 2}
条目按以下标题呈现：

{p 8 12 0}{help scheme_legends##remarks1:图例定位}{p_end}
{p 8 12 0}{help scheme_legends##remarks2:图例关键标签}{p_end}
{p 8 12 0}{help scheme_legends##remarks3:图例构建}{p_end}
{p 8 12 0}{help scheme_legends##remarks4:图例标题、副标题、说明和注释}{p_end}
{p 8 12 0}{help scheme_legends##remarks5:图例区域}{p_end}
{p 8 12 0}{help scheme_legends##remarks6:整体设置}{p_end}

{marker remarks1}{...}
{title:图例定位}

{p2colset 4 47 50 0}{...}
{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:yesno         {space 8}图例跨越}         {space 7}{{cmd:是}|{cmd:否}}}
	{help scmd_ttlspan_zh:居中/跨越}{p_end}
{p2col:{cmd:gridringstyle {space 0}图例环}         {space 7}{it:{help ringpos}}}
	{help scmd_ttlring_zh:与绘图区域的距离}{p_end}
{p2col:{cmd:clockdir       {space 5}图例位置}    {space 3}{it:{help clockpos}}}
	相对于绘图区域的位置{p_end}

{p2col:{cmd:gridringstyle {space 0}by_图例环}      {space 4}{it:{help ringpos}}}
	{help by_option_zh:by graphs}的{help scmd_ttlring_zh:与绘图区域的距离}{p_end}
{p2col:{cmd:clockdir       {space 5}by_图例位置} {space 0}{it:{help clockpos}}}
	相对于绘图区域的位置{help by_option_zh:by graphs}{p_end}
{p2line}

{marker remarks2}{...}
{title:图例关键标签}

{p2colset 4 48 51 0}{...}
{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:gsize          {space 8}关键标签}  {space 1}{it:{help textsizestyle_zh}}}
	关键标签文本大小{p_end}
{p2col:{cmd:color          {space 8}关键标签}  {space 1}{it:{help textsizestyle_zh}}}
	关键标签文本颜色{p_end}
{p2col:{cmd:margin         {space 7}关键标签}  {space 1}{it:{help textsizestyle_zh}}}
	关键标签文本周围的边距{p_end}
{p2col:{cmd:compass2dir    {space 2}关键标签}  {space 1}{it:{help compassdirstyle_zh}}}
	图例键的标签位置{p_end}
{p2col:{cmd:horizontal     {space 3}关键标签}  {space 1}{it:{help justificationstyle_zh}}}
	关键标签对齐；很少使用；请改用 
	{cmd:compass2dir 关键标签} {p_end}
{p2col:{cmd:vertical_text  {space 0}关键标签}  {space 1}{it:{help alignmentstyle_zh}}}
	关键标签对齐；很少使用；请改用 
	{cmd:compass2dir 关键标签} {p_end}
{p2col:{cmd:textboxstyle   {space 1}图例关键} {space 0}{it:{help textboxstyle_zh}}}
	图例关键上标签的总体外观 (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。对于大多数官方方案，{it:textboxstyle} 是
{cmd:legend_key}，并且识别{cmd:key_label}为图形元素的表中的条目将影响关键标签。如果方案为{it:textboxstyle}指定了不同的复合样式，则必须使用与该复合样式关联的条目来更改关键标签的外观。{p_end}

{marker remarks3}{...}
{title:图例构建}

{p2colset 4 44 47 0}{...}
{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:numstyle {space 0}图例行数}         {space 5}{it:#}}
	关键的列数{p_end}
{p2col:{cmd:numstyle {space 0}图例列数}         {space 5}{it:#}}
	关键的行数{p_end}

{p2col:{cmd:gsize    {space 3}图例行间距}      {space 2}{it:{help textsizestyle_zh}}}
	关键行之间的距离{p_end}
{p2col:{cmd:gsize    {space 3}图例列间距}      {space 2}{it:{help textsizestyle_zh}}}
	关键列之间的距离{p_end}
{p2col:{cmd:gsize    {space 3}图例关键间距}      {space 2}{it:{help textsizestyle_zh}}}
	大多数{help legendstyle_zh:legendstyles}的关键标记和标签之间的间距{p_end}
{p2col:{cmd:gsize    {space 3}关键间距}             {space 9}{it:{help textsizestyle_zh}}}
	其他{help legendstyle_zh:legendstyles}的关键标记和标签之间的间距{p_end}
{p2col:{cmd:gsize    {space 3}图例关键_x尺寸}    {space 0}{it:{help textsizestyle_zh}}}
	除标记外的关键长度，例如，线和框{p_end}
{p2col:{cmd:gsize    {space 3}图例关键_y尺寸}    {space 0}{it:{help textsizestyle_zh}}}
	关键高度{p_end}

{p2col:{cmd:yesno    {space 3}图例列优先}    {space 5}{{cmd:是}|{cmd:否}}}
	先按列排列关键（{cmd:是}）或先按行排列（{cmd:否}）{p_end}
{p2col:{cmd:yesno    {space 3}图例文本优先}   {space 4}{{cmd:是}|{cmd:否}}}
	关键标签在关键之前{p_end}
{p2col:{cmd:yesno    {space 3}图例堆叠}      {space 7}{{cmd:是}|{cmd:否}}}
	将关键标签放在关键上方或下方，而不是旁边{p_end}
{p2col:{cmd:yesno    {space 3}图例强制关键尺寸}  {space 3}{{cmd:是}|{cmd:否}}}
	始终尊重关键的默认或指定 x 和 y 尺寸，绝不压缩{p_end}

{p2col:{cmd:yesno    {space 3}图例强制绘制}   {space 4}{{cmd:是}|{cmd:否}}}
	即使只有一个图形，也要强制绘制图例{p_end}
{p2col:{cmd:yesno    {space 3}图例强制不绘制} {space 2}{{cmd:是}|{cmd:否}}}
	不绘制图例{p_end}
{p2line}

{marker remarks4}{...}
{title:图例标题、副标题、说明和注释}

{p2colset 4 52 56 0}{...}
{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:textboxstyle  {space 1}图例标题}                {space 11}{it:{help textboxstyle_zh}}}
	图例副标题的整体文本样式 (*){p_end}
{p2col:{cmd:textboxstyle  {space 1}图例副标题}             {space 8}{it:{help textboxstyle_zh}}}
	图例副标题的整体文本样式 (*){p_end}
{p2col:{cmd:textboxstyle  {space 1}图例说明}              {space 9}{it:{help textboxstyle_zh}}}
	图例说明的整体文本样式 (*){p_end}
{p2col:{cmd:textboxstyle  {space 1}图例注释}                 {space 12}{it:{help textboxstyle_zh}}}
	图例注释的整体文本样式 (*){p_end}

{p2col:{cmd:clockdir      {space 5}图例标题位置}    {space 3}{it:{help clockpos}}}
	图例标题的位置{p_end}
{p2col:{cmd:clockdir      {space 5}图例副标题位置} {space 0}{it:{help clockpos}}}
	图例副标题的位置{p_end}
{p2col:{cmd:clockdir      {space 5}图例说明位置}  {space 1}{it:{help clockpos}}}
	图例说明的位置{p_end}
{p2col:{cmd:clockdir      {space 5}图例注释位置}     {space 4}{it:{help clockpos}}}
	图例注释的位置{p_end}

{p2col:{cmd:gridringstyle {space 0}图例标题环}    {space 7}{it:{help ringpos}}}
	图例标题 {help scmd_legttlring_zh:与关键和标签的距离}{p_end}
{p2col:{cmd:gridringstyle {space 0}图例副标题环} {space 4}{it:{help ringpos}}}
	图例副标题 {help scmd_legttlring_zh:与关键和标签的距离}{p_end}
{p2col:{cmd:gridringstyle {space 0}图例说明环}  {space 5}{it:{help ringpos}}}
	图例说明 {help scmd_legttlring_zh:与关键和标签的距离}{p_end}
{p2col:{cmd:gridringstyle {space 0}图例注释环}     {space 8}{it:{help ringpos}}}
	图例注释 {help scmd_legttlring_zh:与关键和标签的距离}{p_end}
{p2line}
{p 3 7 0}(*) 复合条目。对于大多数官方方案，{it:textboxstyle} 是
{cmd:heading} 用于图例标题，{cmd:subheading} 用于图例副标题，
{cmd:body} 用于图例说明，{cmd:small_body} 用于图例注释；这意味着这些标题共享图形标题、副标题、说明和注释的属性；请参见 {help scheme titles}、 
{help scheme subtitles}、 {help scheme captions} 和
{help scheme notes} 来设置这些属性。如果一个方案在这些条目之一中为{it:textboxstyle}指定了不同的复合样式，则必须使用与该复合样式关联的条目来更改文本的外观。{p_end}

{marker remarks5}{...}
{title:图例区域}

{p2colset 4 51 54 0}{...}
{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color       {space 6}图例}              {space 13}{it:{help colorstyle_zh}}}
	图例填充颜色{p_end}
{p2col:{cmd:intensity   {space 2}图例}              {space 13}{it:{help intensitystyle_zh}}}
	图例背景 {it:intensitystyle}{p_end}
{p2col:{cmd:shadestyle   {space 1}图例}             {space 13}{it:{help shadestyle_zh}}}
	图例背景 {it:shadestyle} (*){p_end}
{p2col:{cmd:linewidth   {space 2}图例}              {space 13}{it:{help linewidthstyle_zh:linewidth}}}
	图例轮廓厚度（如果绘制）{p_end}
{p2col:{cmd:linepattern {space 0}图例}              {space 13}{it:{help linepatternstyle_zh}}}
	图例的轮廓模式{p_end}
{p2col:{cmd:color       {space  6}图例线}        {space 8}{it:{help colorstyle_zh}}}
	图例轮廓颜色{p_end}

{p2col:{cmd:linestyle   {space 2}图例}              {space 13}{it:{help linestyle_zh}}}
	图例轮廓样式 (*){p_end}

{p2col:{cmd:margin      {space  5}图例}             {space 13}{it:{help marginstyle_zh}}}
	图例和图例框内部的边距{p_end}
{p2col:{cmd:margin      {space 5}图例框边距}    {space 3}{it:{help marginstyle_zh}}}
	图例框外部的边距{p_end}
{p2col:{cmd:margin      {space 5}图例关键区域}   {space 2}{it:{help marginstyle_zh}}}
	绘制关键的图例区域周围的边距{p_end}
{p2col:{cmd:areastyle   {space 2}图例}              {space 13}{it:{help areastyle_zh}}}
	总体图例区域 (*){p_end}
{p2col:{cmd:areastyle   {space 2}内图例}        {space  7}{it:{help areastyle_zh}}}
	内部图例区域 (*){p_end}
{p2col:{cmd:areastyle   {space 2}图例关键区域}   {space  2}{it:{help areastyle_zh}}}
	关键和标签区域，总体 (*){p_end}
{p2col:{cmd:areastyle   {space 2}图例关键内部区域} {space  0}{it:{help areastyle_zh}}}
	关键和标签区域，内部 (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。{p_end}

{marker remarks6}{...}
{title:整体设置}

{p2colset 4 40 43 0}{...}
{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:图例样式}  {space  10}{it:{help legendstyle_zh}}}
	整体图例样式；请注意，该条目中没有图形元素{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_legends.sthlp>}