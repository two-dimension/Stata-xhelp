{smcl}
{* *! version 1.0.14  20sep2018}{...}
{viewerdialog tebalance "dialog tebalance"}{...}
{vieweralsosee "[TE] tebalance density" "mansection TE tebalancedensity"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] stteffects" "help stteffects_zh"}{...}
{vieweralsosee "[TE] tebalance" "help tebalance_zh"}{...}
{vieweralsosee "[TE] teffects aipw" "help teffects aipw"}{...}
{vieweralsosee "[TE] teffects ipw" "help teffects ipw"}{...}
{vieweralsosee "[TE] teffects ipwra" "help teffects ipwra"}{...}
{vieweralsosee "[TE] teffects nnmatch" "help teffects nnmatch"}{...}
{vieweralsosee "[TE] teffects overlap" "help teffects overlap"}{...}
{vieweralsosee "[TE] teffects psmatch" "help teffects psmatch"}{...}
{viewerjumpto "Syntax" "tebalance density##syntax"}{...}
{viewerjumpto "Menu" "tebalance density##menu"}{...}
{viewerjumpto "Description" "tebalance density##description"}{...}
{viewerjumpto "Links to PDF documentation" "tebalance_density_zh##linkspdf"}{...}
{viewerjumpto "Options" "tebalance density##options"}{...}
{viewerjumpto "Example" "tebalance density##example"}{...}
{viewerjumpto "Stored results" "tebalance density##results"}
{help tebalance_density:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[TE] tebalance density} {hline 2}}协变量平衡密度{p_end}
{p2col:}({mansection TE tebalancedensity:查看完整的PDF手册条目}){p_end}

{marker syntax}{...}
{title:语法}

{pstd}
倾向得分的密度图

{p 8 12 2}
{cmd:tebalance} {cmd:density} [{cmd:,} {it:options}]

{pstd}
协变量的密度图

{p 8 12 2}
{cmd:tebalance} {cmd:density} {it:varname} [{cmd:,} {it:options}]

