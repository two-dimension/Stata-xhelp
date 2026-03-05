{smcl}
{* *! version 1.6.5  11dec2018}{...}
{viewerdialog nl "dialog nl"}{...}
{viewerdialog "svy: nl" "dialog nl, message(-svy-) name(svy_nl)"}{...}
{vieweralsosee "[R] nl" "mansection R nl"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] nl postestimation" "help nl postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] gmm" "help gmm_zh"}{...}
{vieweralsosee "[R] ml" "help ml_zh"}{...}
{vieweralsosee "[ME] menl" "help menl_zh"}{...}
{vieweralsosee "[R] mlexp" "help mlexp_zh"}{...}
{vieweralsosee "[R] nlcom" "help nlcom_zh"}{...}
{vieweralsosee "[R] nlsur" "help nlsur_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{viewerjumpto "Syntax" "nl_zh##syntax"}{...}
{viewerjumpto "Menu" "nl_zh##menu"}{...}
{viewerjumpto "Description" "nl_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "nl_zh##linkspdf"}{...}
{viewerjumpto "Options" "nl_zh##options"}{...}
{viewerjumpto "Remarks" "nl_zh##remarks"}{...}
{viewerjumpto "Example" "nl_zh##example"}{...}
{viewerjumpto "Stored results" "nl_zh##results"}{...}
{viewerjumpto "References" "nl_zh##references"}
{help nl:English Version}
{hline}{...}
{p2colset 1 11 13 2}{...}
{p2col:{bf:[R] nl} {hline 2}}非线性最小二乘估计{p_end}
{p2col:}({mansection R nl:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
交互式版本
    
{p 8 11 2}
{opt nl} {cmd:(}{depvar}{cmd:=}<{it:sexp}>{cmd:)} {ifin}
[{it:{help nl##weight:权重}}]
   [{cmd:,} {it:{help nl##options_table:选项}}]
   

{phang}
编程替代表达式版本
    
{p 8 23 2}
{cmd:nl }{it:sexp_prog} {cmd::} {depvar} [{varlist}] {ifin}
[{it:{help nl##weight:权重}}]
    [{cmd:,} {it:{help nl##options_table:选项}}]


{phang}
函数评估程序版本
    
{p 8 23 2}
{cmd:nl} {it:func_prog} {cmd:@} {depvar} [{varlist}] {ifin} 
[{it:{help nl##weight:权重}}]{cmd:,}
   {c -(}{opt param:eters(namelist)}{c |}{opt nparam:eters(#)}{c )-} 
   [{it:{help nl##options_table:选项}}]
   

{phang}
其中

{phang2}
{it:depvar} 是因变量；{p_end}
{phang2}
{it:<sexp>} 是可替代表达式；{p_end}
{phang2}
{it:sexp_prog} 是替代表达式程序；{p_end}
{phang2}
{it:func_prog} 是函数评估程序。

{synoptset 27 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opth va:riables(varlist)}}模型中的变量{p_end}
{synopt :{opth in:itial(nl##initial_values:初始值)}}参数的初始值{p_end}
{p2coldent :* {opt param:eters(namelist)}}模型中的参数（仅限于函数评估程序版本）{p_end}
{p2coldent :* {opt nparam:eters(#)}}模型中的参数数量（仅限于函数评估程序版本）{p_end}
{synopt :{it:sexp_options}}替代表达式程序的选项{p_end}
{synopt :{it:func_options}}函数评估程序的选项{p_end}

{syntab :模型 2}
{synopt :{opt ln:lsq(#)}}使用对数最小二乘法，其中假定 ln({it:depvar - #}) 服从正态分布{p_end}
{synopt :{opt nocons:tant}}该模型没有常数项；很少使用{p_end}
{synopt :{opt h:asconstant(name)}}使用 {it:name} 作为常数项；很少使用{p_end}

{syntab :标准误/鲁棒性}
{synopt :{cmd:vce(}{it:{help nl##vcetype:vcetype}}{cmd:)}}{it:vcetype}
    可以是 {opt gnr}, {opt r:obust}, {opt cl:uster} {it:clustvar},
    {opt boot:strap}, {opt jack:knife}, {opt hac} {help nl##kernel:{it:kernel}}, {opt hc2}, 或
    {opt hc3} {p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt lea:ve}}创建包含 {it:E}(y) 对各参数的导数的新变量{p_end}
{synopt :{opth title:(strings:string)}}在参数估计表上方显示 {it:string} 作为标题{p_end}
{synopt :{opth title2:(strings:string)}}在表格与前一个标题之间显示 {it:string} 作为副标题{p_end}
{synopt :{it:{help nl##display_options:display_options}}}控制列格式和行宽{p_end}

{syntab :优化}
{synopt :{it:{help nl##optimization_options:optimization_options}}}控制优化过程；很少使用{p_end}
{synopt :{opt eps(#)}}指定 {it:#} 作为收敛标准；默认值为 {cmd:eps(1e-5)}{p_end}
{synopt :{opt del:ta(#)}}指定 {it:#} 作为计算导数的值；默认值为 {cmd:delta(4e-7)}{p_end}

包含 help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}* 对于函数评估程序版本，必须指定 {opt parameters(namelist)} 或 {opt nparameters(#)}，或两者都指定。{p_end}
{p 4 6 2}{cmd:bootstrap}, {cmd:by}, {cmd:jackknife}, {cmd:rolling}, 
{cmd:statsby}, 和 {cmd:svy} 允许使用；见 {help prefix_zh}.{p_end}
{p 4 6 2}在使用 {help bootstrap_zh} 前缀时不允许使用权重。{p_end}
{p 4 6 2}{cmd:aweight}s 在使用 {help jackknife_zh} 前缀时不允许使用。
{p_end}
{p 4 6 2}
{opt vce()}, {opt leave} 和权重在使用 {help svy_zh}
前缀时不允许使用。  {p_end}
{marker weight}{...}
{p 4 6 2}{cmd:aweight}s, {cmd:fweight}s, 和 {cmd:iweight}s 是允许的；见  
{help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}请参见 {manhelp nl_postestimation R:nl postestimation} 以获取估计后可用的特性。  {p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型及相关 > 非线性最小二乘估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:nl} 通过最小二乘法拟合任意非线性回归函数。
在该命令的交互式版本中，可以直接在命令行或对话框中输入函数，使用
{help nl##subexp:可替代表达式}。
如果您经常使用某个函数，可以编写
{help nl##subexppr:可替代表达式程序}
并使用第二种语法，避免每次都重新输入函数。
函数评估程序版本提供了最大的灵活性，但复杂性也随之增加；在此版本中，程序会收到一个参数向量和一个变量列表，然后计算回归函数。

{pstd}
当您编写可替代表达式程序或函数评估程序时，名称的前两个字母必须是 {cmd:nl}。{it:sexp_prog} 和 {it:func_prog} 表示程序名称前两个字母以外的部分。例如，如果您编写了一个名为 {cmd:nlregss} 的函数评估程序，您将输入 {cmd:nl regss @ ...} 来估计参数。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection R nlQuickstart:快速入门}

        {mansection R nlRemarksandexamples:备注和示例}

        {mansection R nlMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth variables(varlist)} 指定模型中的变量。{opt nl}
会忽略所有这些变量缺失值的观测值。如果
您不指定 {opt variables()}，则如果估计样本中包含任何缺失
值， {cmd:nl} 会发出错误信息，返回代码为 480。

{marker initial_values}
{phang}
{opt initial(initial_values)} 指定开始估计的初始值。您可以指定一个 1 x k 矩阵，其中 k 是模型中参数的数量，或者可以指定参数名称及其初始值，另一个参数名称及其初始值，依此类推。例如，要将 {opt alpha} 初始化为 1.23，将 {opt delta} 初始化为 4.57，您应该输入

{pmore2}
{cmd:nl ... , initial(alpha 1.23 delta 4.57)...}

{pmore}
使用此选项声明的初始值会覆盖在可替代表达式中声明的任何初始值。如果您指定的参数在模型中不存在， {cmd:nl} 会以错误代码 480 退出。如果您指定一个矩阵，值必须与模型中声明的参数顺序相同。 {cmd:nl} 会忽略矩阵的行名和列名。

{phang}
{opt parameters(namelist)} 指定模型中的参数名称。参数名称必须遵循 Stata 变量的命名规则；请参见 {findalias frnames}。如果您同时指定 
{opt parameters()} 和 {opt nparameters()}，那么前者中的名称数量必须与后者中指定的数量匹配；否则， {cmd:nl} 会发出错误信息，返回代码为 198。

{phang}
{opt nparameters(#)} 指定模型中的参数数量。如果您未使用 {opt parameters()} 选项指定名称， {cmd:nl} 将它们命名为 
{cmd:b1}, {cmd:b2}, ..., {cmd:b}{it:#}。如果您同时指定 {opt parameters()} 和 
{opt nparameters()}，则前者中的名称数量必须与后者中指定的数量相匹配；否则， {cmd:nl} 会发出错误信息，返回代码为 198。

{phang}
{it:sexp_options} 指的是在您的 
{help nl##subexppr:{it:sexp_prog}} 中允许的任何选项。

{phang}
{it:func_options} 指的是在您的
{help nl##func_progs:{it:func_prog}} 中允许的任何选项。

{dlgtab:模型 2}

{phang}
{opt lnlsq(#)} 通过使用对数最小二乘法来拟合模型，我们定义为具有位移对数正态误差的最小二乘法。换句话说，ln({depvar}-{it:#}) 被假定为正态分布。平方和和偏差被调整为与 {it:depvar} 相同的比例。

{phang}
{opt noconstant} 表示函数不包括常数项。即使模型中没有常数项，这个选项通常也不需要使用，除非与参数有关的部分导数的变异系数（基于观测值）小于 
{opt eps()} 且该参数不是常数项。

{phang}
{opt hasconstant(name)} 表示参数 {it:name} 被视为模型中的常数项，并且 {opt nl} 不应该使用其算法来查找常数项。与 {opt noconstant} 一样，这个选项很少使用。

{marker vcetype}{...}
{dlgtab:标准误/鲁棒性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括源自渐进理论的类型 ({cmd:gnr})，
对某些类型的错误规格是稳健的 ({cmd:robust})，允许组内相关性 ({cmd:cluster} {it:clustvar})，以及使用
bootstrap 或 jackknife 方法 ({cmd:bootstrap}, {cmd:jackknife})；见
{help vce_option_zh:[R] {it:vce_option}}。

{pmore}
{cmd:vce(gnr)}，默认值，使用高斯-牛顿回归拟合非线性模型的常规定义的方差估计器。

{pmore}
{opt nl} 还允许以下选项：

{marker kernel}{...}
{phang2}
{cmd:vce(hac} {it:kernel} [{it:#}]{cmd:)} 指定使用异方差和自相关一致（HAC）方差估计。HAC 是指组合加权矩阵形成方差估计的一般形式。对于 {cmd:nl} 提供了三种内核：

{center:{opt nw:est} | {opt ga:llant} | {opt an:derson}}

{pmore2}
{it:#} 指定滞后的数量。如果未指定 {it:#}，则假定为 N - 2。

{pmore2}
{cmd:vce(hac} {it:kernel} [{it:#}]{cmd:)} 在指定权重的情况下不允许使用。

{phang2}
{cmd:vce(hc2)} 和 {cmd:vce(hc3)} 指定鲁棒方差计算的替代偏差校正。
{cmd:vce(hc2)} 和 {cmd:vce(hc3)} 不能与 {cmd:svy} 前缀一起指定。默认情况下，{cmd:vce(robust)} 使用 sigma_j^2 = {c -(}n/(n-k){c )-}
u_j^2 作为第 j 个观测值方差的估计，其中 u_j 是计算出的残差，n/(n-k) 是为了改善整体估计的小样本特性。

{pmore2}{cmd:vce(hc2)} 则使用 u_j^2/(1-h_jj) 作为观测值的方差估计，其中 h_jj 是帽子（投影）矩阵的第 j 个对角元素。这在模型是同方差的情况下产生协方差矩阵的无偏估计。{cmd:vce(hc2)} 产生的置信区间往往比 {cmd:vce(robust)} 更保守。

{pmore2}{cmd:vce(hc3)} 使用 u_j^2/(1-h_jj)^2，依照 Davidson 和 MacKinnon ({help nl##DM1993:1993} 和 {help nl##DM2004:2004}) 的建议，报告称当模型是异方差时，这通常会产生更好的结果。{cmd:vce(hc3)} 产生的置信区间往往更保守。

{pmore2}特别参考 {help nl##DM2004:Davidson 和 MacKinnon (2004, 239)}，他们主张对非线性最小二乘法使用 {cmd:vce(hc2)} 或 {cmd:vce(hc3)} 而不是普通的鲁棒估计器。

{dlgtab:报告}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt leave} 在估计后保留以与估计参数同名的新变量，该变量包含 {it:E}(y) 对参数的导数。如果数据集中存在一个与参数同名的变量，则使用 {opt leave} 会导致 {cmd:nl} 发出错误信息，返回代码 110。

{pmore}
{opt leave} 不能与 {cmd:vce(cluster} {it:clustvar}{cmd:)} 或 {cmd:svy} 前缀一起指定。

{phang}
{opth title:(strings:string)} 指定一个可选标题，该标题将被显示在参数估计表的正上方。

{phang}
{opth title2:(strings:string)} 指定一个可选副标题，该副标题将显示在 {opt title()} 中指定的标题与参数估计表之间。如果指定了 {opt title2()} 但未指定 {opt title()}， 则 {opt title2()} 的效果与 {opt title()} 相同。

{marker display_options}{...}
{phang}
{it:display_options}:
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}，以及
{opt nolstretch}；
    见 {helpb estimation options##display_options:[R] 估计选项}。

{marker optimization_options}{...}
{dlgtab:优化}

{phang}
{it:optimization_options}: {opt iter:ate(#)}, [{cmd:no}]{cmd:log}, 
{opt tr:ace}。{opt iterate(#)} 指定最大迭代次数，
{opt log}/{opt nolog} 指定是否显示迭代日志
（见 {cmd:set iterlog} 在 {manhelpi set_iter R:set iter} 中），
{opt trace} 指定迭代日志应包含当前参数向量。这些选项很少使用。

{phang}
{opt eps(#)} 指定连续参数估计和残差平方和的收敛标准。默认值为 {cmd:eps(1e-5)}。

{phang}
{opt delta(#)} 指定用于计算数值导数的参数相对变化。对于参数 b_i，导数的计算为 {c -(}f(X,b_1,b_2,...,b_i + d, b_[i+1],...) -
f(X, b_1,b_2,...,b_i,b_[i+1],...){c )-}/d，其中 d 是 delta(b_i + delta)。默认值为 {cmd:delta(4e-7)}。

{pstd}
以下选项在 {cmd:nl} 中可用，但未显示在对话框中：

{phang}
{opt coeflegend}; 见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几个部分：

        {help nl##subexp:可替代表达式}
            {help nl##examples_sexp:示例}
        {help nl##models:一些常用模型}
        {help nl##subexppr:可替代表达式程序}
            {help nl##example_sexp_progs:示例}
        {help nl##func_progs:函数评估程序}
            {help nl##example_func_progs:示例} 


{marker subexp}{...}
{title:可替代表达式}

{pstd}
使用可替代表达式是定义非线性函数的最简单方法。可替代表达式就像 Stata 中的任何其他数学表达式，只是模型的参数用大括号括起来。您需要遵循三个规则：

{phang2}
1. 模型的参数用大括号括起来： {cmd:{c -(}b0{c )-}},
{cmd:{c -(}param{c )-}} 等等。

{phang2}
2. 参数的初始值通过在大括号中包含等号和初始值来给出： {cmd:{c -(}b1=1.267{c )-}},
{cmd: {c -(}gamma=3{c )-}} 等等。如果您未指定初始值，该参数初始化为零。 {cmd:initial()} 选项会覆盖在可替代表达式中提供的初始值。

{phang2}
3. 可以使用符号 {cmd:{c -(}}{it:eqname}{cmd::}{it:varlist}{cmd:{c )-}} 包含线性组合：

{pmore3}
{cmd:{c -(}xb:mpg price weight{c )-}} 等价于{p_end}
{pmore3}
{cmd:{c -(}xb_mpg{c )-}*mpg + }
{cmd:{c -(}xb_price{c )-}*price + }
{cmd:{c -(}xb_weight{c )-}*weight


{marker examples_sexp}{...}
    {title:示例}

{phang2}
1. 拟合模型

{pmore3}
y = alpha + beta*x^gamma

{pmore2}
其中 alpha，beta 和 gamma 是参数，gamma 的起始值为 1，您将输入

{pmore3}
{cmd:. nl (y = {c -(}alpha{c )-} + {c -(}beta{c )-}*x^{c -(}gamma=1{c )-})}

{phang2}
2. 将 y 回归到常数和 x 的倒数，您可以这样做

{pmore3}
{cmd:. nl (y = {b0} + {b1} / x), initial(b0 2 b1 3)}

{pmore2}
这避免了在调用 {cmd:regress} 之前需要生成一个新变量等于 1/x。在这里，b0 被初始化为两，b1 被初始化为三。


{marker models}{...}
{title:一些常用模型}

{pstd} 
以下模型使用得如此频繁，以至于它们被内置在 {cmd:nl} 中。

{pmore}具有一个渐近线的指数回归:{p_end}

{phang3}{cmd:exp3} {space 3} y = b0 + b1*b2^x{p_end}
{phang3}{cmd:exp2} {space 3} y = {space 4} b1*b2^x{p_end}
{phang3}{cmd:exp2a} {space 2} y = {space 4} b1*(1-b2^x){p_end}

{pmore}逻辑函数（对称S形状)(*):{p_end}

{p 12 24 2}{cmd:log4} {space 3} y = b0 + b1/(1 + exp(-b2*(x-b3))){p_end}
{p 12 24 2}{cmd:log3} {space 3} y = {space 4} b1/(1 + exp(-b2*(x-b3))){p_end}

{pmore}Gompertz函数（非对称S形状）：{p_end}

{p 12 24 2}{cmd:gom4} {space 3} y = b0 + b1*exp(-exp(-b2*(x-b3))){p_end}
{p 12 24 2}{cmd:gom3} {space 3} y = {space 4} b1*exp(-exp(-b2*(x-b3)))

{pmore}(*) 注意不要与逻辑回归混淆

{pstd}
使用这些中的任何一个，您输入

{pmore}
{cmd:. nl} {it:model} {cmd::} {it:depvar} {it:indepvar}

{pstd}
例如，

{pmore}
{cmd:. nl exp3: y x}{p_end}
{pmore}
{cmd:. nl gom3: response dosage}

{pstd}
初始值会自动选择，但您可以通过使用 {cmd:initial()} 选项覆盖默认值。


{marker subexppr}{...}
{title:可替代表达式程序 -- {it:sexp_prog}s}

{pstd}
如果您重复使用相同的非线性函数，那么您可以编写一个 
可替代表达式程序，这样您就无需每次都重新输入表达式。程序名称的前两个字母必须为 {cmd:nl}。{cmd:nl}{it:sexp_prog} 是接受一个 {it:varlist}、一个 
{cmd:if} {it:exp}，并且可选地接受权重的程序。然后该程序将返回可替代表达式在 r-class 宏 {cmd:r(eq)} 中，并可选择性地返回标题在 {cmd:r(title)} 中。

{pstd}
{cmd:nl}{it:sexp_prog}程序的概要是

{p 8 14 2}{cmd:program nl}{it:sexp_prog}{cmd:, rclass}{p_end}
{p 12 18 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 18 2}{cmd:syntax }{it:varlist} {cmd:[aw fw iw]} {cmd:if}{p_end}
{p 12 18 2}{it:(如有必要，获取初始参数)}{p_end}
{p 12 18 2}{cmd:return local eq "}{it:<sexp>}{cmd:"}{p_end}
{p 12 18 2}{cmd:return local title "}{it:title}{cmd:"}{p_end}
{p 8 14 2}{cmd:end}


{marker example_sexp_progs}{...}
    {title:示例}

{pmore}
回到模型

{pmore2}
y = alpha + beta*x^gamma

{pmore}
获取初始值的一种方法是让 gamma = 1 然后对 x 进行 y 的回归以获得 alpha 和 beta。可替代表达式程序是

{p 12 18 2}{cmd:program nlmyreg, rclass}{p_end}
{p 16 22 2}{cmd:version {ccl stata_version}}{p_end}
{p 16 22 2}{cmd:syntax varlist(min=2 max=2) [aw fw iw] if}{p_end}
{p 16 22 2}{cmd:local lhs: word 1 of `varlist'}{p_end}
{p 16 22 2}{cmd:local rhs: word 2 of `varlist'}{p_end}
{p 16 22 2}{cmd:regress `lhs' `rhs' [`weight'`exp'] `if'}{p_end}
{p 16 22 2}{cmd:tempname a b}{p_end}
{p 16 22 2}{cmd:scalar `a' = _b[_cons]}{p_end}
{p 16 22 2}{cmd:scalar `b' = _b[`rhs']}{p_end}
{p 16 22 2}{cmd:return local eq "`lhs' = {alpha=`=`a''}+{beta=`=`b''}*`rhs'^{gamma=1}"}{p_end}
{p 16 22 2}{cmd:return local title "`lhs' = alpha+beta*`rhs'^gamma"}{p_end}
{p 12 18 2}{cmd:end}{p_end}

{pmore}
要拟合模型，您输入

{p 12 18 2}{cmd:. nl myreg: y x}

{pmore}
（在 {cmd:nl} 和 {cmd:myreg} 之间有一个空格，即使程序的名称是 {cmd:nlmyreg}。）

{pstd}
可替代表达式不需要考虑 
权重或 {cmd:if} {it:exp}，尽管您需要在获取初始值时使用它们。此外，可替代表达式不需要包含括号，不像在交互中输入时那样必须。

{marker func_progs}{...}
{title:函数评估程序 -- {it:func_prog}s}

{pstd}
如果您的函数特别复杂，那么您可能会发现编写一个可替代表述不切实际。在这种情况下，您可以写一个函数评估程序。每当 {cmd:nl} 需要评估您的函数时，它会用参数向量调用您的程序。然后您的程序用函数值填充因变量。

{pstd}
函数评估程序必须接受一个 {it:varlist}、一个 {cmd:if} 
{it:exp} 和一个名为 {cmd:at()} 的选项，该选项接受矩阵的名称。也可选择接受权重。与可替代表达式程序不同，函数评估程序不是声明为 r-class 的。{cmd:nl}{it:func_prog}  程序的概要为

{p 8 14 2}{cmd:program nl}{it:func_prog}{p_end}
{p 12 18 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 18 2}{cmd:syntax} {it:varlist} {cmd:[aw fw iw] if, at(name)}{p_end}
{p 12 18 2}{cmd:local lhs: word 1 of `varlist'}{p_end}
{p 12 18 2}{cmd:local rhs: subinstr local varlist "`lhs'" "", word}{p_end}
{p 12 18 2}{it:(在矩阵上评估函数)}{p_end}
{p 12 18 2}{cmd:replace `lhs' = }{it: <函数值>} {cmd:`if'}{p_end}
{p 8 14 2}{cmd:end}

{pstd}
在评估您的函数时，请记得使用 {cmd:`if'} 限制估计样本。如果使用 {cmd:summarize} 或 {cmd:regress} 等命令进行加权估计时，请记得包含权重。


{marker example_func_progs}{...}
    {title:示例}

{pmore}
CES 生产函数可以写成

{pmore2}
ln Q = b0 - 1/rho*ln{delta*K^-rho + (1-delta)*L^-rho}

{pmore}
其中 Q 表示输出，b0，rho 和 delta 是待估计的参数。函数评估程序为

{p 12 18 2}{cmd:program nlces}{p_end}
{p 16 22 2}{cmd:version {ccl stata_version}}{p_end}
{p 16 22 2}{cmd:syntax varlist(min=3 max=3) [aw fw iw] if, at(name)}{p_end}
{p 16 22 2}{cmd:local logout: word 1 of `varlist'}{p_end}
{p 16 22 2}{cmd:local capital: word 2 of `varlist'}{p_end}
{p 16 22 2}{cmd:local labor: word 3 of `varlist'}{p_end}
{p 16 22 2}{cmd:// 从 at 矩阵中获取参数}{p_end}
{p 16 22 2}{cmd:tempname b0 rho delta}{p_end}
{p 16 22 2}{cmd:scalar `b0' = `at'[1,1]}{p_end}
{p 16 22 2}{cmd:scalar `rho' = `at'[1,2]}{p_end}
{p 16 22 2}{cmd:scalar `delta' = `at'[1,3]}{p_end}
{p 16 22 2}{cmd:// 一些临时变量}{p_end}
{p 16 22 2}{cmd:tempvar kterm lterm}{p_end}
{p 16 22 2}{cmd:generate double `kterm' = `delta'*`capital'^(-1*`rho') `if'}{p_end}
{p 16 22 2}{cmd:generate double `lterm' = (1-`delta')*`labor'^(-1*`rho') `if'}{p_end}
{p 16 22 2}{cmd:// 现在填充因变量}{p_end}
{p 16 22 2}{cmd:replace `logout' = `b0' - 1/`rho'*ln(`kterm'+`lterm') `if'}{p_end}
{p 12 18 2}{cmd:end}

{pmore}
如果您的变量是 {cmd:logout}、{cmd:capital} 和 {cmd:labor}，那么以下任何方法均可用于估计参数：

{phang3}
1. 这种方法默认使用 b0 = 0 作为初始值：

{p 16 22 2}
{cmd:. nl ces @ logout capital labor, parameters(b0 rho delta) initial(rho 1 delta 0.5)}

{phang3}
2. 这种方法将 b0 初始化为 2，rho 初始化为 1，delta 初始化为 0.5。由于我们
   未指定参数名称，nl 将其命名为 b1、b2 和 b3：

{p 16 22 2}
{cmd: . nl ces @ logout capital labor, nparameters(3) initial(b1 2 b2 1 b3 0.5)} 

{phang3}
3. 这种方法设置一个向量来保存初始值：

{p 16 22 2}
{cmd: . matrix ivals = (2, 1, 0.5)}{p_end}
{p 16 22 2}
{cmd: . nl ces @ logout capital labor, parameters(b0 rho delta) initial(ivals)}

{p 16 22 2}
或

{p 16 22 2}
{cmd: . nl ces @ logout capital labor, nparameters(3) initial(ivals)}


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse production}

{pstd}用初始值 {cmd:rho}=1 和
{cmd:delta}=0.5 拟合 CES 生产函数{p_end}
{phang2}{cmd: . nl (lnoutput = {b0} - 1/{rho=1}*ln({delta=0.5}*capital^(-1*{rho}) + (1-{delta})*labor^(-1*{rho})))}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:nl} 在 {cmd:e()} 中存储以下信息：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq_model)}}模型总体测试中的方程数量；始终为
{cmd:0}{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(df_t)}}总体自由度{p_end}
{synopt:{cmd:e(mss)}}模型平方和{p_end}
{synopt:{cmd:e(rss)}}残差平方和{p_end}
{synopt:{cmd:e(tss)}}总体平方和{p_end}
{synopt:{cmd:e(mms)}}模型均方{p_end}
{synopt:{cmd:e(msr)}}残差均方{p_end}
{synopt:{cmd:e(ll)}}在假设独立同分布的正态误差下的对数似然{p_end}
{synopt:{cmd:e(r2)}}R平方{p_end}
{synopt:{cmd:e(r2_a)}}调整后的 R 平方{p_end}
{synopt:{cmd:e(rmse)}}均方根误差{p_end}
{synopt:{cmd:e(dev)}}残差偏差{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(lnlsq)}}如果指定，{cmd:lnlsq} 的值{p_end}
{synopt:{cmd:e(log_t)}}{cmd:1} 如果指定了 {cmd:lnlsq}，否则为 {cmd:0}{p_end}
{synopt:{cmd:e(gm_2)}}如果 {cmd:lnlsq}，则 (y-k) 的几何均值的平方， 否则为 {cmd:1}{p_end}
{synopt:{cmd:e(cj)}}位置的常数在 {cmd:e(b)} 中，或如果没有常数则为 {cmd:0}{p_end}
{synopt:{cmd:e(delta)}}用于计算导数的相对变化{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，否则为 {cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:nl}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(title_2)}}估计输出中的副标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量的名称{p_end}
{synopt:{cmd:e(hac_kernel)}}HAC 核 {p_end}
{synopt:{cmd:e(hac_lag)}}HAC 滞后{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(type)}}{cmd:1} = 交互输入的表达式{p_end}
{synopt:}{cmd:2} = 可替代表达式程序{p_end}
{synopt:}{cmd:3} = 函数评估程序{p_end}
{synopt:{cmd:e(sexp)}}可替代表达式{p_end}
{synopt:{cmd:e(params)}}参数名称{p_end}
{synopt:{cmd:e(funcprog)}}函数评估程序{p_end}
{synopt:{cmd:e(rhs)}} {cmd:variables()} 的内容{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(init)}}初始值向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}


{marker references}{...}
{title:参考文献}

{marker DM1993}{...}
{phang}
Davidson, R., 和 J. G. MacKinnon. 1993.
{browse "http://www.stata.com/bookstore/eie.html":{it:经济计量学中的估计与推断}.}
纽约: 牛津大学出版社。

{marker DM2004}{...}
{phang}
------. 2004.
{browse "http://www.stata.com/bookstore/etm.html":{it:经济计量理论与方法}.}
纽约: 牛津大学出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <nl.sthlp>}