{smcl}
{* *! version 1.0.9  25sep2018}{...}
{viewerdialog estat "dialog sem_estat, message(-residuals-) name(sem_estat_residuals)"}{...}
{vieweralsosee "[SEM] estat residuals " "mansection SEM estatresiduals"}{...}
{findalias assemmimic}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] sem postestimation" "help sem_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] estat eqgof" "help sem_estat_eqgof_zh"}{...}
{vieweralsosee "[SEM] estat ggof" "help sem_estat_ggof_zh"}{...}
{vieweralsosee "[SEM] estat gof" "help sem_estat_gof_zh"}{...}
{viewerjumpto "语法" "sem_estat_residuals_zh##syntax"}{...}
{viewerjumpto "菜单" "sem_estat_residuals_zh##menu"}{...}
{viewerjumpto "描述" "sem_estat_residuals_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "sem_estat_residuals_zh##linkspdf"}{...}
{viewerjumpto "选项" "sem_estat_residuals_zh##options"}{...}
{viewerjumpto "备注" "sem_estat_residuals_zh##remarks"}{...}
{viewerjumpto "示例" "sem_estat_residuals_zh##examples"}{...}
{viewerjumpto "存储结果" "sem_estat_residuals_zh##results"}{...}
{viewerjumpto "参考文献" "sem_estat_residuals_zh##references"}
{help sem_estat_residuals:English Version}
{hline}{...}
{p2colset 1 26 24 2}{...}
{p2col:{bf:[SEM] estat residuals} {hline 2}}显示均值和协方差残差{p_end}
{p2col:}({mansection SEM estatresiduals:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmdab:res:iduals} [{cmd:,} {it:options}]

{synoptset 22}{...}
{synopthdr}
{synoptline}
{synopt:{opt norm:alized}}报告归一化残差{p_end}
{synopt:{opt stand:ardized}}报告标准化残差{p_end}
{synopt:{opt sam:ple}}在残差方差计算中使用样本协方差{p_end}
{synopt :{opt nm1}}在残差方差计算中使用调整后的 {it:N}-1{p_end}
{synopt:{opt zero:tolerance(tol)}}应用容差将残差视为 0{p_end}
{synopt:{opth for:mat(%fmt)}}显示格式{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程模型） > 拟合优度 > 残差矩阵}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat residuals} 在 {cmd:sem} 之后使用，但不能在 {cmd:gsem} 之后使用。

{pstd}
{cmd:estat residuals} 显示均值和协方差残差。
归一化和标准化残差可用。

{pstd}
除非在拟合模型时指定或隐含 {cmd:sem} 的选项 {opt nomeans} ，否则通常将报告均值和协方差残差。如果指定了该选项，则不会报告均值残差。

{pstd}
{cmd:estat residuals} 通常在使用 {cmd:method(mlmv)} 拟合 {cmd:sem} 模型后无法使用。如果存在任何缺失值，它也无法使用，而这也是使用 {cmd:method(mlmv)} 的整个目的。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM estatresidualsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt normalized} 和 {opt standardized} 是可选择的。如果都未指定，则报告原始残差。

{p 8 8 2}
归一化残差和标准化残差试图以相同的方式调整残差，但方式不同。归一化残差始终有效，但不遵循标准正态分布。标准化残差遵循标准正态分布，但仅在可以计算时；否则，它们将为缺失值。当两者都可以计算时（相当于两者均适用），归一化残差将略小于标准化残差。有关详细信息，请参见
{help sem_estat_residuals##Joreskog1986:J{c o:}oreskog 和 S{c o:}rbom（1986）}。

{phang}
{opt sample} 指定在计算归一化和标准化残差的方差公式中使用样本方差和协方差。默认使用拟合的方差和协方差值，正如 {help sem_estat_residuals##Bollen1989:Bollen（1989）} 所述。

{phang}
{opt nm1} 指定在分母中使用 N-1 计算方差，而不是使用样本量 N。

{phang}
{opt zerotolerance(tol)} 将残差在 {it:tol} 范围内视为 0。{it:tol} 必须是小于 1 的数值。默认值为 {cmd:zerotolerance(0)}，这意味着不应用容差。当无法计算标准化残差时，原因是通过 {help sem estat_residuals##Hausman1978:Hausman（1978）} 定理计算的方差变为负值。对残差应用容差将一些残差变为 0，然后通过负方差进行划分变得不相关，这可能足以解决计算问题。

{phang}
{opth format(%fmt)} 指定显示格式。默认值为 {cmd:format(%9.3f)}。


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {findalias semmimic}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_mimic1}{p_end}
{phang2}{cmd:. sem (SubjSES -> s_income s_occpres s_socstat)}{break}
	{cmd: (SubjSES <- income occpres)}{p_end}

{pstd}显示原始均值和协方差残差{p_end}
{phang2}{cmd:. estat residuals}{p_end}

{pstd}包括归一化和标准化残差{p_end}
{phang2}{cmd:. estat residuals, normalized standardized}{p_end}

{pstd}在计算中使用样本协方差和调整 N-1{p_end}
{phang2}{cmd:. estat residuals, normalized standardized sample nm1}{p_end}

{pstd}将小于 1e-6 的残差视为零{p_end}
{phang2}{cmd:. estat residuals, normalized standardized zerotolerance(1e-6)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat residuals} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N_groups)}}组数{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(sample)}}为空或 {opt sample} ，如果指定了 {opt sample} {p_end}
{synopt:{cmd:r(nm1)}}为空或 {opt nm1} ，如果指定了 {opt nm1} {p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(nobs)}}每组的样本量{p_end}
{synopt:{cmd:r(res_mean}[{cmd:_}{it:#}]{cmd:)}}原始均值残差（对于组 {it:#}） (*){p_end}
{synopt:{cmd:r(res_cov}[{cmd:_}{it:#}]{cmd:)}}原始协方差残差（对于组 {it:#}）{p_end}
{synopt:{cmd:r(nres_mean}[{cmd:_}{it:#}]{cmd:)}}归一化均值残差（对于组 {it:#}） (*){p_end}
{synopt:{cmd:r(nres_cov}[{cmd:_}{it:#}]{cmd:)}}归一化协方差残差（对于组 {it:#}）{p_end}
{synopt:{cmd:r(sres_mean}[{cmd:_}{it:#}]{cmd:)}}标准化均值残差（对于组 {it:#}） (*){p_end}
{synopt:{cmd:r(sres_cov}[{cmd:_}{it:#}]{cmd:)}}标准化协方差残差（对于组 {it:#}）{p_end}
{p2colreset}{...}

{p 4 8 2}
(*) 如果 {cmd:sem} 模型中没有估计的均值或截距，则不会返回这些矩阵。  
{p_end}


{marker references}{...}
{title:参考文献}

{marker Bollen1989}{...}
{phang}
Bollen, K. A. 1989.  {it:结构方程与潜变量}.  纽约: Wiley.

{marker Hausman1978}{...}
{phang}
Hausman, J. A.  1978.  经济计量学中的规格测试. {it:经济计量学}
46: 1251-1271.

{marker Joreskog1986}{...}
{phang}
J{c o:}eskog, K. G., 和 D. S{c o:}rbom. 1986.
{it:LISREL VI: 采用最大似然方法分析线性结构关系}.
印第安纳州穆尔斯维尔: Scientific Software.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estat_residuals.sthlp>}