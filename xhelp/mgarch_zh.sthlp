{smcl}
{* *! version 1.0.6  23oct2017}{...}
{viewerdialog mgarch "dialog mgarch"}{...}
{vieweralsosee "[TS] mgarch" "mansection TS mgarch"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arch" "help arch_zh"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{viewerjumpto "语法" "mgarch_zh##syntax"}{...}
{viewerjumpto "描述" "mgarch_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mgarch_zh##linkspdf"}{...}
{viewerjumpto "示例" "mgarch_zh##examples"}
{help mgarch:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[TS] mgarch} {hline 2}}多元GARCH模型{p_end}
{p2col:}({mansection TS mgarch:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:mgarch} {it:model}
{it:eq} [{it:eq} ... {it:eq}] 
{ifin} 
[{cmd:,} ...]

{synoptset 38 tabbed}{...}
{p2coldent :模型族}{it:model}{p_end}
{synoptline}
{syntab:Vech}
{synopt :对角线 vech}{help mgarch_dvech_zh:dvech}{p_end}

{syntab:条件相关性}
{synopt :常数条件相关性}{help mgarch_ccc_zh:ccc}{p_end}
{synopt :动态条件相关性}{help mgarch_dcc_zh:dcc}{p_end}
{synopt :变动条件相关性}{help mgarch_vcc_zh:vcc}{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mgarch} 估计多元广义自回归条件异方差（MGARCH）模型的参数。
MGARCH模型允许条件均值和条件协方差都具有动态性。

{pstd}
一般的MGARCH模型非常灵活，因此并不是所有参数都可以被估计。
出于这个原因，存在许多以更简约方式参数化问题的MGARCH模型。

{pstd}
{cmd:mgarch} 实现了四种常用的参数化：对角线vech模型、常数条件相关性模型、动态条件相关性模型，以及时变条件相关性模型。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS mgarchRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker examples}{...}
{title:mgarch dvech示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse stocks}{p_end}

{pstd}拟合toyota和honda变化的VAR(1)模型，允许ARCH(1)误差{p_end}
{phang2}{cmd:. mgarch dvech (toyota honda = L.toyota L.honda), arch(1)}{p_end}

{title:mgarch dcc示例}

{pstd}拟合honda和nissan变化的VAR(1)模型，允许ARCH(1)和GARCH(1)误差{p_end}
{phang2}{cmd:. mgarch dcc (honda nissan = L.honda L.nissan), arch(1) garch(1)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mgarch.sthlp>}