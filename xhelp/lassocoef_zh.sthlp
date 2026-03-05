{smcl}
{* *! version 1.0.0  24jun2019}{...}
{viewerdialog lassocoef "dialog lassocoef"}{...}
{vieweralsosee "[LASSO] lassocoef" "mansection lasso lassocoef"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso postestimation" "help lasso postestimation"}{...}
{vieweralsosee "[LASSO] lasso inference postestimation" "help lasso inference postestimation"}{...}
{vieweralsosee "[LASSO] lassoinfo" "help lassoinfo_zh"}{...}
{viewerjumpto "语法" "lassocoef_zh##syntax"}{...}
{viewerjumpto "菜单" "lassocoef_zh##menu"}{...}
{viewerjumpto "描述" "lassocoef_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "lassocoef_zh##linkspdf"}{...}
{viewerjumpto "选项" "lassocoef_zh##options"}{...}
{viewerjumpto "示例" "lassocoef_zh##examples"}{...}
{viewerjumpto "存储结果" "lassocoef_zh##results"}
{help lassocoef:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[LASSO] lassocoef} {hline 2}}显示 Lasso 估计结果后的系数{p_end}
{p2col:}({mansection LASSO lassocoef:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
对于当前估计结果

{phang2}
在 {cmd:lasso}、{cmd:sqrtlasso} 或 {cmd:elasticnet} 之后

{p 16 25 2}
{cmd:lassocoef}
[{cmd:,} {help lassocoef##options:{it:选项}}]

{phang2}
在 {cmd:ds} 或 {cmd:po} 之后

{p 16 25 2}
{cmd:lassocoef} {cmd:(.,} {opt for(varspec))}
[{cmd:,} {help lassocoef##options:{it:选项}}]

{phang2}
在 {cmd:xpo} 不带 {cmd:resample} 的情况下

{p 16 25 2}
{cmd:lassocoef} {cmd:(.,} {opt for(varspec)} {opt xfold(#)}{cmd:)}
[{cmd:,} {help lassocoef##options:{it:选项}}]

{phang2}
在 {cmd:xpo} 带 {cmd:resample} 的情况下

{p 16 25 2}
{cmd:lassocoef} {cmd:(.,} {opt for(varspec)} {opt xfold(#)}
{opt resample(#)}{cmd:)}
[{cmd:,} {help lassocoef##options:{it:选项}}]


{pstd}
对于多个存储的估计结果

{p 8 17 2}
{cmd:lassocoef}
[{it:estspec1} [{it:estspec2} ...]]
[{cmd:,} {help lassocoef##options:{it:选项}}]

{phang2}
{it:estspec} 对于 {cmd:lasso}、{cmd:sqrtlasso} 和 {cmd:elasticnet} 是

{pmore2}
{it:name}

{phang2}
{it:estspec} 对于 {cmd:ds} 和 {cmd:po} 模型是 

{pmore2}
{cmd:(}{it:name}{cmd:,} {opt for(varspec)}{cmd:)}

{phang2}
{it:estspec} 对于 {cmd:xpo} 不带 {cmd:resample} 是

{pmore2}
{cmd:(}{it:name}{cmd:,} {opt for(varspec)} {opt xfold(#)}{cmd:)}

{phang2}
{it:estspec} 对于 {cmd:xpo} 带 {cmd:resample} 是

{pmore2}
{cmd:(}{it:name}{cmd:,} {opt for(varspec)} {opt xfold(#)} {opt resample(#)}{cmd:)}


{phang2}
{it:name} 是一个 {help estimates_store_zh:存储估计结果} 的名字。
可以什么都不填或者填一个句点 ({cmd:.}) 来指定当前
估计结果。 {cmd:_all} 或 {cmd:*} 可以用来指定所有存储的
估计结果，当所有存储的结果都是 {cmd:lasso}、{cmd:sqrtlasso}，
或 {cmd:elasticnet} 时。

{phang2}
{it:varspec} 是一个 {varname}，除了在 {cmd:poivregress} 和
{cmd:xpoivregress} 之后，它是 {it:varname} 或
{mansection LASSO lassoinfoRemarksandexamplespred_varname:{bf:pred(}{it:varname}{bf:)}}。


{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:选项}
{synopt :{cmdab:di:splay(x)}}显示选中的变量，带有 {cmd:x}；默认值{p_end}
{synopt :{cmdab:di:splay(u)}}同 {cmd:display(x)}，但未被选中的变量会显示 {cmd:u}{p_end}
{synopt :{cmdab:di:splay(coef} [{cmd:,} {it:coef_di_opts}]{cmd:)}}显示系数值{p_end}
{synopt :{cmd:sort(none)}}按原始指定的顺序排列变量；默认值{p_end}
{synopt :{cmd:sort(names)}}按变量名称排序{p_end}
{synopt :{cmd:sort(coef} [{cmd:,} {it:coef_sort_opts}]{cmd:)}}按系数的绝对值降序排列{p_end}

{synopt :{cmdab:nofvlab:el}}显示因子变量的水平值而非值标签{p_end}
{synopt :{cmdab:noleg:end}}报告或抑制表格图例{p_end}
{synopt :{cmd:nolstretch}}不拉伸表格宽度以适应长变量名{p_end}
{synoptline}
{p 4 6 2}
{cmd:nofvlabel}、{cmd:nolegend} 和 {cmd:nolstretch} 不会 
出现在对话框中。


{synoptset 35}{...}
{synopthdr:coef_di_opts}
{synoptline}
{synopt :{cmdab:stand:ardized}}显示标准化变量的惩罚系数；默认值{p_end}
{synopt :{cmdab:pen:alized}}显示未标准化变量的惩罚系数{p_end}
{synopt :{cmdab:post:selection}}显示未标准化变量的后选择系数{p_end}
{synopt :{cmd:eform}}以指数形式显示系数而非系数 b{p_end}
{synopt :{opth f:ormat(%fmt)}}使用数值格式 {cmd:%}{it:fmt} 显示系数值{p_end}
{synoptline}


{synoptset 35}{...}
{synopthdr:coef_sort_opts}
{synoptline}
{synopt :{opt stand:ardized}}按标准化变量的惩罚系数排序{p_end}
{synopt :{opt pen:alized}}按未标准化变量的惩罚系数排序{p_end}
{synopt :{opt post:selection}}按未标准化变量的后选择系数排序{p_end}
{synoptline}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:lassocoef} 显示一个表格，显示一个或多个 Lasso 估计结果后的选定变量。
它还可以显示系数估计值。
当用于来自两个或多个 Lasso 的存储结果时，它可以用于查看选定变量集之间的重叠。

{pstd}
在 {cmd:ds}、{cmd:po} 和 {cmd:xpo} 命令之后，
{cmd:lassocoef} 可以用来查看单个 Lasso 或多个 Lasso 的系数并并排显示。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection LASSO lassocoefQuickstart:快速入门}

        {mansection LASSO lassocoefRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:选项}

{phang}
{opt display(displayspec)} 指定在表格中显示的内容。 默认值是 {cmd:display(x)}。

{pmore}
表格中的空单元表示相应变量未被 Lasso 选择或未在模型中指定。

{pmore}
对于某些没有拟合值的变量，表中将报告一个表示遗漏原因的代码。

{pmore}
因子和交互作用的空级别用字母 {cmd:e} 编码。

{pmore}
因子和交互作用的基础等级用字母 {cmd:b} 编码。
基础等级可以在 {it:alwaysvars}（始终包含在 Lasso 中的变量）上设置，但不能在 {it:othervars}（Lasso 选择的变量集）上设置。

{pmore}
由于共线性而被省略的变量用字母 {cmd:o} 编码。
Lasso 不会将 {it:othervars} 标记为由于共线性而被省略。
共线性变量只是未被选择。 {it:alwaysvars} 中的变量可能因共线性被省略。
请参见 {mansection LASSO CollinearcovariatesRemarksandexamplesalways_collinear:{it:备注和示例}} 在
{bf:[LASSO] 共线性协变量}。

{phang2}
{cmd:display(x)} 在表格中显示一个 {cmd:x} 当变量被
Lasso 选择时；即，它有一个非零系数。

{phang2}
{cmd:display(u)}
与 {cmd:display(x)} 相同，但当变量未在模型中指定时，
显示 {cmd:u}（表示不可用）而不是空单元格。

{phang2}
{cmd:display(coef} [{cmd:, standardized penalized postselection eform}
{opth format(%fmt)}]{cmd:)} 指定在表格中显示系数值。

{phang3}
{cmd:standardized} 指定显示标准化变量的惩罚系数。当
{cmd:display(coef)} 未指定选项时，这是默认情况下的设置。
标准化变量的惩罚系数是用于 Lasso 惩罚估计的系数值。请参见
{mansection LASSO lassoMethodsandformulas:{it:方法和公式}} 在
{bf:[LASSO] Lasso}。

{phang3}
{cmd:penalized} 指定显示未标准化变量的惩罚系数。未标准化变量的惩罚系数是
已去除标准化的标准化变量的惩罚系数。

{phang3}
{cmd:postselection} 指定显示未标准化变量的后选择系数。未标准化变量的后选择系数是通过使用被选定变量进行拟合一个普通模型 ({cmd:regress} 适用于 {cmd:lasso} {cmd:linear}, {cmd:logit} 适用于 {cmd:lasso} {cmd:logit}, {cmd:probit} 适用于 {cmd:lasso} {cmd:probit}, 和 {cmd:poisson} 适用于 {cmd:lasso} {cmd:poisson}) 获得的。请参见
{mansection LASSO lassoMethodsandformulas:{it:方法和公式}} 在
{bf:[LASSO] Lasso}。

{phang3} {cmd:eform} 以指数形式显示系数。对于每个
系数，显示 exp(b) 而非 b。此选项可用于在适当的估计命令之后显示赔率比或发生率比。

{phang3}
{opth format(%fmt)} 指定表中系数的显示格式。 默认值为 {cmd:format(%9.0g)}。

{phang} {opt sort(sortspec)} 指定表的行按 {it:sortspec} 指定的顺序排列。

{phang2}
{cmd:sort(none)}
指定表的行按变量在模型中的指定顺序排列。这是默认值。

{phang2}
{cmd:sort(names)} 按协变量的变量名称字母顺序排列行。在因子变量的情况下，主效应和非因子变量首先以字母顺序显示。然后，所有二项交互项按字母顺序显示，其次是所有三项交互项，以此类推。

{phang2}
{cmd:sort(coef} [{cmd:, standardized penalized postselection}]{cmd:)} 按系数的绝对值降序排列行。当显示来自两个或多个估计结果的结果时，结果首先按照第一个估计结果的顺序进行排序，代表第一估计结果中不包含的系数的行在最后。在代表不在第一估计结果中的系数的行中，行按第二个估计结果的顺序进行排序，代表不在第一或第二估计结果中的系数的行在最后。依此类推。

{phang3}
{cmd:standardized} 按标准化变量的惩罚系数的绝对值降序排列行。这是默认情况下当 {cmd:sort(coef)} 未指定选项时的设置。

{phang3}
{cmd:penalized} 按未标准化变量的惩罚系数的绝对值降序排列行。

{phang3}
{cmd:postselection} 按未标准化变量的后选择系数的绝对值降序排列行。

{phang}
{cmd:nofvlabel} 显示因子变量的数值水平而非附加值标签。此选项会覆盖 {cmd:fvlabel} 设置。请参见
{manhelp set_showbaselevels R:set showbaselevels}。

{phang}
{cmd:nolegend}
指定不显示表底部的图例。 默认情况下，图例是显示的。

{phang}
{cmd:nolstretch} 指定表格的宽度不自动扩展以适应长变量名。当指定 {cmd:nolstretch} 时，名称会缩写，使表的宽度不超过 79 个字符。 默认情况 {cmd:lstretch} 是自动扩展表格到结果窗口的宽度。要更改默认值，使用
{help set_zh:set lstretch off}。

{phang}
在 {cmd:ds}、{cmd:po} 和 {cmd:xpo} 之后 {it:estspec} 的必需选项：

{phang2}
{opt for(varspec)} 指定在使用选项 {cmd:selection(cv)} 或
{cmd:selection(adaptive)} 拟合的 {cmd:ds}、{cmd:po} 或 {cmd:xpo} 估计命令后的特定 Lasso。对于除了 {cmd:poivregress} 和 {cmd:xpoivregress} 以外的所有命令，{it:varspec} 始终为 {varname}；它要么是 {it:depvar}，依赖变量，要么是进行推断的 {it:varsofinterest} 中之一。

{pmore2} 
对于 {cmd:poivregress} 和 {cmd:xpoivregress}，{it:varspec} 是 {it:varname} 或 {opt pred(varname)}。依赖变量的 Lasso 使用其 {it:varname} 指定。每一个内生变量有两个 Lasso，由 {it:varname} 和 {opt pred(varname)} 指定。在每个感兴趣的外生变量中，仅有一个 Lasso，它由 {opt pred(varname)} 指定。

{pmore2} 
在 {cmd:ds}、{cmd:po} 和 {cmd:xpo} 命令后，此选项是必需的。

{phang2}
{opt xfold(#)} 指定在 {cmd:xpo} 估计命令后的特定 Lasso。对于每个要使用 Lasso 拟合的变量，K 个 Lasso 是在每个交叉拟合折叠中进行的，其中 K 是折叠数量。此选项指定哪个折叠，{it:#} = 1, 2, ..., K。此选项在 {cmd:xpo} 命令后是必需的。

{phang2}
{opt resample(#)} 指定在使用选项 {opt resample(#)} 拟合的 {cmd:xpo} 估计命令后的特定 Lasso。对于每个要通过 Lasso 拟合的变量，R x K 个 Lasso 是进行的，其中 R 是重抽样数量，K 是交叉拟合折叠的数量。此选项指定哪个重抽样，其中 {it:#} = 1, 2, ..., R。此选项与 {opt xfold(#)} 一起在带有重抽样的 {cmd:xpo} 命令后是必需的。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. set seed 1234}{p_end}
{phang2}{cmd:. lasso linear mpg i.foreign i.rep78 headroom weight turn}
      {cmd:gear_ratio price trunk length displacement}

{pstd}显示所选变量{p_end}
{phang2}{cmd:. lassocoef}

{pstd}显示后选择系数的值{p_end}
{phang2}{cmd:. lassocoef, display(coef, postselection)}

{pstd}按其绝对值降序显示标准化变量的惩罚系数{p_end}
{phang2}{cmd:. lassocoef, display(coef, standardized) sort(coef, standardized)}

{pstd}设置{p_end}
{phang2}{cmd:. lasso linear mpg i.foreign i.rep78 headroom weight turn}
   {cmd:gear_ratio price trunk length displacement, rseed(1234)}{p_end}
{phang2}{cmd:. estimates store lassocv}{p_end}
{phang2}{cmd:. lasso linear mpg i.foreign i.rep78 headroom weight turn}
   {cmd:gear_ratio price trunk length displacement, selection(adaptive)}
   {cmd:rseed(1234)}{p_end}
{phang2}{cmd:. estimates store lassoadapt}

{pstd}比较所选系数{p_end}
{phang2}{cmd:. lassocoef lassocv lassoadapt}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse breathe, clear}{p_end}
{phang2}{cmd:. xporegress react no2_class no2_home,}
    {cmd:controls(i.(meducation overweight msmoke sex) noise sev* age)}

{pstd}比较前两个交叉拟合折叠中 {cmd:no2_class} 的 Lasso 所选变量{p_end}
{phang2}{cmd:. lassocoef (., for(no2_class) xfold(1)) (., for(no2_class) xfold(2))}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:lassocoef} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(names)}}使用的结果名字{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(coef)}}矩阵 M: n x m{break}
M[i, j] = 第 i 个模型的 j 个系数估计；i = 1, ..., n；
j = 1, ..., m{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lassocoef.sthlp>}