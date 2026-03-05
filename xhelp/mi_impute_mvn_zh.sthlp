{smcl}
{* *! version 1.0.23  14may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi impute mvn" "mansection MI miimputemvn"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi intro substantive"}{...}
{vieweralsosee "[MI] mi impute" "help mi_impute_zh"}{...}
{vieweralsosee "[MI] Glossary" "help mi glossary"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi impute chained" "help mi_impute_chained_zh"}{...}
{vieweralsosee "[MI] mi impute monotone" "help mi_impute_monotone_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{viewerjumpto "Syntax" "mi_impute_mvn_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_impute_mvn_zh##menu"}{...}
{viewerjumpto "Description" "mi_impute_mvn_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_impute_mvn_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_impute_mvn_zh##options"}{...}
{viewerjumpto "Examples" "mi_impute_mvn_zh##examples"}{...}
{viewerjumpto "Stored results" "mi_impute_mvn_zh##results"}{...}
{viewerjumpto "Reference" "mi_impute_mvn_zh##reference"}
{help mi_impute_mvn:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[MI] mi impute mvn} {hline 2}}使用多元正态回归进行插补{p_end}
{p2col:}({mansection MI miimputemvn:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}
{cmd:mi} {cmdab:imp:ute} {cmd:mvn} {it:ivars}
[{cmd:=} {it:{help indepvars}}] [{it:{help if_zh}}]
[{cmd:,} {it:{help mi_impute##impopts:插补选项}} {it:options}]


{synoptset 30 tabbed}{...}
{marker options_table}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt: {opt nocons:tant}}抑制常数项{p_end}

{syntab:MCMC 选项}
{synopt: {opt burn:in(#)}}指定烧入期的迭代次数；默认值为 {cmd:burnin(100)}{p_end}
{synopt: {opt burnb:etween(#)}}指定每次插补之间的迭代次数；默认值为 {cmd:burnbetween(100)}{p_end}
{synopt: {opth pri:or(mi_impute_mvn##prior:prior_spec)}}指定先验分布；默认值为 {cmd:prior(uniform)}{p_end}
{synopt: {opt mcmconly}}在烧入期内执行 MCMC，而不插补缺失值{p_end}
{synopt: {opth initm:cmc(mi_impute_mvn##initda:init_mcmc)}}为 MCMC 程序指定初始值；默认值为 {cmd:initmcmc(em)}，即使用 EM 估计作为初始值{p_end}
{synopt: {opt wlfwgt(matname)}}为最坏线性函数指定权重{p_end}
{synopt:{cmdab:savew:lf(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}在 {it:filename}{cmd:.dta} 中保存每次迭代的 WLF{p_end}
{synopt:{cmdab:savep:trace(}{it:fname}[{cmd:, replace}]{cmd:)}}将每次迭代的 MCMC 参数估计保存到 {it:fname}{cmd:.stptrace} 中；见 
{manhelp mi_ptrace MI: mi ptrace}{p_end}

{syntab:报告}
{synopt: {opt emlog}}显示 EM 迭代日志{p_end}
{synopt: {opt emout:put}}显示 EM 估计的中间输出{p_end}
{synopt: {opt mcmcdots}}在执行 MCMC 迭代时显示点{p_end}
{synopt: {opt alldots}}在执行中间迭代时显示点
{p_end}
{synopt: {opt nolog}}不显示 EM 或 MCMC 的信息{p_end}

{syntab:高级}
{synopt: {cmd:emonly}[{cmd:(}{it:{help mi_impute_mvn##em_opts:em_options}}{cmd:)}]}仅执行 EM 估计{p_end}
{synoptline}
{p 4 6 2}
在使用 {cmd:mi} {cmd:impute} {cmd:mvn} 之前，您必须 {cmd:mi set} 您的数据；请参见 {manhelp mi_set MI:mi set}.{p_end}
{p 4 6 2}
在使用 {cmd:mi} {cmd:impute} {cmd:mvn} 之前，您必须将 {it:ivars} 注册为插补变量；请参见 {manhelp mi_set MI:mi set}.{p_end}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；请参见 {help fvvarlist_zh}.{p_end}


{synoptset 30}{...}
{marker prior}{...}
{synopthdr:prior_spec}
{synoptline}
{synopt: {opt u:niform}}使用均匀先验分布；默认为此{p_end}
{synopt: {opt j:effreys}}使用 Jeffreys 非信息性先验分布{p_end}
{synopt: {opt r:idge, df(#)}}使用自由度为 {it:#} 的岭先验分布{p_end}
{synoptline}


{synoptset 30}{...}
{marker initda}{...}
{synopthdr:init_mcmc}
{synoptline}
{synopt: {opt em} [{cmd:,} {it:{help mi_impute_mvn##em_opts:em_options}}]}使用 EM 获得 MCMC 的起始值；默认为此{p_end}
{synopt: {it:{help mi_impute_mvn##initmatlist:initmatlist}}}提供包含 MCMC 初始值的矩阵{p_end}
{synoptline}


{synoptset 30}{...}
{marker em_opts}{...}
{synopthdr:em_options}
{synoptline}
{synopt: {opt iter:ate(#)}}指定最大迭代次数；默认值为 {cmd:iterate(100)}{p_end}
{synopt: {opt tol:erance(#)}}指定参数估计变化的容忍度；默认值为 {cmd:tolerance(1e-5)}{p_end}
{synopt: {opth init:(mi_impute_mvn##initem:init_em)}}为 EM 算法指定初始值；默认值为 {cmd:init(ac)}{p_end}
{synopt: {opt nolog}}不显示 EM 迭代日志{p_end}
{synopt:{cmdab:savep:trace(}{it:fname}[{cmd:, replace}]{cmd:)}}}将 EM 算法每次迭代的参数估计存储到 {it:fname}{cmd:.stptrace} 中；
           {manhelp mi_ptrace MI: mi ptrace}{p_end}
{synoptline}


{synoptset 30}{...}
{marker initem}{...}
{synopthdr:init_em}
{synoptline}
{synopt: {opt ac}}使用所有可用案例来获取 EM 的起始值；默认为此{p_end}
{synopt: {opt cc}}仅使用完整案例来获取 EM 的起始值{p_end}
{synopt: {it:{help mi_impute_mvn##initmatlist:initmatlist}}}提供包含 EM 初始值的矩阵{p_end}
{synoptline}


{phang}
{marker initmatlist}{...}
{it:initmatlist} 的形式为 {it:{help mi_impute_mvn##initmat:initmat}} [{it:initmat} [...]]


{synoptset 30}{...}
{marker initmat}{...}
{synopthdr:initmat}
{synoptline}
{synopt: {opt b:etas(#|matname)}}指定系数向量；默认值为 {cmd:betas(0)}{p_end}
{synopt: {opt sd:s(#|matname)}}指定标准差向量；默认值为 {cmd:sds(1)}{p_end}
{synopt: {opt var:s(#|matname)}}指定方差向量；默认值为 {cmd:vars(1)}{p_end}
{synopt: {opt corr(#|matname)}}指定相关矩阵；默认值为 {cmd:corr(0)}{p_end}
{synopt: {opt cov(matname)}}指定协方差矩阵{p_end}
{synoptline}
{pstd}
在上述情况下，{it:#} 被理解为一个包含所有元素等于 {it:#} 的向量。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mi} {cmd:impute} {cmd:mvn} 使用多元正态回归填补一个或多个连续变量的缺失值。它适应任意缺失值模式。您可以通过指定 {cmd:by()} 选项在数据的不同子集上执行单独的插补。 {cmd:mi} {cmd:impute} {cmd:mvn} 使用迭代的 Markov 链 Monte Carlo (MCMC) 方法来插补缺失值。有关详细信息，请参见
{mansection MI miimputemvnRemarksandexamples:{it:备注和示例}}中的 {bf:[MI] mi impute mvn}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miimputemvnRemarksandexamples:备注和示例}

        {mansection MI miimputemvnMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:noconstant};请参见 {manhelp estimation_options R:估计选项}。

{phang}
{cmd:add()}, {cmd:replace}, {cmd:rseed()}, {cmd:double}, {cmd:by()};请参见 
{manhelp mi_impute MI:mi impute}。

{dlgtab:MCMC 选项}

{phang}
{opt burnin(#)} 指定初始烧入期的迭代次数。默认为 {cmd:burnin(100)}。此选项指定 MCMC 达到近似平稳状态所需的迭代次数，或者，等效地，收敛到稳定分布的迭代次数。所需的烧入期长度将取决于使用的起始值和数据中观察到的缺失数据模式。在得到插补之前，检查链的收敛性以确定合适的烧入期长度非常重要；请参见 
{mansection MI miimputemvnRemarksandexamplesConvergenceoftheMCMCmethod:{it:MCMC 方法的收敛性}}和示例
{mansection MI miimputemvnRemarksandexamplesex2:2}
以及
{mansection MI miimputemvnRemarksandexamplesex4:4} 中的 {bf:[MI] mi impute mvn}。
提供的默认值在许多情况下可能足够，但您负责确保进行足够的迭代。

{phang}
{opt burnbetween(#)} 指定在插补之间执行的 MCMC 迭代次数，其目的是减少插补值集之间的相关性。默认值为 {cmd:burnbetween(100)}。与 {cmd:burnin()} 一样，您负责确定进行足够的迭代。请参见 
{mansection MI miimputemvnRemarksandexamplesConvergenceoftheMCMCmethod:{it:MCMC 方法的收敛性}}和示例
{mansection MI miimputemvnRemarksandexamplesex2:2}
以及
{mansection MI miimputemvnRemarksandexamplesex4:4} 中的 {bf:[MI] mi impute mvn}。

{phang}
{opt prior(prior_spec)} 指定 MCMC 程序使用的先验分布。默认值为 {cmd:prior(uniform)}。当使用最大似然的参数估计变得不稳定（例如，在参数空间的边界上求取的估计）时，替代的先验分布是有用的，并且引入一些关于参数的先验信息可以稳定估计。

{pmore}
{it:prior_spec} 为

            {opt u:niform} {c |} {opt j:effreys} {c |} {opt r:idge,} {opt df(#)}

{phang3}
{cmd:uniform} 指定均匀（平坦）先验分布。在此先验分布下，后验分布与似然函数成正比，因此后验模式的估计与最大似然（ML）估计相同。

{phang3}
{cmd:jeffreys} 指定 Jeffreys 非信息性先验分布。当对模型参数没有强烈的先验知识时，可以使用此先验分布。

{phang3}
{cmd:ridge,} {opt df(#)} 指定具有自由度 {it:#} 的岭信息先验分布。此先验通过将非对角元素（相关性）平滑接近零，来引入关于协方差矩阵的一些信息。自由度 {cmd:df()} 可以是非整数，调节平滑度的程度 -- 此数字越大，相关性越接近于零。岭先验在当协方差矩阵估计不佳时（例如，由于缺失数据而无法可靠估计某些变量之间的相关性，从而导致估计协方差矩阵成为非正定时）稳定有关均值参数的推断是非常有用的（见 {help mi impute mvn##S1997:Schafer [1997, 155-157]} 了解详细信息）。

{phang}
{cmd:mcmconly} 指定 {cmd:mi} {cmd:impute} {cmd:mvn} 在烧入期内运行 MCMC，然后停止。此选项与 {cmd:savewlf()} 或 {cmd:saveptrace()} 结合使用，可在插补前检查 MCMC 的收敛性。当指定 {cmd:mcmconly} 时，不执行插补，因此在使用 {cmd:mi} {cmd:impute} {cmd:mvn,} {cmd:mcmconly} 时不需要 {cmd:add()} 或 {cmd:replace}，如果指定则会被忽略。选项 {cmd:mcmconly} 不允许与 {cmd:emonly} 一起使用。

{phang}
{cmd:initmcmc()} 可以指定为
{cmd:initmcmc(em} [{cmd:,} {it:em_options}]{cmd:)} 或
{cmd:initmcmc(}{it:initmatlist}{cmd:)}。

{pmore}
{cmd:initmcmc()} 为 MCMC 程序指定回归系数和多元正态分布的协方差矩阵的初始值。默认情况下，初始值由 EM 算法获得，即 {cmd:initmcmc(em)}。

{phang}
{cmd:initmcmc(em} [{cmd:,} {it:em_options}{cmd:)} 指定从 EM 获取 MCMC 程序的初始值。您可以通过指定 {it:em_options} 来控制 EM 估计。如果使用均匀先验，则初始估计与使用 EM 计算的 ML 估计相对应。否则，初始值是使用 EM 计算的后验模式的估计。

{marker em_options}{...}
{pmore}
{it:em_options} 为 

{phang3}
{opt iterate(#)} 指定要执行的 EM 最大迭代次数。默认为 {cmd:iterate(100)}。

{phang3}
{opt tolerance(#)} 指定 EM 算法的收敛容忍度。默认值为 {cmd:tolerance(1e-5)}。一旦两个连续所有模型参数的估计之间的最大相对变化小于 {it:#}，就声明收敛。

{phang3}
{cmd:init()} 可以指定为 {cmd:init(ac)}, {cmd:init(cc)}, 或
{opt init(matlist)}

{pmore3}
{cmd:init()} 指定 EM 算法使用的多元正态分布的回归系数和协方差矩阵的初始值。{cmd:init(ac)} 是默认。

{p 16 20 2}
{cmd:init(ac)} 指定使用所有可用案例获取初始估计。回归系数的初始值通过对每个插补变量和独立变量的单独线性回归获得。协方差矩阵对角线条目（方差）的初始值对应于残差均方误差的估计值。非对角线条目（相关性）设置为零。

{p 16 20 2}
{cmd:init(cc)} 指定使用仅完整案例获取初始估计。回归系数和协方差矩阵的初始值仅从适用于完整案例的多元回归中获得。

{p 16 20 2}
{opt init(initmatlist)} 指定为 EM 程序使用手动提供的初始值，在语法上与 {opt mcmcinit(initmatlist)} 相同，除了您指定 {opt init(initmatlist)}。

{phang3}
{cmd:nolog} 当使用 {cmd:emonly} 或 {cmd:emoutput} 时，抑制 EM 迭代日志。

{phang3}
{cmd:saveptrace(}{it:fname} [{cmd:, replace}]{cmd:)} 指定将 EM 算法的参数迹日志保存到名为 {it:fname}{cmd:.stptrace} 的文件中。如果文件已存在，则 {cmd:replace} 子选项指定覆盖现有文件。有关保存文件的详细信息及如何将其读入 Stata，请参见 {manhelp mi_ptrace MI:mi ptrace}。

{phang}
{opt initmcmc(initmatlist)}，其中 {it:initmatlist} 为

        {it:initmat} [{it:initmat} [...]]

{pmore}
指定手动提供的 MCMC 程序的初始值。

{pmore}
{it:initmat} 为

{phang2}
{opt betas(# | matname)} 指定回归系数的初始值。默认值为 {cmd:betas(0)}，表示所有回归系数的值为零。如果您指定 {opt betas(#)}，则 {it:#} 将用作所有回归系数的初始值。或者，您可以指定 Stata 矩阵的名称 {it:matname}，其中包含每个回归系数的值。{it:matname} 必须与指定模型的维度兼容。也就是说，可以是以下维度之一：p {it:x} q,
q {it:x} p, 1 {it:x} pq, 或 pq {it:x} 1，其中 p 是插补变量的数量，q 是独立变量的数量。

{phang2}
{opt sds(# | matname)} 指定标准差的初始值（协方差矩阵对角元素的平方根）。默认值为 {cmd:sds(1)}，这将所有标准差和方差均设置为一。如果您指定 {opt sds(#)}，则平方 {it:#} 将用作所有方差的初始值。或者，您可以指定 Stata 矩阵的名称 {it:matname}，其中包含单个值。{it:matname} 必须与指定模型的维度兼容。也就是说，可以是以下维度之一：1 {it:x} p 或 p {it:x} 1，其中 p 是插补变量的数量。此选项不能与 {cmd:cov()} 或 {cmd:vars()} 组合。{cmd:sds()} 选项可以与 {cmd:corr()} 组合使用，以提供协方差矩阵的初始值。

{phang2}
{opt vars(# | matname)} 指定方差（协方差矩阵的对角元素）的初始值。默认值为 {cmd:vars(1)}，这会将所有方差设置为一。如果您指定 {opt vars(#)}，则 {it:#} 将用作所有方差的初始值。或者，您可以指定 Stata 矩阵的名称 {it:matname}，其中包含单个值。{it:matname} 必须与指定模型的维度兼容。也就是说，可以是以下维度之一：1 {it:x} p 或 p {it:x} 1，其中 p 是插补变量的数量。此选项不能与 {cmd:cov()} 或 {cmd:sds()} 组合。{cmd:vars()} 选项可以与 {cmd:corr()} 组合使用，以提供协方差矩阵的初始值。

{phang2}
{opt corr(# | matname)} 指定相关性（相关矩阵的非对角元素）的初始值。默认值为 {cmd:corr(0)}，这会将所有相关性，因此协方差设置为零。如果您指定 {opt corr(#)}，则所有相关系数将设置为 {it:#}。或者，您可以指定 Stata 矩阵的名称 {it:matname}，其中包含单个值。{it:matname} 可以是一个边长为 p {it:x} p 的矩阵，并且对角元素均为一，也可以在一个维度为 p(p+1)/2 的向量中包含相应的下（上）三角矩阵，其中 p 是插补变量的数量。此选项不能与 {cmd:cov()} 组合。{cmd:corr()} 选项可以与 {cmd:sds()} 或 {cmd:vars()} 组合使用，以提供协方差矩阵的初始值。

{phang2}
{opt cov(matname)} 指定协方差矩阵的初始值。{it:matname} 必须包含 Stata 矩阵的名称。{it:matname} 可以是一个边长为 p {it:x} p 的矩阵，或者可以在一个维度为 p(p+1)/2 的向量中包含相应的下（上）三角矩阵，其中 p 是插补变量的数量。此选项不能与 {cmd:corr()}, {cmd:sds()}, 或 {cmd:vars()} 组合。

{phang}
{opt wlfwgt(matname)} 指定在计算最坏线性函数 (WLF) 时使用的权重（系数）。系数必须保存在一个 Stata 矩阵 {it:matname} 中，维度为 1 {it:x} d，其中 d=pq+p(p+1)/2，p 是插补变量的数量，q 是预测变量的数量。此选项在将 EM 估计的初始值提供给数据增强 (DA) 作为矩阵时非常有用。此选项还可用于获得其他线性函数的估计，而不是默认的 WLF。此选项不能与 {cmd:by()} 组合。

{phang}
{cmd:savewlf(}{it:{help filename_zh}} [{cmd:,} {cmd:replace}]{cmd:)} 指定将每次 MCMC 迭代的 WLF 估计保存到名为 {it:filename}{cmd:.dta} 的 Stata 数据集。如果文件已存在，则 {cmd:replace} 子选项指定覆盖现有文件。此选项对于监控 MCMC 的收敛性非常有用。 {cmd:savewlf()} 允许与 {cmd:initmcmc(em)} 结合使用，当初始值使用 EM 进行估计时，或与 {cmd:wlfwgt()} 一起使用。此选项不能与 {cmd:by()} 组合。

{phang}
{cmd:saveptrace(}{it:fname} [{cmd:, replace}]{cmd:)} 指定将 MCMC 的参数迹日志保存在名为 {it:fname}{cmd:.stptrace} 的文件中。如果该文件已存在，{cmd:replace} 子选项指定要覆盖现有文件。有关保存文件的详细信息及如何将其读入 Stata，请参见 {manhelp mi_ptrace MI:mi ptrace}。此选项对监控 MCMC 的收敛性非常有用。此选项不能与 {cmd:by()} 组合。

{dlgtab:报告}

{phang}
{cmd:dots}, {cmd:noisily}, {cmd:nolegend};
请参见 {manhelp mi_impute MI:mi impute}。此外，{cmd:noisily} 是 {cmd:emoutput} 的同义词。{cmd:nolegend} 抑制可能在使用 {cmd:by()} 选项时出现的组图例。它是 {cmd:by(, nolegend)} 的同义词。

{phang}
{cmd:emlog} 指定显示 EM 迭代日志。除非指定了 {cmd:emonly} 或 {cmd:emoutput}，否则不会显示 EM 迭代日志。

{phang}
{cmd:emoutput} 指定显示 EM 输出。当使用 {cmd:emonly} 时，隐含为此选项。

{phang}
{cmd:mcmcdots} 指定显示所有 MCMC 迭代为点。

{phang}
{cmd:alldots} 指定除插补点以外，显示所有中间迭代作为点。这些迭代包括 EM 迭代和 MCMC 烧入迭代。此选项隐含 {cmd:mcmcdots}。

{phang}
{cmd:nolog} 抑制通常默认显示的 EM 或 MCMC 所有输出。

{dlgtab:高级}

{phang}
{cmd:force};见 {manhelp mi_impute MI:mi impute}。

{phang}
{cmd:emonly} [{cmd:(}{it:{help mi_impute_mvn##em_options:em_options}}{cmd:)}] 指定 {cmd:mi impute mvn} 执行 EM 估计然后停止。您可以通过指定 {it:em_options} 来控制 EM 过程。此选项在初步阶段很有用，以获取有关烧入期长度的见解以及选择先验规范。没有插补执行，因此在使用 {cmd:mi} {cmd:impute} {cmd:mvn,} {cmd:emonly} 时不需要 {cmd:add()} 或 {cmd:replace}，如果指定则会被忽略。选项 {cmd:emonly} 不允许与 {cmd:mcmconly} 一起使用。

{pstd}
以下选项适用于 {opt mi impute}，但在对话框中未显示：

{phang}
{cmd:noupdate};请见 {manhelp noupdate_option MI:noupdate option}。


{marker examples}{...}
{title:示例：多元正态插补}

{pstd}
设置
{p_end}
{phang2}
{cmd:. webuse mheart8s0}
{p_end}

{pstd}描述 {cmd:mi} 数据{p_end}
{phang2}
{cmd:. mi describe}
{p_end}

{pstd}
使用多元正态回归插补 {cmd:age} 和 {cmd:bmi}{p_end}
{phang2}
{cmd:. mi impute mvn age bmi = attack smokes hsgrad female, add(10)}
{p_end}


{title:示例：插补变换变量}

{pstd}设置{p_end}
{phang2}{cmd:. webuse mhouses1993, clear}{p_end}

{phang2}
创建包含 {cmd:age} 和 {cmd:tax} 的对数变量{p_end}
{phang2}
{cmd:. gen lnage = ln(age)}
{p_end}
{phang2}
{cmd:. gen lntax = ln(tax)}
{p_end}

{p 6 6 2}声明数据并将变量 {cmd:lnbmi} 和 {cmd:lntax} 注册为插补变量{p_end}
{phang2}
{cmd:. mi set mlong }
{p_end}
{phang2}
{cmd:. mi register imputed lnage lntax}
{p_end}

{pstd}描述 {cmd:mi} 数据{p_end}
{phang2}
{cmd:. mi describe}
{p_end}

{pstd}
插补 ln({cmd:age}) 和 ln({cmd:tax}){p_end}
{phang2}
{cmd:. mi impute mvn lnage lntax = price sqft nfeatures ne custom corner, add(20)}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mi impute mvn} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(M)}}插补的总数{p_end}
{synopt:{cmd:r(M_add)}}添加的插补数量{p_end}
{synopt:{cmd:r(M_update)}}更新的插补数量{p_end}
{synopt:{cmd:r(k_ivars)}}插补变量的数量{p_end}
{synopt:{cmd:r(burnin)}}烧入期的迭代数量{p_end}
{synopt:{cmd:r(burnbetween)}}插补之间的烧入迭代数量{p_end}
{synopt:{cmd:r(df_prior)}}先验自由度（仅在 {cmd:prior(ridge)} 时存储）{p_end}
{synopt:{cmd:r(N_em)}} EM 使用的观测数（包括省略的缺失观测数）{p_end}
{synopt:{cmd:r(N_e_em)}} EM 估计使用的观测数（排除省略的缺失观测数）{p_end}
{synopt:{cmd:r(N_mis_em)}} EM 估计样本内的不完全观测数{p_end}
{synopt:{cmd:r(N_S_em)}}唯一缺失值模式的数量{p_end}
{synopt:{cmd:r(niter_em)}} EM 收敛所需的迭代次数{p_end}
{synopt:{cmd:r(llobs_em)}}观察到的对数似然（存 ذخ于 {cmd:prior(uniform)}){p_end}
{synopt:{cmd:r(lpobs_em)}}观察到的对数后验（存储于其他先验）{p_end}
{synopt:{cmd:r(converged_em)}} EM 的收敛标志{p_end}
{synopt:{cmd:r(emonly)}}{cmd:1} 如果仅执行 EM 估计，{cmd:0} 否则{p_end}
{synopt:{cmd:r(mcmconly)}}{cmd:1} 如果仅执行 MCMC 不插补数据，{cmd:0} 否则{p_end}
{synopt:{cmd:r(N_g)}}插补组的数量（如果未指定 {cmd:by()} 则为 {cmd:1}）{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:r(method)}}插补方法的名称（{cmd:mvn}）{p_end}
{synopt:{cmd:r(ivars)}}插补变量的名称{p_end}
{synopt:{cmd:r(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:r(prior)}}先验分布{p_end}
{synopt:{cmd:r(init_mcmc)}}用于 MCMC 的初始值类型（{cmd:em} 或 {cmd:user}）{p_end}
{synopt:{cmd:r(ivarsorder)}}在计算中使用的插补变量名称的顺序{p_end}
{synopt:{cmd:r(init_em)}} EM 使用的初始值类型 ({cmd:ac}, {cmd:cc}, 或 {cmd:user}){p_end}
{synopt:{cmd:r(by)}}在 {cmd:by()} 中指定的变量名称{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt:{cmd:r(N)}}每组（按变量）插补样本中的观察数量{p_end}
{synopt:{cmd:r(N_complete)}}每组（按变量）插补样本中的完整观察数量{p_end}
{synopt:{cmd:r(N_incomplete)}}每组（按变量）插补样本中的不完整观察数量{p_end}
{synopt:{cmd:r(N_imputed)}}每组（按变量）插补样本中的插补观察数量{p_end}
{synopt:{cmd:r(Beta0)}}用于 DA 的回归系数的初始值{p_end}
{synopt:{cmd:r(Sigma0)}}用于 DA 的初始协方差矩阵{p_end}
{synopt:{cmd:r(wlf_wgt)}}用于 WLF 的系数（与 {cmd:initmcmc(em)} 一起存储或如果使用 {cmd:wlfwgt()}）{p_end}
{synopt:{cmd:r(Beta_em)}}EM 的回归系数的估计值{p_end}
{synopt:{cmd:r(Sigma_em)}}EM 的估计方差协方差矩阵{p_end}
{synopt:{cmd:r(Beta0_em)}}用于 EM 的回归系数的初始值{p_end}
{synopt:{cmd:r(Sigma0_em)}}用于 EM 的初始方差协方差矩阵{p_end}
{synopt:{cmd:r(N_pat)}}每个缺失值模式的观察数量的最小值、平均值和最大值{p_end}
{p2colreset}{...}

{pstd}
{cmd:r(N_pat)} 和带有 {cmd:_em} 后缀的结果仅在使用 EM 算法时存储（与 {cmd:emonly} 或 {cmd:initmcmc(em)}）。

{marker reference}{...}
{title:参考文献}

{marker S1997}{...}
{phang}
Schafer, J. L. 1997. {it:分析不完整的多元数据}。
佛罗里达州博卡拉顿：Chapman & Hall/CRC。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_impute_mvn.sthlp>}