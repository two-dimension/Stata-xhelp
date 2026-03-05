{smcl}
{* *! version 1.2.11  12mar2019}{...}
{viewerdialog power "dialog power_dlg"}{...}
{vieweralsosee "[PSS-2] power" "mansection PSS-2 power"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] Intro (power)" "mansection PSS-2 Intro(power)"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{viewerjumpto "Syntax" "power_zh##syntax"}{...}
{viewerjumpto "Menu" "power_zh##menu"}{...}
{viewerjumpto "Description" "power_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_zh##options"}{...}
{viewerjumpto "Examples" "power_zh##examples"}{...}
{viewerjumpto "Stored results " "power_zh##results"}
{help power:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[PSS-2] power} {hline 2}}假设检验的效能和样本量分析{p_end}
{p2col:}({mansection PSS-2 power:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
计算样本量

{p 8 16 2}
{cmd:power} {help power##method:{it:method}}
...
[{cmd:,} {opth p:ower(numlist)}
{help power##power_options:{it:power_options}} ...]


{pstd}
计算效能

{p 8 16 2}
{cmd:power} {help power##method:{it:method}}
...{cmd:,} {opth n(numlist)}
[{help power##power_options:{it:power_options}} ...]


{pstd}
计算效应大小和目标参数

{p 8 16 2}
{cmd:power} {help power##method:{it:method}}
    ...{cmd:,} {opth n:(numlist)} {opth p:ower(numlist)}
    [{help power##power_options:{it:power_options}} ...]


{marker method}{...}
{synoptset 30 tabbed}{...}
{synopthdr :method}
{synoptline}
{syntab:单样本}
{synopt :{helpb power onemean:onemean}}单样本均值检验（单样本t检验）{p_end}
{synopt :{helpb power oneproportion:{ul:oneprop}ortion}}单样本比例检验{p_end}
{synopt :{helpb power onecorrelation:{ul:onecorr}elation}}单样本相关检验{p_end}
{synopt :{helpb power onevariance:{ul:onevar}iance}}单样本方差检验{p_end}

{syntab:两独立样本}
{synopt :{helpb power twomeans:twomeans}}两样本均值检验（双样本t检验）{p_end}
{synopt :{helpb power twoproportions:{ul:twoprop}ortions}}两样本比例检验{p_end}
{synopt :{helpb power twocorrelations:{ul:twocorr}elations}}两样本相关检验{p_end}
{synopt :{helpb power twovariances:{ul:twovar}iances}}两样本方差检验{p_end}

{syntab:两配对样本}
{synopt :{helpb power pairedmeans:{ul:pairedm}eans}}配对均值检验（配对t检验）{p_end}
{synopt :{helpb power pairedproportions:{ul:pairedpr}oportions}}配对比例检验（McNemar检验）{p_end}

{syntab:方差分析}
{synopt :{helpb power oneway:oneway}}单因素方差分析{p_end}
{synopt :{helpb power twoway:twoway}}双因素方差分析{p_end}
{synopt :{helpb power repeated:repeated}}重复测量方差分析{p_end}

{syntab:线性回归}
{synopt :{helpb power oneslope:oneslope}}简单线性回归中的斜率检验{p_end}
{synopt :{helpb power rsquared:{ul:rsq}uared}}多元线性回归中的R^2检验{p_end}
{synopt :{helpb power pcorr:pcorr}}多元线性回归中的部分相关检验{p_end}

{syntab:列联表}
{synopt :{helpb power cmh:cmh}}Cochran-Mantel-Haenszel检验（分层2 x 2表）{p_end}
{synopt :{helpb power mcc:mcc}}配对病例对照研究{p_end}
{synopt :{helpb power trend:trend}}Cochran-Armitage趋势检验（线性趋势在J x 2表中）{p_end}

{syntab:生存分析}
{synopt :{helpb power cox:cox}}Cox比例风险模型{p_end}
{synopt :{helpb power exponential:{ul:exp}onential}}两样本指数检验{p_end}
{synopt :{helpb power logrank:{ul:log}rank}}Log-rank检验{p_end}

{syntab:聚类随机设计（CRD）}
{synopt :{helpb power onemean cluster:onemean, cluster}}CRD中的单样本均值检验{p_end}
{synopt :{helpb power oneproportion cluster:{ul:oneprop}ortion, cluster}}CRD中的单样本比例检验{p_end}
{synopt :{helpb power twomeans cluster:twomeans, cluster}}CRD中的两样本均值检验{p_end}
{synopt :{helpb power twoproportions cluster:{ul:twoprop}ortions, cluster}}CRD中的两样本比例检验{p_end}
{synopt :{helpb power logrank cluster:{ul:log}rank, cluster}}CRD中的Log-rank检验{p_end}

{syntab:用户定义的方法}
{synopt :{help power usermethod:{it:usermethod}}}将您自己的方法添加到{cmd:power}{p_end}
{synoptline}


{marker power_options}{...}
{synopthdr :power_options}
{synoptline}
{syntab:主要}
包括帮助 pss_twotestmainopts1
{synopt: {opt nfrac:tional}}允许分数样本量{p_end}
包括帮助 pss_testmainopts3

{syntab:表}
{synopt: [{cmd:{ul:no}}]{cmdab:tab:le}[{cmd:(}{it:{help power opttable##tablespec:tablespec}}{cmd:)}]}抑制表格或以表格形式显示结果；见{helpb power table:[PSS-2] power, table}{p_end}
包括帮助 pss_otheropts

{syntab:迭代}
{synopt :{opt init(#)}}估计参数的初始值；默认为特定方法的默认值{p_end}
包括帮助 pss_iteropts

包括帮助 pss_reportopts
{synoptline}
包括帮助 pss_numlist
{p 4 6 2}
选项 {cmd:n1()}, {cmd:n2()}, {cmd:nratio()} 和
{cmd:compute()}仅适用于两独立样本方法。{p_end}
{p 4 6 2}
迭代选项仅适用于需要迭代的计算。
{p_end}
{p 4 6 2}{cmd:notitle}不会出现在对话框中。{p_end}


包括帮助 menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power}命令对于研究规划非常有用。它执行使用假设检验形成对总体参数推断的效能和样本量分析。您可以在已知效能和效应大小的情况下计算样本量，在已知样本量和效应大小的情况下计算效能，或在已知效能和样本量的情况下计算最小可探测效应大小及相应的目标参数。您可以在表格中显示结果
({help power_opttable_zh:[PSS-2] power, table})以及图表中
({help power_optgraph_zh:[PSS-2] power, graph})。  

{pstd}
有关置信区间的精确度和样本量分析，请参见
{help ciwidth_zh:[PSS-3] ciwidth}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-2 powerRemarksandexamples:备注和示例}

        {mansection PSS-2 powerMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{marker mainopts}{...}
{dlgtab:主要}

{phang}
{opth alpha(numlist)}设置检验的显著性水平。默认值为 {cmd:alpha(0.05)}。

{phang}
{opth power(numlist)}设置检验的效能。默认值为 {cmd:power(0.8)}。如果 {cmd:beta()} 被指定，则该值被设置为 1 - {cmd:beta()}。只能指定 {cmd:power()} 或 {cmd:beta()} 之一。

{phang}
{opth beta(numlist)}设置检验的二型错误概率。默认值为 {cmd:beta(0.2)}。如果 {cmd:power()} 被指定，则该值被设为 1 - {cmd:power()}。只能指定 {cmd:beta()} 或 {cmd:power()} 之一。

包括帮助 pss_twosamplesdes

{pmore}
另见 {cmd:n()}, {cmd:n1()}, {cmd:n2()}, {cmd:nratio()} 和 {cmd:compute()} 在双样本检验中的描述和选项使用，详见 {manlink PSS-4 不平衡设计}。

{phang}
{cmd:direction(upper}|{cmd:lower)} 指定效应的方向，用于效应大小的确定。对于大多数方法，默认值为 {cmd:direction(upper)}，这意味着假设参数的值大于假设值。对于生存方法，默认值为 {cmd:direction(lower)}，这意味着假设值小于假设值。

{phang}
{cmd:onesided} 表示单尾检验。默认值为双尾。

{phang}
{cmd:parallel} 请求在至少两个研究参数的数字列表上并行进行计算，这些参数作为命令参数、带星号的选项或者两者同时指定。即，当指定 {opt parallel} 时，第一个计算使用每个数字列表的第一个值，第二个计算使用第二个值，依此类推。如果指定的数字列表大小不同，将在剩余计算中使用每个较短列表的最后一个值。默认情况下，结果是在所有数字列表的所有组合上计算的。

{pmore}
例如，设 a_1 和 a_2 为一个研究参数的值列表，而 b_1 和 b_2 为另一个研究参数的值列表。默认情况下，{opt power} 将计算两个研究参数的两个值的所有可能组合的结果：（a_1,b_1），（a_1,b_2），（a_2,b_1）和（a_2,b_2）。如果指定了 {opt parallel}，则 {opt power} 将仅计算两种组合的结果：（a_1,b_1）和（a_2,b_2）。

{dlgtab:表}

{phang}
{cmd:notable}, {cmd:table} 和 {cmd:table()} 控制结果是否以表格格式显示。如果任何数字列表包含多个元素，则默认隐含 {cmd:table}。当指定 {cmd:graph} 或 {cmd:graph()} 选项时，将隐含 {cmd:notable}。{cmd:table()} 用于生成自定义表格。有关详细信息，请参见 {help power_opttable_zh:[PSS-2] power, table}。

{marker saving()}{...}
{phang}
{cmd:saving(}{it:{help filename_zh}} [{cmd:, replace}]{cmd:)} 创建一个Stata数据文件 ({cmd:.dta} 文件)，用包含表格值的变量名称与显示的 
{help power_opttable##column:{it:column}s} 对应。
{cmd:replace} 指定如果 {it:filename} 存在则覆盖它。
{cmd:saving()} 仅适用于表格输出。

{dlgtab:图形}

{phang}
{cmd:graph} 和 {cmd:graph()} 生成图形输出；有关详细信息，请参见 {help power_optgraph_zh:[PSS-2] power, graph}。

{pstd}
以下选项控制 {cmd:power} 命令用于求解非线性方程的迭代过程。

{marker iteropts}{...}
{dlgtab:迭代}

{phang}
{opt init(#)} 指定估计参数的初始值。每个 {cmd:power} 方法设置自己的默认值。有关详细信息，请参见该方法的文档条目。

{phang}
{opt iterate(#)} 指定Newton方法的最大迭代次数。默认值为 {cmd:iterate(500)}。

{phang}
{opt tolerance(#)} 指定用于确定后续参数估计是否已收敛的容忍度。默认值为 {cmd:tolerance(1e-12)}。有关详细信息，请参见 {mansection M-5 solvenl()备注和示例收敛标准:{it:收敛标准}} 
在 {bf:[M-5] solvenl()} 中。

{phang}
{opt ftolerance(#)} 指定用于确定非线性方程的拟议解是否足够接近0的容忍度，基于平方欧几里得距离。默认值为 {cmd:ftolerance(1e-12)}。有关详细信息，请参见 {mansection M-5 solvenl()备注和示例收敛标准:{it:收敛标准}}
在 {bf:[M-5] solvenl()} 中。

{phang}
{cmd:log} 和 {cmd:nolog} 指定是否显示迭代日志。默认情况下，抑制迭代日志。只能指定 {cmd:log}、{cmd:nolog}、{cmd:dots} 或 {cmd:nodots} 之一。

{phang}
{cmd:dots} 和 {cmd:nodots} 指定是否为每次迭代显示一个点。默认情况下抑制迭代点。只能指定 {cmd:dots}、{cmd:nodots}、{cmd:log} 或 {cmd:nolog} 之一。

{marker reportopts}{...}
{pstd}
以下选项在 {cmd:power} 中可用，但在对话框中未显示：

{phang}
{cmd:notitle} 防止命令标题显示。  


{marker examples}{...}
{title:示例}

    {title:示例：单样本均值检验}

{pstd}
    计算假设Ho: mu=2 与 Ha: mu=2.5的双尾检验要求的样本量，假设标准差为0.8，显著性水平为5%（默认值）和效能为0.80（也是默认值）{p_end}
{phang2}{cmd:. power onemean 2 2.5, sd(0.8)}
    
{pstd}
    计算前一个示例中的检验效能，假设样本量为50{p_end}
{phang2}{cmd:. power onemean 2 2.5, sd(0.8) n(50)}
       
{pstd}
    与上面相同，但以表格形式报告输出{p_end}
{phang2}{cmd:. power onemean 2 2.5, sd(0.8) n(50) table}
       
{pstd}
    生成一个表格，显示样本量为25、50和100时检验的效能，显著性水平为1%（0.01）{p_end}
{phang2}{cmd:. power onemean 2 2.5, sd(0.8) n(25 50 100) alpha(0.01)}

{pstd}
    计算单尾检验的所需样本量{p_end}
{phang2}{cmd:. power onemean 2 2.5, sd(0.8) onesided}


    {title:示例：双样本均值检验}

{pstd}
    计算双尾双样本均值检验的所需样本量，假设对照组均值为12，实验组均值为16，显著性水平为5%，所需效能为80%；假设两组的标准差为5{p_end}
{phang2}{cmd:. power twomeans 12 16, sd(5)}
       
{pstd}
    与上面相同，但假设对照组标准差为5，实验组标准差为7{p_end}
{phang2}{cmd:. power twomeans 12 16, sd1(5) sd2(7)}
       
{pstd}
    与上面相同，假设我们的实验组是对照组的一半大小{p_end}
{phang2}{cmd:. power twomeans 12 15, sd1(5) sd2(7) nratio(0.5)}
       
{pstd}
    与第一个示例相同，使用 {cmd:diff()} 选项来指定在Ha下的均值差异{p_end}
{phang2}{cmd:. power twomeans 12, sd(5) diff(4)}


    {title:示例：ANOVA}

{pstd}
    考虑对三组单因素ANOVA模型的组均值平等的整体 {it:F} 检验进行效能和样本量分析。对于效能和样本量计算，假定组均值为260、289和295；误差方差假设为4900。显著性水平设定为5%。

{pstd}
    在已知效能为80%的情况下计算所需样本量，默认{p_end}
{phang2}{cmd:. power oneway 260 289 295, varerror(4900)}

{pstd}
    在样本量为300的情况下计算效能{p_end}
{phang2}{cmd:. power oneway 260 289 295, n(300) varerror(4900)}

{pstd}
    在样本量为300的情况下，均匀分配到3组中，计算可探测的最小效应大小，以效能为80%{p_end}
{phang2}{cmd:. power oneway, n(300) power(0.8) ngroups(3)}

{pstd}
    指定误差方差计算相应的组间方差{p_end}
{phang2}{cmd:. power oneway, n(300) power(0.8) ngroups(3) varerror(4900)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:power} 将以下内容存储在 {cmd:r()}中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
包括帮助 pss_rrestwotest_sc
包括帮助 pss_rrestab_sc
{synopt:{cmd:r(init)}}估计参数的初始值{p_end}
包括帮助 pss_rresiter_sc

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}指定的方法名称{p_end}
包括帮助 pss_rrestest_mac
包括帮助 pss_rrestab_mac

{p2col 5 20 24 2: 矩阵}{p_end}
包括帮助 pss_rrestab_mat
{p2colreset}{...}

{pstd}
有关存储结果的完整列表，请参见方法特定手册条目中的{it:存储结果}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power.sthlp>}