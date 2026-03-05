{smcl}
{* *! version 1.0.5  25feb2019}{...}
{viewerdialog estat "dialog dsge_estat, message(-transition-) name(dsge_estat_transition)"}{...}
{vieweralsosee "[DSGE] estat transition" "mansection DSGE estattransition"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[DSGE] dsge" "help dsge_zh"}{...}
{vieweralsosee "[DSGE] dsge postestimation" "help dsge postestimation"}{...}
{vieweralsosee "[DSGE] dsgenl" "help dsgenl_zh"}{...}
{vieweralsosee "[DSGE] dsgenl postestimation" "help dsgenl postestimation"}{...}
{vieweralsosee "[DSGE] Intro 1" "mansection DSGE Intro1"}{...}
{viewerjumpto "Syntax" "dsge estat transition##syntax"}{...}
{viewerjumpto "Menu for estat" "dsge estat transition##menu_estat"}{...}
{viewerjumpto "Description" "dsge estat transition##description"}{...}
{viewerjumpto "Links to PDF documentation" "dsge_estat_transition_zh##linkspdf"}{...}
{viewerjumpto "Options" "dsge estat transition##options"}{...}
{viewerjumpto "Examples" "dsge estat transition##examples"}{...}
{viewerjumpto "Stored results" "dsge estat transition##results"}
{help dsge_estat_transition:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[DSGE] estat transition} {hline 2}}显示状态转移矩阵{p_end}
{p2col:}({mansection DSGE estattransition:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:estat} {cmd:transition}
[{cmd:,}
{opt compact}
{opt post}
{opt l:evel(#)}
{help dsge_estat_transition##display_options:{it:display_options}}]


INCLUDE help menu_estat


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat transition} 显示DSGE模型状态空间形式的估计状态转移矩阵。 


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection DSGE estattransitionQuickstart:快速入门}

        {mansection DSGE estattransitionRemarksandexamples:备注和示例}

        {mansection DSGE estattransitionMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt compact}
仅报告估计政策矩阵的系数值，并以矩阵形式显示这些系数。

{phang}
{opt post} 会使 {opt estat transition} 的行为类似于Stata估计（e类）命令。 {opt estat transition} 将状态转移矩阵发布到 {opt e()}，因此您可以像对待其他任何估计命令的结果一样对待它。

{phang}
{opt level(#)} 指定置信区间的置信水平，百分比表示。 默认值是 {cmd:level(95)} 或由 {helpb set level} 设置。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt noci},
{opt nopv:alues},
{opth cformat(fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}, 和
{opt nolstretch};
    参见 {helpb estimation options##display_options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rates2}{p_end}
{phang2}{cmd:. generate p = 400*(ln(gdpdef) - ln(L.gdpdef))}{p_end}
{phang2}{cmd:. label variable p "通货膨胀率"}{p_end}
{phang2}{cmd:. dsge (p = {c -(}beta{c )-}*F.p + {c -(}kappa{c )-}*x)}
         {cmd:(x = F.x -(r - F.p - g), 未观测)}
         {cmd:(r = (1/{c -(}beta{c )-})*p + u)}
         {cmd:(F.u = {c -(}rhou{c )-}*u, 状态)}
         {cmd:(F.g = {c -(}rhoz{c )-}*g, 状态)}

{pstd}获取转移矩阵{p_end}
{phang2}{cmd:. estat transition}

{pstd}设置{p_end}
{phang2}{cmd:. webuse usmacro2, clear}{p_end}
{phang2}{cmd:. constraint 1 _b[beta]=0.96}{p_end}

{pstd}参数估计{p_end}
{phang2}{cmd:. dsge (p = {c -(}beta{c )-}*F.p + {c -(}kappa{c )-}*x)}
        {cmd:(x = F.x -(r - F.p - g), 未观测)}
        {cmd:(r = {c -(}psi{c )-}*p + u)}
        {cmd:(F.u = {c -(}rhou{c )-}*u, 状态)}
        {cmd:(F.g = {c -(}rhog{c )-}*g, 状态),}
        {cmd:from(psi=1.5) constraint(1)}{p_end}

{pstd}获取转移矩阵{p_end}
{phang2}{cmd:. estat transition}
{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:estat transition} 将以下内容存储在 {cmd:r()}：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(transition)}}估计的转移矩阵{p_end}
{synopt:{cmd:r(b)}}估计值{p_end}
{synopt:{cmd:r(V)}}估计的方差-协方差矩阵{p_end}
{p2colreset}{...}

{pstd}
如果指定了 {cmd:post}，则 {cmd:estat transition} 还会将以下内容存储在 {cmd:e()}：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(transition)}}估计的转移矩阵{p_end}
{synopt:{cmd:e(b)}}估计值{p_end}
{synopt:{cmd:e(V)}}估计的方差-协方差矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dsge_estat_transition.sthlp>}