{smcl}
{* *! version 1.1.4  15oct2018}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spbalance" "mansection SP spbalance"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] spset" "help spset_zh"}{...}
{vieweralsosee "[SP] spregress" "help spregress_zh"}{...}
{vieweralsosee "[SP] spxtregress" "help spxtregress_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "spbalance_zh##syntax"}{...}
{viewerjumpto "Menu" "spbalance_zh##menu"}{...}
{viewerjumpto "Description" "spbalance_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "spbalance_zh##linkspdf"}{...}
{viewerjumpto "Example" "spbalance_zh##example"}{...}
{viewerjumpto "Stored results" "spbalance_zh##results"}
{help spbalance:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[SP] spbalance} {hline 2}}使面板数据强平衡{p_end}
{p2col:}({mansection SP spbalance:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
查询数据是否强平衡

{p 8 14 2}
{cmd:spbalance}


{phang}
如果数据不强平衡，则使数据强平衡

{p 8 14 2}
{cmd:spbalance,} {cmd:balance}


包含帮助菜单_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spbalance} 报告面板数据是否强平衡，并在必要时进行平衡。

{pstd}
数据需要使用 {help xtset_zh} 进行设置。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SP spbalanceQuickstart:快速开始}

        {mansection SP spbalanceRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker example}{...}
{title:示例}

{pstd}
在您的浏览器中搜索“County_2010Census_DP1”并保存
Zip 文件。

{pstd}设置{p_end}
{phang2}{cmd:. unzipfile County_2010Census_DP1.zip}
{p_end}
{phang2}{cmd:. spshape2dta County_2010Census_DP1}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/cbp05_14co.dta .}
{p_end}
{phang2}{cmd:. use cbp05_14co}
{p_end}
{phang2}{cmd:. merge m:1 GEOID10 using County_2010Census_DP1}
{p_end}
{phang2}{cmd:. keep if _merge == 3}
{p_end}
{phang2}{cmd:. drop _merge}
{p_end}
{phang2}{cmd:. save cbp05_14co_census}
{p_end}
{phang2}{cmd:. xtset _ID year}

{pstd}检查数据是否平衡{p_end}
{phang2}{cmd:. spbalance}

{pstd}平衡数据{p_end}
{phang2}{cmd:. spbalance, balance}


{marker results}{...}
{title:存储结果}

{pstd}
不使用 {cmd:balance} 选项的 {cmd:spbalance} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(balanced)}}{cmd:1} 如果强平衡，{cmd:0} 否则{p_end}

{pstd}
使用 {cmd:balance} 的 {cmd:spbalance} 在 {cmd:r()} 中存储以下内容：

{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(balanced)}}{cmd:1}{p_end}
{synopt:{cmd:r(Ndropped)}}丢弃的观测值数量{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(T)}}1 x {cmd:r(Ndropped)} 向量的时间，如果 {cmd:r(Ndropped)} > 0{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spbalance.sthlp>}