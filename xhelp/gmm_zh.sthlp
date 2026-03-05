{smcl}
{* *! version 1.5.5  18sep2018}{...}
{viewerdialog gmm "dialog gmm"}{...}
{vieweralsosee "[R] gmm" "mansection R gmm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] gmm postestimation" "help gmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ivregress" "help ivregress_zh"}{...}
{vieweralsosee "[R] ml" "help ml_zh"}{...}
{vieweralsosee "[R] mlexp" "help mlexp_zh"}{...}
{vieweralsosee "[R] nl" "help nl_zh"}{...}
{vieweralsosee "[R] nlsur" "help nlsur_zh"}{...}
{vieweralsosee "[XT] xtabond" "help xtabond_zh"}{...}
{vieweralsosee "[XT] xtdpd" "help xtdpd_zh"}{...}
{vieweralsosee "[XT] xtdpdsys" "help xtdpdsys_zh"}{...}
{viewerjumpto "Syntax" "gmm_zh##syntax"}{...}
{viewerjumpto "Menu" "gmm_zh##menu"}{...}
{viewerjumpto "Description" "gmm_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "gmm_zh##linkspdf"}{...}
{viewerjumpto "Options" "gmm_zh##options"}{...}
{viewerjumpto "Remarks" "gmm_zh##remarks"}{...}
{viewerjumpto "Examples" "gmm_zh##examples"}{...}
{viewerjumpto "Stored results" "gmm_zh##results"}{...}
{viewerjumpto "References" "gmm_zh##references"}
{help gmm:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[R] gmm} {hline 2}}广义矩估计{p_end}
{p2col:}({mansection R gmm:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
交互版本
    
{p 8 11 2}
{cmd:gmm} {cmd:(}[{it:reqname1}{cmd::}]{it:rexp_1}{cmd:)} 
          {cmd:(}[{it:reqname2}{cmd::}]{it:rexp_2}{cmd:)} 
   ...
   {ifin}
   [{it:{help gmm##weight:权重}}]
   [{cmd:,} {it:{help gmm##options_table:选项}}]


{phang}
矩估算程序版本
    
{p 8 23 2}
{cmd:gmm} {it:moment_prog} {ifin}
   [{it:{help gmm##weight:权重}}]{cmd:,}
   {c -(}{opt eq:uations(namelist)}{c |}{opt neq:uations(#)}{c )-}
   {c -(}{opt param:eters(namelist)}{c |}{opt nparam:eters(#)}{c )-}
   [{it:{help gmm##options_table:选项}}]
   [{it:{help gmm##program_options:程序选项}}]


{phang}
{it:reqname_j} 是第 {it:j} 个残差方程的名称,{p_end}
{phang}
{it:rexp_j} 是第 {it:j} 个残差方程的可替代表达式,
并且{p_end}
{phang}
{it:moment_prog} 是一个矩估算程序。


{synoptset 28 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt deriv:ative}{cmd:(}[{it:reqname}{c |}{it:#}]{cmd:/}{it:name} {cmd:=} {it:dexp_jk}{cmd:)}}{p_end}
{synopt : }指定 {it:reqname}（或 {it:#}）对参数 {it:name} 的导数；可以多次指定（仅限于交互版本）{p_end}
{p2coldent :* {opt two:step}}使用两步 GMM 估计量；默认值{p_end}
{p2coldent :* {opt one:step}}使用一步 GMM 估计量{p_end}
{p2coldent :* {opt i:gmm}}使用迭代 GMM 估计量{p_end}
{synopt :{opth va:riables(varlist)}}指定模型中的变量{p_end}
{synopt :{opt nocommonesample}}不限制所有方程的估计样本相同{p_end}

{syntab :工具变量}
{synopt :{opt inst:ruments}{cmd:(}[{it:reqlist}{cmd::}]{varlist}[{cmd:,} {cmdab:nocons:tant}]{cmd:)}{p_end}
{synopt : }指定工具变量；可以多次指定{p_end}
{synopt :{opt xtinst:ruments}{cmd:(}[{it:reqlist}{cmd::}]{varlist}{cmd:, lags(}{it:#_1}{cmd:/}{it:#_2}{cmd:))}}{p_end}
{synopt :}指定面板式工具变量；可以多次指定{p_end}

{syntab :权重矩阵}
{synopt :{opt wmat:rix}{cmd:(}{it:wmtype}[{cmd:, }{opt indep:endent}]{cmd:)}{p_end}
{synopt :}指定权重矩阵；{it:wmtype} 可为 {opt r:obust}、{opt cl:uster} {it:clustvar}、{opt hac} {help gmm##kernel:{it:kernel}} [{it:lags}]，或 {opt un:adjusted}{p_end}
{synopt :{opt c:enter}}在权重矩阵计算中居中时刻{p_end}
{synopt :{opt winit:ial}{cmd:(}{it:iwtype}[{cmd:, }{opt indep:endent}]{cmd:)}{p_end}
{synopt :}指定初始权重矩阵；{it:iwtype} 可为 {opt un:adjusted}、{opt i:dentity}、{cmd:xt} {help gmm##xtspec:{it:xtspec}}，或 Stata 矩阵的名称{p_end}

{syntab :SE/稳健性}
{synopt :{cmd:vce(}{it:{help gmm##vcetype:vcetype}}[{cmd:, }{opt indep:endent}]{cmd:)}}{it:vcetype}
     可为 {opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap}、
     {opt jack:knife}、{opt hac} {it:{help gmm##kernel:kernel}} {it:lags}，或
     {opt un:adjusted}{p_end}
{synopt :{opt quickd:erivatives}}使用替代方法计算 VCE 的数值导数{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opth title:(strings:string)}}在参数估计表格上方显示 {it:string} 作为标题{p_end}
{synopt :{opth title2:(strings:string)}}在指定标题和参数估计表格之间显示 {it:string} 作为副标题{p_end}
{synopt :{it:{help gmm##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab :优化}
{synopt :{opt from(initial_values)}}指定估计的初始值{p_end}
{p2coldent :# {opt igmmit:erate(#)}}指定迭代 GMM 估计量的最大迭代次数{p_end}
{p2coldent :# {opt igmmeps(#)}}指定 # 对于迭代 GMM 参数收敛标准；默认值为 {cmd:igmmeps(1e-6)}{p_end}
{p2coldent :# {opt igmmweps(#)}}指定 # 对于迭代 GMM 权重矩阵收敛标准；默认值为 {cmd:igmmweps(1e-6)}{p_end}
{synopt :{it:{help gmm##optimization_options:optimization_options}}}控制优化过程；很少使用{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}* 您最多只能指定其中一个选项。{p_end}
{p 4 6 2}# 这些选项只能在指定 {opt igmm} 时指定。{p_end}

{marker program_options}{...}
{synoptset 27 tabbed}
{synopthdr:程序选项}
{synoptline}
{syntab :模型}
{synopt :{it:evaluator_options}}传递给矩估算程序的额外选项{p_end}
{p2coldent :+ {opt hasd:erivatives}}矩估算程序可以计算参数级导数{p_end}
{p2coldent :+ {opt haslfd:erivatives}}矩估算程序可以计算线性形式导数{p_end}
{p2coldent :* {opt eq:uations(namelist)}}指定残差方程名称{p_end}
{p2coldent :* {opt neq:uations(#)}}指定残差方程的数量{p_end}
{p2coldent :# {opt param:eters(namelist)}}指定参数名称{p_end}
{p2coldent :# {opt nparam:eters(#)}}指定参数数量{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}+ 您不能同时指定 {opt hasderivatives} 和 
{opt haslfderivatives}.{p_end}
{p 4 6 2}* 您必须指定 {opt equations(namelist)} 或 {opt nequations(#)};
  您可以同时指定两者.{p_end}
{p 4 6 2}# 您必须指定 {opt parameters(namelist)} 或
  {opt nparameters(#)}；您可以同时指定两者.{p_end}


{p 4 6 2}{it:rexp_j} 和 {it:dexp_jk} 可以包含因子变量和
时间序列操作符；见 {help fvvarlist_zh} 和 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bootstrap}、{cmd:by}、{cmd:jackknife}、{cmd:rolling}、 
和 {cmd:statsby} 是允许的；见 {help prefix_zh}.{p_end}
{p 4 6 2}在 {help bootstrap_zh} 前缀中不允许使用权重。{p_end}
{p 4 6 2}{cmd:aweight}s 在 {help jackknife_zh} 前缀中不允许使用。
{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:aweight}s、{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s
是被允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}见 {manhelp gmm_postestimation R:gmm postestimation} 以获取
估计后可用的功能。

{pstd}
{it:rexp_j} 和 {it:dexp_jk} 是可替代表达式，即 Stata 表达式，同时也包含需要估计的参数。参数用大括号括起来，必须满足变量的命名要求；例如 {cmd:{c -(}beta{c )-}} 是一个参数的例子。符号
{cmd:{c -(}}{it:lcname}:{it:varlist}{cmd:{c )-}} 允许用于多个协变量及其参数的线性组合。例如，
{cmd:{c -(}xb:} {cmd:mpg} {cmd:price} {cmd:turn} {cmd:_cons}{cmd:{c )-}} 定义了
变量 {cmd:mpg}、{cmd:price}、{cmd:turn} 和 {cmd:_cons}（常数项）的线性组合。见
{mansection R gmmRemarksandexamplesSubstitutableexpressions:{it:可替代表达式}} 在 {it:备注和示例} 中 {bf:[R] gmm}.


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 内生协变量 > 广义矩估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:gmm} 执行广义矩估计（GMM）。通过命令的交互版本，您可以通过使用可替代表达式，将每个矩条件的残差方程直接输入对话框或命令行中。矩估算程序版本提供了更大的灵活性，但代价是复杂性增加；在这个版本中，您在 ado 文件中编写一个程序，根据传递给它的参数向量计算时刻。

{pstd}
{cmd:gmm} 可以拟合单方程和多方程模型。它允许形如 E{{bf:z}_i u_i({bf:b})} = {bf:0} 的矩条件，其中
{bf:z}_i 是工具变量的向量，u_i({bf:b}) 是误差项，还允许更一般的矩条件形如 E{{bf:h}_i({bf:z}_i;{bf:b})} =
{bf:0}。{cmd:gmm} 可用于横截面、时间序列和纵向（面板）数据。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R gmmRemarksandexamples:备注和示例}

        {mansection R gmmMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在该帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:derivative(}[{it:reqname}{c |}{it:#}]{cmd:/}{it:name} {cmd: =} {it:dexp_jk}{cmd:)}
指定残差方程 {it:reqname} 或 {it:#} 对参数 {it:name} 的导数。如果未指定 {it:reqname} 或 {it:#}，则 {cmd:gmm}
假定导数适用于第一个残差方程。

{pmore}
对形如 E{{bf:z}_ji u_ji({bf:b})} = {bf:0} 的矩条件，{cmd:derivative(}{it:j}{cmd:/}{it:b_k} {cmd:=} {it:dexp_jk}{cmd:)} 
应包含 {it:du_ji / db_k} 的可替代表达式。如果您将 {cmd:m} 指定为 {it:reqname}，则对于形如 
E{{bf:z}_mi u_mi({bf:b})} = 0 的矩条件，您可以指定 
{cmd:derivative(m/}{it:b_k} {cmd:=} {it:dexp_mk}{cmd:)}, 其中 {it:m} 是 {cmd:m} 的索引。

{pmore}
{it:dexp_jk} 使用与指定残差方程相同的可替代表达式语法。如果您在残差方程中声明了线性组合，则提供线性组合的导数； 
{cmd:gmm} 随后会为您应用链式法则。见 
{help gmm##lcderiv:示例 4} 下面。

{pmore}
如果您未指定 {opt derivative()} 选项，则 {cmd:gmm} 计算 数值导数。您必须要么不指定导数，要么指定每一个出现在每个 {it:j} 残差方程中的 {it:k} 参数的导数，除非导数是恒等于零的。
您不能指定某些解析导数并让 {cmd:gmm} 计算其余部分数值上。

{phang}
{opt twostep}、{opt onestep} 和 {opt igmm} 指定要使用的估计量。
您最多只能指定其中一个选项。
{opt twostep} 为默认值。

{pmore}
{opt twostep} 请求两步 GMM 估计量。{cmd:gmm} 根据初始权重矩阵获取参数估计，根据那些估计计算新的权重矩阵，然后根据那一权重矩阵重新估计参数。

{pmore}
{opt onestep} 请求一步 GMM 估计量。参数根据初始权重矩阵进行估计，除了在计算适当的方差-协方差（VCE）矩阵时，不进行权重矩阵的更新。

{pmore}
{opt igmm} 请求迭代 GMM 估计量。{cmd:gmm} 根据初始权重矩阵获取参数估计，根据那些估计计算新的权重矩阵，根据那一权重矩阵重新估计参数，计算新的权重矩阵，依此类推，直到收敛。
当参数向量的相对变化小于 {opt igmmeps()} 时，权重矩阵的相对变化小于 {opt igmmweps()}，或完成了 {opt igmmiterate()} 次迭代时，声明收敛。
{help gmm##H2005:Hall (2005, sec. 2.4 and 3.6)}提到使用迭代估计器可能会对有限样本效率带来增益。

{phang}
{opth variables(varlist)} 指定模型中的变量。
{opt gmm} 忽略任何这些变量有缺失值的观察。如果未指定 {cmd:variables()}，则 {cmd:gmm}
假设所有观察均有效，并在初始参数向量的任何残差方程评估为缺失时发出错误消息。

{phang}
{opt nocommonesample} 请求 {cmd:gmm} 不限制估计样本对于所有方程都相同。默认情况下， 
{cmd:gmm} 将限制估计样本为模型中所有方程可用的观察，反映其他多方程估计器（例如 {cmd:nlsur}、{cmd:sureg} 或
{cmd:reg3}）的行为。然而，对于某些模型，不同的方程可能有不同数量的观察。
对于这些模型，您应该指定 {opt nocommonesample}。见 {help gmm##dynpan:动态面板数据} 
示例以获取需要此选项的一种模型类型。如果指定了 {opt nocommonesample}，则无法指定权重。

{dlgtab:工具变量}

{phang}
{opt instruments}{cmd:(}[{it:reqlist}{cmd::}] 
{varlist}[{cmd:, }{opt noconstant}]{cmd:)} 指定要使用的工具变量列表。如果您仅指定单个残差
方程，则不需要指定工具变量应用于的方程；您可以省略 {it:reqlist}，仅需指定 
{cmd:instruments(}{it:varlist}{cmd:)}。默认情况下，常数项包含在 {it:varlist} 中；要省略常数项，请使用 
{cmd:noconstant} 子选项： {cmd:instruments(}{it:varlist}{cmd:, noconstant)}。

{pmore}
如果您的模型有形式如下的多个矩条件

{pmore2}{space 1}{ {bf:z}1_i u1({bf:b})_i }{p_end}
{pmore2}E{ ............ } = {bf:0}{p_end}
{pmore2}{space 1}{ {bf:z}q_i uq({bf:b})_i }{p_end}

{pmore}
那么可以指定多个对应的残差方程。然后指定 {it:reqname} 或 {it:reqlist} 以指示要使用变量列表作为工具变量的残差方程，如果您不希望将该列表应用于所有残差方程。例如，您可以输入

{phang3}{cmd:gmm (main:} {it:rexp_1}{cmd:) (}{it:rexp_2}{cmd:)}
         {cmd:(}{it:rexp_3}{cmd:), instruments(z1 z2)}
         {cmd:instruments(2: z3) instruments(main 3: z4)}

{pmore}
变量 {cmd:z1} 和 {cmd:z2} 将作为所有三个方程的工具变量，{cmd:z3} 将作为第二
方程的工具变量，而 {cmd:z4} 将作为第一个和第三个方程的工具变量。请注意，我们选择为第一个残差
方程提供一个名称，但不为第二和第三个方程提供，识别每个方程的方程号。

{pmore}
{it:varlist} 可包含因子变量和时间序列操作符；见
{help fvvarlist_zh} 和 {help tsvarlist_zh}，分别。

{phang}
{opt xtinstruments}{cmd:(}[{it:reqlist}{cmd::}] 
{varlist}{cmd:, lags(}{it:#_1}{cmd:/}{it:#_2}{cmd:))} 用于面板数据模型，其中可用工具的集合取决于
时间段。与 {opt instruments()} 一样，您可以在变量列表前面加上残差方程名称或编号，以将工具定向到
特定方程。与 {opt instruments()} 不同，在 {it:varlist} 中不包括常数项。您必须 {cmd:xtset} 数据后使用此
选项；见 {help xtset_zh}。

{pmore}
如果您指定

{pmore2}
{cmd:gmm} ...{cmd:, xtinstruments(x, lags(1/.))} ...

{pmore}
那么对于面板 {it:i} 和时间 {it:t}，{cmd:gmm} 将使用 
{it:x_(i,t-1)}、{it:x_(i,t-2)}、...、{it:x_i1} 作为工具变量。更一般地，指定
{cmd:xtinstruments(x, lags(}{it:#_1}{cmd:,}{it:#_2}{cmd:))} 会将 
{it:x_(i,t-#_1)}、...、{it:x_(i,t-#_2)} 作为工具变量；设置 
{it:#_2} = {cmd:.} 将请求所有可用的滞后。
{it:#_1} 和 {it:#_2} 必须为零或非负整数。

{pmore}
{cmd:gmm} 会自动排除没有有效工具的观察。尽管如此，仍包括只有部分滞后可用的观察。例如，如果您请求使用滞后
一到三，{cmd:gmm} 将包括时间段二和三的观察，即使可用的工具滞后不超过三。

{dlgtab:权重矩阵}

{marker wmatrix}{...}
{phang}
{opt wmatrix}{cmd:(}{it:wmtype}[{cmd:,} {opt independent}]{cmd:)} 
指定要在两步和迭代 GMM 估计量中使用的权重矩阵类型。

{pmore}
指定 {cmd:wmatrix(robust)} 请求权重矩阵，适用于误差相互独立但不一定同分布的情况。{cmd:wmatrix(robust)} 是默认值。

{pmore}
指定 {cmd:wmatrix(cluster} {it:clustvar}{cmd:)} 请求权重矩阵，考虑到由 {it:clustvar} 确定的聚类内观察间的任意相关性。

{marker kernel}{...}
{pmore}
指定 {cmd:wmatrix(hac} {it:kernel} {it:#}{cmd:)} 请求使用所指定核（见下文）和 {it:#} 滞后的异方差-自相关一致（HAC）权重矩阵。
核的带宽等于滞后数加一。

{pmore}
指定 {cmd:wmatrix(hac} {it:kernel} {cmd:opt} [{it:#}]{cmd:)} 请求一个 HAC 权重矩阵，使用所指定的核，滞后顺序使用 Newey 和 West 的 ({help gmm##NW1994:1994}) 最优滞后选择算法。{it:#} 是一个可选的调节参数，会影响选择的滞后顺序；见 
{mansection R gmmMethodsandformulaswmatrixopt:讨论}
在 {bf:[R] gmm} 中。

{pmore}
指定 {cmd:wmatrix(hac} {it:kernel}{cmd:)} 请求一个 HAC 
权重矩阵，使用所指定的核和 {it:N}-2 个滞后，
其中 {it:N} 是样本大小。

{pmore}
可用于 HAC 权重矩阵的核有三种，您可以通过统计学家使用的名称或经济学家更熟悉的名称请求每种核：

{p 12 16 4}
{opt ba:rtlett} 或 {opt nw:est} 请求 Bartlett（Newey-West）核；

{p 12 16 4}
{opt pa:rzen} 或 {opt ga:llant} 请求 Parzen（Gallant）核；和

{p 12 16 4}
{opt qu:adraticspectral} 或 {opt an:drews} 请求二次光谱（Andrews）核。

{pmore}
指定 {cmd:wmatrix(unadjusted)} 请求权重矩阵，适用于误差为同方差的情况。在某些应用中，构造的 GMM 估计量被称为（非线性）两阶段最小二乘（2SLS）估计量。

{pmore}
包括 {cmd:independent} 子选项创建一个假定矩条件是相互独立的权重矩阵。该子选项通常用于复制其他可以在 GMM 框架外进行的模型，例如通过系统范围 2SLS 估计方程组。 
如果仅指定一个残差方程，则此子选项无效。

{pmore}
{opt wmatrix()} 在同时指定 {cmd:onestep} 的情况下无效。

{phang}
{opt center} 请求在计算 GMM 权重矩阵时居中样本矩。默认情况下，不进行居中处理。

{phang}
{opt winitial}{cmd:(}{it:iwtype}[{cmd:,} {opt independent}]{cmd:)} 
指定用于获取第一步参数估计的权重矩阵。

{pmore}
指定 {cmd:winitial(unadjusted)} 请求一个假定矩条件独立且同分布的权重矩阵。该矩阵的形式为（{bf:Z}'{bf:Z})^-1，其中 {bf:Z} 表示在 {cmd:instruments()} 选项中指定的所有工具。
为了避免奇异权重矩阵，您应该指定至少 q-1 个形式为 E{{bf:z}_hi u_hi({bf:b})} = {bf:0} 的矩条件，其中 q 是矩条件的数量，或指定 {cmd:independent} 子选项。

{pmore}
包括 {opt independent} 子选项创建一个假定矩条件相互独立的权重矩阵。权重矩阵中与两个矩条件之间的协方差对应的元素被设为零。如果仅指定一个残差方程，则此子选项无效。

{pmore}
{cmd:winitial(unadjusted)} 是默认值。

{pmore}
{cmd:winitial(identity)} 请求使用单位矩阵。

{marker xtspec}{...}
{pmore}
{cmd:winitial(xt} {it:xtspec}{cmd:)} 用于动态面板数据模型，其中一个残差方程以一阶差分形式指定。 {it:xtspec} 是一个字符串，由字母 "L" 和 "D" 组成，其长度等于模型中的残差方程的数量。如果一个残差方程以水平形式书写，则为该残差方程指定 "L"， 如果它以一阶差分形式书写，则为该残差方程指定 "D"； {it:xtspec} 不区分大小写。 
当指定此选项时，您最多只能指定一个水平残差方程和一个一阶差分残差方程。
见下面的 {help gmm##dynpan:动态面板数据} 示例。

{pmore}
{opt winitial(matname)} 请求使用 Stata 矩阵 {it:matname}。 
如果指定 {opt winitial(matname)}，则不能指定 {opt independent} 子选项。

{dlgtab:SE/稳健性}

{marker vcetype}{...}
{phang}
{cmd:vce(}{it:vcetype} [{cmd:, independent}]{cmd:)} 指定报告的标准误差的类型，包括对某些种类的不当规格稳健的类型 
({cmd:robust})、允许组内相关性 ({cmd:cluster} {it:clustvar}) 和使用自助方法或盲法方法 ({cmd:bootstrap}、{cmd:jackknife})；
见 {help vce_option_zh:[R] {it:vce_option}}。

{pmore}
{cmd:vce(unadjusted)} 指定使用未调整（非稳健）的 VCE 矩阵；这与 {opt twostep} 选项一起，导致常在教科书中讨论的 
“最优两步 GMM” 估计。

{pmore}
默认的 {it:vcetype} 基于 {opt wmatrix()} 选项中指定的 {it:wmtype}。如果指定了 {opt wmatrix()} 
但未指定 {opt vce()}，则将 {it:vcetype} 设置为 {it:wmtype}。要覆盖此行为并获得未调整（非稳健）的 VCE 矩阵，请指定 {cmd:vce(unadjusted)}。

{pmore}
指定 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)} 分别产生基于自助法或盲法的标准误差。有关这些 VCE 的更多信息，请参见 
{manhelpi vce_option R}、{manhelp bootstrap R} 和 {manhelp jackknife R}。

{pmore}
{it:vcetype} 的语法与 {cmd:bootstrap} 和 {cmd:jackknife} 以外的类型相同，见
{helpb gmm##wmatrix:wmatrix()}。

{phang}
{opt quickderivatives} 请求使用替代方法计算 VCE 的数值导数。如果指定了 {opt derivatives()}、 {opt hasderivatives} 或 
{opt haslfderivatives}，则此选项无效。

{pmore}
VCE 依赖于 {cmd:gmm} 必须数值计算的部分导数矩阵，除非您提供解析导数。 
如果您的模型有许多工具、残差方程或参数，则该雅可比矩阵会特别大。

{pmore}
默认情况下，{cmd:gmm} 分别计算雅可比矩阵的每个元素，并每次搜索最佳步长。尽管该过程产生准确的导数，但在计算上很繁重：
{cmd:gmm} 可能需要为雅可比矩阵的每个元素评估您模型的时刻五次或更多次。

{pmore}
当您指定 {opt quickderivatives} 选项时， {cmd:gmm} 同时计算与某个参数相对应的所有导数，使用与参数值成比例的固定步长。
这种方法要求对雅可比矩阵的整个列仅评估模型的时刻两次，因此在您指定许多工具或残差方程时影响最大。

{pmore}
大多数时间，这两种方法产生几乎相同的结果，但如果残差方程高度非线性或工具相差很大，{opt quickderivatives} 方法可能会失败。
在少数情况下，如果您指定 {opt quickderivatives} 并获得可疑的大或小标准误差，请尝试在不使用此选项的情况下重新拟合模型。

{dlgtab:报告}

{phang}
{opt level(#)}; 见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opth title:(strings:string)} 指定将显示在参数估计表格上方的可选标题。

{phang}
{opth title2:(strings:string)} 指定在 {opt title()} 中指定的标题和参数估计表格之间显示的可选副标题。
如果指定了 {opt title2()}，但未指定 {opt title()}，则 {opt title2()} 与 {opt title()} 具有相同的效果。

INCLUDE help displayopts_list

{dlgtab:优化}

{phang}
{opt from(initial_values)} 指定开始估计的初始值。您可以指定参数名称、其初始值、另一个参数名称、其初始值，依此类推，或可以指定一个 1 x k 矩阵，其中 k 是模型中的参数数量。例如，为了初始化 {opt alpha} 为 1.23 和 {opt delta} 为 4.57，您可以输入

{pmore2}
{cmd:gmm} ...{cmd:,} {cmd:from(alpha 1.23 delta 4.57)} ...

{pmore}
或者等效地

{pmore2}
{cmd:matrix} {cmd:define} {cmd:initval} {cmd:=} {cmd:(1.23, 4.57)}{break}
{cmd:gmm} ...{cmd:,} {cmd:from(initval)} ...

{pmore}
在 {cmd:from()} 选项中声明的初始值会覆盖在可替代表达式中声明的任何值。如果指定的参数不出现在模型中，{cmd:gmm} 会发出错误消息。如果指定一个矩阵，值必须按模型中参数声明的相同顺序排列。

{phang}
{opt igmmiterate(#)}、{opt igmmeps(#)} 和
{opt igmmweps(#)} 控制
用于迭代 GMM 估计器的迭代过程。这些选项只能在
您还指定 {cmd:igmm} 时指定。

{phang2}
{opt igmmiterate(#)} 指定使用迭代 GMM 估计器执行的最大迭代次数。默认值是使用 {helpb set maxiter} 设置的数值，默认值为 16000。

{phang2}
{opt igmmeps(#)} 指定使用迭代 GMM 估计器时用于后续参数估计的收敛标准。 
默认值为 {cmd:igmmeps(1e-6)}。当相继参数估计之间的相对差异小于 {cmd:igmmeps()} 且权重矩阵的相对差异小于 {cmd:igmmweps()} 时，声明收敛。

{phang2}
{opt igmmweps(#)} 指定使用迭代 GMM 估计器时权重矩阵的后续估计的收敛标准。 
默认值为 {cmd:igmmweps(1e-6)}。当相继参数估计之间的相对差异小于 
{cmd:igmmeps()} 且权重矩阵的相对差异小于 {cmd:igmmweps()} 时声明收敛。

{marker optimization_options}{...}
{phang}
{it:optimization_options}: {opt tech:nique()}、 
{opt conv_maxiter()}、 {opt conv_ptol()}、 {opt conv_vtol()}、 
{opt conv_nrtol()}、 {opt tracelevel()}。 {opt technique()} 指定 
要使用的优化技术； {cmd:gn}（默认值）、 {cmd:nr}、 {cmd:dfp} 和 {cmd:bfgs} 是允许的。 {opt conv_maxiter()} 
指定最大迭代次数； {opt conv_ptol()}、 
{opt conv_vtol()} 和 {opt conv_nrtol()} 分别指定参数、梯度和缩放 Hessian 的收敛标准。 
{opt tracelevel()} 允许您在迭代过程中获取更多详细信息。 
见 {help mf_optimize_zh:[M-5] optimize()}。

{pstd}
以下选项仅与 {cmd:gmm} 的矩估算程序版本相关：

{dlgtab:模型}

{phang}
{it:evaluator_options} 指与您的 {it:moment_prog} 允许的任何选项。

{phang}
{opt hasderivatives} 和 {opt haslfderivatives} 表示您已编写矩估算程序以计算导数。您可以指定一个或两个但不能同时指定两者。如果未指定任一选项，{cmd:gmm} 将数值计算导数。

{pmore}
{opt hasderivatives} 表示您的矩估算程序计算参数级导数。

{pmore}
{opt haslfderivatives} 表示您的矩估算程序计算方程级导数，仅在您使用 {cmd:{c -(}}{it:lcname}{cmd::}{it:varlist}{cmd:{c )-}} 
语法指定模型参数时有用。

{pmore}
有关更多信息，请参见 {mansection R gmmRemarksandexamplesdetailsofmoment:{it:矩估算程序细节}} 在 
{bf:[R] gmm} 中。

{phang}
{opt equations(namelist)} 指定模型中残差方程的名称。如果您同时指定 {opt equations()} 和 
{opt nequations()}，前者中的名称数量必须与后者中指定的数量相匹配。

{phang}
{opt nequations(#)} 指定模型中的残差方程数量。如果没有通过 {opt equations()} 选项指定名称， 
{cmd:gmm} 会将残差方程编号为 1、2、3、.... 如果同时指定了 {opt equations()} 和 {opt nequations()}， 
前者中的名称数量必须与后者中指定的数量相匹配。

{phang}
{opt parameters(namelist)} 指定模型中参数的名称。参数名称必须遵循 Stata 变量的命名约定；见 {findalias frnames}。

{pmore}
另外，您可以使用参数方程符号指定参数的线性组合。每个线性组合的形式为 
{cmd:{c -(}}{it:lcname}{cmd::}{it:varlist}{cmd:{c )-}}，其中 {it:varlist} 是一个或多个变量名。通过 {it:varlist} 中指定 {help _variables_zh:系统变量}
{cmd:_cons} 来包括常数项。区分 {cmd:{c -(}}{it:lcname}{cmd::}{it:varlist}{cmd:{c )-}}，其中 {it:lcname} 识别线性组合，以及 
{cmd:(}{it:reqname}{cmd::}{it:rex}{cmd:)}，其中 {it:reqname} 识别残差方程。当使用线性组合语法时，{cmd:gmm} 会在传递给您的评估器程序的参数向量的每个元素前加上 {it:lcname}{cmd::} 以生成唯一名称。

{pmore}
如果您同时指定 {opt parameters()} 和 {opt nparameters()}，前者中的名称数量必须与后者中指定的数量相匹配。 

{phang}
{opt nparameters(#)} 指定模型中的参数数量。
如果没有通过 {opt parameters()} 选项指定名称， 
{cmd:gmm} 会将它们命名为 {cmd:b1}、{cmd:b2}、...、{cmd:b}{it:#}。如果同时指定 
{opt parameters()} 和 {opt nparameters()}，前者中的名称数量必须与后者中指定的数量相匹配。

{pstd}
以下选项仅在 {opt gmm} 中可用，但未在对话框中显示：

{phang}
{opt coeflegend}; 见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker remarks}{...}
{title:备注}

{pstd}
备注通过以下标题提供：

            {help gmm##interactive:交互版本}
            {help gmm##moment-eval:矩估算程序版本}
            {help gmm##substitute:可替代表达式}


{marker interactive}{...}
{title:交互版本}

{pstd}
在许多应用中，矩条件可以写成以下形式：

{pmore}
E{{bf:z}_i u_i({bf:b})} = {bf:0}

{pstd}
其中 {it:i} 索引观察， {bf:b} 是一个 {it:p} x 1 的参数向量，u({bf:b}) 是一个残差项，而 {bf:z} 表示一个或多个工具变量的向量，即 {bf:z1}、{bf:z2}、...、{bf:z}{it:q}。
在这里您将输入

{pmore}
{cmd:. gmm (}{it:<用于 u_i(}{bf:b}{it:) 的表达式}{cmd:), instruments(z1, z2, }...{cmd:, z}{it:q}{cmd:)}

{pstd} 
在其他应用中，我们不能将矩条件写成残差和工具变量列表的乘积，而是具有更一般的矩条件：

{pmore}
E{{bf:h}_i({bf:b})} = {bf:0}

{pstd}
其中 {bf:h}({bf:b}) 是一个 {it:q} x 1 的向量值函数。这里您将输入

{pmore}{cmd:. gmm (}{it:<用于 h_1i(}{bf:b}{it:) 的表达式}{cmd:)} {cmd:(}{it:<用于 h_2i(}{bf:b}{it:) 的表达式}{cmd:)} ...   {p_end}
{pmore}{space 6}{cmd:(}{it:<用于 h_qi(}{bf:b}{it:) 的表达式}{cmd:)} 

{pstd}
其中 h_1i({bf:b}) 是 {bf:h}({bf:b}) 的第一个元素，依此类推。

{pstd}
在又一些应用中，您的矩条件可能具有以下形式：

{pmore}{space 1}{ {bf:z}_1i u_1i({bf:b}) }{p_end}
{pmore}E{ ............ } = {bf:0}{pend}
{pmore}{space 1}{ {bf:z}_qi u_qi({bf:b}) }{pend}

{pstd}
此时 {bf:z}_1i 是与第一个残差项 u_1i({bf:b}) 相关联的工具变量向量 {bf:z11}、{bf:z12}、...、{bf:z1}q1。 
在这一情况下，您将输入

{pmore}{cmd:. gmm (}{it:<用于 u_1i(}{bf:b}{it:) 的表达式}{cmd:)}{p_end}
{pmore}{space 6}{cmd:(}{it:<用于 u_2i(}{bf:b}{it:) 的表达式}{cmd:)} ...{p_end}
{pmore}{space 6}{cmd:(}{it:<用于 u_qi(}{bf:b}{it:) 的表达式}{cmd:)}{cmd:,}{p_end}
{pmore}{space 6}{cmd:instruments(1: z11 z12} ... {cmd:z1}{it:q1}{cmd:)}{p_end}
{pmore}{space 6}{cmd:instruments(2: z21 z22} ... {cmd:z2}{it:q2}{cmd:)} ...{p_end}
{pmore}{space 6}{cmd:instruments(3: z31 z32} ... {cmd:z3}{it:q3}{cmd:)}{pend}

{pstd}
当然，您还可以组合形如 
E{{bf:h}_i({bf:b})} = {bf:0} 和 E{{bf:z}_ki u_ki({bf:b})} = 
{bf:0} 的矩条件。


{marker moment-eval}{...}
{title:矩估算程序版本}

{pstd}
您可以编写一个程序，通过与 {cmd:ml} 和 {cmd:nl} 函数评估器程序版本类似的方式评估矩，而不是在对话框或命令行中定义矩方程。
我们通过一个简单示例说明矩估算程序的机制。假设我们希望拟合模型

{pmore}
y_i = {bf:x}_i'{bf:b} + u_i

{pstd}
其中我们怀疑 {bf:x} 的某些元素是内生的。我们作为工具有向量 {bf:z}，由与 u_i 不相关的外生的 {bf:x} 元素和额外变量组成。在 GMM 框架中，我们可以将矩条件写成

{pmore}
E{{bf:z}_i u_i({bf:b})} = E{{bf:z}_i(y_i - {bf:x}_i'{bf:b})} = 0

{pstd}
我们对矩估算程序的第一次尝试是

{pmore}{cmd:program gmm_ivreg}{p_end}

{pmore}{space 4}{cmd:version {ccl stata_version}}{p_end}

{pmore}{space 4}{cmd:syntax varlist [if] , at(name) rhs(varlist) depvar(varlist)}{p_end}

{pmore}{space 4}{cmd:tempvar m}{p_end}
{pmore}{space 4}{cmd:quietly gen double `m' = 0 `if'}{p_end}
{pmore}{space 4}{cmd:local i 1}{p_end}
{pmore}{space 4}{cmd:foreach var of varlist `rhs' {c -(}}{p_end}
{pmore}{space 8}{cmd:quietly replace `m' = `m' + `var'*`at'[1,`i'] `if'}{p_end}
{pmore}{space 8}{cmd:local `++i'}{p_end}
{pmore}{space 4}{cmd:{c )-}}{p_end}
{pmore}{space 4}{cmd:quietly replace `m' = `m' + `at'[1,`i'] `if'{space 4}// const}{p_end}

{pmore}{space 4}{cmd:quietly replace `varlist' = `depvar' - `m' `if'}{p_end}

{pmore}{cmd:end}{p_end}

{pstd}
假设我们的因变量 y_i 是 {cmd:mpg}； {bf:x} 包含 {cmd:gear_ratio}、{cmd:turn} 和常数；而 {bf:z} 包含 {cmd:gear_ratio}、{cmd:length}、{cmd:headroom} 和常数。然后要拟合我们的模型，我们将输入

{pmore}{cmd:. gmm gmm_ivreg, nequations(1) nparameters(3) }{p_end}
{pmore}{space 6}{cmd:instruments(gear_ratio length headroom)} {cmd:depvar(mpg)}{p_end}
{pmore}{space 6}{cmd:rhs(gear_ratio turn)}{p_end}

{pstd}
首先，请注意 {opt depvar()} 和 {opt rhs()} 不是 {cmd:gmm} 命令识别的选项。因此，{cmd:gmm} 将将这些选项传递给我们的矩估算程序。

{pstd}
我们的矩估算程序接受 {it:varlist}。{cmd:gmm} 将向我们的程序传递该 {it:varlist} 中的 {it:q} 个变量， 
其中 {it:q} 是在 {opt nequations()} 或 {opt equations()} 选项中指定的矩方程的数目。因为在我们的命令中， 
我们指定了 {cmd:nequations(1)}，所以 {it:varlist} 将只包含一个变量，我们将在其中填入我们的唯一矩方程 
u_i({bf:b}) = y_i - {bf:x}_i'{bf:b}。

{pstd}
我们在参数向量中评估时刻所需的参数向量通过必需的 {opt at()} 选项传递给程序； 
所有矩估算程序必须接受此选项。在我们的调用命令中，我们指定了 
{cmd:nparameters(3)}，因此传递给我们程序的 {cmd:`at'} 向量将是 1 x 3 的。

{pstd}
我们编写的矩估算程序也接受 {opt depvar()} 和 {opt rhs()} 选项。 
这样，我们只需通过更改在这些选项和 {opt instruments()} 选项中指定的变量拟合其他具有内生回归量的回归模型。 
与专为具有内生回归量的线性回归设计的命令（如 {cmd:ivregress}）不同，使用 {cmd:gmm} 我们必须在 {opt instruments()} 选项中指定完整的工具列表，包括外生回归量。

{pstd}
我们的程序还接受一个 {opt if} 条件，因为这就是 {cmd:gmm} 如何与估计样本进行通信。对所有操作在变量上的命令，我们都包括表达式 {cmd:`if'} 以限制它们在估计样本内的操作。

{pstd}
我们刚刚解释的方法可用于拟合任意 GMM 模型。当某些时刻在参数上是线性的时，我们可以在 {opt parameters()} 
选项中指定完整的方程名称，并使用 {help matrix_score_zh:matrix score} 来计算变量的线性组合，而不必像我们之前的程序那样循环遍历每个变量。
因此，我们可以将上述示例的矩估算程序写成如下形式：

{pmore}{cmd:program gmm_ivreg_2}{p_end}

{pmore}{space 4}{cmd:version {ccl stata_version}}{p_end}
	
{pmore}{space 4}{cmd:syntax varlist [if] , at(name) depvar(varlist)}{p_end}
	
{pmore}{space 4}{cmd:tempvar xb}{p_end}
{pmore}{space 4}{cmd:matrix score double `xb' = `at' `if', eq(#1)}{p_end}
	
{pmore}{space 4}{cmd:quietly replace `varlist' = `depvar' - `xb' `if'}{p_end}
	
{pmore}{cmd:end}{p_end}

{pstd}
现在，为了拟合我们的模型，我们输入

{pmore}{cmd:. gmm gmm_ivreg_2, nequations(1) depvar(mpg)}{p_end}
{pmore}{space 6}{cmd:parameters({mpg:gear_ratio turn _cons})}{p_end}
{pmore}{space 6}{cmd:instruments(gear_ratio length headroom)}{p_end}

{pstd}
因为我们为每个参数指定了完整的方程和变量名称，因此传递给我们程序的 {cmd: `at'} 向量的列将被标记，以便 
{cmd:matrix score} 可以计算线性组合，并且我们不再需要包括选项以将变量名称传递给程序。为了简单起见，我们包括了一个选择以指定因变量，但也可以使用 Stata 的 {help macro_zh} 函数从 
{cmd: `at'} 向量中提取它。


{marker substitute}{...}
{title:可替代表达式}

{pstd}
您可以与 {cmd:gmm} 的交互和编程可替代表达式版本一起使用可替代表达式来定义方程组。
可替代表达式与 Stata 中的任何其他数学表达式相同，只是模型参数被放在大括号内。

{pstd}
您为系统中的每个方程指定一个可替代表达式，您必须遵循三条规则：

{phang2}
1.  模型的参数用大括号括起来：
{cmd:{c -(}b0{c )-}}、{cmd:{c -(}param{c )-}} 等。参数名称必须遵循与变量名称相同的约定；见 {findalias frnames}。

{phang2}
2.  参数的初始值通过在大括号内包含等号和初始值提供： {cmd:{c -(}b0=1{c )-}}、 
{cmd: {c -(}param=3.571{c )-}} 等。 

{pmore2}
您还可以使用 {cmd:from()} 选项指定初始值。 
在 {cmd:from()} 中指定的初始值将覆盖在可替代表达式中的任何提供的初始值。如果您未指定参数的初始值， 
则其初始值为 0。

{phang2}
3.  变量的线性组合可以使用符号 {cmd:{c -(}}{it:lc}{cmd::}{it:varlist}{cmd:{c )-}} 包含：
{cmd:{c -(}}{cmd:xb: mpg price weight _cons}{c )-}、{cmd:{c -(}}{cmd:score: w x z}{cmd:{c )-}}，等。
线性组合的参数初始化为 0。

{pstd}
可替代表达式可以包含涉及标量和变量的任何数学表达式。有关表达式的更多信息，请参见 {help operator_zh} 和 {help exp_zh}。


{marker examples}{...}
{title:示例}

{pstd}
简单线性回归{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress mpg gear_ratio turn}{p_end}
{phang2}{cmd:. gmm (mpg - {b1}*gear_ratio - {b2}*turn - {b0}), instruments(gear_ratio turn)}{p_end}

{pstd}
同上，带解析导数{p_end}
{phang2}{cmd:. gmm (mpg - {b1}*gear_ratio - {b2}*turn - {b0}), instruments(gear_ratio turn)}
         {cmd:derivative(/b1 = -1*gear_ratio) derivative(/b2 = -1*turn)}
         {cmd:derivative(/b0 = -1)}{p_end}

{pstd}
简单线性回归，使用线性组合{p_end}
{phang2}{cmd:. gmm (mpg - {xb:gear_ratio turn} - {b0}), instruments(gear_ratio turn)}{p_end}

{pstd}
{marker lcderiv}
同上，带解析导数{p_end}
{phang2}{cmd:. gmm (mpg - {xb:gear_ratio turn} - {b0}), instruments(gear_ratio turn)}
       {cmd:derivative(/xb = -1) derivative(/b0 = -1)}{p_end}

{pstd}
两阶段最小二乘（同 {cmd:ivregress 2sls}）{p_end}
{phang2}{cmd:. ivregress 2sls mpg gear_ratio (turn = weight length headroom)}{p_end}
{phang2}{cmd:. gmm (mpg - {b1}*turn - {b2}*gear_ratio - {b0}),}
            {cmd:instruments(gear_ratio weight length headroom) onestep}{p_end}

{pstd}
两步 GMM 估计（同 {cmd:ivregress gmm}）{p_end}
{phang2}{cmd:. ivregress gmm mpg gear_ratio (turn = weight length headroom)}{p_end}
{phang2}{cmd:. gmm (mpg - {b1}*turn - {b2}*gear_ratio - {b0}),}
            {cmd:instruments(gear_ratio weight length headroom)}
            {cmd:wmatrix(robust)}{p_end}

{marker example7}{...}
{pstd}
对伽马分布参数的估计
       ({help gmm##G2018:Greene 2018, 493}){p_end}
{phang2}{cmd:. webuse greenegamma}{p_end}
{phang2}{cmd:. gmm (y - {c -(}P{c )-}/{c -(}lambda{c )-})}{p_end}
{phang2}{space 4}{cmd:(y^2 - {c -(}P{c )-}*({c -(}P{c )-}+1)/{c -(}lambda{c )-}^2)}{p_end}
{phang2}{space 4}{cmd:(ln(y) - digamma({c -(}P{c )-}) + ln({c -(}lambda{c )-}))}{p_end}
{phang2}{space 4}{cmd:(1/y - {c -(}lambda{c )-}/({c -(}P{c )-}-1)),}{p_end}
{phang2}{space 4}{cmd:from(P 2.41 lambda 0.08) winitial(identity)}{p_end}

{pstd}
同上，带解析导数{p_end}
{phang2}{cmd:. gmm (y - {c -(}P{c )-}/{c -(}lambda{c )-})}{p_end}
{phang2}{space 4}{cmd:(y^2 - {c -(}P{c )-}*({c -(}P{c )-}+1)/{c -(}lambda{c )-}^2)}{p_end}
{phang2}{space 4}{cmd:(ln(y) - digamma({c -(}P{c )-}) + ln({c -(}lambda{c )-}))}{p_end}
{phang2}{space 4}{cmd:(1/y - {c -(}lambda{c )-}/({c -(}P{c )-}-1)),}{p_end}
{phang2}{space 4}{cmd:from(P 2.41 lambda 0.08)}{p_end}
{phang2}{space 4}{cmd:winitial(identity)}{p_end}
{phang2}{space 4}{cmd:deriv(1/P = -1/{c -(}lambda{c )-})}{p_end}
{phang2}{space 4}{cmd:deriv(2/P = -(2*{c -(}P{c )-}+1)/{c -(}lambda{c )-}^2)}{p_end}
{phang2}{space 4}{cmd:deriv(3/P = -1*trigamma({c -(}P{c )-}))}{p_end}
{phang2}{space 4}{cmd:deriv(4/P = {c -(}lambda{c )-}/({c -(}P{c )-}-1)^2)}{p_end}
{phang2}{space 4}{cmd:deriv(1/lambda = {c -(}P{c )-}/{c -(}lambda{c )-}^2)}{p_end}
{phang2}{space 4}{cmd:deriv(2/lambda = 2*{c -(}P{c )-}*({c -(}P{c )-}+1)/{c -(}lambda{c )-}^3)}{p_end}
{phang2}{space 4}{cmd:deriv(3/lambda = 1/{c -(}lambda{c )-})}{p_end}
{phang2}{space 4}{cmd:deriv(4/lambda = -1/({c -(}P{c )-}-1))}{p_end}

{pstd}
利用第一次和第二次消费增长滞后和两次收益作为工具来拟合一个消费 CAPM 模型（{help gmm##H1994:Hamilton 1994, sec. 14.2）{p_end}
{phang2}{cmd:. webuse cr}{p_end}
{phang2}{cmd:. generate clc = c / L.c}{p_end}
{phang2}{cmd:. generate lcllc = L.c / L2.c}{p_end}
{phang2}{cmd:. gmm (1 - {c -(}b=1{c )-}*(1+F.r)*(F.c/c)^(-1*{c -(}g{c )-})),}
             {cmd:inst(clc lcllc r L.r L2.r)}{p_end}

{pstd}
带内生回归量 {cmd:income} 的指数（泊松）回归{p_end}
{phang2}{cmd:. webuse docvisits, clear}{p_end}
{phang2}{cmd:. gmm (docvis - exp({xb:private chronic female income} + {b0})),}
                {cmd:instruments(private chronic female age black hispanic) onestep}
{p_end}

{pstd}
同上，指定解析导数并使用两步估计
{p_end}
{phang2}{cmd:. gmm (docvis - exp({xb:private chronic female income} + {b0})),}
             {cmd:instruments(private chronic female age black hispanic)}
             {cmd:deriv(/xb = -1*exp({xb:} + {b0}))}
             {cmd:deriv(/b0 = -1*exp({xb:} + {b0})) twostep}{p_end}

{pstd}
使用 {cmd:gmm} 拟合最大似然模型（probit）{p_end}
{phang2}{cmd:. webuse probitgmm}{p_end}
{phang2}{cmd:. global Phi "normal({b0}+{b1}*x)"}{p_end}
{phang2}{cmd:. global phi "normalden({b0}+{b1}*x)"}{p_end}
{phang2}{cmd:. gmm (y*$phi/$Phi - (1-y)*$phi/(1-$Phi))}
           {cmd:( (y*$phi/$Phi - (1-y)*$phi/(1-$Phi))*x)}
           {cmd:winitial(identity) onestep}{p_end}

{pstd}
使用 {cmd:gmm} 拟合非线性最小二乘模型（probit）{p_end}
{phang2}{cmd:. global Phi "normal({b0}+{b1}*x)"}{p_end}
{phang2}{cmd:. global phi "normalden({b0}+{b1}*x)"}{p_end}
{phang2}{cmd:. gmm ( (y - $Phi)*(-x*$phi) )}
              {cmd:( (y - $Phi)*(-1*$phi) )}
              {cmd:winitial(identity) onestep}{p_end}
{phang2}{cmd:. nl (y = $Phi)}{p_end}

{marker dynpan}{...}
{pstd}
使用 {cmd:gmm} 拟合动态面板数据模型{p_end}
{phang2}{cmd:. webuse abdata}{p_end}
{phang2}{cmd:. xtdpdsys n L(0/1).w, lags(1) twostep}{p_end}
{phang2}{cmd:. gmm (n - {c -(}rho{c )-}*L.n - {c -(}w{c )-}*w - {c -(}lagw{c )-}*L.w - {c -(}c{c )-})}{p_end}
{phang2}{space 4}{cmd:(D.n - {c -(}rho{c )-}*LD.n - {c -(}w{c )-}*D.w - {c -(}lagw{c )-}*LD.w),}{p_end}
{phang2}{space 4}{cmd:xtinstruments(1:D.n, lags(1/1))}{p_end}
{phang2}{space 4}{cmd:xtinstruments(2:n, lags(2/.))}{p_end}
{phang2}{space 4}{cmd:instruments(2:D.w LD.w, noconstant)}{p_end}
{phang2}{space 4}{cmd:deriv(1/rho = -1*L.n)}{p_end}
{phang2}{space 4}{cmd:deriv(1/w = -1*w)}{p_end}
{phang2}{space 4}{cmd:deriv(1/lagw = -1*L.w)}{p_end}
{phang2}{space 4}{cmd:deriv(1/c = -1)}{p_end}
{phang2}{space 4}{cmd:deriv(2/rho = -1*LD.n)}{p_end}
{phang2}{space 4}{cmd:deriv(2/w = -1*D.w)}{p_end}
{phang2}{space 4}{cmd:deriv(2/lagw = -1*LD.w)}{p_end}
{phang2}{space 4}{cmd:winitial(xt LD) wmatrix(robust) vce(unadjusted)}{p_end}
{phang2}{space 4}{cmd:variables(L.n w L.w)}{p_end}
{phang2}{space 4}{cmd:twostep nocommonesample}{p_end}

{pstd}
使用 {cmd:gmm} 拟合具有预定共同回归量 {cmd:k} 的动态面板数据模型{p_end}
{phang2}{cmd:. xtdpdsys n L(0/1).w, pre(k) lags(1) twostep}{p_end}
{phang2}{cmd:. gmm (n - {c -(}rho{c )-}*L.n - {c -(}k{c )-}*k - {c -(}w{c )-}*w - {c -(}lagw{c )-}*L.w - {c -(}c{c )-})}{p_end}
{phang2}{space 4}{cmd:(D.n - {c -(}rho{c )-}*LD.n - {c -(}k{c )-}*D.k - {c -(}w{c )-}*D.w - {c -(}lagw{c )-}*LD.w),}{p_end}
{phang2}{space 4}{cmd:xtinstruments(1:D.n, lags(1/1))}{p_end}
{phang2}{space 4}{cmd:xtinstruments(1:D.k, lags(0/0))}{p_end}
{phang2}{space 4}{cmd:xtinstruments(2:n, lags(2/.))}{p_end}
{phang2}{space 4}{cmd:xtinstruments(2:k, lags(1/.))}{p_end}
{phang2}{space 4}{cmd:instruments(2:D.w LD.w, noconstant)}{p_end}
{phang2}{space 4}{cmd:deriv(1/rho = -1*L.n)}{p_end}
{phang2}{space 4}{cmd:deriv(1/k = -1*k)}{p_end}
{phang2}{space 4}{cmd:deriv(1/w = -1*w)}{p_end}
{phang2}{space 4}{cmd:deriv(1/lagw = -1*L.w)}{p_end}
{phang2}{space 4}{cmd:deriv(1/c = -1)}{p_end}
{phang2}{space 4}{cmd:deriv(2/rho = -1*LD.n)}{p_end}
{phang2}{space 4}{cmd:deriv(2/k = -1*D.k)}{p_end}
{phang2}{space 4}{cmd:deriv(2/w = -1*D.w)}{p_end}
{phang2}{space 4}{cmd:deriv(2/lagw = -1*LD.w)}{p_end}
{phang2}{space 4}{cmd:winitial(xt LD) wmatrix(robust) vce(unadjusted)}{p_end}
{phang2}{space 4}{cmd:variables(L.n w L.w)}{p_end}
{phang2}{space 4}{cmd:twostep nocommonesample}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:gmm} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}总体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数的数量{p_end}
{synopt:{cmd:e(n_moments)}} 矩的数量{p_end}
{synopt:{cmd:e(n_eq)}}在矩估算程序中的方程数量{p_end}
{synopt:{cmd:e(Q)}}标准函数{p_end}
{synopt:{cmd:e(J)}}Hansen {it:J} 卡方统计量{p_end}
{synopt:{cmd:e(J_df)}}{it:J} 统计自由度{p_end}
{synopt:{cmd:e(k_}{it:i}{cmd:)}} 方程 {it:i} 的参数数量{p_end}
{synopt:{cmd:e(has_xtinst)}}如果指定了面板式工具，则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(type)}} {cmd:1} 如果是交互版本，{cmd:2} 如果是矩估算程序版本{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}} 迭代 GMM 估计器使用的迭代次数{p_end}
{synopt:{cmd:e(converged)}} 如果收敛则为 {cmd:1}，否则为 {cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:gmm}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(title)}}在 {cmd:title()} 中指定的标题{p_end}
{synopt:{cmd:e(title_2)}}在 {cmd:title2()} 中指定的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(inst_}{it:i}{cmd:)}} 方程 {it:i} 的工具{p_end}
{synopt:{cmd:e(eqnames)}}方程名称{p_end}
{synopt:{cmd:e(winit)}}使用的初始权重矩阵{p_end}
{synopt:{cmd:e(winitname)}}用户提供的初始权重矩阵的名称{p_end}
{synopt:{cmd:e(estimator)}}{opt onestep}、{opt twostep} 或 {opt igmm}{p_end}
{synopt:{cmd:e(rhs)}}在 {opt variables()} 中指定的变量{p_end}
{synopt:{cmd:e(params_}{it:i}{cmd:)}} 方程 {it:i} 的参数{p_end}
{synopt:{cmd:e(wmatrix)}}在 {opt wmatrix()} 中指定的 {it:wmtype}{p_end}
{synopt:{cmd:e(vce)}}在 {opt vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(params)}}参数名称{p_end}
{synopt:{cmd:e(sexp_}{it:i}{cmd:)}}方程 {it:i} 的可替代表达式{p_end}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gmm.sthlp>}