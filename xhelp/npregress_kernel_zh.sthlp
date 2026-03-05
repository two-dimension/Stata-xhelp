{smcl}
{* *! version 1.1.0  27feb2019}{...}
{viewerdialog "npregress kernel" "dialog npregress_kernel"}{...}
{vieweralsosee "[R] npregress kernel" "mansection R npregresskernel"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] npregress kernel postestimation" "help npregress kernel postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] npregress intro" "mansection R npregressintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] kdensity" "help kdensity_zh"}{...}
{vieweralsosee "[R] lpoly" "help lpoly_zh"}{...}
{viewerjumpto "Syntax" "npregress kernel##syntax"}{...}
{viewerjumpto "Menu" "npregress kernel##menu"}{...}
{viewerjumpto "Description" "npregress kernel##description"}{...}
{viewerjumpto "Links to PDF documentation" "npregress kernel##linkspdf"}{...}
{viewerjumpto "Options" "npregress kernel##options"}{...}
{viewerjumpto "Examples" "npregress kernel##examples"}{...}
{viewerjumpto "Stored results" "npregress kernel##results"}{...}
{viewerjumpto "Reference" "npregress kernel##reference"}
{help npregress_kernel:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[R] npregress kernel} {hline 2}}非参数核回归{p_end}
{p2col:}({mansection R npregresskernel:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:npregress} {cmd:kernel}  
{depvar}
{indepvars} {ifin}
[{cmd:,} {it:选项}]

{synoptset 27 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{cmd:estimator(linear)|{cmd:constant)}}使用局部线性或局部常数核估计器{p_end}
{synopt :{opth kern:el(npregress kernel##kernel:kernel)}}连续协变量的核密度函数{p_end}
{synopt :{opth dkern:el(npregress kernel##dkernel:dkernel)}}离散协变量的核密度函数{p_end}
{synopt :{opth predict:(npregress kernel##prspec:prspec)}}使用 {it:prspec} 中指定的变量名称保存均值和导数的预测值{p_end}
{synopt :{opt noderiv:atives}}抑制导数计算{p_end}
{synopt :{opt imaic}}使用改进的 AIC 而不是交叉验证来计算最佳带宽{p_end}
{synopt :{opth unid:entsample(newvar)}}指定标记识别问题的变量名称{p_end}

{syntab:带宽}
{synopt :{opth bw:idth(npregress kernel##specs:specs)}}为所有预测指定核带宽{p_end}
{synopt :{opth meanbw:idth(npregress kernel##specs:specs)}}为均值指定核带宽{p_end}
{synopt :{opth derivbw:idth(npregress kernel##specs:specs)}}为导数指定核带宽{p_end}

{syntab:标准误}
{p2coldent:* {opth vce(vcetype)}}{it:vcetype} 可以是 {opt none} 或 {opt boot:strap}{p_end}
{synopt :{opt r:eps(#)}}等同于 {cmd:vce(bootstrap, reps(}{it:#}{cmd:))}{p_end}
{synopt :{opt seed(#)}}设置随机数种子为 {it:#}；还必须指定 {opt reps(#)}{p_end}
{synopt :{opt bwreplace}}在每个 bootstrap 复制中变化带宽；
不常用{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{it:{help npregress kernel##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall
{synopt :{opth citype:(npregress kernel##citype:citype)}}计算 bootstrap 置信区间的方法；默认是
{cmd:citype(}{cmdab:p:ercentile}{cmd:)}{p_end}

{syntab:最大化}
{synopt:{it:{help npregress kernel##maximize_options:maximize_options}}}控制最大化过程{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
INCLUDE help fvvarlist
{p 4 6 2}
{cmd:bootstrap}、{cmd:by}和{cmd:jackknife}是允许的；请参见 {help prefix_zh}.{p_end}
{p 4 6 2}
* {cmd:vce(bootstrap)} 报告百分位置信区间，而不是在其他估计命令中指定 {cmd:vce(bootstrap)} 时报告的基于正态的置信区间.{p_end}
{p 4 6 2}
{cmd:coeflegend} 不显示在对话框中.{p_end}
{p 4 6 2}
请参阅 {manhelp npregress_kernel_postestimation R:npregress kernel postestimation} 获取估计后提供的功能.{p_end}

{marker kernel}{...}
{synoptset 27}{...}
{synopthdr:kernel}
{synoptline}
{synopt :{opt ep:anechnikov}}Epanechnikov 核函数；默认值{p_end}
{synopt :{opt epan2}}替代性 Epanechnikov 核函数{p_end}
{synopt :{opt bi:weight}}双权核函数{p_end}
{synopt :{opt cos:ine}}余弦轨迹核函数{p_end}
{synopt :{opt gau:ssian}}高斯核函数{p_end}
{synopt :{opt par:zen}}Parzen 核函数{p_end}
{synopt :{opt rec:tangle}}矩形核函数{p_end}
{synopt :{opt tri:angle}}三角形核函数{p_end}
{synoptline}

{marker dkernel}{...}
{synoptset 27}{...}
{synopthdr:dkernel}
{synoptline}
{synopt :{opt li:racine}}Li-Racine 核函数；默认值{p_end}
{synopt :{opt cell:mean}}单元均值核函数{p_end}
{synoptline}

{synoptset 19}{...}
{marker citype}{...}
{synopthdr:citype}
{synoptline}
{synopt :{opt p:ercentile}}百分位置信区间；默认值{p_end}
{synopt :{opt bc}}偏差校正置信区间{p_end}
{synopt :{opt nor:mal}}基于正态的置信区间{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 非参数分析 > 非参数核回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:npregress kernel} 执行非参数局部线性和局部常数核回归。与线性回归一样，非参数回归模型条件协变量下的结果均值，但与线性回归不同，它不对结果与协变量之间的关系的函数形式做出假设。{cmd:npregress kernel} 可用于建模连续、计数或二元结果的均值。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R npregresskernelQuickstart:快速入门}

        {mansection R npregresskernelRemarksandexamples:备注和示例}

        {mansection R npregresskernelMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:estimator(linear)|{cmd:constant}}指定应使用局部常数或局部线性核估计器。默认值为
{cmd:estimator(linear)}。

{phang}
{opth kernel:(npregress kernel##kernel:kernel)}指定用于计算局部常数或局部线性估计的连续协变量的核密度函数。默认值为 {cmd:kernel(epanechnikov)}。

{phang}
{opth dkernel:(npregress kernel##dkernel:dkernel)}指定用于计算局部常数或局部线性估计的离散协变量的核密度函数。默认值为 {cmd:dkernel(liracine)}；有关 Li-Racine 核的详细信息，请参见 {mansection R npregresskernelMethodsandformulas:{it:方法和公式}}。当指定 {cmd:dkernel(cellmean)} 时，离散协变量按其单元均值加权。

{marker prspec}{...}
{phang}
{opt predict(prspec)}指定 {cmd:npregress kernel} 保存均值和均值导数的预测值，并采用指定的名称。{it:prspec} 为：

{phang2}
{cmd:predict(}{varlist} {c |} {it:{help newvarlist##stub*:stub}}{cmd:*} [{cmd:, replace noderivatives}]{cmd:)}

{pmore}
该选项接受变量列表或 {it:stub}。第一个变量名称对应于预测结果均值。第二个名称对应于均值的导数。每个 {it:indepvar} 有一个导数。

{pmore}
当使用 {cmd:replace} 时，名称在 {it:varlist} 或 {it:stub}{cmd:*} 中的变量将被新的计算结果替换。如果指定了 {cmd:noderivatives}，则仅生成均值的变量。这将提高计算速度，但如果在估计后想获得边际效应，则会增加计算负担。

{phang}
{cmd:noderivatives} 抑制导数计算。在这种情况下，只计算均值函数。

{phang}
{cmd:imaic} 指定使用改进的 AIC 而不是交叉验证计算最佳带宽。

{phang}
{opth unidentsample(newvar)} 指定一个变量名，该变量为 1 时表示观察值违反模型识别假设，否则为 0。默认情况下，该变量为系统变量 ({cmd:_unident_sample})。

{pmore}
{cmd:npregress kernel} 对数据中的每个观察值计算加权回归。如果在该点无法执行回归，则观察值将违反识别假设。回归公式详见
{mansection R npregresskernelMethodsandformulas:{it:方法和公式}}，表示为

{pmore2}
gamma = ({bf:Z}'{bf:W}{bf:Z})^{-1}{bf:Z}'{bf:W}{bf:y}

{pmore}
{cmd:npregress kernel} 验证矩阵 ({bf:Z}'{bf:W}{bf:Z}) 对于每个观察值都是满秩的，以确定识别。识别问题通常发生在带宽过小的情况下，导致带宽内的观察量太少。带宽内协变量相关也会导致此时的识别问题。

{pmore}
违反识别假设的观察结果在预测均值和导数时报告为缺失值。

{dlgtab:带宽}

{marker bwidth}{...}
{marker specs}{...}
{phang}
{opt bwidth(specs)} 指定计算均值和均值导数的核在每个点的半宽度。如果未指定带宽，则会通过最小化预测的综合均方误差选择一个。

{pmore}
{it:specs} 以三种方式之一指定均值和导数的带宽：
通过指定包含带宽的向量的名称（例如，{cmd:bwidth(H)}，其中 {cmd:H} 是一个适当标记的向量）；通过指定带宽相应值的方程和系数名称（例如，{cmd:bwidth(Mean:x1=0.5 Effect:x1=0.9)}）；或通过为 {indepvars} 指定均值、标准误差和导数值的列表，并指定 {cmd:copy} 子选项（例如，{cmd:bwidth(0.5 0.9, copy)}）。

{phang2}
{opt skip} 指定忽略在指定向量中找到且未在模型中找到的任何参数。默认操作是发出错误信息。

{phang2}
{cmd:copy} 指定将值列表或向量按位置复制到带宽向量中，而不是按名称。

{phang}
{opth meanbwidth:(npregress kernel##specs:specs)} 指定计算均值函数的核在每个点的半宽度。如果未指定带宽，则会通过最小化预测的综合均方误差选择一个。有关指定带宽的详细信息，请参见 {cmd:bwidth()} 的描述，{help npregress kernel##bwidth:上述}。

{phang}
{opth derivbwidth:(npregress kernel##specs:specs)} 指定计算导数的核在每个点的半宽度。如果未指定带宽，则会通过最小化预测的综合均方误差选择一个。有关指定带宽的详细信息，请参见 {cmd:bwidth()} 的描述，{help npregress kernel##bwidth:上述}。

{dlgtab:标准误}

{phang}
{opt vce(vcetype)} 指定报告标准误的类型，可以是不报告标准误 ({cmd:none}；默认值) 或报告 bootstrap 标准误 ({cmd:bootstrap})；请参见 {manhelpi vce_option R}。

{pmore}
建议您使用 {opt reps(#)} 选择复制次数，而不是指定 {cmd:vce(bootstrap)}，其默认值为 50 次复制。请注意，产生良好标准误估计所需的复制次数因问题而异。

{pmore}
当指定 {cmd:vce(bootstrap)} 时，{cmd:npregress kernel} 报告 百分位置信息区间，正如 {help npregress kernel##CJ2018:Cattaneo 和 Jansson (2018)} 提出的，而不是当 {cmd:vce(bootstrap)} 与其他命令结合使用时报告的基于正态的置信区间。可以通过使用 {help npregress kernel##citype_ds:{bf:citype(}{it:citype}{bf:)}} 选项获得其他类型的置信区间。

{phang}
{opt reps(#)} 指定要执行的 bootstrap 复制次数。
指定该选项等同于指定 {cmd:vce(bootstrap, reps(}{it:#}{cmd:))}。

{phang}
{opt seed(#)} 设置随机数种子。
您必须在 {opt seed(#)} 中指定 {opt reps(#)}。

{phang}
{opt bwreplace} 为每个 bootstrap 复制计算不同的带宽。默认是在每个 bootstrap 复制中计算一次带宽并保持不变。此选项不常用。

{dlgtab:报告}

{phang}
{opt level(#)}， {cmd:nocnsreport}；请参见
{helpb estimation options##level():[R] 估计选项}。

INCLUDE help displayopts_list

{marker citype_ds}{...}
{phang}
{opt citype(citype)} 指定要计算的置信区间的类型。默认情况下，报告 bootstrap 百分位置信息区间，正如 {help npregress kernel##CJ2018:Cattaneo 和 Jansson (2018)} 所推荐的。
{it:citype} 可以是 {cmd:percentile}、{cmd:bc} 或 {cmd:normal} 中的一个。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tr:ace}
{opt showstep},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt from(init_specs)};
请参见 {help maximize_zh:[R] 最大化}。这些选项不常用。

{pstd}
以下选项可与 {cmd:npregress kernel} 一起使用，但未在对话框中显示：

{phang}
{opt coeflegend}; 请参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse dui}

{pstd}将 {cmd:citations} 作为 {cmd:fines} 的函数的非参数核回归{p_end}
{phang2}{cmd:. npregress kernel citations fines}

{pstd}与上述相同，但指定均值和导数的变量名称{p_end}
{phang2}{cmd:. npregress kernel citations fines, predict(mean deriv)}{p_end}

{pstd}使用高斯核密度函数{p_end}
{phang2}{cmd:. npregress kernel citations fines, kernel(gaussian)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:npregress kernel} 在 {cmd:e()} 中存储以下内容：

{synoptset 23 tabbed}{...}
{p2col 5 23 25 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(mean)}}均值函数的均值{p_end}
{synopt:{cmd:e(r2)}}R平方{p_end}
{synopt:{cmd:e(nh)}}期望的核观察值{p_end}
{synopt:{cmd:e(converged_effect)}}如果效应优化收敛则为 {cmd:1}，
否则为 {cmd:0}{p_end}
{synopt:{cmd:e(converged_mean)}}如果均值优化收敛则为 {cmd:1}，
否则为 {cmd:0}{p_end}
{synopt:{cmd:e(converged)}}如果效应和均值优化均收敛，则为 {cmd:1}，否则为 {cmd:0}{p_end}

{synoptset 23 tabbed}{...}
{p2col 5 23 25 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:npregress}{p_end}
{synopt:{cmd:e(cmdline)}}命令的书写方式{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(estimator)}}{cmd:linear} 或 {cmd:constant}{p_end}
{synopt:{cmd:e(kname)}}连续核的名称{p_end}
{synopt:{cmd:e(dkname)}}离散核的名称{p_end}
{synopt:{cmd:e(bselector)}}用于带宽选择的标准函数{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(properties)}}{cmd:b}（如果 {cmd:reps()} 指定，则为 {cmd:b V}）{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}} {cmd:margins} 允许的预测值{p_end}
{synopt:{cmd:e(marginsprop)}}传递给 {cmd:margins} 命令的信号{p_end}

{synoptset 23 tabbed}{...}
{p2col 5 23 25 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(bwidth)}}所有预测的带宽{p_end}
{synopt:{cmd:e(derivbwidth)}}导数的带宽{p_end}
{synopt:{cmd:e(meanbwidth)}}均值的带宽{p_end}
{synopt:{cmd:e(ilog_mean)}}均值的迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(ilog_effect)}}效应的迭代日志（最多 20 次迭代）{p_end}

{synoptset 23 tabbed}{...}
{p2col 5 23 25 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker CJ2018}{...}
{phang}
Cattaneo, M. D.，和 M. Jansson. 2018. 基于核的半参数估计：小带宽渐近理论和 bootstrap 一致性。
{it:Econometrica} 86: 955-995.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <npregress_kernel.sthlp>}