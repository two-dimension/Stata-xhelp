
{smcl}
{* *! version 1.1.5  01mar2017}{...}
{cmd:help impute}{right:dialog:  {dialog impute}{space 15}}
{right:{help prdocumented_zh:之前记录的文档}}
{help impute:English Version}
{hline}
{hline}
{pstd}
{cmd:impute} 仍然可以使用，但自 Stata 11 起，它不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能无法正常工作。

{pstd}
请参见 {helpb mi impute}，这是 {cmd:impute} 的更新替代方案。


{title:标题}

{p2colset 5 19 21 2}{...}
{p2col :{hi:[D] impute} {hline 2}}填补缺失值{p_end}
{p2colreset}{...}


{title:语法}

{p 8 15 2}
{cmd:impute}
{depvar}
{indepvars}
{ifin}
{weight}
{cmd:,}
{opt g:enerate(newvar1)}
[{it:options}]

{synoptset 24 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{p2coldent :* {opth g:enerate(newvar:newvar1)}}生成
{it:newvar1} 以包含填补的值{p_end}
{synopt :{opth nomis:sings(varlist)}}在最佳子集回归中包括 {it:varlist}，并且该变量没有缺失值{p_end}
{synopt :{opt all}}使用所有观察值进行估计（无论 {opt if} 和 {opt in}）{p_end}
{synopt :{opth reg:sample(exp)}}使用在 {it:exp} 中指定的观察值进行估计{p_end}
{synopt :{opt copy:rest}}将样本外的因变量值复制到生成的变量中{p_end}
{synopt :{opth v:arp(newvar:newvar2)}}创建新变量以包含预测的方差{p_end}
{synoptline}
{p 4 6 2}
* {opt generate(newvar1)} 是必需的。{p_end}
{p 4 4 2}
{it:indepvars} 和 {it:varlist} 可以包含时间序列运算符；请参阅 {help tsvarlist_zh}。{p_end}
{p 4 6 2}{cmd:aweight}s 和 {cmd:fweight}s 是被允许的；请参阅 {help weight_zh}。{p_end}


{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 其他变量创建命令 >}
       {bf:填补缺失值}


{title:描述}

{pstd}{opt impute} 用于填补缺失值；{depvar} 是要填补缺失值的变量。 {indepvars} 是填补依据的变量列表，而 {it:{help newvar_zh:newvar1}} 是包含填补值的新变量。

{pstd}
{opt impute} 根据缺失数据模式组织案例，以便有效地进行缺失值回归；这确保了 {it:indepvars} 中变量的最大数量限制为 31。

{pstd}{opt if} {it:exp} 和 {opt in} {it:range} 限制填补缺失值的样本，并且除非指定 {opt regsample()} 或 {opt all}，否则也限制用于回归的样本。


{title:选项}

{dlgtab:主要}

{phang}{opth "generate(newvar:newvar1)"}
指定要创建的新变量的名称。 {opt generate()} 是必需的。

{phang}{opth nomissings(varlist)}
指定在最佳子集回归中包含的变量。此选项要求指定的变量在回归所使用的观察样本中不能有缺失值。

{phang}{opt all}
指定在回归样本中使用所有观察值。因此 {opt all} 等同于 {cmd:regsample(_n<=_N)} 或 {cmd:regsample(1)}。

{phang}{opth regsample(exp)}
指定用于拟合回归的样本。不要将 {opt if} 和 {opt in} 子句与 {opt regsample()} 选项混淆。如果未指定 {opt regsample()}，则回归样本默认使用所有观察值（如果未指定 {opt if} 和 {opt in}），否则则使用所有选定的观察值。

{phang}{opt copyrest}
指定将 {depvar} 的样本外值复制到 {opt generate()} 生成的变量中。默认值是将样本外值设置为缺失（{opt .}）。

{phang}{opth "varp(newvar:newvar2)"}
指定用于包含预测方差（而不是标准误差）的新变量的名称。


{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse emd, clear}{p_end}

{pstd}报告 {cmd:ln_rsales_pc} 的代码簿以查看缺失值信息{p_end}
{phang2}{cmd:. codebook ln_rsales_pc}

{pstd}创建 {cmd:i_ln_rsales_pc} 以包含 {cmd:ln_rsales_pc} 的填补值{p_end}
{phang2}{cmd:. impute ln_rsales_pc jantemp precip ln_income median_age hhsize,}
       {cmd:gen(i_ln_rsales_pc)}{p_end}

{pstd}在模型中使用 {cmd:i_ln_rsales_pc} 进行回归{p_end}
{phang2}{cmd:. regress ln_eat i_ln_rsales_pc jantemp precip ln_income}
       {cmd:median_age hhsize}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}

{pstd}使用变量 {cmd:mpg} 到 {cmd:foreign} 进行因子分析{p_end}
{phang2}{cmd:. factor mpg-foreign}{p_end}

{pstd}创建前两个公共因子{p_end}
{phang2}{cmd:. predict f1 f2}{p_end}

{pstd}报告 {cmd:f1} 和 {cmd:f2} 的代码簿以查看缺失值信息{p_end}
{phang2}{cmd:. codebook f1 f2, mv}

{pstd}创建 {cmd:i_f1} 以包含 {cmd:f1} 的填补值{p_end}
{phang2}{cmd:. impute f1  mpg-foreign, gen(i_f1)}{p_end}

{pstd}创建 {cmd:i_f2} 以包含 {cmd:f2} 的填补值{p_end}
{phang2}{cmd:. impute f2  mpg-foreign, gen(i_f2)}{p_end}

{pstd}在模型中使用 {cmd:i_f1} 和 {cmd:i_f2} 进行回归{p_end}
{phang2}{cmd:. regress price i_f1 i_f2}{p_end}
    {hline}


{title:另请参阅}

{psee}
手册：  {help prdocumented_zh:之前记录的文档}

{psee}
{space 2}帮助：  {manhelp ipolate D},
{manhelp predict R},
{manhelp regress R}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <impute.sthlp>}