{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主选项}
{synopt :{cmd:kernel(}{it:{help tebalance_density##kernel:kernel}}{cmd:)}}指定内核函数；默认是 {cmd:kernel(epanechnikov)}{p_end}
{synopt :{cmdab:bw:idth(*}{it:#}{cmd:)}}重新缩放默认带宽{p_end}
{synopt :{cmd:line}{it:#}{cmd:opts}{cmd:(}{it:{help line_options_zh}}{cmd:)}}{cmd:twoway line} 选项用于密度线编号 {it:#}{p_end}
{synopt :{it:twoway_options}}除 {cmd:by()} 外的任何在 {manhelpi twoway_options G-3} 中记录的选项{p_end}
{synopt :{cmdab:byop:ts(}{it:{help by_option_zh:byopts}}{cmd:)}}子图如何组合、标记等{p_end}
{synoptline}

{synoptset 17}{...}
{marker kernel}{...}
{synopthdr:内核}
{synoptline}
{synopt :{cmdab:tri:angle}}三角内核函数；默认{p_end}
{synopt :{cmdab:ep:anechnikov}}Epanechnikov内核函数{p_end}
{synopt :{cmd:epan2}}替代Epanechnikov内核函数{p_end}
{synopt :{cmdab:bi:weight}}双重权重内核函数{p_end}
{synopt :{cmdab:cos:ine}}余弦追踪内核函数{p_end}
{synopt :{cmdab:gau:ssian}}高斯内核函数{p_end}
{synopt :{cmdab:par:zen}}Parzen内核函数{p_end}
{synopt :{cmdab:rec:tangle}}矩形内核函数{p_end}
{synoptline}

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 处理效应 > 平衡 > 图形}

{marker description}{...}
{title:描述}

{pstd}
{cmd:tebalance density} 生成内核密度图，用于在估计后检查协变量的平衡，采用的估计方法可以是 {help teffects_zh} 的逆概率加权估计器、{cmd:teffects} 匹配估计器或 {help stteffects_zh} 的逆概率加权估计器。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TE tebalancedensityQuickstart:快速入门}

        {mansection TE tebalancedensityRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。

{marker options}{...}
{title:选项}

{dlgtab:主选项}

{phang}
{cmd:kernel(}{it:{help tebalance_density##kernel:kernel}}{cmd:)}指定用于计算内核密度估计的内核函数。默认内核是 {cmd:kernel(epanechnikov)}。

{phang}
{cmd:bwidth(*}{it:#}{cmd:)}指定默认带宽的缩放因子。带宽是内核的半宽度，即每个点周围密度窗口的宽度。每个内核密度图都有自己的带宽，默认情况下，每个内核密度图使用其自己的最佳带宽；参见 {manhelp kdensity R}。{cmd:bwidth()}按指定金额重新缩放每个图的最佳带宽。

{phang}
{cmd:line}{it:#}{cmd:opts}{cmd:(}{it:{help line_options_zh}}{cmd:)}指定密度线编号 {it:#} 的线条样式、宽度、颜色和整体样式。线条编号的顺序与在 {cmd:e(tlevels)} 中指定的处理水平相同。

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的任何选项，排除 {cmd:by()}。这些包括图形标题的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。{cmd:tebalance density} 使用 {cmd:by()} 区分原始和加权或匹配的样本，一些 {it:twoway_options} 将重复出现于 by {cmd:graph}，更好的选择是将其指定为 {cmd:byopts()}。

{phang}
{cmd:byopts(}{it:by_option}{cmd:)} 的文档见 {manhelpi by_options G-3}。{cmd:byopts()} 影响子图的组合、标记等。{cmd:byopts()} 通常影响整个图形，某些 {it:by_option} 可能更适合指定为 {it:twoway_options}；见 {manhelpi twoway_options G-3}。

{marker example}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse cattaneo2}

{pstd}
估计母亲吸烟行为 ({cmd:mbsmoke}) 对其孩子出生体重 ({cmd:bweight}) 的影响，控制婚姻状态 ({cmd:mmarried})、母亲年龄 ({cmd:mage})、母亲在孩子第一学期是否接受过产前检查 ({cmd:prenatal1}) 以及这个孩子是否是母亲的第一个孩子 ({cmd:fbaby}){p_end}
{phang2}{cmd:. teffects psmatch (bweight) (mbsmoke mmarried mage prenatal1 fbaby), generate(matchv)}

{pstd}
查看默认的密度图
{p_end}
{phang2}{cmd:. tebalance density mage}

{marker results}{...}
{title:存储的结果}

{pstd}
在 {cmd:teffects} 或 {cmd:stteffects} 进行二元处理拟合后，{cmd:tebalance density} 将以下结果存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 24 28 2:标量}{p_end}
{synopt :{cmd:r(bwc_adj)}}加权或匹配调整样本中控制组的带宽{p_end}
{synopt :{cmd:r(Nc_adj)}}加权或匹配调整样本中的控制组观察值{p_end}
{synopt :{cmd:r(bwt_adj)}}加权或匹配调整样本中处理组的带宽{p_end}
{synopt :{cmd:r(Nt_adj)}}加权或匹配调整样本中的处理组观察值{p_end}
{synopt :{cmd:r(bwc_raw)}}原始样本中控制组的带宽{p_end}
{synopt :{cmd:r(Nc_raw)}}原始样本中控制组的观察值{p_end}
{synopt :{cmd:r(bwt_raw)}}原始样本中处理组的带宽{p_end}
{synopt :{cmd:r(Nt_raw)}}原始样本中处理组的观察值{p_end}

{p2col 5 24 28 2:宏}{p_end}
{synopt :{cmd:r(kernel)}}内核名称{p_end}

{pstd}
在 {cmd:teffects} 或 {cmd:stteffects} 进行多值处理拟合后，{cmd:tebalance density} 将以下结果存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 24 28 2:标量}{p_end}
{synopt :{cmd:r(bw}{it:#}{cmd:_adj)}}加权或匹配调整样本中的处理水平 {it:#} 的带宽{p_end}
{synopt :{cmd:r(N}{it:#}{cmd:_adj)}}加权或匹配调整样本中的处理水平 {it:#} 的观察值{p_end}
{synopt :{cmd:r(bw}{it:#}{cmd:_raw)}}原始样本中处理水平 {it:#} 的带宽{p_end}
{synopt :{cmd:r(N}{it:#}{cmd:_raw)}}原始样本中处理水平 {it:#} 的观察值{p_end}

{p2col 5 24 28 2:宏}{p_end}
{synopt :{cmd:r(kernel)}}内核名称{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tebalance_density.sthlp>}