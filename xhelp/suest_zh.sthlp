{smcl}
{* *! version 1.2.25  21aug2018}{...}
{viewerdialog suest "dialog suest"}{...}
{vieweralsosee "[R] suest" "mansection R suest"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estimates" "help estimates_zh"}{...}
{vieweralsosee "[R] hausman" "help hausman_zh"}{...}
{vieweralsosee "[R] lincom" "help lincom_zh"}{...}
{vieweralsosee "[R] nlcom" "help nlcom_zh"}{...}
{vieweralsosee "[P] _robust" "help _robust_zh"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{vieweralsosee "[R] testnl" "help testnl_zh"}{...}
{viewerjumpto "Syntax" "suest_zh##syntax"}{...}
{viewerjumpto "Menu" "suest_zh##menu"}{...}
{viewerjumpto "Description" "suest_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "suest_zh##linkspdf"}{...}
{viewerjumpto "Options" "suest_zh##options"}{...}
{viewerjumpto "Remarks" "suest_zh##remarks"}{...}
{viewerjumpto "Examples" "suest_zh##examples"}{...}
{viewerjumpto "Stored results" "suest_zh##results"}
{help suest:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] suest} {hline 2}}看似无关的估计{p_end}
{p2col:}({mansection R suest:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:suest}
{it:namelist}
[{cmd:,}
{it:options}]

{phang}
其中 {it:namelist} 是一个或多个名称的列表，在这些名称下，通过 {helpb estimates store:estimates store} 存储了估计结果。
可以使用通配符。 {opt *} 和 {opt _all} 指代所有存储的结果。句点 ({cmd:.}) 可用来指代上一个估计结果，即使它尚未（还未）被存储。
{p_end}

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:SE/稳健}
{synopt:{opt svy}}调查数据估计{p_end}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt r:obust} 或 {opt cl:uster} {it:clustvar}{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认值是 {cmd:level(95)}
{p_end}
{synopt:{opt d:ir}}显示一个描述模型的表格
{p_end}
{synopt:{opth ef:orm(strings:string)}}以指数形式报告系数并将其标记为 {it:string}{p_end}
{synopt :{it:{help suest##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计}


{marker description}{...}
{title:描述}

{pstd}
{opt suest} 是一个后估计命令；请参见 {help estcom_zh} 和 {help postest_zh}。

{pstd}
{opt suest} 将存储在 {it:namelist} 下的估计结果——参数估计和相关的（协方差）矩阵——合并成一个参数向量和一个三明治/稳健类型的同时（协方差）矩阵。即使在相同或重叠的数据上获取了估计，该（协方差）矩阵也会被应用。

{pstd}
{opt suest} 的典型应用包括使用 {cmd:test} 或 {cmd:testnl} 进行模型内部和跨模型假设测试，例如，一种广义的 Hausman 规格检验。也可以在 {opt suest} 之后使用 {cmd:lincom} 和 {cmd:nlcom} 来估计系数的线性组合和非线性函数。 {opt suest} 也可以用来调整标准 VCE 以考虑聚类或调查设计效应。

{pstd}
允许使用不同的估计量，例如，一个 {cmd:regress} 模型和一个 {cmd:probit} 模型；唯一的要求是 {cmd:predict} 在估计命令之后使用 {opt score} 选项生成方程级别的分数。模型可以在不同的样本上进行估计，这要归因于显式的 {opt if} 或 {opt in} 选择或缺失值。如果应用了权重，所有 {it:namelist} 中的模型应应用相同的权重（类型和值）。估计量应在没有 {cmd:vce(robust)} 或 {cmd:vce(cluster} {it:clustvar}{cmd:)} 选项的情况下进行估计。
{cmd:suest} 返回稳健 VCE，允许 {cmd:vce(cluster} {it:clustvar}{cmd:)} 选项，并自动与 {cmd:svy} 前缀命令的结果（仅对 {cmd:vce(linearized)}）一起工作。请参见 {mansection SVY svypostestimationRemarksandexamplesex7:示例 7} 在 {manlink SVY svy postestimation} 中使用 {cmd:suest} 与 {cmd:svy: ologit} 的示例。

{pstd}
因为 {opt suest} 像一个适当的估计命令那样发布其结果，所以可以通过 {helpb estimates store} 存储其结果。此外，像其他估计命令一样，未带参数的 {cmd:suest} 会重播结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R suestQuickstart:快速入门}

        {mansection R suestRemarksandexamples:备注和示例}

        {mansection R suestMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:SE/稳健}

{phang}
{opt svy}
指定应根据 {cmd:svyset} 规格修改估计结果以反映调查设计效应；
请参阅 {manhelp svyset SVY}。

{pmore}
当 {cmd:suest} 遇到来自 {help svy_zh} 前缀的调查估计结果时，默认为 {opt svy} 选项。当来自 {cmd:svy} 前缀的调查估计结果允许后分层。

INCLUDE help vce_rc

{pmore}
{opt vce()} 选项不能与 {opt svy} 选项或来自 {cmd:svy} 前缀的估计结果组合使用。

{dlgtab:报告}

{phang}
{opt level(#)} 指定系数置信区间的置信水平，以百分比表示；请参阅 {manhelp level R}。

{phang}
{opt dir} 显示一个描述 {it:namelist} 中模型的表格，就像 {cmd:estimates dir} {it:namelist} 一样。

{phang}
{opth eform:(strings:string)}
以指数形式显示系数表：对于每个系数，显示 exp(b) 而不是 b，并且标准误差和置信区间转变。
{it:string} 是将显示在变换系数上方的表头，必须不超过 11 个字符，例如，{cmd:eform("优势比")}。

INCLUDE help displayopts_list

{pstd}
以下选项可与 {opt suest} 一起使用，但未显示在对话框中：

{phang}
{opt coeflegend}; 见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker remarks}{...}
{title:备注}

{pstd}
备注通过以下标题呈现：

        {help suest##remarks1:使用 suest}
        {help suest##remarks2:与调查数据一起使用 suest}
        {help suest##remarks3:关于特定命令的备注}


{marker remarks1}{...}
{title:使用 suest}

{pstd}
如果您计划使用 {opt suest}，在拟合原始模型时必须采取预防措施。使用调查数据时，这些限制会放宽；请参见下面的 {help suest##survey_data:{it:使用 suest 与调查数据}}。

{phang2}1.  
	  {opt suest} 适用于允许 {cmd:predict} 在提供 {opt score}（或 {opt scores}）选项时生成方程级别分数变量的估计命令。例如，在运行 {cmd:mlogit} 之后，通过键入

{pin3}  {cmd:. predict sc*, scores}

{phang2}2.  
	估计应在没有 {cmd:vce(robust)} 或 {cmd:vce(cluster} {it:clustvar}{cmd:)} 选项的情况下进行。 {opt suest} 始终计算（协方差）的稳健估计量，并且 {opt suest} 有 {cmd:vce(cluster} {it:clustvar}{cmd:)} 选项。

{pmore2}通过 {opt suest} 计算的模型间协方差矩阵与在估计期间指定 {cmd:vce(robust)} 或 {cmd:vce(cluster} {it:clustvar}{cmd:)} 选项获得的矩阵相同。
但是，{opt suest} 还估计参数估计的模型间协方差。

{phang2}3.  
	最后，应通过 {cmd:estimates store} 存储要组合的估计结果；请参见 
	{helpb estimates store:[R] estimates store}。

{pstd}
在估计和存储一系列估计结果后，您可以准备与 suest 组合这些估计结果，

{p 8 16 2}
{cmd:. suest} {it:name1} [{it:name2} ...] [{cmd:,} {cmd:vce(cluster} {it:clustvar}{cmd:)}]

{pstd}
然后，您可以使用后估计命令，例如 {cmd:test}，来测试假设。这里一个重要的问题是 {opt suest} 如何为方程分配名称。如果您指定一个模型 {it:name}，则原始方程名称将保持不变；否则，{opt suest} 将构造新的方程名称。单一方程模型（如 {cmd:logit} 和 {cmd:poisson}）的系数如果在名称为 {it:X} 下已经被 {cmd:estimate store} 存储，则被收集在方程 {it:X} 下。对于存储在名称为 {it:X} 下的多方程模型，{opt suest} 将原始方程名称 {it:eq} 前加上 {it:X}{cmd:_}，形成方程名称 {bind:{it:X}{cmd:_}{it:eq}}。

{pstd}
技术说明：在极少数情况下，{opt suest} 可能不得不将方程名称截断为 32 个字符。当方程名称因截断而不唯一时，{opt suest} 会对模型内的方程进行编号，使用名称为 {it:X_#} 的方程。

{marker remarks2}{...}
{marker survey_data}{...}
{title:使用 suest 与调查数据}

{pstd}
{opt suest} 可用于获取一系列使用 {help svy_zh} 前缀的估计量的方差估计。要为此目的使用 {opt suest}，请执行以下步骤：

{phang2}1.  确保使用 {help svyset_zh} 正确设置调查设计特征。请勿使用 {opt vce()} 选项更改线性化方差估计器的默认方差估计器。
	{cmd:vce(brr)} 和 {cmd:vce(jackknife)} 不受 {opt suest} 支持。

{phang2}2.  使用 {cmd:svy} 前缀命令拟合一个或多个模型，可选择地使用 {opt subpop()} 选项包括子人群。
	
{phang2}3.  使用 {cmd:estimates store} {it:name} 存储估计结果。

{phang2}4.  使用 {cmd:suest} 与 {it:name}。

{marker remarks3}{...}
{title:关于特定命令的备注}

{p 4 4 2}一些估计命令以略微非标准的方式存储或命名其结果，主要是出于历史原因。 {cmd:suest} 在这些情况下提供了“修复”。

{phang}{help regress_zh} 不包括其附属参数，即残差方差，在其系数向量和（协方差）矩阵中。此外，尽管可以在 {cmd:regress} 之后使用 {opt score} 选项来进行 {cmd:predict}，但生成的分数变量仅针对均值，而不针对方差参数。{cmd:suest} 包含特殊代码，将方程名称 {cmd:mean} 分配给均值系数，为对数方差添加方程 {cmd:lnvar}，并计算适当的分数变量。

{marker examples}{...}
{title:示例 1：Hausman 检验}

{phang}{cmd:. webuse sysdsn4}{p_end}
{phang}{cmd:. mlogit insure age male}{p_end}
{phang}{cmd:. estimates store m1, title(所有三种保险形式)}{p_end}

{phang}{cmd:. quietly mlogit insure age male if insure != "Uninsure":insure}
{p_end}
{phang}{cmd:. estimates store m2, title(保险 != "Uninsure":保险)}{p_end}

{phang}{cmd:. quietly mlogit insure age male if insure != "Prepaid":insure}
{p_end}
{phang}{cmd:. estimates store m3, title(保险 != "Prepaid":保险)}{p_end}

{phang}{cmd:. hausman m2 m1, alleqs constant}{p_end}
{phang}{cmd:. hausman m3 m1, alleqs constant}{p_end}


{title:示例 2：系数在组之间是否变化？（“Chow 检验”）}

{phang}{cmd:. webuse income}{p_end}
{phang}{cmd:. regress inc edu exp if male}{p_end}
{phang}{cmd:. estimates store Male}{p_end}

{phang}{cmd:. regress inc edu exp if !male}{p_end}
{phang}{cmd:. estimates store Female}{p_end}

{phang}{cmd:. suest Male Female}{p_end}
{phang}{cmd:. test [Male_mean = Female_mean]}


{title:示例 3：非线性 Hausman 类似检验}

{phang}{cmd:. webuse income}{p_end}
{phang}{cmd:. probit promo edu exp}{p_end}
{phang}{cmd:. estimates store Promo}{p_end}

{phang}{cmd:. regress inc edu exp}{p_end}
{phang}{cmd:. estimates store Inc}{p_end}

{phang}{cmd:. suest Promo Inc}{p_end}
{phang}{cmd:. testnl [Promo_promo]edu/[Promo_promo]exp = [Inc_mean]edu/[Inc_mean]exp}


{title:示例 4：使用 suest 与调查数据 svy 前缀}

{phang}{cmd:. webuse nhanes2f}{p_end}
{phang}{cmd:. svyset psuid [pw=finalwgt], strata(stratid)}{p_end}
{phang}{cmd:. svy: ologit health female black age age2}{p_end}
{phang}{cmd:. estimates store H5}{p_end}

{phang}{cmd:. gen health3 = clip(health,2,4)}{p_end}
{phang}{cmd:. svy: ologit health3 female black age age2}{p_end}
{phang}{cmd:. estimates store H3}{p_end}

{phang}{cmd:. suest H5 H3}{p_end}
{phang}{cmd:. test [H5_health=H3_health3]}{p_end}
{phang}
{cmd:. test ([/H5:cut2]=[/H3:cut1]) ([/H5:cut3]=[/H3:cut2])}
{p_end}


{title:示例 5：使用 suest 与调查数据 svy 选项}

{phang}{cmd:. webuse nhanes2f, clear}{p_end}
{phang}{cmd:. svyset psuid [pw=finalwgt], strata(stratid)}{p_end}
{phang}{cmd:. ologit health female black age age2 [iw=finalwgt]}{p_end}
{phang}{cmd:. estimates store H5}{p_end}

{phang}{cmd:. gen health3 = clip(health,2,4)}{p_end}
{phang}{cmd:. ologit health3 female black age age2 [iw=finalwgt]}{p_end}
{phang}{cmd:. estimates store H3}{p_end}

{phang}{cmd:. suest H5 H3, svy}{p_end}
{phang}{cmd:. test [H5_health=H3_health3]}{p_end}
{phang}{cmd:. test ([/H5:cut2]=[/H3:cut1]) ([/H5:cut3]=[/H3:cut2])}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:suest} 在 {cmd:e()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:suest}{p_end}
{synopt:{cmd:e(eqnames}{it:#}{cmd:)}}模型 {it:#} 的方程原始名称
{p_end}
{synopt:{cmd:e(names)}}模型名称列表{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(vce)}}在 {opt vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}模型的堆叠系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <suest.sthlp>}