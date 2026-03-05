{smcl}
{* *! version 1.1.17  07mar2018}{...}
{viewerdialog predictnl "dialog predictnl"}{...}
{vieweralsosee "[R] predictnl" "mansection R predictnl"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] lincom" "help lincom_zh"}{...}
{vieweralsosee "[R] nlcom" "help nlcom_zh"}{...}
{vieweralsosee "[R] predict" "help predict_zh"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{vieweralsosee "[R] testnl" "help testnl_zh"}{...}
{viewerjumpto "Syntax" "predictnl_zh##syntax"}{...}
{viewerjumpto "Menu" "predictnl_zh##menu"}{...}
{viewerjumpto "Description" "predictnl_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "predictnl_zh##linkspdf"}{...}
{viewerjumpto "Options" "predictnl_zh##options"}{...}
{viewerjumpto "Remarks" "predictnl_zh##remarks"}{...}
{viewerjumpto "Examples" "predictnl_zh##examples"}
{help predictnl:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] predictnl} {hline 2}}获取非线性预测、标准误差等，估计后{p_end}
{p2col:}({mansection R predictnl:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:predictnl} {dtype} {newvar} = {it:pnl_exp} {ifin} [{cmd:,} {it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{synopt :{opth se(newvar)}}创建 {it:newvar} 包含标准误差{p_end}
{synopt :{opth var:iance(newvar)}}创建 {it:newvar} 包含方差{p_end}
{synopt :{opth w:ald(newvar)}}创建 {it:newvar} 包含 Wald 检验统计量{p_end}
{synopt :{opth p(newvar)}}创建 {it:newvar} 包含 Wald 检验的 p 值{p_end}
{synopt :{opth ci:(newvarlist:newvars)}}创建 {it:newvars} 包含置信区间的上下限{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt g(stub)}}创建 {it:stub}{cmd:1}、{it:stub}{cmd:2}、...、{it:stub}{cmd:k} 变量，包含观察特定的导数{p_end}

{syntab :高级}
{synopt :{opt iter:ate(#)}}查找最佳步长的最大迭代次数；默认值为 100{p_end}
{synopt :{opt force}}即使在可能不适当的情况下也计算标准误差等{p_end}

{synopt :{opt df(#)}}使用具有 {it:#} 自由度的 F 分布作为检验统计量的参考分布{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt df(#)} 不会出现在对话框中。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:predictnl} 在任何 Stata 估计命令后计算（可能的）非线性预测，并选择性地计算这些预测的方差、标准误差、Wald 检验统计量、p 值和置信限。
与其相关的非线性后估计命令 {cmd:testnl} 和 {cmd:nlcom} 不同，{cmd:predictnl} 生成的是数据的函数（即预测），而不是标量。{cmd:predictnl} 生成的量因此在数据的观察值上是向量化的。

{pstd}
考虑一些一般的预测，g(theta, x_i)，其中 i = 1, ..., n，theta 是模型参数，x_i 是第 i 个观察值的一些数据；假设 x_i 是固定的。通常，g(theta, x_i) 是通过 g(theta-hat, x_i) 估计的，其中 theta-hat 是在任何 Stata 估计命令后存储在 {cmd:e(b)} 中的估计模型参数。

{pstd}
在其最常用的情况下，{cmd:predictnl} 生成两个变量：一个包含估计的预测 g(theta-hat, x_i)，另一个包含 g(theta-hat, x_i) 的估计标准误差。标准误差（和其他基于标准误差的可获取数量，如检验统计量）的计算基于增量法，这是对于大样本的适当近似；详见 {mansection R predictnlMethodsandformulas:{it:方法与公式}} 在 {bf:[R] predictnl} 中。

{pstd}
{cmd:predictnl} 可与 {cmd:svy} 估计结果一起使用（假设 {cmd:predict} 也被允许），详见 {manhelp svy_postestimation SVY:svy 后估计}。

{pstd}
通过指定 {it:pnl_exp} 来处理 g(theta-hat, x_i) 的规范，并且 g(theta-hat, x_i) 的值存储在新变量 {newvar} 的存储类型 {it:type} 中。{it:pnl_exp} 是任何有效的 Stata 表达式，并且可以包含对 {cmd:predictnl} 独有的两个特殊函数的调用：

{p 8 11 6}
1. {cmd:predict(}[{it:predict_options}]{cmd:)}：
当你在评估 {it:pnl_exp} 时，{cmd:predict()} 是一个便利函数，它复制了命令执行的计算

	       {cmd:predict ...,} {it:predict_options}

{p 11 11 6}
因此，{cmd:predict()} 函数可以作为用于生成这个预测的公式的简写，也可以在公式不可用时使用。当不带参数使用时，{cmd:predict()} 复制该特定估计命令的默认预测。

{p 8 11 6}
2. {cmd:xb(}[{it:eqno}]{cmd:)}：{cmd:xb()} 函数复制线性预测 x_j*b 的计算，针对方程 {it:eqno}。
如果 {cmd:xb()} 没有指定 {it:eqno}，将获得第一个方程（或在单方程估计中唯一方程）的线性预测。

{p 11 11 6}
例如，{cmd:xb(#1)}（或者等效的 {cmd:xb()}）在没有参数时翻译为第一个方程的线性预测，{cmd:xb(#2)} 为第二个，以此类推。你也可以通过方程名称引用这些方程，例如 {cmd:xb(income)}。

{p 11 11 6}
在指定 {it:pnl_exp} 时，这两个函数可以重复使用，组合使用，以及与其他 Stata 函数和表达式组合使用。
详见 {mansection R predictnlRemarksandexamples:{it:备注与示例}} 在 {bf:[R] predictnl} 中的例子，使用这两个函数。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R predictnlQuickstart:快速入门}

        {mansection R predictnlRemarksandexamples:备注与示例}

        {mansection R predictnlMethodsandformulas:方法与公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth se(newvar)} 添加 {it:newvar}，其存储类型为 {it:type}，对于每个 {opt i} 在预测样本中，{it:newvar}{cmd:[i]} 包含 {it:pnl_exp}{cmd:[i]} 的估计标准误差。

{phang}
{opth variance(newvar)} 添加 {it:newvar}，其存储类型为 {it:type}，对于每个 {opt i} 在预测样本中，{it:newvar}{cmd:[i]} 包含 {it:pnl_exp}{cmd:[i]} 的估计方差。

{phang}
{opth wald(newvar)} 添加 {it:newvar}，其存储类型为 {it:type}，对于每个 {opt i} 在预测样本中，{it:newvar}{cmd:[i]} 包含对假设 H0:{it:pnl_exp}{cmd:[i]}=0 的 Wald 检验统计量。

{phang}
{opth p(newvar)} 添加 {it:newvar}，其存储类型为 {it:type}，其中 {it:newvar}{cmd:[i]} 包含 Wald 检验 H0:{it:pnl_exp}{cmd:[i]}=0 对应的 p 值与双边备择检验。

{phang}
{opth ci:(newvarlist:newvars)}需要指定两个 {it:newvars}，使得每个 {it:i} 的观察将包含置信区间的左端点和右端点（分别）。置信区间的水平由 {opt level(#)} 决定。

{phang}
{opt level(#)} 指定置信水平，以百分比表示，适用于置信区间。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置。

{phang}
{opt g(stub)} 指定创建新变量 {it:stub}{cmd:1}、{it:stub}{cmd:2}、...、{it:stub}{cmd:k}，其中 {opt k} 是 e(b) 的维数。{it:stub}{cmd:1} 将包含 {it:pnl_exp} 对于 e(b) 中列出的第一个元素的观察特定导数；{it:stub}{cmd:2} 将包含 {it:pnl_exp} 对于 e(b) 的导数；依此类推。如果 {it:pnl_exp} 对于预测样本中的所有观察值相对于 e(b) 中某个特定系数的导数为零，则不会创建该系数的 {it:stub} 变量。e(b) 中参数的排序正是存储的参数估计向量 e(b) 的顺序。

{dlgtab:高级}

{phang}
{opt iterate(#)} 指定用于查找 {it:pnl_exp} 相对于估计模型系数的最佳步长的最大迭代次数。默认情况下，最大迭代次数为 100，但通常在只需几次迭代的情况下即可实现收敛。你很少需要使用此选项。

{phang}
{opt force} 在 {opt predictnl} 否则会拒绝的情况下，强制计算标准误差和其他与推断相关的量。标准误差的计算通过评估 {it:pnl_exp} 相对于系数向量 e(b) 的数值导数进行。如果 {opt predictnl} 检测到 {it:pnl_exp} 可能受到 e(b) 之外的随机量的影响，它将拒绝计算标准误差或任何其他衍生量。{opt force} 选项强制计算无论如何进行。如果使用 {opt force} 选项，则无法保证任何推断量（例如标准误差）的正确性，或者所获得的值可被解释。

{pstd}
下面的选项在 {opt predictnl} 中可用，但在对话框中未显示：

{phang}
{opt df(#)} 指定使用具有 {it:#} 自由度的 F 分布作为检验统计量的参考分布。


{marker remarks}{...}
{title:关于非线性 Wald 检验的可操控性备注}

{pstd}
与似然比检验相比，不同的 -- 在数学上等价 -- 的假设表述可能会导致非线性 Wald 检验的不同结果（缺乏不变性）。例如，这两个假设

	H0: {it:pnl_exp}{cmd:[i]} = 0

	H0: exp({it:pnl_exp}{cmd:[i]}) - 1 = 0

{pstd}
是数学上等价的表达，但不会产生相同的检验统计量和 p 值。在极端情况下，在一个表述下会拒绝 H0，而在等价表述下则不会拒绝 H0。


{title:关于使用 {cmd:predict()} 和 {cmd:xb()} 函数的备注}

{pstd}
在计算标准误差等推断相关量时，{it:pnl_exp} 会针对模型参数的不同值反复评估。因此，把 {cmd:predict()} 和 {cmd:xb()} 视为替代 {it:formula} 的一种手段，而不是替代在将模型参数设定为任何特定值时获得的计算值的手段。例如，

        {cmd:. predict double }{it:pred_var, predict_options}
	{cmd:. predictnl }{it:newvar}{cmd: = }{it:pred_var}{cmd:, se(}{it:newvar_se}{cmd:)}

{pstd}
将给出标准误差（{it:newvar_se}）为零，因为一旦评估，{it:pred_var} 将包含相对于 e(b) 的固定值。相反，

{phang2}{cmd:. predictnl }{it:newvar}{cmd: = predict(}{it:predict_options}{cmd:), se(}{it:newvar_se}{cmd:)}

{pstd}
将产生预期的结果。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse lbw}{p_end}

{pstd}拟合最大似然 probit 模型{p_end}
{phang2}{cmd:. probit low lwt smoke ptl ht}

{pstd}计算预测及其标准误差{p_end}
{phang2}{cmd:. predictnl phat = normal(_b[_cons] + _b[ht]*ht + _b[ptl]*ptl +}
               {cmd:_b[smoke]*smoke + _b[lwt]*lwt), se(phat_se)}

    {hline}
    设置
{phang2}{cmd:. webuse sysdsn1, clear}

{pstd}拟合最大似然多项式逻辑模型{p_end}
{phang2}{cmd:. mlogit insure age male nonwhite i.site}{p_end}

{pstd}计算选择预付费计划相对于 indemnity 计划的观察特定相对风险（带标准误差）{p_end}
{phang2}{cmd:. predictnl RRpaid = exp(xb(Prepaid)), se(SERRppaid)}

{pstd}与上述命令相同{p_end}
{phang2}{cmd:. predictnl RRpaid = exp(xb(#1)), se(SERRppaid2)}

{pstd}直接计算相对风险作为两个预测概率的比率{p_end}
{phang2}{cmd:. predictnl RRppaid =}
    {cmd:predict(outcome(Prepaid))/predict(outcome(Indemnity)), se(SERRppaid3)}

{pstd}对于每个观察值，检验选择预付费计划相对于 indemnity 计划的相对风险是否不同于一{p_end}
{phang2}{cmd:. predictnl RRm1 = exp(xb(Prepaid)) - 1, wald(W_RRm1)}
     {cmd:p(sig_RRm1)}

    {hline}
    设置
{phang2}{cmd:. webuse drugtr, clear}

{pstd}拟合参数生存模型{p_end}
{phang2}{cmd:. streg drug age, dist(weibull)}{p_end}

{pstd}计算预测的平均生存时间及其标准误差{p_end}
{phang2}{cmd:. predictnl t_hat = predict(mean time), se(t_hat_se)}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <predictnl.sthlp>}