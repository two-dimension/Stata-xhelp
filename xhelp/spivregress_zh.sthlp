{smcl}
{* *! version 1.1.6  15oct2018}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spivregress" "mansection SP spivregress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] spivregress postestimation" "help spivregress postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] estat moran" "help estat moran"}{...}
{vieweralsosee "[R] ivregress" "help ivregress_zh"}{...}
{vieweralsosee "[SP] spmatrix" "help spmatrix_zh"}{...}
{vieweralsosee "[SP] spregress" "help spregress_zh"}{...}
{vieweralsosee "[SP] spxtregress" "help spxtregress_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{viewerjumpto "语法" "spivregress_zh##syntax"}{...}
{viewerjumpto "菜单" "spivregress_zh##menu"}{...}
{viewerjumpto "描述" "spivregress_zh##description"}{...}
{viewerjumpto "PDF文档链接" "spivregress_zh##linkspdf"}{...}
{viewerjumpto "选项" "spivregress_zh##options"}{...}
{viewerjumpto "示例" "spivregress_zh##examples"}{...}
{viewerjumpto "存储结果" "spivregress_zh##results"}
{help spivregress:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[SP] spivregress} {hline 2}}具有内生协变量的空间自回归模型{p_end}
{p2col:}({mansection SP spivregress:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:spivregress}
{depvar}
[{varlist}_1]
{cmd:(}{it:varlist}_2 {cmd:=} {it:varlist}_iv{cmd:)}
{ifin}
[{cmd:,} {it:options}]

{phang}
{it:varlist}_1 是所包含的外生回归变量的列表。

{phang}
{it:varlist}_2 是内生回归变量的列表。

{phang}
{it:varlist}_iv 是与 {it:varlist}_1 一起用作 {it:varlist}_2 的工具的外生回归变量的列表。

{synoptset 30 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt dvarl:ag(spmatname)}}空间滞后因变量；可重复{p_end}
{synopt :{opt err:orlag(spmatname)}}空间滞后误差；可重复{p_end}
{synopt :{cmdab:ivarl:ag(}{it:spmatname} {cmd::} {varlist}{cmd:)}}来自 {it:varlist}_1 的空间滞后外生变量；可重复{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt het:eroskedastic}}将误差视为异方差{p_end}
{synopt :{opt force}}允许在估计样本是用于创建空间权重矩阵的样本的子集时进行估计{p_end}
{synopt :{opt impower(#)}}工具变量近似的阶数{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为
{cmd:level(95)}{p_end}
{synopt :{help spivregress##display_options:{it:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:优化}
{synopt :{help spivregress##optimopts:{it:optimization_options}}}控制
优化过程；较少使用{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}


{p 4 6 2}
{it:varlist}_1, {it:varlist}_2, {it:varlist}_iv, 和
在 {cmd:ivarlag()} 中指定的 {it:varlist} 可以包含因子变量；见
{help fvvarlist_zh}.{p_end}
{p 4 6 2}
{cmd:coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
查看 {manhelp spivregress_postestimation SP:spivregress 后估计} 以获取估计后可用的功能.{p_end}


INCLUDE help menu_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spivregress} 是空间数据的 {help ivregress_zh} 的等效命令。
{cmd:spivregress} 拟合空间自回归 (SAR) 模型，也称为同时自回归模型，模型中可以包含额外的内生变量和外生变量。这些模型可用于考虑结果变量与未观察到的误差之间的可能依赖关系。

{pstd}
有关不含内生回归变量的模型，请参见 {manhelp spregress SP}。

{pstd}
在使用 {cmd:spivregress} 之前，如果您尚未阅读 {manlink SP Intro 1} - {manlink SP Intro 8}，建议先阅读。您的数据必须是空间数据才能使用 {cmd:spivregress}。有关如何准备数据的说明，请参见 {manlink SP Intro 3}。

{pstd}
要指定空间滞后，您需要一个或多个空间权重矩阵。
有关权重矩阵类型及其创建方法的说明，请参见 {manlink SP Intro 2} 和 {manhelp spmatrix SP}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SP spivregressQuickstart:快速开始}

        {mansection SP spivregressRemarksandexamples:备注和示例}

        {mansection SP spivregressMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt dvarlag(spmatname)} 指定一个空间权重矩阵，该矩阵定义因变量的空间滞后。
此选项可重复，以允许更高阶模型。
默认情况下，不包含因变量的空间滞后。

{phang}
{opt errorlag(spmatname)} 指定一个空间权重矩阵，该矩阵定义空间滞后误差。
此选项可重复，以允许更高阶模型。
默认情况下，不包含空间滞后误差。

{phang}
{cmd:ivarlag(}{it:spmatname} {cmd::} {varlist}{cmd:)} 指定一个空间权重矩阵和一组外生变量来定义
变量的空间滞后。{it:varlist}中的变量必须是 {it:varlist}_1 中外生变量的子集。此选项可重复，以允许
从不同矩阵创建的空间滞后。默认情况下，不包含外生变量的空间滞后。

{phang}
{cmd:noconstant}; 见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt heteroskedastic} 指定估计量将误差视为异方差，而不是默认的同方差；见
{mansection SP spregressMethodsandformulas:{it:方法和公式}} 
在 {manhelp spregress SP} 中。

{phang}
{opt force} 请求在估计样本是用于创建空间权重矩阵的样本的适当子集时进行估计。
默认情况下拒绝拟合模型。权重矩阵潜在地连接所有空间单元。当估计样本是该空间的子集时，空间连接发生变化，溢出效应可能会改变。此外，权重矩阵的归一化与如果该矩阵在估计样本上进行归一化时的情况不同。
更好的选择是在理解估计样本的空间范围后，如果合理，则为其创建新的权重矩阵。
请参见 {manhelp spmatrix SP} 和 
{mansection SP Intro2Remarksandexamplesforce:{it:缺失值、被丢弃的观察值和 W 矩阵}} 
在 {bf:[SP] Intro 2} 中。

{phang}
{opt impower(#)} 指定用于拟合模型的工具变量近似的阶数。
估计量的推导涉及一个 {it:#} 矩阵的乘积。增加 {it:#} 可能提高估计的精度且不会造成伤害，但会需要更多的计算时间。默认值为 {cmd:impower(2)}。有关 {opt impower(#)} 的更多详细信息，请参见 
{mansection SP spregressMethodsandformulasimpower:{it:方法和公式}}。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options:[R] 估计选项}。

INCLUDE help displayopts_list

{dlgtab:优化}

{marker optimopts}{...}
{phang}
{it:optimization_options}：
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
{opt nonrtol:erance}；
见 {manhelp mf_optimize M-5:优化()}。

{pstd}
以下选项与 {cmd:spivregress} 可用，
但未在对话框中显示：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/dui_southern.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/dui_southern_shp.dta .}
{p_end}
{phang2}{cmd:. use dui_southern}
{p_end}
{phang2}{cmd:. spset}
{p_end}

{pstd}创建一个具有默认光谱归一化的邻接权重矩阵{p_end}
{phang2}{cmd:. spmatrix create contiguity W}

{pstd}拟合广义空间两阶段最小二乘回归{p_end}
{phang2}{cmd:. spivregress dui nondui vehicles i.dry (police = elect),}
                     {cmd:dvarlag(W) errorlag(W)}

{pstd}与上面相同，但添加协变量 {cmd:dry} 的空间滞后{p_end}
{phang2}{cmd:. spivregress dui nondui vehicles i.dry (police = elect),}
                     {cmd:dvarlag(W) errorlag(W) ivarlag(W: i.dry)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:spivregress} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 22 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观察数量{p_end}
{synopt :{cmd:e(k)}}参数数量{p_end}
{synopt :{cmd:e(df_m)}}模型自由度{p_end}
{synopt :{cmd:e(df_c)}}比较测试的自由度{p_end}
{synopt :{cmd:e(iterations)}}广义矩方法的迭代次数{p_end}
{synopt :{cmd:e(iterations_2sls)}}两阶段最小二乘法的迭代次数{p_end}
{synopt :{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt :{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt :{cmd:e(chi2)}}卡方{p_end}
{synopt :{cmd:e(chi2_c)}}比较测试的卡方{p_end}
{synopt :{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt :{cmd:e(p_c)}}空间项测试的 p 值{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 如果广义矩方法收敛，
{cmd:0} 否则{p_end}
{synopt :{cmd:e(converged_2sls)}}{cmd:1} 如果两阶段最小二乘法收敛，
{cmd:0} 否则{p_end}

{p2col 5 20 22 2: 宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:spivregress}{p_end}
{synopt :{cmd:e(cmdline)}}按输入命令{p_end}
{synopt :{cmd:e(depvar)}}因变量名称{p_end}
{synopt :{cmd:e(indeps)}}自变量名称{p_end}
{synopt :{cmd:e(idvar)}}ID 变量名称{p_end}
{synopt :{cmd:e(estimator)}}{cmd:gs2sls}{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(constant)}}{cmd:hasconstant} 或 {cmd:noconstant}{p_end}
{synopt :{cmd:e(exogr)}}外生回归变量{p_end}
{synopt :{cmd:e(dlmat)}}应用于 {depvar} 的空间权重矩阵名称{p_end}
{synopt :{cmd:e(elmat)}}应用于误差的空间权重矩阵名称{p_end}
{synopt :{cmd:e(het)}}{cmd:heteroskedastic} 或 {cmd:homoskedastic}{p_end}
{synopt :{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方测试的类型{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsok)}}{cmd:margins}允许的预测{p_end}
{synopt :{cmd:e(marginsnotok)}}{cmd:margins}不允许的预测{p_end}
{synopt :{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt :{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 20 22 2: 矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(delta_2sls)}}空间滞后方程中系数的两阶段最小二乘估计{p_end}
{synopt :{cmd:e(rho_2sls)}}空间误差方程中系数的广义矩估计{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{p2col 5 20 22 2: 函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spivregress.sthlp>}