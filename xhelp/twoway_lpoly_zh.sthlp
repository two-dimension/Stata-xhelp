{smcl}
{* *! version 1.1.11  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway lpoly" "mansection G-2 graphtwowaylpoly"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] lpoly" "help lpoly_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway lpolyci" "help twoway_lpolyci_zh"}{...}
{viewerjumpto "Syntax" "twoway_lpoly_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_lpoly_zh##menu"}{...}
{viewerjumpto "Description" "twoway_lpoly_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_lpoly_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_lpoly_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_lpoly_zh##remarks"}
{help twoway_lpoly:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[G-2] graph twoway lpoly} {hline 2}}局部多项式平滑图{p_end}
{p2col:}({mansection G-2 graphtwowaylpoly:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmdab: tw:oway}{cmd: lpoly} 
	{it:yvar} 
	{it:xvar} {ifin}
        [{it:{help twoway lpoly##weight:权重}}]
	[{cmd:,} {it:选项}]

{synoptset 20}{...}
{synopt:{it:选项}}描述{p_end}
{p2line}
{synopt: {opth k:ernel(twoway_lpoly##kernel:核函数)}}核函数；
             默认是 {cmd:kernel(epanechnikov)}{p_end}
{synopt :{opt bw:idth(#)}}核带宽{p_end}
{synopt :{opt deg:ree(#)}}平滑的多项式次数；默认是
             {cmd:degree(0)}{p_end}
{synopt :{opt n(#)}}在 {it:#} 个点计算平滑；默认是
                {bind:min(N, 50)}{p_end}

INCLUDE help gr_clopt

INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}

{synoptset 20}{...}
{synopt :{it:kernel}}描述{p_end}
{p2line}
{marker kernel}{...}
{synopt :{opt epa:nechnikov}}Epanechnikov 核函数；默认{p_end}
{synopt :{opt epan2}}替代的 Epanechnikov 核函数{p_end}
{synopt :{opt bi:weight}}双重权重核函数{p_end}
{synopt :{opt cos:ine}}余弦迹核函数{p_end}
{synopt :{opt gau:ssian}}高斯核函数{p_end}
{synopt :{opt par:zen}}Parzen 核函数{p_end}
{synopt :{opt rec:tangle}}矩形核函数{p_end}
{synopt :{opt tri:angle}}三角核函数{p_end}
{p2line}
{p2colreset}{...}

{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight} 和 {cmd:aweight}；见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 二维图形（散点图、线图等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:twoway} {cmd:lpoly} 在 {it:xvar} 上绘制 {it:yvar} 的局部多项式平滑。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection G-2 graphtwowaylpolyQuickstart:快速入门}

        {mansection G-2 graphtwowaylpolyRemarksandexamples:备注与示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth "kernel(twoway_lpoly##kernel:核函数)"} 指定用于计算加权局部多项式估计的核函数。默认是 {cmd:kernel(epanechnikov)}。关于此选项的更多信息，请参见 {manhelp kdensity R}。

{phang}
{opt bwidth(#)} 指定核的半宽，围绕每个点的平滑窗口宽度。如果未指定 {opt bwidth()}，则计算并使用经验带宽估计；见 {manhelp lpoly R}。

{phang}
{opt degree(#)} 指定用于平滑的多项式的次数。默认是 {cmd:degree(0)}，表示局部均值平滑。

{phang}
{opt n(#)} 指定平滑计算的点数。默认是 min(N,50)，其中 N 为观测值数量。

{phang}
{it:cline_options} 指定线条的渲染方式及外观；见 {manhelpi cline_options G-3}。

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:graph} {cmd:twoway} {cmd:lpoly} {it:yvar xvar} 使用 {cmd:lpoly} 命令 -- 见 {manhelp lpoly R} -- 来获取 {it:yvar} 在 {it:xvar} 上的局部多项式平滑，并使用 {cmd:graph} {cmd:twoway} {cmd:line} 来绘制结果。

{pstd}
备注以以下标题呈现：

        {help twoway lpoly##remarks1:典型用法}
        {help twoway lpoly##remarks2:与 by() 的使用}


{marker remarks1}{...}
{title:典型用法}

{pstd}
局部多项式平滑通常在数据上方绘制，可能与其他平滑线或回归线同时显示：

        {cmd:. sysuse auto}

        {cmd:. twoway scatter weight length, mcolor(*.6) || }
        {cmd:         lpoly weight length	         || }
        {cmd:         lowess weight length}
          {it:({stata "gr_example auto: twoway scatter weight length, mcolor(*.6) || lpoly weight length || lowess weight length":click to run})} 
{* graph gtlpoly1}{...}

{pstd}
我们使用 {cmd:mcolor(*.6)} 来减暗点的颜色，从而使线条更加突出；见 {manhelpi colorstyle G-4}。


{marker remarks2}{...}
{title:与 by() 的使用}

{pstd}
{cmd:graph} {cmd:twoway} {cmd:lpoly} 可与 {cmd:by()} 一起使用：

        {cmd:. sysuse auto, clear}

        {cmd:. twoway scatter weight length, mcolor(*.6) ||}
        {cmd:         lpoly weight length,		 ||}
        {cmd:    , by(foreign)}
          {it:({stata "gr_example auto: tw scatter weight length, mcolor(*.6) || lpoly weight length ||, by(foreign)":click to run})}
{* graph gtlpoly2}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_lpoly.sthlp>}