{smcl}
{* *! version 2.1.7  19oct2017}{...}
{viewerdialog "estimates replay" "dialog estimates_replay"}{...}
{vieweralsosee "[R] estimates replay" "mansection R estimatesreplay"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estimates" "help estimates_zh"}{...}
{viewerjumpto "语法" "estimates_replay_zh##syntax"}{...}
{viewerjumpto "菜单" "estimates_replay_zh##menu"}{...}
{viewerjumpto "描述" "estimates_replay_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "estimates_replay_zh##linkspdf"}{...}
{viewerjumpto "示例" "estimates_replay_zh##examples"}
{help estimates_replay:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[R] estimates replay} {hline 2}}重新显示估计结果{p_end}
{p2col:}({mansection R estimatesreplay:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{opt est:imates} {opt r:eplay} 

{p 8 12 2}
{opt est:imates} {opt r:eplay} 
{it:namelist}


{phang}
其中 {it:namelist} 是一个名称、多个名称的列表、{cmd:_all} 或 
{cmd:*}.{break}
名称可以是 {cmd:.}，表示当前（活动）估计值。{break}
{cmd:_all} 和 {cmd:*} 意思相同。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estimates} {cmd:replay} 
重新显示当前（活动）估计结果，就像输入估计命令的名称一样。

{pstd}
{cmd:estimates} {cmd:replay} {it:namelist} 
重新显示每个指定的估计结果。活动的估计结果不变。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R estimatesreplayQuickstart:快速入门}

        {mansection R estimatesreplayRemarksandexamples:备注与示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

    设置
	{cmd:. sysuse auto}
	{cmd:. gen gpm  = 1/mpg}

{pstd}拟合一个回归{p_end}
	{cmd:. regress gpm i.foreign i.foreign#c.weight displ}

{pstd}将结果存储为 {cmd:reg}{p_end}
	{cmd:. estimates store reg}

{pstd}拟合一个分位数回归{p_end}
	{cmd:. qreg gpm i.foreign i.foreign#c.weight displ}

{pstd}将结果存储为 {cmd:qreg}{p_end}
	{cmd:. estimates store qreg}

{pstd}检验每组结果中两个参数的相等性{p_end}
	{cmd:. estimates for reg qreg: test 0.foreign#c.weight==1.foreign#c.weight}

{pstd}重新播放最近的结果{p_end}
        {cmd:. estimates replay}

{pstd}重新播放存储为 {cmd:reg} 的结果{p_end}
        {cmd:. estimates replay reg}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estimates_replay.sthlp>}