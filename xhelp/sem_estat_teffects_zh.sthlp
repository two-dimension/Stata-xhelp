{smcl}
{* *! version 1.0.12  25sep2018}{...}
{viewerdialog estat "dialog sem_estat, message(-teffects-) name(sem_estat_teffects)"}{...}
{vieweralsosee "[SEM] estat teffects " "mansection SEM estatteffects"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] sem postestimation" "help sem_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] estat stable" "help sem_estat_stable_zh"}{...}
{viewerjumpto "Syntax" "sem_estat_teffects_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_estat_teffects_zh##menu"}{...}
{viewerjumpto "Description" "sem_estat_teffects_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_estat_teffects_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_estat_teffects_zh##options"}{...}
{viewerjumpto "Remarks" "sem_estat_teffects_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_estat_teffects_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_estat_teffects_zh##results"}{...}
{viewerjumpto "References" "sem_estat_teffects_zh##references"}
{help sem_estat_teffects:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[SEM] estat teffects} {hline 2}}将效应分解为总效应、直接效应和间接效应{p_end}
{p2col:}({mansection SEM estatteffects:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:estat} {cmdab:tef:fects} [{cmd:,} {it:options}]

{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt:{opt comp:act}}不显示没有路径的效应{p_end}
{synopt:{opt stand:ardized}}报告标准化效应{p_end}
{synopt :{opt nolab:el}}显示组值而不是标签{p_end}
{synopt :{opt nodir:ect}}不显示直接效应{p_end}
{synopt :{opt noindir:ect}}不显示间接效应{p_end}
{synopt :{opt notot:al}}不显示总效应{p_end}

{synopt :{it:{help sem_estat_teffects##display_options:display_options}}}控制列和列格式、行间距以及省略路径的显示{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程模型） > 测试与置信区间 > 直接和间接效应}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat teffects}用于在 {cmd:sem} 之后，但不适用于 {cmd:gsem}。

{pstd}
{cmd:estat teffects} 报告每条路径的直接、间接和总效应（{help sem_estat teffects##Sobel1987:引自 Sobel 1987}），并提供通过增量法获得的标准误差。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM estatteffectsRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}{opt compact}
是一个常用选项。考虑以下模型：

{phang2}{cmd:. sem (y1<-y2 x1) (y2<-x2)}{p_end}

{p 8 8 2}
{cmd:x2} 对 {cmd:y1} 没有直接效应，但有间接效应。
{cmd:estat teffects} 默认将所有效应表格式化为相同的方式，因此会有一行显示 {cmd:x2} 对 {cmd:y1} 的直接效应，仅仅因为有一行显示 {cmd:x2} 对 {cmd:y1} 的间接效应。直接效应报告的值当然将为0。{opt compact} 表示省略这些不必要的行。

{phang}{opt standardized}
以标准化形式报告效应，但不报告标准化效应的标准误差。

{phang}{opt nolabel}
仅在使用 {cmd:sem} 的 {opt group()} 选项并且组变量有值标签时相关。通过组值而不是标签来识别组。

{phang}{opt nodirect}、{opt noindirect} 和 {opt nototal} 抑制指定效应的显示。默认是显示所有效应。 

{marker display_options}{...}
{phang} {it:display_options}: 
{opt noci}、{opt nopv:alues}、{opt noomit:ted}、{opt vsquish}、
{opth cformat(%fmt)}、{opt pformat(%fmt)}、{opt sformat(%fmt)} 以及
{opt nolstretch}; 参见 
{helpb estimation options##display_options:[R] 估计选项}。
虽然 {cmd:estat teffects} 不是估计命令，但它允许这些选项。


{marker remarks}{...}
{title:备注}

{pstd}
参见 {findalias semnrsm}。

{pstd}
直接效应是模型中的路径系数。

{pstd}
间接效应是所有中介效应。例如，考虑

{phang2}{cmd:. sem ... (y1<-y2) (y1<-x2) (y2<-x3) ..., ...}{p_end}

{pstd}
{cmd:y2} 对 {cmd:y1} 的直接效应是路径系数
{cmd:(y1<-y2)}。

{pstd}
在此示例中，{cmd:x3} 的变化也会影响 {cmd:y1}。这称为间接效应，是路径系数（{cmd:y2<-x3}）和（{cmd:y1<-y2}）的乘积。如果模型中还有其他路径，使得 {cmd:y1} 在 {cmd:x3} 变化时也发生变化，这些效应也会被加入到间接效应中。{cmd:estat teffects} 报告总间接效应。

{pstd}
总效应是直接效应和间接效应之和。

{pstd}
当模型中存在反馈循环时，如

{phang2}{cmd:. sem ... (y1<-y2) (y1<-x2) (y2<-x3 y1) ..., ...}{p_end}

{pstd}
在解释间接效应时需要小心。反馈循环是指变量间接影响自己，正如示例中的 {cmd:y1}；{cmd:y1} 影响 {cmd:y2}，而 {cmd:y2} 影响 {cmd:y1}。因此，在计算间接效应时，求和将有无限个项，尽管项的值越来越小，通常会收敛到一个有限的结果。
必须检查递归模型的稳定性；参见 {help sem_estat_teffects##Bollen1989: Bollen (1989), 379} 和 {help sem_estat_stable_zh:[SEM] estat stable}。注意：如果模型不稳定，间接效应的计算有时仍然可以收敛到一个有限的结果。

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_sm1}{p_end}
{phang2}{cmd:. sem (r_occasp <- f_occasp r_intel r_ses f_ses)}{break}
	{cmd: (f_occasp <- r_occasp f_intel f_ses r_ses),}{break}
	{cmd:  cov(e.r_occasp*e.f_occasp)}{p_end}

{pstd}显示总效应、直接效应和间接效应{p_end}
{phang2}{cmd:. estat teffects}{p_end}

{pstd}显示标准化效应{p_end}
{phang2}{cmd:. estat teffects, standardized}{p_end}

{pstd}仅显示总效应{p_end}
{phang2}{cmd:. estat teffects, nodirect noindirect}{p_end}

{pstd}省略没有路径的效应{p_end}
{phang2}{cmd:. estat teffects, compact}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat teffects} 在 {cmd:r()} 中存储以下内容：

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 标量}{p_end}
{synopt:{cmd:r(N_groups)}}组的数量{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 矩阵}{p_end}
{synopt:{cmd:r(nobs)}}每组的样本量{p_end}
{synopt:{cmd:r(direct)}}直接效应{p_end}
{synopt:{cmd:r(indirect)}}间接效应{p_end}
{synopt:{cmd:r(total)}}总效应{p_end}
{synopt:{cmd:r(V_direct)}}直接效应的协方差矩阵{p_end}
{synopt:{cmd:r(V_indirect)}}间接效应的协方差矩阵{p_end}
{synopt:{cmd:r(V_total)}}总效应的协方差矩阵{p_end}

{pstd}
{cmd:estat} {cmd:teffects} 在 {opt standardized} 选项下还额外存储以下内容在 {cmd:r()} 中：

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 矩阵}{p_end}
{synopt:{cmd:r(direct_std)}}标准化直接效应{p_end}
{synopt:{cmd:r(indirect_std)}}标准化间接效应{p_end}
{synopt:{cmd:r(total_std)}}标准化总效应{p_end}


{marker references}{...}
{title:参考文献}

{marker Bollen1989}{...}
{phang}
Bollen, K. A. 1989.  {it:带潜变量的结构方程}.  纽约: Wiley.

{marker Sobel1987}{...}
{phang}
Sobel, M. E.  1987.  线性结构方程模型中的直接和间接效应.  {it:社会学方法与研究} 16: 155-176.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estat_teffects.sthlp>}