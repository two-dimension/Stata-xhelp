{smcl}
{* *! version 1.0.6  14may2018}{...}
{viewerdialog estat "dialog estat"}{...}
{vieweralsosee "[R] estat vce" "mansection R estatvce"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estat" "help estat_zh"}{...}
{vieweralsosee "[R] estat ic" "help estat ic"}{...}
{vieweralsosee "[R] estat summarize" "help estat summarize"}{...}
{viewerjumpto "Syntax" "estat vce##syntax"}{...}
{viewerjumpto "Menu for estat" "estat vce##menu_estat"}{...}
{viewerjumpto "Description" "estat vce##description"}{...}
{viewerjumpto "Links to PDF documentation" "estat_vce_zh##linkspdf"}{...}
{viewerjumpto "Options" "estat vce##options_estat_vce"}{...}
{viewerjumpto "Example" "estat vce##example"}{...}
{viewerjumpto "Stored results" "estat vce##results"}
{help estat_vce:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] estat vce} {hline 2}}显示协方差矩阵估计{p_end}
{p2col:}({mansection R estatvce:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

        {cmd:estat} {cmd:vce} [{cmd:,} {it:estat_vce_options}]

{marker estat_vce_options}{...}
{synoptset 21}{...}
{p2coldent:{it:estat_vce_options}}描述{p_end}
{synoptline}
{synopt:{opt cov:ariance}}以协方差矩阵的形式显示；默认设置{p_end}
{synopt:{opt c:orrelation}}以相关矩阵的形式显示{p_end}
{synopt:{opt eq:uation(spec)}}仅显示指定的方程{p_end}
{synopt:{opt b:lock}}按方程显示子矩阵{p_end}
{synopt:{opt d:iag}}按方程显示子矩阵；仅显示对角块{p_end}
{synopt:{opth f:ormat(%fmt)}}协方差和相关性的显示格式{p_end}
{synopt:{opt nolin:es}}抑制方程之间的线{p_end}
{synopt :{it:{help estat_vce##display_options:display_options}}}控制省略的变量、基线和空单元的显示{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_estat


{marker description}{...}
{title:描述}

{pstd}
{opt estat vce} 显示上一个模型的参数估计的协方差或相关矩阵。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R estatvceQuickstart:快速入门}

        {mansection R estatvceRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options_estat_vce}{...}
{title:选项}

{phang}
{opt covariance} 以方差{c -}协方差矩阵的形式显示；这是默认设置。

{phang}
{opt correlation} 以相关矩阵的形式显示，而不是方差-协方差矩阵。{opt rho} 是同义词。

{phang}
{opt equation(spec)} 选择要显示的VCE部分。如果 {it:spec} 为 {it:eqlist}，则显示列出的方程的VCE。如果 {it:spec} 为 {it:eqlist1} {cmd:\} {it:eqlist2}，则显示与 {it:eqlist1}（按行）和 {it:eqlist2}（按列）中的方程相关的VCE部分。如果 {it:spec} 为 {cmd:*}，则显示所有方程。
{opt equation()} 在未指定 {opt diag} 时表示 {opt block}。

{phang}
{opt block} 单独显示属于不同方程的子矩阵。

{phang}
{opt diag} 单独显示属于不同方程的对角子矩阵。

{phang}
{opth format(%fmt)} 指定显示矩阵元素的数字格式。协方差的默认设置为 {cmd:format(%10.0g)}，相关性的默认设置为 {cmd:format(%8.4f)}。有关更多信息，请参见 {findalias frformats}。

{phang}
{opt nolines} 抑制方程之间的线。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt noomit:ted},
{opt noempty:cells},
{opt base:levels},
{opt allbase:levels};
    参见 {helpb estimation options##display_options:[R] 估计选项}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse klein}{p_end}
{phang2}{cmd:. reg3 (consump wagep wageg) (wagep consump govt capital)}{p_end}

{pstd}显示每个方程的VCE，使用 {cmd:%7.2f} 格式{p_end}
{phang2}{cmd:. estat vce, block format(%7.2f)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat vce} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(V)}}VCE或相关矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_vce.sthlp>}