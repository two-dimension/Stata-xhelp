{smcl}
{* *! version 1.5.8  30nov2018}{...}
{viewerdialog svyset "dialog svyset"}{...}
{vieweralsosee "[SVY] svyset" "mansection SVY svyset"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] Survey" "help survey_zh"}{...}
{vieweralsosee "[SVY] svy" "help svy_zh"}{...}
{vieweralsosee "[SVY] svydescribe" "help svydescribe_zh"}{...}
{viewerjumpto "Syntax" "svyset_zh##syntax"}{...}
{viewerjumpto "Menu" "svyset_zh##menu"}{...}
{viewerjumpto "Description" "svyset_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "svyset_zh##linkspdf"}{...}
{viewerjumpto "Options" "svyset_zh##options"}{...}
{viewerjumpto "Examples" "svyset_zh##examples"}{...}
{viewerjumpto "Video example" "svyset_zh##video"}{...}
{viewerjumpto "Stored results" "svyset_zh##results"}{...}
{viewerjumpto "Reference" "svyset_zh##reference"}
{help svyset:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[SVY] svyset} {hline 2}}声明数据集的调查设计
{p_end}
{p2col:}({mansection SVY svyset:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
单阶段设计

{p 8 15 2}
{cmd:svyset}  [{it:{help svyset##psu:psu}}]
[{it:{help svyset##weight:weight}}]
	[{cmd:,} {it:{help svyset##design_options:design_options}}
	         {it:{help svyset##opts:options}}]


{pstd}
多阶段设计

{p 8 15 2}
{cmd:svyset} {it:{help svyset##psu:psu}}
[{it:{help svyset##weight:weight}}]
[{cmd:,} {it:{help svyset##design_options:design_options}}] [{cmd:||}
         {it:{help svyset##ssu:ssu}}
 {cmd:,} {it:{help svyset##design_options:design_options}}] ...
[{it:{help svyset##opts:options}}]


{pstd}
清除当前设置

{p 8 15 2}
{cmd:svyset}{cmd:,} {opt clear}


{pstd}
报告当前设置

{p 8 15 2}
{cmd:svyset}


{marker psu}{...}
{phang}
{it:psu} 用于识别主要抽样单元，可以是 {cmd:_n} 或 {varname}。在单阶段语法中，{it:psu} 是可选的，默认为 {cmd:_n}。

{pmore}
{cmd:_n} 表示如果设计不涉及集群抽样，则个体是随机抽样的。

{pmore}
{it:varname} 包含集群抽样设计中的集群标识符。

{marker ssu}{...}
{phang}
{it:ssu} 是 {cmd:_n} 或 {varname}，包含后续抽样阶段中的抽样单位（集群）标识符。

{pmore}
{cmd:_n} 表示个体在最后一个抽样阶段内是随机抽样的。


{marker design_options}{...}
{synoptset 29 tabbed}{...}
{synopthdr:design_options}
{synoptline}
{syntab:Main}
{synopt :{opth str:ata(varname)}}变量，用于识别分层{p_end}
{synopt :{opth fpc(varname)}}有限总体校正{p_end}
{synopt :{opth weight(varname)}}阶段级别抽样权重{p_end}
{synoptline}

{marker opts}{...}
{synopthdr:options}
{synoptline}
{syntab:Weights}
{synopt :{opth brr:weight(varlist)}}平衡重复抽样（BRR）权重{p_end}
{synopt :{opt fay(#)}}Fay 的调整{p_end}
{synopt :{opth bsr:weight(varlist)}}自助法重复权重{p_end}
{synopt :{opt bsn(#)}}自助法均值权重调整{p_end}
{synopt :{cmdab:jkr:weight(}{varlist}{cmd:,} {it:{help svyset##jkropts:jkropts}}{cmd:)}}杰克刀重复权重{p_end}
{synopt :{cmdab:sdr:weight(}{varlist}{cmd:,} {it:{help svyset##sdropts:sdropts}}{cmd:)}}连续差异重复（SDR）权重{p_end}

{syntab:SE}
{synopt :{cmd:vce(}{opt linear:ized}{cmd:)}}泰勒线性化方差估计{p_end}
{synopt :{cmd:vce(bootstrap)}}自助法方差估计{p_end}
{synopt :{cmd:vce(brr)}}BRR方差估计{p_end}
{synopt :{cmd:vce(}{opt jack:knife}{cmd:)}}杰克刀方差估计{p_end}
{synopt :{cmd:vce(sdr)}}SDR方差估计{p_end}
{synopt :{opt dof(#)}}设计自由度{p_end}
{synopt :{opt mse}}在指定 {cmd:vce(bootstrap)}、{cmd:vce(brr)}、
	{cmd:vce(jackknife)} 或 {cmd:vce(sdr)} 时使用 MSE 公式{p_end}
{synopt :{opt single:unit(method)}}具有单个抽样单位的分层；
	{it:method} 可以是 {opt mis:sing}、{opt cer:tainty}、{opt sca:led} 或
	{opt cen:tered} {p_end}

{syntab:Poststratification}
{synopt:{opth posts:trata(varname)}}变量，用于识别后分层{p_end}
{synopt:{opth postw:eight(varname)}}后分层人口规模{p_end}

{syntab:Calibration}
{synopt :{cmd:rake(}{varlist}{cmd:,} {it:{help svyset##calopts:calopts}}{cmd:)}}使用行走比率方法调整权重{p_end}
{synopt :{cmdab:reg:ress(}{varlist}{cmd:,} {it:{help svyset##calopts:calopts}}{cmd:)}}使用线性回归校准调整权重{p_end}

{synopt:{opt clear}}清除数据中的所有设置{p_end}
{synopt:{opt noclear}}在不清除其他设置的情况下更改某些设置{p_end}
{synopt:{opt clear(opnames)}}在不清除所有其他设置的情况下清除指定的设置； {it:opnames} 可以是一个或多个以下选项：
{opt w:eight}、{opt vce}、{opt dof}、{opt mse}、
{opt bsr:weight}、{opt brr:weight}、{opt jkr:weight}、
{opt sdr:weight}、{opt post:strata}、{opt rake} 或 {opt regress}{p_end}
{synoptline}
{marker weight}{...}
{p 4 6 2}
{cmd:pweight}s 和 {cmd:iweight}s 是被允许的；请参见 {help weights}。
{p_end}
{p 4 6 2}
{opt clear}、{opt noclear} 和 {opt clear()} 在对话框中未显示。
{p_end}

{marker jkropts}{...}
{synoptset 29}{...}
{synopthdr:jkropts}
{synoptline}
{synopt :{opt str:atum}{cmd:(}{it:#} [{it:#} ...]{cmd:)}}杰克刀重复权重的分层标识符{p_end}
{synopt :{opt fpc}{cmd:(}{it:#} [{it:#} ...]{cmd:)}}每个杰克刀重复权重的有限总体校正{p_end}
{synopt :{opt mult:iplier}{cmd:(}{it:#} [{it:#} ...]{cmd:)}}每个杰克刀重复权重的方差乘数{p_end}
{synopt :{opt reset}}重置每个杰克刀重复权重的特征{p_end}
{synoptline}

{marker sdropts}{...}
{synoptset 28}{...}
{synopthdr:sdropts}
{synoptline}
{synopt :{cmd:fpc(}{it:#} [{it:#} ...]{cmd:)}}SDR权重的有限总体校正{p_end}
{synoptline}

{marker calopts}{...}
{synoptset 28 tabbed}{...}
{synopthdr:calopts}
{synoptline}
{p2coldent :* {opth tot:als(svyset##spec:spec)}}人口总数{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt ll(#)}}权重比的下限{p_end}
{synopt :{opt ul(#)}}权重比的上限{p_end}
{synopt :{opt iter:ate(#)}}最大迭代次数{p_end}
{synopt :{opt tol:erance(#)}}收敛容忍度{p_end}
{synopt :{opt force}}允许未收敛的校准调整{p_end}
{synoptline}
{p 4 6 2}
* {cmd:totals()} 是必需的。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 调查数据分析 > 设置和工具 >}
      {bf:声明数据集的调查设计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:svyset} 管理数据集的调查分析设置。您使用 {cmd:svyset} 来指定包含有关调查设计的信息的变量，例如抽样单元和权重。{cmd:svyset} 还用于指定其他设计特征，例如抽样阶段的数量和抽样方法，以及分析默认值，例如方差估计的方法。在使用任何 {cmd:svy} 命令之前，您必须 {cmd:svyset} 您的数据；请参见 {manhelp svy_estimation SVY:svy 估计}。

{pstd}
未带参数的 {cmd:svyset} 报告当前设置。
{cmd:svyset, clear} 移除当前的调查设置。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SVY svysetQuickstart:快速开始}

        {mansection SVY svysetRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:Main}

{phang}
{opth strata(varname)} 指定包含分层标识符的变量名称（数值或字符串）。

{phang}
{opth fpc(varname)} 请求对方差估计进行有限总体校正。如果 {it:varname} 的值小于或等于 1，则将其解释为分层抽样率 {it:f}_{it:h} =
{it:n}_{it:h}/{it:N}_{it:h}，其中 {it:n}_{it:h} = 从分层 {it:h} 抽样的单位数，{it:N}_{it:h} = 属于分层 {it:h} 的总体中单位的总数。如果 {it:varname} 的值大于或等于 {it:n}_{it:h}，则将其解释为包含 {it:N}_{it:h}。如果 {it:varname} 的值介于 1 和 {it:n}_{it:h} 之间，或存在抽样率和分层规模的混合，则会导致错误。

{phang}
{opth weight(varname)} 指定阶段级别抽样权重变量。对于大多数模型，阶段级别抽样权重相乘以创建用于加权估计的单个观察级别抽样权重变量。对于诸如 {helpb gsem} 和 {help meglm_zh} 的命令，每个阶段级别的权重变量被假定与模型中的分层组级别相对应，并用于计算该相关组级别的伪似然。阶段级别抽样权重要求在对应的组级别内保持不变。有关拟合带有阶段级别抽样权重的多层模型的示例，请参见 {mansection ME meglmRemarksandexamplesex5:示例 5} 和 {mansection ME meglmRemarksandexamplesex6:示例 6} 在 {bf:[ME] meglm} 中。

{dlgtab:Weights}

{phang}
{opth brrweight(varlist)} 指定用于 {cmd:vce(brr)} 或 {cmd:svy} {cmd:brr} 的重复权重变量。

{phang}
{opt fay(#)} 指定 Fay 的调整 ({help svyset##J1990:Judkins 1990})。指定的 {opt fay(#)} 中的值用于调整 BRR 权重，并且出现在 BRR 方差公式中。

{pmore}
所选 PSU 的抽样权重乘以 {hi:2-}{it:#}，未选 PSU 的抽样权重乘以 {it:#}。当指定 {opt brrweight(varlist)} 时，{it:varlist} 中的重复权重变量假定经过 {it:#} 调整。

{pmore}
{cmd:fay(0)} 是默认值，相当于原始的 BRR 方法。{it:#} 必须介于 0 和 2 之间（含端点），排除 1。
{cmd:fay(1)} 是不允许的，因为这会导致未调整的权重。

{phang}
{opth bsrweight(varlist)} 指定用于 {cmd:vce(bootstrap)} 或 {cmd:svy} {cmd:bootstrap} 的重复权重变量。

{phang}
{opt bsn(#)} 指定使用了 {it:#} 个 bootstrap 重复权重变量来生成在 {opt bsrweight()} 选项中指定的每个 bootstrap 均值权重变量。默认值为 {cmd:bsn(1)}。指定的 {opt bsn(#)} 中的值用于调整方差估计，以考虑均值 bootstrap 权重。

{phang}
{cmd:jkrweight(}{varlist}{cmd:,} {it:jkropts}{cmd:)} 指定用于 {cmd:vce(jackknife)} 或 {cmd:svy} {cmd:jackknife} 的重复权重变量。

{pmore}
以下 {it:jkropts} 设置杰克刀重复权重变量的特征。如果指定一个值，所有指定的杰克刀重复权重变量将具有相同的特征。如果指定多个值，每个重复权重变量将根据指定的顺序赋予相应的值。{it:jkropts} 在对话框中未显示。

{phang2}
{opt stratum(# [# ...])} 指定用于调整抽样权重的分层的标识符。

{phang2}
{opt fpc(# [# ...])} 指定要作为杰克刀重复权重变量特征添加的 FPC 值。
通过此子选项设置的值与 {opth fpc(varname)} 选项的解释相同。

{phang2}
{opt multiplier(# [# ...])} 指定要作为杰克刀重复权重变量特征添加的杰克刀乘数值。

{phang2}
{opt reset} 表示杰克刀重复权重变量的特征可能被覆盖或重置为默认值（如果存在）。

{phang}
{cmd:sdrweight(}{varlist}{cmd:,} {it:sdropts}{cmd:)} 指定用于 {cmd:vce(sdr)} 或 {cmd:svy} {cmd:sdr} 的重复权重变量。以下 {it:srdopts} 可用：

{phang2}
{opt fpc(#)} 指定与 SDR 权重相关联的 FPC 值。
此子选项设置的值与 {opth fpc(varname)} 选项的解释相同。
此选项在对话框中未显示。

{dlgtab:SE}

{phang}
{opt vce(vcetype)} 指定方差估计的默认方法；见 {manlink SVY 方差估计}。

{phang2}
{cmd:vce(linearized)} 将默认值设置为泰勒线性化。

{phang2}
{cmd:vce(bootstrap)} 将默认值设置为自助法；另见 {manhelp svy_bootstrap SVY:svy 自助法}。

{phang2}
{cmd:vce(brr)} 将默认值设置为 BRR；另见 {manhelp svy_brr SVY:svy brr}。

{phang2}
{cmd:vce(jackknife)} 将默认值设置为杰克刀；见 {manhelp svy_jackknife SVY:svy jackknife}。

{phang2}
{cmd:vce(sdr)} 将默认值设置为 SDR；另见 {manhelp svy_sdr SVY:svy sdr}。

{phang}
{opt dof(#)} 指定设计自由度，覆盖默认计算，df = N_psu - N_strata。

{phang}
{opt mse} 指定在指定 {cmd:vce(bootstrap)}、{cmd:vce(brr)}、
{cmd:vce(jackknife)} 或 {cmd:vce(sdr)} 时使用 MSE 公式。此选项要求 {cmd:vce(bootstrap)}、
{cmd:vce(brr)}、{cmd:vce(jackknife)} 或 {cmd:vce(sdr)}。

{phang}
{opt singleunit(method)} 指定如何处理具有一个抽样单位的分层。

{phang2}
{cmd:singleunit(missing)} 导致标准误缺失值，且为默认值。

{phang2}
{cmd:singleunit(certainty)} 使具有单一抽样单位的分层被视为确定性单位。确定性单位对标准误没有贡献。

{phang2}
{cmd:singleunit(scaled)} 生成一种 {cmd:singleunit(certainty)} 的缩放版本。缩放因子来自使用多个抽样单位的分层的方差平均值，应用于每一具有单抽样单位的分层。

{phang2}
{cmd:singleunit(centered)} 指定具有单抽样单位的分层围绕总体均值进行中心化，而不是分层均值。

{dlgtab:Poststratification}

{phang}
{opth poststrata(varname)} 指定包含后分层标识符的变量名称（数值或字符串）。
有关更多信息，请参见 {manlink SVY 后分层}。

{phang}
{opth postweight(varname)} 指定包含后分层人口总数（或规模）的数值变量名称，即每个后分层下的基本抽样单位的数量。
有关更多信息，请参见 {manlink SVY 后分层}。

{dlgtab:Calibration}

{phang}
{cmd:rake(}{varlist}{cmd:,} {it:calopts}{cmd:)} 和
{cmd:regress(}{varlist}{cmd:,} {it:calopts}{cmd:)} 指定应使用校准调整来调整抽样权重。
有关更多信息，请参见 {manlink SVY 校准}。

{phang2}
{opt rake()} 指定权重应按行走比率法进行调整。

{phang2}
{opt regress()} 指定权重应按线性回归进行调整。

{phang2}
以下 {it:calopts} 可用：

{marker spec}{...}
{phang3}
{opt totals(spec)} 指定与 {varlist} 中指定变量相对应的人口总数。 {it:spec} 是以下之一

{p 20 22 2}{it:matname} [{cmd:,} {cmd:skip} {cmd:copy}]{p_end}

{p 20 22 2}{c -(} [{it:eqname}{cmd::}]{it:name} {cmd:=} {it:#} |
	{cmd:/}{it:eqname} {cmd:=} {it:#} {c )-} [{it:...}]{p_end}

{p 20 22 2}{it:#} [{it:#} {it:...}]{cmd:,} {cmd:copy}{p_end}

{pmore3}
即，{it:spec} 可以是矩阵名称，例如 {bf:totals(poptotals)}；
变量名称在 {it:varlist} 中的列表及其人口总数，
例如，{bf:totals(_cons=1300 dogs=850 cats=450)}；或者是值的列表，
例如，{bf:totals(850 450 1300)}。

{p 16 20 2}
{opt skip} 指定在指定总数向量中找到的任何参数被忽略，但在模型中未找到。默认行为是发出错误消息。

{p 16 20 2}
{opt copy} 指定值列表或总数向量按位置而不是按名称复制到人口总数向量。

{phang3}
{opt noconstant} 在线性回归调整中抑制截距。

{phang3}
{opt ll(#)} 指定截断线性校准的权重比下限。

{phang3}
{opt ul(#)} 指定截断线性校准的权重比上限。

{phang3}
{opt iterate(#)} 指定最大迭代次数。
当迭代次数等于 {cmd:iterate()} 时，校准调整停止并显示通知。
默认值为 {cmd:iterate(1000)}。

{phang3}
{opt tolerance(#)} 指定校准方程中拉格朗日乘数的容忍度。
当从一次迭代到下一次迭代的拉格朗日乘数的相对变化小于或等于 {cmd:tolerance()} 时，达到收敛。
默认值为 {cmd:tolerance(1e-7)}。

{phang3}
{opt force} 防止 {cmd:svy} 在校准调整未收敛时因错误而退出。

{pstd}
以下选项与 {cmd:svyset} 一起使用，但在对话框中未显示：

{phang}
{opt clear} 从数据中清除所有设置。输入

{pmore2}
{cmd:. svyset, clear}

{pmore}
从内存中的数据中清除调查设计特征。尽管此选项可与其他一些 {cmd:svyset} 选项一起指定，但它是多余的，因为 {cmd:svyset} 在设置新的调查设计特征之前会自动清除之前的设置。

{phang}
{opt noclear} 允许在不清除所有其他设置的情况下更改某些选项中的设置。此选项不允许与 {it:{help svyset##psu:psu}}、{it:{help svyset##ssu:ssu}}、 
{it:{help svyset##design_options:design_options}} 或 {opt clear} 一起使用。

{phang}
{opt clear(opnames)} 允许在不清除所有其他设置的情况下清除某些选项中的设置。 {it:opnames} 指的是一个选项名称，可以是以下一个或多个：
{opt weight}、{opt vce}、{opt dof}、{opt mse}、
{opt brrweight}、{opt bsrweight}、{opt jkrweight}、
{opt sdrweight}、{opt poststrata}、{opt rake} 或
{opt regress}。

{pmore}
此选项意味着 {opt noclear} 选项。


{marker examples}{...}
{title:示例}

{pstd}
设置
{p_end}
{phang2}
{cmd:. webuse stage5a}
{p_end}

{pstd}
带替代的简单随机抽样
{p_end}
{phang2}
{cmd:. svyset _n}
{p_end}

{pstd}
具有分层的单阶段集群设计
{p_end}
{phang2}
{cmd:. svyset su1 [pweight=pw], strata(strata)}
{p_end}

{pstd}
双阶段设计
{p_end}
{phang2}
{cmd:. svyset su1 [pweight=pw], fpc(fpc1) || _n, fpc(fpc2)}
{p_end}
{phang2}
{cmd:. svyset su1 [pweight=pw], fpc(fpc1) || su2, fpc(fpc2)}
{p_end}
{phang2}
{cmd:. svyset su1 [pweight=pw], fpc(fpc1) || su2, fpc(fpc2) strata(strata)}
{p_end}

{pstd}
多阶段设计
{p_end}
{phang2}
{cmd:. svyset su1 [pweight=pw], fpc(fpc1) strata(strata) || su2, fpc(fpc2) || su3, fpc(fpc3)}
{p_end}
{phang2}
{cmd:. svyset su1 [pweight=pw], fpc(fpc1) strata(strata) || su2, fpc(fpc2) || su3, fpc(fpc3) || _n}
{p_end}

{pstd}
有限总体校正（FPC）
{p_end}
{phang2}
{cmd:. webuse fpc}
{p_end}
{phang2}
{cmd:. list}
{p_end}
{phang2}
{cmd:. svyset psuid [pweight=weight], strata(stratid) fpc(Nh)}
{p_end}
{phang2}
{cmd:. svy: mean x}
{p_end}
{phang2}
{cmd:. svyset psuid [pweight=weight], strata(stratid)}
{p_end}
{phang2}
{cmd:. svy: mean x}
{p_end}

{pstd}
多阶段设计及带替代抽样
{p_end}
{phang2}
{cmd:. webuse stage5a}
{p_end}
{phang2}
{cmd:. svyset su1 || _n, fpc(fpc2)}
{p_end}

{pstd}
重复权重变量
{p_end}
{phang2}
{cmd:. webuse stage5a_jkw}
{p_end}
{phang2}
{cmd:. svyset [pweight=pw], jkrweight(jkw_*) vce(jackknife)}
{p_end}
{phang2}
{cmd:. svyset [pweight=pw], jkrweight(jkw_*) vce(jackknife) mse}
{p_end}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=XYjWCL7IEKU":为您的调查数据设计指定 Stata}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:svyset} 将以下内容存储在 {cmd:r()} 中：

{* 如果在这里更新结果，也请更改 svy_estat *}{...}
{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(stages)}}抽样阶段数量{p_end}
{synopt:{cmd:r(stages_wt)}}包含阶段级别权重的最后阶段{p_end}
{synopt:{cmd:r(bsn)}}自助法均值权重调整{p_end}
{synopt:{cmd:r(fay)}}Fay 的调整{p_end}
{synopt:{cmd:r(dof)}}{opt dof()} 值{p_end}

{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(wtype)}}权重类型{p_end}
{synopt:{cmd:r(wexp)}}权重表达式{p_end}
{synopt:{cmd:r(wvar)}}权重变量名称{p_end}
{synopt:{cmd:r(weight}{it:#}{cmd:)}}识别权重的变量 stage
                          {it:#}{p_end}
{synopt:{cmd:r(su}{it:#}{cmd:)}}识别抽样单位的变量 stage
                          {it:#}{p_end}
{synopt:{cmd:r(strata}{it:#}{cmd:)}}识别阶段 {it:#} 的分层变量{p_end}
{synopt:{cmd:r(fpc}{it:#}{cmd:)}}阶段 {it:#} 的 FPC{p_end}
{synopt:{cmd:r(bsrweight)}}{cmd:bsrweight()} 变量列表{p_end}
{synopt:{cmd:r(brrweight)}}{cmd:brrweight()} 变量列表{p_end}
{synopt:{cmd:r(jkrweight)}}{cmd:jkrweight()} 变量列表{p_end}
{synopt:{cmd:r(sdrweight)}}{cmd:sdrweight()} 变量列表{p_end}
{synopt:{cmd:r(sdrfpc)}}{cmd:fpc()} 值，来自 {opt sdrweight()}{p_end}
{synopt:{cmd:r(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:r(mse)}}{cmd:mse}，如果指定{p_end}
{synopt:{cmd:r(poststrata)}}{cmd:poststrata()} 变量{p_end}
{synopt:{cmd:r(postweight)}}{cmd:postweight()} 变量{p_end}
{synopt:{cmd:r(rake)}}{cmd:rake()} 规格{p_end}
{synopt:{cmd:r(regress)}}{cmd:regress()} 规格{p_end}
{synopt:{cmd:r(settings)}}{cmd:svyset} 参数，以重现当前设置{p_end}
{synopt:{cmd:r(singleunit)}}{cmd:singleunit()} 设置{p_end}


{marker reference}{...}
{title:参考文献}

{marker J1990}{...}
{phang}
Judkins, D. R. 1990. Fay 的方差估计方法。
{it:官方统计学杂志} 6: 223-239.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svyset.sthlp>}