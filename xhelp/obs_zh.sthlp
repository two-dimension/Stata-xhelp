{smcl}
{* *! version 1.1.4  19oct2017}{...}
{vieweralsosee "[D] obs" "mansection D obs"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] describe" "help describe_zh"}{...}
{vieweralsosee "[D] insobs" "help insobs_zh"}{...}
{viewerjumpto "语法" "obs_zh##syntax"}{...}
{viewerjumpto "描述" "obs_zh##description"}{...}
{viewerjumpto "PDF文档链接" "obs_zh##linkspdf"}{...}
{viewerjumpto "示例" "obs_zh##examples"}
{help obs:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[D] obs} {hline 2}}增加数据集中观察值的数量{p_end}
{p2col:}({mansection D obs:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:set}
{opt ob:s}
{it:#}


{marker description}{...}
{title:描述}

{pstd}
{opt set obs} 更改当前数据集中的观察值数量。 
{it:#} 必须至少与当前观察值数量相等。 
如果内存中存在变量，则所有新观察值的值将被设为缺失值。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D obsQuickstart:快速入门}

        {mansection D obsRemarksandexamples:备注与示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{phang}{cmd:. drop _all}{space 6}(从内存中删除数据)          {p_end}
{phang}{cmd:. set obs 100}{space 4}(设置为100个观察值) {p_end}
{phang}{cmd:. gen x = _n}{space 5}(x = 1, 2, 3, .., 100)  {p_end}
{phang}{cmd:. gen y = x^2}{space 4}(y = 1, 4, 9, .., 10000){p_end}
{phang}{cmd:. scatter y x}{space 4}(生成图形)          {p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <obs.sthlp>}