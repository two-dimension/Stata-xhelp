{smcl}
{* *! version 1.0.4  19oct2017}{...}
{viewerdialog lroc "dialog lroc"}{...}
{vieweralsosee "[R] lroc" "mansection R lroc"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ivprobit" "help ivprobit_zh"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estat classification" "help estat classification"}{...}
{vieweralsosee "[R] estat gof" "help logistic estat gof"}{...}
{vieweralsosee "[R] lsens" "help lsens_zh"}{...}
{vieweralsosee "[R] roc" "help roc_zh"}{...}
{viewerjumpto "Syntax" "lroc_zh##syntax"}{...}
{viewerjumpto "Menu" "lroc_zh##menu"}{...}
{viewerjumpto "Description" "lroc_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "lroc_zh##linkspdf"}{...}
{viewerjumpto "Options" "lroc_zh##options"}{...}
{viewerjumpto "Example" "lroc_zh##example"}{...}
{viewerjumpto "Stored results" "lroc_zh##results"}
{help lroc:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[R] lroc} {hline 2}}计算 ROC 曲线下面积并绘制曲线{p_end}
{p2col:}({mansection R lroc:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:lroc} [{depvar}] {ifin}
[{it:{help lroc##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{synopt :{opt all}}为所有观测值计算 ROC 曲线下面积并绘制曲线{p_end}
{synopt :{opt nog:raph}}抑制绘图{p_end}

{syntab : 高级}
{synopt :{opt beta(matname)}}包含模型系数的行向量{p_end}

{syntab : 绘图}
INCLUDE help gr_clopt
INCLUDE help gr_markopt2

{syntab : 参考线}
{synopt :{opth rlop:ts(cline_options)}}影响参考线的绘制{p_end}

{syntab : 添加绘图}
{synopt :{opth "addplot(addplot_option:绘图)"}}向生成的图形添加其他图{p_end}

{syntab : Y 轴，X 轴，标题，图例，总体}
{synopt :{it:twoway_options}}任何其他选项，除了 {opt by()}，详细见 
  {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}
{marker weight}{...}
{p 4 6 2}{opt fweight}被允许；见 {help weight_zh}.{p_end}
{p 4 6 2}{cmd:lroc} 在 {cmd:svy} 前缀之后不适用。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 二元结果 > 后估计 >}
       {bf:逻辑回归/logit/probit/ivprobit后的 ROC 曲线}


{marker description}{...}
{title:描述}

{pstd}
{cmd:lroc} 绘制 ROC 曲线并计算曲线下面积。

{pstd}
{cmd:lroc} 要求当前的估计结果必须来自
{help logistic_zh}、{help logit_zh}、{help probit_zh} 或 {help ivprobit_zh}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R lrocQuickstart:快速开始}

        {mansection R lrocRemarksandexamples:备注和示例}

        {mansection R lrocMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt all} 请求为数据中的所有观测值计算统计量，忽略任何通过
{opt if} 或 {opt in} 指定的估计命令限制。

{phang}
{opt nograph} 抑制图形输出。

{dlgtab:高级}

{phang}
{opt beta(matname)} 指定一个包含模型系数的行向量。行向量的列必须
标记为数据中相应自变量的名称。依赖变量 {depvar} 必须紧跟在命令名之后指定。见
{mansection R lrocRemarksandexamplesModelsotherthanthelastfittedmodel:{it:除最后拟合模型外的其他模型}}
在 {bf:[R] lroc} 中。

{dlgtab:绘图}

{phang}
{it:cline_options}、{it:marker_options} 和 {it:marker_label_options}
影响 ROC 曲线的绘制 -- 用线连接的绘制点。这些选项影响标记的大小和颜色，
标记是否以及如何被标记，以及点是否以及如何连接；见 {manhelpi cline_options G-3}、
{manhelpi marker_options G-3} 和 {manhelpi marker_label_options G-3}。

{dlgtab:参考线}

{phang}
{opt rlopts(cline_options)} 影响参考线的绘制；见 {manhelpi cline_options G-3}。

{marker addplot()}{...}
{dlgtab:添加绘图}

{phang}
{opt addplot(plot)} 提供了一种向生成的图形添加其他图的方法；
见 {manhelpi addplot_option G-3}。

{marker twoway_options}{...}
{dlgtab:Y 轴，X 轴，标题，图例，总体}

{phang}
{it:twoway_options} 是在 
{manhelpi twoway_options G-3} 中记录的任何选项，不包括 {opt by()}。这些包括
为图形命名的选项（见 {manhelpi title_options G-3}）以及将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lbw}

{pstd}拟合逻辑回归以预测低出生体重{p_end}
{phang2}{cmd:. logistic low age lwt i.race smoke ptl ht ui}

{pstd}绘制 ROC 曲线并计算曲线下面积{p_end}
{phang2}{cmd:. lroc}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:lroc} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测值的数量{p_end}
{synopt:{cmd:r(area)}}ROC 曲线下面积{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lroc.sthlp>}