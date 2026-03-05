{smcl}
{* *! version 1.1.9  23jan2019}{...}
{vieweralsosee "[R] ratio postestimation" "mansection R ratiopostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ratio" "help ratio_zh"}{...}
{viewerjumpto "Postestimation commands" "ratio postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "ratio_postestimation_zh##linkspdf"}{...}
{viewerjumpto "Examples" "ratio postestimation##examples"}
{help ratio_postestimation:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[R] ratio postestimation} {hline 2}}比率的后估计工具{p_end}
{p2col:}({mansection R ratiopostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:ratio} 后可以使用以下后估计命令：

{synoptset 11}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_lincom
{synopt :{help marginsplot_zh}}绘制比率的结果{p_end}
INCLUDE help post_nlcom
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection R ratiopostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse fuel}{p_end}
{phang2}{cmd:. ratio myratio: mpg1/mpg2}{p_end}

{pstd}测试比率是否显著不同于1{p_end}
{phang2}{cmd:. test _b[myratio] = 1}

    {hline}
    设置
{phang2}{cmd:. webuse census2}{p_end}
{phang2}{cmd:. ratio (deathrate: death/pop) (marrate: marriage/pop)}{p_end}

{pstd}测试婚姻率是否等于死亡率{p_end}
{phang2}{cmd:. test _b[deathrate] = _b[marrate]}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ratio_postestimation.sthlp>}