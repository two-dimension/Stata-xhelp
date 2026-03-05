{smcl}
{* *! version 1.0.0  25feb2019}{...}
{viewerdialog estat "dialog dsge_estat, message(-covariance-) name(dsge_estat_covariance)"}{...}
{vieweralsosee "[DSGE] estat covariance" "mansection DSGE estatcovariance"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[DSGE] dsgenl" "help dsgenl_zh"}{...}
{vieweralsosee "[DSGE] dsgenl postestimation" "help dsgenl postestimation"}{...}
{vieweralsosee "[DSGE] Intro 3e" "mansection DSGE Intro3e"}{...}
{viewerjumpto "语法" "dsge estat covariance##syntax"}{...}
{viewerjumpto "estat菜单" "dsge estat covariance##menu_estat"}{...}
{viewerjumpto "描述" "dsge estat covariance##description"}{...}
{viewerjumpto "PDF文档链接" "dsge estat covariance##linkspdf"}{...}
{viewerjumpto "选项" "dsge estat covariance##options"}{...}
{viewerjumpto "示例" "dsge estat covariance##examples"}{...}
{viewerjumpto "存储结果" "dsge estat covariance##results"}
{help dsge_estat_covariance:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[DSGE] estat covariance} {hline 2}}显示模型变量的估计协方差{p_end}
{p2col:}({mansection DSGE estatcovariance:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:estat covariance}
[{varlist}]
[{cmd:,} {it:options}]

{phang}
{it:varlist} 可以包括控制变量及其滞后值。
如果未指定 {it:varlist}，将报告模型中所有控制变量的方差和协方差。

{synoptset 26}{...}
{synopthdr}
{synoptline}
{synopt :{opt addcov:ariance(clistc)}}报告额外的协方差{p_end}
{synopt :{opt nocov:ariance}}不报告协方差{p_end}
{synopt :{opt post}}将方差和协方差及其VCE作为估计结果发布{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{it:{help dsge_estat_covariance##display_options:display_options}}}控制列和列格式以及行宽{p_end}
{synoptline}
{p2colreset}{...}


包含帮助菜单_estat


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat covariance} 显示控制变量之间模型隐含的协方差。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection DSGE estatcovarianceQuickstart:快速开始}

        {mansection DSGE estatcovarianceRemarksandexamples:备注和示例}

        {mansection DSGE estatcovarianceMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt addcovariance(clistc)} 指定显示 {it:clistc} 中指定的控制变量与 {it:varlist} 中指定的那些变量之间的协方差。 {it:clistc} 中的变量方差不予报告。 {it:clistc} 可以包含模型中控制变量的滞后值。

{phang}
{cmd:nocovariance} 指定不显示任何协方差。
{cmd:nocovariance} 不能与 {cmd:addcovariance()} 一起指定。

{phang}
{cmd:post} 使得 {cmd:estat covariance} 像 Stata 估计（e-class）命令一样工作。 {cmd:estat covariance} 将估计的方差-协方差矩阵发布到 {cmd:e()}，因此您可以像处理其他估计命令的结果一样处理它。

{phang}
{opt level(#)} 指定置信区间的置信水平，单位为百分比。 默认值为 {cmd:level(95)} 或由 {helpb set level} 设置的值。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt noci},
{opt nopv:alues},
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}，和
{opt nolstretch};
    参见 {helpb estimation options##display_options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse usmacro2, clear}{p_end}
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

{pstd}模型隐含的协方差矩阵{p_end}
{phang2}{cmd:. estat covariance}{p_end}

{pstd}变量 {cmd:x} 的方差和一阶自协方差{p_end}
{phang2}{cmd:. estat covariance x, addcovariance(L.x)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat covariance} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(b)}}估计值{p_end}
{synopt:{cmd:r(V)}}估计值的方差-协方差矩阵{p_end}
{p2colreset}{...}

{pstd}
如果指定了 {cmd:post}，则 {cmd:estat covariance} 还会在 {cmd:e()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}估计值{p_end}
{synopt:{cmd:e(V)}}估计值的方差-协方差矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dsge_estat_covariance.sthlp>}