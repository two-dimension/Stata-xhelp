{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[G-4] compassdirstyle" "mansection G-4 compassdirstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] textbox_options" "help textbox_options_zh"}{...}
{viewerjumpto "Syntax" "compassdirstyle_zh##syntax"}{...}
{viewerjumpto "Description" "compassdirstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "compassdirstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "compassdirstyle_zh##remarks"}
{help compassdirstyle:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[G-4]} {it:compassdirstyle} {hline 2}}位置选择{p_end}
{p2col:}({mansection G-4 compassdirstyle:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

			    {hline 10} 同义词 {hline 10}
	{it:compassdirstyle}     第一  第二  第三    第四
	{hline 51}
	{cmd:north}                 {cmd:n}      {cmd:12}              {cmdab:t:op}
	{cmd:neast}                 {cmd:ne}     {cmd: 1}      {cmd: 2}
	{cmd:east}                  {cmd:e}      {cmd: 3}              {cmdab:r:ight}
	{cmd:seast}                 {cmd:se}     {cmd: 4}      {cmd: 5}
	{cmd:south}                 {cmd:s}      {cmd: 6}              {cmdab:b:ottom}
	{cmd:swest}                 {cmd:sw}     {cmd: 7}      {cmd: 8}
	{cmd:west}                  {cmd:w}      {cmd: 9}              {cmdab:l:eft}
	{cmd:nwest}                 {cmd:nw}     {cmd:10}      {cmd:11}
	{cmd:center}                {cmd:c}      {cmd: 0}
	{hline 51}

{pstd}
	其他 {it:compassdirstyles} 可能也可用；输入

	    {cmd:.} {bf:{stata graph query compassdirstyle}}

{pstd}
以获取您计算机上已安装的 {it:compassdirstyle} 的完整列表。


{marker description}{...}
{title:描述}

{pstd}
{it:compassdirstyle} 指定一个方向。

{pstd}
{it:compassdirstyle} 在选项中指定，比如 {cmd:placement()} 文本框子选项中的 {cmd:title()}（见 {manhelpi title_options G-3} 和 {manhelpi textbox_options G-3}）：

{p 8 16 2}
{cmd:. graph}
...{cmd:, title(}...{cmd:, placement(}{it:compassdirstyle}{cmd:))} ...

{pstd}
有时您可能会看到允许使用 {it:compassdirstylelist}：
{it:compassdirstylelist} 是一系列用空格分隔的 {it:compassdirstyles}。允许使用简写以简化列表的指定；请参见 {manhelpi stylelists G-4}。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection G-4 compassdirstyleRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
有两种方法用于指定方向—罗盘和时钟。一些选项使用罗盘，一些使用时钟。例如，文本框选项 {cmd:position()} 使用罗盘（见 {manhelpi textbox_options G-3}），但标题选项 {cmd:position()} 使用时钟（见 {manhelpi title_options G-3}）。这种差异的原因是有些选项只需要罗盘指定的八个方向，而其他选项需要更多。无论如何，都提供同义词，以便您在所有情况下都可以使用时钟表示法。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <compassdirstyle.sthlp>}