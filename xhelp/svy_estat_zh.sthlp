{smcl}
{* *! version 1.4.22  24jan2019}{...}
{viewerdialog estat "dialog svy_estat"}{...}
{vieweralsosee "[SVY] estat" "mansection SVY estat"}{...}
{vieweralsosee "[SVY] 子群体估计" "mansection SVY Subpopulationestimation"}{...}
{vieweralsosee "[SVY] 方差估计" "mansection SVY Varianceestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy 估计" "help svy estimation"}{...}
{vieweralsosee "[SVY] svy 后估计" "help svy_postestimation_zh"}{...}
{viewerjumpto "语法" "svy_estat_zh##syntax"}{...}
{viewerjumpto "菜单" "svy_estat_zh##menu"}{...}
{viewerjumpto "描述" "svy_estat_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "svy_estat_zh##linkspdf"}{...}
{viewerjumpto "estat effects 的选项" "svy_estat_zh##options_estat_effects"}{...}
{viewerjumpto "estat lceffects 的选项" "svy_estat_zh##options_estat_lceffects"}{...}
{viewerjumpto "estat size 的选项" "svy_estat_zh##options_estat_size"}{...}
{viewerjumpto "estat sd 的选项" "svy_estat_zh##options_estat_sd"}{...}
{viewerjumpto "estat cv 的选项" "svy_estat_zh##options_estat_cv"}{...}
{viewerjumpto "estat gof 的选项" "svy_estat_zh##options_estat_gof"}{...}
{viewerjumpto "estat vce 的选项" "svy_estat_zh##options_estat_vce"}{...}
{viewerjumpto "示例" "svy_estat_zh##examples"}{...}
{viewerjumpto "存储结果" "svy_estat_zh##results"}
{help svy_estat:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[SVY] estat} {hline 2}}后估计统计量用于调查数据
{p_end}
{p2col:}({mansection SVY estat:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
调查设计特征

{phang2}
{cmd:estat} {opt svyset}


{phang}
点估计的设计与误设效应

{phang2}
{cmd:estat} {opt eff:ects}
	[{cmd:,} {it:{help svy_estat##effects_options:estat_effects_options}}]


{phang}
点估计的线性组合的设计与误设效应

{phang2}
{cmd:estat} {opt lceff:ects} {it:exp}
	[{cmd:,} {it:{help svy_estat##lceffects_options:estat_lceffects_options}}]


{phang}
子群体大小

{phang2}
{cmd:estat} {opt size}
	[{cmd:,} {it:{help svy_estat##size_options:estat_size_options}}]


{marker estatsd}{...}
{phang}
子群体标准差估计

{phang2}
{cmd:estat} {opt sd}
	[{cmd:,} {it:{help svy_estat##sd_options:estat_sd_options}}]


{phang}
孤立和确定分层

{phang2}
{cmd:estat} {opt strata}


{phang}
调查数据的变异系数

{phang2}
{cmd:estat} {opt cv}
	[{cmd:,} {it:{help svy_estat##cv_options:estat_cv_options}}]


{phang}
使用调查数据的二元响应模型的拟合优度检验

{phang2}
{cmd:estat} {opt gof}
	{ifin} [{cmd:,} {it:{help svy_estat##gof_options:estat_gof_options}}]


{phang}
显示协方差矩阵估计

{phang2}
{cmd:estat} {opt vce}
	[{cmd:,} {it:{help estat vce##estat_vce_options:estat_vce_options}}]


{synoptset 29}{...}
{marker effects_options}{...}
{synopthdr:estat_effects_options}
{p2line}
{p2col :{opt deff}}报告 DEFF 设计效应{p_end}
{p2col :{opt deft}}报告 DEFT 设计效应{p_end}
{p2col :{opt srs:subpop}}报告
	设计效应，假设在子群体内为简单随机抽样{p_end}
{p2col :{opt meff}}报告 MEFF 设计效应{p_end}
{p2col :{opt meft}}报告 MEFT 设计效应{p_end}
{synopt :{it:{help svy_estat##display_options_effects:display_options}}}控制省略变量、基准和空单元的间距与显示{p_end}
{p2line}

{marker lceffects_options}{...}
{synopthdr:estat_lceffects_options}
{p2line}
{p2col :{opt deff}}报告 DEFF 设计效应{p_end}
{p2col :{opt deft}}报告 DEFT 设计效应{p_end}
{p2col :{opt srs:subpop}}报告
	设计效应，假设在子群体内为简单随机抽样{p_end}
{p2col :{opt meff}}报告 MEFF 设计效应{p_end}
{p2col :{opt meft}}报告 MEFT 设计效应{p_end}
{p2line}

{marker size_options}{...}
{synopthdr:estat_size_options}
{p2line}
{p2col :{opt obs}}报告每行估计中使用的观察数量{p_end}
{p2col :{opt size}}报告每行估计的子群体大小{p_end}
{p2line}

{marker sd_options}{...}
{synopthdr:estat_sd_options}
{p2line}
{p2col :{opt var:iance}}报告
	子群体方差而不是标准差{p_end}
{p2col :{opt srs:subpop}}报告
	标准差，假设在子群体内为简单随机抽样{p_end}
{p2line}

{marker cv_options}{...}
{synopthdr:estat_cv_options}
{p2line}
{synopt :{opt nol:egend}}抑制子群体的表图例的显示{p_end}
{marker display_options_cv}{...}
{phang}
{it:display_options}:
{opt noomit:ted},
{opt vsquish},
{opt noempty:cells},
{opt base:levels},
{opt allbase:levels};
    参见 {helpb estimation options##display_options:[R] 估计选项}。


{marker gof_options}{...}
{synopthdr:estat_gof_options}
{p2line}
{p2col :{opt g:roup(#)}}使用 {it:#} 分位数计算检验统计量{p_end}
{p2col :{opt total}}使用
	总估计而不是平均估计来计算检验统计量{p_end}
{p2col :{opt all}}对数据中所有观察执行检验{p_end}
{p2line}


{marker options_estat_vce}{...}
{title:estat vce 的选项}

{phang}
参见 {it:{help estat vce##options_estat_vce:estat_vce_options}}。


{marker examples}{...}
{title:示例}

    {hline}
{phang2}
{cmd:. webuse nhanes2}
{p_end}
{phang2}
{cmd:. svy: mean tcresult tgresult}
{p_end}
{phang2}
{cmd:. estat svyset}
{p_end}
{phang2}
{cmd:. estat effects, deff deft meff meft}
{p_end}
{phang2}
{cmd:. estat size}
{p_end}

{phang2}
{cmd:. svy: mean tcresult, over(sex)}
{p_end}
{phang2}
{cmd:. estat size}
{p_end}
{phang2}
{cmd:. estat sd}
{p_end}
{phang2}
{cmd:. estat cv}
{p_end}

    {hline}
{pstd}
子群体的设计效应

{phang2}
{cmd:. webuse nhanes2b}
{p_end}
{phang2}
{cmd:. svy: mean iron, over(sex)}
{p_end}
{phang2}
{cmd:. estat effects}
{p_end}
{phang2}
{cmd:. estat effects, srssubpop}
{p_end}

{phang2}
{cmd:. webuse nmihs}
{p_end}
{phang2}
{cmd:. svy: mean birthwgt, over(race)}
{p_end}
{phang2}
{cmd:. estat effects}
{p_end}
{phang2}
{cmd:. estat effects, srssubpop}
{p_end}

    {hline}
{pstd}
子群体的误设效应

{phang2}
{cmd:. webuse nhanes2b}
{p_end}
{phang2}
{cmd:. svy: mean zinc, over(sex)}
{p_end}
{phang2}
{cmd:. estat effects, meff meft}
{p_end}

    {hline}
{pstd}
线性组合的设计与误设效应

{phang2}
{cmd:. webuse nhanes2b}
{p_end}
{phang2}
{cmd:. svy: mean tcresult, over(sex)}
{p_end}
{phang2}
{cmd:. estat lceffects tcresult#1.sex - tcresult#2.sex, deff deft meff meft}
{p_end}

    {hline}
{pstd}
使用调查数据确定 Neyman 分配

{phang2}
{cmd:. webuse nmihs}
{p_end}
{phang2}
{cmd:. svyset [pw=finwgt], strata(stratan)}
{p_end}
{phang2}
{cmd:. svy: mean birthwgt, over(stratan)}
{p_end}

{phang2}
{cmd:. estat size}
{p_end}
{phang2}
{cmd:. matrix p_obs = 100 * r(_N)/e(N)}
{p_end}
{phang2}
{cmd:. matrix nsubp = r(_N_subp)}
{p_end}

{phang2}
{cmd:. estat sd}
{p_end}
{phang2}
{cmd:. matrix p_neyman = 100 * hadamard(nsubp,r(sd))/el(nsubp*r(sd)',1,1)}
{p_end}
{phang2}
{cmd:. matrix list p_obs, format(%4.1f)}
{p_end}
{phang2}
{cmd:. matrix list p_neyman, format(%4.1f)}
{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat svyset} 将以下内容存储在 {cmd:r()} 中：

{* 如果您在此更新结果，也更改 svyset *}{...}
{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:r(stages)}}采样阶段数量{p_end}
{synopt:{cmd:r(stages_wt)}}包含阶段权重的最后阶段{p_end}
{synopt:{cmd:r(bsn)}}自助均值权重调整{p_end}
{synopt:{cmd:r(fay)}}Fay 的调整{p_end}
{synopt:{cmd:r(dof)}}{opt dof()} 值{p_end}

{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(wtype)}}权重类型{p_end}
{synopt:{cmd:r(wexp)}}权重表达式{p_end}
{synopt:{cmd:r(wvar)}}权重变量名称{p_end}
{synopt:{cmd:r(weight}{it:#}{cmd:)}}标识第 {it:#} 阶段权重的变量{p_end}
{synopt:{cmd:r(su}{it:#}{cmd:)}}标识第 {it:#} 阶段采样单位的变量{p_end}
{synopt:{cmd:r(strata}{it:#}{cmd:)}}标识第 {it:#} 阶段层的变量{p_end}
{synopt:{cmd:r(fpc}{it:#}{cmd:)}}第 {it:#} 阶段的 FPC{p_end}
{synopt:{cmd:r(bsrweight)}}{cmd:bsrweight()} 变量列表{p_end}
{synopt:{cmd:r(brrweight)}}{cmd:brrweight()} 变量列表{p_end}
{synopt:{cmd:r(jkrweight)}}{cmd:jkrweight()} 变量列表{p_end}
{synopt:{cmd:r(sdrweight)}}{cmd:sdrweight()} 变量列表{p_end}
{synopt:{cmd:r(sdrfpc)}}{cmd:fpc()} 值{p_end}
{synopt:{cmd:r(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:r(mse)}}{cmd:mse}，如果指定{p_end}
{synopt:{cmd:r(poststrata)}}{cmd:poststrata()} 变量{p_end}
{synopt:{cmd:r(postweight)}}{cmd:postweight()} 变量{p_end}
{synopt:{cmd:r(rake)}}{cmd:rake()} 规格{p_end}
{synopt:{cmd:r(regress)}}{cmd:regress()} 规格{p_end}
{synopt:{cmd:r(settings)}}{cmd:svyset} 参数以重现当前设置{p_end}
{synopt:{cmd:r(singleunit)}}{cmd:singleunit()} 设置{p_end}

{pstd}
{cmd:estat strata} 将以下内容存储在 {cmd:r()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(_N_strata_single)}}具有一个采样单位的层数{p_end}
{synopt:{cmd:r(_N_strata_certain)}}确定层数{p_end}
{synopt:{cmd:r(_N_strata)}}层数{p_end}
{synopt:{cmd:r(scale)}}当 {cmd:singleunit(scaled)} 被 {cmd:svyset} 时使用的方差缩放因子{p_end}

{pstd}
{cmd:estat effects} 将以下内容存储在 {cmd:r()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(deff)}}DEFF 估计向量{p_end}
{synopt:{cmd:r(deft)}}DEFT 估计向量{p_end}
{synopt:{cmd:r(deffsub)}}{cmd:srssubpop} 的 DEFF 估计向量{p_end}
{synopt:{cmd:r(deftsub)}}{cmd:srssubpop} 的 DEFT 估计向量{p_end}
{synopt:{cmd:r(meff)}}MEFF 估计向量{p_end}
{synopt:{cmd:r(meft)}}MEFT 估计向量{p_end}

{pstd}
{cmd:estat lceffects} 将以下内容存储在 {cmd:r()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:r(estimate)}}点估计{p_end}
{synopt:{cmd:r(se)}}标准误的估计{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}
{synopt:{cmd:r(deff)}}DEFF 估计{p_end}
{synopt:{cmd:r(deft)}}DEFT 估计{p_end}
{synopt:{cmd:r(deffsub)}}{cmd:srssubpop} 的 DEFF 估计{p_end}
{synopt:{cmd:r(deftsub)}}{cmd:srssubpop} 的 DEFT 估计{p_end}
{synopt:{cmd:r(meff)}}MEFF 估计{p_end}
{synopt:{cmd:r(meft)}}MEFT 估计{p_end}

{pstd}
{cmd:estat size} 将以下内容存储在 {cmd:r()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(_N)}}非缺失观察数量向量{p_end}
{synopt:{cmd:r(_N_subp)}}子群体大小估计向量{p_end}

{pstd}
{cmd:estat sd} 将以下内容存储在 {cmd:r()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(srssubpop)}}{cmd:srssubpop}，如果指定{p_end}

{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(mean)}}子群体均值估计向量{p_end}
{synopt:{cmd:r(sd)}}子群体标准差估计向量{p_end}
{synopt:{cmd:r(variance)}}子群体方差估计向量{p_end}

{pstd}
{cmd:estat cv} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(b)}}估计值{p_end}
{synopt:{cmd:r(se)}}估计值的标准误{p_end}
{synopt:{cmd:r(cv)}}估计值的变异系数{p_end}

{pstd}
{cmd:estat gof} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(p)}}与检验统计量相关联的 p 值{p_end}
{synopt:{cmd:r(F)}}如果 {cmd:e(df_r)} 被估计命令存储，则为 F 统计量{p_end}
{synopt:{cmd:r(df1)}}F 统计量的分子自由度{p_end}
{synopt:{cmd:r(df2)}}F 统计量的分母自由度{p_end}
{synopt:{cmd:r(chi2)}}如果 {cmd:e(df_r)} 没有被估计命令存储，则为卡方统计量{p_end}
{synopt:{cmd:r(df)}}卡方统计量的自由度{p_end}

{pstd}
{cmd:estat vce} 将以下内容存储在 {cmd:r()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(V)}}VCE 或协方差矩阵{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svy_estat.sthlp>}