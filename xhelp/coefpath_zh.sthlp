{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog coefpath "dialog coefpath"}{...}
{vieweralsosee "[LASSO] coefpath" "mansection lasso coefpath"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso postestimation" "help lasso postestimation"}{...}
{vieweralsosee "[LASSO] lasso inference postestimation" "help lasso inference postestimation"}{...}
{viewerjumpto "语法" "coefpath_zh##syntax"}{...}
{viewerjumpto "菜单" "coefpath_zh##menu"}{...}
{viewerjumpto "描述" "coefpath_zh##description"}{...}
{viewerjumpto "PDF文档链接" "coefpath_zh##linkspdf"}{...}
{viewerjumpto "选项" "coefpath_zh##options"}{...}
{viewerjumpto "示例" "coefpath_zh##examples"}
{help coefpath:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[LASSO] coefpath} {hline 2}}绘制LASSO之后的系数路径{p_end}
{p2col:}({mansection LASSO coefpath:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
在 {cmd:lasso}、{cmd:sqrtlasso} 和 {cmd:elasticnet} 之后

{p 8 16 2}
{opt coefpath}
[{cmd:,} {help coefpath##coefpath_options:{it:选项}}]


{pstd}
在 {cmd:ds} 和 {cmd:po} 命令之后

{p 8 16 2}
{opt coefpath,} {opt for(varspec)}
[{help coefpath##coefpath_options:{it:选项}}]


{pstd}
在没有 {cmd:resample} 的 {cmd:xpo} 命令之后

{p 8 16 2}
{opt coefpath,} {opt for(varspec)} 
{opt xfold(#)}
[{help coefpath##coefpath_options:{it:选项}}]


{pstd}
在带有 {cmd:resample} 的 {cmd:xpo} 命令之后

{p 8 16 2}
{cmd:coefpath,} {opt for(varspec)} 
{opt xfold(#)}
{opt resample(#)}
[{help coefpath##coefpath_options:{it:选项}}]


{phang}
{it:varspec} 是一个 {varname}，但在 {cmd:poivregress} 和 {cmd:xpoivregress} 之后，它可以是 {it:varname} 或 
{mansection LASSO lassoinfoRemarksandexamplespred_varname:{bf:pred(}{it:varname}{bf:)}}.


{marker coefpath_options}{...}
{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主选项}
{synopt :{cmd:xunits(}{help coefpath##xunitspec:{it:x_unit_spec}}{cmd:)}}x轴单位（比例）；默认值为 {cmd:xunits(l1norm)}{p_end}
{synopt :{cmd:minmax}}为x轴添加最小和最大值{p_end}
{synopt :{opt alpha(#)}}绘制 alpha={it:#} 时的系数路径；默认值为所选值 alpha*；仅在 {cmd:elasticnet} 之后允许{p_end}
{synopt :{opt raw:coefs}}绘制未标准化的系数路径{p_end}

{syntab:参考线}
{synopt :{cmdab:rlop:ts(}{help cline_options_zh:{it:cline_options}}{cmd:)}}影响参考线的绘制{p_end}
{synopt :{cmd:norefline}}抑制绘制参考线{p_end}

{syntab:路径}
{synopt :{cmd:lineopts(}{help cline_options_zh:{it:cline_options}}{cmd:)}}影响所有系数路径的绘制；当系数个数为100或以上时不允许使用{p_end}
{synopt :{cmd:line}{it:#}{cmd:opts(}{help cline_options_zh:{it:cline_options}}{cmd:)}}影响系数路径 {it:#} 的绘制；当系数个数为100或以上时不允许使用{p_end}
{synopt :{cmd:mono}}通过单条线绘制系数路径；当系数个数为100或以上时，默认值为 {cmd:mono}{p_end}
{synopt :{cmd:monoopts(}{help cline_options_zh:{it:cline_options}}{cmd:)}}影响在指定 {cmd:mono} 时用于绘制系数路径的线的绘制{p_end}

{syntab:数据}
{synopt :{cmd:data(}{help filename_zh:{it:filename}}[{cmd:, replace}]{cmd:)}}将绘图数据保存到 {it:filename}{p_end}

{syntab:Y轴、X轴、标题、图例、总体}
{synopt :{it:twoway_options}}任何在 {manhelpi twoway_options G-3} 中记录的除了 {cmd:by()} 的选项{p_end}
{synoptline}
INCLUDE help for_footnote


{marker xunitspec}{...}
{synoptset 35}{...}
{synopthdr:x_unit_spec}
{synoptline}
{synopt :{cmd:l1norm}}标准化系数向量的 l1 范数；默认值{p_end}
{synopt :{cmd:l1normraw}}未标准化系数向量的 l1 范数{p_end}
{synopt :{cmdab:lnlam:bda}}对数尺度的 lambda{p_end}
{synopt :{cmdab:rlnlam:bda}}反向对数尺度的 lambda{p_end}
{synoptline}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后期估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:coefpath} 在使用 {cmd:selection(cv)}、{cmd:selection(adaptive)} 或 {cmd:selection(none)} 进行的任何 LASSO 拟合后绘制系数路径。为每个系数绘制一条线，表示其值随着搜索的LASSO惩罚参数lambda的值或根据这些lambda值的LASSO选择所得到的系数的l1范数的变化。

{pstd}
{cmd:coefpath} 可以在 {cmd:lasso}、{cmd:elasticnet}、{cmd:sqrtlasso} 或任何 LASSO 推断命令之后使用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection LASSO coefpathQuickstart:快速入门}

        {mansection LASSO coefpathRemarksandexamples:备注和示例}

{pstd}
上面的部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主选项}

{phang}
{opt xunits(x_unit_spec)} 指定用于绘制系数路径的 x 轴单位。可用的 {it:x_unit_spec} 包括：

{phang2}
{cmd:l1norm} 指定 x 轴单位为标准化系数向量的 l1 范数。默认值。

{phang2}
{cmd:l1normraw} 指定 x 轴单位为未标准化系数向量的 l1 范数。

{phang2}
{cmd:lnlambda} 指定 x 轴单位为对数尺度下的lambda。

{phang2}
{cmd:rlnlambda} 指定 x 轴单位为反向对数尺度下的lambda。

{phang}
{cmd:minmax} 为 x 轴添加最小值和最大值。

INCLUDE help for_long

{phang}
{opt alpha(#)} 绘制 alpha = {it:#} 时的系数路径。默认值为 {opt alpha(alpha*)}，其中 {it:alpha*} 为所选 alpha。{opt alpha(#)} 仅可在 {cmd:elasticnet} 后指定。

{phang}
{cmd:rawcoefs} 指定绘制未标准化的系数路径。默认情况下，绘制标准化变量（均值为0，标准差为1）的系数。

{dlgtab:参考线}

{phang}
{opt rlopts(cline_options)} 影响参考线的绘制。请参阅 {manhelpi cline_options G-3}。

{phang}
{cmd:norefline} 抑制绘制参考线。

{dlgtab:路径}

{phang}
{opt lineopts(cline_options)} 影响所有系数路径的绘制。请参阅 {manhelpi cline_options G-3}。当系数个数为100或以上时，不允许使用 {cmd:lineopts()}。

{phang}
{cmd:line}{it:#}{cmd:opts(}{it:cline_options}{cmd:)} 影响系数路径 {it:#} 的绘制。请参阅 {manhelpi cline_options G-3}。当系数个数为100或以上时，不允许使用 {cmd:line}{it:#}{cmd:opts()}。

{phang}
{cmd:mono} 使用单条线绘制系数路径。当LASSO中有100个或以上的系数时，默认值为 {cmd:mono}。

{phang}
{opt monoopts(cline_options)} 影响在指定 {cmd:mono} 时用于绘制系数路径的线的绘制。请参阅 {manhelpi cline_options G-3}。

{dlgtab:数据}

{phang}
{cmd:data(}{help filename_zh:{it:filename}} [{cmd:, replace}]{cmd:)} 将绘图数据保存到 Stata 数据文件中。

{dlgtab:Y轴、X轴、标题、图例、总体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的任何选项，不包括 {cmd:by()}。这些选项包括图形标题的选项（请参见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（请参见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. set seed 1234}{p_end}
{phang2}{cmd:. lasso linear mpg i.foreign i.rep78 headroom weight turn}
    {cmd:gear_ratio price trunk length displacement}

{pstd}绘制系数路径{p_end}
{phang2}{cmd:. coefpath}

{pstd}设置{p_end}
{phang2}{cmd:. elasticnet linear mpg i.foreign i.rep78 headroom weight}
    {cmd:turn gear_ratio price trunk length displacement}

{pstd}绘制 alpha=0.5 时的 LASSO 系数路径{p_end}
{phang2}{cmd:. coefpath, alpha(0.5)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse breathe, clear}{p_end}
{phang2}{cmd:. xporegress react no2_class no2_home,}
    {cmd:controls(i.(meducation overweight msmoke sex) noise sev* age)}
    {cmd:xfolds(5) selection(cv)}

{pstd}绘制交叉拟合折叠2的 react 的系数路径{p_end}
{phang2}{cmd:. coefpath, for(react) xfold(2)}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <coefpath.sthlp>}