{smcl}
{* *! version 1.1.7  11dec2018}{...}
{vieweralsosee "[M-5] solvenl()" "mansection M-5 solvenl()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Mathematical" "help m4_mathematical_zh"}{...}
{vieweralsosee "[R] set iter" "help set_iter_zh"}{...}
{viewerjumpto "语法" "mf_solvenl_zh##syntax"}{...}
{viewerjumpto "描述" "mf_solvenl_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_solvenl_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_solvenl_zh##remarks"}{...}
{viewerjumpto "可兼容性" "mf_solvenl_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_solvenl_zh##diagnostics"}{...}
{viewerjumpto "参考资料" "mf_solvenl_zh##references"}
{help mf_solvenl:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] solvenl()} {hline 2}}求解非线性方程组{p_end}
{p2col:}({mansection M-5 solvenl():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 6 25 2}
{bind:          }
{it:{help mf_solvenl##S:S}}
{cmd:=}
{cmd:solvenl_init()}


{p 6 25 2}
{it:(可变)}{bind:       }
{help mf_solvenl##init_type:{bf:solvenl_init_type(}{it:S} [{bf:,} {c -(}{bf:"fixedpoint"} | {bf:"zero"}{c )-}]{bf:)}}

{p 6 25 2}
{it:(可变)}{bind:       }
{help mf_solvenl##init_startingvals:{bf:solvenl_init_startingvals(}{it:S} [{bf:,} {it:real colvector ivals}]{bf:)}}

{p 6 25 2}
{it:(可变)}{bind:       }
{help mf_solvenl##init_numeq:{bf:solvenl_init_numeq(}{it:S} [{bf:,} {it:real scalar nvars}]{bf:)}}

{p 6 25 2}
{it:(可变)}{bind:       }
{help mf_solvenl##init_technique:{bf:solvenl_init_technique(}{it:S} [{bf:,} {bf:"}{it:technique}{bf:"}]{bf:)}}

{p 6 25 2}
{it:(可变)}{bind:       }
{help mf_solvenl##init_conv_iterchng:{bf:solvenl_init_conv_iterchng(}{it:S} [{bf:,} {it:real scalar itol}]{bf:)}}

{p 6 25 2}
{it:(可变)}{bind:       }
{help mf_solvenl##init_conv_nearzero:{bf:solvenl_init_conv_nearzero(}{it:S} [{bf:,} {it:real scalar ztol}]{bf:)}}

{p 6 25 2}
{it:(可变)}{bind:       }
{help mf_solvenl##init_conv_maxiter:{bf:solvenl_init_conv_maxiter(}{it:S} [{bf:,} {it:real scalar maxiter}]{bf:)}}

{p 6 25 2}
{it:(可变)}{bind:       }
{help mf_solvenl##init_evaluator:{bf:solvenl_init_evaluator(}{it:S} [{bf:,} {bf:&}{it:evaluator}{bf:()}]{bf:)}}

{p 6 25 2}
{it:(可变)}{bind:       }
{help mf_solvenl##init_argument:{bf:solvenl_init_argument(}{it:S}{bf:,} {it:real scalar k} [{bf:,} {it:X}]{bf:)}}

{p 6 25 2}
{it:(可变)}{bind:       }
{help mf_solvenl##init_narguments:{bf:solvenl_init_narguments(}{it:S} [{bf:,} {it:real scalar K}]{bf:)}}

{p 6 25 2}
{it:(可变)}{bind:       }
{help mf_solvenl##init_damping:{bf:solvenl_init_damping(}{it:S} [{bf:,} {it:real scalar damp}]{bf:)}}

{p 6 25 2}
{it:(可变)}{bind:       }
{help mf_solvenl##init_iter_log:{bf:solvenl_init_iter_log(}{it:S} [{bf:,} {c -(}{bf:"on"} | {bf:"off"}{c )-}]{bf:)}}

{p 6 25 2}
{it:(可变)}{bind:       }
{help mf_solvenl##init_iter_dot:{bf:solvenl_init_iter_dot(}{it:S} [{bf:,} {c -(}{bf:"on"} | {bf:"off"}{c )-}]{bf:)}}

{p 6 25 2}
{it:(可变)}{bind:       }
{help mf_solvenl##init_iter_dot_indent:{bf:solvenl_init_iter_dot_indent(}{it:S} [{bf:,} {it:real scalar indent}]{bf:)}


{p 6 25 2}
{it:real colvector}{bind: }
{help mf_solvenl##solve:{bf:solvenl_solve(}{it:S}{bf:)}}

{p 6 25 2}
{it:real scalar}{bind:   }
{help mf_solvenl##_solve:{bf:_solvenl_solve(}{it:S}{bf:)}}


{p 6 25 2}
{it:real scalar}{bind:    }
{help mf_solvenl##result_converged:{bf:solvenl_result_converged(}{it:S}{bf:)}}

{p 6 25 2}
{it:real scalar}{bind:    }
{help mf_solvenl##result_conv_iter:{bf:solvenl_result_conv_iter(}{it:S}{bf:)}}

{p 6 25 2}
{it:real scalar}{bind:    }
{help mf_solvenl##result_conv_iterchng:{bf:solvenl_result_conv_iterchng(}{it:S}{bf:)}}

{p 6 25 2}
{it:real scalar}{bind:    }
{help mf_solvenl##result_conv_nearzero:{bf:solvenl_result_conv_nearzero(}{it:S}{bf:)}}

{p 6 25 2}
{it:real colvector}{bind: }
{help mf_solvenl##result_values:{bf:solvenl_result_values(}{it:S}{bf:)}}

{p 6 25 2}
{it:real matrix}{bind:    }
{help mf_solvenl##result_Jacobian:{bf:solvenl_result_Jacobian(}{it:S}{bf:)}}

{p 6 25 2}
{it:real scalar}{bind:    }
{help mf_solvenl##result_error_code:{bf:solvenl_result_error_code(}{it:S}{bf:)}}

{p 6 25 2}
{it:real scalar}{bind:    }
{help mf_solvenl##result_return_code:{bf:solvenl_result_return_code(}{it:S}{bf:)}}

{p 6 25 2}
{it:string scalar}{bind:  }
{help mf_solvenl##result_error_text:{bf:solvenl_result_error_text(}{it:S}{bf:)}


{p 6 25 2}
{it:void}{bind:           }
{help mf_solvenl##dump:{bf:solvenl_dump(}{it:S}{bf:)}}


{marker S}{...}
{pstd}
{it:S}，如果声明的话，应该声明为

{pmore2}
{cmd:transmorphic} {it:S}

{marker technique}{...}
{pstd} 
且在{cmd:solvenl_init_technique()}中可选指定的{it:technique}是以下之一：

{col 12}{it:technique}{col 31}描述
{col 12}{hline 45}
{col 12}{cmdab:gau:ssseidel}{col 31}高斯-赛德尔
{col 12}{cmdab:dam:pedgaussseidel}{col 31}阻尼高斯-赛德尔
{col 12}{cmdab:bro:ydenpowell}{col 31}布罗伊登-鲍威尔
{col 10}* {cmdab:new:tonraphson}{col 31}牛顿-拉夫森
{col 12}{hline 45}
{col 12}*{cmd:newton}也可以简写为{cmd:nr}。

{pstd}
对于固定点问题，允许的{it:technique}是{cmd:gaussseidel}和{cmd:dampedgaussseidel}。对于零查找问题，允许的{it:technique}是{cmd:broydenpowell}和{cmd:newtonraphson}。如果你指定一个与使用{cmd:solvenl_init_type()}声明的求解器不兼容的{it:technique}，{cmd:solvenl_}{it:*}{cmd:()}将会退出并返回错误信息。固定点问题的默认技术是{cmd:dampedgaussseidel}，阻尼参数为0.1。零查找问题的默认技术是{cmd:broydenpowell}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:solvenl()}函数组用于寻找非线性方程组的解。

{pstd}
{cmd:solvenl_init()}初始化问题，并返回{it:S}，一个包含该问题相关信息的结构体，包括默认值。如果你为{it:S}声明了存储类型，应声明为{cmd:transmorphic scalar}。

{pstd}
{cmd:solvenl_init_}{it:*}{cmd:(}{it:S}{cmd:,} ...{cmd:)}函数允许你修改这些默认值，以及指定问题的其他方面，包括你的问题是指寻找固定点还是要使用的零起始值等。

{pstd}
{cmd:solvenl_solve(}{it:S}{cmd:)}解决该问题。{cmd:solvenl_solve()}返回一个向量，该向量表示你的函数的一个固定点，或者是你的函数等于零向量的一个向量。

{pstd}
{cmd:solvenl_result_}{it:*}{cmd:(}{it:S}{cmd:)}函数让你访问与问题解相关的其他信息，包括是否找到了解、最后的雅可比矩阵和诊断信息。

{pstd}
另：

{pstd}
{cmd:solvenl_init_}{it:*}{cmd:(}{it:S}{cmd:,} ...{cmd:)}函数有两种操作模式。每种模式都有一个可选参数，您可以指定以设置该值，如果省略，则查询该值。例如，{cmd:solvenl_init_startingvals()}的完整语法是

                {it:void} {cmd:solvenl_init_startingvals(}{it:S}{cmd:,} {it:real colvector ivals}{cmd:)}

                {it:real colvector} {cmd:solvenl_init_startingvals(}{it:S}{cmd:)}

{pstd}
第一种语法设置参数值并不返回任何结果。第二种语法返回先前设置的（或默认的，如果未设置）参数值。

{pstd} 所有的{cmd:solvenl_init_}{it:*}{cmd:(}{it:S}{cmd:,}
...{cmd:)}函数的工作方式都相同。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 solvenl()Remarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注下面的标题呈现如下：

{space 8}{help mf_solvenl##intro:介绍}
{space 8}{help mf_solvenl##exfixed:固定点示例}
{space 8}{help mf_solvenl##exzero:零查找示例}
{p 8 10 2}{help mf_solvenl##fpzero:将固定点问题写成零查找问题，反之亦然}{p_end}
{space 8}{help mf_solvenl##gsmethods:高斯-赛德尔方法}
{space 8}{help mf_solvenl##newton:牛顿类方法}
{space 8}{help mf_solvenl##convergence:收敛标准}
{space 8}{help mf_solvenl##earlyexit:提前退出}
{space 8}{help mf_solvenl##functions:函数}
{space 12}{help mf_solvenl##init:solvenl_init()}
{space 12}{help mf_solvenl##init_type:solvenl_init_type()}
{space 12}{help mf_solvenl##init_startingvals:solvenl_init_startingvals()}
{space 12}{help mf_solvenl##init_numeq:solvenl_init_numeq()}
{space 12}{help mf_solvenl##init_technique:solvenl_init_technique()}
{space 12}{help mf_solvenl##init_conv_iterchng:solvenl_init_conv_iterchng()}
{space 12}{help mf_solvenl##init_conv_nearzero:solvenl_init_conv_nearzero()}
{space 12}{help mf_solvenl##init_conv_maxiter:solvenl_init_conv_maxiter()}
{space 12}{help mf_solvenl##init_evaluator:solvenl_init_evaluator()}
{p 12 14 2}{help mf_solvenl##init_argument:solvenl_init_argument() 和 solvenl_init_narguments()}{p_end}
{space 12}{help mf_solvenl##init_damping:solvenl_init_damping()}
{space 12}{help mf_solvenl##init_iter_log:solvenl_init_iter_log()}
{space 12}{help mf_solvenl##init_iter_dot:solvenl_init_iter_dot()}
{space 12}{help mf_solvenl##init_iter_dot_indent:solvenl_init_iter_dot_indent()}
{space 12}{help mf_solvenl##solve:solvenl_solve() 和 _solvenl_solve()}
{space 12}{help mf_solvenl##result_converged:solvenl_result_converged()}
{space 12}{help mf_solvenl##result_conv_iter:solvenl_result_conv_iter()}
{space 12}{help mf_solvenl##result_conv_iterchng:solvenl_result_conv_iterchng()}
{space 12}{help mf_solvenl##result_conv_nearzero:solvenl_result_conv_nearzero()}
{space 12}{help mf_solvenl##result_values:solvenl_result_values()}
{space 12}{help mf_solvenl##result_Jacobian:solvenl_result_Jacobian()}
{p 12 14 2}{help mf_solvenl##result_error_code:solvenl_result_error_code(), ..._return_code(), 和 ..._error_text()}{p_end}
{space 12}{help mf_solvenl##dump:solvenl_dump()}


{marker intro}{...}
{title:介绍}

{pstd} 
设{bf:x}表示一个{it:k} x 1向量，设{cmd:F}:R^{it:k} -> R^{it:k}表示一个系统方程的函数。
{cmd:solvenl()}函数组可用于寻找固定点解{bf:x}* = {bf:F}({bf:x}*），以及用于寻找函数的零，即{cmd:x}*使得{bf:F}({bf:x}*) = {bf:0}。

{pstd}
可用四种解法：高斯-赛德尔（GS）、阻尼高斯-赛德尔（dGS）、牛顿法（也称为牛顿-拉夫森法）和布罗伊登-鲍威尔（BP）法。前两种方法用于寻找固定点，后两种用于寻找零。但是，正如我们在下面讨论的，固定点问题可以重写为零查找问题，许多零查找问题也可以重写为固定点问题。

{pstd}
求解非线性方程组本质上比最小化或最大化一个函数要困难得多。与优化问题相关的第一阶条件满足一组可积性条件，而{cmd:solvenl_}{it:*}{cmd:()}可处理任意非线性方程组。此外，虽然可以尝试通过定义一个函数

{pmore}
{it:f}({bf:x}) = {bf:F}({bf:x})'{bf:F}({bf:x})

{pstd}
并最小化{it:f}({bf:x})，但极有可能该最小化者会找到一个局部最小值，使得{bf:F}({bf:x}) != {bf:0} 
（{help mf_solvenl##PressEtAl2007:Press 等，2007}，476）。一些问题可能有多个解。


{marker exfixed}{...}
{title:固定点示例}

{pstd}
我们要解决的方程组为

{space 8}{it:x} =  5/3 - 2/3*{it:y}
{space 8}{it:y} = 10/3 - 2/3*{it:x}

{pstd}
首先，我们编写一个程序，接收两个参数：一个列向量，表示我们要评估的函数值和一个列向量，用于存放函数值。

{space 8}: {cmd:void function myfun(real colvector from, real colvector values)}
{space 8}>{cmd: {c -(}}
{space 8}>{cmd:         values[1] =  5/3 - 2/3*from[2]}
{space 8}>{cmd:         values[2] = 10/3 - 2/3*from[1]}
{space 8}>{cmd: {c )-}}

{pstd}
我们对{cmd:solvenl_}{it:*}{cmd:()}的调用如下：

{space 8}: {cmd:S = solvenl_init()}

{space 8}: {cmd:solvenl_init_evaluator(S, &myfun())}

{space 8}: {cmd:solvenl_init_type(S, "fixedpoint")}

{space 8}: {cmd:solvenl_init_technique(S, "gaussseidel")}

{space 8}: {cmd:solvenl_init_numeq(S, 2)}

{space 8}: {cmd:solvenl_init_iter_log(S, "on")}

{space 8}: {cmd:x = solvenl_solve(S)}
{space 8}迭代1：    3.3333333
{space 8}迭代2：    .83333333
{space 8}(输出省略)

{space 8}: {cmd:x}
{space 8}                  1
{space 8}    {c TLC}{hline 16}{c TRC}
{space 8}  1 {c |}  -.9999999981  {c |}
{space 8}  2 {c |}             4  {c |}
{space 8}    {c BLC}{hline 16}{c BRC}

{pstd}
在我们的方程中，{it:x}出现在左边，但不在右边，{it:y}也是如此。然而，这并不是必需的。含有左侧变量出现在相同方程右侧的固定点问题可以被解决，不过通常需要更多的迭代才能达到收敛。


{marker exzero}{...}
{title:零查找示例}

{pstd}
我们希望解决以下方程组
({help mf_solvenl##BurdenFaires2016:Burden, Faires和Burden 2016}，657)
求解三个未知数{it:x}、{it:y}和{it:z}：

{space 8}10 - {it:x}*exp({it:y}*1) -   {it:z} = 0
{space 8}12 - {it:x}*exp({it:y}*2) - 2*{it:z} = 0
{space 8}15 - {it:x}*exp({it:y}*3) - 3*{it:z} = 0

{pstd}
我们将使用牛顿法。我们不能用{it:x} = {it:y} = {it:z} = 0作为初始值，因为该点的雅可比矩阵是奇异的；相反，我们将使用{it:x} = {it:y} = {it:z} = 0.2。我们的程序是

{space 8}: {cmd:void function myfun2(real colvector x, real colvector values)}
{space 8}> {cmd:{c -(}}
{space 8}>         values[1] = 10 - x[1]*exp(x[2]*1) - x[3]*1
{space 8}>         values[2] = 12 - x[1]*exp(x[2]*2) - x[3]*2
{space 8}>         values[3] = 15 - x[1]*exp(x[2]*3) - x[3]*3
{space 8}> {cmd:{c )-}}
 
{space 8}: {cmd:S = solvenl_init()}

{space 8}: {cmd:solvenl_init_evaluator(S, &myfun2())}

{space 8}: {cmd:solvenl_init_type(S, "zero")}

{space 8}: {cmd:solvenl_init_technique(S, "newton")}

{space 8}: {cmd:solvenl_init_numeq(S, 3)}

{space 8}: {cmd:solvenl_init_startingvals(S, J(3,1,.2))}

{space 8}: {cmd:solvenl_init_iter_log(S, "on")}

{space 8}: {cmd:x = solvenl_solve(S)}
{space 8}迭代0：  函数 = 416.03613
{space 8}迭代1：  函数 = 63.014451  delta X = 1.2538445
{space 8}迭代2：  函数 = 56.331397  delta X = .70226488
{space 8}迭代3：  函数 = 48.572941  delta X = .35269647
{space 8}迭代4：  函数 = 37.434106  delta X = .30727054
{space 8}迭代5：  函数 = 19.737501  delta X = .38136739
{space 8}迭代6：  函数 = .49995202  delta X =  .2299557
{space 8}迭代7：  函数 = 1.164e-08  delta X = .09321045
{space 8}迭代8：  函数 = 4.154e-16  delta X = .00011039

{space 8}: {cmd:x}
{space 8}                  1
{space 8}    {c TLC}{hline 16}{c TRC}
{space 8}  1 {c |}   8.771286448  {c |}
{space 8}  2 {c |}   .2596954499  {c |}
{space 8}  3 {c |}  -1.372281335  {c |}
{space 8}    {c BLC}{hline 16}{c BRC}


{marker fpzero}{...}
{title:将固定点问题写成零查找问题，反之亦然}

{pstd}
之前，我们通过寻找固定点解决了方程组

{space 8}{it:x} =  5/3 - 2/3*{it:y}
{space 8}{it:y} = 10/3 - 2/3*{it:x}

{pstd}
我们可以将此系统重写为

{space 8}{it:x} -  5/3 + 2/3*{it:y} = 0
{space 8}{it:y} - 10/3 + 2/3*{it:x} = 0

{pstd}
然后使用BP或牛顿法找到解。一般来说，我们只需将{bf:x}* = {bf:F}({bf:x}*)重写为{bf:x}* - {bf:F}({bf:x}*) = {bf:0}。

{pstd}
类似地，我们或许能够重新安排一个{bf:F}({bf:x}) = {bf:0}形式系统的组成方程，使每个变量成为其他变量的显式函数。如果是这种情况，则可以使用GS或dGS来找到解。


{marker gsmethods}{...}
{title:高斯-赛德尔方法}

{pstd}
设{bf:x}({it:i}-1)表示先前迭代的值或初始值，设{bf:x}({it:i})表示当前迭代的值。高斯-雅可比方法简单地对
{bf:x}({it:i}) = {bf:F}[{bf:x}({it:i}-1)]进行迭代，依次评估每个方程。{cmd:solvenl_}{it:*}{cmd:()}中实现的高斯-赛德尔方法则在评估迭代{k}时使用1到{it:j}-1的{bf:x}({it:i})的新更新值。

{pstd}
对于阻尼高斯-赛德尔，{bf:x}({it:i})表示通过{bf:F}[{bf:x}({it:i}-1)]获得的值。但是，在评估{bf:F}之后，dGS计算的新参数向量将转移到下一个迭代为

{pmore}
{bf:x}{it:#}({it:i}) = (1 - {it:d})*{bf:x}({it:i}) + {it:d}*{bf:x}({it:i}-1)

{pstd}
其中{it:d}是阻尼因子。在每次迭代中不完全更新参数向量有助于在许多问题中促进收敛。dGS的方法的默认值{it:d}为0.1，表示仅使用少量的阻尼，通常足以实现收敛。你可以使用{cmd:solvenl_init_damping()}来更改{it:d}；当前实施在所有迭代中使用相同的{it:d}值。增加阻尼因子通常会通过要求更多的迭代来减慢收敛速度。


{marker newton}{...}
{title:牛顿类方法}

{pstd}
牛顿法用于解决{bf:F}({bf:x})={bf:0}基于该近似

{pmore}
{bf:F}[{bf:x}({it:i})] ~ {bf:F}[{bf:x}({it:i}-1)] + {bf:J}[{bf:x}({it:i}-1)]*[{bf:x}({it:i}) - {bf:x}({it:i}-1)] = 0

{pstd}
其中{bf:J}[{bf:x}({it:i}-1)]是{bf:F}[{bf:x}({it:i}-1)]的雅可比矩阵。重新排列并结合步长参数{it:alpha}，我们得到

{pmore}
{bf:x}({it:i}) - {bf:x}({it:i}-1) = -{it:alpha}*{bf:J}^{-1}[{bf:x}({it:i}-1)]*{bf:F}[{bf:x}({it:i}-1)] 

{pstd}
我们通过使用{cmd:deriv()}（见{help mf_deriv_zh:[M-5] deriv()})套件函数来数值计算{bf:J}。实际上，我们不计算{bf:J}的逆；相反，我们使用LU分解来求解{bf:x}({it:i}) - {bf:x}({it:i}-1)。

{pstd}
为了加快收敛，我们定义函数
{it:f}({bf:x}) = {bf:F}({bf:x})'{bf:F}({bf:x})，然后选择{it:alpha}在0和1之间，使{it:f}[{bf:x}({it:i})]最小化。我们使用黄金分割线搜索，最多20次迭代来寻找{it:alpha}。

{pstd}
由于每次迭代都必须计算{it:k} x {it:k}的雅可比矩阵，因此牛顿法可能会很慢。BP方法，类似于用于优化的拟牛顿方法，每次迭代建立并更新雅可比矩阵的近似值{bf:B}。BP更新为

{col 26}{bf:y}({it:i}) - {bf:B}({it:i}-1){bf:d}({it:i})
{pmore}
{bf:B}({it:i}) = {bf:B}({it:i}-1) + {hline 19} {bf:d}({it:i})'{p_end}
{col 30}{bf:d}({it:i})'{bf:d}({it:i})

{pstd}
其中{bf:d}({it:i}) = {bf:x}({it:i}) - {bf:x}({it:i}-1)且{bf:y}({it:i}) = {bf:F}[{bf:x}({it:i})] - {bf:F}[{bf:x}({it:i}-1)]。
我们使用{cmd:deriv()}在初始值处数值计算雅可比矩阵的初始估计。除了雅可比矩阵更新的方式外，BP方法与牛顿方法相同，包括在每次迭代中使用通过黄金分割线搜索确定的步长参数。


{marker convergence}{...}
{title:收敛标准}

{pstd}
{cmd:solvenl_}{it:*}{cmd:()}在执行超过{it:maxiter}次迭代时停止，其中{it:maxiter} 默认为{cmd:c(maxiter)}，可以使用{cmd:solvenl_init_conv_maxiter()}进行更改。收敛未在{it:maxiter}次迭代后声明，除非满足以下收敛标准之一。

{pstd}
设{bf:x}({it:i})为迭代{it:i}时提议的解，设{bf:x}({it:i}-1)为上一次迭代时的提议解。当
{cmd:mreldif(}{bf:x}({it:i}), {bf:x}({it:i}-1){cmd:)} < {it:itol}时参数已收敛，其中{it:itol}默认值为1e-9，可以通过使用{cmd:solvenl_init_conv_iterchng()}进行更改。技术GS和dGS仅使用此收敛标准。

{pstd}
对于BP和牛顿法，设
{it:f}({bf:x}) = {bf:F}({bf:x})'{bf:F}({bf:x})。收敛在以下情况下声明：
如果{cmd:mreldif(}{bf:x}({it:i}), {bf:x}({it:i}-1){cmd:)} < {it:itol} 或者
{it:f}({bf:x}) < {it:ztol}，其中{it:ztol}默认值为1e-9，可以使用{cmd:solvenl_init_conv_nearzero()}进行更改。


{marker earlyexit}{...}
{title:提前退出}

{pstd}
在某些应用中，您可能遇到一个条件，表明您的问题要么没有解，要么有一个您已知无关的解。在这些情况下，您可以返回一个零行的列向量。{cmd:solvenl()}将立即退出并返回错误代码，指示您请求提前退出。

{pstd}
要获得这种行为，请在评估函数中包含以下代码：

{space 8}: {cmd:void function myfun(real colvector from, real colvector values)}
{space 8}>{cmd: {c -(}}
{space 8}>         ...
{space 8}>{cmd:         if (}{it:condition}{cmd:) {c -(}}
{space 8}>{cmd:                 values = J(0, 1, .)}
{space 8}>{cmd:                 return}
{space 8}>{cmd:         {c )-}}
{space 8}>{cmd:         values[1] =  5/3 - 2/3*from[2]}
{space 8}>{cmd:         values[2] = 10/3 - 2/3*from[1]}
{space 8}>         ...
{space 8}>{cmd: {c )-}}

{pstd}
然后如果{it:condition}为真，{cmd:solvenl()}退出，
{cmd:solvenl_result_error_code()}返回错误代码27，
而{cmd:solvenl_result_converged()}返回0（表示未找到解决方案）。


{marker functions}{...}
{title:函数}

{marker init}{...}
{title:solvenl_init()}

{space 8}{cmd:solvenl_init()}

{pstd}
{cmd:solvenl_init()}用于初始化求解器。将返回的结果存储在您选择的变量名中；我们使用字母{it:S}。
您将{it:S}作为其他{cmd:solvenl()}函数组的第一个参数传递。

{pstd}
{cmd:solvenl_init()}将所有{cmd:solvenl_init_}{it:*}{cmd:()}值设置为它们的默认值。您可以使用{cmd:solvenl_init_}{it:*}{cmd:()}函数的查询形式来确定它们的值。使用{cmd:solvenl_dump()}查看求解器的当前状态，包括{cmd:solvenl_init_}{it:*}{cmd:()}参数当前的值。


{marker init_type}{...}
{title:solvenl_init_type()}

{space 8}{it:void}{space 9} {cmd:solvenl_init_type(}{it:{help mf_solvenl##S:S}}{cmd:,} {c -(} {cmd:"fixedpoint"} {c |} {cmd:"zero"} {c )-} {cmd:)}

{space 8}{it:string scalar} {cmd:solvenl_init_type(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_init_type(}{it:S}{cmd:,} {it:type}{cmd:)}指定要寻找固定点还是函数的零。{it:type}可以是
{cmd:fixedpoint}或{cmd:zero}。

{pstd}
如果您指定{cmd:solvenl_init_type(}{it:S}{cmd:, "fixedpoint")}但尚未指定{help mf_solvenl##technique:{it:technique}}，则{it:technique}被设置为{cmd:dampedgaussseidel}。

{pstd}
如果您指定{cmd:solvenl_init_type(}{it:S}{cmd:, "zero")}但尚未指定{help mf_solvenl##technique:{it:technique}}，则{it:technique}被设置为{cmd:broydenpowell}。

{pstd}
{cmd:solvenl_init_type(}{it:S}{cmd:)}返回{cmd:"fixedpoint"}或{cmd:"zero"}，具体取决于求解器的当前设置。


{marker init_startingvals}{...}
{title:solvenl_init_startingvals()}

{space 8}{it:void}{space 11}{cmd:solvenl_init_startingvals(}{it:{help mf_solvenl##S:S}}{cmd:,} {it:real colvector ivals}{cmd:)}

{space 8}{it:real colvector} {cmd:solvenl_init_startingvals(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_init_startingvals(}{it:S}, {it:ivals}{cmd:)}将求解器的初始值设置为{it:ivals}。默认情况下，{it:ivals}被设置为零向量。

{pstd}
{cmd:solvenl_init_startingvals(}{it:S}{cmd:)}返回当前设置的初始值。


{marker init_numeq}{...}
{title:solvenl_init_numeq()}

{space 8}{it:void}{space 8}{cmd:solvenl_init_numeq(}{it:{help mf_solvenl##S:S}}{cmd:,} {it:real scalar k}{cmd:)}

{space 8}{it:real scalar} {cmd:solvenl_init_numeq(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_init_numeq(}{it:S}, {it:k}{cmd:)}将系统中的方程数量设置为{it:k}。

{pstd}
{cmd:solvenl_init_numeq(}{it:S}{cmd:)}返回当前指定的方程数量。


{marker init_technique}{...}
{title:solvenl_init_technique()}

{space 8}{it:void}{space 10}{cmd:solvenl_init_technique(}{it:{help mf_solvenl##S:S}}{cmd:,} {help mf_solvenl##technique:{it:technique}}{cmd:)}

{space 8}{it:string scalar} {cmd:solvenl_init_technique(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_init_technique(}{it:S}{cmd:,} {it:technique}{cmd:)}指定使用的求解器技术。更多信息，请参见
{help mf_solvenl##technique:{it:technique}}上面的内容。

{pstd}
如果您指定技术{cmd:gaussseidel}或{cmd:dampedgaussseidel}但尚未调用{cmd:solvenl_init_type()}，则{cmd:solvenl_}{it:*}{cmd:()}假设您正在解决固定点问题，直到您另外指定。

{pstd}
如果您指定技术{cmd:broydenpowell}或{cmd:newtonraphson}但尚未调用{cmd:solvenl_init_type()}，则{cmd:solvenl_}{it:*}{cmd:()}假设您有零查找问题，直到您另外指定。

{pstd}
{cmd:solvenl_init_technique(}{it:S}{cmd:)}返回当前设置的求解器技术。


{marker init_conv_iterchng}{...}
{title:solvenl_init_conv_iterchng()}

{space 8}{it:void}{space 8}{cmd:solvenl_init_conv_iterchng(}{it:{help mf_solvenl##S:S}}{cmd:,} {it:itol}{cmd:)}

{space 8}{it:real scalar} {cmd:solvenl_init_conv_iterchng(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_init_conv_iterchng(}{it:S}{cmd:,} {it:itol}{cmd:)}指定用于确定连续解估计是否已收敛的容差。当
{cmd:mreldif(}{bf:x}({it:i}), {bf:x}({it:i}-1){cmd:)} < {it:itol}时，收敛被声明。
更多信息，请参见上面的{it:{help mf_solvenl##convergence:收敛标准}}。默认值为1e-9。

{pstd}
{cmd:solvenl_init_conv_iterchng(}{it:S}{cmd:)}返回当前设置的{it:itol}值。


{marker init_conv_nearzero}{...}
{title:solvenl_init_conv_nearzero()}

{space 8}{it:void}{space 8}{cmd:solvenl_init_conv_nearzero(}{it:{help mf_solvenl##S:S}}{cmd:,} {it:ztol}{cmd:)}

{space 8}{it:real scalar} {cmd:solvenl_init_conv_nearzero(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_init_conv_nearzero(}{it:S}{cmd:,} {it:ztol}{cmd:)}指定用于确定给定情况下的零查找问题的解是否足够接近0的容差，基于平方的欧几里得距离。更多信息，请参见上面的{it:{help mf_solvenl##convergence:收敛标准}}。默认值为1e-9。

{pstd}
{cmd:solvenl_init_conv_nearzero(}{it:S}{cmd:)}返回当前设置的{it:ztol}值。

{pstd}
{cmd:solvenl_init_conv_nearzero()}仅适用于零查找问题。{cmd:solvenl_}{it:*}{cmd:()}在解决固定点问题时简单地忽略此标准。


{marker init_conv_maxiter}{...}
{title:solvenl_init_conv_maxiter()}

{space 8}{it:void}{space 8}{cmd:solvenl_init_conv_maxiter(}{it:{help mf_solvenl##S:S}}{cmd:,} {it:maxiter}{cmd:)}

{space 8}{it:real scalar} {cmd:solvenl_init_conv_maxiter(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_init_conv_maxiter(}{it:S}{cmd:,} {it:maxiter}{cmd:)}指定要执行的最大迭代次数。即使执行了{it:maxiter}次迭代，收敛也不会被声明，除非满足其他收敛标准中的一个。更多信息，请参见上面的{it:{help mf_solvenl##convergence:收敛标准}}。默认值为16000或先前通过使用{helpb set maxiter}声明的值。

{pstd}
{cmd:solvenl_init_conv_maxiter(}{it:S}{cmd:)}返回当前设置的{it:maxiter}值。


{marker init_evaluator}{...}
{title:solvenl_init_evaluator()}

{space 8}{it:void} {cmd:solvenl_init_evaluator(}{it:{help mf_solvenl##S:S}}{cmd:,} {it:pointer(real function) scalar fptr}{cmd:)}

{space 8}{it:pointer(real function) scalar} {cmd:solvenl_init_evaluator(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_init_evaluator(}{it:S}{cmd:,} {it:fptr}{cmd:)}指定将被调用以评估{bf:F}({bf:x})的函数。您必须使用此函数。如果您的函数名为{cmd:myfcn()}，您指定{cmd:solvenl_init_evaluator(}{it:S}{cmd:, &myfcn())}。

{pstd}
{cmd:solvenl_init_evaluator(}{it:S}{cmd:)}返回指向已设置函数的指针。


{marker init_narguments}{...}
{marker init_argument}{...}
{title:solvenl_init_argument() 和 solvenl_init_narguments()}

{space 8}{it:void}{space 11}{cmd:solvenl_init_argument(}{it:{help mf_solvenl##S:S}}{cmd:,} {it:real scalar k}{cmd:,} {it:X}{cmd:)}

{space 8}{it:void}{space 11}{cmd:solvenl_init_narguments(}{it:{help mf_solvenl##S:S}}{cmd:,} {it:real scalar K}{cmd:)}

{space 8}{it:pointer scalar} {cmd:solvenl_init_argument(}{it:{help mf_solvenl##S:S}}{cmd:,} {it:real scalar k}{cmd:)}

{space 8}{it:real scalar}{space 4}{cmd:solvenl_init_narguments(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_init_argument(}{it:S}{cmd:,} {it:k}{cmd:,} {it:X}{cmd:)}将评估函数的{it:k}个额外参数设置为{it:X}，其中{it:k}可以是1、2或3。如果您需要将更多项目传递给评估函数，请将它们收集到一个结构中并传递该结构。{it:X}可以是任何东西，包括指针、视图矩阵或简单的标量。
不会创建{it:X}的副本；它是通过引用传递的。您在程序的其他地方对{it:X}所做的任何更改都会反映在传递给评估函数的内容中。

{pstd}
{cmd:solvenl_init_narguments(}{it:S}{cmd:,} {it:K}{cmd:)}设置要传递给评估函数的额外参数的数量。使用此函数是可选的；使用{cmd:solvenl_init_argument()}初始化额外参数会自动设置参数数量。

{pstd}
{cmd:solvenl_init_argument(}{it:S}{cmd:,} {it:k}{cmd:)}返回指向先前设置的{it:k}个额外参数的指针。

{pstd}
{cmd:solvenl_init_narguments(}{it:S}{cmd:)}返回传递给评估函数的额外参数的数量。


{marker init_damping}{...}
{title:solvenl_init_damping()}

{space 8}{it:void}{space 8}{cmd:solvenl_init_damping(}{it:{help mf_solvenl##S:S}}{cmd:,} {it:real scalar d}{cmd:)}

{space 8}{it:real scalar}{space 1}{cmd:solvenl_init_damping(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_init_damping(}{it:S}{cmd:,} {it:d}{cmd:)}将阻尼参数设置为{it:d}，该参数由阻尼高斯-赛德尔技术使用，范围为0 <= {it:d} < 1。即，{it:d} = 0对应于没有阻尼，相当于普通的高斯-赛德尔。当{it:d}接近1时，使用更多的阻尼。默认值为{it:d} = 0.1。如果没有使用dGS技术，则忽略该参数。

{pstd}
{cmd:solvenl_init_damping(}{it:S}{cmd:)}返回当前设置的阻尼参数。


{marker init_iter_log}{...}
{title:solvenl_init_iter_log()}

{space 8}{it:void}{space 10}{...}
{cmd:solvenl_init_iter_log(}{it:{help mf_solvenl##S:S}}{cmd:,} {c -(} {cmd:"on"} | {cmd:"off"} {c )-} {cmd:)}

{space 8}{it:string scalar} {...}
{cmd:solvenl_init_iter_log(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_init_iter_log(}{it:S}{cmd:,} {it:onoff}{cmd:)} {...}
指定是否应显示每次迭代的日志或不显示。{it:onoff}可以设置为{cmd:on}或{cmd:off}。默认情况下，除非{cmd:set iterlog}设置为{cmd:off}，否则显示每次迭代的日志；参见{manhelp set_iter R:{it:set iter}}。

{pstd}
{cmd:solvenl_init_iter_log(}{it:S}{cmd:)}返回当前迭代日志指示器的状态。


{marker init_iter_dot}{...}
{title:solvenl_init_iter_dot()}

{space 8}{it:void}{space 10}{...}
{cmd:solvenl_init_iter_dot(}{it:{help mf_solvenl##S:S}}{cmd:,} {c -(} {cmd:"on"} | {cmd:"off"} {c )-} {cmd:)}

{space 8}{it:string scalar} {...}
{cmd:solvenl_init_iter_dot(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_init_iter_dot(}{it:S}{cmd:,} {it:onoff}{cmd:)} {...}
指定是否应显示每次迭代的点。{it:onoff}可以设置为{cmd:on}或{cmd:off}。默认情况下，不显示每次迭代的点。

{pstd}
指定{cmd:solvenl_init_iter_dot(}{it:S}{cmd:, on)}将导致每次迭代完成后显示一个点，而不换行。此选项可用于在完整的迭代日志过于详细但需要一些活动指示时创建紧凑的状态报告。

{pstd}
{cmd:solvenl_init_iter_dot(}{it:S}{cmd:)}返回当前迭代点指示器的状态。


{marker init_iter_dot_indent}{...}
{title:solvenl_init_iter_dot_indent()}

{space 8}{it:void}{space 8}{...}
{cmd:solvenl_init_iter_dot_indent(}{it:{help mf_solvenl##S:S}}{cmd:,} {it:real scalar indent}{cmd:)}

{space 8}{it:real scalar} {...}
{cmd:solvenl_init_iter_dot_indent(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_init_iter_dot_indent(}{it:S}{cmd:,} {it:indent}{cmd:)} {...}
指定从左边缘开始显示迭代点的空格数。此选项在您编写调用{cmd:solvenl()}的程序时非常有用，如果您想控制迭代点的显示方式。默认情况下，点从左边缘开始（{it:indent} = 0）。如果您没有通过{cmd:solvenl_init_iter_dot()}启用迭代点，该选项将被忽略。

{pstd}
{cmd:solvenl_init_iter_dot_indent(}{it:S}{cmd:)}返回当前缩进量。


{marker solve}{...}
{marker _solve}{...}
{title:solvenl_solve() 和 _solvenl_solve()}

{space 8}{it:real colvector}  {cmd:solvenl_solve(}{it:{help mf_solvenl##S:S}}{cmd:)}

{space 8}{it:void}{space 11}{cmd:_solvenl_solve(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_solve(}{it:S}{cmd:)}调用求解器并返回得到的解。如果发生错误，{cmd:solvenl_solve()}将会中止并返回错误。

{pstd}
{cmd:_solvenl_solve(}{it:S}{cmd:)}也调用求解器。与返回解不同的是，如果发生错误，此函数将返回错误代码。如果求解器找到了一个解，此函数返回{cmd:0}。请参见下面列出的可能错误代码。

{pstd}
在调用这两个函数之前，您必须定义您的问题。至少，这涉及调用以下函数：

{space 8}{cmd:solvenl_init()}
{space 8}{cmd:solvenl_init_numeq()}
{space 8}{cmd:solvenl_init_evaluator()}
{space 8}{cmd:solvenl_init_type()}{space 3}或者{space 3}{cmd:solvenl_init_technique()}


{marker result_converged}{...}
{title:solvenl_result_converged()}

{space 8}{it:real scalar} {cmd:solvenl_result_converged(}{...}
{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_result_converged(}{it:S}{cmd:)}如果求解器找到了问题的解，返回{cmd:1}，否则返回{cmd:0}。


{marker result_conv_iter} {...}
{title:solvenl_result_conv_iter()}

{space 8}{it:real scalar} {...}
{cmd:solvenl_result_conv_iter(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_result_conv_iter(}{it:S}{cmd:)}返回获取解所需的迭代次数。如果没有找到解或尚未调用求解器，则此函数返回缺失值。


{marker result_conv_iterchng}{...}
{title:solvenl_result_conv_iterchng()}

{space 8}{it:real scalar} {...}
{cmd:solvenl_result_conv_iterchng(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_result_conv_iterchng(}{it:S}{cmd:)}如果达到了某个解，返回实现的最终容差。否则，该函数返回缺失值。更多信息，请参见上面的{it:{help mf_solvenl##convergence:收敛标准}}。


{marker result_conv_nearzero}{...}
{title:solvenl_result_conv_nearzero()}

{space 8}{it:real scalar} {...}
{cmd:solvenl_result_conv_nearzero(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_result_conv_nearzero(}{it:S}{cmd:)}如果达到了某个解，返回解与零的最终相对距离。否则，返回缺失值。如果在使用GS或dGS之后调用该函数，此函数也将返回缺失值，因为该标准不适用。更多信息，请参见上面的{it:{help mf_solvenl##convergence:收敛标准}}。


{marker result_values}{...}
{title:solvenl_result_values()}

{space 8}{it:real colvector} {...}
{cmd:solvenl_result_values(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_result_values(}{it:S}{cmd:)}返回表示固定点或零点的列向量，如果找到了解。否则，返回一个0 x 1的缺失值向量。


{marker result_Jacobian}{...}
{title:solvenl_result_Jacobian()}

{space 8}{it:real matrix} {...}
{cmd:solvenl_result_Jacobian(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_result_Jacobian(}{it:S}{cmd:)}返回最后计算的雅可比矩阵，如果BP或牛顿法用于寻找解。即使没有找到解，雅可比矩阵也会返回，因为我们发现雅可比矩阵在确定问题时非常有用。如果在GS或dGS之后调用此函数，则返回的将是一维1 x 1的缺失值矩阵。


{marker result_error_code}{...}
{marker result_return_code}{...}
{marker result_error_text}{...}
{title:solvenl_result_error_code(), ..._return_code(), 和 ..._error_text()}

{space 8}{it:real scalar}{space 3}{...}
{cmd:solvenl_result_error_code(}{it:{help mf_solvenl##S:S}}{cmd:)}

{space 8}{it:real scalar}{space 3}{...}
{cmd:solvenl_result_return_code(}{it:{help mf_solvenl##S:S}}{cmd:)}

{space 8}{it:string scalar} {...}
{cmd:solvenl_result_error_text(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_result_error_code(}{it:S}{cmd:)}返回唯一的{cmd:solvenl_}{it:*}{cmd:()}错误代码，生成或在没有错误时返回零。系统生成的每个错误都分配有自己的唯一代码。

{pstd}
{cmd:solvenl_result_return_code(}{it:S}{cmd:)}返回适当的返回代码，以便在生成错误时返回给用户。

{pstd}
{cmd:solvenl_result_error_text(}{it:S}{cmd:)}返回适当的文本描述，以便在生成错误时显示。

{pstd}
错误代码、返回代码和错误文本列在下面。

{col 8}错误{space 2}返回
{col 8}代码{space 3}代码{col 25}错误文本
{col 8}{hline 66}
{col 9}0{space 8}0{col 25}(未遇到错误)
{col 9}1{space 8}0{col 25}(问题尚未解决)
{col 9}2{space 6}111{col 25}未指定函数
{col 9}3{space 6}198{col 25}指定的方程数量无效
{col 9}4{space 6}504{col 25}初始值向量包含缺失值
{col 9}5{space 6}503{col 25}初始值向量长度与指定的方程数量不等
{col 27}的方程声明 
{col 9}6{space 6}430{col 25}达到最大迭代次数；未实现收敛
{col 9}7{space 6}416{col 25}评估函数时遇到缺失值
{col 9}8{space 5}3498{col 25}函数类型无效
{col 9}9{space 5}3498{col 25}函数类型...不能与技术...一起使用
{col 8}10{space 5}3498{col 25}无效的日志选项
{col 8}11{space 5}3498{col 25}无效的解法技术
{col 8}12{space 5}3498{col 25}解法技术{it:technique}不能与
{col 27}函数类型{c -(}{cmd:"fixedpoint"} | {cmd:"zero"}{c )-}一起使用
{col 8}13{space 5}3498{col 25}无效的迭代变化标准
{col 8}14{space 5}3498{col 25}无效的接近零标准
{col 8}15{space 5}3498{col 25}无效的最大迭代次数标准
{col 8}16{space 5}3498{col 25}无效的函数指针
{col 8}17{space 5}3498{col 25}无效的参数个数
{col 8}18{space 5}3498{col 25}可选参数超出范围
{col 8}19{space 5}3498{col 25}初始化值处无法评估函数
{col 8}20{space 5}3498{col 25}初始化值处无法计算雅可比矩阵
{col 8}21{space 5}3498{col 25}迭代发现局部最小值{bf:F}'{bf:F}；未实现收敛
{col 8}22{space 5}3498{col 25}无法计算雅可比矩阵
{col 8}23{space 6}198{col 25}阻尼因子必须在[0, 1)中
{col 8}24{space 6}198{col 25}必须指定函数类型、技术或两者
{col 8}25{space 5}3498{col 25}无效的{cmd:solvenl_init_iter_dot()}选项
{col 8}26{space 5}3498{col 25}{cmd:solvenl_init_iter_dot_indent()}必须是小于78的非负
{col 27}整数
{col 8}27{space 6}498{col 25}函数评估器要求{cmd:solvenl_solve()}
{col 27}立即退出


{marker dump}{...}
{title:solvenl_dump()}

{space 8}{it:void} {cmd:solvenl_dump(}{it:{help mf_solvenl##S:S}}{cmd:)}

{pstd}
{cmd:solvenl_dump(}{it:S}{cmd:)}显示求解器的当前状态，包括初始值、收敛标准、结果和错误消息。此函数在调试期间特别有用。


{marker conformability}
{title:可兼容性}

{pstd}
除如下备注外，所有函数的输入都是1 {it:x} 1，并返回1 {it:x} 1或{it:void}结果：

{space 4}{cmd:solvenl_init_startingvals(}{it:S}{cmd:,} {it:ivals}{cmd:)}:
{space 16}{it:S}:  {it:transmorphic}
{space 12}{it:ivals}:  {it:k x} 1
{space 11}{it:result}:  {it:void}

{space 4}{cmd:solvenl_init_startingvals(}{it:S}{cmd:)}:
{space 16}{it:S}:  {it:transmorphic}
{space 11}{it:result}:  {it:k x} 1

{space 4}{cmd:solvenl_init_argument(}{it:S}{cmd:,} {it:k}{cmd:,} {it:X}{cmd:)}:
{space 16}{it:S}:  {it:transmorphic}
{space 16}{it:k}:  1 {it:x} 1
{space 16}{it:X}:  {it:anything}
{space 11}{it:result}:  {it:void}

{space 4}{cmd:solvenl_init_argument(}{it:S}{cmd:,} {it:k}{cmd:)}:
{space 16}{it:S}:  {it:transmorphic}
{space 16}{it:k}:  1 {it:x} 1
{space 11}{it:result}:  {it:anything}

{space 4}{cmd:solvenl_solve(}{it:S}{cmd:)}:
{space 16}{it:S}:  {it:transmorphic}
{space 11}{it:result}:  {it:k x} 1

{space 4}{cmd:solvenl_result_values(}{it:S}{cmd:)}:
{space 16}{it:S}:  {it:transmorphic}
{space 11}{it:result}:  {it:k x} 1

{space 4}{cmd:solvenl_result_Jacobian(}{it:S}{cmd:)}:
{space 16}{it:S}:  {it:transmorphic}
{space 11}{it:result}:  {it:k x} {it:k}


{marker diagnostics}{...}
{title:诊断}

{pstd}
所有函数如果使用不当都会中止，并返回错误。

{pstd}
{cmd:solvenl_solve()}如果遇到困难将会中止并返回错误。{cmd:_solvenl_solve()}不这样做；而是返回非零的错误代码。

{pstd}
{cmd:solvenl_result_}{it:*}{cmd:()}函数如果求解器遇到困难，或者尚未被调用，则返回缺失值。


{marker references}{...}
{title:参考资料}

{marker BurdenFaires2016}{...}
{phang}
Burden, R. L., D. J. Faires和A. M. Burden. 2016. {it:数值分析}。
第10版。波士顿：Cengage。
{p_end}

{marker PressEtAl2007}{...}
{phang}
Press, W. H., S. A. Teukolsky, W. T. Vetterling和B. P. Flannery. 2007年。
{it:数值计算的艺术}：科学计算的艺术。第3版。
纽约：剑桥大学出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_solvenl.sthlp>}