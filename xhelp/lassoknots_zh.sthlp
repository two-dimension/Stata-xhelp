{smcl}
{* *! version 1.0.0  23jun2019}{...}
{viewerdialog lassoknots "dialog lassoknots"}{...}
{vieweralsosee "[LASSO] lassoknots" "mansection lasso lassoknots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso" "help lasso_zh"}{...}
{vieweralsosee "[LASSO] lasso fitting" "mansection lasso lassofitting"}{...}
{vieweralsosee "[LASSO] lassocoef" "help lassocoef_zh"}{...}
{vieweralsosee "[LASSO] lassoselect" "help lassoselect_zh"}{...}
{viewerjumpto "Syntax" "lassoknots_zh##syntax"}{...}
{viewerjumpto "Menu" "lassoknots_zh##menu"}{...}
{viewerjumpto "Description" "lassoknots_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "lassoknots_zh##linkspdf"}{...}
{viewerjumpto "Options" "lassoknots_zh##options"}{...}
{viewerjumpto "Examples" "lassoknots_zh##examples"}{...}
{viewerjumpto "Stored results" "lassoknots_zh##results"}
{help lassoknots:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[LASSO] lassoknots} {hline 2}}在 lasso 估计后显示节点表{p_end}
{p2col:}({mansection LASSO lassoknots:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
在 {cmd:lasso}、{cmd:sqrtlasso} 和 {cmd:elasticnet} 之后

{p 8 16 2}
{cmd:lassoknots}
[{cmd:,} {help lassoknots##lassoknots_options:{it:选项}}]


{pstd}
在 {cmd:ds} 和 {cmd:po} 之后

{p 8 16 2}
{cmd:lassoknots,} {opt for(varspec)}
[{help lassoknots##lassoknots_options:{it:选项}}]


{pstd}
在 {cmd:xpo} 之后未使用 {cmd:resample}

{p 8 16 2}
{cmd:lassoknots,} {opt for(varspec)}
{opt xfold(#)}
[{help lassoknots##lassoknots_options:{it:选项}}]


{pstd}
在 {cmd:xpo} 之后使用 {cmd:resample}

{p 8 16 2}
{cmd:lassoknots,} {opt for(varspec)}
{opt xfold(#)}
{opt resample(#)}
[{help lassoknots##lassoknots_options:{it:选项}}]


{phang}
{it:varspec} 是一个 {varname}，但在 {cmd:poivregress} 和 {cmd:xpoivregress} 之后，它可以是 {it:varname} 或 {mansection LASSO lassoinfoRemarksandexamplespred_varname:{bf:pred(}{it:varname}{bf:)}}。


{marker lassoknots_options}{...}
{synoptset 25}{...}
{synopthdr}
{synoptline}
{synopt :{cmdab:di:splay(}{help lassoknots##diopts:{it:di_opts}}{cmd:)}}指定要显示的内容；最多可选三个 {it:di_opts} 选项{p_end}
{synopt :{cmdab:all:lambdas}}显示所有的 lambda{p_end}
{synopt :{cmd:steps}}显示所有适应性步骤；{cmd:selection(adaptive)} 仅显示{p_end}
{synopt :{cmd:nolstretch}}不拉伸表格的宽度以适应长变量名{p_end}

包含 帮助 for_short
{synoptline}
包含 帮助 for_footnote


{marker diopts}{...}
{synoptset 25}{...}
{synopthdr:di_opts}
{synoptline}
{synopt :{cmdab:nonz:ero}}非零系数的数量{p_end}
{synopt :{cmdab:var:iables}}添加或移除的变量名称{p_end}
{synopt :{cmd:cvmd}}CV 均值偏差（CV 函数）{p_end}
{synopt :{cmdab:cvdev:ratio}}CV 均值偏差比{p_end}
{synopt :{cmdab:dev:ratio}}样本内偏差比{p_end}
{synopt :{cmd:bic}}BIC{p_end}
{synopt :{cmd:l1}}系数的相对 l1 范数{p_end}
{synopt :{cmd:l2}}系数的相对 l2 范数平方{p_end}

{syntab:仅限线性模型}
{synopt :{cmd:cvmpe}}CV 均值预测误差（CV 函数）{p_end}
{synopt :{cmd:osr2}}样本外 R^2{p_end}
{synopt :{cmd:r2}}样本内 R^2{p_end}
{synoptline}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:lassoknots} 在进行 lasso 之后显示节点的表格。
节点是变量在模型中变化的 lambda 值。

{pstd}
{cmd:lassoknots} 显示在针对连续 lambda 进行模型拟合时添加或移除的变量名称。它还显示拟合优度的度量。

{pstd}
在使用交叉验证（CV）选择 lambda* 时，{cmd:lassoknots} 将显示 CV 函数的值。查看完拟合度量后，您可以使用 {help lassoselect_zh} 选择替代的 lambda*。

{pstd}
当 {cmd:ds}、{cmd:po} 和 {cmd:xpo} 命令使用 {cmd:selection(cv)} 或 {cmd:selection(adaptive)} 拟合模型时（请参见 {manhelp lasso_options LASSO:lasso 选项}），可以使用 {cmd:lassoknots} 显示为每个计算出的 lasso 的 CV 函数和拟合度量。

{pstd}
{cmd:lassoknots} 在 {cmd:selection(plugin)} 之后也可以使用，但仅显示插件公式估计的单个 lambda* 的度量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection LASSO lassoknotsQuickstart:快速开始}

        {mansection LASSO lassoknotsRemarksandexamples:备注和示例}

	{mansection LASSO lassoknotsMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt display(di_opts)} 指定要在节点表中显示的内容。最多可以指定三个 {it:di_opts} 选项。默认情况下，线性模型为 {cmd:display(nonzero cvmpe variables)}，logit、probit 和 Poisson 模型为 {cmd:display(nonzero cvmd variables)}。完整的 {it:di_opts} 集合如下：

{phang2}
{cmd:nonzero} 指定显示非零系数的数量。

{phang2}
{cmd:variables} 指定显示每个节点时添加或移除的变量名称。

{phang2}
{cmd:cvmd} 指定显示 CV 均值偏差。这些是用于寻找最小值的 CV 函数值。对于线性模型，它与由 {cmd:cvmpe} 给出的 CV 均值预测误差相同。

{phang2}
{cmd:cvdevratio} 指定显示 CV 均值偏差比。CV 均值偏差比是样本外拟合优度的估计。作为预测性能的度量，它优于 {cmd:devratio}，即样本内偏差比。通常范围在 0 到 1 之间，但在某些情况下可能超出此范围。对于线性模型，它与由 {cmd:osr2} 给出的样本外 R^2 相同。

{phang2}
{cmd:devratio} 指定显示样本内偏差比。样本内偏差比是样本内拟合优度的指示。样本内偏差是将样本内 R^2 推广到非线性模型的指标。作为预测性能的度量，它不如 {cmd:cvdevratio}（CV 均值偏差比）。样本内偏差比是预测性能的较差指标，因为它并未考虑包括额外协变量的成本。其值始终在 0 到 1 之间。对于线性模型，它与由 {cmd:r2} 给出的样本内 R^2 相同。

{phang2}
{cmd:bic} 指定显示 BIC。

{phang2}
{cmd:l1} 指定显示系数的相对 l1 范数。

{phang2}
{cmd:l2} 指定显示系数的相对 l2 范数平方。

{phang2}
仅限线性模型

{phang3}
{cmd:cvmpe} 指定显示 CV 均值预测误差。这些是用于寻找最小值的 CV 函数值。

{phang3}
{cmd:osr2} 指定显示样本外 R^2。样本外 R^2 是样本外拟合优度的估计。作为预测性能的度量，它优于 {cmd:r2}，即样本内 R^2。通常在 0 和 1 之间，但在某些情况下可能超出该范围。

{phang3}
{cmd:r2} 指定显示样本内偏差比。样本内偏差比是样本内拟合优度的指示。作为预测性能的度量，它不如 {cmd:osr2}，即样本外 R^2。样本内 R^2 是较差的预测性能指标，因为它未考虑额外协变量预测的成本。始终介于 0 和 1 之间。

{phang}
{cmd:alllambdas} 指定显示所有的 lambda，而不仅仅是节点。在非节点的 lambda 处的度量会略有变化，因为系数估计会稍有变化。非节点的 lambda 可以由 {cmd:lassoselect} 选择为 lambda*；然而，通常不会这样做。

{phang}
{cmd:steps} 仅适用于 {cmd:selection(adaptive)}。当指定时，显示所有适应性步骤的 lambda。默认情况下，仅显示最后一个适应性步骤的 lambda。

{phang}
{cmd:nolstretch} 指定表格的宽度不会自动拉伸以适应长变量名。当指定 {cmd:nolstretch} 时，名称会被缩写，以确保表格宽度不超过 79 个字符。默认值 {cmd:lstretch} 会自动宽表格至结果窗口的宽度。要更改默认值，请使用 {help set_zh:set lstretch off}。

包含 帮助 for_long


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. set seed 1234}{p_end}
{phang2}{cmd:. lasso linear mpg i.foreign i.rep78 headroom weight turn}
    {cmd:gear_ratio price trunk length displacement}

{pstd}显示节点{p_end}
{phang2}{cmd:. lassoknots}

{pstd}显示非零系数的数量、样本外 R^2 及添加或移除的变量{p_end}
{phang2}{cmd:. lassoknots, display(nonzero osr2 variables)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse breathe, clear}{p_end}
{phang2}{cmd:. dsregress react no2_class no2_home,}
    {cmd:controls(i.(meducation overweight msmoke sex) noise sev* age)}
    {cmd:selection(cv)}

{pstd}显示依赖变量 {cmd:react} 的 lasso 节点表{p_end}
{phang2}{cmd:. lassoknots, for(react)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nlsy80, clear}{p_end}
{phang2}{cmd:. poivregress wage exper} 
    {cmd:(educ = i.pcollege##c.(meduc feduc) i.urban sibs iq),} 
    {cmd:controls(c.age##c.age tenure kww i.(married black south urban))}
    {cmd:selection(cv)}

{pstd}显示内生变量 {cmd:educ} 的预测的 lasso 节点表{p_end}
{phang2}{cmd:. lassoknots, for(pred(educ))}

    {hline}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:lassoknots} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(table)}}包含显示值的矩阵{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lassoknots.sthlp>}