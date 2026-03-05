{smcl}
{* *! version 1.0.11  14feb2019}{...}
{viewerdialog estat "dialog fmm_estat"}{...}
{vieweralsosee "[FMM] estat eform" "mansection FMM estateform"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm_postestimation_zh"}{...}
{viewerjumpto "Syntax" "fmm_estat_eform_zh##syntax"}{...}
{viewerjumpto "Menu" "fmm_estat_eform_zh##menu_estat"}{...}
{viewerjumpto "Description" "fmm_estat_eform_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fmm_estat_eform_zh##linkspdf"}{...}
{viewerjumpto "Options" "fmm_estat_eform_zh##options"}{...}
{viewerjumpto "Examples" "fmm_estat_eform_zh##examples"}
{help fmm_estat_eform:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[FMM] estat eform} {hline 2}}显示指数化的系数{p_end}
{p2col:}({mansection FMM estateform:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmd:eform}
[{it:eqnamelist}]
[{cmd:,} {opt l:evel(#)} {it:display_options}]

{phang}
其中 {it:eqnamelist} 是方程名称的列表。通过 {opt fmm}，
    方程名称对应于响应变量的名称。
    如果未指定 {it:eqnamelist}，则显示第一个方程的指数化结果。


包含帮助菜单_estat


{marker description}{...}
{title:描述}

{pstd}
{opt fmm} 报告系数。
通过在估计后使用 {opt estat} {opt eform} 可以获得指数化的系数及其标准误差，并重新显示结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection FMM estateformRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt level(#)};
    见 {helpb estimation options:[R] 估计选项}。

{phang}
{it:display_options}
     控制因子变量及更多内容的显示。
     允许的 {it:display_options} 包括
{opt noci},
{opt nopv:alues},
{opt noomit:ted},
{opt vsquish},
{opt noempty:cells},
{opt base:levels},
{opt allbase:levels},
{opt nofvlab:el},
{opt fvwrap(#)},
{opt fvwrapon(style)},
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)} 和
{opt nolstretch};
    见 {helpb estimation options##display_options:[R] 估计选项}。
{p_end}


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse epay}

{pstd}两个逻辑回归模型的混合{p_end}
{phang2}{cmd:. fmm 2: logit epay age i.male}

{pstd}报告指数化的系数（优势比）而非系数{p_end}
{phang2}{cmd:. estat eform}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse sim_car}

{pstd}两个多项式逻辑回归模型的混合{p_end}
{phang2}{cmd:. fmm 2, lcinvariant(cons): mlogit model i.female income}

{pstd}报告指数化的系数（相对风险比）而非系数{p_end}
{phang2}{cmd:. estat eform}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_estat_eform.sthlp>}