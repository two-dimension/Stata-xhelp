{smcl}
{* *! version 1.1.7  12dec2018}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spxtregress" "mansection SP spxtregress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] spxtregress postestimation" "help spxtregress postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] estat moran" "help estat moran"}{...}
{vieweralsosee "[SP] spbalance" "help spbalance_zh"}{...}
{vieweralsosee "[SP] spivregress" "help spivregress_zh"}{...}
{vieweralsosee "[SP] spmatrix" "help spmatrix_zh"}{...}
{vieweralsosee "[SP] spregress" "help spregress_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{viewerjumpto "Syntax" "spxtregress_zh##syntax"}{...}
{viewerjumpto "Menu" "spxtregress_zh##menu"}{...}
{viewerjumpto "Description" "spxtregress_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "spxtregress_zh##linkspdf"}{...}
{viewerjumpto "Options for spxtregress, fe" "spxtregress_zh##options_spxtregress_fe"}{...}
{viewerjumpto "Options for spxtregress, re" "spxtregress_zh##options_spxtregress_re"}{...}
{viewerjumpto "Examples" "spxtregress_zh##examples"}{...}
{viewerjumpto "Stored results" "spxtregress_zh##results"}{...}
{viewerjumpto "Reference" "spxtregress_zh##reference"}
{help spxtregress:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[SP] spxtregress} {hline 2}}空间自回归模型用于面板数据{p_end}
{p2col:}({mansection SP spxtregress:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
固定效应最大似然

{p 8 14 2}
{cmd:spxtregress}
{depvar}
[{indepvars}]
{ifin}{cmd:,}
{cmd:fe}
[{help spxtregress##fe_options:{it:fe_options}}]


{phang}
随机效应最大似然

{p 8 14 2}
{cmd:spxtregress}
{depvar}
[{indepvars}]
{ifin}{cmd:,}
{cmd:re}
[{help spxtregress##re_options:{it:re_options}}]


{marker fe_options}{...}
{synoptset 30 tabbed}{...}
{synopthdr:fe_options}
{synoptline}
{syntab:模型}
{p2coldent :* {opt fe}}使用固定效应估计器{p_end}
{synopt :{opt dvarl:ag(spmatname)}}空间滞后因变量{p_end}
{synopt :{opt err:orlag(spmatname)}}空间滞后误差{p_end}
{synopt :{cmdab:ivarl:ag(}{it:spmatname} {cmd::} {varlist}{cmd:)}}空间滞后自变量；可重复{p_end}
{synopt :{opt force}}允许在估计样本是创建空间权重矩阵的样本的子集时进行估计{p_end}
{synopt :{opt grid:search(#)}}初始值搜索网格的分辨率；很少使用{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{help spxtregress##fe_display_options:{it:display_options}}}控制
包含选项帮助

{syntab:最大化}
{synopt :{help spxtregress##fe_maxopts:{it:maximize_options}}}控制最大化过程；很少使用{p_end}

包含帮助短描述-系数图例
{synoptline}

{marker re_options}{...}
{synopthdr:re_options}
{synoptline}
{syntab:模型}
{p2coldent :* {opt re}}使用随机效应估计器{p_end}
{synopt :{opt dvarl:ag(spmatname)}}空间滞后因变量{p_end}
{synopt :{opt err:orlag(spmatname)}}空间滞后误差{p_end}
{synopt :{cmdab:ivarl:ag(}{it:spmatname} {cmd::} {varlist}{cmd:)}指定一个空间权重矩阵和一组定义变量的空间滞后；此选项可重复以允许使用不同矩阵创建空间滞后{p_end}
{synopt :{opt sarpan:el}}估计量的替代表达形式，其中面板效应遵循与误差相同的空间过程{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt force}}允许在估计样本是创建空间权重矩阵的样本的子集时进行估计{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{help spxtregress##re_display_options:{it:display_options}}}控制
包含选项帮助

{syntab:最大化}
{synopt :{help spxtregress##re_maxopts:{it:maximize_options}}}控制最大化过程；很少使用{p_end}

包含帮助短描述-系数图例
{synoptline}
{p2colreset}{...}


{p 4 6 2}
* 您必须指定 {cmd:fe} 或 {cmd:re}.{p_end}
{p 4 6 2}
{it:indepvars} 和 {it:varlist} 在 {cmd:ivarlag()}中指定的可以包含因子变量；请参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
有关估计后可用功能，请参见 {manhelp spxtregress_postestimation SP:spxtregress 后估计}。{p_end}


包含帮助菜单-空间


{marker description}{...}
{title:描述}

{pstd}
{cmd:spxtregress} 拟合空间自回归（SAR）模型，也称为同时自回归模型，适用于面板数据。命令 {cmd:spxtregress, fe} 和 {cmd:spxtregress, re} 是 {cmd:xtreg, fe} 和 {cmd:xtreg, re} 的空间数据扩展；请参见 {manhelp xtreg XT}。

{pstd}
如果您还没有阅读 {manlink SP Intro 1} - {manlink SP Intro 8}，在使用 {cmd:spxtregress} 之前请先阅读这些内容。

{pstd}
要使用 {cmd:spxtregress}，您的数据必须是 Sp 数据，并且 {help xtset_zh}。有关准备数据的说明，请参见 {manlink SP Intro 3}。

{pstd}
要指定空间滞后，您需要一个或多个空间权重矩阵。有关权重矩阵类型及如何创建它们的说明，请参见 {manlink SP Intro 2} 和 {manhelp spmatrix SP}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SP spxtregressQuickstart:快速入门}

        {mansection SP spxtregressRemarksandexamples:备注和示例}

        {mansection SP spxtregressMethodsandformulas:方法和公式}

{pstd}
上述章节不包含在此帮助文件中。


{marker options_spxtregress_fe}{...}
{title:spxtregress 的选项，fe}

{dlgtab:模型}

{phang}
{opt fe} 请求固定效应回归估计器。

{phang}
{opt dvarlag(spmatname)} 指定一个空间权重矩阵，该矩阵定义因变量的空间滞后。只能指定一个 {opt dvarlag()} 选项。默认情况下，不包含因变量的空间滞后。

{phang}
{opt errorlag(spmatname)} 指定一个空间权重矩阵，该矩阵定义空间滞后误差。只能指定一个 {opt errorlag()} 选项。默认情况下，不包含空间滞后误差。

{phang}
{cmd:ivarlag(}{it:spmatname} {cmd::} {varlist}{cmd:)} 指定一个空间权重矩阵和一组自变量，定义变量的空间滞后。此选项可重复，以允许x来自不同矩阵的空间滞后。默认情况下，不包括自变量的空间滞后。

{phang}
{opt force} 请求在估计样本是创建空间权重矩阵的样本的真子集时进行估计。默认情况下，拒绝拟合模型。加权矩阵可能连接所有空间单元。当估计样本是该空间的子集时，空间连接会有所不同，因此溢出效应可能会被改变。此外，加权矩阵的归一化与在估计样本上归一化时将会有所不同。
{opt force}的更好选择是首先了解估计样本的空间，并在合适的情况下为其创建新的权重矩阵。有关更多信息，请参见 {manhelp spmatrix SP} 和 {mansection SP Intro2Remarksandexamplesforce:{it:缺失值，剔除观测值和 W 矩阵}} 在 {bf:[SP] Intro 2}中。

{phang}
{opt gridsearch(#)} 指定初始值搜索网格的分辨率。默认值为 {cmd:gridsearch(0.1)}。您可以指定 0.001 到 0.1 之间的任何数字（包括）。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见 {helpb estimation options:[R] 估计选项}。

{marker fe_display_options}{...}
包含帮助显示选项列表

{dlgtab:最大化}

{marker fe_maxopts}{...}
{phang}
{it:maximize_options}：
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)}, 和
{opt nonrtol:erance};请参见 {help maximize_zh:[R] 最大化}。

{pstd}
以下选项可与 {cmd:spxtregress, fe} 一起使用，但不在对话框中显示：

{phang}
{opt coeflegend};请参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker options_spxtregress_re}{...}
{title:spxtregress 的选项，re}

{dlgtab:模型}

{phang}
{opt re} 请求广义最小二乘随机效应估计器。

{phang}
{opt dvarlag(spmatname)} 指定一个空间权重矩阵，该矩阵定义因变量的空间滞后。只能指定一个 {opt dvarlag()} 选项。默认情况下，不包含因变量的空间滞后。

{phang}
{opt errorlag(spmatname)} 指定一个空间权重矩阵，该矩阵定义空间滞后误差。只能指定一个 {opt errorlag()} 选项。默认情况下，不包含空间滞后误差。

{phang}
{cmd:ivarlag(}{it:spmatname} {cmd::} {varlist}{cmd:)} 指定一个空间权重矩阵和一组自变量，定义变量的空间滞后。此选项可重复，以允许来自不同矩阵的空间滞后。默认情况下，不包括自变量的空间滞后。

{phang}
{opt sarpanel} 请求估计量的替代表达形式，其中面板效应遵循与误差相同的空间过程。默认情况下，面板效应作为一个加性项包含在估计方程中，就像在标准的非空间随机效应模型中一样。当指定了 {opt sarpanel} 和 {opt errorlag(spmatname)} 时，面板效应也具有基于 {it:spmatname} 的空间自回归形式。如果未随 {opt sarpanel} 指定 {opt errorlag()}，则估计量与未指定 {opt sarpanel} 时的估计量相同。{opt sarpanel} 估计量最初由 {help spxtregress##KKP2007:Kapoor, Kelejian, 和 Prucha (2007)} 发展；请参见 {mansection SP spxtregressMethodsandformulas:{it:方法和公式}}。

{phang}
{opt noconstant};请参见
     {helpb estimation options:[R] 估计选项}。

{phang}
{opt force} 请求在估计样本是创建空间权重矩阵的样本的真子集时进行估计。默认情况下，拒绝拟合模型。这与为 {cmd:spxtregress, fe} 使用的 {opt force} 选项相同。

{dlgtab:报告}

{phang}
{opt level(#)}；请参考
     {helpb estimation options##coeflegend:[R] 估计选项}。

{marker re_display_options}{...}
包含帮助显示选项列表

{dlgtab:最大化}

{marker re_maxopts}{...}
{phang}
{it:maximize_options}：
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)}, 和
{opt nonrtol:erance};请参见 {help maximize_zh:[R] 最大化}。

{pstd}
以下选项可与 {cmd:spxtregress, re} 一起使用，但不在对话框中显示：

{phang}
{opt coeflegend};请参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/homicide_1960_1990.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/homicide_1960_1990_shp.dta .}
{p_end}
{phang2}{cmd:. use homicide_1960_1990}
{p_end}
{phang2}{cmd:. xtset _ID year}
{p_end}
{phang2}{cmd:. spset}
{p_end}

{pstd}创建具有默认谱归一化的邻接权重矩阵{p_end}
{phang2}{cmd:. spmatrix create contiguity W if year == 1990}

{pstd}拟合空间自回归随机效应模型{p_end}
{phang2}{cmd:. spxtregress hrate ln_population ln_pdensity gini i.year,}
                     {cmd:re dvarlag(W)}

{pstd}创建具有默认谱归一化的逆距离权重矩阵{p_end}
{phang2}{cmd:. spmatrix create idistance M if year == 1990}

{pstd}与上述相同，但使用估计量的替代表达形式{p_end}
{phang2}{cmd:. spxtregress hrate ln_population ln_pdensity gini i.year,}
                     {cmd:re sarpanel dvarlag(M) errorlag(M)}

{pstd}拟合空间自回归固定效应模型{p_end}
{phang2}{cmd:. spxtregress hrate ln_population ln_pdensity gini i.year,}
                     {cmd:fe dvarlag(M) errorlag(M)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:spxtregress, fe} 和
{cmd:spxtregress, re}
将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 22 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观测数量{p_end}
{synopt :{cmd:e(N_g)}}组（面板）数量{p_end}
{synopt :{cmd:e(g)}}组大小{p_end}
{synopt :{cmd:e(k)}}参数数量{p_end}
{synopt :{cmd:e(df_m)}}模型自由度{p_end}
{synopt :{cmd:e(df_c)}}空间项检验的自由度{p_end}
{synopt :{cmd:e(ll)}}对数似然{p_end}
{synopt :{cmd:e(iterations)}}最大对数似然估计迭代次数{p_end}
{synopt :{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt :{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt :{cmd:e(chi2)}}卡方{p_end}
{synopt :{cmd:e(chi2_c)}}空间项检验的卡方{p_end}
{synopt :{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt :{cmd:e(p_c)}}空间项检验的 p 值{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 20 22 2: 宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:spxtregress}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(depvar)}}因变量的名称{p_end}
{synopt :{cmd:e(indeps)}}自变量的名称{p_end}
{synopt :{cmd:e(idvar)}}ID 变量的名称{p_end}
{synopt :{cmd:e(model)}}{cmd:fe}，{cmd:re}，或 {cmd:re sarpanel}{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(constant)}}{cmd:hasconstant} 或 {cmd:noconstant} ({cmd:re} 仅){p_end}
{synopt :{cmd:e(dlmat)}}应用于 {depvar} 的空间权重矩阵的名称{p_end}
{synopt :{cmd:e(elmat)}}应用于误差的空间权重矩阵的名称{p_end}
{synopt :{cmd:e(chi2type)}}{cmd:Wald};模型卡方检验的类型{p_end}
{synopt :{cmd:e(vce)}}{cmd:oim}{p_end}
{synopt :{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt :{cmd:e(technique)}}最大化技术{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsok)}}允许执行 {cmd:margins} 的预测{p_end}
{synopt :{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 的 {cmd:asbalanced}{p_end}
{synopt :{cmd:e(asobserved)}}因子变量 {cmd:fvset} 的 {cmd:asobserved}{p_end}

{p2col 5 20 22 2: 矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt :{cmd:e(gradient)}}梯度向量{p_end}
{synopt :{cmd:e(Hessian)}}Hessian 矩阵{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{p2col 5 20 22 2: 函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker KKP2007}{...}
{phang}
Kapoor, M., H. H. Kelejian, 和 I. R. Prucha. 2007. 带有空间相关误差成分的面板数据模型。 {it:计量经济学杂志} 140: 97-130.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spxtregress.sthlp>}