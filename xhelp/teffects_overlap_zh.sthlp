{smcl}
{* *! version 1.1.17  19oct2017}{...}
{viewerdialog "teffects overlap" "dialog teffects_overlap"}{...}
{vieweralsosee "[TE] teffects overlap" "mansection TE teffectsoverlap"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] stteffects" "help stteffects_zh"}{...}
{vieweralsosee "[TE] stteffects ipw" "help stteffects ipw"}{...}
{vieweralsosee "[TE] stteffects ipwra" "help stteffects ipwra"}{...}
{vieweralsosee "[TE] teffects aipw" "help teffects aipw"}{...}
{vieweralsosee "[TE] teffects ipw" "help teffects ipw"}{...}
{vieweralsosee "[TE] teffects ipwra" "help teffects ipwra"}{...}
{vieweralsosee "[TE] teffects nnmatch" "help teffects nnmatch"}{...}
{vieweralsosee "[TE] teffects psmatch" "help teffects psmatch"}{...}
{vieweralsosee "[TE] teffects ra" "help teffects ra"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teeffects" "help teffects_zh"}{...}
{viewerjumpto "Syntax" "teffects_overlap_zh##syntax"}{...}
{viewerjumpto "Menu" "teffects_overlap_zh##menu"}{...}
{viewerjumpto "Description" "teffects_overlap_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "teffects_overlap_zh##linkspdf"}{...}
{viewerjumpto "Options" "teeffects_overlap##options"}{...}
{viewerjumpto "Examples" "teeffects_overlap##examples"}{...}
{viewerjumpto "Stored results" "teeffects_overlap##results"}{...}
{viewerjumpto "Reference" "teffects_overlap_zh##reference"}
{help teffects_overlap:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[TE] teeffects overlap} {hline 2}}重叠图{p_end}
{p2col:}({mansection TE teffectsoverlap:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:teffects overlap} [{cmd:,}
         {it:{help teffects_overlap##treat_options:处理选项}}
	 {it:{help teffects_overlap##kden_options:密度估计选项}}]

{marker treat_options}{...}
{synoptset 28 tabbed}{...}
{synopthdr: 处理选项}
{synoptline}
{syntab :主要}
{synopt: {opt pt:level(treat_level)}}计算处理水平 {it:treat_level} 的预测概率；默认情况下，{opt ptlevel()} 对应于第一个处理水平{p_end}
{synopt: {opt tl:evels(treatments)}}指定条件处理水平；默认是所有处理水平{p_end}
{synopt: {opt nolab:el}}在图例和轴标题中使用处理水平值，而不是值标签{p_end}
{synoptline}

{marker kden_options}{...}
{synopthdr:密度估计选项}
{synoptline}
{syntab :主要}
{synopt: {opth k:ernel(teffects_overlap##kernel:核函数)}}指定核函数；默认是 {cmd:kernel(triangle)}{p_end}
{synopt :{opt n(#)}}使用 {it:#} 个点估计密度；默认是 {cmd:e(N)}，即估计样本中的观察值数量{p_end}
{synopt :{opt bw:idth(#)}}核的半宽度{p_end}
{synopt :{opt at(var_x)}}使用 {it:var_x} 指定的值估计密度{p_end}

{syntab :核图}
{synopt :{cmd:line}{it:#}{cmd:opts(}{it:{help cline_options_zh}}{cmd:)}}影响条件处理 {it:#} 的密度的绘制{p_end}

{syntab :添加图}
{synopt :{opth "addplot(addplot_option:图)"}}将其他图形添加到生成的图表中{p_end}

{syntab :Y 轴、X 轴、标题、图例、整体}
{synopt :{it:twoway_options}}文档中记录的除 {opt by()} 之外的任何选项 
    {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 28}{...}
{marker kernel}{...}
{synopthdr :核函数}
{synoptline}
{synopt :{opt tri:angle}}三角核函数；默认值{p_end}
{synopt :{opt ep:anechnikov}}Epanechnikov核函数{p_end}
{synopt :{opt epan2}}替代的Epanechnikov核函数{p_end}
{synopt :{opt bi:weight}}双权核函数{p_end}
{synopt :{opt cos:ine}}余弦核函数{p_end}
{synopt :{opt gau:ssian}}高斯核函数{p_end}
{synopt :{opt par:zen}}Parzen核函数{p_end}
{synopt :{opt rec:tangle}}矩形核函数{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 处理效应 > 重叠图}


{marker description}{...}
{title:描述}

{pstd}
使用 {cmd:teffects} 和 {cmd:stteffects} 估计器的前提之一是重叠假设，该假设声明每个个体都有接收每个处理水平的正概率。 {cmd:teffects} {cmd:overlap} 是一个后估计命令，绘制每个处理水平的获得概率的估计密度。这些图可以用来检查重叠假设是否被违反。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TE teffectsoverlapQuickstart:快速入门}

        {mansection TE teffectsoverlapRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt ptlevel(treat_level)}指定计算处理水平 {it:treat_level} 的预测概率。默认值是 {opt ptlevel(first)}，其中 {it:first} 是第一个处理水平。

{phang}
{opt tlevels(treatments)} 指定要获取预测概率的观察值。默认使用所有处理水平。将 {it:treatments} 指定为用空格分隔的列表。

{pmore}
例如，

            {cmd:. teffects overlap, ptlevel(1) tlevels(1 2)}

{pmore}
表示要预测获得处理水平 1 的概率，针对实际获得处理水平 1 或 2 的受试者。

{phang}
{opt nolabel} 指定在图例和轴标题中使用处理水平值，而不是值标签。

{phang}
{opth "kernel(teffects_overlap##kernel:核函数)"}指定用于计算核密度估计的核函数。默认核是三角核 ({opt triangle})。

{phang}
{opt n(#)} 指定要评估密度估计的点数。默认值是 {cmd:e(N)}，即估计样本的大小。

{phang}
{opt bwidth(#)} 指定核的半宽度，即每个点周围的密度窗口的宽度。如果未指定 {opt bwidth()}，将计算并使用“最佳”宽度；参见 {manhelp kdensity R}。最佳宽度是指在数据为高斯且使用高斯核的情况下，可以最小化平均积分平方误差的宽度，因此在任何全局意义上并不最优。实际上，对于多模态和高度偏斜的密度，这个宽度通常过宽，并导致密度平滑过度 ({help teffects_overlap##S1986:Silverman 1986})。

{phang}
{opt at(var_x)} 指定一个变量，其中包含应估计密度的值。此选项使您可以更轻松地为不同变量或变量的不同子样本获取密度估计，然后叠加估计的密度进行对比。

{dlgtab:核图}

{phang}
{cmd:line}{it:#}{cmd:opts(}{it:cline_options}{cmd:)} 影响绘制的核密度估计的呈现。
请参见 {manhelpi cline_options G-3}。

{dlgtab:添加图}

{phang}
{opt addplot(plot)} 提供了一种将其他图形添加到生成的图表的方法。
请参见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴、X 轴、标题、图例、整体}

{phang}
{it:twoway_options}是除 {opt by()} 外记录在 {manhelpi twoway_options G-3} 中的任何选项。这包括用于给图表命名的选项（见 {manhelpi title_options G-3}）以及将图表保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse cattaneo2}{p_end}

{pstd}通过倾向评分匹配估计处理效应{p_end}
{phang2}{cmd:. teffects psmatch (bweight) (mbsmoke mmarried c.mage##c.mage}
     {cmd:fbaby medu, probit), generate(po)}{p_end}

{pstd}绘制对照组重叠图{p_end}
{phang2}{cmd:. teffects overlap, name(control)}{p_end}

{pstd}绘制处理组重叠图{p_end}
{phang2}{cmd:. teffects overlap, ptl(1) name(treatment)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:teffects overlap} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(bwidth}{it:j}{cmd:)}}处理水平 {it:j} 的核带宽{p_end}
{synopt:{cmd:r(n}{it:j}{cmd:)}}处理水平 {it:j} 的估计评估点数{p_end}
{synopt:{cmd:r(scale}{it:j}{cmd:)}}处理水平 {it:j} 的密度箱宽度{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(kernel)}}核名称{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker S1986}{...}
{phang}
Silverman, B. W. 1986.
{it:Density Estimation for Statistics and Data Analysis}.
伦敦：Chapman & Hall。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <teffects_overlap.sthlp>}