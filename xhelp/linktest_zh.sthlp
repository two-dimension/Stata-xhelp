{smcl}
{* *! version 1.1.13  22mar2018}{...}
{viewerdialog linktest "dialog linktest"}{...}
{vieweralsosee "[R] linktest" "mansection R linktest"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress postestimation" "help regress_postestimation_zh"}{...}
{viewerjumpto "Syntax" "linktest_zh##syntax"}{...}
{viewerjumpto "Menu" "linktest_zh##menu"}{...}
{viewerjumpto "Description" "linktest_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "linktest_zh##linkspdf"}{...}
{viewerjumpto "Option" "linktest_zh##option"}{...}
{viewerjumpto "Examples" "linktest_zh##examples"}{...}
{viewerjumpto "Stored results" "linktest_zh##results"}
{help linktest:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] linktest} {hline 2}}单方程模型的规格链条检验{p_end}
{p2col:}({mansection R linktest:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:linktest} {ifin} [{cmd:,} {it:cmd_options}]

{phang}
当未指定 {cmd:if} 和 {cmd:in} 时，链条检验将在与上次估计相同的样本上执行。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:linktest} 进行模型规格的链条检验。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R linktestQuickstart:快速入门}

        {mansection R linktestRemarksandexamples:备注和示例}

        {mansection R linktestMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{dlgtab:主要}

{phang}
{it:cmd_options} 必须与底层估计命令中指定的相同选项，除了 {it:display_options} 可以不同。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}拟合线性回归{p_end}
{phang2}{cmd:. regress mpg weight displacement foreign}{p_end}

{pstd}执行链条检验{p_end}
{phang2}{cmd:. linktest}{p_end}

{pstd}生成新变量 {cmd:wgt}{p_end}
{phang2}{cmd:. generate wgt = weight/100}{p_end}

{pstd}拟合右端截断限制为2400磅的 Tobit 模型{p_end}
{phang2}{cmd:. tobit mpg wgt, ul(24)}{p_end}

{pstd}执行链条检验，指定右端截断限制{p_end}
{phang2}{cmd:. linktest, ul(24)}{p_end}

{pstd}拟合分位数回归模型{p_end}
{phang2}{cmd:. qreg mpg weight displ foreign}{p_end}

{pstd}执行链条检验{p_end}
{phang2}{cmd:. linktest}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:linktest} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(t)}}t 统计量在 {cmd:_hatsq}{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <linktest.sthlp>}