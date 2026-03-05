{smcl}
{* *! version 2.4.3  19dec2012}{...}
{viewerdialog xtmixed "dialog xtmixed"}{...}
{vieweralsosee "[XT] xtmixed postestimation" "help xtmixed postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] estimation" "help mi estimation"}{...}
{vieweralsosee "[XT] xtgee" "help xtgee_zh"}{...}
{vieweralsosee "[XT] xtmelogit" "help xtmelogit_zh"}{...}
{vieweralsosee "[XT] xtmepoisson" "help xtmepoisson_zh"}{...}
{vieweralsosee "[XT] xtrc" "help xtrc_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{viewerjumpto "Syntax" "xtmixed_zh##syntax"}{...}
{viewerjumpto "Description" "xtmixed_zh##description"}{...}
{viewerjumpto "Options" "xtmixed_zh##options"}{...}
{viewerjumpto "Remarks" "xtmixed_zh##remarks"}{...}
{viewerjumpto "Examples" "xtmixed_zh##examples"}{...}
{viewerjumpto "Saved results" "xtmixed_zh##saved_results"}{...}
{viewerjumpto "Reference" "xtmixed_zh##reference"}
{help xtmixed:English Version}
{hline}{...}
{pstd}
{cmd:xtmixed} 已重命名为 {help mixed_zh}。尽管 {cmd:xtmixed} 仍然有效，但从 Stata 13 开始，它不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{hline}

{title:标题}

{p2colset 5 21 23 2}{...}
{synopt :{hi:[XT] xtmixed} {hline 2}}多层次混合效应线性回归
{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:xtmixed} {depvar} [{it:fe_equation}] [{cmd:||} {it:re_equation}] 
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help xtmixed##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法是

{p 12 24 2}
	[{indepvars}] {ifin} {weight} [{cmd:,} {it:{help xtmixed##fe_options:fe_options}}]

{p 4 4 2}
    而 {it:re_equation} 的语法如下之一：

{p 8 18 2}
	对于随机系数和截距

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} [{varlist}]
		[{cmd:,} {it:{help xtmixed##re_options:re_options}}]

{p 8 18 2}
	对于在因子变量值之间的随机效应

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} {cmd:R.}{varname}
		[{cmd:,} {it:{help xtmixed##re_options:re_options}}]

{p 4 4 2}
    {it:levelvar} 是识别随机效应分组结构的变量，或 {cmd:_all} 代表一个包含所有观察的组。{p_end}

{synoptset 23 tabbed}{...}
{marker fe_options}{...}
{synopthdr :fe_options}
{synoptline}
{syntab:模型}
{synopt :{opt noc:onstant}}从固定效应方程中抑制常数项{p_end}
{synoptline}

{marker re_options}{...}
{synopthdr :re_options}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(xtmixed##vartype:vartype)}}随机效应的方差-协方差结构{p_end}
{synopt :{opt noc:onstant}}从随机效应方程中抑制常数项{p_end}
{synopt :{opt col:linear}}保留共线型变量{p_end}
{synopt :{opth fw:eight(exp)}}在更高水平的频率权重{p_end}
{synopt :{opth pw:eight(exp)}}在更高水平的抽样权重{p_end}
{synoptline}

{synoptset 23}{...}
{marker vartype}{...}
{synopthdr :vartype}
{synoptline}
{synopt :{opt ind:ependent}}每个随机项一个方差参数，所有协方差为零；默认值，除非指定了因子变量{p_end}
{synopt :{opt ex:changeable}}随机效应的方差相同，并且有一个共同的成对协方差{p_end}
{synopt :{opt id:entity}}随机效应的方差相同，所有协方差为零；因子变量的默认值{p_end}
{synopt :{opt un:structured}}所有方差和协方差均被单独估计{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 23 tabbed}{...}
{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt:{opt ml:e}}通过最大似然拟合模型，默认{p_end}
{synopt:{opt reml}}通过限制最大似然拟合模型{p_end}
{synopt:{cmd: pwscale(}{it:{help xtmixed##scale_method:scale_method}}{cmd:)}}控制双层模型中抽样权重的缩放{p_end}
{synopt:{cmdab:res:iduals(}{it:{help xtmixed##rspec:rspec}}{cmd:)}}残差误差的结构{p_end}

{syntab:SE/稳健}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}, {cmdab:r:obust}，或 {cmdab:cl:uster} {it:clustvar}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值是 {cmd:level(95)}{p_end}
{synopt :{opt var:iance}}以方差和协方差方式显示随机效应参数估计{p_end}
{synopt :{opt noret:able}}抑制随机效应表{p_end}
{synopt :{opt nofet:able}}抑制固定效应表{p_end}
{synopt :{opt estm:etric}}以估计度量显示参数估计{p_end}
{synopt :{opt nohead:er}}抑制输出标题{p_end}
{synopt :{opt nogr:oup}}抑制总结组的表格{p_end}
{synopt :{opt nostd:err}}不估计随机效应参数的标准误{p_end}
{synopt :{opt nolr:test}}不进行与线性回归的 LR 测试{p_end}
{synopt :{it:{help xtmixed##display_options:display_options}}}控制列格式、行间距，以及省略变量和基变量及空单元的显示{p_end}

{syntab :EM 选项}
{synopt :{opt emiter:ate(#)}}EM 迭代次数，默认是 20{p_end}
{synopt :{opt emtol:erance(#)}}EM 收敛容忍度，默认是 1e-10{p_end}
{synopt :{opt emonly}}仅使用 EM 拟合模型{p_end}
{synopt :{opt emlog}}显示 EM 迭代日志{p_end}
{synopt :{opt emdot:s}}以点的形式显示 EM 迭代{p_end}

{syntab :最大化}
{synopt :{it:{help xtmixed##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}
{synopt :{opt matsqrt}}使用矩阵平方根参数化方差成分；默认值{p_end}
{synopt :{opt matlog}}使用矩阵对数参数化方差成分{p_end}

包含帮助 shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{p 4 6 2}{it:indepvars} 可能包含因子变量；见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}{it:depvar}、{it:indepvars} 和 {it:varlist} 可能包含 
         时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bootstrap}、{cmd:by}、{cmd:jackknife}、{cmd:mi estimate}、{cmd:rolling}，
         和 {cmd:statsby} 是被允许的；见 {help prefix_zh}.{p_end}
{p 4 6 2}{opt pweight}s 和 {opt fweight}s 是被允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 在对话框中不会出现。{p_end}
{p 4 6 2}请参见 {manhelp xtmixed_postestimation XT:xtmixed postestimation} 获取
估计后可用的功能。{p_end}


{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 多层次混合效应模型 >}
     {bf:混合效应线性回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtmixed} 拟合线性混合模型。混合模型的特点是包含固定效应和随机效应。固定效应类似于标准回归系数，并且被直接估计。随机效应不是直接估计的，而是根据其估计的方差和协方差进行总结。尽管随机效应不是直接估计的，您可以通过在 {cmd:xtmixed} 之后使用 {cmd:predict} 来形成它们的最佳线性无偏预测（BLUPs）及其标准误；见 {manhelp xtmixed_postestimation XT:xtmixed postestimation}。随机效应可以是随机截距或随机系数，数据的分组结构可以由多个嵌套组组成。因此，混合模型在文献中也被称为 {it:多层模型} 和 {it:层次线性模型}。线性混合模型的总体误差分布假设为高斯分布，并且可以建模最低层组内的异方差性和相关性。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}{opt noconstant} 抑制固定效应方程和所有随机效应方程中的常数（截距）项。

{phang}{opt covariance(vartype)}，其中 {it:vartype} 为

{phang3}
{cmd:independent}{c |}{cmd:exchangeable}{c |}{cmd:identity}{c |}{cmd:unstructured}

{pmore}
指定随机效应的协方差矩阵的结构，可以在每个随机效应方程中指定。{cmd:independent} 协方差结构允许每个随机效应在随机效应方程中具有独特的方差，并假设所有的协方差为零。{cmd:exchangeable} 协方差具有共同的方差和一个共同的成对协方差。{cmd:identity} 是“单位矩阵的多个倍数”的缩写；即，所有方差相等且所有协方差为零。{cmd:unstructured} 允许所有方差和协方差均被单独估计。如果一个方程包含 {it:p} 个随机效应项，则 {cmd:unstructured} 协方差矩阵将具有 {it:p}({it:p}+1)/2 个唯一参数。

{pmore}
{cmd:covariance(independent)} 是默认值，除非随机效应方程由因子变量指定 {cmd:R.}{varname}，在这种情况下 {cmd:covariance(identity)} 就是默认值，仅允许 {cmd:covariance(identity)} 和 {cmd:covariance(exchangeable)}。

{phang}{opt collinear} 指定 {cmd:xtmixed} 不从随机效应方程中省略共线性变量。通常没有理由保留共线性变量，实际上这样做通常会由于共线性引起的矩阵奇异性而导致估计失败。然而，对于某些模型（例如，具有一整套对比的随机效应模型），变量可能是共线性的，但由于随机效应的协方差结构的限制，模型被完全识别。在这种情况下，使用 {cmd:collinear} 选项可以保持随机效应方程的完整性并进行估计。

{phang}{cmd:fweight(}{it:exp}{cmd:)} 指定多层模型中高层次的频率权重，而第一层（观察层次）的频率权重按常规方式指定，例如 {cmd:[fw=}{it:fwtvar1}{cmd:]}. {it:exp} 可以是任何有效的 Stata 表达式，您可以在多层模型的第二层及更高层指定 {cmd:fweight()}。例如，在双层模型中

{p 12 12 4}{cmd:. xtmixed} {it:fixed_portion} {cmd:[fw= wt1]}
{cmd:|| school:} ... {cmd:, fweight(wt2)} ...{p_end}

{pmore}
变量 {cmd:wt1} 将保存第一层（观察层级）的频率权重，而 {cmd:wt2} 将保存第二层（学校层级）的频率权重。

{phang}{cmd:pweight(}{it:exp}{cmd:)} 指定多层模型中高层次的抽样权重，而第一层（观察层次）的抽样权重按常规方式指定，例如 {cmd:[pw=}{it:pwtvar1}{cmd:]}. {it:exp} 可以是任何有效的 Stata 表达式，您可以在多层模型的每个第二层及更高层指定 {cmd:pweight()}。例如，在双层模型中

{p 12 12 4}{cmd:. xtmixed} {it:fixed_portion} {cmd:[pw= wt1]}
{cmd:|| school:} ... {cmd:, pweight(wt2)} ...{p_end}

{pmore}
变量 {cmd:wt1} 将保存第一层（观察层次）的抽样权重，而 {cmd:wt2} 将保存第二层（学校层级）的抽样权重。

{pmore}
有关在多层模型中使用抽样权重的更多信息，请参见下面的 {help xtmixed##sampling:{it:使用抽样权重的备注}}。

{pmore}
无论是频率权重还是抽样权重，都不支持限制最大似然估计（REML）。

{phang}
{opt mle} 和 {opt reml} 指定拟合模型的统计方法。

{phang2}
{opt mle}，默认值，指定使用最大似然拟合模型。

{phang2}
{opt reml}，指定使用限制最大似然（REML）拟合模型，也称为残差最大似然。

{marker scale_method}{...}
{phang}
{cmd:pwscale(}{it:scale_method}{cmd:)}, 其中 {it:scale_method} 为

{p 16 20 2}
{cmd:size}{c |}{cmdab:eff:ective}{c |}{cmd:gk}

{phang2}
控制在双层模型中抽样权重（如果指定）如何缩放。有关使用 {cmd:pwscale()} 的更多细节，请参见 {it:调查数据} 下的 {it:备注} 中的 {bf:[XT] xtmixed}。

{phang3}
{it:scale_method} {cmd:size} 指定第一层（观察层次）权重被缩放以使其总和为其对应的第二层集群的样本量。第二层抽样权重不变。

{phang3}
{it:scale_method} {cmd:effective} 指定第一层权重被缩放以使其总和为其对应第二层集群的有效样本量。第二层抽样权重不变。

{phang3}
{it:scale_method} {cmd:gk} 指定 {help xtmixed##GK1996:Graubard and Korn (1996)} 方法。在这种方法下，第二层权重设置为第一和第二层权重乘积的集群平均值，然后第一层权重设置为1。

{phang2}
{cmd:pwcale()} 仅对双层模型支持。

{marker rspec}{...}
{phang}{opt residuals(rspec)}, 其中 {it:rspec} 为

{phang3}
{it:restype} [{cmd:,} {it:residual_options}]

{pmore}
指定最低层（第二层的多层模型，观察组成第一级别）组内的残差误差结构。例如，如果您对嵌套在学校内的班级建模随机效应，则 {cmd:residuals()} 指的是班级内观察的残差方差-协方差结构，班级是最低层组。

{pmore}
{it:restype} 是

{p 16 20 2}
{cmdab:ind:ependent}{c |}{cmdab:ex:changeable}{c |}{cmd:ar} {it:#}{c |}{cmd:ma} {it:#}{c |}{cmdab:un:structured}|{cmdab:ba:nded} {it:#}|{cmdab:to:eplitz} {it:#}|{cmdab:exp:onential}
      
{pmore2}
默认为 {it:restype} 是 {cmd:independent}，这意味着所有残差是 i.i.d. 网格状高斯分布，具有一个共同的方差。当与 {opth by(varname)} 组合使用时，仍然假设独立性，但您会为每个 {it:varname} 的每个级别估计独特的方差。与下面描述的结构不同，{it:varname} 不需要在组内保持不变。

{phang3}
{it:restype} {cmd:exchangeable} 估计两个参数，一个共同的组内方差和一个共同的成对协方差。当与 {opth by(varname)} 组合时，这两个参数在每个 {it:varname} 级别上被单独估计。由于您正在建模组内协方差，因此 {it:varname} 必须在最低层组内保持不变。

{phang3}
{it:restype} {cmd:ar} {it:#} 假设组内误差具有阶数为 {it:#} 的自回归（AR）结构；默认值为 {cmd:ar 1}。所需的 {opth t(varname)} 选项，其中 {it:varname} 是用于对观察进行排序和确定连续观察之间滞后的整数值时间变量。任何不连续的时间值将被视为缺口。对于此结构，估计 {it:#} + 1 个参数（{it:#} 个 AR 系数和一个整体误差方差）。{it:restype} {cmd:ar} 可以与 {opt by(varname)} 组合，但 {it:varname} 必须在组内保持不变。

{phang3}
{it:restype} {cmd:ma} {it:#} 假设组内误差具有阶数为 {it:#} 的移动平均（MA）结构；默认值为 {cmd:ma 1}。所需的 {opth t(varname)} 选项，其中 {it:varname} 是用于对观察进行排序和确定连续观察之间滞后的整数值时间变量。任何不连续的时间值将被视为缺口。对于此结构，估计 {it:#} + 1 个参数（{it:#} 个 MA 系数和一个整体误差方差）。{it:restype} {cmd:ma} 可以与 {opt by(varname)} 组合，但 {it:varname} 必须在组内保持不变。

{phang3}
{it:restype} {cmd:unstructured} 是最一般的结构；它为每个组内误差估计独特的方差和每个组内误差对的独特协方差。所需的 {opth t(varname)} 选项，其中 {it:varname} 是识别每个组内观察的非负整数值变量。各组可能不平衡，即并非每组内都需要观察到 {opt t()} 的所有级别，但您不能在任何特定组内有重复的 {opt t()} 值。当您有 p 个 {opt t()} 级别时，将估计 p*(p+1)/2 个参数。{it:restype} {cmd:unstructured} 可以与 {opt by(varname)} 组合，但 {it:varname} 必须在组内保持不变。

{phang3}
{it:restype} {cmd:banded} {it:#} 是 {cmd:unstructured} 的一个特例，限制估计到前 {it:#} 个离对角线的协方差，并将该带外的协方差设置为零。所需的 {opth t(varname)} 选项，其中 {it:varname} 是识别每个组内观察的非负整数值变量。{it:#} 是 0 到 p-1 之间的整数，其中 p 是 {opt t()} 的级别数。默认情况下，{it:#} 为 p-1；也就是说，协方差矩阵的所有元素都被估计。当 {it:#} 为零时，仅估计协方差矩阵的对角线元素。{it:restype} {cmd:banded} 可以与 {opt by(varname)} 组合，但 {it:varname} 必须在组内保持不变。

{phang3}
{it:restype} {cmd:toeplitz} {it:#} 假设组内误差具有阶数为 {it:#} 的 Toeplitz 结构，其中相关性需要在滞后小于或等于 {it:#} 的情况下保持不变，对于滞后大于 {it:#} 的情况为零。所需的 {opth t(varname)} 选项，其中 {it:varname} 是用于对组内观察进行排序和确定连续观察之间滞后的整数值时间变量。{it:#} 是 1 到观察到的最大滞后之间的整数（默认为最大观察滞后）。任何不连续的时间值将被视为缺口。对于此结构，估计 {it:#} + 1 个参数（{it:#} 个相关性和一个整体误差方差）。{it:restype} {cmd:toeplitz} 可以与 {opt by(varname)} 组合，但 {it:varname} 必须在组内保持不变。

{phang3}
{it:restype} {cmd:exponential} 是对自回归（AR）协方差模型的一般化，允许不等间隔和非整数时间值。所需的 {opth t(varname)} 选项，其中 {it:varname} 为实值。对于指数协方差模型，两个误差之间的相关性为参数 rho 提升到等于这些误差的 {cmd:t()} 值之间差异的绝对值的幂。对于这个结构，估计两个参数（相关性参数 rho 和一个总体误差方差）。{it:restype} {cmd:exponential} 可以与 {opt by(varname)} 组合，但 {it:varname} 必须在组内保持不变。

{pmore}
{it:residual_options} 包括 {opth by(varname)} 和 {opt t(varname)}。

{phang3}
{opt by(varname)} 用于 {opt residuals()} 选项，并指定为每个 {it:varname} 级别估计一组独特的残差误差参数。换言之，您使用 {opt by()} 来建模异方差性。

{phang3}
{opt t(varname)} 用于 {opt residuals()} 选项以指定 {cmd:ar}、{cmd:ma}、{cmd:toeplitz} 和 {cmd:exponential} 结构的时间变量，或当 {it:restype} 为 {cmd:unstructured} 或 {cmd:banded} 时识别观察。

{dlgtab:SE/稳健}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括对某些类型的错误规格稳健并允许组内相关性的类型；见 {help vce_option_zh:[R] {it:vce_option}}。默认值为 {cmd:vce(oim)}。  
如果指定了 {cmd:vce(robust)}，则稳健方差在多层模型的最高级别上聚类。

{phang2}
{cmd:vce(robust)} 和 {cmd:vce(cluster} {it:clustvar}{cmd:)} 在 REML 估计下不支持。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options:[R] estimation options}。

{phang}
{opt variance} 以方差和协方差的方式显示随机效应和残差误差参数估计。默认情况下，是以标准差和相关系数的方式显示。

{phang}
{opt noretable} 抑制输出中的随机效应表。

{phang}
{opt nofetable} 抑制输出中的固定效应表。

{phang}
{opt estmetric} 以估计度量显示所有参数估计。固定效应的估计与通常显示的相同，但是随机效应参数估计以对数标准差和相关性的双曲反正切形式显示，并使用按模型级别组织的方程名称。残差方差参数估计也以其原始估计度量显示。

{phang}
{opt noheader} 抑制输出标题，可以在估计时或重放时执行。

{phang}
{opt nogroup} 抑制输出标题中显示的组汇总信息（组数、平均组大小、最小值和最大值）。

{phang}
{opt nostderr} 阻止 {cmd:xtmixed} 为估计的随机效应参数计算标准误，尽管仍会给出固定效应参数的标准误。指定此选项可加快计算速度。{opt nostderr} 仅在残差被建模为具有恒定方差的独立时可用。

{phang}
{opt nolrtest} 阻止 {cmd:xtmixed} 拟合参考线性回归模型，并使用此模型计算与普通回归的似然比测试。此选项也可以在重放时指定以抑制此测试的输出。

{marker display_options}{...}
{phang}
{it:display_options}：
{opt noomit:ted},
{opt vsquish},
{opt noempty:cells},
{opt base:levels},
{opt allbase:levels},
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}，以及
{opt nolstretch}；
见 {helpb estimation options##display_options:[R] estimation options}。

{dlgtab:EM 选项}

{pstd}
这些选项控制 EM（期望最大化）迭代，在估计切换到基于梯度的方法之前。如果对残差进行建模为具有恒定方差的独立，EM 将收敛到解决方案或使参数估计接近解决方案。对于其他残差结构或加权估计，EM 被用于获取起始值。

{phang2}
{opt emiterate(#)} 指定要执行的 EM（期望最大化）迭代次数。默认值为 {cmd:emiterate(20)}。

{phang2}
{opt emtolerance(#)} 指定 EM 算法的收敛容忍度。默认值为 {cmd:emtolerance(1e-10)}。一旦限制（调整后的）似然以小于 {it:#} 的相对数量变化，EM 迭代将被停止。此时，优化切换到基于梯度的方法，但 {opt emonly} 被指定的情况下除外。

{phang2}
{opt emonly} 指定仅使用 EM 最大化似然。指定 {opt emonly} 的优点在于 EM 迭代通常比基于梯度的方法快。缺点是，EM 迭代可能收敛缓慢（如果收敛），并且提供无法为随机效应参数估计标准误的工具。{opt emonly} 仅适用于无权重估计，并且当残差被建模为独立且具有恒定方差时可用。

{phang2}
{opt emlog} 指定显示 EM 迭代日志。默认情况下，除非指定 {opt emonly} 选项，否则不会显示 EM 迭代日志。

{phang2}
{opt emdots} 指定 EM 迭代以点的形式显示。此选项可能方便，因为 EM 算法可能需要许多迭代才能收敛。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
{opt iter:ate(#)},
[{cmdab:no:}]{opt lo:g},
{opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)}, 和
{opt nonrtol:erance}； 
见 {help maximize_zh:[R] maximize}。
那些需要特殊说明的 {cmd: xtmixed} 选项如下。

{pmore}
对于 {opt technique()} 选项，默认值为 {cmd:technique(nr)}。
不可以指定 {opt bhhh} 算法。

{phang}
{opt matsqrt}（默认值），在优化过程中，通过使用每个模型层级的方差-协方差矩阵的矩阵平方根参数化方差成分。

{phang}
{opt matlog} 在优化过程中，通过使用每个模型层级的方差-协方差矩阵的矩阵对数参数化方差成分。

{pmore}
{opt matsqrt} 参数化确保方差-协方差矩阵是正半定的，而 {opt matlog} 确保矩阵是正定的。对于大多数问题，矩阵平方根在参数空间边界附近更加稳定。然而，如果收敛存在问题，一个选择可能是尝试备用的 {cmd:matlog} 参数化。当收敛不是问题时，这两种参数化产生等效结果。

{pstd}
以下选项在 {opt xtmixed} 中可用，但在对话框中未显示：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] estimation options}。


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下呈现：

{phang2}{help xtmixed##remarks1:关于指定随机效应方程的备注}
{p_end}
{phang2}{help xtmixed##sampling:关于使用抽样权重的备注}{p_end}


{marker remarks1}{...}
{title:关于指定随机效应方程的备注}

{pstd}
混合模型由固定效应和随机效应组成。固定效应以与大多数其他 Stata 估计命令类似的方式作为回归参数指定，即，依赖变量后跟一组回归变量。模型的随机效应部分通过首先考虑数据的分组结构来指定。例如，如果随机效应根据变量 {cmd:school} 变化，则对 {cmd:xtmixed} 的调用将如下形式：

{p 8 12 4}{cmd:. xtmixed} {it:fixed_portion} 
{cmd:|| school:} ... {cmd:,}
{it:options}{p_end}

{pstd}
构成每个方程的变量列表描述了随机效应是如何进入模型的，作为随机截距（常数项）或作为数据中回归变量的随机系数。还可以根据上面描述的四种可用结构指定组内随机效应的方差-协方差结构。例如，

{p 8 12 4}{cmd:. xtmixed} {it:f_p}
{cmd:|| school: z1, covariance(unstructured)}
{it:options}{p_end}

{pstd}
将拟合具有随机截距和变量 {cmd:z1} 的随机斜率，并将这两种随机效应的方差-协方差结构视为非结构化。

{pstd}
如果数据按一系列嵌套组组织，例如，学校内的班级，则随机效应结构通过一系列方程规格化，每个方程由 {cmd:||} 分开。嵌套顺序从左到右进行。对于我们的示例，这意味着将首先指定学校的方程，然后是班级的方程。作为示例，考虑

{p 8 12 4}{cmd:. xtmixed} {it:f_p} 
{cmd:|| school: z1 z2, nocons cov(id) || class: z1 z2 z3, nocons cov(un)}
{it:options}

{pstd}
其中变量 {cmd:school} 和 {cmd:class} 分别识别学校和班级。该模型在学校级别上包含随机截距和变量 {cmd:z1} 的随机系数，并在班级级别上具有变量 {cmd:z1}、{cmd:z2} 和 {cmd:z3} 的随机系数。班级级别随机效应的协方差结构是可交换的，这意味着随机效应分享相同的方差和相同的成对协方差。

{pstd}
分组变量可以重复，允许构建更加一般的协方差结构，作为基于四种原始结构的块对角矩阵。考虑

{p 8 12 4}{cmd:. xtmixed} {it:f_p} 
{cmd:|| school: z1 z2, nocons cov(id) || school: z3 z4, nocons cov(un)}
{it:options}

{pstd}
该模型指定了四个在学校级别的随机系数。随机效应的方差-协方差矩阵为 4 x 4 矩阵，其中上部 2 x 2 对角块是单位矩阵的倍数，而下部 2 x 2 对角块是非结构化。实际上，变量 {cmd:z1} 和 {cmd:z2} 的系数被约束为独立，并共享一个共同的方差。变量 {cmd:z3} 和 {cmd:z4} 的系数各自具有不同的方差，同时与变量 {cmd:z1} 和 {cmd:z2} 的系数的方差不同。它们还允许相关性，但与变量 {cmd:z1} 和 {cmd:z2} 的系数是独立的。

{pstd}
对于没有嵌套分组结构的混合模型，将整个估计数据视为一个组是方便的。为此，{cmd:xtmixed} 允许特殊的组指定 {cmd:_all}。{cmd:xtmixed} 还允许因子变量符号 {cmd:R.}{it:varname}，这是描述 {it:varname} 的级别作为一系列指示变量的简写。有关更多详细信息，请参见 {it:随机效应因子符号和交叉效应模型} 在 {bf:[XT] xtmixed} 中。

{marker sampling}{...}
{title:关于使用抽样权重的备注}

{pstd}
在多层模型中，抽样权重的处理方式与在标准模型（如 OLS 回归）中的处理方式不同。在多层模型中，观察级别的权重并不表示总体的包含情况。相反，它们表示在下一个更高抽样层级的相应集群被包含的条件下的包含情况。

{pstd}
例如，如果您仅在双层模型中包括观察级别权重，则 {cmd:xtmixed} 将假设在第二级别下的均等概率抽样，而这可能与您的初衷不符。如果在第二级别的抽样是加权的，则即使在第一层权重变量中包含了第二层的加权，也可能导致有偏结果。例如，将多个层的条件权重乘以一个总体权重是一种常见做法。相比之下，加权的多层分析要求从每个抽样级别提取成分权重。

{pstd}
即使在模型的所有层级中指定了抽样权重，较低层次的抽样权重的规模也会影响您在多层模型中估计的参数。也就是说，较低层次权重的相对大小不仅重要，权重的规模也很重要。为了解决这个问题，{cmd:xtmixed} 提供了 {cmd:pwscale()} 选项用于在双层模型中重新缩放权重；有关 {cmd:pwscale()} 的更多信息，请参见 {help xtmixed##scale_method:above}。
提供了三种缩放方法，每种方法在特定数据情境和假定模型下表现良好。

{pstd}
总体而言，在与 {cmd:xtmixed} 一起使用抽样权重时要小心；有关更多信息，请参见 {it:调查数据} 在 {bf:[XT] xtmixed} 中。

{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nlswork}{p_end}

{pstd}随机截距模型，类似于 {cmd:xtreg}{p_end}
{phang2}{cmd:. xtmixed ln_w grade age c.age#c.age ttl_exp}
          {cmd:tenure c.tenure#c.tenure || id:}{p_end}

{pstd}随机截距和随机斜率（系数）模型{p_end}
{phang2}{cmd:. xtmixed ln_w grade age c.age#c.age ttl_exp}
           {cmd:tenure c.tenure#c.tenure || id: tenure}{p_end}

{pstd}随机截距和随机斜率（系数）模型，关联随机效应{p_end}
{phang2}{cmd:. xtmixed ln_w grade age c.age#c.age ttl_exp}
            {cmd:tenure c.tenure#c.tenure || id: tenure,}
            {cmd:cov(unstruct)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse pig}{p_end}

{pstd}双层模型{p_end}
{phang2}{cmd:. xtmixed weight week || id:}{p_end}

{pstd}具有稳健标准误的双层模型{p_end}
{phang2}{cmd:. xtmixed weight week || id:, vce(robust)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse productivity}{p_end}

{pstd}三层嵌套模型，观察嵌套在 
{cmd:state} 嵌套在 {cmd:region} 中，通过最大似然拟合{p_end}
{phang2}{cmd:. xtmixed gsp private emp hwy water other unemp || region: ||}
           {cmd:state:, mle}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse pig}{p_end}

{pstd}双向交叉随机效应{p_end}
{phang2}{cmd:. xtmixed weight week || _all: R.id || _all: R.week}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse ovary}{p_end}

{pstd}线性混合模型，具有 MA 2 误差{p_end}
{phang2}{cmd:. xtmixed follicles sin1 cos1 || mare: sin1, residuals(ma 2, t(time))}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse childweight}{p_end}

{pstd}线性混合模型，具有异方差错误方差{p_end}
{phang2}{cmd:. xtmixed weight age || id:age, residuals(independent, by(girl))}{p_end}

    {hline}


{marker saved_results}{...}
{title:保存的结果}

{pstd}
{cmd:xtmixed} 在 {cmd:e()} 中保存以下内容：

{synoptset 17 tabbed}{...}
{p2col 5 17 21 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_f)}}固定效应参数数量{p_end}
{synopt:{cmd:e(k_r)}}随机效应参数数量{p_end}
{synopt:{cmd:e(k_rs)}}标准差数量{p_end}
{synopt:{cmd:e(k_rc)}}相关性数量{p_end}
{synopt:{cmd:e(k_res)}}残差误差参数数量{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(nrgroups)}}残差误差 {cmd:by()} 组数量{p_end}
{synopt:{cmd:e(ar_p)}}如果指定，残差误差的 AR 阶数{p_end}
{synopt:{cmd:e(ma_q)}}如果指定，残差误差的 MA 阶数{p_end}
{synopt:{cmd:e(res_order)}}如果适用，残差误差结构的顺序{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数（限制）似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}卡方的 p 值{p_end}
{synopt:{cmd:e(ll_c)}}对数似然，比较模型{p_end}
{synopt:{cmd:e(chi2_c)}}卡方，比较模型{p_end}
{synopt:{cmd:e(df_c)}}比较模型的自由度{p_end}
{synopt:{cmd:e(p_c)}}比较模型的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 17 tabbed}{...}
{p2col 5 17 21 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtmixed}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}依赖变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型（第一层权重）{p_end}
{synopt:{cmd:e(wexp)}}权重表达式（第一层权重）{p_end}
{synopt:{cmd:e(fweight}{it:k}{cmd:)}}如果指定，第 {it:k} 高级别的 fweight 表达式{p_end}
{synopt:{cmd:e(pweight}{it:k}{cmd:)}}如果指定，第 {it:k} 高级别的 pweight 表达式{p_end}
{synopt:{cmd:e(ivars)}}分组变量{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(redim)}}随机效应的维度{p_end}
{synopt:{cmd:e(vartypes)}}方差结构类型{p_end}
{synopt:{cmd:e(revars)}}随机效应协变量{p_end}
{synopt:{cmd:e(resopt)}}{cmd:residuals()} 规格，按照输入的方式{p_end}
{synopt:{cmd:e(rstructure)}}残差误差结构{p_end}
{synopt:{cmd:e(rstructlab)}}残差误差结构输出标签{p_end}
{synopt:{cmd:e(rbyvar)}}残差误差 {cmd:by()} 变量，如果指定{p_end}
{synopt:{cmd:e(rglabels)}}残差误差 {cmd:by()} 组标签{p_end}
{synopt:{cmd:e(pwscale)}}抽样权重缩放方法{p_end}
{synopt:{cmd:e(timevar)}}如果指定，残差误差 {cmd:t()} 变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方测试的类型{p_end}
{synopt:{cmd:e(clustvar)}}集群变量的名称{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标签标准误的标题{p_end}
{synopt:{cmd:e(method)}}{cmd:ML} 或 {cmd:REML}{p_end}
{synopt:{cmd:e(opt)}}优化的类型{p_end}
{synopt:{cmd:e(optmetric)}}{cmd:matsqrt} 或 {cmd:matlog}; 随机效应
                 矩阵参数化{p_end}
{synopt:{cmd:e(emonly)}}{cmd:emonly}，如果指定{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 17 tabbed}{...}
{p2col 5 17 21 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(N_g)}}组计数{p_end}
{synopt:{cmd:e(g_min)}}组大小的最小值{p_end}
{synopt:{cmd:e(g_avg)}}组大小的平均值{p_end}
{synopt:{cmd:e(g_max)}}组大小的最大值{p_end}
{synopt:{cmd:e(tmap)}}用于非结构化残差误差的 ID 映射{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 17 tabbed}{...}
{p2col 5 17 21 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考}

{marker GK1996}{...}
{phang}
Graubard, B. I., and E. L. Korn. 1996. 在健康调查分析中建模抽样设计。
{it:Statistical Methods in Medical Research} 5: 263-281.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtmixed.sthlp>}