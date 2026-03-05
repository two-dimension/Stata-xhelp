{smcl}
{* *! version 1.1.7  25sep2018}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] sem" "mansection SEM sem"}{...}
{vieweralsosee "[SEM] Intro 1" "mansection SEM Intro1"}{...}
{vieweralsosee "[SEM] Methods and formulas for sem" "mansection SEM Methodsandformulasforsem"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem and gsem path notation" "help sem_and_gsem_path_notation_zh"}{...}
{vieweralsosee "[SEM] sem path notation extensions" "help sem_path_notation_extensions_zh"}{...}
{vieweralsosee "[SEM] sem model description options" "help sem_model_options_zh"}{...}
{vieweralsosee "[SEM] sem group options" "help sem_group_options_zh"}{...}
{vieweralsosee "[SEM] sem ssd options" "help sem_ssd_options_zh"}{...}
{vieweralsosee "[SEM] sem estimation options" "help sem_estimation_options_zh"}{...}
{vieweralsosee "[SEM] sem reporting options" "help sem_reporting_options_zh"}{...}
{vieweralsosee "[SEM] sem and gsem syntax options" "help sem_and_gsem_syntax_options_zh"}{...}
{vieweralsosee "[SEM] sem postestimation" "help sem_postestimation_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "sem_command_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_command_zh##menu"}{...}
{viewerjumpto "Description" "sem_command_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_command_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_command_zh##options"}{...}
{viewerjumpto "Remarks" "sem_command_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_command_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_command_zh##results"}
{help sem_command:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[SEM] sem} {hline 2}}结构方程模型估计命令{p_end}
{p2col:}({mansection SEM sem:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:sem} {help sem and gsem path notation:{it:路径}} {ifin}
[{it:{help sem_command##weight:权重}}]
[{cmd:,} {it:选项}]

{pstd}
其中
{it:路径} 是模型在命令语言路径标记法中的路径；请参见
{helpb sem_and gsem path_notation:[SEM] sem 和 gsem 路径标记法}.{p_end}

{synoptset 30}{...}
{synopthdr:选项}
{synoptline}
{synopt :{help sem_model_options_zh:{it:模型描述选项}}}完全定义模型，连同 {it:路径}，以便拟合{p_end}

{synopt :{help sem_group_options_zh:{it:分组选项}}}为不同组拟合模型{p_end}

{synopt :{help sem_ssd_options_zh:{it:ssd选项}}}用于汇总统计数据{p_end}

{synopt :{help sem_estimation_options_zh:{it:估计选项}}}用于获取估计结果的方法{p_end}

{synopt :{help sem_reporting_options_zh:{it:报告选项}}}估计结果的报告{p_end}

{synopt :{help sem_and_gsem_syntax_options_zh:{it:语法选项}}}控制语法的解释{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
允许时间序列操作符。{p_end}
{p 4 6 2}
允许使用 {cmd:bootstrap}、{cmd:by}、{cmd:jackknife}、{opt permute}、{cmd:statsby} 和 {cmd:svy}；请参见 {help prefix_zh}.{p_end}
{p 4 6 2}在使用 {help bootstrap_zh} 前缀时不允许权重.{p_end}
{p 4 6 2}
在使用 {help svy_zh} 前缀时，不允许使用 {opt vce()} 和权重。
{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight}、{cmd:iweight} 和 {cmd:pweight}； 
请参见 {help weight_zh}.{p_end}
{p 4 6 2}
另请参见 {help sem_postestimation_zh:[SEM] sem 后估计} 中可用的后估计特性。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程建模） > 模型构建与估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:sem} 拟合结构方程模型。即使您使用 SEM 构建器，您也在使用 {cmd:sem} 命令。 


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection SEM semRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:模型描述选项}
描述要拟合的模型。 要拟合的模型由 {it:路径} 完全指定——这些路径在 {cmd:sem} 后面紧跟，选项包括 {opt covariance()}、{opt variance()} 和 {opt means()}。请参见
{help sem_model_options_zh:[SEM] sem 模型描述选项} 和 
{helpb sem_and gsem path_notation:[SEM] sem 和 gsem 路径标记法}。

{phang}
{it:分组选项}
允许为数据的不同子组拟合指定的模型，某些参数可以在组之间自由变化，其他参数则约束为在组之间相等。请参见 
{help sem_group_options_zh:[SEM] sem 分组选项}。

{phang}
{it:ssd选项}
允许使用汇总统计数据 (SSD) 拟合模型，意味着使用均值、方差（标准差）和协方差（相关性）数据。请参见 {help sem_ssd_options_zh:[SEM] sem ssd 选项}。

{phang}
{it:估计选项}
控制如何获取估计结果。这些选项控制标准误差 (VCE) 的获取方式，以及选择估计方法等技术问题。请参见 
{help sem_estimation_options_zh:[SEM] sem 估计选项}。

{phang}
{it:报告选项}
控制估计结果的显示方式。请参见 
{help sem_reporting_options_zh:[SEM] sem 报告选项}。

{phang}
{it:语法选项}
控制您输入的语法如何被解释。请参见 
{helpb sem_and gsem syntax_options:[SEM] sem 和 gsem 语法选项}。


{marker remarks}{...}
{title:备注}

{pstd}
有关 {cmd:sem} 能做什么以及如何使用的可读解释，请参见任何入门章节。您可以从 {manlink SEM Intro 1} 开始。

{pstd}
有关 {cmd:sem} 实际应用的示例，请参见任何示例章节。您可以从 {findalias semsfmm} 开始。

{pstd}
有关详细语法和描述，请参见以下引用。

{pstd}
请查看以下关于 {bf:[SEM] sem} 的高级主题：

{phang2}
{mansection SEM semRemarksandexamplesDefaultnormalizationconstraints:默认标准化约束}{p_end}
{phang2}
{mansection SEM semRemarksandexamplesDefaultcovarianceassumptions:默认协方差假设}{p_end}
{phang2}
{mansection SEM semRemarksandexamplesHowtosolveconvergenceproblems:如何解决收敛问题}{p_end}


{marker examples}{...}
{title:示例}

{pstd}
这些示例旨在快速参考。有关详细示例，请参见
{help sem examples:{bf:sem} 示例}。


{title:示例: 相关性}

{pstd}设置{p_end}
{phang2}{cmd:. webuse census13}{p_end}

{pstd}使用 {cmd:correlate} 命令 {p_end}
{phang2}{cmd:. correlate mrgrate dvcrate medage}{p_end}

{pstd}用 {cmd:sem} 复制{p_end}
{phang2}{cmd:. sem ( <- mrgrate dvcrate medage), standardized}{p_end}


{title:示例: 线性回归}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. generate weight2 = weight^2}{p_end}

{pstd}使用 {cmd:regress} 命令{p_end}
{phang2}{cmd:. regress mpg weight weight2 foreign}{p_end}

{pstd}用 {cmd:sem} 复制模型{p_end}
{phang2}{cmd:. sem (mpg <- weight weight2 foreign)}{p_end}


{title:示例: 单因子测量模型}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_1fmm, clear}{p_end}

{pstd}CFA模型，具有单个潜在变量 {cmd:X}{p_end}
{phang2}{cmd:. sem (x1 x2 x3 x4 <- X)}{p_end}

{pstd}显示标准化结果{p_end}
{phang2}{cmd:. sem, standardized}{p_end}


{title:示例: 双因子测量模型}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_2fmm}{p_end}

{pstd}CFA模型，具有两个潜在变量： {cmd:Affective} 和 {cmd:Cognitive}{p_end}
{phang2}{cmd:. sem (Affective -> a1 a2 a3 a4 a5)}{break}
	{cmd:(Cognitive -> c1 c2 c3 c4 c5)}{p_end}


{title:示例: 非递归结构模型}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_sm1}{p_end}

