{smcl}
{* *! version 1.0.4  15mar2019}{...}
{viewerdialog predict "dialog predict"}{...}
{vieweralsosee "[ERM] predict advanced" "mansection ERM predictadvanced"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eintreg postestimation" "help eintreg postestimation"}{...}
{vieweralsosee "[ERM] eintreg predict" "help eintreg predict"}{...}
{vieweralsosee "[ERM] eoprobit postestimation" "help eoprobit postestimation"}{...}
{vieweralsosee "[ERM] eoprobit predict" "help eoprobit predict"}{...}
{vieweralsosee "[ERM] eprobit postestimation" "help eprobit postestimation"}{...}
{vieweralsosee "[ERM] eprobit predict" "help eprobit predict"}{...}
{vieweralsosee "[ERM] eregress postestimation" "help eregress postestimation"}{...}
{vieweralsosee "[ERM] eregress predict" "help eregress predict"}{...}
{viewerjumpto "Syntax" "erm_predict_advanced_zh##syntax"}{...}
{viewerjumpto "Description" "erm_predict_advanced_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "erm_predict_advanced_zh##linkspdf"}{...}
{viewerjumpto "Options" "erm_predict_advanced_zh##options"}{...}
{viewerjumpto "Examples" "erm_predict_advanced_zh##examples"}
{help erm_predict_advanced:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[ERM] predict advanced} {hline 2}}预测的高级特性{p_end}
{p2col:}({mansection ERM predictadvanced:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar}
{ifin}
[{cmd:,}
{help erm_predict_treatment##treatstatistic:{it:treatstatistic}}
{help eregress_predict##howcalculated_options:{it:howcalculated}}
{help erm_predict_treatment##treatmodifier:{it:treatmodifier}}
{help erm_predict_treatment##oprobitmodifier:{it:oprobitmodifier}}
{help erm_predict_advanced##advanced:{it:advanced}}]

{pstd}
在某些情况下，可能需要指定多个新变量：

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {help varlist_zh:{it:newvarlist}}{c )-}
{ifin}
[{cmd:,} {help erm_predict_treatment##treatstatistic:{it:treatstatistic}}
{help eregress_predict##howcalculated_options:{it:howcalculated}}
{help erm_predict_treatment##treatmodifier:{it:treatmodifier}}
{help erm_predict_treatment##oprobitmodifier:{it:oprobitmodifier}}
{help erm_predict_advanced##advanced:{it:advanced}}]

{pstd}
除了 {it:advanced} 之外，您在其他 {cmd:predict} 手册条目中已经见过这个语法。我们将不再覆盖以前的内容。

{marker advanced}{...}
{synoptset 20}{...}
{synopthdr:高级选项}
{synoptline}
{synopt :{opt eq:uation(depvar)}}计算指定因变量的结果{p_end}
{synopt :{opt nooff:set}}在进行计算时忽略为模型拟合时指定的 {opt offset()} 选项{p_end}
{synopt :{opt pr(a, b)}}计算 Pr(a < xb + e_i.{it:depvar} < b); 
      {it:a} 和 {it:b} 是数字或变量名{p_end}
{synopt :{opt e(a, b)}}计算 E(y_i | a < y_i < b)，其中 
	y_i = xb + e_i.{it:depvar}; {it:a} 和 {it:b} 是数字或 
	变量名{p_end}
{synopt :{opt expm:ean}}计算 E{c -(}exp(y_i){c )-}{p_end}
{synopt :{opt scores}}计算横断面模型的方程级分数变量和面板数据模型的参数级分数变量{p_end}
{synoptline}

{pstd}
还要注意，尽管选项 {cmd:mean} 没有包含在 {it:treatstatistic} 中，适用于 {cmd:eprobit}、{cmd:eoprobit}、{cmd:xteprobit} 和 {cmd:xteoprobit}，但它与这些命令是允许的。{cmd:mean} 返回 {cmd:eprobit} 和 {cmd:xteprobit} 之后的积极结果概率，并返回 {cmd:eoprobit} 和 {cmd:xteoprobit} 之后的结果的期望值。

{marker description}{...}
{title:描述}

{pstd}
{cmd:predict} 的特性在以下命令中记录：

            {manhelp eregress_predict ERM:eregress predict}
            {manhelp eintreg_predict ERM:eintreg predict}
            {manhelp eprobit_predict ERM:eprobit predict}
            {manhelp eoprobit_predict ERM:eoprobit predict}
            {manhelp erm_predict_treatment ERM:predict treatment}

{pstd}
     在这里，我们记录 {cmd:predict} 的高级特性。
{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ERM predictadvancedRemarksandexamples:备注和示例}

        {mansection ERM predictadvancedMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt equation(depvar)} 指定要计算预测的因变量。 默认情况下，预测是针对主方程的因变量进行的。

{phang}
{opt nooffset} 仅在您在拟合模型时指定了 {opt offset()} 时相关。它修改 {opt predict} 的计算，以使其忽略偏移量变量。

{phang}
{opt pr(a, b)}
计算 
Pr({it:a} < {bf:x}_i beta + e_i.{it:depvar} < {it:b}), 
线性预测位于 {it:a} 和 {it:b} 之间的概率。  

{pmore}
{it:a} 和 {it:b} 可以指定为数字或变量名。如果 {it:a} 缺失 ({it:a}{ul:>}{cmd:.})，则 {it:a} 被视为负无穷大。如果 {it:b} 缺失 ({it:b}{ul:>}{cmd:.})，则 {it:b} 被视为正无穷大。  

{phang}
{opt e(a, b)} 计算 E(y_i | {it:a} < y_i < {it:b})，其中
y_i = {bf:x}_i beta+e_i.{it:depvar}。这是线性预测条件于结果在 {it:a} 和 {it:b} 之间的值。  

{pmore}
{it:a} 和 {it:b} 可以指定为数字或变量名。如果 {it:a} 缺失 ({it:a}{ul:>}{cmd:.})，则 {it:a} 被视为负无穷大。如果 {it:b} 缺失 ({it:b}{ul:>}{cmd:.})，则 {it:b} 被视为正无穷大。

{phang}
{cmd:expmean}
计算指数化结果的均值。  

{phang}
{opt scores} 
计算横断面模型的方程级分数（{cmd:eintreg}、{cmd:eoprobit}、{cmd:eprobit} 和 {cmd:eregress}）和面板数据模型的参数级分数（{cmd:xteintreg}、{cmd:xteoprobit}、{cmd:xteoprobit} 和 {cmd:xteregress}）。   
{p_end}


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}
{cmd:. webuse womenhlth}{p_end}
{phang2}
{cmd:. eoprobit health i.exercise c.grade, entreat(insured = grade i.workschool) select(select = i.insured i.regcheck) vce(robust)}

{pstd}
预测拥有保险的概率{p_end}
{phang2}
{cmd:. predict prinsur, pr equation(insured)}{p_end}

{pstd}
预测方程级分数{p_end}
{phang2}
{cmd:. predict sc*, scores}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <erm_predict_advanced.sthlp>}