{smcl}
{* *! version 1.4.6  11dec2018}{...}
{viewerdialog nlsur "dialog nlsur"}{...}
{vieweralsosee "[R] nlsur" "mansection R nlsur"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] nlsur postestimation" "help nlsur postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] gmm" "help gmm_zh"}{...}
{vieweralsosee "[R] ml" "help ml_zh"}{...}
{vieweralsosee "[R] mlexp" "help mlexp_zh"}{...}
{vieweralsosee "[R] nl" "help nl_zh"}{...}
{vieweralsosee "[R] reg3" "help reg3_zh"}{...}
{vieweralsosee "[R] sureg" "help sureg_zh"}{...}
{viewerjumpto "Syntax" "nlsur_zh##syntax"}{...}
{viewerjumpto "Menu" "nlsur_zh##menu"}{...}
{viewerjumpto "Description" "nlsur_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "nlsur_zh##linkspdf"}{...}
{viewerjumpto "Options" "nlsur_zh##options"}{...}
{viewerjumpto "Remarks" "nlsur_zh##remarks"}{...}
{viewerjumpto "Example" "nlsur_zh##example"}{...}
{viewerjumpto "Stored results" "nlsur_zh##results"}
{help nlsur:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] nlsur} {hline 2}}非线性方程组的估计{p_end}
{p2col:}({mansection R nlsur:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
交互版本
    
{p 8 11 2}
{opt nlsur} {cmd:(}{it:{help depvar:depvar_1}}{cmd:=}<{it:sexp_1}>{cmd:)} 
   {cmd:(}{it:{help depvar:depvar_2}}{cmd:=}<{it:sexp_2}>{cmd:)} 
   ...
   {ifin}
   [{it:{help nlsur##weight:权重}}]
   [{cmd:,} {it:{help nlsur##options_table:选项}}]
   

{phang}
编程替代表达式版本
    
{p 8 23 2}
{cmd:nlsur} {it:sexp_prog} {cmd::} {it:{help depvar:depvar_1}} 
     {it:{help depvar:depvar_2}} ... [{varlist}] {ifin}
     [{it:{help nlsur##weight:权重}}]
     [{cmd:,} {it:{help nlsur##options_table:选项}}]


{phang}
函数评估程序版本
    
{p 8 23 2}
{cmd:nlsur} {it:func_prog} {cmd:@} {it:{help depvar:depvar_1}}
           {it:{help depvar:depvar_2}} ...
   [{varlist}] {ifin} 
    [{it:{help nlsur##weight:权重}}] {cmd:,}
   {opt neq:uations(#)}
   {c -(}{opt param:eters(namelist)}{c |}{opt nparam:eters(#)}{c )-} 
   [{it:{help nlsur##options_table:选项}}]
   

{phang}
其中

{phang2}
{it:depvar_j} 是方程 {it:j} 的因变量；{p_end}
{phang2}
{it:<sexp>_j} 是方程 {it:j} 的替代表达式；{p_end}
{phang2}
{it:sexp_prog} 是一个可替代表达式程序；且{p_end}
{phang2}
{it:func_prog} 是一个函数评估程序。

{synoptset 27 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt fgnls}}使用两步 FGNLS 估计量；默认值{p_end}
{synopt :{opt ifgnls}}使用迭代 FGNLS 估计量{p_end}
{synopt :{opt nls}}使用 NLS 估计量{p_end}
{synopt :{opth va:riables(varlist)}}模型中的变量{p_end}
{synopt :{opth in:itial(nlsur##initial_values:初始值)}}参数的初始值{p_end}
{p2coldent :* {opt neq:uations(#)}}模型中的方程数量（仅函数评估程序版本）{p_end}
{p2coldent :* {opt param:eters(namelist)}}模型中的参数（仅函数评估程序版本）{p_end}
{p2coldent :* {opt nparam:eters(#)}}模型中的参数数量（仅函数评估程序版本）{p_end}
{synopt :{it:sexp_options}}可替代表达式程序的选项{p_end}
{synopt :{it:func_options}}函数评估程序的选项{p_end}

{syntab :标准误/稳健性}
{synopt :{cmd:vce(}{it:{help nlsur##vcetype:vcetype}}{cmd:)}}{it:vcetype} 可以是 {opt gnr}, {opt r:obust}, {opt cl:uster} {it:clustvar}, {opt boot:strap}, 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opth title:(strings:string)}}在参数估计表上方以 {it:string} 作为标题显示{p_end}
{synopt :{opth title2:(strings:string)}}显示 {it:string} 作为副标题{p_end}
{synopt :{it:{help nlsur##display_options:显示选项}}} 控制列和列格式及行宽{p_end}

{syntab :优化}
{synopt :{it:{help nlsur##optimization_options:优化选项}}} 控制优化过程；很少使用{p_end}
{synopt :{opt eps(#)}}指定 {it:#} 作为收敛条件；默认值为 {cmd:eps(1e-5)}{p_end}
{synopt :{opt ifgnlsi:terate(#)}}设置 FGNLS 的最大迭代次数{p_end}
{synopt :{opt ifgnlseps(#)}}指定 {it:#} 作为 FGNLS 收敛条件；默认值为 {cmd:ifgnlseps(1e-10)}{p_end}
{synopt :{opt del:ta(#)}}指定步长 {it:#} 用于计算导数；默认值为 {cmd:delta(4e-7)}{p_end}
{synopt :{opt nocons:tants}}没有方程具有常数项{p_end}
{synopt :{opt h:asconstants(namelist)}}将 {it:namelist} 作为常数项{p_end}

包含 help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}* 你必须指定 {opt nequations(#)} 和 {opt parameters(namelist)} 或 {opt nparameters(#)} 或两者。{p_end}
{p 4 6 2}{cmd:bootstrap}, {cmd:by}, {cmd:jackknife}, {cmd:rolling}, 
和 {cmd:statsby} 是允许的；参见 {help prefix_zh}.{p_end}
{p 4 6 2}权重与 {help bootstrap_zh} 前缀不允许使用。{p_end}
{p 4 6 2}{cmd:aweight}s 不允许与 {help jackknife_zh} 前缀使用。
{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:aweight}s, {cmd:fweight}s, {cmd:iweight}s, 和 
{cmd:pweight}s 是允许的；参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 在对话框中不显示。{p_end}
{p 4 6 2}详见 {manhelp nlsur_postestimation R:nlsur postestimation} 了解估计后的可用功能。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型及相关 > 多方程模型 >}
     {bf:非线性似乎无关回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:nlsur} 通过可行广义非线性最小二乘法（FGNLS）拟合非线性方程组。在命令的交互版本中，你可以直接在命令行或通过使用 {help nlsur##subexp:可替代表达式}  在对话框中输入方程组。如果你有一个经常使用的系统，你可以编写一个 {help nlsur##subexppr:可替代表达式程序} ，并使用第二种语法来避免每次都重新输入系统。
函数评估程序版本提供了更大的灵活性，但增加了复杂性；使用这个版本时，你的程序会获得一个参数向量和一个变量列表，并计算方程组。

{pstd}
当你编写可替代表达式程序或函数评估程序时，程序名称的前五个字母必须是 {cmd:nlsur}。
{it:sexp_prog} 和 {it:func_prog} 指的是程序名称去掉前五个字母后的部分。例如，如果你编写了一个名为 {cmd:nlsurregss} 的函数评估程序，你需要输入 
{cmd:nlsur regss @ ...} 来估计参数。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R nlsurQuickstart:快速开始}

        {mansection R nlsurRemarksandexamples:备注和示例}

        {mansection R nlsurMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt fgnls} 请求使用两步 FGNLS 估计量；这也是默认值。

{phang}
{opt ifgnls} 请求使用迭代 FGNLS 估计量。对于非线性系统估计量，这相当于最大似然估计。

{phang}
{opt nls} 请求使用非线性最小二乘（NLS）估计量。

{phang}
{opth variables(varlist)} 指定系统中的变量。 
{opt nlsur} 会忽略任何这些变量缺失值的观察。如果你不指定 {opt variables()}，则 {cmd:nlsur} 会在估计样本包含任何缺失值时发出错误消息。

{marker initial_values}
{phang}
{opt initial(initial_values)} 指定开始估计的初始值。你可以指定一个 1 x k 矩阵，其中 k 是系统中参数的总数，或者你可以指定一个参数名称及其初始值，另一个参数名称及其初始值，依此类推。例如，要将 {opt alpha} 初始化为 1.23，将 {opt delta} 初始化为 4.57，你可以输入

{pmore2}
{cmd:nlsur ... , initial(alpha 1.23 delta 4.57) ...}

{pmore}
使用此选项声明的初始值会覆盖在可替代表达式中声明的值。如果你指定一个矩阵，值必须按照在模型中声明的参数顺序排列。 {cmd:nlsur} 会忽略矩阵的行和列名称。

{phang}
{opt nequations(#)} 指定系统中的方程数量。

{phang}
{opt parameters(namelist)} 指定系统中参数的名称。参数的名称必须遵循 Stata 变量的命名约定；请参见 {findalias frnames}。
如果你同时指定了 {opt parameters()} 和 {opt nparameters()}，前者的名称数量必须与后者指定的数量匹配。

{phang}
{opt nparameters(#)} 指定系统中的参数数量。 
如果你未通过 {opt parameters()} 选项指定名称，{cmd:nlsur} 会将其命名为 {cmd:b1}, {cmd:b2}, ..., {cmd:b}{it:#}。如果你同时指定了 {opt parameters()} 和 {opt nparameters()}，前者的名称数量必须与后者指定的数量匹配。

{phang}
{it:sexp_options} 是指任何由你的 
{help nlsur##subexppr:{it:sexp_prog}} 允许的选项。 

{phang}
{it:func_options} 是指任何由你的 
{help nlsur##func_prog:{it:func_prog}} 允许的选项。

{marker vcetype}{...}
{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括从渐近理论派生的类型（{cmd:gnr}），对某些类型的错误规范稳健（{cmd:robust}），允许组内相关性（{cmd:cluster} {it:clustvar}），以及使用 bootstrap 或 jackknife 方法（{cmd:bootstrap}，{cmd:jackknife}）；见 {help vce_option_zh:[R] {it:vce_option}}。

{pmore}
{cmd:vce(gnr)}，默认情况下，使用通过常规推导的方差估计器来拟合非线性模型。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opth title:(strings:string)} 指定一个可选标题，该标题将显示在参数估计表的正上方。

{phang}
{opth title2:(strings:string)} 指定可选副标题，该副标题将显示在 {opt title()} 指定的标题与参数估计表之间。如果指定了 {opt title2()}，但未指定 {opt title()}，则 {opt title2()} 的效果与 {opt title()} 相同。

{marker display_options}{...}
{phang}
{it:display_options}：
{opt noci},
{opt nopv:alues},
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}，以及
{opt nolstretch}；
    见 {helpb estimation options##display_options:[R] 估计选项}。

{marker optimization_options}{...}
{dlgtab:优化}

{phang}
{it:optimization_options}: {cmdab:it:erate(}{it:#}{cmd:)},
[{cmd:no}]{cmd:log},
{cmdab:tr:ace}。{cmd:iterate()} 指定每轮 FGNLS 估计时要使用的 NLS 最大迭代次数。这个选项与 {opt ifgnlsiterate()} 不同，后者控制当指定 {opt ifgnls} 选项时使用的 FGNLS 估计的最大轮数。{opt log}/{opt nolog} 指定是否显示迭代日志；见 {cmd:set iterlog} 在 {manhelpi set_iter R:set iter}。{opt trace} 指定迭代日志应包括当前的参数向量。

{phang}
{opt eps(#)} 指定连续参数估计和残差平方和的收敛标准。默认值为 {cmd:eps(1e-5)}（.00001）。{opt eps()} 还指定在指定 {opt ifgnls} 时，迭代 FGNLS 估计时间隔轮次的连续参数估计的收敛标准。

{phang}
{opt ifgnlsiterate(#)} 指定要执行的 FGNLS 最大迭代次数。默认值为通过 {helpb set maxiter} 设置的值，默认是 16,000。要使用此选项，你还必须指定 {opt ifgnls} 选项。

{phang}
{opt ifgnlseps(#)} 指定在迭代 FGNLS 估计期间连续估计误差协方差矩阵的收敛标准。默认值为 {cmd:ifgnlseps(1e-10)}。要使用此选项，你还必须指定 {opt ifgnls} 选项。

{phang}
{opt delta(#)} 指定用于计算数值导数的参数相对变动。参数 b_i 的导数计算为 {c -(}f_i(x_i,b_1,b_2,...,b_i + d, b_[i+1],...) -
f_i(x_i, b_1,b_2,...,b_i, b_[i+1],...){c )-}/d，
其中 d 是 delta*(b_i + delta)。默认值为 {cmd:delta(4e-7)}。

{phang}
{opt noconstants} 指示系统中的任何方程都不包括常数项。这个选项通常不需要，即便系统中没有常数项；尽管在少数情况下没有此选项，{cmd:nlsur} 可能声称有一个或多个常数项，即便实际上没有。

{phang}
{opt hasconstants(namelist)} 指示要视为系统方程中的常数项的参数。{it:namelist} 的元素数量必须等于系统中的方程数量。{it:i} 的 {it:namelist} 条目指定第 {it:i} 个方程的常数项。如果方程不包括常数项，则指定一个句点（{cmd:.}）作为参数名称。这个选项在交互式和编程替代表达式版本中通常不需要，因为在这些情况下 {cmd:nlsur} 几乎总能自动找到常数项。

{pstd}
以下选项在 {cmd:nlsur} 中可用，但不在对话框中显示：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

        {help nlsur##subexp:可替代表达式}
            {help nlsur##examples_sexp:示例}
        {help nlsur##subexppr:可替代表达式程序}
            {help nlsur##example_sexp_progs:示例}
        {help nlsur##func_prog:函数评估程序}


{marker subexp}{...}
{title:可替代表达式}

{pstd}
你可以使用可替代表达式与 {cmd:nlsur} 的交互式和编程可替代表达式版本来定义你的方程组。可替代表达式与 Stata 中的其他数学表达式一样，只不过模型的参数用大括号括起来。

{pstd}
你为系统中的每个方程指定一个可替代表达式，并且必须遵循三个规则：

{phang2}
1.  模型的参数被括在大括号中： {cmd:{c -(}b0{c )-}}, {cmd:{c -(}param{c )-}}, 等等。

{phang2}
2.  初始值通过包含等号和初始值在大括号内给出：{cmd:{c -(}b1=1.267{c )-}}, 
{cmd: {c -(}gamma=3{c )-}}, 等等。如果你不指定初始值，该参数将初始化为零。 {cmd:initial()} 选项会覆盖在可替代表达式中提供的初始值。

{phang2}
3.  可以使用符号 {cmd:{c -(}}{it:eqname}{cmd::}{it:varlist}{cmd:{c )-}} 包含线性组合：

{pmore3}
{cmd:{c -(}xb:mpg price weight{c )-}} 等价于{p_end}
{pmore3}
{cmd:{c -(}xb_mpg{c )-}*mpg + }
{cmd:{c -(}xb_price{c )-}*price + }
{cmd:{c -(}xb_weight{c )-}*weight}


{marker examples_sexp}{...}
    {title:示例}

{phang2}
1.  拟合方程组

{pmore3}
y1 = a1 + b1*x^g1

{pmore3}
y2 = a2 + b2*x^g2

{pmore2}
利用迭代 FGNLS，其中 a1, a2, b1, b2, g1 和 g2 是参数，并且 1 是 g1 和 g2 的合理初始值，你可以输入

{pmore3}
{cmd:. nlsur (y1 = {c -(}a1{c )-} + {c -(}b1{c )-}*x^{c -(}g1=1{c )-}) (y2 = {c -(}a2{c )-} + {c -(}b2{c )-}*x^{c -(}g2=1{c )-}), ifgnls}

{phang2}
2.  {cmd:nlsur} 使得施加跨方程参数约束变得容易。假设你想拟合一对指数增长方程，并施加常数项在两个方程中相等的约束，

{pmore3}
y1 = a + b1*b2^x

{pmore3}
y2 = a + c1*c2^x

{pmore2}
其中 a, b1, b2, c1 和 c2 是参数。要拟合此模型，你可以输入

{pmore3}
{cmd:. nlsur (y1 = {c -(}a{c )-} + {c -(}b1{c )-}*{c -(}b2{c )-}^x) (y2 = {c -(}a{c )-} + {c -(}c1{c )-}*{c -(}c2{c )-}^x)}{p_end}


{marker subexppr}{...}
{title:可替代表达式程序 -- {it:sexp_prog}s}

{pstd}
如果你打算多次拟合相同的非线性系统，你可以编写一个可替代表达式程序，避免每次重新输入方程。程序名称的前五个字母必须是 {cmd:nlsur}，并且程序应接收一个 {it:varlist}、一个 {cmd:if} {it:exp}，以及一个可选的权重。程序必须在 {cmd:r(n_eq)} 中返回系统中的方程数量，在 {cmd:r(eq_1)} 到 {cmd:r(eq_}{it:m}{cmd:)} 中返回系统中的 {it:m} 个方程。你可以通过在 {cmd:r(title)} 中存储字符串来为输出添加标题。

{pstd}
一个 {cmd:nlsur}{it:sexp_prog} 程序的轮廓是

{p 8 14 2}{cmd:program nlsur}{it:sexp_prog}{cmd:, rclass}{p_end}
{p 12 18 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 18 2}{cmd:syntax }{it:varlist} {cmd:[aw fw iw]} {cmd:[if]}{p_end}
{p 12 18 2}{it:(如有必要，获取初始参数)}{p_end}
{p 12 18 2}{cmd:return scalar n_eq = }{it:<neqn>}{p_end}
{p 12 18 2}{cmd:return local eq_1 "}{it:<sexp>_1}{cmd:"}{p_end}
{p 12 18 2}{cmd:...}{p_end}
{p 12 18 2}{cmd:return local eq_}{it:m}{cmd: "}{it:<sexp>_m}{cmd:"}{p_end}
{p 12 18 2}{cmd:return local title "}{it:title}{cmd:"}{p_end}
{p 8 14 2}{cmd:end}


{marker example_sexp_progs}{...}
    {title:示例}

{pmore}
返回到模型

{pmore3}
y1 = a1 + b1*x^g1

{pmore3}
y2 = a2 + b2*x^g2

{pmore}
获取初始值的一个方法是让 g1 = g2 = 1，然后拟合 y1 关于 x 的回归，以获取 a1 和 b1 的初始值，同样拟合 y2 关于 x 的回归以获取 a2 和 b2 的初始值。可替代表达式程序的代码是

{p 12 18 2}{cmd:program nlsurmyreg, rclass}{p_end}

{p 16 22 2}{cmd:version {ccl stata_version}}{p_end}
{p 16 22 2}{cmd:syntax varlist(min=3 max=3) [aw fw iw] [if]}{p_end}
{p 16 22 2}{cmd:local y1: word 1 of `varlist'}{p_end}
{p 16 22 2}{cmd:local y2: word 2 of `varlist'}{p_end}
{p 16 22 2}{cmd:local x : word 3 of `varlist'}{p_end}

{p 16 22 2}{cmd:// 获取初始值假设 g1=g2=1}{p_end}
{p 16 22 2}{cmd:regress `y1' `x' [`weight'`exp'] `if'}{p_end}
{p 16 22 2}{cmd:local a1 = _b[_cons]}{p_end}
{p 16 22 2}{cmd:local b1 = _b[`x']}{p_end}
{p 16 22 2}{cmd:regress `y2' `x' [`weight'`exp'] `if'}{p_end}
{p 16 22 2}{cmd:local a2 = _b[_cons]}{p_end}
{p 16 22 2}{cmd:local b2 = _b[`x']}{p_end}

{p 16 22 2}{cmd:return scalar n_eq = 2}{p_end}
{p 16 22 2}{cmd:return local eq_1 "`y1' = {a1=`a1'} + {b1=`b1'}*`x'^{g1=1}"}{p_end}
{p 16 22 2}{cmd:return local eq_2 "`y2' = {a2=`a2'} + {b2=`b2'}*`x'^{g2=1}"}{p_end}

{p 12 18 2}{cmd:end}{p_end}

{pmore}
要拟合你的模型，你可以输入

{p 12 18 2}{cmd:. nlsur myreg: y1 y2 x}

{pmore}
（{cmd:nlsur} 与 {cmd:myreg} 之间有一个空格，即使程序名为 {cmd:nlsurmyreg}。）

{pstd}
可替代表达式不需要考虑权重或 {cmd:if} {it:exp}，尽管我们确实需要它们来获取初始值。


{marker func_prog}{...}
{title:函数评估程序 -- {it:func_prog}s}

{pstd}
如果你的方程组特别复杂，那么你可能会发现为每个方程编写可替代表达式是不现实的。在这些情况下，你可以编写一个函数评估程序。每当 {cmd:nlsur} 需要评估方程组时，它会调用你的程序，并给出一个参数向量。你的程序随后会用相应的函数值填充因变量。

{pstd}
函数评估程序必须接收一个 {it:varlist}、一个 {cmd:if} {it:exp}和一个名为 {cmd:at()} 的选项，该选项接收一个矩阵的名称。它们也可以选择性地接受权重。

{pstd}
为了说明函数评估程序的机制，我们集中一个直接的例子。我们希望拟合模型

{pmore2}
y1 = b0 + b1*x1 + b2*x2

{pmore2}
y2 = c0 + c1*x2 + c2*x3

{pstd}
（由于这个系统是线性的，我们实际上可以仅使用 {help sureg_zh}。）我们的函数评估程序是

{p 12 18 2}{cmd:program nlsursur}{p_end}

{p 16 22 2}{cmd:version {ccl stata_version}}{p_end}
{p 16 22 2}{cmd:syntax varlist(min=5 max=5) [if], at(name)}{p_end}
{p 16 22 2}{cmd:local y1: word 1 of `varlist'}{p_end}
{p 16 22 2}{cmd:local y2: word 2 of `varlist'}{p_end}
{p 16 22 2}{cmd:local x1: word 3 of `varlist'}{p_end}
{p 16 22 2}{cmd:local x2: word 4 of `varlist'}{p_end}
{p 16 22 2}{cmd:local x3: word 5 of `varlist'}{p_end}

{p 16 22 2}{cmd:// 从 `at` 中检索参数}{p_end}
{p 16 22 2}{cmd:tempname b0 b1 b2 c0 c1 c2}{p_end}
{p 16 22 2}{cmd:scalar `b0' = `at'[1,1]}{p_end}
{p 16 22 2}{cmd:scalar `b1' = `at'[1,2]}{p_end}
{p 16 22 2}{cmd:scalar `b2' = `at'[1,3]}{p_end}
{p 16 22 2}{cmd:scalar `c0' = `at'[1,4]}{p_end}
{p 16 22 2}{cmd:scalar `c1' = `at'[1,5]}{p_end}
{p 16 22 2}{cmd:scalar `c2' = `at'[1,6]}{p_end}

{p 16 22 2}{cmd:// 填充因变量}{p_end}
{p 16 22 2}{cmd:quietly replace `y1' = `b0' + `b1'*`x1' + `b2'*`x2' `if'}{p_end}
{p 16 22 2}{cmd:quietly replace `y2' = `c0' + `c1'*`x2' + `c2'*`x3' `if'}{p_end}

{p 12 18 2}{cmd:end}

{pstd}
我们的模型有五个变量，因此我们让 {cmd:syntax} 语句接受五个变量。 {cmd:nlsur} 要求我们的程序接受一个 {cmd:if} 子句和一个名为 {opt at()} 的选项，通过 {cmd:nlsur} 传递一个包含参数值的矩阵。你在指定变量时存储 {it:varlist} 元素的顺序将决定你何时调用 {cmd:nlsur} 时变量的指定顺序。

{pstd}
因为我们不打算用这个模型进行加权估计，所以没有让 {cmd:syntax} 语句接受权重。在用函数值替代因变量时，不需要对权重做任何处理，但如果在评估函数时使用了估计或描述性统计命令，则必须将权重表达式传递给这些命令。

{pstd}
我们的模型有六个参数，所以我们的程序将接收到一个 1 x 6 的行向量，名为 `at`。我们从该向量中提取六个参数并存储在临时标量中。我们本可以在评估模型的函数时直接引用 `at` 向量的元素，但将参数存储在适当命名的标量中使过程更透明。我们程序的最后一部分计算两个方程。

{pstd}
我们可以用几种不同的方法调用 {cmd:nlsur} 来拟合我们的模型。

{phang2}
1.  此方法使用最简语法，初始化所有参数为零，这是默认值：

{p 16 22 2}
{cmd:. nlsur sur @ y1 y2 x1 x2 x3, nparameters(6) nequations(2)}

{pmore2}
由于我们未指定参数名称，它们将在输出中标记为 b1 到 b6。

{phang2}
2.  在这里，我们给参数命名并将两个常数项初始化为 10：

{p 16 22 2}
{cmd:. nlsur sur @ y1 y2 x1 x2 x3, parameters(b0 b1 b2 c0 c1 c2)} 
         {cmd:initial(b0 10 c0 10) nequations(2)}

{phang2}
3.  当你使用函数评估程序时，{cmd:nlsur} 不会尝试识别每个方程中的常数项，因此输出头中报告的 R 平方统计值是未居中的。你使用 {opt hasconstants()} 选项来指示每个方程中的哪个参数是常数：

{p 16 22 2}
{cmd:. nlsur sur @ y1 y2 x1 x2 x3, parameters(b0 b1 b2 c0 c2 c2)}
         {cmd:initial(b0 10 c0 10) nequations(2) hasconstant(b0 c0)}

{pmore2}
现在 {cmd:nlsur} 将 b0 视为第一个方程中的常数，而 c0 视为第二个方程中的常数，输出中将报告居中 R 平方统计值。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse petridish}

{pstd}模型两种细菌种群随时间的增长；允许误差项之间的相关性{p_end}
{phang2}{cmd:. nlsur (p1 = {b1}*{b2}^t) (p2 = {g1}*{g2}^t)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:nlsur} 将以下信息存储在 {cmd:e()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 17 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_}{it:#}{cmd:)}}方程的参数数量
                 {it:#}{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程名称数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(n_eq)}}方程数量{p_end}
{synopt:{cmd:e(mss_}{it:#}{cmd:)}} 为方程
                 {it:#} 的模型平方和{p_end}
{synopt:{cmd:e(rss_}{it:#}{cmd:)}}方程 {it:#} 的 RSS{p_end}
{synopt:{cmd:e(rmse_}{it:#}{cmd:)}}方程
                 {it:#} 的均方根误差{p_end}
{synopt:{cmd:e(r2_}{it:#}{cmd:)}}方程 {it:#} 的 R 平方{p_end}
{synopt:{cmd:e(ll)}}高斯对数似然（仅 {cmd:iflgs} 版本）{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示已收敛，{cmd:0} 否则{p_end}

{p2col 5 15 17 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:nlsur}{p_end}
{synopt:{cmd:e(cmdline)}}按输入的命令{p_end}
{synopt:{cmd:e(method)}}{cmd:fgnls}，{cmd:ifgnls}，或 {cmd:nls} {p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(depvar_}{it:#}{cmd:)}}方程的因变量
                {it:#}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计结果中的标题{p_end}
{synopt:{cmd:e(title_2)}}估计结果中的副标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(type)}}{cmd:1} = 交互输入的表达式{p_end}
{p2col 5 21 23 2: } {cmd:2} = 可替代表达式程序{p_end}
{p2col 5 21 23 2: } {cmd:3} = 函数评估程序{p_end}
{synopt:{cmd:e(sexpprog)}}可替代表达式程序{p_end}
{synopt:{cmd:e(sexp_}{it:#}{cmd:)}}方程的可替代表达式
                {it:#}{p_end}
{synopt:{cmd:e(params)}}所有参数的名称{p_end}
{synopt:{cmd:e(params_}{it:#}{cmd:)}}方程中的参数 {it:#}{p_end}
{synopt:{cmd:e(funcprog)}}函数评估程序{p_end}
{synopt:{cmd:e(rhs)}} {cmd:variables()} 的内容{p_end}
{synopt:{cmd:e(constants)}}识别常数项{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}

{p2col 5 15 17 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(init)}}初始值向量{p_end}
{synopt:{cmd:e(Sigma)}}误差协方差矩阵（Sigma 估计矩阵）{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{p2col 5 15 17 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <nlsur.sthlp>}