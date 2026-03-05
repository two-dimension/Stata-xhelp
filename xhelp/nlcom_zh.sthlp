{smcl}
{* *! version 1.3.5  14may2018}{...}
{viewerdialog nlcom "dialog nlcom"}{...}
{vieweralsosee "[R] nlcom" "mansection R nlcom"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] lincom" "help lincom_zh"}{...}
{vieweralsosee "[R] predictnl" "help predictnl_zh"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{vieweralsosee "[R] testnl" "help testnl_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy postestimation" "help svy postestimation"}{...}
{viewerjumpto "Syntax" "nlcom_zh##syntax"}{...}
{viewerjumpto "Menu" "nlcom_zh##menu"}{...}
{viewerjumpto "Description" "nlcom_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "nlcom_zh##linkspdf"}{...}
{viewerjumpto "Options" "nlcom_zh##options"}{...}
{viewerjumpto "Comparison with lincom" "nlcom_zh##compare"}{...}
{viewerjumpto "Remark on the manipulability of nonlinear Wald tests" "nlcom_zh##remark"}{...}
{viewerjumpto "Examples" "nlcom_zh##examples"}{...}
{viewerjumpto "Stored results" "nlcom_zh##results"}
{help nlcom:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] nlcom} {hline 2}}估计量的非线性组合{p_end}
{p2col:}({mansection R nlcom:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
估计量的非线性组合 -- 一个表达式

{p 8 15 2}
{cmd:nlcom} [{it:name}{cmd::}]{it:{help nlcom##exp:exp}} [{cmd:,} {it:options}]


{phang}
估计量的非线性组合 -- 多个表达式

{p 8 15 2}
{cmd:nlcom} {cmd:(}[{it:name}{cmd::}]{it:{help nlcom##exp:exp}}{cmd:)}
[{cmd:(}[{it:name}{cmd::}]{it:exp}{cmd:)} ...] 
[{cmd:,} {it:options}]


{synoptset 16}{...}
{synopthdr}
{synoptline}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt iter:ate(#)}}最大迭代次数{p_end}
{synopt :{opt post}}后估计结果{p_end}
{synopt :{it:{help nlcom##display_options:display_options}}}控制列格式和行宽{p_end}

{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :{opt df(#)}}使用具有 {it:#} 自由度的 t 分布计算 p 值和置信区间{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{opt noheader} 和 {opt df(#)} 不会出现在对话框中。
{p_end}

{pstd}
第二种语法表示如果指定多个表达式，每个表达式必须用括号括起来。可选的 {it:name} 是一个有效的 Stata 名称，用于标记变换。

{marker exp}{...}
{pstd}
{it:exp} 是一个可能的非线性表达式，包含{p_end}
	    {cmd:_b[}{it:coef}{cmd:]}
	    {cmd:_b[}{it:eqno}{cmd::}{it:coef}{cmd:]}
	    {cmd:[}{it:eqno}{cmd:]}{it:coef}
            {cmd:[}{it:eqno}{cmd:]_b[}{it:coef}{cmd:]}

{marker eqno}{...}
{pstd}{it:eqno} 是{p_end}
	    {cmd:#}{it:#}
	    {it:name}

{pstd}
{it:coef} 标识模型中的一个系数。
{it:coef} 通常是一个变量名称，一个水平指示符，一个交互指示符，或涉及连续变量的交互。
水平指示符标识因子变量的一个水平，交互指示符标识交互水平的一个组合；参见 {help fvvarlist_zh}。
{it:coef} 可能包含时间序列运算符；见 {help tsvarlist_zh}。

{pstd}
区分 {cmd:[]}, 这些需要输入, 和 [], 表示可选参数。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:nlcom} 计算点估计、标准误差、检验统计量、显著性水平和置信区间，以支持任何 Stata 估计命令后（可能）非线性组合的参数估计。结果以通常的表格格式显示估计结果。计算基于“delta 方法”，这是一种适用于大样本的近似方法。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection R nlcomQuickstart:快速开始}

        {mansection R nlcomRemarksandexamples:备注和示例}

        {mansection R nlcomMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt level(#)} 指定置信区间的置信水平，作为百分比。默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置。

{phang}
{opt iterate(#)} 指定用于计算变换对原参数数值导数的最大迭代次数。默认最大迭代次数为100，但通常在少数几次迭代后就能实现收敛。您应该很少需要使用此选项。

{phang}
{opt post} 使 {cmd:nlcom} 表现得像 Stata 估计（{cmd:eclass}）命令。当指定 {opt post} 时，{cmd:nlcom} 会将变换后的估计向量及其估计的方差-协方差矩阵发布到 {cmd:e()}。这选项实际上使变换成为永久性的。因此，您可以在 {opt post} 后以与对待其他 Stata 估计命令的结果相同的方式处理变换的估计结果。例如，在发布后，您可以通过输入不带参数的 {cmd:nlcom} 重新显示结果，或使用 {help test_zh} 对变换的估计量的线性组合进行同时假设检验。

{pmore}
指定 {opt post} 会清除先前的估计结果，这只能通过重新拟合原模型或在运行 {cmd:nlcom} 之前存储估计结果并随后恢复它们来恢复；见 {manhelp estimates_store R:estimate store}。

{marker display_options}{...}
{phang}
{it:display_options}:
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}，以及
{opt nolstretch};
    参见 {helpb estimation options##display_options:[R] 估计选项}。

{pstd}
以下选项可与 {cmd:nlcom} 一起使用，但未在对话框中显示：

{phang}
{opt noheader} 抑制输出头部。

{phang}
{opt df(#)} 指定使用具有 {it:#} 自由度的 t 分布来计算 p 值和置信区间。


{marker compare}{...}
{title:与 lincom 的比较}

{pstd}
{cmd:nlcom} 是 {help lincom_zh} 的一种推广，允许对模型参数的非线性变换进行估计。在您估计一种变换且该变换是线性的情况下，使用 {cmd:lincom}; 它更快。然而，当需要估计多个线性变换或线性和非线性变换的组合时，使用 {cmd:nlcom} 还有一个额外的好处，即可以获得联合变换的方差-协方差矩阵（该矩阵存储在 {cmd:r(V)} 中）。
{cmd:lincom} 不允许同时估计多个线性组合。


{marker remark}{...}
{title:关于非线性 Wald 检验的可操作性的备注}

{pstd}
与似然比检验相比，不同的 - 数学上等效 - 假设的表述可能导致非线性 Wald 检验的不同结果（缺乏“不变性”）。例如，两个假设

	H0: {it:coefficient} = 0

	H0: exp({it:coefficient}) - 1 = 0

{pstd}
是数学上等效的表达式，但不会产生相同的检验统计量和 p 值。在极端情况下，在一种表述下，可以拒绝 H0，而在另一个等效表述下则不会拒绝 H0。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse regress}

{pstd}拟合线性回归模型{p_end}
{phang2}{cmd:. regress y x1 x2 x3}

{pstd}估计 {cmd:x2} 和 {cmd:x3} 上的系数的乘积{p_end}
{phang2}{cmd:. nlcom _b[x2]*_b[x3]}

{pstd}共同估计 {cmd:x1} 和 {cmd:x2} 以及 {cmd:x2} 和 {cmd:x3} 上的系数的比率，并将结果发布到 {cmd:e()} {p_end}
{phang2}{cmd:. nlcom (ratio1: _b[x1]/_b[x2]) (ratio2: _b[x2]/_b[x3]), post}

{pstd}检验上述两个比率是否相等{p_end}
{phang2}{cmd:. test _b[ratio1] = _b[ratio2]}

    {hline}
    设置
{phang2}{cmd:. webuse sysdsn3}

{pstd}拟合最大似然多项式逻辑模型{p_end}
{phang2}{cmd:. mlogit insure age male nonwhite site2 site3}

{pstd}估计 {cmd:Prepaid} 和 {cmd:Uninsure} 方程中 {cmd:male} 虚拟变量的系数比率{p_end}
{phang2}{cmd:. nlcom [Prepaid]_b[male] / [Uninsure]_b[male]}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:nlcom} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数{p_end}
{synopt:{cmd:r(df_r)}}残差自由度{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(b)}}变换后的系数向量{p_end}
{synopt:{cmd:r(V)}}变换系数的估计方差-协方差矩阵{p_end}

{pstd}
如果指定了 {cmd:post}，{cmd:nlcom} 还会在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(N_strata)}}分层数量 L，如果在 {cmd:svy} 后使用{p_end}
{synopt:{cmd:e(N_psu)}}数个抽样PSUs n，如果在 {cmd:svy} 后使用{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:nlcom}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}变换后的系数向量{p_end}
{synopt:{cmd:e(V)}}变换系数的估计方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_srs)}}简易随机抽样无放回的 (协)方差估计 V_srswor，如果 {cmd:svy}{p_end}
{synopt:{cmd:e(V_srswr)}}简易随机抽样有放回的 (协)方差估计 V_srswr，如果 {cmd:svy} 和 {cmd:fpc()}{p_end}
{synopt:{cmd:e(V_msp)}}模型误设 (协)方差估计 V_msp，如果 {cmd:svy} 并且可用{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <nlcom.sthlp>}