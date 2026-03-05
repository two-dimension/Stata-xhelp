{smcl}
{* *! version 1.2.11  12dec2018}{...}
{vieweralsosee "[SEM] gsem 估计选项" "mansection SEM gsemestimationoptions"}{...}
{vieweralsosee "[SEM] 简介 8" "mansection SEM Intro8"}{...}
{vieweralsosee "[SEM] 简介 9" "mansection SEM Intro9"}{...}
{vieweralsosee "[SEM] 简介 12" "mansection SEM Intro12"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{viewerjumpto "语法" "gsem_estimation_options_zh##syntax"}{...}
{viewerjumpto "描述" "gsem_estimation_options_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "gsem_estimation_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "gsem_estimation_options_zh##options"}{...}
{viewerjumpto "备注" "gsem_estimation_options_zh##remarks"}{...}
{viewerjumpto "示例" "gsem_estimation_options_zh##examples"}
{help gsem_estimation_options:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[SEM] gsem 估计选项} {hline 2}}影响估计的选项{p_end}
{p2col:}({mansection SEM gsemestimationoptions:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:gsem} {help sem and gsem path notation:{it:paths}}
... {cmd:,} ... {it:estimation_options}


{synoptset 25}{...}
{synopthdr:estimation_options}
{synoptline}
{synopt :{opt meth:od}{cmd:(}{helpb sem_option_method##method:ml}{cmd:)}} 用于获取估计参数的方法；在 {cmd:gsem} 中仅提供一种方法{p_end}
{synopt :{opt vce}{cmd:(}{it:{help sem_option_method##vcetype:vcetype}{cmd:)}}}{it:vcetype} 可为 {opt oim}、{opt opg}、{opt r:obust} 或 {opt cl:uster} {it:clustvar}{p_end}
{synopt :{opt pw:eights}{cmd:(}{it:{help gsem_estimation_options##weights:varlist}{cmd:)}}}每个层次的采样权重变量{p_end}
{synopt :{opt fw:eights}{cmd:(}{it:{help gsem_estimation_options##weights:varlist}{cmd:)}}}每个层次的频率权重变量{p_end}
{synopt :{opt iw:eights}{cmd:(}{it:{help gsem_estimation_options##weights:varlist}{cmd:)}}}每个层次的重要性权重变量{p_end}

{synopt :{cmd:from(}{it:{help gsem_estimation_options##matname:matname}}{cmd:)}}指定起始值{p_end}
{synopt :{cmdab:startv:alues(}{it:{help gsem_estimation_options##startvalues():svmethod}}{cmd:)}} 获取起始值的方法{p_end}
{synopt :{cmdab:startg:rid}[{cmd:(}{it:{help gsem_estimation_options##startgrid():gridspec}}{cmd:)}]} 执行网格搜索以改进起始值{p_end}
{synopt :{opth em:opts(gsem_estimation_options##emopts():{it:maxopts})}} 控制 EM 算法以改进起始值{p_end}
{synopt :{opt noest:imate}} 不拟合模型；显示起始值{p_end}

{synopt :{cmdab:intm:ethod(}{it:{help gsem_estimation_options##intmethod:intmethod}}{cmd:)}} 积分方法{p_end}
{synopt :{opt intp:oints(#)}} 设置积分（求积）点的数量{p_end}
{synopt :{cmdab:adapt:opts(}{it:{help gsem_estimation_options##adaptopts:adaptopts}}{cmd:)}} 自适应求积的选项{p_end}

{synopt :{opt listwise}} 应用 {cmd:sem} （而非 {cmd:gsem}）的规则，省略缺失值的观察{p_end}

{synopt :{opt dnumerical}} 使用数值导数技术{p_end}
{synopt :{opt etol:erance(#)}} 设置重新缩放公差为 {it:#} 以防止在具有连续潜变量的模型中出现数值溢出；很少使用{p_end}

{synopt :{it:{help gsem_estimation_options##maximize_options:maximize_options}}} 控制指定模型的最大化过程；很少使用{p_end}
{synoptline}

{synoptset 25}{...}
{marker intmethod}{...}
{synopthdr :intmethod}
{synoptline}
{synopt :{opt mv:aghermite}} 均值-方差自适应高斯-赫尔米特求积；
默认值{p_end}
{synopt :{opt mc:aghermite}} 模式-曲率自适应高斯-赫尔米特求积{p_end}
{synopt :{opt gh:ermite}} 非自适应高斯-赫尔米特求积{p_end}
{synopt :{opt lap:lace}} 拉普拉斯近似{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 25}{...}
{marker adaptopts}{...}
{synopthdr :adaptopts}
{synoptline}
{synopt: [{cmd:no}]{opt log}} 是否在每次计算数值积分时显示迭代日志{p_end}
{synopt: {opt iter:ate(#)}} 设置自适应技术的最大迭代次数；默认值为 {cmd:iterate(1001)}{p_end}
{synopt: {opt tol:erance(#)}} 设置自适应参数收敛的公差；默认值为 {cmd:tolerance(1e-8)}{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
这些选项控制如何获得结果，从起始值到数值积分（也称为求积），再到如何获得方差估计。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM gsemestimationoptionsRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:method(ml)}
     是默认值，也是 {cmd:gsem} 中唯一可用的方法。此选项是为了与提供多种方法的 {cmd:sem} 兼容；请参见 {help sem_option_method_zh:[SEM] sem option method()}。

{phang}
{opt vce(vcetype)} 指定用于获取估计的方差-协方差矩阵的技术。
请参见 {help sem_option_method_zh:[SEM] sem option method()}。

{marker weights}{...}
{phang}
{opth pweights(varlist)}、{opt fweights(varlist)} 和 {opt iweights(varlist)}
指定从观察（第一）层次到最高层级组应用的权重变量。
只能指定其中一种选项，并且在交叉模型或 {cmd:intmethod(laplace)} 下不允许使用。

{pmore}
{opt pweights(varlist)} 指定采样权重，并且如果未同时指定 {cmd:vce()} 选项，则暗示 {cmd:vce(robust)}。

{pmore}
{opt fweights(varlist)} 指定频率权重。

{pmore}
{opt iweights(varlist)} 指定重要性权重。

{marker matname}{...}
{marker startval}{...}
{marker startvalues()}{...}
{marker startgrid()}{...}
{marker emopts()}{...}
{phang}
{opt from(matname)},
{opt startvalues(svmethod)},
{cmd:startgrid}[{cmd:(}{it:gridspec}{cmd:)}],
和
{opt emopts(maxopts)}
    指定覆盖起始值，指定如何计算其他起始值，并提供改进起始值的能力。
所有这些都在 {manlink SEM Intro 12} 中讨论。下面提供了技术描述。

{pmore}
        {opt from(matname)} 允许您指定起始值。
        请参见 {manlink SEM Intro 12} 并查看
        {helpb sem and gsem option from:[SEM] sem and gsem option from()}。
        我们显示语法为 {opt from(matname)}，但 {cmd:from()}
        还有另一种不太有用的语法。
        {cmd:from()} 的替代方案是 {cmd:init()}，在路径规范中使用；
        请参见 {helpb sem and gsem path notation:[SEM] sem and gsem path notation}。

{pmore}
        {cmd:startvalues()} 指定如何计算起始值。
        在 {cmd:from()} 中指定的起始值覆盖计算出的起始值，而通过
        {cmd:init()} 指定的起始值会覆盖两者。

{pmore}
	没有类别潜变量模型的起始值选项如下：

{phang3}
        {cmd:startvalues(zero)} 指定将起始值设置为 0。

{phang3}
        {cmd:startvalues(constantonly)} 在 {cmd:startvalues(zero)} 的基础上，拟合仅包括常数的模型以获取截距和规模参数的估计，并用 1 替代潜变量的方差。

{phang3}
        {cmd:startvalues(fixedonly} [{cmd:,}
	{it:{help gsem_estimation_options##maxopts:maxopts}}]{cmd:)}
	在 {cmd:startvalues(constantonly)} 的基础上，拟合每个响应变量的全固定效应模型，以获取系数的估计，以及截距和规模参数，同时继续使用 1 作为潜变量的方差。

{phang3}
        {cmd:startvalues(ivloadings} [{cmd:,}
	{it:{help gsem_estimation_options##maxopts:maxopts}}]{cmd:)}
	在 {cmd:startvalues(fixedonly)} 的基础上，使用固定效应模型的广义残差通过工具变量方法计算潜变量加载的起始值，同时依然使用 1 作为潜变量的方差。

{phang3}
        {cmd:startvalues(iv} [{cmd:,}
	{it:{help gsem_estimation_options##maxopts:maxopts}}]{cmd:)}
	在 {cmd:startvalues(ivloadings)} 的基础上，使用工具变量方法和广义残差来获得潜变量的方差。

{pmore}
	具有类别潜变量模型的起始值选项如下：

{phang3}
        {cmd:startvalues(factor} [{cmd:,}
        {help gsem estimation options##maxopts:{it:maxopts}}]{cmd:)}
        指定通过对指定模型中所有观察变量运行 {cmd:factor} 分析来计算起始值，为每个观察分配到最初的潜类别。
        这是有类别潜变量模型的默认方式。

{phang3}
        {cmd:startvalues(classid} {varname}[{cmd:,}
        {help gsem estimation options##maxopts:{it:maxopts}}]{cmd:)}
        指定通过将每个观察分配到在 {it:varname} 中指定的初始潜类别来计算起始值。{it:varname} 必须在估计样本中包含每个类别。

{phang3}
        {cmd:startvalues(classpr} {varlist}[{cmd:,}
        {help gsem estimation options##maxopts:{it:maxopts}}]{cmd:)}
        指定使用在 {it:varlist} 中指定的初始类概率计算起始值。{it:varlist} 必须包含 k 个变量，以便在 k 个潜类别的模型中使用。{it:varlist} 中的值被归一化为每个观察值相加为 1。

{phang3}
        {cmd:startvalues(randomid} [{cmd:,}
	{opt draws(#)}
	{opt seed(#)}
	{it:{help gsem_estimation_options##maxopts:maxopts}}]{cmd:)}
        指定通过随机分配观察值到初始类别来计算起始值。

{phang3}
        {cmd:startvalues(randompr} [{cmd:,}
	{opt draws(#)}
	{opt seed(#)}
	{it:{help gsem_estimation_options##maxopts:maxopts}}]{cmd:)}
        指定通过随机分配初始类别概率来计算起始值。

{phang3}
        {cmd:startvalues(jitter} [{it:#_c} [{it:#_v}]{cmd:,} {opt draws(#)}
  	{opt seed(#)}
	{help gsem estimation options##maxopts:{it:maxopts}}]{cmd:)}
        指定通过随机扰动每个结果的高斯近似值来生成起始值。

{p 16 20 2}
        {it:#_c} 是随机扰动系数、截距、切点和尺度参数的幅度；默认值为 1。

{p 16 20 2}
        {it:#_v} 是随机扰动高斯结果方差的幅度；默认值为 1。

{pmore}
	某些起始值选项有子选项，允许对起始值计算进行调整：

{marker maxopts}{...}
{phang3}
	{it:maxopts} 是标准 {it:maximize_options} 的一个子集：
	{opt dif:ficult},
	{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
	{opt iter:ate(#)}, [{cmd:no}]{opt log}, {opt tr:ace}, 
	{opt grad:ient}, {opt showstep},
	{opt hess:ian},
	{opt showtol:erance},
	{opt tol:erance(#)},
	{opt ltol:erance(#)},
	{opt nrtol:erance(#)}；请参见 {help maximize_zh:[R] Maximize}。

{phang3}
	{opt draws(#)} 指定随机抽样的数量。
	对于 {cmd:startvalues(randomid)}、{cmd:startvalues(randompr)} 和
	{cmd:startvalues(jitter)}，{cmd:gsem} 将生成 {it:#} 个随机抽样，并从 EM 迭代中选择具有最佳对数似然值的抽样作为起始值。
	默认值为 {cmd:draws(1)}。

{phang3}
	{opt seed(#)} 设置随机数种子。

{pmore}
{cmd:startgrid()} 在潜变量的方差分量上执行网格搜索以改进起始值。这在 {manlink SEM Intro 12} 中有详细讨论。默认情况下不执行网格搜索，除非发现起始值不可行，在这种情况下，{cmd:gsem} 运行 {cmd:startgrid()} 来执行一个“最小”搜索，涉及 3^L 的似然评估，其中 L 是潜变量的数量。有时这能解决问题。然而，通常没有问题，{cmd:startgrid()} 默认不运行。即使起始值可行，运行 {cmd:startgrid()} 也可能带来改进起始值的好处。

{pmore}
        {opth emopts:(gsem_estimation_options##maxopts:maxopts)}
        控制 EM 算法的对数似然最大化过程。
        EM 算法仅用于具有类别潜变量的模型。
        {help gsem estimation options##maxopts:{it:maxopts}} 是与 {opt startvalues()} 选项相同的 {it:maximize_options} 子集，但对于 EM 算法某些默认值不同。
        默认最大迭代次数为 {cmd:iterate(20)}。
        默认系数向量公差为 {cmd:tolerance(1e-4)}。
        默认对数似然公差为 {cmd:ltolerance(1e-6)}。

{phang}
{cmd:noestimate} 指定模型不拟合。相反，应显示起始值（如果进行了修改，则如上述选项所修改的），并以 {cmd:coeflegend} 风格的输出显示。此选项的一个重要用途是在您完全未修改起始值之前；您可以输入以下内容：

{phang3}{cmd:. gsem ..., ... noestimate}{p_end}
{phang3}{cmd:. matrix b = e(b)}{p_end}
{phang3}{cmd:. ...} {it:(修改 b 的元素)} {cmd:...}{p_end}
{phang3}{cmd:. gsem ..., ... from(b)}

{phang}
{opt intmethod(intmethod)},
{opt intpoints(#)} 和
{opt adaptopts(adaptopts)}
        影响潜变量的数值积分计算方式。

{pmore}
        {opt intmethod(intmethod)} 指定方法，默认值为 {cmd:intmethod(mvaghermite)}。我们推荐使用此方法，尽管有时更耗费计算资源的 {cmd:intmethod(mcaghermite)} 在无法收敛的多层模型中表现更好。有时使用计算资源较少且准确性较低的 {cmd:intmethod(ghermite)} 和 {cmd:intmethod(laplace)} 有助于使模型收敛，之后或许可以使用其他更准确的方法。这一切都在 {manlink SEM Intro 12} 中得到解释。对于拟合交叉模型时，{cmd:intmethod(laplace)} 为默认值。交叉模型通常较难处理。

{pmore}
        {opt intpoints(#)} 指定要使用的积分点数量，默认值为 {cmd:intpoints(7)}。增加数量会提高精度，但也会增加计算时间。计算时间大约与指定的数量成正比。
        请参见 {manlink SEM Intro 12}。

{pmore}
        {opt adaptopts(adaptopts)} 影响自适应求积（数值积分的另一种说法）的自适应部分，因此仅与 {cmd:intmethod(mvaghermite)}、 
        {cmd:intmethod(mcaghermite)} 和 {cmd:intmethod(laplace)} 相关。

{pmore}
        {cmd:adaptopts()} 的默认值为
        {cmd:adaptopts(nolog iterate(1001) tolerance(1e-8))}。

{pmore}
[{cmd:no}]{cmd:log}
        指定每次计算数值积分时是否显示迭代日志。

{pmore}
        {cmd:iterate()} 指定自适应技术的最大迭代次数。

{pmore}
        {cmd:tolerance()} 指定确定自适应参数收敛的公差。当对数似然的相对变化小于或等于公差时声明收敛。

{phang}
{cmd:listwise} 应用 {cmd:sem} 的规则，而非 {cmd:gsem} 的规则来省略缺失值的观察。
默认情况下，{cmd:gsem} 有时能够使用包含缺失值的观察来拟合模型的某些部分。
反之，每当不使用 {cmd:method(mlmv)} 时，{cmd:sem} 应用逐项删除规则。指定 {cmd:listwise} 使我们在 StataCorp 能够验证 {cmd:gsem} 和 {cmd:sem} 是否生成相同的结果。我们发现这让人安心。实际上，自动化测试在发货前验证结果是否相同。为了您的信息，{cmd:sem} 和 {cmd:gsem} 使用不同的数值机制来获得结果，因此结果的近乎相等是验证每个代码正确性的强测试。如果您正从使用逐项删除的其他软件包复制结果，您可能会发现 {cmd:listwise} 有用。

{phang}
{cmd:dnumerical} 指定在优化期间，使用数值技术而非解析公式计算梯度向量和海森矩阵。默认情况下，{cmd:gsem} 使用解析公式计算梯度和海森矩阵，除了在使用 {cmd:intmethod(laplace)} 时。

{phang}
{opt etolerance(#)} 指定用于确定何时需要重新缩放对数似然值的正公差。这些对数似然值过大，无法进行指数计算。
默认公差公式为

{pmore2}
{cmd:max(2,}{it:nLvars}{cmd:)} {cmd:*} {cmd:log(}{it:p}{cmd:)}

{pmore}
其中 {it:nLvars} 是模型中的潜变量数，{it:p} 是积分点的数量。

{pmore}
{cmd:gsem} 用于判断何时在特定水平下重新缩放对数似然值的规则如下：重新缩放对数似然值超出以下范围

{pmore3}
[-{it:M}, {it:M}-{it:#}]

{pmore}
其中 {it:M} 是一个限制，表示超过该限制的值可能导致指数计算出错。

{pmore}
此选项在非常少的情况下是必要的，但对于样本量较大的多层模型可能会有帮助。

{marker maximize_options}{...}
{phang}
{it:maximize_options}
     指定控制最大化过程的标准和极少指定的选项；请参见 {help maximize_zh:[R] Maximize}。与 {cmd:gsem} 相关的选项包括
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}, 
{opt iter:ate(#)}, [{cmd:no}]{opt log}, {opt tr:ace}, 
{opt grad:ient}, {opt showstep},
{opt hess:ian},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)}，和
{opt nonrtol:erance}。


{marker remarks}{...}
{title:备注}

{pstd}
有关 {opt vce()} 的更多信息，请参见
{manlink SEM Intro 8} 和 {manlink SEM Intro 9}。

{pstd}
有关其他选项的更多信息，请参见
{manlink SEM Intro 12}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_cfa}{p_end}

{pstd}拟合一个两因素测量模型{p_end}
{phang2}{cmd:. gsem (MathAb -> q1-q8, logit) (MathAtt -> att1-att5, ologit)}{p_end}

{pstd}计算稳健标准误{p_end}
{phang2}{cmd:. gsem (MathAb -> q1-q8, logit)}{break}
        {cmd:(MathAtt -> att1-att5, ologit), vce(robust)}{p_end}

{pstd}使用模式-曲率自适应高斯-赫尔米特求积执行数值积分{p_end}
{phang2}{cmd:. gsem (MathAb -> q1-q8, logit)}{break} 
	{cmd:(MathAtt -> att1-att5, ologit), intmethod(mcaghermite)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gsem_estimation_options.sthlp>}