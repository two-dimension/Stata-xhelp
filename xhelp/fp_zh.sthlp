{smcl}
{* *! version 1.0.10  17may2019}{...}
{viewerdialog fp "dialog fp"}{...}
{viewerdialog "fp generate" "dialog fp_generate"}{...}
{vieweralsosee "[R] fp" "mansection R fp"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] fp postestimation" "help fp postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] mfp" "help mfp_zh"}{...}
{viewerjumpto "语法" "fp_zh##syntax"}{...}
{viewerjumpto "菜单" "fp_zh##menu"}{...}
{viewerjumpto "描述" "fp_zh##description"}{...}
{viewerjumpto "PDF文档链接" "fp_zh##linkspdf"}{...}
{viewerjumpto "fp选项" "fp_zh##options_fp"}{...}
{viewerjumpto "fp生成选项" "fp_zh##options_fp_gen"}{...}
{viewerjumpto "示例" "fp_zh##examples"}{...}
{viewerjumpto "存储结果" "fp_zh##results"}
{help fp:English Version}
{hline}{...}
{p2colset 1 11 14 2}{...}
{p2col:{bf:[R] fp} {hline 2}}分数多项式回归{p_end}
{p2col:}({mansection R fp:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 4 2}
估计

{p 8 16 2}
{cmd:fp} {cmd:<}{it:term}{cmd:>} 
[{cmd:,} 
{it:{help fp##est_options:est_options}}]{cmd::}
{it:{help fp##est_cmd:est_cmd}} 

{marker est_cmd}{...}
{p 12 12 2}
{it:est_cmd} 可以是几乎任何存储 {cmd:e(ll)} 结果的估计命令。要确认 {cmd:fp} 是否适用于特定 {it:est_cmd}，请查看该 {it:est_cmd} 的文档。

{p 12 12 2}
在 {it:est_cmd} 中出现的 {cmd:<}{it:term}{cmd:>}（带尖括号）的实例将在 {it:est_cmd} 中被替换为包含变量 {it:term} 的分数幂的变量列表。这些变量将命名为 {it:term}{cmd:_1}、{it:term}{cmd:_2}、….

{p 12 12 2}
{cmd:fp} 通过此替换执行 {it:est_cmd}，对 {it:term} 进行分数多项式回归。

{p 12 12 2}
此语法或以下语法中的 {it:est_cmd} 不能包含其他前缀命令；请参见 {help prefix_zh}。


{p 4 4 2}
估计（备用语法）

{p 8 16 2}
{cmd:fp} {cmd:<}{it:term}{cmd:>(}{varname}{cmd:)} [{cmd:,}
{it:{help fp##est_options:est_options}}]{cmd::}
{it:{help fp##est_cmd:est_cmd}}

{p 12 12 2}
使用此语法指定要计算 {it:varname} 的分数幂。分数多项式幂变量仍将命名为 {it:term}{cmd:_1}、{it:term}{cmd:_2}、…。


{p 4 4 2}
重播估计结果

{p 8 16 2}
{cmd:fp} [{cmd:,}
{it:{help fp##replay_options:replay_options}}]


{p 4 4 2}
创建指定的分数多项式幂变量

{p 8 27 2}
{cmd:fp} {opt gen:erate} 
{dtype} 
[{newvar} {cmd:=}]
{varname}{cmd:^}{cmd:(}{it:numlist}{cmd:)} 
{ifin}
[{cmd:,} {it:{help fp##gen_options:gen_options}}]


{marker est_options}{...}
{synoptset 20 tabbed}{...}
{synopthdr:est_options}
{synoptline}
{syntab:主要}

{syntab:{it:搜索}}
{synopt :{opt pow:ers(# # ... #)}}{...}
   要搜索的幂；默认值为 {cmd:powers(-2 -1 -.5 0 .5 1 2 3)}{p_end}
{synopt :{opt dim:ension(#)}}{...}
   最大的分数多项式度数；默认值为 {cmd:dimension(2)}{p_end}

{syntab:{it:或指定}}
{synopt :{opt fp(# # ... #)}}{...}
   使用指定的分数多项式

{syntab:{it:然后指定这些选项中的任何一个}}

{syntab:选项}
{synopt :{opt classic}}{...}
   执行自动缩放和中心化，并省略比较表{p_end}
{synopt :{opt replace}}{...}
   替换名为 {it:term}{cmd:_1}、{it:term}{cmd:_2}、… 的现有分数多项式幂变量{p_end}
{synopt :{opt all}}{...}
   在所有观察中生成 {it:term}{cmd:_1}、{it:term}{cmd:_2}、…；默认是在观察 {cmd:if} {cmd:esample()}{p_end}
{synopt :{opt scal:e(#_a #_b)}}{...}
   使用({it:term}+{it:a})/{it:b}；默认使用变量 term 作为{p_end}
{synopt :{opt scal:e}}{...}
   自动指定 {it:a} 和 {it:b}{p_end}
{synopt :{opt cent:er(#_c)}}{...}
   报告集中在 {it:c} 上的结果；默认是未中心化结果{p_end}
{synopt :{opt cent:er}}{...}
   指定 {it:c} 为 (缩放的) {it:term} 的均值{p_end}
{synopt :{opt zero}}{...}
   如果 (缩放的) {it:term} <=0，则将 {it:term}{cmd:_1}、{it:term}{cmd:_2}、… 设为零；默认情况下将发出错误消息{p_end}
{synopt :{opt catz:ero}}{...}
   与 {cmd:zero} 相同，并在分数多项式幂变量中包括 {it:term}{cmd:_0}=({it:term}<=0){p_end}

{syntab:报告}
{synopt :{it:replay_options}}{...}
   指定如何显示结果{p_end}
{synoptline}
{p2colreset}{...}


{marker replay_options}{...}
{synoptset 20 tabbed}{...}
{synopthdr:replay_options}
{synoptline}
{syntab:报告}
{synopt :{opt nocompare}}{...}
   不显示模型比较测试结果{p_end}
{synopt:{it:reporting_options}}
   重播估计结果时 {it:est_cmd} 允许的任何选项{p_end}
{synoptline}


{marker gen_options}{...}
{synoptset 20 tabbed}{...}
{synopthdr:gen_options}
{synoptline}
{syntab:主要}
{synopt :{opt replace}}{...}
   替换名为 {it:term}{cmd:_1}、{it:term}{cmd:_2}、… 的现有分数多项式幂变量{p_end}
{synopt :{opt scal:e(#_a #_b)}}{...}
   使用({it:term}+{it:a})/{it:b}；默认使用变量 term 作为{p_end}
{synopt :{opt scal:e}}{...}
   自动指定 {it:a} 和 {it:b}{p_end}
{synopt :{opt cent:er(#_c)}}{...}
   报告集中在 {it:c} 上的结果；默认是未中心化结果{p_end}
{synopt :{opt cent:er}}{...}
   指定 {it:c} 为 (缩放的) {it:term} 的均值{p_end}
{synopt :{opt zero}}{...}
   如果 (缩放的) {it:term} <=0，则将 {it:term}{cmd:_1}、{it:term}{cmd:_2}、… 设为零；默认情况下将发出错误消息{p_end}
{synopt :{opt catz:ero}}{...}
   与 {cmd:zero} 相同，并在分数多项式幂变量中包括 {it:term}{cmd:_0}=({it:term}<=0){p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

    {title:fp}

{phang2}
{bf:统计 > 线性模型及相关 > 分数多项式 >}
      {bf:分数多项式回归}

    {title:fp generate}

{phang2}
{bf:统计 > 线性模型及相关 > 分数多项式 >}
      {bf:创建分数多项式变量}


{marker description}{...}
{title:描述}

{pstd}
{opt fp} {cmd:<}{it:term}{cmd:>}{cmd::} {it:est_cmd} 拟合模型，使用“最佳”拟合的分数多项式替代 {cmd:<}{it:term}{cmd:>}，无论它在 {it:est_cmd} 中出现的位置。{cmd:fp <weight>: regress mpg <weight> foreign} 将拟合一个回归模型，{cmd:mpg} 在 {cmd:weight} 和（线性） {cmd:foreign} 上的分数多项式。

{pstd}
通过指定选项 {cmd:fp()}，可以设置要使用的确切幂。否则，将对所有可能的分数多项式进行搜索，最高度数由 {cmd:dimension()} 设置，幂由 {cmd:powers()} 设置。

{pstd}
不带参数的 {cmd:fp} 会重新显示之前的估计结果，就像输入 {it:est_cmd} 一样。你可以输入任何一个。{cmd:fp} 将包含分数多项式比较表。

{pstd}
{opt fp generate} 为给定的一组幂创建分数多项式幂变量。例如，{cmd:fp <weight>: regress mpg <weight> foreign} 可能会生成分数多项式 {cmd:weight}^(-2 -1)，并将 {cmd:weight}^(-2) 存储在 {cmd:weight_1} 中，将 {cmd:weight}^(-1) 存储在 {cmd:weight_2} 中。输入 {cmd:fp generate weight^(-2 -1)} 会允许你在另一个数据集中创建相同的变量。

{pstd}
有关多变量分数多项式模型，请参见 {help mfp_zh:[R] mfp}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R fpQuickstart:快速开始}

        {mansection R fpRemarksandexamples:备注和示例}

        {mansection R fpMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options_fp}{...}
{title:fp选项}

{dlgtab:模型}

{phang}
{opt powers(# # ... #)} 指定要执行搜索并提供搜索详细信息。{cmd:powers()} 与 {cmd:dimension()} 选项一起使用；见下文。默认值为 {cmd:powers(-2  -1 -.5 0 .5 1 2 3)}。

{phang}
{opt dimension(#)} 指定要搜索的最大分数多项式度数。默认值为 {cmd:dimension(2)}。

{pmore}
如果同时使用 {cmd:powers()} 和 {cmd:dimension()} 的默认值，则分数多项式可以是以下 44 种可能性之一：

            {it:term}^(-2)
            {it:term}^(-1)
	    .
	    .
            .
            {it:term}^(3)
            {it:term}^(-2), {it:term}^(-2)
            {it:term}^(-2), {it:term}^(-1)
            .
            .
            .
            {it:term}^(-2), {it:term}^(3)
            {it:term}^(-1), {it:term}^(-2)
            .
            .
            .
            {it:term}^(3), {it:term}^(3)
	    
{phang}
{opt fp(# # ... #)} 指定不执行搜索，并使用指定的分数多项式。{cmd:fp()} 是 {cmd:powers()} 和 {cmd:dimension()} 的替代选项。

{dlgtab:选项}

{phang}
{opt classic} 执行自动缩放和中心化，并省略比较表。指定 {opt classic} 相当于指定 {cmd:scale}、{cmd:center} 和 {cmd:nocompare}。

{phang}
{opt replace} 替换名为 {it:term}{cmd:_1}、{it:term}{cmd:_2}、… 的现有分数多项式幂变量。

{phang}
{opt all} 指定在数据集的所有观察中填入 {it:term}{cmd:_1}、{it:term}{cmd:_2}、…，而不仅仅是在 {cmd:e(sample)} 中的观察中。

{phang}
{opt scale(#_a #_b)} 指定以指定的方式缩放 {it:term}，即计算({it:term}+{it:a})/{it:b}。所有缩放项的值均需大于零，除非您指定选项 {cmd:zero} 或 {cmd:catzero}。值不应太大或太接近零，因为默认情况下将考虑三次幂和平方倒数幂。当指定 {opt scale(a b)} 时，变量 {it:term} 的值不会被修改；{cmd:fp} 仅在计算幂时记住缩放值。

{pmore}
您可能不会对自己创建的 {it:a} 和 {it:b} 的值使用 {opt scale(a b)}，尽管您可以。通常直接生成一个缩放变量更容易。例如，如果 {it:term} 是 {cmd:age}，而数据中的 {cmd:age} 必须大于或等于 20，您可能会生成一个 {cmd:age5} 变量，以用作 {it:term}：

		. {cmd:generate age5 = (age-19)/5}

{pmore}
{opt scale(a b)} 在您先前在一个数据集中使用自动缩放（选项 {cmd:scale}）拟合模型，并现在想在另一个数据集中创建分数多项式时非常有用。在第一个数据集中，带 {cmd:scale} 的 {cmd:fp} 为数据集添加了关于 {it:a} 和 {it:b} 值的 {cmd:notes}。您可以通过键入 

		. {cmd:notes} 

{pmore}
然后在第二个数据集中使用 {cmd:fp generate, scale(}{it:a b}{cmd:)}。

{pmore}
默认情况下，使用 {it:term} 计算分数幂；因此，必须保证 {it:term} 的值大于零，除非指定选项 {cmd:zero} 或 {cmd:catzero}。值不应过大，因为默认情况下，将考虑三次幂。

{marker scale}{...}
{phang}
{opt scale} 指定在计算分数幂时，{it:term} 应该大于零且不应过大。有关更多详细信息，请参见 {mansection R fpRemarksandexamplesScaling:{it:Scaling}} 下的 {it:备注} {bf:[R] fp}。当指定 {cmd:scale} 时，变量 {it:term} 的值不会被修改；{cmd:fp} 仅在计算幂时记住缩放值。

{phang}
{opt center(#_c)} 报告结果，分数多项式集中在（缩放的） {it:term} 上，中心点为 {it:c}。默认情况下，不执行中心化。

{pmore}
{it:term}^({it:p_1}, {it:p_2}, ..., {it:p_m})-{it:c}^({it:p_1}, {it:p_2}, ..., {it:p_m}) 的结果将被报告。这使得常数系数（截距）更易于解释。有关更多详细信息，请参见 {mansection R fpRemarksandexamplesCentering:{it:Centering}} 下的 {it:备注} {bf:[R] fp}。

{phang}
{opt center} 执行 {opt center(c)}，其中 {it:c} 为（缩放的） {it:term} 的均值。

{phang}
{opt zero} 和 {opt catzero} 指定如何处理 {it:term} 的非正值。默认情况下，不允许 {it:term} 的非正值，因为我们将计算 {it:term} 的自然对数和分数幂。因此，发出错误消息。

{phang2}
{opt zero} 将（缩放的） {it:term} 的非正值的分数多项式值设置为零。

{phang2}
{opt catzero} 将（缩放的） {it:term} 的非正值的分数多项式值设置为零，并包括一个指示处于模型中的（缩放的） {it:term} 非正值出现位置的虚拟变量。

{dlgtab:报告}

{phang}
{opt nocompare} 抑制比较测试的显示。

{phang}
{it:reporting_options} 是任何允许的选项，用于重播估计结果的 {it:est_cmd}。


{marker options_fp_gen}{...}
{title:fp generate 的选项}

{dlgtab:主要}

{phang}
{opt replace} 替换名为 {it:term}{cmd:_1}、{it:term}{cmd:_2}、… 的现有分数多项式幂变量。

{phang}
{opt scale(#_a #_b)} 指定以指定的方式缩放 {it:term}，即计算({it:term}+{it:a})/{it:b}。所有缩放项的值均需大于零，除非您指定选项 {cmd:zero} 或 {cmd:catzero}。值不应太大或太接近零，因为默认情况下将考虑三次幂和平方倒数幂。当 {opt scale(a b)} 被指定时，变量 {it:term} 的值不会被修改；{cmd:fp} 仅在计算幂时记住缩放值。

{pmore}
您可能不会对自己创建的 {it:a} 和 {it:b} 的值使用 {opt scale(a b)}，尽管您可以。通常直接生成一个缩放变量更容易。例如，如果 {it:term} 是 {cmd:age}，而数据中的 {cmd:age} 必须大于或等于 20，您可能会生成一个 {cmd:age5} 变量，以用作 {it:term}：

		. {cmd:generate age5 = (age-19)/5}

{pmore}
{opt scale(a b)} 在您先前在一个数据集中使用自动缩放（选项 {cmd:scale}）拟合模型，并现在想在另一个数据集中创建分数多项式时非常有用。在第一个数据集中，带 {cmd:scale} 的 {cmd:fp} 为数据集添加了关于 {it:a} 和 {it:b} 值的 {cmd:notes}。您可以通过键入 

		. {cmd:notes} 

{pmore}
然后在第二个数据集中使用 {cmd:fp generate, scale(}{it:a b}{cmd:)}。

{pmore}
默认情况下，使用 {it:term} 计算分数幂；因此，必须保证 {it:term} 的值大于零，除非指定选项 {cmd:zero} 或 {cmd:catzero}。值不应过大，因为默认情况下，将考虑三次幂。

{marker scale}{...}
{phang}
{opt scale} 指定在计算分数幂时，{it:term} 应该大于零且不应过大。有关更多详细信息，请参见 {mansection R fpRemarksandexamplesScaling:{it:Scaling}} 下的 {it:备注} {bf:[R] fp}。当 {cmd:scale} 被指定时，变量 {it:term} 的值不会被修改；{cmd:fp} 仅在计算幂时记住缩放值。

{phang}
{opt center(#_c)} 报告结果，分数多项式集中在（缩放的） {it:term} 上，中心点为 {it:c}。默认情况下，不执行中心化。

{pmore}
{it:term}^({it:p_1}, ..., {it:p_d})-{it:c}^({it:p_1}, ..., {it:p_d}) 的结果将被报告。这使得常数系数（截距）更易于解释。有关更多详细信息，请参见 {mansection R fpRemarksandexamplesCentering:{it:Centering}} 下的 {it:备注} {bf:[R] fp}。

{phang}
{opt center} 执行 {opt center(c)}，其中 {it:c} 为（缩放的） {it:term} 的均值。

{phang}
{opt zero} 和 {opt catzero} 指定如何处理 {it:term} 的非正值。默认情况下，不允许 {it:term} 的非正值，因为我们将计算 {it:term} 的自然对数和分数幂。因此，发出错误消息。

{phang2}
{opt zero} 将（缩放的） {it:term} 的非正值的分数多项式值设置为零。

{phang2}
{opt catzero} 将（缩放的） {it:term} 的非正值的分数多项式值设置为零，并包括一个指示处于模型中的（缩放的） {it:term} 非正值出现位置的虚拟变量。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse igg}{p_end}

{pstd}拟合最佳的二次分数多项式回归模型{p_end}
{phang2}{cmd:. fp <age>: regress sqrtigg <age>}{p_end}

{pstd}生成一个分数多项式幂变量，使用自动缩放和中心化{p_end}
{phang2}{cmd:. fp generate double age^(-2 2), center scale replace}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
除了 {it:est_cmd} 存储的结果外，{cmd:fp} 在 {cmd:e()} 中存储以下内容：

{synoptset 27 tabbed}{...}
{p2col 5 27 31 2: 标量}{p_end}
{synopt:{cmd:e(fp_dimension)}}分数多项式的度数{p_end}
{synopt:{cmd:e(fp_center_mean)}}用于中心化的值或 {cmd:.}{p_end}
{synopt:{cmd:e(fp_scale_a)}}用于缩放的值或 {cmd:.}{p_end}
{synopt:{cmd:e(fp_scale_b)}}用于缩放的值或 {cmd:.}{p_end}
{synopt:{cmd:e(fp_compare_df2)}}F检验中的分母自由度{p_end}
{p2colreset}{...}

{synoptset 27 tabbed}{...}
{p2col 5 27 31 2: 宏}{p_end}
{synopt:{cmd:e(fp_cmd)}}{cmd:fp, search():} 或 {cmd:fp, powers():}{p_end}
{synopt:{cmd:e(fp_cmdline)}}完整的 {cmd:fp} 命令{p_end}
{synopt:{cmd:e(fp_variable)}}分数多项式变量{p_end}
{synopt:{cmd:e(fp_terms)}}生成的 {cmd:fp} 变量{p_end}
{synopt:{cmd:e(fp_gen_cmdline)}}{cmd:fp generate} 命令以重新创建 {cmd:e(fp_terms)} 变量{p_end}
{synopt:{cmd:e(fp_catzero)}}{cmd:catzero}，如果指定{p_end}
{synopt:{cmd:e(fp_zero)}}{cmd:zero}，如果指定{p_end}
{synopt:{cmd:e(fp_compare_type)}}{cmd:F} 或 {cmd:chi2}{p_end}
{p2colreset}{...}

{synoptset 27 tabbed}{...}
{p2col 5 27 31 2: 矩阵}{p_end}
{synopt:{cmd:e(fp_fp)}}分数多项式中使用的幂{p_end}
{synopt:{cmd:e(fp_compare)}}模型比较的结果{p_end}
{synopt:{cmd:e(fp_compare_stat)}}F检验统计量{p_end}
{synopt:{cmd:e(fp_compare_df1)}}F检验的分子度数{p_end}
{synopt:{cmd:e(fp_compare_fp)}}比较模型的幂{p_end}
{synopt:{cmd:e(fp_compare_length)}}用于显示行标题的编码字符串{p_end}
{synopt:{cmd:e(fp_powers)}}搜索的幂{p_end}
{p2colreset}{...}

{pstd}
{cmd: fp generate} 在 {cmd:r()} 中存储以下内容：

{synoptset 27 tabbed}{...}
{p2col 5 27 31 2: 标量}{p_end}
{synopt:{cmd:r(fp_center_mean)}}用于中心化的值或 {cmd:.}{p_end}
{synopt:{cmd:r(fp_scale_a)}}用于缩放的值或 {cmd:.}{p_end}
{synopt:{cmd:r(fp_scale_b)}}用于缩放的值或 {cmd:.}{p_end}
{p2colreset}{...}

{synoptset 27 tabbed}{...}
{p2col 5 27 31 2: 宏}{p_end}
{synopt:{cmd:r(fp_cmdline)}}完整的 {cmd:fp generate} 命令{p_end}
{synopt:{cmd:r(fp_variable)}}分数多项式变量{p_end}
{synopt:{cmd:r(fp_terms)}}生成的 {cmd:fp} 变量{p_end}
{synopt:{cmd:r(fp_catzero)}}{cmd:catzero}，如果指定{p_end}
{synopt:{cmd:r(fp_zero)}}{cmd:zero}，如果指定{p_end}
{p2colreset}{...}

{synoptset 27 tabbed}{...}
{p2col 5 27 31 2: 矩阵}{p_end}
{synopt:{cmd:r(fp_fp)}}分数多项式中使用的幂{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fp.sthlp>}