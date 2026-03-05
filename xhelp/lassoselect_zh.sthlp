{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog lassoselect "dialog lassoselect"}{...}
{vieweralsosee "[LASSO] lassoselect" "mansection lasso lassoselect"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso postestimation" "help lasso postestimation"}{...}
{viewerjumpto "Syntax" "lassoselect_zh##syntax"}{...}
{viewerjumpto "Menu" "lassoselect_zh##menu"}{...}
{viewerjumpto "Description" "lassoselect_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "lassoselect_zh##linkspdf"}{...}
{viewerjumpto "Options" "lassoselect_zh##options"}{...}
{viewerjumpto "Examples" "lassoselect_zh##examples"}{...}
{viewerjumpto "Stored results" "lassoselect_zh##results"}
{help lassoselect:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[LASSO] lassoselect} {hline 2}}选择 lasso 后的 lambda{p_end}
{p2col:}({mansection LASSO lassoselect:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
在 {cmd:lasso}、{cmd:sqrtlasso} 和 {cmd:elasticnet} 之后

{p 8 16 2}
{cmd:lassoselect id =} {it:#}


{pstd}
在 {cmd:lasso} 和 {cmd:sqrtlasso} 之后

{p 8 16 2}
{cmd:lassoselect lambda =} {it:#}


{pstd}
在 {cmd:elasticnet} 之后

{p 8 16 2}
{cmd:lassoselect alpha =} {it:#} {cmd:lambda =} {it:#}


{pstd}
在 {cmd:ds} 和 {cmd:po} 与 {cmd:selection(cv)} 或 
{cmd:selection(adaptive)} 之后

{p 8 16 2}
{cmd:lassoselect} { {cmd:id} | {cmd:lambda} } {cmd:=} {it:#}{cmd:,} {opt for(varspec)}


{pstd}
在 {cmd:xpo} 之后没有 {cmd:resample} 并且使用 {cmd:selection(cv)} 或 
{cmd:selection(adaptive)} 

{p 8 16 2}
{cmd:lassoselect} { {cmd:id} | {cmd:lambda} } {cmd:=} {it:#}{cmd:,} {opt for(varspec)} 
{opt xfold(#)}


{pstd}
在 {cmd:xpo} 之后使用 {cmd:resample} 和 {cmd:selection(cv)} 或 
{cmd:selection(adaptive)} 

{p 8 16 2}
{cmd:lassoselect} { {cmd:id} | {cmd:lambda} } {cmd:=} {it:#}{cmd:,}
{opt for(varspec)}
{opt xfold(#)}
{opt resample(#)}


{phang}
{it:varspec} 是一个 {varname}，除了在 {cmd:poivregress} 和 
{cmd:xpoivregress} 之后，它可以是 {it:varname} 或 
{mansection LASSO lassoinfoRemarksandexamplespred_varname:{bf:pred(}{it:varname}{bf:)}}。

{synoptset 25}{...}
{synopthdr}
{synoptline}
包含 帮助 for_short
{synoptline}
包含 帮助 for_footnote


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后期估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:lassoselect} 允许用户在使用 {help lasso_zh} 和 {help sqrtlasso_zh} 时选择不同的 lambda*，当选择方法为 {cmd:selection(cv)}、{cmd:selection(adaptive)} 或 {cmd:selection(none)} 时。

{pstd}
在使用 {help elasticnet_zh} 后，用户可以选择不同的 (alpha*, lambda*) 对。

{pstd}
当 {cmd:ds}、{cmd:po} 和 {cmd:xpo} 命令使用 {cmd:selection(cv)} 或 {cmd:selection(adaptive)} 拟合模型时
({manhelp lasso_options LASSO:lasso 选项}), {cmd:lassoselect} 可以用于为特定的 lasso 选择不同的 lambda*。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection LASSO lassoselectQuickstart:快速入门}

        {mansection LASSO lassoknotsRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

包含 帮助 for_long


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. set seed 1234}{p_end}
{phang2}{cmd:. lasso linear mpg i.foreign i.rep78 headroom weight turn}
    {cmd:gear_ratio price trunk length displacement}{p_end}
{phang2}{cmd:. lassoknots}

{pstd}将选定的 lambda* 更改为 ID = 43 的值{p_end}
{phang2}{cmd:. lassoselect id=43}

{pstd}将 lambda* 更改为最接近 0.095 的值{p_end}
{phang2}{cmd:. lassoselect lambda=0.095}

{pstd}设置{p_end}
{phang2}{cmd:. elasticnet linear mpg i.foreign i.rep78 headroom weight turn}
    {cmd:gear_ratio price trunk length displacement}{p_end}
{phang2}{cmd:. lassoknots}

{pstd}将选定的 (alpha*, lambda*) 更改为 (0.5; 0.165){p_end}
{phang2}{cmd:. lassoselect alpha=0.5 lambda=0.165}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nlsy80, clear}{p_end}
{phang2}{cmd:. poivregress wage exper}
    {cmd:(educ = i.pcollege##c.(meduc feduc) i.urban sibs iq),}
    {cmd:controls(c.age##c.age tenure kww i.(married black south urban))}
    {cmd:selection(cv)}{p_end}
{phang2}{cmd:. lassoknots, for(pred(educ))}

{pstd}将选定的 lambda* 更改为最接近 0.1 的 lambda，用于 
{cmd:educ} 的预测{p_end}
{phang2}{cmd:. lassoselect lambda = 0.1, for(pred(educ))}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:lassoselect} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(varlist)}}选定的变量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lassoselect.sthlp>}