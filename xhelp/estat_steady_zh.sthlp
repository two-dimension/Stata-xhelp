{smcl}
{* *! version 1.0.0  25feb2019}{...}
{viewerdialog estat "dialog dsge_estat, message(-steady-) name(dsge_estat_steady)"}{...}
{vieweralsosee "[DSGE] estat steady" "mansection DSGE estatsteady"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[DSGE] dsgenl" "help dsgenl_zh"}{...}
{vieweralsosee "[DSGE] dsgenl postestimation" "help dsgenl postestimation"}{...}
{vieweralsosee "[DSGE] Intro 3f" "mansection DSGE Intro3f"}{...}
{viewerjumpto "语法" "estat steady##syntax"}{...}
{viewerjumpto "estat 的菜单" "estat steady##menu_estat"}{...}
{viewerjumpto "描述" "estat steady##description"}{...}
{viewerjumpto "PDF 文档链接" "estat_steady_zh##linkspdf"}{...}
{viewerjumpto "选项" "estat steady##options"}{...}
{viewerjumpto "示例" "estat steady##examples"}{...}
{viewerjumpto "存储的结果" "estat steady##results"}
{help estat_steady:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[DSGE] estat steady} {hline 2}}显示非线性 DSGE 模型的稳态{p_end}
{p2col:}({mansection DSGE estatsteady:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:estat steady}
[{cmd:,} {cmd:compact}
{opt l:evel(#)}
{it:{help estat_steady##display_options:显示选项}}]


INCLUDE help menu_estat


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat steady} 显示非线性 DSGE 模型中变量的估计稳态值。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection DSGE estatsteadyQuickstart:快速开始}

        {mansection DSGE estatsteadyRemarksandexamples:备注和示例}

        {mansection DSGE estatsteadyMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt compact} 只报告估计稳态向量的系数值。

{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置。

{marker display_options}{...}
{phang}
{it:显示选项}:
{opt noci},
{opt nopv:alues},
{opth cformat(fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}，和
{opt nolstretch};
    参见 {helpb estimation options##display_options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse usmacro2}{p_end}
{phang2}{cmd:. constraint 1 _b[theta]=5}{p_end}
{phang2}{cmd:. constraint 2 _b[beta]=0.96}{p_end}

{pstd}参数估计{p_end}
{phang2}{cmd:. dsgenl (1 = {beta}*(x/F.x)*(1/z)*(r/F.p))}
        {cmd:({theta}-1 + {phi}*(p -1)*p = {theta}*x + {phi}*{beta}*(F.p-1)*F.p)}
        {cmd:(({beta})*r = (p)^({psi=2})*m)}
        {cmd:(ln(F.m) = {rhom}*ln(m))}
        {cmd:(ln(F.z) = {rhoz}*ln(z)),}
        {cmd:exostate(z m) unobserved(x) observed(p r)}
        {cmd:constraint(1 2)}{p_end}

{pstd}获取稳态{p_end}
{phang2}{cmd:. estat steady}

{pstd}仅报告稳态系数{p_end}
{phang2}{cmd:. estat steady, compact}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:estat steady} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(steady)}}估计的稳态向量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_steady.sthlp>}