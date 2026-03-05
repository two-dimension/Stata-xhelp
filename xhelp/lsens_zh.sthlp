{smcl}
{* *! version 1.0.5  19oct2017}{...}
{viewerdialog lsens "dialog lsens"}{...}
{vieweralsosee "[R] lsens" "mansection R lsens"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ivprobit" "help ivprobit_zh"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estat classification" "help estat classification"}{...}
{vieweralsosee "[R] estat gof" "help logistic estat gof"}{...}
{vieweralsosee "[R] lroc" "help lroc_zh"}{...}
{vieweralsosee "[R] roc" "help roc_zh"}{...}
{viewerjumpto "语法" "lsens_zh##syntax"}{...}
{viewerjumpto "菜单" "lsens_zh##menu"}{...}
{viewerjumpto "描述" "lsens_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "lsens_zh##linkspdf"}{...}
{viewerjumpto "选项" "lsens_zh##options"}{...}
{viewerjumpto "示例" "lsens_zh##example"}{...}
{viewerjumpto "存储结果" "lsens_zh##results"}
{help lsens:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] lsens} {hline 2}}绘制灵敏度和特异度与概率截止值的关系图{p_end}
{p2col:}({mansection R lsens:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:lsens} [{depvar}] {ifin}
[{it:{help lsens##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主选项}
{synopt :{opt all}}对数据中所有观测值进行统计图表{p_end}
{synopt :{opth genp:rob(varname)}}创建包含概率截止值的变量{p_end}
{synopt :{opth gense:ns(varname)}}创建包含灵敏度的变量{p_end}
{synopt :{opth gensp:ec(varname)}}创建包含特异度的变量{p_end}
{synopt :{opt replace}}覆盖已有变量{p_end}
{synopt :{opt nog:raph}}抑制图形输出{p_end}

{syntab :高级选项}
{synopt :{opt beta(matname)}}包含模型系数的行向量{p_end}

{syntab :绘图}
{synopt :{it:{help scatter##connect_options:连接选项}}}影响用线连接的绘制点的呈现{p_end}

{syntab :添加绘图}
{synopt :{opth "addplot(addplot_option:图)"}}将其他图形添加到生成的图表上{p_end}

{syntab :Y 轴、X 轴、标题、图例、整体}
{synopt :{it:twoway_options}}除 {opt by()} 外在 {manhelpi twoway_options G-3} 中记录的任何选项{p_end}
{synoptline}
{p2colreset}{...}
{marker weight}{...}
{p 4 6 2}{opt fweight}被允许使用；见 {help weight_zh}.{p_end}
{p 4 6 2}{cmd:lsens} 在 {cmd:svy} 前缀后无法使用。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 二元结果 > 后验估计 > 灵敏度/特异度图}


{marker description}{...}
{title:描述}

{pstd}
{cmd:lsens} 绘制灵敏度和特异度与概率截止值的关系图，并可以选择性地创建包含这些数据的新变量。

{pstd}
{cmd:lsens} 要求当前的估计结果来自 {help logistic_zh}、{help logit_zh}、{help probit_zh} 或 {help ivprobit_zh}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R lsensQuickstart:快速入门}

        {mansection R lsensRemarksandexamples:说明与示例}

        {mansection R lsensMethodsandformulas:方法与公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主选项}

{phang}
{opt all} 请求对数据中所有观测值计算统计，忽略估计命令指定的任何 {opt if} 或 {opt in} 限制。

{phang}
{opth genprob(varname)}、{opt gensens(varname)} 和 {opt genspec(varname)} 指定创建新变量的名称，该变量分别包含概率截止值、对应的灵敏度和特异度。

{phang}
{opt replace} 请求覆盖为 {opt genprob()}、{opt gensens()} 或 {opt genspec()} 指定的现有变量。

{phang}
{opt nograph} 抑制图形输出。

{dlgtab:高级选项}

{phang}
{opt beta(matname)} 指定包含模型系数的行向量。行向量的列必须标记为与数据中的自变量相对应的名称。因变量 {depvar} 必须在命令名称后立即指定。参见 {mansection R lsensRemarksandexamplesModelsotherthanthelastfittedmodel:{it:最后拟合模型以外的模型}} 在 {bf:[R] lsens} 中。

{dlgtab:绘图}

{phang}
{it:connect_options} 影响线连接的绘制点的呈现；详见 {it:{help scatter##connect_options:连接选项}} 在 {helpb twoway scatter:[G-2] graph twoway scatter} 中。

{dlgtab:添加绘图}

{phang}
{opt addplot(plot)} 提供一种将其他绘图添加到生成图中的方法。见 {manhelpi addplot_option G-3}。

{marker twoway_options}{...}
{dlgtab:Y 轴、X 轴、标题、图例、整体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的任何选项，不包括 {opt by()}。这些选项包括为图形命名的选项（见 {manhelpi title_options G-3}）及将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lbw}

{pstd}拟合逻辑回归以预测低出生体重{p_end}
{phang2}{cmd:. logistic low age lwt i.race smoke ptl ht ui}

{pstd}绘制灵敏度和特异度与概率截止值的关系图{p_end}
{phang2}{cmd:. lsens}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:lsens} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测值数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lsens.sthlp>}