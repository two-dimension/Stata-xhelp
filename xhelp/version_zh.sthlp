{smcl}
{* *! version 1.12.7  30apr2019}{...}
{vieweralsosee "[P] version" "mansection P version"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] display" "help display_zh"}{...}
{vieweralsosee "[R] which" "help which_zh"}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}{...}
{viewerjumpto "语法" "version_zh##syntax"}{...}
{viewerjumpto "描述" "version_zh##description"}{...}
{viewerjumpto "PDF文档链接" "version_zh##linkspdf"}{...}
{viewerjumpto "选项" "version_zh##options"}{...}
{viewerjumpto "备注" "version_zh##remarks"}{...}
{viewerjumpto "版本变更摘要" "version_zh##summary"}
{help version:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[P] version} {hline 2}}版本控制{p_end}
{p2col:}({mansection P version:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    显示命令解释器设置的版本号

	{cmdab:vers:ion}


{phang}
    以交互方式或在 do 文件中（但不在 ado 文件或由 {help program_zh} 定义的程序中使用）

{p 9 9 2}
        将命令解释器设置为版本 {it:#} 
        并将其他功能，如随机数生成器（RNG），设置为版本 {it:#}

	    {cmdab:vers:ion} {it:#}

	    {cmdab:vers:ion} {it:#}{cmd::} {it:command}


    在 ado 文件或程序中（但不是以交互方式或在 do 文件中）

{p 9 9 2}
	将命令解释器设置为版本 {it:#}，但不将其他功能，如 RNG，设置为版本 {it:#}

	    {cmdab:vers:ion} {it:#} [{cmd:,} {cmd:born(}{it:ddMONyyyy}{cmd:)}]

	    {cmdab:vers:ion} {it:#} [{cmd:,} {cmd:born(}{it:ddMONyyyy}{cmd:)}]{cmd::}  {it:command}


    无处不在（在交互式中、在 do 文件中、在 ado 文件中以及程序中）

        仅将其他功能，如 RNG，设置为版本 {it:#}

	    {cmdab:vers:ion} {it:#}{cmd:,} {cmd:user}

	    {cmdab:vers:ion} {it:#}{cmd:,} {cmd:user}{cmd::}  {it:command}


{marker description}{...}
{title:描述}

{pstd}
{cmd:version} 无参数时显示当前命令解释器设置的内部版本号。它可以在交互式、do 文件或 ado 文件中使用。

{pstd}
{cmd:version} {it:#} 将命令解释器和其他功能（如随机数生成器）设置为版本 {it:#}。{cmd:version} {it:#} 用于确保旧程序在较新版本的 Stata 上正确运行，并确保新程序在未来版本的 Stata 上正确运行。

{pstd}
{cmd:version} {it:#}{cmd::} 在版本 {it:#} 下执行 {it:command} 然后将版本重置为在 {cmd:version} {it:#}{cmd::} ... 命令给出之前的状态。

{pstd}
有关外部版本控制的信息，请参见 {manhelp which R}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P versionRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:born(}{it:ddMONyyyy}{cmd:)} 通常很少指定，表示 Stata 可执行文件必须在 {it:ddMONyyyy}（例如，13Jul2013）或之后的日期。StataCorp 和用户有时会在 ado 文件中编写程序，要求 Stata 可执行文件的日期是特定的。{cmd:born()} 选项使我们或 ado 文件的作者能够确保需要某个更新可执行文件的 ado 代码不会在较旧的可执行文件上运行。

{pmore}
    通常情况只需版本号，因此您不需要使用 {cmd:born()} 选项。您在少数情况下使用 {cmd:born()} 是因为您利用了在该版本 Stata 的初始发布后添加到可执行文件的功能。请参见 {help whatsnew_zh} 浏览当前版本 Stata 自最初发布以来添加的功能。

{marker userversion}{...}
{phang}
{cmd:user} 使得 {cmd:version} 可以回溯 Stata 的其他功能。例如，Stata 的随机数生成器（RNG）在每个 Stata 版本中都会变化并得到改进。RNG 被认为受到用户版本控制，而不是版本控制。

{pmore}
如果您在交互式或您的 do 文件中输入 {cmd:version} {it:#}， Stata 不仅理解旧的语法，还会回溯（移除）在 {it:#} 之后进行的改进，例如对 RNG 的改进。您不需要指定 {cmd:user} 选项。现代版本的 Stata 仍然会产生与过去相同的结果。

{pmore}
程序员：当您在程序和 ado 文件中输入 {cmd:version} {it:#} 时， Stata 不会回溯其他改进。如果由于某种原因您希望强制其他改进也回溯，请指定 {cmd:user} 选项。选项 {cmd:user} 很少使用，只有那些需要测试 Stata 是否正常工作的人（例如，StataCorp 的开发人员）才会使用。

{marker remarks}{...}
{title:备注}

{pstd}
为当前版本 Stata 编写的所有程序和 do 文件应在第一个可执行语句中包含 {cmd:version {ccl stata_version}}。

{pstd}
为早期版本编写的程序和 do 文件应在顶部包含适当的 {cmd:version} 语句。

{pstd}
Stata 不断改进，这意味着为旧版本编写的程序和 do 文件可能会停止工作。解决办法是在您编写的程序和 do 文件顶部指定您使用的 Stata 版本，例如，

	{hline 33} begin myprog.do {hline 3}
	{cmd:version {ccl stata_version}}

	use mydata, clear
	regress ...
	...
	{hline 35} end myprog.do {hline 3}


	{hline 31} begin example.ado {hline 3}
	program myprog
		{cmd:version {ccl stata_version}}
		...
	end
	{hline 33} end example.ado {hline 3}

{pstd}
未来的 Stata 版本将继续正确解释您的程序。

{pstd}
所有由 StataCorp 发布的程序都包含版本语句，因此，即使 Stata 发生变更，旧程序也能正常工作。


{marker summary}{...}
{title:版本变更摘要}

{pstd}
多年来，Stata 已进行了许多更改。大多数更改无关紧要，因为即使没有正确设置版本，旧程序也不会被破坏。然而，某些 Stata 的更改会破坏旧程序，除非将版本号回退到相应的版本号。以下列表列出了这些重要的更改。这个列表可能只对那些试图将旧程序更新为新版本语法的人员感兴趣——大多数人会相应地设置版本号，而不必担心这些问题。


    {title:如果您将版本设置为低于 16.0}

{phang2}1.  当创建变量、矩阵或标量时，Stata 允许使用名称 {cmd:_se}。

{phang2}2.  {helpb margins saving:margins} 与 {cmd:saving()} 选项一起使用时，将使用名为 {cmd:_se} 的变量保存估计的边际值的标准误差，而不是 {cmd:_se_margin}。

{phang2}3.  {help list_zh} 将在未指定时为因子变量分配默认基准水平。

{phang2}4.  {help summarize_zh} 将在未指定时为因子变量分配默认基准水平。

{phang2}5.  {help mean_zh}、{help proportion_zh}、{help ratio_zh} 和 {help total_zh} 不会使用或支持因子变量表示法。
    使用未观测的变量组合标识的空单元将被删除。

{phang2}6.  {help proportion_zh} 将允许先前文档中的 {cmd:missing} 选项。此选项将缺失值视为有效类别，而不是从分析中省略。

{phang2}7.  {help mean_zh} 将不再发布 {cmd:e(sd)}，即标准差估计的向量。

{phang2}8.  {helpb bayesstats ess} 将不在标题中显示效率摘要，例如最小效率、平均效率和模型参数的最大效率。

{phang2}9.  Stata 函数 {helpb colnumb()} 和 {helpb rownumb()}、扩展宏函数 {helpb macro##macro_fcn:colnumb} 和 {helpb macro##macro_fcn:rownumb} 以及 Mata 函数 {help mf_st_ms_utils_zh:st_matrixcolnumb()} 和 {help mf_st_ms_utils_zh:st_matrixrownumb()} 不再支持对矩阵条目元素的缩写。

{phang2}10. {helpb import delimited} 在指定选项 {cmd:bindquote(strict)} 时没有行数限制。

{phang2}11. {cmd:c(changed)} 不会更新以下任何内容：

                - 数据集或变量的特征修改
                - 数据集或变量的注释修改
                - 数据集或变量标签的修改
                - 变量格式的修改
                - 在数据集上使用 {help compress_zh} 导致变量存储类型的变化

{phang2}12. {help hetprobit_zh} 将在输出和矩阵条目中将对数标准差标记为 {cmd:lnsigma2}，而非 {cmd:lnsigma}。

{phang2}13. {help bayesmh_zh} 和 {help bayes_zh} 前缀命令不会在模拟数据集中保存变量 {cmd:_chain}。变量 {cmd:_chain} 用于指示链号，即使仅有一条链时也会存在。

{phang2}14. {help total_zh} 将接受 {helpb aweight}s。
	S{cmd:aweight}s 支持已从此命令中删除，因为 {cmd:aweight} 数据的解释对总计没有意义。 {cmd:total} 从未被文档说明支持 {cmd:aweight}s，但在 Stata 16 之前接受过它们。

{phang2}15. {help arfima_zh} 残差方差参数在 {bf:e(b)} 和 {bf:e(V)} 中标记为 {bf:sigma2:_cons}。

{phang2}16. {helpb mgarch ccc}、{helpb mgarch dcc} 和 {helpb mgarch vcc} 的相关参数在 {bf:e(b)} 和 {bf:e(V)} 中标记为 {bf:corr(}{it:level_i}{bf:,}{it:level_j}{bf:):_cons}。
DCC 和 VCC 的 lambda 参数标记为 {bf:Adjustment:lambda}{it:i}。
t-分布的自由度参数标记为 {bf:df:_cons}。

{phang2}17. {helpb mgarch dvech} 中的 sigma 参数在 {bf:e(b)} 和 {bf:e(V)} 中标记为 {bf:Sigma0:_cons}。t-分布的自由度参数标记为 {bf:df:_cons}。

{phang2}18. {help svar_zh} 矩阵 {bf:A}、{bf:B} 和 {bf:C} 的参数在 {bf:e(b)} 和 {bf:e(V)} 中标记为 
	{bf:a_}{it:i}{bf:_}{it:j}{bf::_cons}、{bf:b_}{it:i}{bf:_}{it:j}{bf::_cons} 和
	{bf:c_}{it:i}{bf:_}{it:j}{bf::_cons}。

{phang2}19. {help sspace_zh} 自变量和状态方差成分参数在 {bf:e(b)} 和 {bf:e(V)} 中标记为 
	{bf:var(}{it:depvar_i}{bf:):_cons} 和 
	{bf:var(}{it:state_i}{bf:):_cons}。

{phang2}20. {help dfactor_zh} 依赖变量和因子方差成分参数在 {bf:e(b)} 和 {bf:V(b)} 中标记为 
	{bf:var(}{it:depvar_i}{bf:):_cons} 和 
	{bf:var(}{it:factor_i}{bf:):_cons}。

{phang2}21. {help ivprobit_zh} 和 {help ivtobit_zh} 的反正切相关和对数标准差参数在 {bf:e(b)} 和 {bf:e(V)} 中标记为 {bf:athrho}{it:i}{bf:_}{it:j}{bf::_cons} 和 {bf:lnsigma_}{it:j}{bf::_cons}。

{phang2}22. {help bayesmh_zh} 和 {help bayes_zh} 前缀命令不标记 MCMC 数据集中的变量。

{phang2}23. {help nlogit_zh} 中的不相似度和包含值参数在 {bf:e(b)} 和 {bf:e(V)} 中被标记为 {it:value_label}{bf:_tau:_cons}。

{phang2}24. {helpb matrix coleq} 和 {helpb matrix roweq} 的自由参数规范解释为 {cmd:/}{it:parm}，成为 {cmd:/:}{it:parm} 的快捷方式。

    {title:如果您将版本设置为低于 15.1}

{phang2}1.  {helpb esizei} 在 ANOVA 后的 F 测试中进行了以下更改：
	{p 12 15}a. 使用 "Omega-Squared" 标记 epsilon-squared，并在表中报告天真的置信限制。{p_end}
	{p 12 15}b. 不再报告现代的 omega-squared 统计量。{p_end}

{phang2}2.  {helpb estat esize} 进行了以下更改：
	{p 12 15}a. 使用 "Omega-Squared" 标记 epsilon-squared，并且在指定 {opt omega} 选项时，会与置信限制一起报告。{p_end}
	{p 12 15}b. 不允许使用 {opt epsilon} 选项。{p_end}

{phang2}3.  {help merge_zh} 将在评估 {cmd:keep()} 选项之前评估 {cmd:assert()} 选项；因此，在 {cmd:keep()} 删除了某些观察结果而可能违反指定的 {cmd:assert()} 选项的情况下，将不会导致错误。

{phang2}4.  {help drop_zh} 和 {helpb keep} 不会清除存储在 {cmd:r()} 中的结果。  它们不会存储 {cmd:r(N_drop)} 和 {cmd:r(k_drop)}，即被丢弃的观测数和变量数。

{phang2}5.  {helpb gsem} 在指定 {cmd:lclass()} 选项时，假定 {cmd:listwise} 选项。

{phang2}6.  {help zipfile_zh} 和 {cmd:unzipfile} 使用 32 位库压缩和解压缩 zip 文件，限制文件大小为 2GB。

    {title:如果您将版本设置为低于 15.0}

{phang2}1.  在以下估计命令中，规模和辅助参数恢复为 {it:eqname}{cmd::_cons} 形式，而不是 {cmd:/}{it:eqname}：

		{help biprobit_zh}
		{help etpoisson_zh}
		{help etregress_zh}
		{help gsem_command_zh:gsem}
		{help heckman_zh}
		{help heckoprobit_zh}
		{help heckprobit_zh}
		{help irt_zh}
		{help ivpoisson_zh}
		{help mecloglog_zh}
		{help meglm_zh}
		{help melogit_zh}
		{help menbreg_zh}
		{help meologit_zh}
		{help meoprobit_zh}
		{help mepoisson_zh}
		{help meprobit_zh}
		{help mestreg_zh}
		{help nbreg_zh}
		{help ologit_zh}
		{help oprobit_zh}
		{help rocfit_zh}
		{help scobit_zh}
		{help sem_command_zh:sem}
		{help streg_zh}
		{help tnbreg_zh}
		{help tobit_zh}
		{help truncreg_zh}
		{help xtcloglog_zh}
		{help xtintreg_zh}
		{help xtlogit_zh}
		{help xtnbreg_zh}
		{help xtologit_zh}
		{help xtoprobit_zh}
		{help xtpoisson_zh}
		{help xtprobit_zh}
		{help xttobit_zh}
		{help zinb_zh}

{phang2}2.  {help tobit_zh} 使用旧语法；请参见 {help tobit_14_zh}。
	    线性方程名称恢复为 {cmd:model}，而规模参数恢复为 {cmd:sigma:_cons}。

{phang2}3.  {help ml_zh} 将 {cmd:/}{it:eqname} 转换为 {cmd:(}{it:eqname}{cmd::)} 而不是 {cmd:(}{it:eqname}{cmd::, freeparm)}。

{phang2}4.  {help xttobit_zh} 和 {help xtintreg_zh} 默认情况下不计算并显示与合并模型的似然比检验。

{phang2}5.  在以下估计命令的协方差估计的列名称中，变量的顺序被反转：

		{helpb gsem}
		{help meglm_zh}
		{help melogit_zh}
		{help meprobit_zh}
		{help mecloglog_zh}
		{help meologit_zh}
		{help meoprobit_zh}
		{help mepoisson_zh}
		{help menbreg_zh}
		{help mestreg_zh}

{phang2}6.  {cmd:javacall} 不再需要 {opt jars()} 选项来查找 JAR 文件，尽管推荐使用。如果没有指定 {opt jars()} 选项，则会将 ado 路径中的所有 JAR 文件添加到插件的类路径中。

{phang2}7.  {cmd:estat gof} 和 {cmd:estat ggof} 在 {cmd:sem} 后计算标准化均方根残差（SRMR）时，使用拟合方差而非样本方差标准化拟合的协方差元素。

{phang2}8.  {help bayesmh_zh} 排除了估计矩阵 {cmd:e(init)}、{cmd:e(Cov)}、{cmd:e(ess)}、{cmd:e(mcse)}、{cmd:e(sd)}、{cmd:e(median)}、{cmd:e(mean)} 和 {cmd:e(cri)} 中省略的回归系数，例如因子变量的基准水平。

{phang2}9.  {help xtstreg_zh}、{help mestreg_zh} 和 {helpb gsem} 将使用由 {cmd:log(}{it:depvar}{cmd:)} 位移的 Weibull 似然率为每个观察值计算失败结果。

{phang2}10. {help streg_zh} 的 {cmd:strata()} 选项在估计过程中不将分层变量视为因子变量。相反，它为分层变量生成特定于分层的指示符（虚拟变量），将其包含在模型中，然后将在估计后将其留下当前数据集中。
            例如，如果指定了 `{cmd:strata(drug)}`，而 {opt drug} 包含 1、2 和 3 的值，则 `{cmd:streg, strata(drug)}` 将生成两个虚拟变量，名为 `{cmd:_Sdrug_2}` 和 
            `{cmd:_Sdrug_3}`，并将其作为自变量包含在主方程中，并作为辅助参数方程（如有）中的协变量。

{phang2}11. 如果用户版本低于 15，因子变量的水平随着因子而跟踪，而不是术语，即使启动了 {cmd:set fvtrack term}。
	    请参见 {helpb set fvtrack}。

{phang2}12. {helpb icd10 clean} 在标准化代码格式时从指定变量的代码中删除句点。

{phang2}13. {help frontier_zh} 和 {help xtfrontier_zh} 将辅助参数恢复为 {cmd:/ilgtgamma}，而不是 {cmd:/lgtgamma}。

{phang2}14. {help bayesmh_zh} 的非线性模型在您指定可替代表达式中的线性组合时遵循不同的规则。
	    {p_end}
            {p 12 15}a. 当您指定 {cmd:{xb: x1 x2}} 时，常数项不会自动包含。这意味着 {bind:{cmd:{xb: x1 x2}}} 相当于 {bind:{cmd:{xb_x1}*x1 + {xb_x2}*x2}}。{p_end}
            {p 12 15}b. 不允许在线性组合规范中使用选项 {cmd:noconstant} 和 {cmd:xb}。{p_end}
            {p 12 15}c. 线性组合的回归系数定义为 
		       {cmd:{c -(}}{it:xbname}{cmd:_}{it:varname}{cmd:{c )-}}。
                       例如，如果您指定线性组合 {bind:{cmd:{xb: x1 x2}}}，您将以 {cmd:{xb_x1}} 和 {cmd:{xb_x2}} 引用变量 {cmd:x1} 和 {cmd:x2} 的回归系数。{p_end}
            {p 12 15}d. 规范 {cmd:{xb:z}} 对应于包含变量 {cmd:z} 的线性组合；也就是说，{cmd:{xb_z}*z}。{p_end}
            {p 12 12}此外，{cmd:bayesmh} 在模拟期间和显示结果时使用不同的非线性规范参数顺序。它以与它们在非线性表达中出现的顺序相同的顺序模拟和显示参数。{p_end}

{phang2}15. 矩阵条带名称元素使用 {cmd:var()} 或 {cmd:cov()} 将不会转换为规范形式。例如，将条带元素指定为 {cmd:cov(a)} 不会转换为 {cmd:var(a)}，将条带元素指定为 {cmd:var(a,b)} 不会转换为 {cmd:cov(a,b)}。

    {title:如果您将版本设置为低于 14.2}

{phang2}1.  {help icd10_zh} 将使用旧语法和选项名称。

{phang2}2.  {cmd:predict} 在 {helpb irt_hybrid_postestimation##predict:irt}、{help gsem_predict_zh:gsem}、{helpb meglm_postestimation##predict:meglm}、{helpb melogit_postestimation##predict:melogit}、{helpb meprobit_postestimation##predict:meprobit}、{helpb mecloglog_postestimation##predict:mecloglog}、{helpb meologit_postestimation##predict:meologit}、{helpb meoprobit_postestimation##predict:meoprobit}、{helpb mepoisson_postestimation##predict:mepoisson}、{helpb menbreg_postestimation##predict:menbreg} 和 {helpb mestreg_postestimation##predict:mestreg} 需要原始估计样本来计算经验贝叶斯均值、经验贝叶斯模式和其他条件预测。

    {title:如果您将版本设置为低于 14.1}

{phang2}1.  {help ci_zh} 和 {helpb cii} 使用旧语法；请参见 {help ci_14_0_zh}。

{phang2}2.  {help eteffects_zh}、{help teffects_zh} 和 {help stteffects_zh}
	    将在潜在结果均值方程 ({cmd:POmean}) 中将 {cmd:r.} 对比运算符放在因子变量上。

{phang2}3.  {help ivprobit_zh} 协方差参数的参数化在具有多个内生协变量的模型中发生了变化。Cholesky 分解协方差参数化已被对相关参数的 {help trig_functions_zh:atanh} 转换和对标准差的 {help math_functions_zh:log} 转换所替代。转换的相关参数在系数向量的条带中标记为 {bf:athrho{it:i}_{it:j}}， {it:i}>{it:j}，而转换的标准差参数标记为 {bf:lnsigma{it:i}}， {it:i} {ul on}>{ul off} 2。

{phang2}4.  {helpb ivprobit_postestimation##predict:predict, pr} 在 {bf:ivprobit} 后和 {helpb ivtobit_postestimation##predict:predict, pr} 在 {bf:ivtobit} 后，现在在计算概率时包括来自内生模型的残差。 {bf:ivprobit} 或 {bf:ivtobit} 的估计必须在版本 14.1 或更高版本下运行。

{phang2}5.  {bf:predict} 在 {help xttobit_zh} 和 {help xtintreg_zh} 后将允许选项 {bf:pr0()}、{bf:e0()} 和 {bf:ystar0()}。

{phang2}6.  {help putexcel_zh} 将使用旧格式语法，并默认覆盖单元格格式。

{phang2}7.  {helpb import delimited} 将使用制表符 ({cmd:\t}) 而不是逗号作为默认分隔符，如果它无法自动确定文件中使用的分隔符。

    {title:如果您将版本设置为低于 14.0}

{phang2}1.  从 Stata 14 开始，Stata 的随机数生成器 (RNG) 得到改善、重命名和重新构建；请参见 {manhelp set_seed R:set seed}。Stata 14 中的默认 RNG 是 64 位 Mersenne Twister ({cmd:mt64})。在 14 之前，RNG 是 32 位 KISS ({cmd:kiss32})。如果用户版本是 14，则 RNG 结果基于 {cmd:mt64}。如果用户版本低于 14，则 RNG 结果基于 {cmd:kiss32}。这也影响使用 RNG 的命令的结果，例如 {help bootstrap_zh}、{help bsample_zh} 和 {help mi_zh} 命令集。

{phang2}2.  如果当前 RNG 是 {cmd:kiss32} 并且已将 {cmd:kiss32} 种子设置为版本 13.1 或更早，则 {cmd:runiform()} 生成的随机变量在区间 [0,1) 上。自 Stata 14 起， {cmd:runiform()} 在所有 RNG 上生成区间 (0,1) 的随机变量。

{phang2}3.  {help destring_zh} 的 {cmd:ignore()} 选项默认将 {cmd:asbytes} 视为默认，而非 {cmd:aschars}。

{phang2}4.  {help etregress_zh} 报告处理系数，不使用因子变量表示法（请参见 {help fvvarlist_zh}）。在最大似然估计中也使用 {cmd:lf} 评估器（请参见 {help ml_zh}）。

{phang2}5.  {help icd9_zh} 和 {help icd9p_zh} 子命令 {cmd:check} 和 {cmd:generate}（带有选项 {cmd:description}）将改变排序顺序。  （在较高版本中，它们保留排序顺序。）

{phang2}6.  {help ksmirnov_zh} 报告单样本和双样本检验的校正 p 值。

{phang2}7.  {help margins_zh} 在 {help mixed_zh} 后使用多级权重将仅使用观察水平权重计算均值。

{phang2}8.  {help margins_zh} 在以下估计命令后改变其默认预测，当选项 {opt predict()} 和选项 {opt expression()} 均未指定时。

{phang3}a.  对于 {help heckoprobit_zh}，默认值为第一个结果的边际概率。

{phang3}b.  对于 {help manova_zh}、{help mvreg_zh}、{helpb mgarch ccc}、{helpb mgarch dcc}、{helpb mgarch dvech}、{helpb mgarch vcc}、{help reg3_zh}、{help sureg_zh}、{help varbasic_zh}、{help var_zh} 和 {help vec_zh}，默认值为第一个方程的线性预测。

{phang3}c.  对于 {help mlogit_zh}、{help mprobit_zh}、{help ologit_zh}、{help oprobit_zh} 和 {help slogit_zh}，默认值为第一个结果的概率。

{phang3}d.  对于 {help meologit_zh}、{help meoprobit_zh} 和 {help meqrlogit_zh}，默认值为第一个结果的概率。
	    对于具有随机效应的模型，此默认设置通常会导致错误，因为不允许使用经验贝叶斯估计与 {cmd:margins}。

{phang3}e.  对于 {help clogit_zh} 和 {help xtlogit_zh:xtlogit,fe}，默认设置将导致错误，因为 {cmd:predict(pc1)} 在 {cmd:margins} 中不被允许。

{phang3}f.  对于 {helpb gsem}，默认值为第一个结果的期望值。
	    对于 {cmd:family(multinomial)} 和 {cmd:family(ordinal)}，默认值为第一个结果的第一个级别的概率。
	    对于具有潜在变量的模型，此默认设置通常会导致错误，因为不允许使用经验贝叶斯估计与 {cmd:margins}。

{phang3}g.  对于 {help rologit_zh}，默认设置将导致错误，因为 {cmd:predict(pr)} 在 {cmd:margins} 中不被允许。

{phang3}h.  对于 {help sem_zh}，默认设置将导致错误，因为 {cmd:predict(xb)} 与 {cmd:margins} 在语法上不兼容。

{phang2}9.  {helpb mi impute pmm} 默认将使用一个最近邻进行插补；即，它将假设选项 {cmd:knn(1)}。

{p 7 12 2}
       10.  {help mlogit_zh} 和 {help mprobit_zh} 在指定约束时将不考虑基本结果方程。例如，

		{cmd:sysuse auto}
		{cmd:constraint 1 [#2]turn = [#2]trunk}
		{cmd:mlogit rep78 turn trunk, baseoutcome(1) constraint(1)}

{pmore2}    结果将是 {cmd:[3]turn = [3]trunk}，而不是 
	    {cmd:[2]turn = [2]trunk}。

{pmore2}    {cmd:mlogit} 和 {cmd:mprobit} 将不允许使用与值标签相关联的结果值定义约束。例如，

		{cmd:label define replab 1 "A" 2 "B" 3 "C" 4 "D" 5 "E"}
		{cmd:label values rep78 replab}
		{cmd:constraint 2 [2]turn = [2]trunk}
		{cmd:mprobit rep78 turn trunk, baseoutcome(1) constraint(1)}

{pmore2}    将删除约束 2。

{pmore2}    {cmd:mprobit} 的估计系数将仅在方程名称是结果值时通过结果值访问。

{p 7 12 2}
       11.  {help gsem_predict_zh:predict} 在 {helpb gsem} 后默认使用经验贝叶斯均值估计，而不是计算关于潜在变量的边际预测。

{p 7 12 2}
       12.  在以下估计命令后的默认预测，
	    {helpb meglm_postestimation##predict:meglm}、{helpb melogit_postestimation##predict:melogit}、{helpb meprobit_postestimation##predict:meprobit}、{helpb mecloglog_postestimation##predict:mecloglog}、{helpb meologit_postestimation##predict:meologit}、{helpb meoprobit_postestimation##predict:meoprobit}、{helpb mepoisson_postestimation##predict:mepoisson} 和 {helpb menbreg_postestimation##predict:menbreg} 
	    是使用经验贝叶斯均值估计来计算，而不是计算关于随机效应的边际预测。

{p 7 12 2}
       13.  {help reg3_zh} 和 {help sureg_zh} 将通过矩阵反演识别共线性变量，而不是使用 {help _rmcoll_zh}。

{p 7 12 2}
       14.  {helpb svy jackknife} 将默认使用删除1的乘数，而不是在 {opt jkrweight()} 的 {opt multiplier()} 子选项中指定的单位值。

    {title:如果您将版本设置为低于 13.1}

{phang2}1.  {help mecloglog_zh}、{help melogit_zh} 和 {help meprobit_zh} 将保留完美预测因子，用于二元结果模型，除非指定了 {opt noasis} 选项。

{phang2}2.  {help bootstrap_zh} 和 {help bsample_zh} 与选项 {opt idcluster()} 将为每个重抽样的集群创建唯一标识符，但仅在指定 {opt strata()} 选项的情况下。

    {title:如果您将版本设置为低于 13.0}

{phang2}1.  两个参数的版本 {help f_normalden_zh:normalden()} 和 
            {help f_lnnormalden_zh:lnnormalden()} 分别返回重新缩放的标准正态密度及其对数。重新缩放的标准正态密度可解释为 s*X 在 s*x 上的密度，其中 X 是标准正态分布。Mata 函数 {helpb mf_normalden:normalden()} 和 {helpb mf_lnnormalden:lnnormalden()} 具有匹配的行为。

{phang2}2.  {help margins_zh} 将使用标准正态分布进行 p 值和置信区间的计算，即便在计算线性预测的边际时，并且如果当前估计结果的剩余自由度已发布到 {cmd:e(df_r)}。

{phang2}3.  {help nlcom_zh} 和 {help predictnl_zh} 将使用 {it:t} 分布计算 p 值和置信区间，如果当前估计结果的剩余自由度已发布到 {cmd:e(df_r)}。

{phang2}4.  {help testnl_zh} 将使用 {it:F} 分布计算 p 值，如果当前估计结果的剩余自由度已发布到 {cmd:e(df_r)}。

{phang2}5.  {helpb estimates table} 将识别 {opt label} 选项的原始含义，即显示变量标签而不是变量名称。

{phang2}6.  {help proportion_zh} 将使用常规近似来计算置信区间的限值。

{phang2}7.  {help tsreport_zh} 默认为不产生输出，仅保存 {cmd:r(N_gaps)}。

{phang2}8.  {helpb boxcox_postestimation##predict:predict} 在 {help boxcox_zh} 后允许统计 {opt xbt}。此外，统计 {opt yhat} 和 {opt residuals} 将使用反向变换方法进行估计，而版本 13 使用涂抹方法计算预测值。

{phang2}9.  当您使用 {help macro_zh}s 时，{help exp_zh:string expressions} 的结果将去掉前导空格。

{p 7 12 2}
10.  {help sem_zh} 将报告外生变量之间的协方差的零值约束。

{p 7 12 2}
11.  {help merge_zh} 将在评估其 {cmd:keep()} 选项之前评估该命令的 {cmd:assert()} 选项；因此，在 {cmd:keep()} 丢弃了某些观察结果并可能违反所指定的 {cmd:assert()} 选项的情况下，将不会导致错误。

{p 7 12 2}
12.  {helpb decode} 将创建最多 244 个字符长的字符串，即使值标签长度超过此值。

{p 7 12 2}
13.  {help infix_zh} 使用 {cmd:str} 类型规范将创建最多 244 个字符长的字符串。

{p 7 12 2}
14.  {help infile1_zh:infile}（自由格式）将创建最多 244 个字符长的字符串。

{p 7 12 2}
15.  {help file_zh:file write} 将至少写入字符串表达式结果的 244 个字符。

{p 7 12 2}
16.  函数 {helpb nchi2()}、{helpb invnchi2()} 和 {helpb npnchi2()} 的自由度参数的域为 1 到 200（仅限整数）。在版本 13.0 中，此域为 2e-10 至 1e+6（可能是非整数）。函数 {cmd:nchi2()}、{cmd:invnchi2()} 和 {cmd:npnchi2()} 中非中心参数的域（或范围）为 0 到 1,000。在版本 13.0 中，此域（或范围）为 0 到 10,000。Mata 函数 {helpb mf_normalden:nchi2()}、{helpb mf_normalden:invnchi2()} 和 {helpb mf_normalden:npnchi2()} 具有匹配的行为。

    {title:如果您将版本设置为低于 12.1}

{phang2}1.  {help qreg_zh} 使用原始标准误差计算，而不是版本 12.1 中使用更好的带宽和提供控制密度估计器的选项的改进计算。

{phang2}2.  用户版本 12.0 下的 {helpb rnormal()} 可能产生与用户版本 12.1 下 {cmd:rnormal()} 生成的不同变量。 {cmd:rnormal()} 的版本由您 {helpb set seed} 时的版本决定（参见 {help version##seed_version:item 4}）。版本 12.1 下生成的变量与版本 11.2 下生成的完全相同。

    {title:如果您将版本设置为低于 12.0}

{phang2}1.  {help xtmixed_zh} 将报告限制最大似然 (REML) 结果。如果您希望最大似然 (ML) 结果，必须指定 {cmd:mle} 选项。

{phang2}2.  {helpb poisson_postestimation##estatgof:estat gof} 在 {help poisson_zh} 后将默认为仅报告偏差统计。要获取皮尔逊统计，您必须指定 {cmd:pearson} 选项。

{phang2}3.  {help cnsreg_zh} 在估计之前将不检查共线性变量，即使未指定 {opt collinear} 选项。

{phang2}4.  {help margins_zh} 行为如同指定了 {cmd:estimtolerance(1e-7)}，即使指定了不同的值。

{phang2}5.  {helpb sfrancia} 使用 Box-Cox 变换，而不是基于对数变换的算法来近似 W' 统计量的采样分布以进行正态性检验。

{phang2}6.  {helpb mi estimate} 计算缺失信息的比例和相对有效性，使用大型样本的自由度，而不是使用小样本的调整。

{phang2}7.  {helpb mi impute monotone} 从插补模型中省略不包含任何缺失值的插补变量。

    {title:如果您将版本设置为低于 11.2}

{phang2}
1.  {help drawnorm_zh} 产生不同的结果，这是由于 {cmd:rnormal()} 函数的变化，下面将描述这些变化。

{phang2}
2.  {helpb mi impute} 产生不同的结果，这是由于 {cmd:rnormal()} 函数的变化，下面将描述这些变化。这些结果的统计特性并不比现代结果好或坏，而是不同。

{phang2}
3.  函数 {helpb rnormal()}，高斯随机数生成函数，在用户版本 11.2 之前产生不同的值。这些伪随机数序列被发现对于某些应用程序随机性不够。

{marker seed_version}{...}
{phang2}
4.  {it:附注：} 所有随机数生成器的版本控制是在 {helpb set seed} 命令给出时指定的，而不是在使用随机数生成函数（例如 {cmd:rnormal()}）时指定。例如，输入

		. {it:(假设用户版本设置为 11.2 或更高)}

		. {cmd:set seed 123456789}

		. {it:任何命令 ...}

{p 12 12 2}
    会导致 {it:任何命令} 使用该版本的 {cmd:rnormal()}，即使 {it:任何命令} 是一个包含显式 {cmd:version} 语句、将版本设置为低于 11.2 的 ado 文件。发生这种情况是因为所使用的 {cmd:rnormal()} 版本是在设置种子时决定的，并且该种子是在版本 11.2 或更高版本下设置的。

{p 12 12 2}
    这在两个方向上都有效。考虑

		. {cmd:version 11.1: set seed 123456789}

		. {it:任何命令 ...}

{p 12 12 2}
    在这种情况下，{it:任何命令} 使用的是旧版本的 {cmd:rnormal()}，因为种子是在版本 11.1 下设置的，在 {cmd:rnormal()} 更新之前。 {it:任何命令} 使用旧版本的 {cmd:rnormal()}，即使 {it:任何命令} 本身包含一个显式 {cmd:version} 语句，将版本设置为 11.2 或更高版本。

{p 12 12 2}
    因此，较旧和较新的 ado 文件都可以使用较新的或较旧的 {cmd:rnormal()}，并且无需修改。唯一需要修改 do 文件或 ado 文件的情况是，当它较旧时，包含 {cmd:set seed}，并且您现在希望使用新的 {cmd:rnormal()}。在这种情况下，请找到 do 文件或 ado 文件中的 {cmd:set seed} 命令，

		  {cmd:version 10}              // {it:例如}
		  ...
		  {cmd:set seed 123456789}
		  ...

{p 12 12 2}
     并将其更改为

		  {cmd:version 10}              // {it:例如}
		  ...
		  {cmd:version 11.2: set seed 123456789}
		  ...

{p 12 12 2}
    您只需更改这一行。

{phang2}
5.  {it:附注，续：}
    在将种子恢复到先前从 {helpb set_seed##state:c(rngstate)} 获取的状态时，前面提到的关于用 {cmd:set seed} 进行前缀的方法无关紧要：

		  {cmd:set seed X075bcd151f123bb5159a55e50022865700023e53}

{p 12 12 2}
    字符串状态 {cmd:X075bcd151f123bb5159a55e50022865700023e53} 包含设置种子时的版本号。对上述内容进行 {cmd:version} 前缀，无论是老还是新版，都不会造成伤害，但也是不必要的。

    {title:如果您将版本设置为低于 11.1}

{phang2}1.  {help xtnbreg_zh:xtnbreg, re} 在 {cmd:e(cmd2)} 中返回 {cmd:xtn_re}，而 {help xtnbreg_zh:xtnbreg, fe} 返回 {cmd:xtn_fe} 在 {cmd:e(cmd2)} 中。自版本 11.1 起，{cmd:xtnbreg} 改为返回 {cmd:e(model)} 宏，其中包含 {cmd:re} 、{cmd:fe} 或 {cmd:pa}，指示指定了哪个模型。


    {title:如果您将版本设置为低于 11.0}

{phang2}1.  {help anova_zh} 恢复为 Stata 11 之前的语法。选项
            {cmd:category()}、{cmd:class()}、{cmd:continuous()}、
            {cmd:regress}、{cmd:anova}、{cmd:noanova} 和 {cmd:detail} 被允许，而因子变量表示法（{cmd:i.} 和 {cmd:c.} 运算符）不被允许。 
            {cmd:*} 符号表示交互（而不是 {cmd:#}），因此不允许使用 {cmd:*}、{cmd:-} 和 {cmd:?} 进行变量名称扩展。
            非整数和负值被允许作为类别级别。

{phang2}2.  {help correlate_zh} 的 {cmd:_coef} 选项是允许的。

{phang2}3.  {helpb ereturn display} 忽视 {cmd:e()} 中的标量。自版本 11 起，{cmd:ereturn} {cmd:display} 检查标量 {cmd:e(k_eq)} 的值是否包含 {cmd:e(b)} 中方程的数量，如果已设置的话。

{phang2}4.  {help manova_zh} 恢复为 Stata 11 之前的语法。选项 {cmd:category()}、{cmd:class()}、{cmd:continuous()} 和 {cmd:detail} 被允许，而因子变量表示法（{cmd:i.} 和 {cmd:c.} 运算符）不被允许。 
            {cmd:*} 符号表示交互（而不是 {cmd:#}），因此不允许使用 {cmd:*}、{cmd:-} 和 {cmd:?} 进行变量名称扩展。 
            非整数和负值被允许作为类别级别。

{phang2}5.  {helpb odbc insert} 将通过构建 SQL 插入语句来插入数据，不会使用参数化插入。

{phang2}6.  {helpb odbc load} 将引用用于加载数据的 SQL SELECT 语句中的表名，除非使用 {opt noquote} 选项。

{phang2}7.  {help outfile_zh} 将不会将日期格式变量导出为字符串。

{phang2}8.  {help predict_zh} 选项 {cmd:scores} 和 {cmd:csnell} 在 {help stcox_zh} 后将生成部分的观察水平诊断，而不是主题水平的诊断。这只有在您的生存数据中每个主题有多个记录时才重要。

{phang2}9.  缩写 {help predict_zh} 选项 {cmd:scores} 为 {cmd:sc} 在 {help stcox_zh} 后是允许的。现代语法至少需要 {cmd:sco}。

{p 7 12 2}
       10.  {help predict_zh} 选项 {cmd:mgale} 和 {cmd:csnell} 在 {help streg_zh} 后将生成部分的观察水平诊断，而不是主题水平的诊断。这只有在您的生存数据中每个主题有多个记录时才重要。

{p 7 12 2}
       11.  缩写 {help predict_zh} 选项 {cmd:csnell} 为 {cmd:cs} 在 {help streg_zh} 后是允许的。现代语法至少需要 {cmd:csn}。

{p 7 12 2}
       12.  {help xtreg_zh:xtreg, re vce(robust)} 使用 Huber/White/三明治估计量（VCE）的方差-协方差估计。自版本 11 起，{cmd:xtreg, re vce(robust)} 等同于  
            {cmd:xtreg, re vce(cluster }{it:panelvar}{cmd:)},
            其中 {it:panelvar} 标识面板。

{p 7 12 2}
       13.  {help logistic_zh}、{help logit_zh}、{helpb blogit} 和
            {help mlogit_zh} 在显示系数的 "eform" 中不会显示指数常数。

    {title:如果您将版本设置为低于 10.1}

{phang2}1.  函数 {helpb Binomial()} 是允许的。{cmd:Binomial()} 的现代替代是 {helpb binomialtail()}。

{phang2}2.  {help canon_zh} 默认情况下将在标准估计表中显示原始系数和条件估计的标准误差和置信区间，而不是原始系数以矩阵形式显示。

{phang2}3.  {help drawnorm_zh} 使用 {cmd:invnormal(uniform())} 生成正态随机变量，而不是使用 {helpb rnormal()}。

{phang2}4.  {help egen_zh} 函数 {cmd:mode()} 带有 {cmd:missing} 选项将不会将缺失值视为类别。

{phang2}5.  在从长到宽再到长的变换中，{help reshape_zh} J 变量值和变量标签及所有 xij 变量标签将不会被保留。

{phang2}6.  {help xtmixed_zh}、{help xtmelogit_zh} 和 {help xtmepoisson_zh}，没有明确的级别变量（或 {cmd:_all}）后跟冒号，在随机效应说明中假定 {cmd:_all:}。

    {title:如果您将版本设置为低于 10}

{phang2}1.  {help ca_zh} 和 {helpb camat} 不再报告百分比惯性，而是报告惯性，使其总和等于总惯性。

{phang2}2.  {help cf_zh}{cmd:, verbose} 产生的输出与 {cmd:cf, all} 相同。

{phang2}3.  {help clear_zh} 将执行与 {cmd:clear all} 相同的操作列表，除了 
            {help program_zh:program drop _all}。

{phang2}4.  {help cnreg_zh} 和 {help tobit_zh} 将不再接受 {opt vce()} 选项。

{phang2}5.  {help datasignature_zh} 运行 {help _datasignature_zh}，这就是 Stata 9 中的 {cmd:datasignature} 命令。

{phang2}6.  函数 {cmd:norm()}、{cmd:normd()}、{cmd:normden()}、{cmd:invnorm()} 和 {cmd:lnfact()}，这些在 Stata 9 中重命名的函数是被允许的。相应的现代函数是  {helpb normal()}、{helpb normalden()}、{helpb normalden()}、{helpb invnormal()} 和 {helpb lnfactorial()}。

{phang2}7.  {helpb graph use} 将名称为图形和窗口 Graph，而不是从文件名命名，除非指定了 {cmd:name()} 选项。

{phang2}8.  {help mdslong_zh} 的 {cmd:force} 选项会纠正提供的邻近信息问题，并对 (i,j) 上的多个测量进行平均。在版本 10 中，如果指定了 {cmd:force}，则 (i,j) 和 (j,i) 的测量会被平均，但即使指定了 {cmd:force}，如果额外的多个测量仍会导致错误。

{phang2}9.  {help mkspline_zh} 使用 {help egen_zh} 的 {cmd:pctile()} 函数计算线性样条的百分位数，而不是使用 {help centile_zh} 命令。此外，对于线性样条，不允许使用 {helpb fweight}s。

{p 7 12 2}
       10.  {help mlogit_zh} 的 {cmd:e()} 结果中有以下名称更改：

   		旧名称	 	  新名称
		{hline 37}
		{cmd:e(basecat)}		{cmd:e(baseout)}
		{cmd:e(ibasecat)}		{cmd:e(ibaseout)}
		{cmd:e(k_cat)}			{cmd:e(k_out)}
		{cmd:e(cat)}			{cmd:e(out)}

{p 7 12 2}
       11.  {helpb odbc load} 将作为 {cmd:%td} 导入日期和时间变量，而不是 {cmd:%tc}，并且时间数据类型将作为字符串导入。

{p 7 12 2}
       12.  {cmd:score} 是与 Stata 8 的 {cmd:factor} 命令相关联的命令是被允许的。

{p 7 12 2}
       13.  {helpb sts graph} 的 {opt risktable()} 选项和 {helpb sts list} 的 {opt survival} 选项是不被允许的。

{p 7 12 2}
       14.  {cmd:syntax} {cmd:[,} {it:whatever}{cmd:(real} {it:...}{cmd:)]} 使用 {cmd:%9.0g} 格式，而不是 {cmd:%18.0g} 格式将放置在 {it:whatever} 本地宏中的数字。

{p 7 12 2}
       15.  {help xtabond_zh} 将使用版本 9 的 {cmd:xtabond} 而不是 {help xtdpd_zh} 执行计算，输出将处于差异而不是水平，而常数将是时间趋势而不是常数水平。{cmd:estat abond} 和 {cmd:estat sargan} 将无效，而 {cmd:predict} 将具有版本 9 的语法。

{p 7 12 2}
       16.  {help xtlogit_zh}、{help xtprobit_zh}、{help xtcloglog_zh}、{help xtintreg_zh}、{help xttobit_zh} 和
            {help xtpoisson_zh:xtpoisson, normal} 随机效应模型将恢复使用非自适应的高斯-赫尔米特积分，而不是自适应积分。此外，{cmd:quad()} 选项（现代名称 {cmd:intpoints()}）恢复生效。

    {title:如果您将版本设置为低于 9.2}

{phang2}1.  Mata {help m2_struct_zh:structures} 在 Stata 9.2 中引入的，尽管您将版本设置为低于 9.2，仍然可用。唯一的版本控制问题是 {cmd:.mlib} 库的格式不同。您无需重新编译旧的 Mata 代码。
    但是，由于格式更改，您将无法向旧库添加新成员。库不能包含旧代码和新代码的混合。要添加新成员，您必须首先重建旧库。

    {title:如果您将版本设置为低于 9.1}

{phang2}1.  {help logit_zh}、{help probit_zh} 和 {help dprobit_zh} 将接受 {helpb aweight}s。对 {cmd:aweight}s 的支持已从这些命令中删除，因为 {cmd:aweight} 的数据解释对这些模型是无意义的。

{phang2}2.  {help nl_zh} 将不允许 {opt vce()} 选项；不再逐个参数报告每个参数的单独方程；在每次迭代后报告以前的平方和，而不是当前迭代日志中的新平方和；报告整体模型 F 测试；允许更少的 {cmd:predict} 选项；并且不允许 {help mfx_zh} 或 {help lrtest_zh} 后处理命令。

{phang2}3.  {help permute_zh} 使用一个随机均匀变量（而不是两个）生成蒙特卡洛的排列。

{phang2}4.  {help xtreg_zh:xtreg, fe} 将相对于内部变换调整强健的聚类 VCE。

{phang2}5.  {help xtreg_zh:xtreg, fe} 和 {help xtreg_zh:xtreg, re} 在计算聚类稳健 VCE 时，不要求面板嵌套于集群内。

    {title:如果您将版本设置为低于 9}

{phang2}1.  {help svyset_zh} 恢复为 Stata 9 之前的语法和逻辑。
            数据集必须通过 Stata 9 之前的 {cmd:svyset} 命令进行 {cmd:svyset} 才能使用 Stata 9 之前的估计命令 
		{cmd:svygnbreg}、{cmd:svyheckman}、{cmd:svyheckprob}、{cmd:svyivreg}、{cmd:svylogit}、{cmd:svymlogit}、{cmd:svynbreg}、{cmd:svyologit}、{cmd:svyoprobit}、{cmd:svypoisson}、{cmd:svyprobit} 和 {cmd:svyreg}。

{phang2}2.  {help factor_zh}、{help pca_zh} 和相关命令恢复为 Stata 9 之前的行为。

{p 12 12 2}
            首先，{cmd:factor} 和 {cmd:pca} 的存储方式不同。
            在 Stata 9 之前，这些命令是 e 类和 r 类的奇怪组合；它们设置 {cmd:e(sample)}，但其他大多数存储在 {cmd:r()} 中。它们也以奇怪的名称存储秘密矩阵，所有人都知道，并通过 {cmd:matrix get()} 提取。所有这些都恢复了。

{p 12 12 2}
            其次，{cmd:factor,} {cmd:ml} {cmd:protect} 使用不同的随机数生成器，一个不能通过更现代的 {cmd:factor} 的 {cmd:seed()} 选项进行设置。

{p 12 12 2}
            第三，{help rotate_zh} 恢复为 Stata 9 之前的语法和逻辑。

{p 12 12 2}
            第四，旧命令 {cmd:score} 停止发出过时的警告。

{p 12 12 2}
            最后，旧命令 {cmd:greigen} 按照以前的方式工作，语法 
            和逻辑。（截至 Stata 9，{cmd:greigen} 没有文档，并配置为调用现代 {cmd:screeplot}。）

{phang2}3.  {help nl_zh} 恢复为 Stata 9 之前的语法。

{phang2}4.  {help bootstrap_zh}、{help bstat_zh} 和 {helpb jknife} 
            恢复为 Stata 9 之前的语法和逻辑。

{phang2}5.  {help rocfit_zh} 恢复为 Stata 9 之前的语法和逻辑。

{phang2}6.  {helpb sw} 恢复为 Stata 9 之前的语法和逻辑。

{phang2}7.  {helpb cluster dendrogram}
            恢复为 Stata 9 之前的语法和逻辑。

{phang2}8.  Stata 8 之前的 {it:[sic]} 命令 {cmd:xthausman} 
            将有效。{cmd:xthausman} 在 Stata 8 中被 {help hausman_zh} 取代。

{p 8 12 2}
        9.  {helpb irf graph} 和 {help xtline_zh} 允许将 
            {cmd:byopts()} 缩写为 {cmd:by()}，而不是要求至少 
            {cmd:byop()}。

{p 7 12 2}
       10.  {help dotplot_zh} 将允许 {cmd:by()} 选项作为
            {cmd:over()} 选项的同义词。

{p 7 12 2}
       11.  {help glm_zh} 默认将 {cmd:iterate()} 选项设置为 50 
            而不是 {cmd:c(maxiter)}。

{p 7 12 2}
       12.  {help histogram_zh} 在水平轴下方放置空白空间。

{p 7 12 2}
       13.  {help ml_zh:ml display} 改变了调查结果的外观。

{p 7 12 2}
       14.  {help ologit_zh} 和 {help oprobit_zh} 在 {cmd:e(b)} 和 {cmd:e(V)} 存储方面恢复为 Stata 9 之前的逻辑。结果存储在两个方程中，所有的切点存储在第二个方程中。

{p 7 12 2}
       15.  {help tobit_zh} 和 {help cnreg_zh} 在 {cmd:e(b)} 和 {cmd:e(V)} 存储方面恢复为 Stata 9 之前的逻辑。结果存储在一个包含系数和辅助方差参数的方程中。

{p 7 12 2}
       16.  {help tabstat_zh} 在矩阵 {cmd:r(StatTot)} 中返回结果，而不是 {cmd:r(StatTotal)}。
 
{p 7 12 2}
       17.  {help glogit_zh} 和 {helpb gprobit}，加权最小二乘估计，使用不同的权重公式。
            在 Stata 9 中，采用新（更好）公式，详见 Greene (1997, 
            {it:Econometric Analysis, 3rd ed.}, 
	    Prentice Hall, 896)。

{p 7 12 2}
       18.  {help xtintreg_zh}、{help xtlogit_zh}、{help xtprobit_zh}、{help xtcloglog_zh}、{help xtpoisson_zh} 和
            {help xttobit_zh} 恢复为使用非自适应高斯-赫尔米特积分，而不是自适应积分。此外，{cmd:quad()} 选项（现代名称为 {cmd:intpoints()}）恢复生效。

{p 7 12 2}
       19.  {cmd:set help} 将被允许（但不会产生任何作用）。

{p 7 12 2}
       20.  在输入时，无论何时 {cmd:\\} 都将替换为 {cmd:\}
            始终存在，而不仅仅是出现在宏替换字符 {cmd:$} 和 {cmd:`} 之后。


    {title:如果您将版本设置为 8.1 或更低}

{phang2}1.  {helpb graph twoway} 默认的轴标题显示绘制在轴上的所有变量的标签或变量名，而不是在轴表示多个变量时将轴标题留空。{p_end}

{phang2}2.  {help clogit_zh} 将不允许 {cmd:vce()} 选项，也不会允许许多 {cmd:ml} {help maximize_zh} 选项。


    {title:如果您将版本设置为 8.0 或更低}

{phang2}1.  {help ml_zh} 将忽略 {cmd:constraint()} 选项，如果在第一个方程中没有预测变量。{p_end}

{phang2}2.  {help outfile_zh} 自动将扩展缺失值代码 ({cmd:.a}、{cmd:.b}、...、{cmd:.z}) 包含在输出中。 模板 8.1 或更高版本将扩展缺失值代码视为与系统缺失值 {cmd:.} 相同，并更改为空字符串（{cmd:""}），除非指定 {cmd:missing} 和 {cmd:comma} 选项。


    {title:如果您将版本设置为 7.0 或更低}

{phang2}1.  {help graph_zh} 使用旧语法；请参见 {help graph7_zh}.{p_end}

{phang2}2.  {help estimates_zh} 恢复为先前的解释和语法，{help _estimates_zh} 和 {help ereturn_zh} 不再被 Stata 命令识别。{p_end}

{phang2}3.  {help svy_zh} 命令允许将 {help svyset_zh} 参数指定为命令的一部分.{p_end}

{phang2}4.  此外，以下命令恢复为其旧语法： {helpb ac}、{helpb acprplot}、{helpb avplot}、{helpb avplots}、{help bootstrap_zh}、{helpb bs}、{help bsample_zh}、{help bstat_zh}、{helpb cchart}、{helpb cprplot}、{help cumsp_zh}、{help cusum_zh}、{help dotplot_zh}、{help findit_zh}、{helpb fracplot}、{helpb gladder}、{help greigen_zh}、{help grmeanby_zh}、
		{help histogram_zh}、{help intreg_zh}、{help kdensity_zh}、{help lowess_zh}、{help lroc_zh}、{help lsens_zh}、{help ltable_zh}、{helpb lvr2plot}、{help newey_zh}、{helpb pac}、{helpb pchart}、
		{helpb pchi}、{help pergram_zh}、{help pkexamine_zh}、{help pksumm_zh}、{helpb pnorm}、{helpb qchi}、{helpb qladder}、{helpb qnorm}、{helpb qqplot}、{helpb quantile}、{helpb rchart}、{help roccomp_zh}、{helpb rocplot}、{help roctab_zh}、{helpb rvfplot}、{helpb rvpplot}、{help serrbar_zh}、{helpb shewhart}、{help simulate_zh}、{help spikeplot_zh}、{help stci_zh}、{helpb stcoxkm}、{help stcurve_zh}、{helpb stphplot}、{help stphtest_zh}、{help strate_zh}、{help sts_zh}、{helpb symplot}、{help tabodds_zh}、{help test_zh}、{help wntestb_zh}、{helpb xchart} 和 {help xcorr_zh}。 大多数都是由于 {help graph_zh} 命令的更改。{p_end}

{phang2}5.  在整个 Stata 中，
		{cmd:.} == {cmd:.a} == {cmd:.b} == ... == {cmd:.z}.{p_end}

{phang2}6.  矩阵中的缺失值不太可能被接受。{p_end}

{phang2}7.  {cmd:generate} {it:x} {cmd:=} {it:string_expression} 将产生错误；您必须指定类型；请参见 {manhelp generate D}.{p_end}

{phang2}8.  {help ifcmd_zh:if}、{help while_zh}、{help foreach_zh}、{help forvalues_zh} 等使用开放和关闭大括号的命令，{cmd:{c -(}} 和 {cmd:{c )-}}，通常允许括号内的项目出现在括号的同一行。{p_end}

{phang2}9.  {help test_zh} 允许系数名称不匹配 1 对 1（无论顺序如何），当检测两个方程的系数相等。该测试在共同的系数上执行。{p_end}

{p 7 12 2}10.  {help list_zh} 允许 {cmd:doublespace} 选项，随后将视为 {cmd:separator(1)} 选项。即使将版本设置为 7.0 或更低，{cmd:list} 也会使用新风格的列表，除非指定 {cmd:clean} 选项以删除分隔行和隔离行。{p_end}

{p 7 12 2}11.  {help outfile_zh} 使用字符串的右对齐。{p_end}

{p 7 12 2}12.  {helpb reldif():reldif}{cmd:(}{it:x}{cmd:,}{it:y}{cmd:)} 在 {it:x} 和 {it:y} 为相等缺失值时，例如 {cmd:reldif(.r,.r)}， 返回系统缺失值 ({cmd:.}) 而不是 0.{p_end}

{p 7 12 2}13.  {help query_zh} 除了显示通常显示的所有设置外，还显示 {help set_zh} 参数的值，仅适用于早期版本。{p_end}

{p 7 12 2}14.  {helpb matrix score} 在查找与指定向量的元素相关联的变量名称时，扩展变量名称缩写。{p_end}

{p 7 12 2}15.  {help xthausman_zh} 继续工作（再多一个版本），但更推荐使用 {helpb hausman

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <version.sthlp>}