{pstd}具有反馈循环的模型{p_end}
{phang2}{cmd:. sem (r_occasp <- f_occasp r_intel r_ses f_ses)}{break}
	{cmd:(f_occasp <- r_occasp f_intel f_ses r_ses),}{break}
	{cmd:cov(e.r_occasp*e.f_occasp)}{p_end}


{title:示例: MIMIC模型}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_mimic1}{p_end}

{pstd}MIMIC模型{p_end}
{phang2}{cmd:. sem (SubjSES -> s_income s_occpres s_socstat)}{break}
	{cmd:(SubjSES <- income occpres)}{p_end}


{title:示例: 潜在增长模型}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_lcm}{p_end}

{pstd}拟合潜在增长模型{p_end}
{phang2}{cmd:. sem (lncrime0 <- Intercept@1 Slope@0) } {break}
	{cmd:(lncrime1 <- Intercept@1 Slope@1)}{break}
	{cmd:(lncrime2 <- Intercept@1 Slope@2)}{break}
	{cmd:(lncrime3 <- Intercept@1 Slope@3),}{break}
	{cmd:means(Intercept Slope) noconstant}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:sem} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值的数量{p_end}
{synopt:{cmd:e(N_clust)}}群集的数量{p_end}
{synopt:{cmd:e(N_groups)}}组的数量{p_end}
{synopt:{cmd:e(N_missing)}}样本中缺失值的数量
{cmd:method(mlmv)}{p_end}
{synopt:{cmd:e(ll)}}模型的对数似然{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_b)}}基线模型自由度{p_end}
{synopt:{cmd:e(df_s)}}饱和模型自由度{p_end}
{synopt:{cmd:e(chi2_ms)}}针对饱和模型的目标模型测试{p_end}
{synopt:{cmd:e(df_ms)}}{cmd:e(chi2_ms)}的自由度{p_end}
{synopt:{cmd:e(p_ms)}}{cmd:e(chi2_ms)}的p值{p_end}
{synopt:{cmd:e(chi2sb_ms)}}Satorra-Bentler 标度测试目标模型与饱和模型{p_end}
{synopt:{cmd:e(psb_ms)}}{cmd:e(chi2sb_ms)}的p值{p_end}
{synopt:{cmd:e(sbc_ms)}}{cmd:e(chi2sb_ms)}的Satorra-Bentler修正因子{p_end}
{synopt:{cmd:e(chi2_bs)}}基线模型与饱和模型的测试{p_end}
{synopt:{cmd:e(df_bs)}}{cmd:e(chi2_bs)}的自由度{p_end}
{synopt:{cmd:e(p_bs)}}{cmd:e(chi2_bs)}的p值{p_end}
{synopt:{cmd:e(chi2sb_bs)}}Satorra-Bentler 标度测试基线模型与饱和模型{p_end}
{synopt:{cmd:e(psb_bs)}}{cmd:e(chi2sb_bs)}的p值{p_end}
{synopt:{cmd:e(sbc_bs)}}{cmd:e(chi2sb_bs)}的Satorra-Bentler修正因子{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果目标模型收敛，则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd:e(critvalue)}}拟合模型的对数似然或差异{p_end}
{synopt:{cmd:e(critvalue_b)}}基线模型的对数似然或差异{p_end}
{synopt:{cmd:e(critvalue_s)}}饱和模型的对数似然或差异{p_end}
{synopt:{cmd:e(modelmeans)}}如果拟合均值和截距，则为 {cmd:1}，否则为 {cmd:0}{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:sem}{p_end}
{synopt:{cmd:e(cmdline)}}作为输入的命令{p_end}
{synopt:{cmd:e(data)}}{cmd:raw} 或 {cmd:ssd} 如果使用了SSD数据{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(method)}}估计方法： {cmd:ml}、 {cmd:mlmv} 或 {cmd:adf}{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(lyvars)}}潜在y变量的名称{p_end}
{synopt:{cmd:e(oyvars)}}观察到的y变量的名称{p_end}
{synopt:{cmd:e(lxvars)}}潜在x变量的名称{p_end}
{synopt:{cmd:e(oxvars)}}观察到的x变量的名称{p_end}
{synopt:{cmd:e(groupvar)}}组变量的名称{p_end}
{synopt:{cmd:e(xconditional)}}如果指定了 {cmd:noxconditional} 则为空，反之为 {cmd:xconditional}{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins}不允许的预测{p_end}
{synopt:{cmd:e(marginsdefault)}}{cmd:margins} 的默认 {opt predict()} 规范{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}参数向量{p_end}
{synopt:{cmd:e(b_std)}}标准化参数向量{p_end}
{synopt:{cmd:e(b_pclass)}}参数类{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(admissible)}}Sigma、Psi、Phi的可接受性{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的协方差矩阵{p_end}
{synopt:{cmd:e(V_std)}}估计量的标准化协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}
{synopt:{cmd:e(nobs)}}每组观察值数量的向量{p_end}
{synopt:{cmd:e(groupvalue)}}{cmd:e(groupvar)}的组值向量{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本（不与SSD一起使用）{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_command.sthlp>}