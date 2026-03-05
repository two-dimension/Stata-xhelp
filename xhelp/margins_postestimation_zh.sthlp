{smcl}
{* *! version 1.0.12  19oct2017}{...}
{vieweralsosee "[R] margins postestimation" "mansection R marginspostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] margins" "help margins_zh"}{...}
{vieweralsosee "[R] marginsplot" "help marginsplot_zh"}{...}
{viewerjumpto "Postestimation commands" "margins postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "margins_postestimation_zh##linkspdf"}{...}
{viewerjumpto "Examples" "margins postestimation##examples"}
{help margins_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[R] margins postestimation} {hline 2}}用于边际的后估计工具{p_end}
{p2col:}({mansection R marginspostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:margins} 之后可用的标准后估计命令如下：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt:{bf:{help marginsplot_zh}}}绘制来自 margins 的结果 -- 轮廓图、交互作用图等。{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
在 {cmd:margins}{cmd:, post} 之后可用的标准后估计命令如下：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_contrast
包含 help post_estatsum
包含 help post_estatvce
包含 help post_estimates
包含 help post_lincom
包含 help post_nlcom
包含 help post_pwcompare
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R marginspostestimationRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse margex}{p_end}
{phang2}{cmd:. logistic outcome sex##group age}{p_end}
{phang2}{cmd:. margins sex, post}

{pstd}估计男性与女性的风险比，使用 {cmd:margins} 发布的男性和女性的平均概率{p_end}
{phang2}{cmd:. nlcom (_b[1.sex] / _b[0.sex])}

{pstd}估计男性与女性之间的平均风险差异{p_end}
{phang2}{cmd:. lincom (_b[1.sex] - _b[0.sex])}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <margins_postestimation.sthlp>}