{smcl}
{* *! version 1.0.0  27feb2019}{...}
{viewerdialog ciwidth "dialog ciwidth_dlg"}{...}
{vieweralsosee "[PSS-3] ciwidth" "mansection PSS-3 ciwidth"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-3] 介绍 (ciwidth)" "mansection PSS-3 Intro(ciwidth)"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-5] 术语表" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ci" "help ci_zh"}{...}
{viewerjumpto "语法" "ciwidth_zh##syntax"}{...}
{viewerjumpto "菜单" "ciwidth_zh##menu"}{...}
{viewerjump "描述" "ciwidth##description"}{...}
{viewerjumpto "PDF 文档链接" "ciwidth_zh##linkspdf"}{...}
{viewerjumpto "选项" "ciwidth_zh##options"}{...}
{viewerjumpto "示例" "ciwidth_zh##examples"}{...}
{viewerjumpto "存储结果" "ciwidth_zh##results"}
{help ciwidth:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[PSS-3] ciwidth} {hline 2}}用于置信区间的精度和样本量分析{p_end}
{p2col:}({mansection PSS-3 ciwidth:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
计算样本量

{p 8 16 2}
{cmd:ciwidth} {help ciwidth##method:{it:method}}
...{cmd:,}
{opth w:idth(numlist)}
{opth probw:idth(numlist)}
[{help ciwidth##ciwidth_options:{it:ciwidth_options}}]


{pstd}
计算置信区间宽度

{p 8 16 2}
{opt ciwidth} {help ciwidth##method:{it:method}}
...{cmd:,}
{opth probw:idth(numlist)}
{opth n(numlist)}
[{help ciwidth##ciwidth_options:{it:ciwidth_options}}]


{pstd}
计算置信区间宽度的概率

{p 8 16 2}
{opt ciwidth} {help ciwidth##method:{it:method}}
...{cmd:,}
{opth w:idth(numlist)}
{opth n(numlist)}
[{help ciwidth##ciwidth_options:{it:ciwidth_options}}]


{marker method}{...}
{synoptset 30 tabbed}{...}
{synopthdr :method}
{synoptline}
{syntab:单个样本}
{synopt :{helpb ciwidth onemean:onemean}}一个均值的置信区间{p_end}
{synopt :{helpb ciwidth onevariance:{ul:onevar}iance}}一个方差的置信区间{p_end}

{syntab:两个独立样本}
{synopt :{helpb ciwidth twomeans:twomeans}}比较两个独立样本的均值的置信区间{p_end}

{syntab:两个配对样本}
{synopt :{helpb ciwidth pairedmeans:{ul:pairedm}eans}}比较两个配对样本的均值的置信区间{p_end}

{syntab:用户定义的方法}
{synopt :{help ciwidth usermethod:{it:usermethod}}}将你自己的方法添加到 {cmd:ciwidth}{p_end}
{synoptline}

{marker ciwidth_options}{...}
{synopthdr :ciwidth_options}
{synoptline}
{syntab:主要}
INCLUDE help ciw_ciopts
INCLUDE help ciw_nnumopts
INCLUDE help ciw_nfracopt
INCLUDE help ciw_sideopts

INCLUDE help ciw_tableopts

INCLUDE help ciw_graphopts

INCLUDE help ciw_iteropts
{synoptline}
INCLUDE help pss_numlist
{p 4 6 2}选项 {cmd:n1()}、{cmd:n2()}、{cmd:nratio()} 和 {cmd:compute()} 仅适用于两个独立样本的方法。{p_end}
{p 4 6 2}迭代选项仅适用于需要迭代的计算。{p_end}
{p 4 6 2}{cmd:notitle} 在对话框中不显示。{p_end}


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:ciwidth} 命令执行置信区间的精度和样本量分析 (PrSS)。你可以在给定置信区间宽度（或精度）和置信区间宽度的概率的情况下计算样本量。或者，你可以在给定样本量和置信区间宽度的概率的情况下计算置信区间宽度。你还可以在给定样本量和置信区间宽度的情况下计算置信区间宽度的概率。你可以将结果以表格形式显示 ({help ciwidth_opttable_zh:[PSS-3] ciwidth, table}) 和图形形式 ({help ciwidth_optgraph_zh:[PSS-3] ciwidth, graph})。

{pstd}
有关假设检验的效能和样本量分析，请参见 {manhelp power PSS-2}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection PSS-3 ciwidthRemarksandexamples:备注和示例}

        {mansection PSS-3 ciwidthMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{marker mainopts}{...}
{dlgtab:主要}

{phang}
{opth level(numlist)} 指定置信水平，以百分比表示，适用于置信区间。默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置。如果指定了 {cmd:alpha()}，则此值设置为 100(1-{cmd:alpha()})。只能指定 {cmd:level()} 或 {cmd:alpha()} 之一。

{phang}
{opth alpha(numlist)} 设置显著性水平。只能指定 {cmd:level()} 或 {cmd:alpha()} 之一。

{phang}
{opth probwidth(numlist)} 指定获得宽度不超过目标置信区间宽度的置信区间的概率。目标置信区间宽度要么由命令计算，要么在选项 {cmd:width()} 中指定。此选项是计算样本量和置信区间宽度所必需的。

{phang} 
{opth width(numlist)} 指定目标置信区间宽度，表示置信区间的精度。此选项是计算样本量和置信区间宽度所必需的。对于双侧置信区间，置信区间宽度是上下限之间的距离。对于单侧置信区间，它是从限值到感兴趣参数估计值（例如样本均值）之间的距离。

INCLUDE help ciw_twosamplesdes

{pmore}
另请参见 {mansection PSS-4 UnbalanceddesignsRemarksandexamplesFractionalsamplesizes:{it:Fractional sample sizes}} 中对于两个样本置信区间的选项 {cmd:n()}、{cmd:n1()}、{cmd:n2()}、{cmd:nratio()} 和 {cmd:nfractional} 的描述及用法，这段描述在 {bf:[PSS] 不平衡设计} 中。

{phang}
{opt lower} 指定一个下限单侧置信区间，且不能与选项 {opt upper} 一起使用。默认是双侧置信区间。

{phang}
{opt upper} 指定一个上限单侧置信区间，且不能与选项 {opt lower} 一起使用。默认是双侧置信区间。

{phang}
{opt onesided} 是 {opt upper} 的同义词，指定一个上限单侧置信区间。

INCLUDE help ciw_paralleloptdes

{dlgtab:表}

{phang}
{opt notable}、{opt table} 和 {opt table()} 控制结果是否以表格格式显示。如果任何数值列表包含多个元素，则隐含 {opt table}。如果指定了 {opt graph} 或 {opt graph()} 选项，则隐含 {opt notable}。{opt table()} 用于生成自定义表格。有关详细信息，请参见 {helpb ciwidth table:[PSS-3] ciwidth, table}。

{phang}
{cmd:saving(}{it:{help filename_zh}} [{cmd:, replace}]{cmd:)} 创建一个包含表格值的 Stata 数据文件（{cmd:.dta} 文件），其变量名称与显示的 {help ciwidth table##column:{it:columns}} 相对应。如果 {it:filename} 已存在，则 {cmd:replace} 指明覆盖。{cmd:saving()} 仅在表格输出适用。
{p_end}

{dlgtab:图形}

{phang}
{opt graph} 和 {opt graph()} 产生图形输出；有关详细信息，请参见 {help ciwidth_optgraph_zh:[PSS-3] ciwidth, graph}。

{pstd}
以下选项控制由 {cmd:ciwidth} 命令用于求解非线性方程的迭代过程。

INCLUDE help ciw_initoptdes

{phang}
{opt iterate(#)} 指定牛顿法的最大迭代次数。默认值为 {cmd:iterate(500)}。

{phang}
{opt tolerance(#)} 指定用于判断连续参数估计是否已收敛的容忍度。默认值为 {cmd:tolerance(1e-12)}。有关详细信息，请参见 {mansection M-5 solvenl()RemarksandexamplesConvergencecriteria:{it:Convergence criteria}} 中的 {bf:[M-5] solvenl()}。

{phang}
{opt ftolerance(#)} 指定用于判断非线性方程拟合解是否足够接近于 0 的容忍度，这个判断基于平方的欧几里得距离。默认值为 {cmd:ftolerance(1e-12)}。有关详细信息，请参见 {mansection M-5 solvenl()RemarksandexamplesConvergencecriteria:{it:Convergence criteria}} 中的 {bf:[M-5] solvenl()}。

{phang}
{opt log} 和 {opt nolog} 指定是否显示迭代日志。迭代日志默认是抑制的。只能指定 {opt log}、{opt nolog}、{opt dots} 或 {opt nodots} 之一。

{phang}
{opt dots} 和 {opt nodots} 指定是否为每次迭代显示一个点。迭代点默认是抑制的。只能指定 {opt dots}、{opt nodots}、{opt log} 或 {opt nolog} 之一。

{pstd}
以下选项适用于 {cmd:ciwidth} 但不显示在对话框中：

{phang}
{cmd:notitle} 防止命令标题显示。


{marker examples}{...}
{title:示例}

    {title:示例：单均值置信区间}

{pstd}
    计算一个双侧 95% 置信区间所需的样本量（默认值），假设置信区间宽度为 6，标准差为 8，并且未来研究中有 90% 的概率置信区间宽度不会超过 6{p_end}
{phang2}{cmd:. ciwidth onemean, width(6) probwidth(0.9) sd(8)}

{pstd}
    计算上一示例中给定参数的置信区间宽度，假设样本量为 80{p_end}
{phang2}{cmd:. ciwidth onemean, n(80) probwidth(0.9) sd(8)}

{pstd}
    与上述相同，但以表格形式报告输出{p_end}
{phang2}{cmd:. ciwidth onemean, n(80) probwidth(0.9) sd(8) table}

{pstd}
   产生一个表，显示在 90% 的概率下，假设标准差为 8，获得宽度为 6、8 和 10 的置信区间所需的样本量{p_end}
{phang2}{cmd:. ciwidth onemean, width(6 8 10) probwidth(0.9) sd(8)}

{pstd}
    计算一个上限单侧 99% 置信区间所需的样本量{p_end}
{phang2}{cmd:. ciwidth onemean, width(6) probwidth(0.9) sd(8) upper level(99)}


    {title:示例：两均值差异置信区间}

{pstd}
    计算两个均值之间差异的双侧 95% 置信区间所需的总样本量（默认值），要求其宽度不超过 8，且具有 90% 的概率；假设两组的标准差均为 4{p_end}
{phang2}{cmd:. ciwidth twomeans, width(6) probwidth(0.9) sd(4)}

{pstd}
    与上述相同，但指定实验组的观察值将是对照组的两倍{p_end}
{phang2}{cmd:. ciwidth twomeans, width(6) probwidth(0.9) sd(4) nratio(2)}

{pstd}
    与上述相同，但允许使用分数样本量{p_end}
{phang2}{cmd:. ciwidth twomeans, width(6) probwidth(0.9) sd(4)}
       {cmd:nratio(2) nfractional}

{pstd}
    计算总样本量，假设对照组的标准差已知为 4，实验组的标准差已知为 5{p_end}
{phang2}{cmd:. ciwidth twomeans, width(6) sd1(4) sd2(5) knownsds}


    {title:示例：表格输出}

{pstd}
    以表格显示结果{p_end}
{phang2}{cmd:. ciwidth onemean, n(80) width(4) sd(8) table}{p_end}
{phang2}{cmd:. ciwidth onemean, n(50(10)80) width(4) sd(8)}


    {title:示例：图形输出}

{pstd}
    以图形显示结果{p_end}
{phang2}{cmd:. ciwidth onemean, n(50(10)80) probwidth(0.9) sd(12) graph}{p_end}
{phang2}{cmd:. ciwidth onemean, n(50(10)80) probwidth(0.8 0.85 0.9) sd(12) graph}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:ciwidth} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:r(level)}}置信水平{p_end}
{synopt :{cmd:r(alpha)}}显著性水平{p_end}
{synopt :{cmd:r(N)}}总样本量{p_end}
{synopt :{cmd:r(N_a)}}实际样本量{p_end}
{synopt :{cmd:r(N1)}}对照组样本量{p_end}
{synopt :{cmd:r(N2)}}实验组样本量{p_end}
{synopt :{cmd:r(nratio)}}样本量比， {cmd:N2/N1}{p_end}
{synopt :{cmd:r(nratio_a)}}实际样本量比{p_end}
{synopt :{cmd:r(nfractional)}}如果指定了 {cmd:nfractional}，则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt :{cmd:r(onesided)}}如果是单侧置信区间，则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt :{cmd:r(Pr_width)}}置信区间宽度的概率{p_end}
{synopt :{cmd:r(Pr_width_a)}}实际置信区间宽度的概率（对于样本量确定，在 {cmd:probwidth()} 指定时）{p_end}
{synopt :{cmd:r(width)}}置信区间宽度{p_end}
{synopt :{cmd:r(width_a)}}实际置信区间宽度（用于某些方法的样本量确定）{p_end}
{synopt :{cmd:r(separator)}}表格中的分隔线之间的行数{p_end}
{synopt :{cmd:r(divider)}}如果请求在表中显示分隔符，则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt :{cmd:r(init)}}估计参数的初始值{p_end}
{synopt :{cmd:r(maxiter)}}最大迭代次数{p_end}
{synopt :{cmd:r(iter)}}执行的迭代次数{p_end}
{synopt :{cmd:r(tolerance)}}请求的参数容忍度{p_end}
{synopt :{cmd:r(deltax)}}最终参数容忍度{p_end}
{synopt :{cmd:r(ftolerance)}}请求的目标函数距离零的距离{p_end}
{synopt :{cmd:r(function)}}最终目标函数距离零的距离{p_end}
{synopt :{cmd:r(converged)}}如果迭代算法收敛，则为 {cmd:1}，否则为 {cmd:0}{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:r(type)}}{cmd:ci}{p_end}
{synopt :{cmd:r(method)}}指定的 {cmd:ciwidth} 方法的名称{p_end}
{synopt :{cmd:r(onesidedci)}}{cmd:upper} 或 {cmd:lower}（对于单侧置信区间）{p_end}
{synopt :{cmd:r(columns)}}表格列{p_end}
{synopt :{cmd:r(labels)}}表格列标签{p_end}
{synopt :{cmd:r(widths)}}表格列宽{p_end}
{synopt :{cmd:r(formats)}}表格列格式{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt :{cmd:r(pss_table)}}结果表{p_end}
{p2colreset}{...}

{pstd}
另请参见方法特定手册条目中的 {it:存储结果} 以获取完整的存储结果列表。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ciwidth.sthlp>}