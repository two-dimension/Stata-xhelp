{smcl}
{* *! version 1.0.5  25feb2019}{...}
{viewerdialog estat "dialog dsge_estat, message(-policy-) name(dsge_estat_policy)"}{...}
{vieweralsosee "[DSGE] estat policy" "mansection DSGE estatpolicy"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[DSGE] dsge" "help dsge_zh"}{...}
{vieweralsosee "[DSGE] dsge postestimation" "help dsge postestimation"}{...}
{vieweralsosee "[DSGE] dsgenl" "help dsgenl_zh"}{...}
{vieweralsosee "[DSGE] dsgenl postestimation" "help dsgenl postestimation"}{...}
{vieweralsosee "[DSGE] Intro 1" "mansection DSGE Intro1"}{...}
{viewerjumpto "Syntax" "estat policy##syntax"}{...}
{viewerjumpto "Menu for estat" "estat policy##menu_estat"}{...}
{viewerjumpto "Description" "estat policy##description"}{...}
{viewerjumpto "Links to PDF documentation" "estat_policy_zh##linkspdf"}{...}
{viewerjumpto "Options" "estat policy##options"}{...}
{viewerjumpto "Examples" "estat policy##examples"}{...}
{viewerjumpto "Stored results" "estat policy##results"}
{help estat_policy:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[DSGE] estat policy} {hline 2}}显示政策矩阵{p_end}
{p2col:}({mansection DSGE estatpolicy:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:estat policy}
[{cmd:,}
{opt compact}
{opt post}
{opt l:evel(#)}
{help estat_policy##display_options:{it:display_options}}]


包含帮助菜单 estat


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat policy} 显示 DSGE 模型状态空间形式的估计政策矩阵。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection DSGE estatpolicyQuickstart:快速入门}

        {mansection DSGE estatpolicyRemarksandexamples:备注和示例}

        {mansection DSGE estatpolicyMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt compact} 仅报告估计政策矩阵的系数值，并以矩阵形式显示这些系数。

{phang}
{opt post} 使得 {opt estat policy} 像 Stata 的估计（e-class）命令一样行为。 {opt estat policy} 将政策矩阵参数和估计的方差-协方差矩阵发布到 {opt e()} 中，因此您可以将估计的政策矩阵视为来自任何其他估计命令的结果。

{phang}
{opt level(#)} 指定置信区间的置信水平，作为百分比。默认值是 {cmd:level(95)} 或通过 {helpb set level} 设置的值。

{marker display_options}{...}
{phang}
{it:display_options}：
{opt noci},
{opt nopv:alues},
{opth cformat(fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}，以及
{opt nolstretch}；
    见 {helpb estimation options##display_options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rates2}{p_end}
{phang2}{cmd:. generate p = 400*(ln(gdpdef) - ln(L.gdpdef))}{p_end}
{phang2}{cmd:. label variable p "通货膨胀率"}{p_end}
{phang2}{cmd:. dsge (p = {c -(}beta{c )-}*F.p + {c -(}kappa{c )-}*x)}
         {cmd:(x = F.x -(r - F.p - g), 未观察到的)}
         {cmd:(r = (1/{c -(}beta{c )-})*p + u)}
         {cmd:(F.u = {c -(}rhou{c )-}*u, 状态)}
         {cmd:(F.g = {c -(}rhoz{c )-}*g, 状态)}

{pstd}获取政策矩阵{p_end}
{phang2}{cmd:. estat policy}

{pstd}设置{p_end}
{phang2}{cmd:. webuse usmacro2, clear}{p_end}
{phang2}{cmd:. constraint 1 _b[beta]=0.96}{p_end}
{phang2}{cmd:. dsge (p = {c -(}beta{c )-}*F.p + {c -(}kappa{c )-}*x)}
               {cmd:(x = F.x -(r - F.p - g), 未观察到的)}
               {cmd:(r = {c -(}psi{c )-}*p + u)}
               {cmd:(F.u = {c -(}rhou{c )-}*u, 状态)}
               {cmd:(F.g = {c -(}rhog{c )-}*g, 状态),}
               {cmd:from(psi=1.5) constraint(1)}

{pstd}获取政策矩阵{p_end}
{phang2}{cmd:. estat policy}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat policy} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(policy)}}估计的政策矩阵{p_end}
{synopt:{cmd:r(b)}}估计值{p_end}
{synopt:{cmd:r(V)}}估计的方差-协方差矩阵{p_end}
{p2colreset}{...}

{pstd}
如果指定了 {cmd:post}，则 {cmd:estat policy} 还会将以下内容存储在 {cmd:e()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(policy)}}估计的政策矩阵{p_end}
{synopt:{cmd:e(b)}}估计值{p_end}
{synopt:{cmd:e(V)}}估计的方差-协方差矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_policy.sthlp>}