{smcl}
{* *! version 1.1.15  19oct2017}{...}
{viewerdialog vecstable "dialog vecstable"}{...}
{vieweralsosee "[TS] vecstable" "mansection TS vecstable"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] vec" "help vec_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "Syntax" "vecstable_zh##syntax"}{...}
{viewerjumpto "Menu" "vecstable_zh##menu"}{...}
{viewerjumpto "Description" "vecstable_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "vecstable_zh##linkspdf"}{...}
{viewerjumpto "Options" "vecstable_zh##options"}{...}
{viewerjumpto "Examples" "vecstable_zh##examples"}{...}
{viewerjumpto "Stored results" "vecstable_zh##results"}{...}
{viewerjumpto "Reference" "vecstable_zh##reference"}
{help vecstable:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[TS] vecstable} {hline 2}}检查 VECM 估计的稳定性条件{p_end}
{p2col:}({mansection TS vecstable:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 21 2}
{cmd:vecstable} [{cmd:,} {it:options}]

{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opt est:imates(estname)}}使用先前存储的结果 {it:estname}；
  默认使用活动结果{p_end}
{synopt :{opt a:mat(matrix_name)}}将伴随矩阵保存为
  {it:matrix_name}{p_end}
{synopt :{opt gra:ph}}绘制伴随矩阵的特征值图{p_end}
{synopt :{opt d:label}}用距离单位圆的距离标记特征值{p_end}
{synopt :{opt mod:label}}用模长标记特征值{p_end}
{synopt :{it:{help marker_options_zh}}}更改标记的外观（颜色，大小等）{p_end}
{synopt :{opth rlop:ts(cline_options)}}影响参考单位圆的渲染{p_end}
{synopt :{opt nogri:d}}抑制极坐标网格圆{p_end}
{synopt :{opt pgrid}{cmd:(}[...]{cmd:)}}指定极坐标网格圆的半径和外观；参见 {it:{help vecstable##pgrid:选项}} 以获取详细信息
  {p_end}

{syntab:添加图形}
{synopt :{opth "addplot(addplot_option:plot)"}}将其他图形添加到生成的图形中{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}文档中包含的任何选项， 其他于 {cmd:by()} 在 
   {manhelpi twoway_options G-3} {p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{cmd:vecstable} 只能在 {cmd:vec} 后使用；见
{help vec_zh:[TS] vec}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > VEC 诊断和测试 >}
     {bf:检查 VEC 估计的稳定性条件}


{marker description}{...}
{title:描述}

{pstd}
{cmd:vecstable} 检查使用 {cmd:vec} 拟合的向量误差修正模型 (VECM) 的特征值稳定性条件。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS vecstableQuickstart:快速开始}

        {mansection TS vecstableRemarksandexamples:备注和示例}

        {mansection TS vecstableMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt estimates(estname)} 请求 {cmd:vecstable} 使用之前获得的
{cmd:vec} 估计集合，存储为 {it:estname}。默认情况下，
{cmd:vecstable} 使用活动结果。有关操作估计结果的信息请参见 {manhelp estimates R}。

{phang}
{opt amat(matrix_name)} 指定一个有效的 Stata 矩阵名称，通过它
可以保存伴随矩阵。伴随矩阵在 {help vecstable##L2005:L{c u:}tkepohl (2005)} 和
{help varstable_zh:[TS] varstable} 中被称为 {bf:A} 矩阵。
默认不保存伴随矩阵。

{phang}
{opt graph} 使 {cmd:vecstable} 绘制伴随矩阵的特征值图。

{phang}
{opt dlabel} 标记特征值与单位圆的距离。 {opt dlabel} 
不能与 {opt modlabel} 同时指定。

{phang}
{opt modlabel} 标记特征值的模长。 {opt modlabel} 
不能与 {opt dlabel} 同时指定。

{phang}
{it:marker_options}
    指定标记的外观。该外观包括标记符号、标记大小及其颜色和轮廓；
    参见 {manhelpi marker_options G-3}。

{phang}
{opt rlopts(cline_options)} 影响参考单位圆的渲染；参见 {manhelpi cline_options G-3}。

{phang}
{opt nogrid} 抑制极坐标网格圆。 

{phang}
{marker pgrid}{...}
{cmd:pgrid(}[{it:{help numlist_zh}}][{cmd:,} {it:line_options}]{cmd:)}
[{cmd:pgrid(}[{it:numlist}][{cmd:,} {it:line_options}]{cmd:)...}{break}
{cmd:pgrid(}[{it:numlist}][{cmd:,} {it:line_options}]{cmd:)} 确定
极坐标网格圆的半径和外观。默认情况下，图形包括九个极坐标网格圆，
半径为 0.1, 0.2, ..., 0.9，具有 {opt grid} 线型。 {it:numlist} 指定
极坐标网格圆的半径。 {it:line_options} 决定极坐标网格圆的外观；
参见 {manhelpi line_options G-3}。由于 {opt pgrid()} 选项可以重复，具有不同半径的圆
可以拥有独特的外观。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 将指定的图形添加到生成的图形中；见 
{manhelpi addplot_option G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是文档中列出的任何选项， 
{manhelpi twoway_options G-3} 中除 {opt by()} 的选项。这些选项包括
为图形标题（见 {manhelpi title_options G-3}）和将图形保存到
磁盘（见 {manhelpi saving_option G-3}）的选项。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rdinc}{p_end}

{pstd}拟合向量误差修正模型 (VECM){p_end}
{phang2}{cmd:. vec ln_ne ln_se}{p_end}

{pstd}检查 VECM 估计的稳定性{p_end}
{phang2}{cmd:. vecstable}{p_end}

{pstd}同上，但绘制伴随矩阵的特征值{p_end}
{phang2}{cmd:. vecstable, graph}{p_end}

{pstd}同上，但抑制极坐标网格圆{p_end}
{phang2}{cmd:. vecstable, graph nogrid}{p_end}

{pstd}检查 VECM 估计的稳定性并将伴随矩阵保存为 
{cmd:A}{p_end}
{phang2}{cmd:. vecstable, amat(A)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:vecstable} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(unitmod)}}强加于伴随矩阵的单位模数的数量{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(Re)}} A 的特征值的实部{p_end}
{synopt:{cmd:r(Im)}} A 的特征值的虚部{p_end}
{synopt:{cmd:r(Modulus)}} A 的特征值的模长{p_end}

{pstd}
其中 A 是与 VECM 对应的 VAR 的伴随矩阵。
{p2colreset}{...}


{marker reference}{...}
{title:参考}

{marker L2005}{...}
{phang}
L{c u:}tkepohl, H. 2005.
{browse "http://www.stata.com/bookstore/imtsa.html":{it:新多元时间序列分析导论}.}
纽约: Springer.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <vecstable.sthlp>}