{smcl}
{* *! version 1.1.13  20sep2018}{...}
{viewerdialog varstable "dialog varstable"}{...}
{vieweralsosee "[TS] varstable" "mansection TS varstable"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] var svar" "help svar_zh"}{...}
{vieweralsosee "[TS] varbasic" "help varbasic_zh"}{...}
{viewerjumpto "语法" "varstable_zh##syntax"}{...}
{viewerjumpto "菜单" "varstable_zh##menu"}{...}
{viewerjumpto "描述" "varstable_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "varstable_zh##linkspdf"}{...}
{viewerjumpto "选项" "varstable_zh##options"}{...}
{viewerjumpto "示例" "varstable_zh##examples"}{...}
{viewerjumpto "存储结果" "varstable_zh##results"}
{help varstable:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[TS] varstable} {hline 2}}检查 VAR 或 SVAR 估计的稳定性条件{p_end}
{p2col:}({mansection TS varstable:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:varstable}
[{cmd:,} {it:选项}]

{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opt est:imates(estname)}}使用先前存储的结果 {it:estname}；默认使用活动结果{p_end}
{synopt:{opt a:mat(matrix_name)}}将伴随矩阵保存为 {it:matrix_name}{p_end}
{synopt:{opt gra:ph}}绘制伴随矩阵特征值的图形{p_end}
{synopt:{opt d:label}}用距离单位圆的距离标记特征值{p_end}
{synopt:{opt mod:label}}用模标记特征值{p_end}
{synopt :{it:{help marker_options_zh}}}更改标记的外观（颜色、大小等）{p_end}
{synopt:{opth rlop:ts(cline_options)}}影响参考单位圆的渲染{p_end}
{synopt:{opt nogri:d}}抑制极坐标网格圆{p_end}
{synopt:{opt pgrid}{cmd:(}[...]{cmd:)}}指定极坐标网格圆的半径和外观；有关详细信息，请参见 {it:{help varstable##pgrid():选项}}{p_end}

{syntab:添加图形}
{synopt:{opth "addplot(addplot_option:plot)"}}将其他图形添加到生成的图形中{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体}
{synopt:{it:twoway_options}}任何选项，除 {opt by()} 外，均在 {manhelpi twoway_options G-3} 中有文档说明{p_end}
{synoptline}
{p 4 6 2}
{opt varstable} 只能在 {cmd:var} 或 {cmd:svar} 后使用；请参见 {help var_zh:[TS] var} 和 {help svar_zh:[TS] var svar}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > VAR 诊断和测试 >}
      {bf:检查 VAR 估计的稳定性条件}


{marker description}{...}
{title:描述}

{pstd}
{opt varstable} 在使用 {cmd:var} 或 {cmd:svar} 估计向量自回归的参数后，检查特征值的稳定性条件。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS varstableQuickstart:快速入门}

        {mansection TS varstableRemarksandexamples:备注和示例}

        {mansection TS varstableMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt estimates(estname)} 请求 {opt varstable} 使用先前获得的存储为 {it:estname} 的 {cmd:var} 估计集。默认情况下，{opt varstable} 使用活动估计结果。
请参见 {manhelp estimates R} 以获取有关操作估计结果的信息。

{phang}
{opt amat(matrix_name)} 指定一个有效的 Stata 矩阵名称，以便保存伴随矩阵 {bf:A} （参见 {it:{mansection TS varstableMethodsandformulas:方法和公式}} 中对矩阵 {bf:A} 的定义）。默认情况下，不保存 {bf:A} 矩阵。

{phang}
{opt graph} 使 {opt varstable} 绘制伴随矩阵特征值的图形。

{phang}
{opt dlabel} 用距离单位圆的距离标记每个特征值。 {opt dlabel} 不能与 {opt modlabel} 同时指定。

{phang}
{opt modlabel} 用特征值的模标记特征值。 {opt modlabel} 不能与 {opt dlabel} 同时指定。

{phang}
{it:marker_options}
    指定标记的外观。该外观包括标记符号、标记大小及其颜色和轮廓；参见 {manhelpi marker_options G-3}。

{phang}
{opt rlopts(cline_options)} 影响参考单位圆的渲染；参见 {manhelpi cline_options G-3}。

{phang}
{opt nogrid} 抑制极坐标网格圆。

{phang}
{marker pgrid()}{...}
{cmd:pgrid(}[{it:{help numlist_zh}}][{cmd:,} {it:line_options}]{cmd:)}
   确定极坐标网格圆的半径和外观。默认情况下，图形包括九个极坐标网格圆，半径为 0.1、0.2、...、0.9，使用 {opt grid} 线型。 {it:numlist} 指定极坐标网格圆的半径。 {it:line_options} 决定极坐标网格圆的外观；参见 {manhelpi line_options G-3}。因为 {opt pgrid()} 选项可以重复，所以不同半径的圆可以具有不同的外观。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 将指定的图形添加到生成的图形中。参见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中有文档说明的任何选项，除了 {cmd:by()}。这些包括为图形命名的选项（参见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（参见 {manhelpi saving_option G-3}）。 


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}{p_end}

{pstd}拟合向量自回归模型{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump if qtr>=tq(1961q2) &}
                 {cmd:qtr<=tq(1978q4)}{p_end}

{pstd}检查 {cmd:var} 结果的稳定性{p_end}
{phang2}{cmd:. varstable}{p_end}

{pstd}与上述相同，但绘制伴随矩阵特征值的图形{p_end}
{phang2}{cmd:. varstable, graph}{p_end}

{pstd}与上述相同，但抑制极坐标网格圆{p_end}
{phang2}{cmd:. varstable, graph nogrid}

{pstd}将估计结果存储在 {cmd:var1}{p_end}
{phang2}{cmd:. estimates store var1}{p_end}

{pstd}设置{p_end}
{phang2}{cmd:. matrix A = (.,0\.,.)}{p_end}
{phang2}{cmd:. matrix B = I(2)}{p_end}

{pstd}拟合结构性向量自回归模型{p_end}
{phang2}{cmd:. svar d.ln_inc d.ln_consump, aeq(A) beq(B)}

{pstd}检查 {cmd:svar} 结果的稳定性{p_end}
{phang2}{cmd:. varstable}

{pstd}检查存储在 {cmd:var1} 中的 {cmd:var} 结果的稳定性{p_end}
{phang2}{cmd:. varstable, estimates(var1)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:varstable} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(Re)}}A 的特征值的实部{p_end}
{synopt:{cmd:r(Im)}}A 的特征值的虚部{p_end}
{synopt:{cmd:r(Modulus)}}A 的特征值的模{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <varstable.sthlp>}